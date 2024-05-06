`timescale 1ns / 10ps
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
//      Message Processing Unit
//=====================================
module MPU #(
    parameter PE_NUM         = 4'h0,
	parameter VPROPWIDTH     = 32,  // Vertex Prop Width (value that gets changed)
	parameter VPROPSTART     = 64,  // Vertex Property location of first bit in memory (value that gets changed) Ex: 128 bit vertex in memory 95:64 is vertex value that needs to be checked so start is 64
	parameter EINDEXWIDTH    = 32,  // Edge Address Width
	parameter EDEGREEWIDTH   = 30,  // Edge Degree Width
	parameter ADDRWIDTH      = 33,  // 33 = 8GB Memory
	parameter DATAWIDTH      = 256, // HBM data width
	parameter MSGWIDTH       = 64,  // Input message width
    parameter HALFADDRESS    = 512, // Half of Cache
    parameter MAXADDRESS     = 1024 // End of Cache
)(
	input  wire                clk,          // should be 450 MHz
	input  wire                reset,       // reset
	output reg                 InActive,
	input  wire                ActiveVMU,
	input  wire                VMUHit,
	output wire                Probe,
	output wire                UsingAXI,
	output reg                 Start,
	input  wire                AVMFIFO_Full,
	input  wire                Finish,
    input  wire[ADDRWIDTH-1:0] Tracker_ReadAddress,

	//---------------------AXI Signals---------------------//
	output reg [ADDRWIDTH-1:0] ReadAddress,    // old vertex address
	input  wire[DATAWIDTH-1:0] ReadData,    // old vertex data
	output wire          [7:0] ReadBurst,
	input  wire                ReadReady,
	output reg [ADDRWIDTH-1:0] WriteAddress,   // updated vertex address, same as old
	output reg [DATAWIDTH-1:0] WriteData,   // updated vertex data
	output reg                 WriteReady,
    input  wire                WriteResp,
	output wire          [7:0] WriteBurst,
	output reg                 StartRead,     // Start read
	output reg                 StartWrite,     // Start write
	input  wire                EndRead,       // finished read
	input  wire                EndWrite,       // finished write

	//----------------------Message FIFO----------------------//
	input  wire [MSGWIDTH-1:0] MSGFIFO_ReadData,       // vertex  message
	output reg                 MSGFIFO_Read, // message available
	input  wire                MSGFIFO_Empty,  // message received
	input  wire                MSGFIFO_ReadValid,

	//------------------------AV FIFO------------------------//
	input  wire                AVFIFO_Full,
	input  wire                AVFIFO_Empty,
	output reg                 AVFIFO_Write,
	output reg [ADDRWIDTH-1:0] AVFIFO_WriteData,
	
	//-------------------------Cache---------------------------//
	output reg           [9:0] Cache_AddressA,
	output reg                 Cache_WriteEnA,
	input  wire        [287:0] Cache_ReadDataA,
	output reg         [287:0] Cache_WriteDataA,
    output reg           [9:0] Cache_AddressB,
	output reg                 Cache_WriteEnB,
	input  wire        [287:0] Cache_ReadDataB,
	output reg         [287:0] Cache_WriteDataB
);

// How the Message Address gets broken up
// MSG[34:31] 4 Zeros for 16 Byte vertex offset 4 bits
// MSG[35] Which Vertex between 0 and 1 1 bit
// MSG[45:36] Cache Address 10 bits (1024 Depth)
// MSG[63:46] Tag 18
wire [9:0] Cache_EndAddress;
reg [63:0] regMSG;

reg       [MSGWIDTH-1:0] regMSGA;         // Store message
reg                      MSGAReady;
wire    [VPROPWIDTH-1:0] TempPropertyA;       // decoded old temp vertex value
wire    [VPROPWIDTH-1:0] PropertyA;            // decoded old vertex value
wire    [VPROPWIDTH-1:0] NewValueA;       // decoded new vertex value
wire    [VPROPWIDTH-1:0] TempResultA;     // temp result
wire    [VPROPWIDTH-1:0] ResultA;          // Result of update
wire                     UpdateA;          // decide to Update vertex
wire                     SendA;            // Send if need to propogate edges
reg      [DATAWIDTH-1:0] store_ReadDataA; // store old vertices
wire  [EDEGREEWIDTH-1:0] EdgeDegreeA;     // Number of edges = edge degree
wire [(DATAWIDTH/2)-1:0] VertexA[1:0];     // Split Vertex from memory
wire                     WhichVertexA;    // Vertex 0 or 1
wire              [17:0] CacheTagA, TagA;
wire                     ValidA;
wire                     ActiveA;
wire                     HitA;
wire                     MissA;
reg                      FetchA;
reg                      WriteA;
reg                      WriteCompletedA;

reg       [MSGWIDTH-1:0] regMSGB;         // Store message
reg                      MSGBReady;
wire    [VPROPWIDTH-1:0] TempPropertyB;       // decoded old temp vertex value
wire    [VPROPWIDTH-1:0] PropertyB;            // decoded old vertex value
wire    [VPROPWIDTH-1:0] NewValueB;       // decoded new vertex value
wire    [VPROPWIDTH-1:0] TempResultB;     // temp result
wire    [VPROPWIDTH-1:0] ResultB;          // Result of update
wire                     UpdateB;          // decide to Update vertex
wire                     SendB;            // Send if need to propogate edges
reg      [DATAWIDTH-1:0] store_ReadDataB; // store old vertices
wire  [EDEGREEWIDTH-1:0] EdgeDegreeB;     // Number of edges = edge degree
wire [(DATAWIDTH/2)-1:0] VertexB[1:0];     // Split Vertex from memory
wire                     WhichVertexB;    // Vertex 0 or 1
wire              [17:0] CacheTagB, TagB;
wire                     ValidB;
wire                     ActiveB;
wire                     HitB;
wire                     MissB;
reg                      FetchB;
reg                      WriteB;
reg                      WriteCompletedB;

reg WriteCounter;


//----------------------States----------------------//
reg  [2:0] state_FIFO;
localparam [2:0]
    FIFO_IDLE = 3'b001,
    FIFO_READ = 3'b010,
    FIFO_WAIT = 3'b100;
localparam [1:0]
    FIFO_IDLE_BIT = 2'd0,
    FIFO_READ_BIT = 2'd1,
    FIFO_WAIT_BIT = 2'd2;

reg [15:0] state_A; // Port A Highest Priority (Gets Access First)
reg [15:0] state_B; // Port B
localparam [15:0]
    CACHE_IDLE  = 16'b0000_0000_0000_0001,
    CACHE_WAIT  = 16'b0000_0000_0000_0100,
    CACHE_READ  = 16'b0000_0000_0000_1000,
    CACHE_HM    = 16'b0000_0000_0001_0000,
    FETCH       = 16'b0000_0000_0010_0000,
    REDUCE      = 16'b0000_0000_0100_0000,
    UPDATE      = 16'b0000_0000_1000_0000,
    CACHE_WRITE = 16'b0000_0001_0000_0000,
    SEND        = 16'b0000_0010_0000_0000,
    WRITE       = 16'b0000_0100_0000_0000,
    SETUP       = 16'b0000_1000_0000_0000,
    DEACTIVATE  = 16'b0001_0000_0000_0000,
    WAIT        = 16'b0010_0000_0000_0000,
    SCAN        = 16'b0100_0000_0000_0000,
    END         = 16'b1000_0000_0000_0000;
localparam [3:0]
    CACHE_IDLE_BIT  = 4'd0,
    CACHE_WAIT_BIT  = 4'd2,
    CACHE_READ_BIT  = 4'd3,
    CACHE_HM_BIT    = 4'd4,
    FETCH_BIT       = 4'd5,
    REDUCE_BIT      = 4'd6,
    UPDATE_BIT      = 4'd7,
    CACHE_WRITE_BIT = 4'd8,
    SEND_BIT        = 4'd9,
    WRITE_BIT       = 4'd10,
    SETUP_BIT       = 4'd11,
    DEACTIVATE_BIT  = 4'd12,
    WAIT_BIT        = 4'd13,
    SCAN_BIT        = 4'd14,
    END_BIT         = 4'd15;

reg  [4:0] state_FW; // Memory Fetch/Write
localparam [4:0]
    FW_IDLE = 5'b0_0001,
    WRITEA  = 5'b0_0010,
    WRITEB  = 5'b0_0100,
    READA   = 5'b0_1000,
    READB   = 5'b1_0000;
localparam [3:0]
    FW_IDLE_BIT = 4'd0,
    WRITEA_BIT  = 4'd1,
    WRITEB_BIT  = 4'd2,
    READA_BIT   = 4'd3,
    READB_BIT   = 4'd4;

// Assign Statements
assign VertexA[0] = store_ReadDataA[127:0];
assign VertexA[1] = store_ReadDataA[255:128];
assign VertexB[0] = store_ReadDataB[127:0];
assign VertexB[1] = store_ReadDataB[255:128];

assign TempPropertyA = (WhichVertexA) ? {VertexA[1][103:96], VertexA[1][111:104], VertexA[1][119:112], VertexA[1][127:120]} : {VertexA[0][103:96], VertexA[0][111:104], VertexA[0][119:112], VertexA[0][127:120]};
assign PropertyA     = (WhichVertexA) ? {VertexA[1][71:64], VertexA[1][79:72], VertexA[1][87:80], VertexA[1][95:88]} : {VertexA[0][71:64], VertexA[0][79:72], VertexA[0][87:80], VertexA[0][95:88]};
assign EdgeDegreeA   = (WhichVertexA) ? {VertexA[1][7:2], VertexA[1][15:8], VertexA[1][23:16], VertexA[1][31:24]} : {VertexA[0][7:2], VertexA[0][15:8], VertexA[0][23:16], VertexA[0][31:24]};
assign NewValueA     = regMSGA[30:0];
assign WhichVertexA  = regMSGA[35];
assign ValidA  = Cache_ReadDataA[287];
assign HitA    = (ValidA && (CacheTagA == TagA));
assign MissA   = ~HitA;
assign ActiveA = (state_A[SETUP_BIT] || state_A[DEACTIVATE_BIT] || state_A[WAIT_BIT] || state_A[SCAN_BIT]) ? (Cache_ReadDataA[128] || Cache_ReadDataA[0]) : (HitA ? (WhichVertexA ? Cache_ReadDataA[128] : Cache_ReadDataA[0]) : (WhichVertexA ? store_ReadDataA[128] : store_ReadDataA[0]));
assign CacheTagA = (state_A[DEACTIVATE_BIT] || state_A[WAIT_BIT] || state_A[SCAN_BIT]) ? {5'b00000, Tracker_ReadAddress[27:15]} : regMSGA[63:46];
assign TagA = Cache_ReadDataA[273:256];

assign TempPropertyB = (WhichVertexB) ? {VertexB[1][103:96], VertexB[1][111:104], VertexB[1][119:112], VertexB[1][127:120]} : {VertexB[0][103:96], VertexB[0][111:104], VertexB[0][119:112], VertexB[0][127:120]};
assign PropertyB     = (WhichVertexB) ? {VertexB[1][71:64], VertexB[1][79:72], VertexB[1][87:80], VertexB[1][95:88]} : {VertexB[0][71:64], VertexB[0][79:72], VertexB[0][87:80], VertexB[0][95:88]};
assign EdgeDegreeB   = (WhichVertexB) ? {VertexB[1][7:2], VertexB[1][15:8], VertexB[1][23:16], VertexB[1][31:24]} : {VertexB[0][7:2], VertexB[0][15:8], VertexB[0][23:16], VertexB[0][31:24]};
assign NewValueB     = regMSGB[30:0];
assign WhichVertexB  = regMSGB[35];
assign ValidB  = Cache_ReadDataB[287];
assign HitB    = (ValidB && (CacheTagB == TagB));
assign MissB   = ~HitB;
assign ActiveB = (state_B[SETUP_BIT] || state_B[DEACTIVATE_BIT] || state_B[WAIT_BIT] || state_B[SCAN_BIT]) ? (Cache_ReadDataB[128] || Cache_ReadDataB[0]) : (HitB ? (WhichVertexB ? Cache_ReadDataB[128] : Cache_ReadDataB[0]) : (WhichVertexB ? store_ReadDataB[128] : store_ReadDataB[0]));
assign CacheTagB = (state_B[DEACTIVATE_BIT] || state_B[WAIT_BIT] || state_B[SCAN_BIT]) ? {5'b00000, Tracker_ReadAddress[27:15]} : regMSGB[63:46];
assign TagB = Cache_ReadDataB[273:256];

assign ReadBurst  = 8'd0;
assign WriteBurst = 8'd0;
assign UsingAXI   = (state_A[FETCH_BIT] || state_B[FETCH_BIT] || state_A[WRITE_BIT] || state_B[WRITE_BIT]);
assign Cache_EndAddress = {Tracker_ReadAddress[14:9], 4'b1111};
assign Probe = (state_A[END_BIT] && state_B[END_BIT]) || (state_A[SETUP_BIT] && state_B[SETUP_BIT]);

// Control
always @(posedge clk) begin
if(reset)
    InActive <= 1'b1;
else if(state_A[DEACTIVATE_BIT] || Start || (MSGFIFO_Empty && state_A[CACHE_IDLE_BIT] && state_B[CACHE_IDLE_BIT] && state_FW[FW_IDLE_BIT]))
    InActive <= 1'b1;
else
    InActive <= 1'b0;

if(reset)
    Start <= 1'b0;
else if(MSGFIFO_Empty && AVFIFO_Empty && state_A[CACHE_IDLE_BIT] && state_B[CACHE_IDLE_BIT] && state_FIFO[FIFO_IDLE_BIT] && ActiveVMU && ~AVMFIFO_Full)
    Start <= 1'b1;
else 
    Start <= 1'b0;
end

//==================================
//         FIFO Contoller (1A)
//==================================
// FSM
always @(posedge clk) begin
if(reset)
    state_FIFO <= FIFO_IDLE;
else case(state_FIFO)
    FIFO_IDLE: begin
        if(~MSGFIFO_Empty && (state_A[CACHE_IDLE_BIT] || state_B[CACHE_IDLE_BIT])) state_FIFO <= FIFO_READ;
        else state_FIFO <= FIFO_IDLE;
    end
    FIFO_READ: begin
        if(state_A[CACHE_IDLE_BIT] && ~(Cache_AddressB==regMSG[45:36])) state_FIFO <= FIFO_WAIT; 
        else if(state_B[CACHE_IDLE_BIT] && (~state_A[CACHE_IDLE_BIT] || Cache_AddressB==regMSG[45:36]) && Cache_AddressA!=regMSG[45:36]) state_FIFO <= FIFO_WAIT;
        else state_FIFO <= FIFO_READ;
    end
    FIFO_WAIT: begin
        state_FIFO <= FIFO_IDLE;
    end
    default: state_FIFO <= FIFO_IDLE;
endcase
// Wires (1B)
if(reset)
    MSGFIFO_Read <= 1'b0;
else if(state_FIFO[FIFO_IDLE_BIT] && ~MSGFIFO_Empty && (state_A[CACHE_IDLE_BIT] || state_B[CACHE_IDLE_BIT]))
    MSGFIFO_Read <= 1'b1;
else
    MSGFIFO_Read <= 1'b0;

if(reset)
    MSGAReady <= 1'b0;
else if(state_FIFO[FIFO_READ_BIT] && state_A[CACHE_IDLE_BIT] && Cache_AddressB!=regMSG[45:36])
    MSGAReady <= 1'b1;
else
    MSGAReady <= 1'b0;

if(reset)
    MSGBReady <= 1'b0;
else if(state_FIFO[FIFO_READ_BIT] && state_B[CACHE_IDLE_BIT] && (~state_A[CACHE_IDLE_BIT] || Cache_AddressB==regMSG[45:36]) && Cache_AddressA!=regMSG[45:36])
    MSGBReady <= 1'b1;
else
    MSGBReady <= 1'b0;

if(reset)
    regMSG <= 64'd0;
else if(state_FIFO[FIFO_IDLE_BIT] && ~MSGFIFO_Empty && (state_A[CACHE_IDLE_BIT] || state_B[CACHE_IDLE_BIT]))
    regMSG <= MSGFIFO_ReadData;
else
    regMSG <= regMSG;

//==================================
//        Cache Contoller A (2A)
//==================================
if(reset)
    state_A <= CACHE_IDLE;
else case(state_A)
    CACHE_IDLE: begin
        if(Start) state_A <= SETUP;
        else if(MSGAReady) state_A <= CACHE_WAIT;
        else state_A <= CACHE_IDLE;
    end
    CACHE_WAIT: begin
        state_A <= CACHE_READ;
    end
    CACHE_READ: begin
        state_A <= CACHE_HM;
    end
    CACHE_HM: begin
        if(ValidA && (CacheTagA == TagA)) state_A <= REDUCE;
        else state_A <= FETCH;
    end
    FETCH: begin
        if(state_FW[READA_BIT] && EndRead) state_A <= REDUCE;
        else state_A <= FETCH;
    end
    REDUCE: begin
        state_A <= UPDATE;
    end
    UPDATE: begin
        if(~UpdateA) state_A <= CACHE_IDLE;
        else if(~AVFIFO_Full) state_A <= CACHE_WRITE;
        else state_A <= UPDATE;
    end
    CACHE_WRITE: begin
        if(UpdateA) state_A <= WRITE;
        else state_A <= CACHE_IDLE;
    end
    WRITE: begin
        if(WriteCompletedA) state_A <= CACHE_IDLE;
        else state_A <= WRITE;
    end
    SETUP: begin
        if(Finish) state_A <= CACHE_IDLE;
        else if(VMUHit) state_A <= DEACTIVATE;
        else state_A <= SETUP;
    end
    DEACTIVATE: begin
        if(Cache_AddressB==Cache_EndAddress) state_A <= END;
        else state_A <= WAIT;
    end
    WAIT: begin
        state_A <= SCAN;
    end
    SCAN: begin
        state_A <= DEACTIVATE;
    end
    END: begin
        if(VMUHit) state_A <= END;
        else state_A <= SETUP;
    end
    default: state_A <= CACHE_IDLE;
endcase

//==================================
//        Cache Contoller B (3A)
//==================================
if(reset)
    state_B <= CACHE_IDLE;
else case(state_B)
    CACHE_IDLE: begin
        if(Start) state_B <= SETUP;
        else if(MSGBReady) state_B <= CACHE_WAIT;
        else state_B <= CACHE_IDLE;
    end
    CACHE_WAIT: begin
        state_B <= CACHE_READ;
    end
    CACHE_READ: begin
        state_B <= CACHE_HM;
    end
    CACHE_HM: begin
        if(ValidB && (CacheTagB == TagB)) state_B <= REDUCE;
        else state_B <= FETCH;
    end
    FETCH: begin
        if(state_FW[READB_BIT] && EndRead) state_B <= REDUCE;
        else state_B <= FETCH;
    end
    REDUCE: begin
        if(~AVFIFO_Full && ~state_A[REDUCE_BIT]) state_B <= UPDATE;
        else state_B <= REDUCE;
    end
    UPDATE: begin
        if(~UpdateB) state_B <= CACHE_IDLE;
        else state_B <= CACHE_WRITE;
    end
    CACHE_WRITE: begin
        if(UpdateB) state_B <= WRITE;
        else state_B <= CACHE_IDLE;
    end
    WRITE: begin
        if(WriteCompletedB) state_B <= CACHE_IDLE;
        else state_B <= WRITE;
    end
    SETUP: begin
        if(Finish) state_B <= CACHE_IDLE;
        else if(VMUHit) state_B <= DEACTIVATE;
        else state_B <= SETUP;
    end
    DEACTIVATE: begin
        if(Cache_AddressB==Cache_EndAddress) state_B <= END;
        else state_B <= WAIT;
    end
    WAIT: begin
        state_B <= SCAN;
    end
    SCAN: begin
        state_B <= DEACTIVATE;
    end
    END: begin
        if(VMUHit) state_B <= END;
        else state_B <= SETUP;
    end
    default: state_B <= CACHE_IDLE;
endcase

//==================================
//  Fetch/Writeback Contoller (4A)
//==================================
if(reset)
    state_FW <= FW_IDLE;
else case(state_FW)
    FW_IDLE: begin
        if(WriteA) state_FW <= WRITEA;
        else if(WriteB) state_FW <= WRITEB;
        else if(FetchA) state_FW <= READA;
        else if(FetchB) state_FW <= READB;
        else state_FW <= FW_IDLE;
    end
    WRITEA: begin
        if(EndWrite) state_FW <= FW_IDLE;
        else state_FW <= WRITEA;
    end
    WRITEB: begin
        if(EndWrite) state_FW <= FW_IDLE;
        else state_FW <= WRITEB;
    end
    READA: begin
        if(EndRead) state_FW <= FW_IDLE;
        else state_FW <= READA;
    end
    READB: begin
        if(EndRead) state_FW <= FW_IDLE;
        else state_FW <= READB;
    end
    default: state_FW <= FW_IDLE;
endcase
end

// Active Vertex FIFO (5A)
always @(posedge clk) begin

    if(reset)
        regMSGA <= 64'd0;
    else if(MSGAReady)
        regMSGA <= regMSG;
    else
        regMSGA <= regMSGA;

    if(reset)
        regMSGB <= 64'd0;
    else if(MSGBReady)
        regMSGB <= regMSG;
    else
        regMSGB <= regMSGB;
    
    if(reset) begin
        AVFIFO_Write     <= 1'b0;
        AVFIFO_WriteData <= 33'd0;
    end
    else if(state_A[UPDATE_BIT] && SendA) begin
        AVFIFO_Write     <= 1'b1;
        AVFIFO_WriteData <= regMSGA[63:31];
    end
    else if(state_B[UPDATE_BIT] && SendB) begin
        AVFIFO_Write     <= 1'b1;
        AVFIFO_WriteData <= regMSGB[63:31];
    end
    else begin
        AVFIFO_Write     <= 1'b0;
        AVFIFO_WriteData <= 33'd0;
    end
end
// Cache Port A (2B)
always @(posedge clk) begin
    if(reset)
        Cache_WriteEnA <= 1'b0;
    else if((state_A[UPDATE_BIT] && (MissA || UpdateA) && ~AVFIFO_Full) || (state_A[DEACTIVATE_BIT] && ActiveA && (CacheTagA==TagA)))
        Cache_WriteEnA <= 1'b1;
    else 
        Cache_WriteEnA <= 1'b0;

    if(reset)
        Cache_AddressA <= 10'd0;
    else if(MSGAReady)
        Cache_AddressA <= regMSG[45:36];
    else if(state_A[SETUP_BIT])
        Cache_AddressA <= Tracker_ReadAddress[14:5];
    else if(state_A[WAIT_BIT])
        Cache_AddressA <= {Cache_AddressA + 2'b10};
    else 
        Cache_AddressA <= Cache_AddressA;

    if(reset)
        Cache_WriteDataA <= 288'd0;
    else if(state_A[DEACTIVATE_BIT] && ActiveA && (CacheTagA==TagA))
        Cache_WriteDataA <= {Cache_ReadDataA[287:129], 1'b0, Cache_ReadDataA[127:1], 1'b0};
    else if(state_A[UPDATE_BIT] && MissA && UpdateA)
        case(WhichVertexA)
        1'b0:
        Cache_WriteDataA <= {1'b1, 13'd0, CacheTagA, store_ReadDataA[255:128], ResultA[7:0], ResultA[15:8], ResultA[23:16], ResultA[31:24],
                                    ResultA[7:0], ResultA[15:8], ResultA[23:16], ResultA[31:24], store_ReadDataA[63:1], (SendA || store_ReadDataA[0])};
        1'b1:
        Cache_WriteDataA <= {1'b1, 13'd0, CacheTagA, ResultA[7:0], ResultA[15:8], ResultA[23:16], ResultA[31:24],
                                    ResultA[7:0], ResultA[15:8], ResultA[23:16], ResultA[31:24], store_ReadDataA[191:129], (SendA || store_ReadDataA[128]), store_ReadDataA[127:0]};
        endcase
    else if(state_A[UPDATE_BIT] && MissA)
        Cache_WriteDataA <= {1'b1, 13'd0, CacheTagA, store_ReadDataA[255:0]};
    else if(state_A[UPDATE_BIT] && UpdateA)
        case(WhichVertexA)
        1'b0:
        Cache_WriteDataA <= {1'b1, 13'd0, CacheTagA, Cache_ReadDataA[255:128], ResultA[7:0], ResultA[15:8], ResultA[23:16], ResultA[31:24],
                                    ResultA[7:0], ResultA[15:8], ResultA[23:16], ResultA[31:24], Cache_ReadDataA[63:1], (SendA || Cache_ReadDataA[0])};
        1'b1:
        Cache_WriteDataA <= {1'b1, 13'd0, CacheTagA, ResultA[7:0], ResultA[15:8], ResultA[23:16], ResultA[31:24], ResultA[7:0], ResultA[15:8], ResultA[23:16], ResultA[31:24],
                                    Cache_ReadDataA[191:129], (SendA || Cache_ReadDataA[128]), Cache_ReadDataA[127:0]};
        default: Cache_WriteDataA <= 288'd0;
        endcase
    else
        Cache_WriteDataA <= Cache_WriteDataA;
end
// Cache Port B (3B)
always @(posedge clk) begin
    if(reset)
        Cache_WriteEnB <= 1'b0;
    else if((state_B[UPDATE_BIT] && (MissB || UpdateB) && ~AVFIFO_Full && ~state_A[UPDATE_BIT]) || (state_B[DEACTIVATE_BIT] && ActiveB && (CacheTagB==TagB)))
        Cache_WriteEnB <= 1'b1;
    else 
        Cache_WriteEnB <= 1'b0;

    if(reset)
        Cache_AddressB <= 10'd1;
    else if(MSGBReady)
        Cache_AddressB <= regMSG[45:36];
    else if(state_B[SETUP_BIT])
        Cache_AddressB <= {Tracker_ReadAddress[14:6], 1'b1};
    else if(state_B[WAIT_BIT])
        Cache_AddressB <= {Cache_AddressB + 2'b10};
    else 
        Cache_AddressB <= Cache_AddressB;

    if(reset)
        Cache_WriteDataB <= 288'd0;
    else if(state_B[DEACTIVATE_BIT] && ActiveB && (CacheTagB==TagB))
        Cache_WriteDataB <= {Cache_ReadDataB[287:129], 1'b0, Cache_ReadDataB[127:1], 1'b0};
    else if(state_B[UPDATE_BIT] && MissB && UpdateB)
        case(WhichVertexB)
        1'b0:
        Cache_WriteDataB <= {1'b1, 13'd0, CacheTagB, store_ReadDataB[255:128], ResultB[7:0], ResultB[15:8], ResultB[23:16], ResultB[31:24],
                                    ResultB[7:0], ResultB[15:8], ResultB[23:16], ResultB[31:24], store_ReadDataB[63:1], (SendB || store_ReadDataB[0])};
        1'b1:
        Cache_WriteDataB <= {1'b1, 13'd0, CacheTagB, ResultB[7:0], ResultB[15:8], ResultB[23:16], ResultB[31:24],
                                    ResultB[7:0], ResultB[15:8], ResultB[23:16], ResultB[31:24], store_ReadDataB[191:129], (SendB || store_ReadDataB[128]), store_ReadDataB[127:0]};
        endcase
    else if(state_B[UPDATE_BIT] && MissB)
        Cache_WriteDataB <= {1'b1, 13'd0, CacheTagB, store_ReadDataB[255:0]};
    else if(state_B[UPDATE_BIT] && UpdateB)
        case(WhichVertexB)
        1'b0:
        Cache_WriteDataB <= {1'b1, 13'd0, CacheTagB, Cache_ReadDataB[255:128], ResultB[7:0], ResultB[15:8], ResultB[23:16], ResultB[31:24],
                                    ResultB[7:0], ResultB[15:8], ResultB[23:16], ResultB[31:24], Cache_ReadDataB[63:1], (SendB || Cache_ReadDataB[0])};
        1'b1:
        Cache_WriteDataB <= {1'b1, 13'd0, CacheTagB, ResultB[7:0], ResultB[15:8], ResultB[23:16], ResultB[31:24], ResultB[7:0], ResultB[15:8], ResultB[23:16], ResultB[31:24],
                                    Cache_ReadDataB[191:129], (SendB || Cache_ReadDataB[128]), Cache_ReadDataB[127:0]};
        default: Cache_WriteDataB <= 288'd0;
        endcase
    else
        Cache_WriteDataB <= Cache_WriteDataB;
end

// Shared Read Storage
always @(posedge clk) begin
    if(reset) // (2C)
        store_ReadDataA <= 256'd0;
    else if(state_A[CACHE_READ_BIT])
        store_ReadDataA <= {Cache_ReadDataA[255:0]};
    else if(state_FW[READA_BIT] && ReadReady)
        store_ReadDataA <= ReadData;
    else
        store_ReadDataA <= store_ReadDataA;

    if(reset) // (3C)
        store_ReadDataB <= 256'd0;
    else if(state_B[CACHE_READ_BIT])
        store_ReadDataB <= {Cache_ReadDataB[255:0]};
    else if(state_FW[READB_BIT] && ReadReady)
        store_ReadDataB <= ReadData;
    else
        store_ReadDataB <= store_ReadDataB;
end
// MEMORY READ (4B)
always @(posedge clk) begin
    if(reset)
        StartRead <= 1'b0;
    else if(state_FW[FW_IDLE_BIT] && (FetchA || FetchB) && ~(WriteA || WriteB))
        StartRead <= 1'b1;
    else
        StartRead <= 1'b0;

    if(reset)
        ReadAddress <= {1'b0, PE_NUM, 28'd0};
    else if(state_FW[FW_IDLE_BIT] && state_A[FETCH_BIT])
        ReadAddress <= {1'b0, PE_NUM, CacheTagA[12:0], Cache_AddressA, 5'b00000};
    else if(state_FW[FW_IDLE_BIT] && state_B[FETCH_BIT])
        ReadAddress <= {1'b0, PE_NUM, CacheTagB[12:0], Cache_AddressB, 5'b00000};
    else 
        ReadAddress <= ReadAddress;
    
    if(reset)
        FetchA <= 1'b0;
    else if(state_A[FETCH_BIT] && ~EndRead)
        FetchA <= 1'b1;
    else
        FetchA <= 1'b0;

    if(reset)
        FetchB <= 1'b0;
    else if(state_B[FETCH_BIT] && ~EndRead)
        FetchB <= 1'b1;
    else
        FetchB <= 1'b0;
end
// MEMORY WRITE (4C)
always @(posedge clk) begin
    if(reset)
        StartWrite <= 1'b0;
    else if(state_FW[FW_IDLE_BIT] && (WriteA || WriteB))
        StartWrite <= 1'b1;
    else
        StartWrite <= 1'b0;

    if(reset)
        WriteAddress <= {1'b0, PE_NUM, 28'd0};
    else if(state_FW[FW_IDLE_BIT] && state_A[WRITE_BIT])
        WriteAddress <= {1'b0, PE_NUM, CacheTagA[12:0], Cache_AddressA, 5'b00000};
    else if(state_FW[FW_IDLE_BIT] && state_B[WRITE_BIT])
        WriteAddress <= {1'b0, PE_NUM, CacheTagB[12:0], Cache_AddressB, 5'b00000};
    else 
        WriteAddress <= WriteAddress;

    if(reset)
        WriteReady <= 1'b0;
    else if(~state_FW[FW_IDLE_BIT] && WriteResp && WriteCounter<(WriteBurst+1))
        WriteReady <= 1'b1;
    else
        WriteReady <= 1'b0;

    if(reset)
        WriteCounter <= 1'b0;
    else if(~state_FW[FW_IDLE_BIT] && EndWrite) 
        WriteCounter <= 1'b0;
    else if(~state_FW[FW_IDLE_BIT] && WriteReady)
        WriteCounter <= WriteCounter + 1'b1;
    else
        WriteCounter <= WriteCounter;
        
    if(reset)
        WriteData <= 256'd0;
    else if(state_FW[WRITEA_BIT] && WriteResp)
            WriteData <= Cache_ReadDataA;
    else if(state_FW[WRITEB_BIT] && WriteResp)
            WriteData <= Cache_ReadDataB;
    else
        WriteData <= WriteData;

    if(reset)
        WriteA <= 1'b0;
    else if(state_A[WRITE_BIT] && ~WriteCompletedA && ~EndWrite)
        WriteA <= 1'b1;
    else
        WriteA <= 1'b0;

    if(reset)
        WriteCompletedA <= 1'b0;
    else if(state_FW[WRITEA_BIT] && EndWrite)
        WriteCompletedA <= 1'b1;
    else
        WriteCompletedA <= 1'b0;

    if(reset)
        WriteB <= 1'b0;
    else if(state_B[WRITE_BIT] && ~WriteCompletedB && ~EndWrite)
        WriteB <= 1'b1;
    else
        WriteB <= 1'b0;

    if(reset)
        WriteCompletedB <= 1'b0;
    else if(state_FW[WRITEB_BIT] && EndWrite)
        WriteCompletedB <= 1'b1;
    else
        WriteCompletedB <= 1'b0;
end


ReductionEngine #(
    .VPROPWIDTH  (VPROPWIDTH  ), 
    .EDEGREEWIDTH(EDEGREEWIDTH)) 
inst_ReductionEngine(
    .clk         (clk          ),
	//.control    (control_reg  ),
	.temp_pA     (TempPropertyA), 
	.pA          (PropertyA    ), 
	.EdgeDegreeA (EdgeDegreeA  ), 
	.new_vA      (NewValueA    ), 
	.ResultA     (ResultA      ), 
	.TempResultA (TempResultA  ), 
	.UpdateA     (UpdateA      ),
	.SendA       (SendA        ),
    .ActiveA     (ActiveA      ),
    .temp_pB     (TempPropertyB), 
	.pB          (PropertyB    ), 
	.EdgeDegreeB (EdgeDegreeB  ), 
	.new_vB      (NewValueB    ), 
	.ResultB     (ResultB      ), 
	.TempResultB (TempResultB  ), 
	.UpdateB     (UpdateB      ),
	.SendB       (SendB        ),
    .ActiveB     (ActiveB      )
);
endmodule

//=====================================
//         Reduction Engine (6A)
//=====================================
module ReductionEngine #(
	parameter VPROPWIDTH   = 32,
	parameter EDEGREEWIDTH = 30
)(
    input                       clk,
	//input 	                [1:0] control,     // graph Vertex calculation
	input      [VPROPWIDTH-1:0] temp_pA,  // old temp Property
	input      [VPROPWIDTH-1:0] pA,       // old Property
	input    [EDEGREEWIDTH-1:0] EdgeDegreeA, // old edge degree
	input      [VPROPWIDTH-1:0] new_vA,       // new value
	output reg [VPROPWIDTH-1:0] ResultA,      // Vertex Property Result
	output reg [VPROPWIDTH-1:0] TempResultA, // temp Vertex Property Result
	output reg                  UpdateA,      // determine to update Vertex
	output reg                  SendA,
    input                       ActiveA,
    input      [VPROPWIDTH-1:0] temp_pB,  // old temp Property
	input      [VPROPWIDTH-1:0] pB,       // old Property
	input    [EDEGREEWIDTH-1:0] EdgeDegreeB, // old edge degree
	input      [VPROPWIDTH-1:0] new_vB,       // new value
	output reg [VPROPWIDTH-1:0] ResultB,      // Vertex Property Result
	output reg [VPROPWIDTH-1:0] TempResultB, // temp Vertex Property Result
	output reg                  UpdateB,      // determine to update Vertex
	output reg                  SendB,
    input                       ActiveB
);
wire BFS_Check_SendA, BFS_Check_UpdateA;
wire BFS_Check_SendB, BFS_Check_UpdateB;
assign BFS_Check_SendA = ~ActiveA && ((new_vA < temp_pA) && (EdgeDegreeA!=0));
assign BFS_Check_UpdateA = (new_vA < temp_pA);
assign BFS_Check_SendB = ~ActiveB && ((new_vB < temp_pB) && (EdgeDegreeB!=0));
assign BFS_Check_UpdateB = (new_vB < temp_pB);
	
always @(posedge clk)
begin
//case(control)

//2'b10: // MIN new_v <= old_temp_p (BFS) (SSSP)
//begin
	ResultA     <= BFS_Check_UpdateA ? new_vA : pA;
	TempResultA <= BFS_Check_UpdateA ? new_vA : temp_pA;
	UpdateA     <= BFS_Check_UpdateA;
	SendA       <= BFS_Check_SendA;

    ResultB     <= BFS_Check_UpdateB ? new_vB : pB;
	TempResultB <= BFS_Check_UpdateB ? new_vB : temp_pB;
	UpdateB     <= BFS_Check_UpdateB;
	SendB       <= BFS_Check_SendB;
end
endmodule
