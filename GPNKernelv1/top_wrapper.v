`timescale 1ns / 10ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UC Davis
// Engineer: Austin York
// 
// Create Date: 01/29/2024 01:11:01 PM
// Design Name: PE & AXI Network
// Module Name: top_wrapper
// Project Name: CFGraph
// Target Devices: Alveo U280
// Tool Versions: Vivado 2022.1
// Description: Connect PEs to other PEs and AXI Channels
// 
//////////////////////////////////////////////////////////////////////////////////


module top_wrapper#(
    parameter NUMBER_OF_PEs = 1,
    parameter MEMORY_OFFSET = 33'h000000001, // Portion above lowest division of 2
    parameter AXI_CHANNEL_PARTITION = 12, //Portion below lowest division of 2. 2^(x-4) = Vertices per channel, 15 = 2048, 14 = 1024, 13 = 512
    parameter ADDR_WIDTH = 33,
    parameter UPDATE_WIDTH = 31,
    parameter MESSAGE_WIDTH = 64,
    parameter VERTEX_DATAWIDTH = 256,
    parameter EDGE_DATAWIDTH = 512
)(
    input wire   clk,
    input wire   reset,
    input wire   start,
    input wire [63:0] FirstMessage,
    output wire  GraphDone,
    //===================================
    // Master AXI Engine Signals
    //===================================
    // Read Vertex
    output reg        HBM_00_StartRead,
    output reg  [7:0] HBM_00_ReadBurst,
    output reg [32:0] HBM_00_ReadAddress,
    input wire [VERTEX_DATAWIDTH-1:0] HBM_00_ReadData,
    input wire        HBM_00_ReadReady,
    input wire        HBM_00_EndRead,
    // Write Vertex
    output reg        HBM_00_StartWrite,
    output reg  [7:0] HBM_00_WriteBurst,
    output reg [32:0] HBM_00_WriteAddress,
    output reg [VERTEX_DATAWIDTH-1:0] HBM_00_WriteData,
    output reg        HBM_00_WriteReady,
    input wire        HBM_00_WriteResp,
    input wire        HBM_00_WriteLast,
    input wire        HBM_00_EndWrite,
    // Read Edge
    output reg        DDR_00_StartRead,
    output reg  [7:0] DDR_00_ReadBurst,
    output reg [32:0] DDR_00_ReadAddress,
    input wire [EDGE_DATAWIDTH-1:0] DDR_00_ReadData,
    input wire        DDR_00_ReadReady,
    input wire        DDR_00_EndRead
    );

wire [NUMBER_OF_PEs-1:0] regResetDone;
wire [NUMBER_OF_PEs-1:0] regGraphDone;
wire ResetDone;
reg ResetDone_r;
wire ResetDone_Pulse;
//===================================
//         PE AXI Signals
//===================================
wire [NUMBER_OF_PEs-1:0] MPU_UsingAXI;
wire [NUMBER_OF_PEs-1:0] MPU_StartRead;
wire [7:0] MPU_ReadBurst[NUMBER_OF_PEs-1:0];
wire [32:0] MPU_ReadAddress[NUMBER_OF_PEs-1:0];
reg  [255:0] MPU_ReadData[NUMBER_OF_PEs-1:0];
reg  [NUMBER_OF_PEs-1:0] MPU_EndRead;

wire [NUMBER_OF_PEs-1:0] MPU_StartWrite;
wire [7:0] MPU_WriteBurst[NUMBER_OF_PEs-1:0];
wire [31:0] MPU_WriteStrobe[NUMBER_OF_PEs-1:0];
wire [32:0] MPU_WriteAddress[NUMBER_OF_PEs-1:0];
wire [255:0] MPU_WriteData[NUMBER_OF_PEs-1:0];
wire [NUMBER_OF_PEs-1:0] MPU_WriteReady;
reg  [NUMBER_OF_PEs-1:0] MPU_WriteResp;
reg  [NUMBER_OF_PEs-1:0] MPU_WriteLast;
reg  [NUMBER_OF_PEs-1:0] MPU_EndWrite;

wire [NUMBER_OF_PEs-1:0] VMU_UsingAXI;
wire [NUMBER_OF_PEs-1:0] VMU_StartRead;
wire [7:0] VMU_ReadBurst[NUMBER_OF_PEs-1:0];
wire [32:0] VMU_ReadAddress[NUMBER_OF_PEs-1:0];
reg  [255:0] VMU_ReadData[NUMBER_OF_PEs-1:0];
reg  [NUMBER_OF_PEs-1:0] VMU_ReadReady;
reg  [NUMBER_OF_PEs-1:0] VMU_EndRead;

wire [NUMBER_OF_PEs-1:0] VMU_StartWrite;
wire [7:0] VMU_WriteBurst[NUMBER_OF_PEs-1:0];
wire [32:0] VMU_WriteAddress[NUMBER_OF_PEs-1:0];
wire [255:0] VMU_WriteData[NUMBER_OF_PEs-1:0];
wire [NUMBER_OF_PEs-1:0] VMU_WriteReady;
reg  [NUMBER_OF_PEs-1:0] VMU_WriteResp;
reg  [NUMBER_OF_PEs-1:0] VMU_WriteLast;
reg  [NUMBER_OF_PEs-1:0] VMU_EndWrite;

wire [NUMBER_OF_PEs-1:0] MGU_UsingAXI;
wire [NUMBER_OF_PEs-1:0] MGU_StartRead;
wire [7:0] MGU_ReadBurst[NUMBER_OF_PEs-1:0];
wire [32:0] MGU_ReadAddress[NUMBER_OF_PEs-1:0];
reg  [511:0] MGU_ReadData[NUMBER_OF_PEs-1:0];
reg  [NUMBER_OF_PEs-1:0] MGU_EndRead;

//===================================
// Message FIFO In Signals
//===================================
wire [NUMBER_OF_PEs-1:0] MSGFIFO_Full_i;
reg  [NUMBER_OF_PEs-1:0] MSGFIFO_Write_i;
reg  [63:0] MSGFIFO_WriteData_i[NUMBER_OF_PEs-1:0];

// Message FIFO Out Signals 
wire [NUMBER_OF_PEs-1:0] MSGFIFO_Empty_o;
reg  [NUMBER_OF_PEs-1:0] MSGFIFO_Read_o;
wire [63:0] MSGFIFO_ReadData_o[NUMBER_OF_PEs-1:0];
wire [NUMBER_OF_PEs-1:0] MSGFIFO_Read_Valid_o;

genvar i;
integer k;
integer j;
//reg [16:0] RRCounter[NUMBER_OF_PEs-1:0];
//reg [3:0]  PE[NUMBER_OF_PEs-1:0];
//reg [15:0] Grant[NUMBER_OF_PEs-1:0];
//reg [15:0] Request[NUMBER_OF_PEs-1:0];
reg [63:0] Message[NUMBER_OF_PEs-1:0];
reg [NUMBER_OF_PEs-1:0] MSGFIFO_Write;
reg [3:0]  state[NUMBER_OF_PEs-1:0];
localparam [3:0] 
    IDLE    = 4'b0001,
    READ    = 4'b0010,
    REQUEST = 4'b0100,
    WRITE   = 4'b1000;


// PE FIFO Input Mux One Hot (Grant PE[i] -> PE[k])
always @(*) begin
    if(reset) begin
        MSGFIFO_Write_i[0] = 1'b0;
        MSGFIFO_WriteData_i[0] = 64'd0;
    end
    else if(ResetDone_Pulse) begin
        MSGFIFO_Write_i[0] = 1'b1;
        MSGFIFO_WriteData_i[0] = FirstMessage;
    end
    else begin
            MSGFIFO_Write_i[0] = MSGFIFO_Write[0];
            MSGFIFO_WriteData_i[0] = Message[0];
    end
end

// PE FIFO Output Reader, Requester, Writer
always @(posedge clk) begin
    if(reset)
        MSGFIFO_Read_o[0] <= 1'b0;
    else if(~MSGFIFO_Empty_o[0] && state[0]==IDLE && ~MSGFIFO_Full_i[0])
        MSGFIFO_Read_o[0] <= 1'b1;
    else
        MSGFIFO_Read_o[0] <= 1'b0;

    if(reset)
        MSGFIFO_Write[0] = 1'b0;
    else if(state[0]==REQUEST && ~MSGFIFO_Full_i[0])
        MSGFIFO_Write[0] = 1'b1;
    else
        MSGFIFO_Write[0] = 1'b0;
    
    if(reset)
        Message[0] <= 64'd0;
    else if(MSGFIFO_Read_Valid_o[0] && state[0]==READ)
        Message[0] <= MSGFIFO_ReadData_o[0];
    else
        Message[0] <= Message[0];
end

// FIFO Arbitor State 
always @(posedge clk) begin
if(reset)
    state[0] <= IDLE;
else
    case(state[0])
    IDLE: if(~MSGFIFO_Empty_o[0] && ~MSGFIFO_Full_i[0]) state[0] <= READ;
    READ: if(MSGFIFO_Read_Valid_o[0]) state[0] <= REQUEST;
    REQUEST: if(~MSGFIFO_Full_i[0]) state[0] <= IDLE;
    default: state[0] <= IDLE;
    endcase
end

always @(posedge clk) begin
    ResetDone_r <= (ResetDone & start);
end
assign ResetDone_Pulse = (~ResetDone_r & ResetDone & start);
assign ResetDone = (regResetDone[NUMBER_OF_PEs-1:0] == {NUMBER_OF_PEs{1'b1}}); 
assign GraphDone = (regGraphDone[NUMBER_OF_PEs-1:0] == {NUMBER_OF_PEs{1'b1}}) && ResetDone;

//===================================
// MUX Vertex Engine
//===================================
generate for(i=0;i<NUMBER_OF_PEs;i=i+1) begin
always @(*) begin
if(reset || ~(VMU_UsingAXI[i] || MPU_UsingAXI[i])) begin // Reset or no accesses needed reset to default
	// set all registers to 0 (default)
	HBM_00_StartRead     = 1'b0;
	HBM_00_ReadBurst     = 8'd0;
	HBM_00_ReadAddress   = 33'd0;
	HBM_00_StartWrite    = 1'b0;
	HBM_00_WriteBurst    = 8'd0;
	HBM_00_WriteAddress  = 33'd0;
	HBM_00_WriteData     = 256'd0;
    HBM_00_WriteReady    = 1'b0;

	VMU_ReadData[i]   = 256'd0;
    VMU_ReadReady[i]  = 1'b0;
	VMU_EndRead[i]    = 1'b0;
	VMU_WriteResp[i]  = 1'b0;
    VMU_WriteLast[i]  = 1'b0;
	VMU_EndWrite[i]   = 1'b0;

	MPU_ReadData[i]   = 256'd0;
	MPU_EndRead[i]    = 1'b0;
    MPU_WriteResp[i]  = 1'b0;
    MPU_WriteLast[i]  = 1'b0;
	MPU_EndWrite[i]   = 1'b0;
end
else if(VMU_UsingAXI[i]) begin // VMU trying to access axi engine (MPU not using)
	// handover axi engine inputs/outputs to VMU
	HBM_00_StartRead     = VMU_StartRead[i];
	HBM_00_ReadBurst     = VMU_ReadBurst[i];
	HBM_00_ReadAddress   = VMU_ReadAddress[i];
	VMU_ReadData[i]      = HBM_00_ReadData;
	VMU_ReadReady[i]     = HBM_00_ReadReady;
	VMU_EndRead[i]       = HBM_00_EndRead;
	HBM_00_StartWrite    = VMU_StartWrite[i];
	HBM_00_WriteBurst    = VMU_WriteBurst[i];
	HBM_00_WriteAddress  = VMU_WriteAddress[i];
	HBM_00_WriteData     = VMU_WriteData[i];
    HBM_00_WriteReady    = VMU_WriteReady[i];
    VMU_WriteResp[i]     = HBM_00_WriteResp;
    VMU_WriteLast[i]     = HBM_00_WriteLast;
    VMU_EndWrite[i]      = HBM_00_EndWrite;

	MPU_ReadData[i]   = 256'd0;
	MPU_EndRead[i]    = 1'b0;
    MPU_WriteResp[i]  = 1'b0;
    MPU_WriteLast[i]  = 1'b0;
	MPU_EndWrite[i]   = 1'b0;
end
else begin // MPU trying to access axi engine (VMU not using)
	// handover axi engine inputs/outputs to MPU
	HBM_00_StartRead    = MPU_StartRead[i];
	HBM_00_ReadBurst    = MPU_ReadBurst[i];
	HBM_00_ReadAddress  = MPU_ReadAddress[i];
	MPU_ReadData[i]     = HBM_00_ReadData;
	MPU_EndRead[i]      = HBM_00_EndRead;
	HBM_00_StartWrite   = MPU_StartWrite[i];
	HBM_00_WriteBurst   = MPU_WriteBurst[i];
	HBM_00_WriteAddress = MPU_WriteAddress[i];
	HBM_00_WriteData    = MPU_WriteData[i];
    MPU_WriteResp[i]    = HBM_00_WriteResp;
    MPU_WriteLast[i]    = HBM_00_WriteLast;
	MPU_EndWrite[i]     = HBM_00_EndWrite;
    HBM_00_WriteReady   = MPU_WriteReady[i];
	
	VMU_ReadData[i]  = 256'd0;
	VMU_ReadReady[i] = 1'b0;
	VMU_EndRead[i]   = 1'b0;
	VMU_WriteResp[i] = 1'b0;
    VMU_WriteLast[i] = 1'b0;
	VMU_EndWrite[i]  = 1'b0;
end
end
end endgenerate

//===================================
// MUX Edge Engine
//===================================
generate for(i=0;i<NUMBER_OF_PEs;i=i+1) begin
always @(*) begin
if(reset || ~(MGU_UsingAXI[i])) begin // Reset or no accesses needed reset to default
	// set all registers to 0 (default)
	DDR_00_StartRead    = 1'b0;
	DDR_00_ReadBurst    = 8'd0;
	DDR_00_ReadAddress  = 33'd0;

	MGU_ReadData[i]  = 512'd0;
	MGU_EndRead[i]   = 1'b0;
end
else begin
	// handover axi engine inputs/outputs to MGU
	DDR_00_StartRead    = MGU_StartRead[i];
	DDR_00_ReadBurst    = MGU_ReadBurst[i];
	DDR_00_ReadAddress  = MGU_ReadAddress[i];
	MGU_ReadData[i]     = DDR_00_ReadData;
	MGU_EndRead[i]      = DDR_00_EndRead;
end
end
end endgenerate

generate for(i=0;i<NUMBER_OF_PEs;i=i+1) begin
top #(
    .MEMORY_OFFSET(0)
) utop(
    .clk(clk),
    .reset(reset),
    
    .start(start),
    .ResetDone(regResetDone[i]),
    .regGraphDone(regGraphDone[i]),
    
    //===================================
    //      Message FIFO Signals
    //===================================
    // Message FIFO In Signals
    .MSGFIFO_Full_i(MSGFIFO_Full_i[i]),
    .MSGFIFO_Write_i(MSGFIFO_Write_i[i]),
    .MSGFIFO_WriteData_i(MSGFIFO_WriteData_i[i]),
    
    // Message FIFO Out Signals 
    .MSGFIFO_Empty_o(MSGFIFO_Empty_o[i]),
    .MSGFIFO_Read_o(MSGFIFO_Read_o[i]),
    .MSGFIFO_ReadData_o(MSGFIFO_ReadData_o[i]),
    .MSGFIFO_ReadValid_o(MSGFIFO_Read_Valid_o[i]),
    
    //===================================
    //        AXI Engine Signals
    //===================================
    // MPU AXI Signals
    .MPU_UsingAXI(MPU_UsingAXI[i]), // (EQUAL PRIORITY TO VMU, FIRST SERVED FIRST TO FINISH)
    // Read
    .MPU_StartRead(MPU_StartRead[i]),
    .MPU_ReadAddress(MPU_ReadAddress[i]),
    .MPU_ReadBurst(MPU_ReadBurst[i]),
    .MPU_ReadData(MPU_ReadData[i]),
    .MPU_EndRead(MPU_EndRead[i]),
    // Write
    .MPU_StartWrite(MPU_StartWrite[i]),
    .MPU_WriteAddress(MPU_WriteAddress[i]),
    .MPU_WriteBurst(MPU_WriteBurst[i]),
    .MPU_WriteStrobe(MPU_WriteStrobe[i]),
    .MPU_WriteData(MPU_WriteData[i]),
    .MPU_WriteReady(MPU_WriteReady[i]),
    .MPU_WriteResp(MPU_WriteResp[i]),
    .MPU_WriteLast(MPU_WriteLast[i]),
    .MPU_EndWrite(MPU_EndWrite[i]),
    
    // VMU AXI Signals
    .VMU_UsingAXI(VMU_UsingAXI[i]), // (EQUAL PRIORITY TO MPU, FIRST SERVED FIRST TO FINISH)
    // Read
    .VMU_StartRead(VMU_StartRead[i]),
    .VMU_ReadAddress(VMU_ReadAddress[i]),
    .VMU_ReadBurst(VMU_ReadBurst[i]),
    .VMU_ReadData(VMU_ReadData[i]),
    .VMU_ReadReady(VMU_ReadReady[i]),
    .VMU_EndRead(VMU_EndRead[i]),
    // Write
    .VMU_StartWrite(VMU_StartWrite[i]),
    .VMU_WriteAddress(VMU_WriteAddress[i]),
    .VMU_WriteBurst(VMU_WriteBurst[i]),
    .VMU_WriteData(VMU_WriteData[i]),
    .VMU_WriteReady(VMU_WriteReady[i]),
    .VMU_WriteResp(VMU_WriteResp[i]),
    .VMU_WriteLast(VMU_WriteLast[i]),
    .VMU_EndWrite(VMU_EndWrite[i]),
    
    // MGU AXI Signals
    .MGU_UsingAXI(MGU_UsingAXI[i]),
    // Read
    .MGU_StartRead(MGU_StartRead[i]),
    .MGU_ReadAddress(MGU_ReadAddress[i]),
    .MGU_ReadBurst(MGU_ReadBurst[i]),    
    .MGU_ReadData(MGU_ReadData[i]),
    .MGU_EndRead(MGU_EndRead[i])
);
end endgenerate

endmodule
