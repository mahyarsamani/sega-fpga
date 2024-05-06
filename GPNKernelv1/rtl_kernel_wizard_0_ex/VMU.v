/*
 * Source: Austin York, University of California, Davis
 *
 * This hardware operator is free software: you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

//=====================================
//      Vertex Managment Unit
//=====================================
module VMU #(
    parameter PE_NUM     = 4'h0,
	parameter ADDRWIDTH  = 33,
	parameter DATAWIDTH  = 256,
	parameter VERTEXWIDTHBYTES = 16,
	parameter MGUWIDTH   = 94 // 32 vertex, 32 edge index, 30 edge degree
)(
	
	input                      clk,         // clock
	input                      reset,       // reset
    output                     InActive,
    output reg                 Active,
    output                     UsingAXI,
    input                      Start,
    output reg                 Finish,
    output reg                 Hit,
    input                      Probe,

	//----------------------AXI Signals----------------------//
	output reg                 StartRead,
	output reg [ADDRWIDTH-1:0] ReadAddress,
	input      [DATAWIDTH-1:0] ReadData,
	input                      ReadReady,
	input                      EndRead,
	output reg [7:0]           ReadBurst,
	output reg                 StartWrite,
	output reg [ADDRWIDTH-1:0] WriteAddress,
	output reg [DATAWIDTH-1:0] WriteData,
	output reg                 WriteReady,
	input                      WriteResp,
	input                      EndWrite,
	output reg [7:0]           WriteBurst,

    //---------------------FIFO from MPU ---------------------//
	input                      AVFIFO_Empty,
	input      [ADDRWIDTH-1:0] AVFIFO_ReadData,
	output reg                 AVFIFO_Read,
	input                      AVFIFO_ReadValid,

	//----------------------FIFO to MGU-----------------------//
	input                      AVMFIFO_Full, // More than 8 entries in buffer are free
	output reg [MGUWIDTH-1:0]  AVMFIFO_WriteData,
	output reg                 AVMFIFO_Write,
	input                      AVMFIFO_Empty,
	
	//-------------------Block BRAM Signals-------------------//
    input  wire[14:0]          MaxSuperblockAddress,
	output reg [14:0]          Superblock_Address,
	output reg [71:0]          Superblock_WriteData,
	input      [71:0]          Superblock_ReadData,
	output reg                 Superblock_WriteEn
);

reg [7:0] WriteCounter;

// Memory Read/Write Buffers
wire ReadBuffer_Empty;
reg  ReadBuffer_Read;
reg  ReadBuffer_Write;
wire [255:0] ReadBuffer_ReadData;
reg [255:0] ReadBuffer_WriteData;

wire WriteBuffer_Empty;
reg  WriteBuffer_Read;
reg  WriteBuffer_Write;
wire [255:0] WriteBuffer_ReadData;
reg [255:0] WriteBuffer_WriteData;

wire [127:0] Vertex[1:0]; // 2 Vertices
wire  [31:0] Property[1:0]; // Property of Vertex
wire  [31:0] EdgeIndex[1:0];   // Base address of edge
wire  [29:0] EdgeDegree[1:0];  // Number of edges

reg [7:0] SuperblockCount;
reg [2:0] Superblock;

reg [12:0] state_T;  // Tracker
reg [7:0] state_DV; // Deactivate Vertices

reg [7:0] ActiveCount;
reg [5:0] PartitionFinished;
wire [32:0] nextReadAddress;

reg Clear;

// States
localparam [12:0]
    T_IDLE        = 13'b0_0000_0000_0001,
    AVFIFO_READ   = 13'b0_0000_0000_0010,
    T_WAIT        = 13'b0_0000_0000_0100,
    T_READ        = 13'b0_0000_0000_1000,
    T_ADD         = 13'b0_0000_0001_0000,
    T_WRITE       = 13'b0_0000_0010_0000,
    TC_WAIT       = 13'b0_0000_0100_0000,
    TC_READ       = 13'b0_0000_1000_0000,
    TC_NEXT_BLOCK = 13'b0_0001_0000_0000,
    TC_BLOCK      = 13'b0_0010_0000_0000,
    MEM_READ      = 13'b0_0100_0000_0000,
    TC_SUB        = 13'b0_1000_0000_0000,
    MEM_WRITE     = 13'b1_0000_0000_0000;
localparam [4:0]
    PARTITION_IDLE  = 5'd0_0001,
    PARTITION1      = 5'b0_0010,
    PARTITION2      = 5'b0_0100,
    PARTITION_END   = 5'b0_1000,
    PARTITION_CLEAR = 5'b1_0000;
localparam [3:0]
    T_IDLE_BIT        = 4'd0,
    AVFIFO_READ_BIT   = 4'd1,
    T_WAIT_BIT        = 4'd2,
    T_READ_BIT        = 4'd3,
    T_ADD_BIT         = 4'd4,
    T_WRITE_BIT       = 4'd5,
    TC_WAIT_BIT       = 4'd6,
    TC_READ_BIT       = 4'd7,
    TC_NEXT_BLOCK_BIT = 4'd8,
    TC_BLOCK_BIT      = 4'd9,
    MEM_READ_BIT      = 4'd10,
    TC_SUB_BIT        = 4'd11,
    MEM_WRITE_BIT     = 4'd12;
localparam [3:0]
    PARTITION_IDLE_BIT  = 4'd0,
    PARTITION1_BIT      = 4'd1,
    PARTITION2_BIT      = 4'd2,
    PARTITION_END_BIT   = 4'd3,
    PARTITION_CLEAR_BIT = 4'd4;

// Vertices and edge information
assign Vertex[0]     = ReadBuffer_ReadData[127:0];
assign Vertex[1]     = ReadBuffer_ReadData[255:128];
assign Property[0]   = {Vertex[0][71:64], Vertex[0][79:72], Vertex[0][87:80], Vertex[0][95:88]};
assign Property[1]   = {Vertex[1][71:64], Vertex[1][79:72], Vertex[1][87:80], Vertex[1][95:88]};
assign EdgeIndex[0]  = {Vertex[0][39:32], Vertex[0][47:40], Vertex[0][55:48], Vertex[0][63:56]};
assign EdgeIndex[1]  = {Vertex[1][39:32], Vertex[1][47:40], Vertex[1][55:48], Vertex[1][63:56]};
assign EdgeDegree[0] = {Vertex[0][7:2], Vertex[0][15:8], Vertex[0][23:16], Vertex[0][31:24]};
assign EdgeDegree[1] = {Vertex[1][7:2], Vertex[1][15:8], Vertex[1][23:16], Vertex[1][31:24]};

assign nextReadAddress = {ReadAddress[32:11], ReadAddress[10:9] + 1'b1, 9'b00000000};
assign InActive = (state_T[T_IDLE_BIT] && AVFIFO_Empty);
assign UsingAXI = (state_T[12:6]>7'd0);
assign sleep = ~(state_T[MEM_READ_BIT] || state_T[TC_SUB_BIT] || state_T[MEM_WRITE_BIT]);
//==========================
//    Activate Module (1D)
//==========================
reg        StartCheck;

always @(posedge clk) begin
if (reset) 
	StartCheck <= 1'b0;
else if (state_T[T_IDLE_BIT] && Active && Start && AVFIFO_Empty && ~AVMFIFO_Full)
    StartCheck <= 1'b1;
else 
	StartCheck <= 1'b0;
end

always @(posedge clk) begin
//=======================
//     Tracker FSM (1A)
//=======================
if(reset)
    state_T <= T_IDLE;
else case(state_T)
    T_IDLE: begin
        if(StartCheck) state_T <= TC_WAIT;
        else if(~AVFIFO_Empty) state_T <= AVFIFO_READ;
        else state_T <= T_IDLE;
    end
    AVFIFO_READ: begin
        if(AVFIFO_ReadValid) state_T <= T_WAIT;
        else state_T <= AVFIFO_READ;
    end
    T_WAIT: begin
        state_T <= T_READ;
    end
    T_READ: begin
        state_T <= T_ADD;
    end
    T_ADD: begin
        state_T <= T_WRITE;
    end
    T_WRITE: begin
        state_T <= T_IDLE;
    end
    TC_WAIT: begin
        state_T <= TC_READ;
    end
    TC_READ: begin
        if(Superblock_Address==MaxSuperblockAddress || AVMFIFO_Full) state_T <= T_IDLE;
        else state_T <= TC_BLOCK;
    end
    TC_NEXT_BLOCK: begin
        if(AVMFIFO_Full) state_T <= T_IDLE;
        else if(Superblock==3'b000) state_T <= TC_WAIT;
        else state_T <= TC_BLOCK;
    end
    TC_BLOCK: begin
        if(SuperblockCount==8'd0) state_T <= TC_NEXT_BLOCK;
        else state_T <= MEM_READ;
    end
    MEM_READ: begin 
        if(EndRead) state_T <= TC_SUB;
        else state_T <= MEM_READ;
    end
    TC_SUB: begin
        if(~Hit && Probe) state_T <= MEM_READ;
        else if(PartitionFinished[4]) state_T <= MEM_WRITE;
        else state_T <= TC_SUB;
    end
    MEM_WRITE: begin
        if(EndWrite && SuperblockCount==8'd0) state_T <= TC_NEXT_BLOCK;
        else if(EndWrite) state_T <= MEM_READ;
        else state_T <= MEM_WRITE;
    end
default: state_T <= T_IDLE;
endcase
end

// Signals
always @(posedge clk) begin
// Read AvFIFO
if(reset)
    AVFIFO_Read <= 1'b0;
else if(state_T[T_IDLE_BIT] && ~AVFIFO_Empty)
    AVFIFO_Read <= 1'b1;
else
    AVFIFO_Read <= 1'b0;

// Block Address A/B
if(reset)
    Superblock_Address <= 15'd0;
else if(state_T[T_IDLE_BIT] && StartCheck)
    Superblock_Address <= 15'd0;
else if(state_T[AVFIFO_READ_BIT])
    Superblock_Address <= AVFIFO_ReadData[28:14];
else if(state_T[TC_NEXT_BLOCK_BIT] && Superblock==3'b000 && ~AVMFIFO_Full)
    Superblock_Address <= Superblock_Address + 1'b1;
else if(StartCheck)
    Superblock_Address <= 15'd0;
else
    Superblock_Address <= Superblock_Address;

// Block A/B
if(reset)
    Superblock <= 3'd0;
else if(state_T[T_IDLE_BIT] && StartCheck)
    Superblock <= 3'd0;
else if(state_T[AVFIFO_READ_BIT])
    Superblock <= AVFIFO_ReadData[13:11];
else if(state_T[TC_BLOCK_BIT])
    Superblock <= (Superblock==3'b111) ? 3'd0 : {Superblock + 1'b1};
else
    Superblock <= Superblock;

// Block WriteData
if(reset)
    Superblock_WriteData <= 72'd0;
else if(state_T[T_WRITE_BIT]) begin // (2B)
    case(Superblock)
    3'b000: Superblock_WriteData <= {Superblock_ReadData[71:8], SuperblockCount};
    3'b001: Superblock_WriteData <= {Superblock_ReadData[71:16], SuperblockCount, Superblock_ReadData[7:0]};
    3'b010: Superblock_WriteData <= {Superblock_ReadData[71:24], SuperblockCount, Superblock_ReadData[15:0]};
    3'b011: Superblock_WriteData <= {Superblock_ReadData[71:32], SuperblockCount, Superblock_ReadData[23:0]};
    3'b100: Superblock_WriteData <= {Superblock_ReadData[71:40], SuperblockCount, Superblock_ReadData[31:0]};
    3'b101: Superblock_WriteData <= {Superblock_ReadData[71:48], SuperblockCount, Superblock_ReadData[39:0]};
    3'b110: Superblock_WriteData <= {Superblock_ReadData[71:56], SuperblockCount, Superblock_ReadData[47:0]};
    3'b111: Superblock_WriteData <= {Superblock_ReadData[71:64], SuperblockCount, Superblock_ReadData[55:0]};
    endcase
end
else if(state_T[TC_BLOCK_BIT]) begin // (3A)
    case(Superblock)
    3'b000: Superblock_WriteData <= {Superblock_ReadData[71:8], 8'd0};
    3'b001: Superblock_WriteData <= {Superblock_ReadData[71:16], 16'd0};
    3'b010: Superblock_WriteData <= {Superblock_ReadData[71:24], 24'd0};
    3'b011: Superblock_WriteData <= {Superblock_ReadData[71:32], 32'd0};
    3'b100: Superblock_WriteData <= {Superblock_ReadData[71:40], 40'd0};
    3'b101: Superblock_WriteData <= {Superblock_ReadData[71:48], 48'd0};
    3'b110: Superblock_WriteData <= {Superblock_ReadData[71:56], 56'd0};
    3'b111: Superblock_WriteData <= 72'd0;
    endcase
end
else
    Superblock_WriteData <= Superblock_WriteData;

// Block Write Enable
if(reset)
    Superblock_WriteEn <= 1'b0;
else if(state_T[T_WRITE_BIT] || (state_T[TC_BLOCK_BIT] && SuperblockCount!=8'd0))
    Superblock_WriteEn <= 1'b1;
else
    Superblock_WriteEn <= 1'b0;

// BlockCount A/B
if(reset)
    SuperblockCount <= 8'd0;
else if(state_T[T_READ_BIT]) begin // (3B)
    case(Superblock)
    3'b000: SuperblockCount <= Superblock_ReadData[7:0];
    3'b001: SuperblockCount <= Superblock_ReadData[15:8];
    3'b010: SuperblockCount <= Superblock_ReadData[23:16];
    3'b011: SuperblockCount <= Superblock_ReadData[31:24];
    3'b100: SuperblockCount <= Superblock_ReadData[39:32];
    3'b101: SuperblockCount <= Superblock_ReadData[47:40];
    3'b110: SuperblockCount <= Superblock_ReadData[55:48];
    3'b111: SuperblockCount <= Superblock_ReadData[63:56];
    endcase
end
else if(state_T[T_ADD_BIT]) // (2C)
    SuperblockCount <= SuperblockCount + 1'b1;
else if(state_T[TC_READ_BIT])
    SuperblockCount <= Superblock_ReadData[7:0];
else if(state_T[TC_NEXT_BLOCK_BIT])
    case(Superblock)
    3'b000: SuperblockCount <= 8'd0;
    3'b001: SuperblockCount <= Superblock_ReadData[15:8];
    3'b010: SuperblockCount <= Superblock_ReadData[23:16];
    3'b011: SuperblockCount <= Superblock_ReadData[31:24];
    3'b100: SuperblockCount <= Superblock_ReadData[39:32];
    3'b101: SuperblockCount <= Superblock_ReadData[47:40];
    3'b110: SuperblockCount <= Superblock_ReadData[55:48];
    3'b111: SuperblockCount <= Superblock_ReadData[63:56];
    endcase
else if(state_T[TC_SUB_BIT] && PartitionFinished[4]) // (5A)
    SuperblockCount <= SuperblockCount - ActiveCount;
else
    SuperblockCount <= SuperblockCount;

// Tracker Active (1B)
if(reset)
    Active <= 1'b0;
else if(state_T[TC_READ_BIT] && Superblock_Address==MaxSuperblockAddress)
    Active <= 1'b0;
else if(AVFIFO_Read)
    Active <= 1'b1;
else
    Active <= Active;


// Finish Tracker Check due to no more active blocks or AVMFIFO full (1C)
if(reset)
    Finish <= 1'b0;
else if((state_T[TC_READ_BIT] && (Superblock_Address==MaxSuperblockAddress || AVMFIFO_Full)) || (state_T[TC_NEXT_BLOCK_BIT] && AVMFIFO_Full))
    Finish <= 1'b1;
else
    Finish <= 1'b0;


// Memory Signals 
// (4A)
if(reset)
    StartRead <= 1'b0;
else if((state_T[TC_BLOCK_BIT] && SuperblockCount!=8'd0) || (state_T[MEM_WRITE_BIT] && EndWrite && SuperblockCount!=8'd0) || (state_T[TC_SUB_BIT] && ~Hit))
    StartRead <= 1'b1;
else
    StartRead <= 1'b0;

if(reset)
    ReadBurst <= 8'd15;
else
    ReadBurst <= ReadBurst;

if(reset)
    ReadAddress <= {1'b0, PE_NUM, 28'd0};
else if(state_T[TC_BLOCK_BIT] && SuperblockCount!=8'd0)
    ReadAddress <= {1'b0, PE_NUM, Superblock_Address[13:0], Superblock, 11'd0};
else if((state_T[MEM_WRITE_BIT] && EndWrite && SuperblockCount!=8'd0) || (state_T[TC_SUB_BIT] && ~Hit))
    ReadAddress <= nextReadAddress;
else
    ReadAddress <= ReadAddress;


if(reset)
    ReadBuffer_Write <= 1'b0;
else if(state_T[MEM_READ_BIT] && ReadReady)
    ReadBuffer_Write <= 1'b1;
else
    ReadBuffer_Write <= 1'b0;

if(reset)
    ReadBuffer_WriteData <= 256'd0;
else if(state_T[MEM_READ_BIT] && ReadReady)
    ReadBuffer_WriteData <= ReadData;
else
    ReadBuffer_WriteData <= ReadBuffer_WriteData;

// (6A)
if(reset)
    StartWrite <= 1'b0;
else if(state_T[TC_SUB_BIT] && PartitionFinished[4])
    StartWrite <= 1'b1;
else
    StartWrite <= 1'b0;

if(reset)
    WriteAddress <= {1'b0, PE_NUM, 28'd0};
else if(state_T[TC_SUB_BIT] && PartitionFinished[4])
    WriteAddress <= ReadAddress;
else
    WriteAddress <= WriteAddress;

if(reset)
    WriteBurst <= 8'd0;
else
    WriteBurst <= ReadBurst;

if(reset)
    WriteData <= 256'd0;
else if(state_T[MEM_WRITE_BIT] && WriteResp && ~EndWrite)
    WriteData <= WriteBuffer_ReadData;
else
    WriteData <= WriteData;

if(reset)
    WriteReady <= 1'b0;
else if(state_T[MEM_WRITE_BIT] && WriteResp && WriteCounter<(WriteBurst+1))
    WriteReady <= 1'b1;
else
    WriteReady <= 1'b0;
    
if(reset)
	WriteCounter <= 8'd0;
else if(state_T[MEM_WRITE_BIT] && EndWrite)
	WriteCounter <= 8'd0;
else if(state_T[MEM_WRITE_BIT] && WriteReady)
	WriteCounter <= WriteCounter + 1'b1;
else 
	WriteCounter <= WriteCounter;

if(reset)
    WriteBuffer_Read <= 1'b0;
else if(state_T[MEM_WRITE_BIT] && WriteResp && ~EndWrite)
    WriteBuffer_Read <= 1'b1;
else
    WriteBuffer_Read <= 1'b0;

// (4B)
if(reset)
    Clear <= 1'b0;
else if(state_T[TC_SUB_BIT] && ~Hit)
    Clear <= 1'b1;
else
    Clear <= 1'b0;

// (4C)
if(reset)
    Hit <= 1'b0;
else if(state_T[MEM_WRITE_BIT])
    Hit <= 1'b0;
else if(ReadReady && (ReadData[0] || ReadData[128]))
    Hit <= 1'b1;
else 
    Hit <= Hit;

end

//============================
// Deactivating Vertices (7A)
//============================
always @(posedge clk) begin
if(reset)
    state_DV <= PARTITION_IDLE;
else if(Clear)
    state_DV <= PARTITION_CLEAR;
else case(state_DV)
    PARTITION_IDLE: begin
        if(~ReadBuffer_Empty) state_DV <= PARTITION1;
        else state_DV <= PARTITION_IDLE;
    end
    PARTITION1: begin
        state_DV <= PARTITION2;
    end
    PARTITION2: begin
        if(PartitionFinished[3:0]==4'b1111) state_DV <= PARTITION_END;
        else if(~ReadBuffer_Empty) state_DV <= PARTITION1;
        else state_DV <= PARTITION_IDLE;
    end
    PARTITION_END: begin
        state_DV <= PARTITION_IDLE;
    end
    PARTITION_CLEAR: begin
        state_DV <= PARTITION_END;
    end
    default: state_DV <= PARTITION_IDLE;
endcase

// Signals
if(reset || Clear)
    ActiveCount <= 8'd0;
else if(state_T[MEM_WRITE_BIT])
    ActiveCount <= 8'd0;
else if((state_DV[PARTITION1_BIT] && ReadBuffer_ReadData[0]) || (state_DV[PARTITION2_BIT] && ReadBuffer_ReadData[128])) // (5B)
    ActiveCount <= ActiveCount + 1'b1;
else
    ActiveCount <= ActiveCount;

if(reset || Clear)
    PartitionFinished <= 6'd0;
else if(state_DV[PARTITION2_BIT])
    PartitionFinished <= {PartitionFinished + 1'b1};
else if(StartRead)
    PartitionFinished <= 6'd0;
else
    PartitionFinished <= PartitionFinished;

if(reset || Clear)
    ReadBuffer_Read <= 1'b0;
else if(state_DV[PARTITION1_BIT] && ~ReadBuffer_Empty)
    ReadBuffer_Read <= 1'b1;
else
    ReadBuffer_Read <= 1'b0;

// Write back Deactivated Vertices
if(reset || Clear)
    WriteBuffer_Write <= 1'b0;
else if(state_DV[PARTITION1_BIT] && ~ReadBuffer_Empty)
    WriteBuffer_Write <= 1'b1;
else
    WriteBuffer_Write <= 1'b0;

if(reset || Clear)
    WriteBuffer_WriteData <= 256'd0;
else
    WriteBuffer_WriteData <= {ReadBuffer_ReadData[255:129], 1'b0, ReadBuffer_ReadData[127:1], 1'b0};

// Active Vertex Metadata FIFO
if(reset || Clear)
    AVMFIFO_Write <= 1'b0;
else if((state_DV[PARTITION1_BIT] && ReadBuffer_ReadData[0]) || (state_DV[PARTITION2_BIT] && ReadBuffer_ReadData[128]))
    AVMFIFO_Write <= 1'b1;
else
    AVMFIFO_Write <= 1'b0;

if(reset || Clear)
    AVMFIFO_WriteData <= 94'd0;
else if(state_DV[PARTITION1_BIT] && ReadBuffer_ReadData[0])
    AVMFIFO_WriteData <= {Property[0], EdgeIndex[0], EdgeDegree[0]};
else if(state_DV[PARTITION2_BIT] && ReadBuffer_ReadData[128])
    AVMFIFO_WriteData <= {Property[1], EdgeIndex[1], EdgeDegree[1]};
else
    AVMFIFO_WriteData <= 94'd0;

end

// FIFO Buffers
VMU_FIFOs_wrapper uVMUBuffers_wrapper(
.clk(clk),
.reset(reset || Clear),
.sleep(sleep),
.ReadBuffer_Empty(ReadBuffer_Empty),
.ReadBuffer_Write(ReadBuffer_Write),
.ReadBuffer_WriteData(ReadBuffer_WriteData),
.ReadBuffer_Read(ReadBuffer_Read),
.ReadBuffer_ReadData(ReadBuffer_ReadData),

.WriteBuffer_Empty(WriteBuffer_Empty),
.WriteBuffer_Write(WriteBuffer_Write),
.WriteBuffer_WriteData(WriteBuffer_WriteData),
.WriteBuffer_Read(WriteBuffer_Read),
.WriteBuffer_ReadData(WriteBuffer_ReadData)
);

endmodule