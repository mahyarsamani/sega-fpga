`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/19/2024 07:50:22 PM
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module PE #(
    parameter PE_NUM = 4'h0,
    parameter VERTEX_DATAWIDTH = 128*2,
    parameter EDGE_DATAWIDTH = 64*8,
    parameter SUPERBLOCK_DEPTH = 1024,
    parameter MPU_CACHE_DEPTH = 1024,
    parameter MGU_CACHE_DEPTH = 1024,
    parameter MAX_CACHE_DEPTH = 1024//8192
)(
    input  wire  clk,
    input  wire  reset,
    
    input  wire  start,
    output reg   regResetDone,
    output reg   regGraphDone,
    input  wire  [14:0] MaxSuperblockAddress,
    //===================================
    //      Message FIFO Signals
    //===================================
    // Message FIFO In Signals
    output wire MSGFIFO_Full_i,
    input  wire MSGFIFO_Write_i,
    input  wire [63:0] MSGFIFO_WriteData_i,
    
    // Message FIFO Out Signals 
    output wire MSGFIFO_Empty_o,
    input  wire MSGFIFO_Read_o,
    output wire [63:0] MSGFIFO_ReadData_o,
    output wire MSGFIFO_ReadValid_o,
    
    //===================================
    // Master AXI Engine Signals
    //===================================
    // Read Vertex
    output reg        HBM_StartRead,
    output reg  [7:0] HBM_ReadBurst,
    output reg [32:0] HBM_ReadAddress,
    input  wire [VERTEX_DATAWIDTH-1:0] HBM_ReadData,
    input  wire        HBM_ReadReady,
    input  wire        HBM_EndRead,
    // Write Vertex
    output reg        HBM_StartWrite,
    output reg  [7:0] HBM_WriteBurst,
    output reg [32:0] HBM_WriteAddress,
    output reg [VERTEX_DATAWIDTH-1:0] HBM_WriteData,
    output reg        HBM_WriteReady,
    input  wire        HBM_WriteResp,
    input  wire        HBM_WriteLast,
    input  wire        HBM_EndWrite,
    // Read Edge
    output wire        DDR_StartRead,
    output wire  [7:0] DDR_ReadBurst,
    output wire [32:0] DDR_ReadAddress,
    input  wire [EDGE_DATAWIDTH-1:0] DDR_ReadData,
    input  wire        DDR_ReadReady,
    input  wire        DDR_EndRead

    );

reg  [29:0] GraphDone;
reg  [15:0] Depth;
wire [15:0] nextDepth;
wire MPU_InActive, VMU_InActive, MGU_InActive;
wire Start;
wire Finish;
wire Active;
wire VMU_Hit;
wire MPU_Probe;

//===================================
//     Cache Wires & Registers
//===================================
reg [1:0] state_reset;
localparam [1:0]
    RESET = 2'd0,
    WAIT  = 2'd1,
    CYCLE = 2'd2,
    RESETDONE = 2'd3;
reg Enable;
// Superblock BRAM 
wire [14:0] Superblock_Address;
wire [71:0] Superblock_WriteData, Superblock_ReadData;
wire Superblock_WriteEn;
// MPU Cache
wire [9:0] Cache_AddressA;
wire [287:0] Cache_WriteDataA, Cache_ReadDataA;
wire Cache_WriteEnA;
wire [9:0] Cache_AddressB;
wire [287:0] Cache_WriteDataB, Cache_ReadDataB;
wire Cache_WriteEnB;
// MGU Cache
wire [9:0] History_Address;
wire [50:0] History_WriteData, History_ReadData;
wire History_WriteEn;

// Reset
// Superblock BRAM
reg  [13:0] regSuperblock_Address;
reg  regSuperblock_WriteEn;
wire [13:0] nextSuperblock_Address;
// MPU Cache
reg  [9:0] regCache_Address;
reg  regCache_WriteEn;
wire [9:0] nextCache_Address;
// MGU Cache
reg  [9:0] regHistory_Address;
reg  regHistory_WriteEn;
wire [9:0] nextHistory_Address;


//===================================
//     FIFO Wires & Registers
//===================================
// Message FIFO In Signals 
wire MSGFIFO_Empty_i;
wire MSGFIFO_Read_i;
wire [63:0] MSGFIFO_ReadData_i;
wire MSGFIFO_ReadValid_i;

// Message FIFO Out Signals 
wire MSGFIFO_Full_o;
wire MSGFIFO_Write_o;
wire [63:0] MSGFIFO_WriteData_o;

// MPU to VMU FIFO (Vertex Address)
wire AVFIFO_Empty;
wire AVFIFO_Full;
wire AVFIFO_Read;
wire [32:0] AVFIFO_ReadData;
wire AVFIFO_ReadValid;
wire AVFIFO_Write;
wire [32:0] AVFIFO_WriteData;

// VMU to MGU FIFO A Signals 
wire AVMFIFO_Empty;
wire AVMFIFO_Full;
wire AVMFIFO_Read;
wire [93:0] AVMFIFO_ReadData;
wire AVMFIFO_ReadValid;
wire AVMFIFO_Write;
wire [93:0] AVMFIFO_WriteData;
integer i;

wire MPU_UsingAXI;
wire MPU_StartRead;
wire [7:0] MPU_ReadBurst;
wire [32:0] MPU_ReadAddress;
reg  [255:0] MPU_ReadData;
reg   MPU_ReadReady;
reg   MPU_EndRead;

wire  MPU_StartWrite;
wire [7:0] MPU_WriteBurst;
wire [32:0] MPU_WriteAddress;
wire [255:0] MPU_WriteData;
wire  MPU_WriteReady;
reg   MPU_WriteResp;
reg   MPU_WriteLast;
reg   MPU_EndWrite;

wire  VMU_UsingAXI;
wire  VMU_StartRead;
wire [7:0] VMU_ReadBurst;
wire [32:0] VMU_ReadAddress;
reg  [255:0] VMU_ReadData;
reg   VMU_ReadReady;
reg   VMU_EndRead;

wire  VMU_StartWrite;
wire [7:0] VMU_WriteBurst;
wire [32:0] VMU_WriteAddress;
wire [255:0] VMU_WriteData;
wire  VMU_WriteReady;
reg   VMU_WriteResp;
reg   VMU_WriteLast;
reg   VMU_EndWrite;
//===================================
//     Graph Done (7 Cycle Hold)
//===================================
always @(posedge clk) begin
if (start && MPU_InActive && VMU_InActive && MGU_InActive) begin
    GraphDone[0] <= 1'b1;
    for(i=0;i<29;i=i+1) begin
        GraphDone[i+1] <= GraphDone[i];
    end
    regGraphDone <= GraphDone[29];
end
else begin  
    GraphDone <= 30'd0;
    regGraphDone <= 1'b0;
end
end

//===================================
//        Cache Reset / MUX
//===================================
assign nextDepth = Depth + 1'b1;
assign nextSuperblock_Address = regSuperblock_Address + 1'b1;
assign nextCache_Address   = regCache_Address + 1'b1;
assign nextHistory_Address = regHistory_Address + 1'b1;
always @(posedge clk) begin
case(state_reset)
    RESET: begin
        if (reset) begin
            Enable <= 1'b1;
            Depth  <= 16'd0;
            regResetDone <= 1'b0;
            regSuperblock_Address <= 14'd0;
            regCache_Address <= 10'd0;
            regHistory_Address <= 10'd0;
            regSuperblock_WriteEn <= 1'b1;
            regCache_WriteEn <= 1'b1;
            regHistory_WriteEn <= 1'b1;
            state_reset <= WAIT;
        end
        else begin
            Depth  <= 16'd0;
            regResetDone <= 1'b0;
            regSuperblock_Address <= 14'd0;
            regCache_Address <= 10'd0;
            regHistory_Address <= 10'd0;
            regSuperblock_WriteEn <= 1'b0;
            regCache_WriteEn <= 1'b0;
            regHistory_WriteEn <= 1'b0;
        end
    end
    WAIT: begin
        state_reset <= CYCLE;
    end
    CYCLE: begin
            Depth <= nextDepth;
        if (Depth < SUPERBLOCK_DEPTH) regSuperblock_Address <= nextSuperblock_Address;
        if (Depth < MPU_CACHE_DEPTH) regCache_Address <= nextCache_Address;
        if (Depth < MGU_CACHE_DEPTH) regHistory_Address <= nextHistory_Address;
        if (nextDepth == MAX_CACHE_DEPTH) state_reset <= RESETDONE;
    end
    RESETDONE: begin
        if(reset) state_reset <= WAIT;
        regResetDone <= 1'b1;
        Depth  <= 16'd0;
        regSuperblock_Address <= 14'd0;
        regCache_Address <= 10'd0;
        regHistory_Address <= 10'd0;
        regSuperblock_WriteEn <= 1'b0;
        regCache_WriteEn <= 1'b0;
        regHistory_WriteEn <= 1'b0;
    end
    default: state_reset <= RESET;
endcase
end

//===================================
//    MUX Vertex Engine 0
//===================================
always @(*) begin
if(VMU_UsingAXI) begin // VMU trying to access axi engine (MPU not using)
	// Read VMU
	HBM_StartRead     = VMU_StartRead;
	HBM_ReadBurst     = VMU_ReadBurst;
	HBM_ReadAddress   = VMU_ReadAddress;
	VMU_ReadReady     = HBM_ReadReady;
	VMU_EndRead       = HBM_EndRead;

    // Write VMU
	HBM_StartWrite    = VMU_StartWrite;
	HBM_WriteBurst    = VMU_WriteBurst;
	HBM_WriteAddress  = VMU_WriteAddress;
	HBM_WriteData     = VMU_WriteData;
    HBM_WriteReady    = VMU_WriteReady;
    VMU_WriteResp     = HBM_WriteResp;
    VMU_WriteLast     = HBM_WriteLast;
    VMU_EndWrite      = HBM_EndWrite;

    // Hold MPU to 0
    MPU_ReadReady = 1'b0;
	MPU_EndRead   = 1'b0;
    MPU_WriteResp = 1'b0;
    MPU_WriteLast = 1'b0;
	MPU_EndWrite  = 1'b0;
end
else begin // MPU trying to access axi engine (VMU not using)
	// Read MPU
	HBM_StartRead    = MPU_StartRead;
	HBM_ReadBurst    = MPU_ReadBurst;
	HBM_ReadAddress  = MPU_ReadAddress;
    MPU_ReadReady    = HBM_ReadReady;
	MPU_EndRead      = HBM_EndRead;

    // Write VMU
	HBM_StartWrite   = MPU_StartWrite;
	HBM_WriteBurst   = MPU_WriteBurst;
	HBM_WriteAddress = MPU_WriteAddress;
	HBM_WriteData    = MPU_WriteData;
    MPU_WriteResp    = HBM_WriteResp;
    MPU_WriteLast    = HBM_WriteLast;
	MPU_EndWrite     = HBM_EndWrite;
    HBM_WriteReady   = MPU_WriteReady;
	
    // Hold VMU to 0
	VMU_ReadReady = 1'b0;
	VMU_EndRead   = 1'b0;
	VMU_WriteResp = 1'b0;
    VMU_WriteLast = 1'b0;
	VMU_EndWrite  = 1'b0;
end
end

//===================================
//   IP Wrapper, MPU, VMU, MGU
//===================================
PE_IPs_wrapper u_PE_IPs_wrapper(
    .clk(clk),
    .reset(reset),
    // MPU Vertex Cache Signals
    .Cache_addrA(Cache_AddressA | regCache_Address),
    .Cache_dinA(Cache_WriteDataA),
    .Cache_wrenableA(Cache_WriteEnA | regCache_WriteEn),
    .Cache_doutA(Cache_ReadDataA),
    .Cache_addrB(Cache_AddressB),
    .Cache_dinB(Cache_WriteDataB),
    .Cache_wrenableB(Cache_WriteEnB),
    .Cache_doutB(Cache_ReadDataB),
    // Block BRAM Signals
    .SuperblockTracker_addr(Superblock_Address[13:0] | regSuperblock_Address),
    .SuperblockTracker_din(Superblock_WriteData),
    .SuperblockTracker_wrenable(Superblock_WriteEn | regSuperblock_WriteEn),
    .SuperblockTracker_dout(Superblock_ReadData),
    .BRAM_enable(Enable),
    // MGU Work Hisotry Signals
    .History_addr(History_Address | regHistory_Address),
    .History_din(History_WriteData),
    .History_wrenable(History_WriteEn | regHistory_WriteEn),
    .History_dout(History_ReadData),
    // FIFO Signals
    .Msg_FIFO_In_empty(MSGFIFO_Empty_i),
    .Msg_FIFO_In_full(MSGFIFO_Full_i),
    .Msg_FIFO_In_read(MSGFIFO_Read_i),
    .Msg_FIFO_In_dout(MSGFIFO_ReadData_i),
    .Msg_FIFO_In_readvalid(MSGFIFO_ReadValid_i),
    .Msg_FIFO_In_write(MSGFIFO_Write_i),
    .Msg_FIFO_In_din(MSGFIFO_WriteData_i),
    .Msg_FIFO_Out_empty(MSGFIFO_Empty_o),
    .Msg_FIFO_Out_full(MSGFIFO_Full_o),
    .Msg_FIFO_Out_read(MSGFIFO_Read_o),
    .Msg_FIFO_Out_dout(MSGFIFO_ReadData_o),
    .Msg_FIFO_Out_readvalid(MSGFIFO_ReadValid_o),
    .Msg_FIFO_Out_write(MSGFIFO_Write_o),
    .Msg_FIFO_Out_din(MSGFIFO_WriteData_o),
    .AV_FIFO_empty(AVFIFO_Empty),
    .AV_FIFO_full(AVFIFO_Full),
    .AV_FIFO_read(AVFIFO_Read),
    .AV_FIFO_dout(AVFIFO_ReadData),
    .AV_FIFO_readvalid(AVFIFO_ReadValid),
    .AV_FIFO_write(AVFIFO_Write),
    .AV_FIFO_din(AVFIFO_WriteData),
    .AVM_FIFO_empty(AVMFIFO_Empty),
    .AVM_FIFO_full(AVMFIFO_Full),
    .AVM_FIFO_read(AVMFIFO_Read),
    .AVM_FIFO_dout(AVMFIFO_ReadData),
    .AVM_FIFO_readvalid(AVMFIFO_ReadValid),
    .AVM_FIFO_write(AVMFIFO_Write),
    .AVM_FIFO_din(AVMFIFO_WriteData)
);

MPU #(
    .PE_NUM(PE_NUM),
    .DATAWIDTH(VERTEX_DATAWIDTH)
) uMPU(
    .clk(clk),
    .reset(reset),
    .InActive(MPU_InActive),
    .Start(Start),
    .ActiveVMU(Active),
    .VMUHit(VMU_Hit),
    .Probe(MPU_Probe),
    .AVMFIFO_Full(AVMFIFO_Full),
    .AVFIFO_Empty(AVFIFO_Empty),
    .Finish(Finish),
    .Tracker_ReadAddress(VMU_ReadAddress),
    // Message FIFO
    .MSGFIFO_ReadData(MSGFIFO_ReadData_i),
    .MSGFIFO_Read(MSGFIFO_Read_i),
    .MSGFIFO_Empty(MSGFIFO_Empty_i),
    .MSGFIFO_ReadValid(MSGFIFO_ReadValid_i),
    // AXI Read
    .StartRead(MPU_StartRead),
    .ReadAddress(MPU_ReadAddress),
    .ReadData(HBM_ReadData),
    .ReadReady(MPU_ReadReady),
    .EndRead(MPU_EndRead),
    .ReadBurst(MPU_ReadBurst),
    // AXI Write
    .StartWrite(MPU_StartWrite),
    .WriteAddress(MPU_WriteAddress),
    .WriteData(MPU_WriteData),
    .WriteReady(MPU_WriteReady),
    .WriteResp(MPU_WriteResp),
    .EndWrite(MPU_EndWrite),
    .WriteBurst(MPU_WriteBurst),
    // AXI In Use 
    .UsingAXI(MPU_UsingAXI),
    // FIFO MPU to VMU
    .AVFIFO_Full(AVFIFO_Full),
    .AVFIFO_WriteData(AVFIFO_WriteData),
    .AVFIFO_Write(AVFIFO_Write),
    // Vertex Cache
    .Cache_AddressA(Cache_AddressA),
    .Cache_WriteEnA(Cache_WriteEnA),
    .Cache_ReadDataA(Cache_ReadDataA),
    .Cache_WriteDataA(Cache_WriteDataA),
    .Cache_AddressB(Cache_AddressB),
    .Cache_WriteEnB(Cache_WriteEnB),
    .Cache_ReadDataB(Cache_ReadDataB),
    .Cache_WriteDataB(Cache_WriteDataB)
);

VMU #(
    .PE_NUM(PE_NUM)
) uVMU(
    .clk(clk),
    .reset(reset),
    .InActive(VMU_InActive),
    .Active(Active),
    .Start(Start),
    .Finish(Finish),
    .Hit(VMU_Hit),
    .Probe(MPU_Probe),
    .UsingAXI(VMU_UsingAXI),
    // FIFO MPU to VMU 
    .AVFIFO_Empty(AVFIFO_Empty),
    .AVFIFO_ReadData(AVFIFO_ReadData),
	.AVFIFO_Read(AVFIFO_Read),
	.AVFIFO_ReadValid(AVFIFO_ReadValid),
	// AXI Read
    .StartRead(VMU_StartRead),
    .ReadAddress(VMU_ReadAddress),
    .ReadData(HBM_ReadData),
    .ReadBurst(VMU_ReadBurst),
    .ReadReady(VMU_ReadReady),
    .EndRead(VMU_EndRead),
    // AXI Write
    .StartWrite(VMU_StartWrite),
    .WriteAddress(VMU_WriteAddress),
    .WriteData(VMU_WriteData),
    .WriteBurst(VMU_WriteBurst),
    .WriteReady(VMU_WriteReady),
    .WriteResp(VMU_WriteResp),
    .EndWrite(VMU_EndWrite),
    // FIFO VMU to MGU
    .AVMFIFO_WriteData(AVMFIFO_WriteData),
    .AVMFIFO_Write(AVMFIFO_Write),
    .AVMFIFO_Full(AVMFIFO_Full),
    .AVMFIFO_Empty(AVMFIFO_Empty),
    // Block BRAM Signals
    .MaxSuperblockAddress(MaxSuperblockAddress),
    .Superblock_Address(Superblock_Address),
    .Superblock_WriteData(Superblock_WriteData),
    .Superblock_WriteEn(Superblock_WriteEn),
    .Superblock_ReadData(Superblock_ReadData)
);

MGU #(
    .DataWidth(EDGE_DATAWIDTH)
) uMGU(
    .clk(clk),
    .reset(reset),
    .InActive(MGU_InActive),
    // Fifo message output
    .MSGFIFO_WriteData(MSGFIFO_WriteData_o),  // FIFO output message
	.MSGFIFO_Write(MSGFIFO_Write_o), // Write FIFO
    .MSGFIFO_Full(MSGFIFO_Full_o), // FIFO empty
    // VMU FIFO Signals
	.AVMFIFO_ReadData(AVMFIFO_ReadData),  // FIFO Data VMU
	.AVMFIFO_Read(AVMFIFO_Read),  // Read FIFO
	.AVMFIFO_Empty(AVMFIFO_Empty), // FIFO empty
	.AVMFIFO_ReadValid(AVMFIFO_ReadValid),
    // AXI Read
    .StartRead(DDR_StartRead),
	.ReadAddress(DDR_ReadAddress),      // edge address
	.ReadBurst(DDR_ReadBurst),
	.ReadData(DDR_ReadData),      // edge data
	.EndRead(DDR_EndRead),     // Finished read
	// Edge Cache
	.History_Address(History_Address),
	.History_WriteEn(History_WriteEn),
	.History_ReadData(History_ReadData),
	.History_WriteData(History_WriteData)
);
    
    
endmodule
