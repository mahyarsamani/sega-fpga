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

module top #(
    parameter MEMORY_OFFSET = 33'h000000000,
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
    output reg   ResetDone,
    output reg   regGraphDone,
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
    
    // MPU AXI Signals
    output wire   MPU_UsingAXI, // (EQUAL PRIORITY TO VMU, FIRST SERVED FIRST TO FINISH)
    // Read
    output wire   MPU_StartRead,
    output wire [32:0] MPU_ReadAddress,
    output wire [7:0] MPU_ReadBurst,
    input  wire [VERTEX_DATAWIDTH-1:0] MPU_ReadData,
    input  wire   MPU_EndRead,
    // Write
    output wire   MPU_StartWrite,
    output wire [32:0] MPU_WriteAddress,
    output wire [7:0] MPU_WriteBurst,
    output wire [(VERTEX_DATAWIDTH/8)-1:0] MPU_WriteStrobe,
    output wire [VERTEX_DATAWIDTH-1:0] MPU_WriteData,
    output wire   MPU_WriteReady,
    input  wire   MPU_WriteResp,
    input  wire   MPU_WriteLast,
    input  wire   MPU_EndWrite,
    
    // VMU AXI Signals
    output wire   VMU_UsingAXI, // (EQUAL PRIORITY TO MPU, FIRST SERVED FIRST TO FINISH)
    // Read
    output wire   VMU_StartRead,
    output wire[32:0] VMU_ReadAddress,
    input  wire [VERTEX_DATAWIDTH-1:0] VMU_ReadData,
    input  wire   VMU_ReadReady,
    input  wire   VMU_EndRead,
    output wire [7:0] VMU_ReadBurst,
    // Write
    output wire   VMU_StartWrite,
    output wire [32:0] VMU_WriteAddress,
    input  wire [VERTEX_DATAWIDTH-1:0] VMU_WriteData,
    output wire   VMU_WriteReady,
    input  wire   VMU_WriteResp,
    input  wire   VMU_WriteLast,
    input  wire   VMU_EndWrite,
    output wire [7:0] VMU_WriteBurst,
    
    // MGU AXI Signals
    output wire   MGU_UsingAXI,
    // Read
    output wire   MGU_StartRead, 
    output wire [32:0] MGU_ReadAddress, 
    output wire [7:0] MGU_ReadBurst,
    input  wire [EDGE_DATAWIDTH-1:0] MGU_ReadData,
    input  wire   MGU_EndRead
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
wire [13:0] Superblock_Address;
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
            ResetDone <= 1'b0;
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
            ResetDone <= 1'b0;
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
        ResetDone <= 1'b1;
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
    .SuperblockTracker_addr(Superblock_Address | regSuperblock_Address),
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
    .ReadData(MPU_ReadData),
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
    .WriteStrobe(MPU_WriteStrobe),
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

VMU uVMU(
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
    .ReadData(VMU_ReadData),
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
    .UsingAXI(MGU_UsingAXI),
    .StartRead(MGU_StartRead),
	.ReadAddress(MGU_ReadAddress),      // edge address
	.ReadBurst(MGU_ReadBurst),
	.ReadData(MGU_ReadData),      // edge data
	.EndRead(MGU_EndRead),     // Finished read
	// Edge Cache
	.History_Address(History_Address),
	.History_WriteEn(History_WriteEn),
	.History_ReadData(History_ReadData),
	.History_WriteData(History_WriteData)
);
    
    
endmodule
