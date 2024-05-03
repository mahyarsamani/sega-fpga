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

module GPN #(
    parameter NUMBER_OF_PEs = 16,
    parameter AXI_CHANNEL_PARTITION = 14, // 1024 Vertex Min. Portion below lowest division of 2. 2^(x-4) = Vertice resolution, 15 = 2048, 14 = 1024, 13 = 512
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
    
    output wire  ResetDone,
    output wire  GraphDone,
    //===================================
    // Arguments 
    //===================================
    input wire [17:0] MemoryOffset0, // MemoryOffset0 = 0 (always)
    input wire [17:0] MemoryOffset1, // MemoryOffset1 = # Vertices Per Channel / 4096
    input wire [17:0] MemoryOffset2, // MemoryOffset2 = 2(8192)
    input wire [17:0] MemoryOffset3,
    input wire [17:0] MemoryOffset4,
    input wire [17:0] MemoryOffset5,
    input wire [17:0] MemoryOffset6,
    input wire [17:0] MemoryOffset7,
    input wire [17:0] MemoryOffset8,
    input wire [17:0] MemoryOffset9,
    input wire [17:0] MemoryOffset10,
    input wire [17:0] MemoryOffset11,
    input wire [17:0] MemoryOffset12,
    input wire [17:0] MemoryOffset13,
    input wire [17:0] MemoryOffset14,
    input wire [17:0] MemoryOffset15,
    input wire [17:0] MemoryOffset16,
    //===================================
    // Master AXI Engine Signals
    //===================================
    // PE 0
    // Read Vertex
    output wire        HBM_00_StartRead,
    output wire  [7:0] HBM_00_ReadBurst,
    output wire [32:0] HBM_00_ReadAddress,
    input  wire [VERTEX_DATAWIDTH-1:0] HBM_00_ReadData,
    input  wire        HBM_00_ReadReady,
    input  wire        HBM_00_EndRead,
    // Write Vertex
    output wire        HBM_00_StartWrite,
    output wire  [7:0] HBM_00_WriteBurst,
    output wire [32:0] HBM_00_WriteAddress,
    output wire [VERTEX_DATAWIDTH-1:0] HBM_00_WriteData,
    output wire        HBM_00_WriteReady,
    input  wire        HBM_00_WriteResp,
    input  wire        HBM_00_WriteLast,
    input  wire        HBM_00_EndWrite,
    // Read Edge
    output wire        DDR_00_StartRead,
    output wire  [7:0] DDR_00_ReadBurst,
    output wire [32:0] DDR_00_ReadAddress,
    input  wire [EDGE_DATAWIDTH-1:0] DDR_00_ReadData,
    input  wire        DDR_00_ReadReady,
    input  wire        DDR_00_EndRead,
        // PE 1
    output wire        HBM_01_StartRead,
    output wire  [7:0] HBM_01_ReadBurst,
    output wire [32:0] HBM_01_ReadAddress,
    input  wire [VERTEX_DATAWIDTH-1:0] HBM_01_ReadData,
    input  wire        HBM_01_ReadReady,
    input  wire        HBM_01_EndRead,
    // Write Vertex
    output wire        HBM_01_StartWrite,
    output wire  [7:0] HBM_01_WriteBurst,
    output wire [32:0] HBM_01_WriteAddress,
    output wire [VERTEX_DATAWIDTH-1:0] HBM_01_WriteData,
    output wire        HBM_01_WriteReady,
    input  wire        HBM_01_WriteResp,
    input  wire        HBM_01_WriteLast,
    input  wire        HBM_01_EndWrite,
    // Read Edge
    output wire        DDR_01_StartRead,
    output wire  [7:0] DDR_01_ReadBurst,
    output wire [32:0] DDR_01_ReadAddress,
    input  wire [EDGE_DATAWIDTH-1:0] DDR_01_ReadData,
    input  wire        DDR_01_ReadReady,
    input  wire        DDR_01_EndRead,
    // PE 2
    output wire        HBM_02_StartRead,
    output wire  [7:0] HBM_02_ReadBurst,
    output wire [32:0] HBM_02_ReadAddress,
    input  wire [VERTEX_DATAWIDTH-1:0] HBM_02_ReadData,
    input  wire        HBM_02_ReadReady,
    input  wire        HBM_02_EndRead,
    // Write Vertex
    output wire        HBM_02_StartWrite,
    output wire  [7:0] HBM_02_WriteBurst,
    output wire [32:0] HBM_02_WriteAddress,
    output wire [VERTEX_DATAWIDTH-1:0] HBM_02_WriteData,
    output wire        HBM_02_WriteReady,
    input  wire        HBM_02_WriteResp,
    input  wire        HBM_02_WriteLast,
    input  wire        HBM_02_EndWrite,
    // Read Edge
    output wire        DDR_02_StartRead,
    output wire  [7:0] DDR_02_ReadBurst,
    output wire [32:0] DDR_02_ReadAddress,
    input  wire [EDGE_DATAWIDTH-1:0] DDR_02_ReadData,
    input  wire        DDR_02_ReadReady,
    input  wire        DDR_02_EndRead,
    // PE 3
    output wire        HBM_03_StartRead,
    output wire  [7:0] HBM_03_ReadBurst,
    output wire [32:0] HBM_03_ReadAddress,
    input  wire [VERTEX_DATAWIDTH-1:0] HBM_03_ReadData,
    input  wire        HBM_03_ReadReady,
    input  wire        HBM_03_EndRead,
    // Write Vertex
    output wire        HBM_03_StartWrite,
    output wire  [7:0] HBM_03_WriteBurst,
    output wire [32:0] HBM_03_WriteAddress,
    output wire [VERTEX_DATAWIDTH-1:0] HBM_03_WriteData,
    output wire        HBM_03_WriteReady,
    input  wire        HBM_03_WriteResp,
    input  wire        HBM_03_WriteLast,
    input  wire        HBM_03_EndWrite,
    // Read Edge
    output wire        DDR_03_StartRead,
    output wire  [7:0] DDR_03_ReadBurst,
    output wire [32:0] DDR_03_ReadAddress,
    input  wire [EDGE_DATAWIDTH-1:0] DDR_03_ReadData,
    input  wire        DDR_03_ReadReady,
    input  wire        DDR_03_EndRead,
    // PE 4
    output wire        HBM_04_StartRead,
    output wire  [7:0] HBM_04_ReadBurst,
    output wire [32:0] HBM_04_ReadAddress,
    input  wire [VERTEX_DATAWIDTH-1:0] HBM_04_ReadData,
    input  wire        HBM_04_ReadReady,
    input  wire        HBM_04_EndRead,
    // Write Vertex
    output wire        HBM_04_StartWrite,
    output wire  [7:0] HBM_04_WriteBurst,
    output wire [32:0] HBM_04_WriteAddress,
    output wire [VERTEX_DATAWIDTH-1:0] HBM_04_WriteData,
    output wire        HBM_04_WriteReady,
    input  wire        HBM_04_WriteResp,
    input  wire        HBM_04_WriteLast,
    input  wire        HBM_04_EndWrite,
    // Read Edge
    output wire        DDR_04_StartRead,
    output wire  [7:0] DDR_04_ReadBurst,
    output wire [32:0] DDR_04_ReadAddress,
    input  wire [EDGE_DATAWIDTH-1:0] DDR_04_ReadData,
    input  wire        DDR_04_ReadReady,
    input  wire        DDR_04_EndRead,
    // PE 5
    output wire        HBM_05_StartRead,
    output wire  [7:0] HBM_05_ReadBurst,
    output wire [32:0] HBM_05_ReadAddress,
    input  wire [VERTEX_DATAWIDTH-1:0] HBM_05_ReadData,
    input  wire        HBM_05_ReadReady,
    input  wire        HBM_05_EndRead,
    // Write Vertex
    output wire        HBM_05_StartWrite,
    output wire  [7:0] HBM_05_WriteBurst,
    output wire [32:0] HBM_05_WriteAddress,
    output wire [VERTEX_DATAWIDTH-1:0] HBM_05_WriteData,
    output wire        HBM_05_WriteReady,
    input  wire        HBM_05_WriteResp,
    input  wire        HBM_05_WriteLast,
    input  wire        HBM_05_EndWrite,
    // Read Edge
    output wire        DDR_05_StartRead,
    output wire  [7:0] DDR_05_ReadBurst,
    output wire [32:0] DDR_05_ReadAddress,
    input  wire [EDGE_DATAWIDTH-1:0] DDR_05_ReadData,
    input  wire        DDR_05_ReadReady,
    input  wire        DDR_05_EndRead,
    // PE 6
    output wire        HBM_06_StartRead,
    output wire  [7:0] HBM_06_ReadBurst,
    output wire [32:0] HBM_06_ReadAddress,
    input  wire [VERTEX_DATAWIDTH-1:0] HBM_06_ReadData,
    input  wire        HBM_06_ReadReady,
    input  wire        HBM_06_EndRead,
    // Write Vertex
    output wire        HBM_06_StartWrite,
    output wire  [7:0] HBM_06_WriteBurst,
    output wire [32:0] HBM_06_WriteAddress,
    output wire [VERTEX_DATAWIDTH-1:0] HBM_06_WriteData,
    output wire        HBM_06_WriteReady,
    input  wire        HBM_06_WriteResp,
    input  wire        HBM_06_WriteLast,
    input  wire        HBM_06_EndWrite,
    // Read Edge
    output wire        DDR_06_StartRead,
    output wire  [7:0] DDR_06_ReadBurst,
    output wire [32:0] DDR_06_ReadAddress,
    input  wire [EDGE_DATAWIDTH-1:0] DDR_06_ReadData,
    input  wire        DDR_06_ReadReady,
    input  wire        DDR_06_EndRead,
    // PE 7
    output wire        HBM_07_StartRead,
    output wire  [7:0] HBM_07_ReadBurst,
    output wire [32:0] HBM_07_ReadAddress,
    input  wire [VERTEX_DATAWIDTH-1:0] HBM_07_ReadData,
    input  wire        HBM_07_ReadReady,
    input  wire        HBM_07_EndRead,
    // Write Vertex
    output wire        HBM_07_StartWrite,
    output wire  [7:0] HBM_07_WriteBurst,
    output wire [32:0] HBM_07_WriteAddress,
    output wire [VERTEX_DATAWIDTH-1:0] HBM_07_WriteData,
    output wire        HBM_07_WriteReady,
    input  wire        HBM_07_WriteResp,
    input  wire        HBM_07_WriteLast,
    input  wire        HBM_07_EndWrite,
    // Read Edge
    output wire        DDR_07_StartRead,
    output wire  [7:0] DDR_07_ReadBurst,
    output wire [32:0] DDR_07_ReadAddress,
    input  wire [EDGE_DATAWIDTH-1:0] DDR_07_ReadData,
    input  wire        DDR_07_ReadReady,
    input  wire        DDR_07_EndRead,
    // PE 8
    output wire        HBM_08_StartRead,
    output wire  [7:0] HBM_08_ReadBurst,
    output wire [32:0] HBM_08_ReadAddress,
    input  wire [VERTEX_DATAWIDTH-1:0] HBM_08_ReadData,
    input  wire        HBM_08_ReadReady,
    input  wire        HBM_08_EndRead,
    // Write Vertex
    output wire        HBM_08_StartWrite,
    output wire  [7:0] HBM_08_WriteBurst,
    output wire [32:0] HBM_08_WriteAddress,
    output wire [VERTEX_DATAWIDTH-1:0] HBM_08_WriteData,
    output wire        HBM_08_WriteReady,
    input  wire        HBM_08_WriteResp,
    input  wire        HBM_08_WriteLast,
    input  wire        HBM_08_EndWrite,
    // Read Edge
    output wire        DDR_08_StartRead,
    output wire  [7:0] DDR_08_ReadBurst,
    output wire [32:0] DDR_08_ReadAddress,
    input  wire [EDGE_DATAWIDTH-1:0] DDR_08_ReadData,
    input  wire        DDR_08_ReadReady,
    input  wire        DDR_08_EndRead,
    // PE 9
    output wire        HBM_09_StartRead,
    output wire  [7:0] HBM_09_ReadBurst,
    output wire [32:0] HBM_09_ReadAddress,
    input  wire [VERTEX_DATAWIDTH-1:0] HBM_09_ReadData,
    input  wire        HBM_09_ReadReady,
    input  wire        HBM_09_EndRead,
    // Write Vertex
    output wire        HBM_09_StartWrite,
    output wire  [7:0] HBM_09_WriteBurst,
    output wire [32:0] HBM_09_WriteAddress,
    output wire [VERTEX_DATAWIDTH-1:0] HBM_09_WriteData,
    output wire        HBM_09_WriteReady,
    input  wire        HBM_09_WriteResp,
    input  wire        HBM_09_WriteLast,
    input  wire        HBM_09_EndWrite,
    // Read Edge
    output wire        DDR_09_StartRead,
    output wire  [7:0] DDR_09_ReadBurst,
    output wire [32:0] DDR_09_ReadAddress,
    input  wire [EDGE_DATAWIDTH-1:0] DDR_09_ReadData,
    input  wire        DDR_09_ReadReady,
    input  wire        DDR_09_EndRead,
    // PE 10
    output wire        HBM_10_StartRead,
    output wire  [7:0] HBM_10_ReadBurst,
    output wire [32:0] HBM_10_ReadAddress,
    input  wire [VERTEX_DATAWIDTH-1:0] HBM_10_ReadData,
    input  wire        HBM_10_ReadReady,
    input  wire        HBM_10_EndRead,
    // Write Vertex
    output wire        HBM_10_StartWrite,
    output wire  [7:0] HBM_10_WriteBurst,
    output wire [32:0] HBM_10_WriteAddress,
    output wire [VERTEX_DATAWIDTH-1:0] HBM_10_WriteData,
    output wire        HBM_10_WriteReady,
    input  wire        HBM_10_WriteResp,
    input  wire        HBM_10_WriteLast,
    input  wire        HBM_10_EndWrite,
    // Read Edge
    output wire        DDR_10_StartRead,
    output wire  [7:0] DDR_10_ReadBurst,
    output wire [32:0] DDR_10_ReadAddress,
    input  wire [EDGE_DATAWIDTH-1:0] DDR_10_ReadData,
    input  wire        DDR_10_ReadReady,
    input  wire        DDR_10_EndRead,
    // PE 11
    output wire        HBM_11_StartRead,
    output wire  [7:0] HBM_11_ReadBurst,
    output wire [32:0] HBM_11_ReadAddress,
    input  wire [VERTEX_DATAWIDTH-1:0] HBM_11_ReadData,
    input  wire        HBM_11_ReadReady,
    input  wire        HBM_11_EndRead,
    // Write Vertex
    output wire        HBM_11_StartWrite,
    output wire  [7:0] HBM_11_WriteBurst,
    output wire [32:0] HBM_11_WriteAddress,
    output wire [VERTEX_DATAWIDTH-1:0] HBM_11_WriteData,
    output wire        HBM_11_WriteReady,
    input  wire        HBM_11_WriteResp,
    input  wire        HBM_11_WriteLast,
    input  wire        HBM_11_EndWrite,
    // Read Edge
    output wire        DDR_11_StartRead,
    output wire  [7:0] DDR_11_ReadBurst,
    output wire [32:0] DDR_11_ReadAddress,
    input  wire [EDGE_DATAWIDTH-1:0] DDR_11_ReadData,
    input  wire        DDR_11_ReadReady,
    input  wire        DDR_11_EndRead,
    // PE 12
    output wire        HBM_12_StartRead,
    output wire  [7:0] HBM_12_ReadBurst,
    output wire [32:0] HBM_12_ReadAddress,
    input  wire [VERTEX_DATAWIDTH-1:0] HBM_12_ReadData,
    input  wire        HBM_12_ReadReady,
    input  wire        HBM_12_EndRead,
    // Write Vertex
    output wire        HBM_12_StartWrite,
    output wire  [7:0] HBM_12_WriteBurst,
    output wire [32:0] HBM_12_WriteAddress,
    output wire [VERTEX_DATAWIDTH-1:0] HBM_12_WriteData,
    output wire        HBM_12_WriteReady,
    input  wire        HBM_12_WriteResp,
    input  wire        HBM_12_WriteLast,
    input  wire        HBM_12_EndWrite,
    // Read Edge
    output wire        DDR_12_StartRead,
    output wire  [7:0] DDR_12_ReadBurst,
    output wire [32:0] DDR_12_ReadAddress,
    input  wire [EDGE_DATAWIDTH-1:0] DDR_12_ReadData,
    input  wire        DDR_12_ReadReady,
    input  wire        DDR_12_EndRead,
    // PE 13
    output wire        HBM_13_StartRead,
    output wire  [7:0] HBM_13_ReadBurst,
    output wire [32:0] HBM_13_ReadAddress,
    input  wire [VERTEX_DATAWIDTH-1:0] HBM_13_ReadData,
    input  wire        HBM_13_ReadReady,
    input  wire        HBM_13_EndRead,
    // Write Vertex
    output wire        HBM_13_StartWrite,
    output wire  [7:0] HBM_13_WriteBurst,
    output wire [32:0] HBM_13_WriteAddress,
    output wire [VERTEX_DATAWIDTH-1:0] HBM_13_WriteData,
    output wire        HBM_13_WriteReady,
    input  wire        HBM_13_WriteResp,
    input  wire        HBM_13_WriteLast,
    input  wire        HBM_13_EndWrite,
    // Read Edge
    output wire        DDR_13_StartRead,
    output wire  [7:0] DDR_13_ReadBurst,
    output wire [32:0] DDR_13_ReadAddress,
    input  wire [EDGE_DATAWIDTH-1:0] DDR_13_ReadData,
    input  wire        DDR_13_ReadReady,
    input  wire        DDR_13_EndRead,
    // PE 14
    output wire        HBM_14_StartRead,
    output wire  [7:0] HBM_14_ReadBurst,
    output wire [32:0] HBM_14_ReadAddress,
    input  wire [VERTEX_DATAWIDTH-1:0] HBM_14_ReadData,
    input  wire        HBM_14_ReadReady,
    input  wire        HBM_14_EndRead,
    // Write Vertex
    output wire        HBM_14_StartWrite,
    output wire  [7:0] HBM_14_WriteBurst,
    output wire [32:0] HBM_14_WriteAddress,
    output wire [VERTEX_DATAWIDTH-1:0] HBM_14_WriteData,
    output wire        HBM_14_WriteReady,
    input  wire        HBM_14_WriteResp,
    input  wire        HBM_14_WriteLast,
    input  wire        HBM_14_EndWrite,
    // Read Edge
    output wire        DDR_14_StartRead,
    output wire  [7:0] DDR_14_ReadBurst,
    output wire [32:0] DDR_14_ReadAddress,
    input  wire [EDGE_DATAWIDTH-1:0] DDR_14_ReadData,
    input  wire        DDR_14_ReadReady,
    input  wire        DDR_14_EndRead,
    // PE 15
    output wire        HBM_15_StartRead,
    output wire  [7:0] HBM_15_ReadBurst,
    output wire [32:0] HBM_15_ReadAddress,
    input  wire [VERTEX_DATAWIDTH-1:0] HBM_15_ReadData,
    input  wire        HBM_15_ReadReady,
    input  wire        HBM_15_EndRead,
    // Write Vertex
    output wire        HBM_15_StartWrite,
    output wire  [7:0] HBM_15_WriteBurst,
    output wire [32:0] HBM_15_WriteAddress,
    output wire [VERTEX_DATAWIDTH-1:0] HBM_15_WriteData,
    output wire        HBM_15_WriteReady,
    input  wire        HBM_15_WriteResp,
    input  wire        HBM_15_WriteLast,
    input  wire        HBM_15_EndWrite,
    // Read Edge
    output wire        DDR_15_StartRead,
    output wire  [7:0] DDR_15_ReadBurst,
    output wire [32:0] DDR_15_ReadAddress,
    input  wire [EDGE_DATAWIDTH-1:0] DDR_15_ReadData,
    input  wire        DDR_15_ReadReady,
    input  wire        DDR_15_EndRead
    );

wire [NUMBER_OF_PEs-1:0] regResetDone;
wire [NUMBER_OF_PEs-1:0] regGraphDone;
reg ResetDone_r;
wire Start_Pulse;
wire [17:0] MemoryOffset[NUMBER_OF_PEs:0];
wire [14:0] MaxSuperblockAddress[NUMBER_OF_PEs-1:0];
reg  [3:0]  PE_FirstMessage;

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
reg [3:0]  PE[NUMBER_OF_PEs-1:0];
reg [15:0] Grant[NUMBER_OF_PEs-1:0];
reg [15:0] Request[NUMBER_OF_PEs-1:0];
reg [63:0] Message[NUMBER_OF_PEs-1:0];
reg        Message_Write[NUMBER_OF_PEs-1:0];
reg [2:0]  state_Interconnect[NUMBER_OF_PEs-1:0];
localparam [2:0] 
    IDLE    = 3'b000,
    READ    = 3'b001,
    SWITCH  = 3'b010,
    REQUEST = 3'b011,
    WRITE   = 3'b100;

assign MemoryOffset[0] = MemoryOffset0;
assign MemoryOffset[1] = MemoryOffset1;
assign MemoryOffset[2] = MemoryOffset2;
assign MemoryOffset[3] = MemoryOffset3;
assign MemoryOffset[4] = MemoryOffset4;
assign MemoryOffset[5] = MemoryOffset5;
assign MemoryOffset[6] = MemoryOffset6;
assign MemoryOffset[7] = MemoryOffset7;
assign MemoryOffset[8] = MemoryOffset8;
assign MemoryOffset[9] = MemoryOffset9;
assign MemoryOffset[10] = MemoryOffset10;
assign MemoryOffset[11] = MemoryOffset11;
assign MemoryOffset[12] = MemoryOffset12;
assign MemoryOffset[13] = MemoryOffset13;
assign MemoryOffset[14] = MemoryOffset14;
assign MemoryOffset[15] = MemoryOffset15;
assign MemoryOffset[16] = MemoryOffset16;
assign MaxSuperblockAddress[0]  = {(MemoryOffset1[14:0] - MemoryOffset0[14:0])};
assign MaxSuperblockAddress[1]  = {(MemoryOffset2[15:0] - MemoryOffset1[14:0])};
assign MaxSuperblockAddress[2]  = {(MemoryOffset3[15:0] - MemoryOffset2[15:0])};
assign MaxSuperblockAddress[3]  = {(MemoryOffset4[16:1] - MemoryOffset3[15:1])};
assign MaxSuperblockAddress[4]  = {(MemoryOffset5[16:2] - MemoryOffset4[16:2])};
assign MaxSuperblockAddress[5]  = {(MemoryOffset6[16:2] - MemoryOffset5[16:2])};
assign MaxSuperblockAddress[6]  = {(MemoryOffset7[16:2] - MemoryOffset6[16:2])};
assign MaxSuperblockAddress[7]  = {(MemoryOffset8[17:2] - MemoryOffset7[16:2])};
assign MaxSuperblockAddress[8]  = {(MemoryOffset9[17:3] - MemoryOffset8[17:3])};
assign MaxSuperblockAddress[9]  = {(MemoryOffset10[17:3] - MemoryOffset9[17:3])};
assign MaxSuperblockAddress[10] = {(MemoryOffset11[17:3] - MemoryOffset10[17:3])};
assign MaxSuperblockAddress[11] = {(MemoryOffset12[17:3] - MemoryOffset11[17:3])};
assign MaxSuperblockAddress[12] = {(MemoryOffset13[17:3] - MemoryOffset12[17:3])};
assign MaxSuperblockAddress[13] = {(MemoryOffset14[17:3] - MemoryOffset13[17:3])};
assign MaxSuperblockAddress[14] = {(MemoryOffset15[17:3] - MemoryOffset14[17:3])};
assign MaxSuperblockAddress[15] = {(MemoryOffset16[17:3] - MemoryOffset15[17:3])};

always @(posedge clk) begin
    if(FirstMessage[62:AXI_CHANNEL_PARTITION+UPDATE_WIDTH] < MemoryOffset[1]) PE_FirstMessage <= 0; // Lower Bound MemoryOffset0
        for(k=1;k<15;k=k+1) begin // Check MemoryOffset1-14
        if(FirstMessage[62:AXI_CHANNEL_PARTITION+UPDATE_WIDTH] >= MemoryOffset[k] && 
           FirstMessage[62:AXI_CHANNEL_PARTITION+UPDATE_WIDTH] < MemoryOffset[k+1]) PE_FirstMessage <= k;
        end
        if(FirstMessage[62:AXI_CHANNEL_PARTITION+UPDATE_WIDTH] >= MemoryOffset[15]) PE_FirstMessage <= 15; // Upper Bound MemoryOffset15
end

generate for(i=0;i<NUMBER_OF_PEs;i=i+1) begin
// Grant Arbitor
always @(posedge clk) begin
    if(reset)
        Grant[i] <= {NUMBER_OF_PEs{1'b0}};
    else if(MSGFIFO_Full_i[i])
        Grant[i] <= {NUMBER_OF_PEs{1'b0}};
    else if(Request[i][i%16] && (Grant[i][i%16] || Grant[i]==0))
        Grant[i] <= 2**(i%16);
    else if(Request[i][(i+1)%16] && (Grant[i][(i+1)%16] || Grant[i]==0))
        Grant[i] <= 2**((i+1)%16);
    else if(Request[i][(i+2)%16] && (Grant[i][(i+2)%16] || Grant[i]==0))
        Grant[i] <= 2**((i+2)%16);
    else if(Request[i][(i+3)%16] && (Grant[i][(i+3)%16] || Grant[i]==0))
        Grant[i] <= 2**((i+3)%16);
    else if(Request[i][(i+4)%16] && (Grant[i][(i+4)%16] || Grant[i]==0))
        Grant[i] <= 2**((i+4)%16);
    else if(Request[i][(i+5)%16] && (Grant[i][(i+5)%16] || Grant[i]==0))
        Grant[i] <= 2**((i+5)%16);
    else if(Request[i][(i+6)%16] && (Grant[i][(i+6)%16] || Grant[i]==0))
        Grant[i] <= 2**((i+6)%16);
    else if(Request[i][(i+7)%16] && (Grant[i][(i+7)%16] || Grant[i]==0))
        Grant[i] <= 2**((i+7)%16);
    else if(Request[i][(i+8)%16] && (Grant[i][(i+8)%16] || Grant[i]==0))
        Grant[i] <= 2**((i+8)%16);
    else if(Request[i][(i+9)%16] && (Grant[i][(i+9)%16] || Grant[i]==0))
        Grant[i] <= 2**((i+9)%16);
    else if(Request[i][(i+10)%16] && (Grant[i][(i+10)%16] || Grant[i]==0))
        Grant[i] <= 2**((i+10)%16);
    else if(Request[i][(i+11)%16] && (Grant[i][(i+11)%16] || Grant[i]==0))
        Grant[i] <= 2**((i+11)%16);
    else if(Request[i][(i+12)%16] && (Grant[i][(i+12)%16] || Grant[i]==0))
        Grant[i] <= 2**((i+12)%16);
    else if(Request[i][(i+13)%16] && (Grant[i][(i+13)%16] || Grant[i]==0))
        Grant[i] <= 2**((i+13)%16);
    else if(Request[i][(i+14)%16] && (Grant[i][(i+14)%16] || Grant[i]==0))
        Grant[i] <= 2**((i+14)%16);
    else if(Request[i][(i+15)%16] && (Grant[i][(i+15)%16] || Grant[i]==0))
        Grant[i] <= 2**((i+15)%16);
    else 
        Grant[i] <= {NUMBER_OF_PEs{1'b0}};
end
end endgenerate

generate for(i=0;i<NUMBER_OF_PEs;i=i+1) begin
// PE FIFO Input Mux One Hot (Grant PE[i] -> PE[k])
always @(*) begin
    if(reset) begin
        MSGFIFO_Write_i[i] = 1'b0;
        MSGFIFO_WriteData_i[i] = 64'd0;
    end
    else if(Start_Pulse && PE_FirstMessage==i) begin
        MSGFIFO_Write_i[i] = 1'b1;
        MSGFIFO_WriteData_i[i] = {(FirstMessage[62:AXI_CHANNEL_PARTITION+UPDATE_WIDTH] - MemoryOffset[i]), FirstMessage[AXI_CHANNEL_PARTITION+UPDATE_WIDTH-1:0]};
    end
    else begin
        case(Grant[i]) // One Hot
        16'b0000_0000_0000_0001:
        begin
            MSGFIFO_Write_i[i] = Message_Write[0];
            MSGFIFO_WriteData_i[i] = Message[0];
        end
        16'b0000_0000_0000_0010:
        begin
            MSGFIFO_Write_i[i] = Message_Write[1];
            MSGFIFO_WriteData_i[i] = Message[1];
        end
        16'b0000_0000_0000_0100:
        begin
            MSGFIFO_Write_i[i] = Message_Write[2];
            MSGFIFO_WriteData_i[i] = Message[2];
        end
        16'b0000_0000_0000_1000:
        begin
            MSGFIFO_Write_i[i] = Message_Write[3];
            MSGFIFO_WriteData_i[i] = Message[3];
        end
        16'b0000_0000_0001_0000:
        begin
            MSGFIFO_Write_i[i] = Message_Write[4];
            MSGFIFO_WriteData_i[i] = Message[4];
        end
        16'b0000_0000_0010_0000:
        begin
            MSGFIFO_Write_i[i] = Message_Write[5];
            MSGFIFO_WriteData_i[i] = Message[5];
        end
        16'b0000_0000_0100_0000:
        begin
            MSGFIFO_Write_i[i] = Message_Write[6];
            MSGFIFO_WriteData_i[i] = Message[6];
        end
        16'b0000_0000_1000_0000:
        begin
            MSGFIFO_Write_i[i] = Message_Write[7];
            MSGFIFO_WriteData_i[i] = Message[7];
        end
        16'b0000_0001_0000_0000:
        begin
            MSGFIFO_Write_i[i] = Message_Write[8];
            MSGFIFO_WriteData_i[i] = Message[8];
        end
        16'b0000_0010_0000_0000:
        begin
            MSGFIFO_Write_i[i] = Message_Write[9];
            MSGFIFO_WriteData_i[i] = Message[9];
        end
        16'b0000_0100_0000_0000:
        begin
            MSGFIFO_Write_i[i] = Message_Write[10];
            MSGFIFO_WriteData_i[i] = Message[10];
        end
        16'b0000_1000_0000_0000:
        begin
            MSGFIFO_Write_i[i] = Message_Write[11];
            MSGFIFO_WriteData_i[i] = Message[11];
        end
        16'b0001_0000_0000_0000:
        begin
            MSGFIFO_Write_i[i] = Message_Write[12];
            MSGFIFO_WriteData_i[i] = Message[12];
        end
        16'b0010_0000_0000_0000:
        begin
            MSGFIFO_Write_i[i] = Message_Write[13];
            MSGFIFO_WriteData_i[i] = Message[13];
        end
        16'b0100_0000_0000_0000:
        begin
            MSGFIFO_Write_i[i] = Message_Write[14];
            MSGFIFO_WriteData_i[i] = Message[14];
        end
        16'b1000_0000_0000_0000:
        begin
            MSGFIFO_Write_i[i] = Message_Write[15];
            MSGFIFO_WriteData_i[i] = Message[15];
        end
        default: begin
            MSGFIFO_Write_i[i] = 1'b0;
            MSGFIFO_WriteData_i[i] = 64'd0;
        end
        endcase
    end
end
end endgenerate

generate for(i=0;i<NUMBER_OF_PEs;i=i+1) begin
// PE FIFO Output Reader, Requester, Writer
always @(posedge clk) begin
    if(reset)
        MSGFIFO_Read_o[i] <= 1'b0;
    else if(~MSGFIFO_Empty_o[i] && state_Interconnect[i]==IDLE)
        MSGFIFO_Read_o[i] <= 1'b1;
    else
        MSGFIFO_Read_o[i] <= 1'b0;

    if(reset) begin
        PE[i] <= 4'd0;
    end
    else if(MSGFIFO_Read_Valid_o[i] && state_Interconnect[i]==READ) begin
        if(MSGFIFO_ReadData_o[i][62:AXI_CHANNEL_PARTITION+UPDATE_WIDTH] < MemoryOffset[1]) PE[i] <= 0; // Lower Bound MemoryOffset0
        for(k=1;k<15;k=k+1) begin // Check MemoryOffset1-14
        if(MSGFIFO_ReadData_o[i][62:AXI_CHANNEL_PARTITION+UPDATE_WIDTH] >= MemoryOffset[k] && 
           MSGFIFO_ReadData_o[i][62:AXI_CHANNEL_PARTITION+UPDATE_WIDTH] < MemoryOffset[k+1]) PE[i] <= k;
        end
        if(MSGFIFO_ReadData_o[i][62:AXI_CHANNEL_PARTITION+UPDATE_WIDTH] >= MemoryOffset[15]) PE[i] <= 15; // Upper Bound MemoryOffset15
    end
    else
        PE[i] <= PE[i];
    
    if(reset)
        Message[i] <= 64'd0;
    else if(Grant[PE[i]][i] && state_Interconnect[i]==REQUEST)
        case(PE[i])
        4'h0: Message[i] <= {(MSGFIFO_ReadData_o[i][62:AXI_CHANNEL_PARTITION+UPDATE_WIDTH] - MemoryOffset0), MSGFIFO_ReadData_o[i][AXI_CHANNEL_PARTITION+UPDATE_WIDTH-1:0]};
        4'h1: Message[i] <= {(MSGFIFO_ReadData_o[i][62:AXI_CHANNEL_PARTITION+UPDATE_WIDTH] - MemoryOffset1), MSGFIFO_ReadData_o[i][AXI_CHANNEL_PARTITION+UPDATE_WIDTH-1:0]};
        4'h2: Message[i] <= {(MSGFIFO_ReadData_o[i][62:AXI_CHANNEL_PARTITION+UPDATE_WIDTH] - MemoryOffset2), MSGFIFO_ReadData_o[i][AXI_CHANNEL_PARTITION+UPDATE_WIDTH-1:0]};
        4'h3: Message[i] <= {(MSGFIFO_ReadData_o[i][62:AXI_CHANNEL_PARTITION+UPDATE_WIDTH] - MemoryOffset3), MSGFIFO_ReadData_o[i][AXI_CHANNEL_PARTITION+UPDATE_WIDTH-1:0]};
        4'h4: Message[i] <= {(MSGFIFO_ReadData_o[i][62:AXI_CHANNEL_PARTITION+UPDATE_WIDTH] - MemoryOffset4), MSGFIFO_ReadData_o[i][AXI_CHANNEL_PARTITION+UPDATE_WIDTH-1:0]};
        4'h5: Message[i] <= {(MSGFIFO_ReadData_o[i][62:AXI_CHANNEL_PARTITION+UPDATE_WIDTH] - MemoryOffset5), MSGFIFO_ReadData_o[i][AXI_CHANNEL_PARTITION+UPDATE_WIDTH-1:0]};
        4'h6: Message[i] <= {(MSGFIFO_ReadData_o[i][62:AXI_CHANNEL_PARTITION+UPDATE_WIDTH] - MemoryOffset6), MSGFIFO_ReadData_o[i][AXI_CHANNEL_PARTITION+UPDATE_WIDTH-1:0]};
        4'h7: Message[i] <= {(MSGFIFO_ReadData_o[i][62:AXI_CHANNEL_PARTITION+UPDATE_WIDTH] - MemoryOffset7), MSGFIFO_ReadData_o[i][AXI_CHANNEL_PARTITION+UPDATE_WIDTH-1:0]};
        4'h8: Message[i] <= {(MSGFIFO_ReadData_o[i][62:AXI_CHANNEL_PARTITION+UPDATE_WIDTH] - MemoryOffset8), MSGFIFO_ReadData_o[i][AXI_CHANNEL_PARTITION+UPDATE_WIDTH-1:0]};
        4'h9: Message[i] <= {(MSGFIFO_ReadData_o[i][62:AXI_CHANNEL_PARTITION+UPDATE_WIDTH] - MemoryOffset9), MSGFIFO_ReadData_o[i][AXI_CHANNEL_PARTITION+UPDATE_WIDTH-1:0]};
        4'hA: Message[i] <= {(MSGFIFO_ReadData_o[i][62:AXI_CHANNEL_PARTITION+UPDATE_WIDTH] - MemoryOffset10), MSGFIFO_ReadData_o[i][AXI_CHANNEL_PARTITION+UPDATE_WIDTH-1:0]};
        4'hB: Message[i] <= {(MSGFIFO_ReadData_o[i][62:AXI_CHANNEL_PARTITION+UPDATE_WIDTH] - MemoryOffset11), MSGFIFO_ReadData_o[i][AXI_CHANNEL_PARTITION+UPDATE_WIDTH-1:0]};
        4'hC: Message[i] <= {(MSGFIFO_ReadData_o[i][62:AXI_CHANNEL_PARTITION+UPDATE_WIDTH] - MemoryOffset12), MSGFIFO_ReadData_o[i][AXI_CHANNEL_PARTITION+UPDATE_WIDTH-1:0]};
        4'hD: Message[i] <= {(MSGFIFO_ReadData_o[i][62:AXI_CHANNEL_PARTITION+UPDATE_WIDTH] - MemoryOffset13), MSGFIFO_ReadData_o[i][AXI_CHANNEL_PARTITION+UPDATE_WIDTH-1:0]};
        4'hE: Message[i] <= {(MSGFIFO_ReadData_o[i][62:AXI_CHANNEL_PARTITION+UPDATE_WIDTH] - MemoryOffset14), MSGFIFO_ReadData_o[i][AXI_CHANNEL_PARTITION+UPDATE_WIDTH-1:0]};
        4'hF: Message[i] <= {(MSGFIFO_ReadData_o[i][62:AXI_CHANNEL_PARTITION+UPDATE_WIDTH] - MemoryOffset15), MSGFIFO_ReadData_o[i][AXI_CHANNEL_PARTITION+UPDATE_WIDTH-1:0]};
        endcase
    else
        Message[i] <= Message[i];

    if(reset)
        Request[i] <= {NUMBER_OF_PEs{1'b0}};
    else if(~Grant[PE[i]][i] && state_Interconnect[i]==REQUEST)
        Request[PE[i]][i] <= 1'b1;
    else
        Request[PE[i]][i] <= 1'b0;

    if(reset)
        Message_Write[i] <= 1'b0;
    else if(Grant[PE[i]][i] && state_Interconnect[i]==REQUEST)
        Message_Write[i] <= 1'b1;
    else
        Message_Write[i] <= 1'b0;
end
end endgenerate

generate for(i=0;i<NUMBER_OF_PEs;i=i+1) begin
// FIFO Arbitor State 
always @(posedge clk) begin
if(reset)
    state_Interconnect[i] <= IDLE;
else
    case(state_Interconnect[i])
    IDLE: if(~MSGFIFO_Empty_o[i]) state_Interconnect[i] <= READ;
    READ: if(MSGFIFO_Read_Valid_o[i]) state_Interconnect[i] <= REQUEST;
    REQUEST: if(Grant[PE[i]][i]) state_Interconnect[i] <= WRITE;
    WRITE: state_Interconnect[i] <= IDLE;
    default: state_Interconnect[i] <= IDLE;
    endcase
end
end endgenerate

always @(posedge clk) begin
    ResetDone_r <= (ResetDone & start);
end
assign Start_Pulse = (~ResetDone_r & ResetDone & start);
assign ResetDone = (regResetDone[NUMBER_OF_PEs-1:0] == {NUMBER_OF_PEs{1'b1}}); 
assign GraphDone = (regGraphDone[NUMBER_OF_PEs-1:0] == {NUMBER_OF_PEs{1'b1}}) && ResetDone;

//===================================
//      Instantiate PE 0 
//===================================
PE #(
    .PE_NUM(4'h0)
) Processing_Element_0(
    .clk(clk),
    .reset(reset),
    
    .start(start),
    .regResetDone(regResetDone[0]),
    .regGraphDone(regGraphDone[0]),
    .MaxSuperblockAddress(MaxSuperblockAddress[0]),
    //===================================
    //      Message FIFO Signals
    //===================================
    // Message FIFO In Signals
    .MSGFIFO_Full_i(MSGFIFO_Full_i[0]),
    .MSGFIFO_Write_i(MSGFIFO_Write_i[0]),
    .MSGFIFO_WriteData_i(MSGFIFO_WriteData_i[0]),
    
    // Message FIFO Out Signals 
    .MSGFIFO_Empty_o(MSGFIFO_Empty_o[0]),
    .MSGFIFO_Read_o(MSGFIFO_Read_o[0]),
    .MSGFIFO_ReadData_o(MSGFIFO_ReadData_o[0]),
    .MSGFIFO_ReadValid_o(MSGFIFO_Read_Valid_o[0]),
    
    //===================================
    //        AXI Engine Signals
    //===================================
    // Read Vertex
    .HBM_StartRead(HBM_00_StartRead),
    .HBM_ReadBurst(HBM_00_ReadBurst),
    .HBM_ReadAddress(HBM_00_ReadAddress),
    .HBM_ReadData(HBM_00_ReadData),
    .HBM_ReadReady(HBM_00_ReadReady),
    .HBM_EndRead(HBM_00_EndRead),
    // Write Vertex
    .HBM_StartWrite(HBM_00_StartWrite),
    .HBM_WriteBurst(HBM_00_WriteBurst),
    .HBM_WriteAddress(HBM_00_WriteAddress),
    .HBM_WriteData(HBM_00_WriteData),
    .HBM_WriteReady(HBM_00_WriteReady),
    .HBM_WriteResp(HBM_00_WriteResp),
    .HBM_WriteLast(HBM_00_WriteLast),
    .HBM_EndWrite(HBM_00_EndWrite),
    // Read Edge
    .DDR_StartRead(DDR_00_StartRead),
    .DDR_ReadBurst(DDR_00_ReadBurst),
    .DDR_ReadAddress(DDR_00_ReadAddress),
    .DDR_ReadData(DDR_00_ReadData),
    .DDR_ReadReady(DDR_00_ReadReady),
    .DDR_EndRead(DDR_00_EndRead)
);

//===================================
//      Instantiate PE 1 
//===================================
PE #(
    .PE_NUM(4'h1)
) Processing_Element_1(
    .clk(clk),
    .reset(reset),
    
    .start(start),
    .regResetDone(regResetDone[1]),
    .regGraphDone(regGraphDone[1]),
    .MaxSuperblockAddress(MaxSuperblockAddress[1]),
    //===================================
    //      Message FIFO Signals
    //===================================
    // Message FIFO In Signals
    .MSGFIFO_Full_i(MSGFIFO_Full_i[1]),
    .MSGFIFO_Write_i(MSGFIFO_Write_i[1]),
    .MSGFIFO_WriteData_i(MSGFIFO_WriteData_i[1]),
    
    // Message FIFO Out Signals 
    .MSGFIFO_Empty_o(MSGFIFO_Empty_o[1]),
    .MSGFIFO_Read_o(MSGFIFO_Read_o[1]),
    .MSGFIFO_ReadData_o(MSGFIFO_ReadData_o[1]),
    .MSGFIFO_ReadValid_o(MSGFIFO_Read_Valid_o[1]),
    
    //===================================
    //        AXI Engine Signals
    //===================================
    // Read Vertex
    .HBM_StartRead(HBM_01_StartRead),
    .HBM_ReadBurst(HBM_01_ReadBurst),
    .HBM_ReadAddress(HBM_01_ReadAddress),
    .HBM_ReadData(HBM_01_ReadData),
    .HBM_ReadReady(HBM_01_ReadReady),
    .HBM_EndRead(HBM_01_EndRead),
    // Write Vertex
    .HBM_StartWrite(HBM_01_StartWrite),
    .HBM_WriteBurst(HBM_01_WriteBurst),
    .HBM_WriteAddress(HBM_01_WriteAddress),
    .HBM_WriteData(HBM_01_WriteData),
    .HBM_WriteReady(HBM_01_WriteReady),
    .HBM_WriteResp(HBM_01_WriteResp),
    .HBM_WriteLast(HBM_01_WriteLast),
    .HBM_EndWrite(HBM_01_EndWrite),
    // Read Edge
    .DDR_StartRead(DDR_01_StartRead),
    .DDR_ReadBurst(DDR_01_ReadBurst),
    .DDR_ReadAddress(DDR_01_ReadAddress),
    .DDR_ReadData(DDR_01_ReadData),
    .DDR_ReadReady(DDR_01_ReadReady),
    .DDR_EndRead(DDR_01_EndRead)
);

//===================================
//      Instantiate PE 2 
//===================================
PE #(
    .PE_NUM(4'h2)
) Processing_Element_2(
    .clk(clk),
    .reset(reset),
    
    .start(start),
    .regResetDone(regResetDone[2]),
    .regGraphDone(regGraphDone[2]),
    .MaxSuperblockAddress(MaxSuperblockAddress[2]),
    //===================================
    //      Message FIFO Signals
    //===================================
    // Message FIFO In Signals
    .MSGFIFO_Full_i(MSGFIFO_Full_i[2]),
    .MSGFIFO_Write_i(MSGFIFO_Write_i[2]),
    .MSGFIFO_WriteData_i(MSGFIFO_WriteData_i[2]),
    
    // Message FIFO Out Signals 
    .MSGFIFO_Empty_o(MSGFIFO_Empty_o[2]),
    .MSGFIFO_Read_o(MSGFIFO_Read_o[2]),
    .MSGFIFO_ReadData_o(MSGFIFO_ReadData_o[2]),
    .MSGFIFO_ReadValid_o(MSGFIFO_Read_Valid_o[2]),
    
    //===================================
    //        AXI Engine Signals
    //===================================
    // Read Vertex
    .HBM_StartRead(HBM_02_StartRead),
    .HBM_ReadBurst(HBM_02_ReadBurst),
    .HBM_ReadAddress(HBM_02_ReadAddress),
    .HBM_ReadData(HBM_02_ReadData),
    .HBM_ReadReady(HBM_02_ReadReady),
    .HBM_EndRead(HBM_02_EndRead),
    // Write Vertex
    .HBM_StartWrite(HBM_02_StartWrite),
    .HBM_WriteBurst(HBM_02_WriteBurst),
    .HBM_WriteAddress(HBM_02_WriteAddress),
    .HBM_WriteData(HBM_02_WriteData),
    .HBM_WriteReady(HBM_02_WriteReady),
    .HBM_WriteResp(HBM_02_WriteResp),
    .HBM_WriteLast(HBM_02_WriteLast),
    .HBM_EndWrite(HBM_02_EndWrite),
    // Read Edge
    .DDR_StartRead(DDR_02_StartRead),
    .DDR_ReadBurst(DDR_02_ReadBurst),
    .DDR_ReadAddress(DDR_02_ReadAddress),
    .DDR_ReadData(DDR_02_ReadData),
    .DDR_ReadReady(DDR_02_ReadReady),
    .DDR_EndRead(DDR_02_EndRead)
);

//===================================
//      Instantiate PE 3 
//===================================
PE #(
    .PE_NUM(4'h3)
) Processing_Element_3(
    .clk(clk),
    .reset(reset),
    
    .start(start),
    .regResetDone(regResetDone[3]),
    .regGraphDone(regGraphDone[3]),
    .MaxSuperblockAddress(MaxSuperblockAddress[3]),
    //===================================
    //      Message FIFO Signals
    //===================================
    // Message FIFO In Signals
    .MSGFIFO_Full_i(MSGFIFO_Full_i[3]),
    .MSGFIFO_Write_i(MSGFIFO_Write_i[3]),
    .MSGFIFO_WriteData_i(MSGFIFO_WriteData_i[3]),
    
    // Message FIFO Out Signals 
    .MSGFIFO_Empty_o(MSGFIFO_Empty_o[3]),
    .MSGFIFO_Read_o(MSGFIFO_Read_o[3]),
    .MSGFIFO_ReadData_o(MSGFIFO_ReadData_o[3]),
    .MSGFIFO_ReadValid_o(MSGFIFO_Read_Valid_o[3]),
    
    //===================================
    //        AXI Engine Signals
    //===================================
    // Read Vertex
    .HBM_StartRead(HBM_03_StartRead),
    .HBM_ReadBurst(HBM_03_ReadBurst),
    .HBM_ReadAddress(HBM_03_ReadAddress),
    .HBM_ReadData(HBM_03_ReadData),
    .HBM_ReadReady(HBM_03_ReadReady),
    .HBM_EndRead(HBM_03_EndRead),
    // Write Vertex
    .HBM_StartWrite(HBM_03_StartWrite),
    .HBM_WriteBurst(HBM_03_WriteBurst),
    .HBM_WriteAddress(HBM_03_WriteAddress),
    .HBM_WriteData(HBM_03_WriteData),
    .HBM_WriteReady(HBM_03_WriteReady),
    .HBM_WriteResp(HBM_03_WriteResp),
    .HBM_WriteLast(HBM_03_WriteLast),
    .HBM_EndWrite(HBM_03_EndWrite),
    // Read Edge
    .DDR_StartRead(DDR_03_StartRead),
    .DDR_ReadBurst(DDR_03_ReadBurst),
    .DDR_ReadAddress(DDR_03_ReadAddress),
    .DDR_ReadData(DDR_03_ReadData),
    .DDR_ReadReady(DDR_03_ReadReady),
    .DDR_EndRead(DDR_03_EndRead)
);

//===================================
//      Instantiate PE 4 
//===================================
PE #(
    .PE_NUM(4'h4)
) Processing_Element_4(
    .clk(clk),
    .reset(reset),
    
    .start(start),
    .regResetDone(regResetDone[4]),
    .regGraphDone(regGraphDone[4]),
    .MaxSuperblockAddress(MaxSuperblockAddress[4]),
    //===================================
    //      Message FIFO Signals
    //===================================
    // Message FIFO In Signals
    .MSGFIFO_Full_i(MSGFIFO_Full_i[4]),
    .MSGFIFO_Write_i(MSGFIFO_Write_i[4]),
    .MSGFIFO_WriteData_i(MSGFIFO_WriteData_i[4]),
    
    // Message FIFO Out Signals 
    .MSGFIFO_Empty_o(MSGFIFO_Empty_o[4]),
    .MSGFIFO_Read_o(MSGFIFO_Read_o[4]),
    .MSGFIFO_ReadData_o(MSGFIFO_ReadData_o[4]),
    .MSGFIFO_ReadValid_o(MSGFIFO_Read_Valid_o[4]),
    
    //===================================
    //        AXI Engine Signals
    //===================================
    // Read Vertex
    .HBM_StartRead(HBM_04_StartRead),
    .HBM_ReadBurst(HBM_04_ReadBurst),
    .HBM_ReadAddress(HBM_04_ReadAddress),
    .HBM_ReadData(HBM_04_ReadData),
    .HBM_ReadReady(HBM_04_ReadReady),
    .HBM_EndRead(HBM_04_EndRead),
    // Write Vertex
    .HBM_StartWrite(HBM_04_StartWrite),
    .HBM_WriteBurst(HBM_04_WriteBurst),
    .HBM_WriteAddress(HBM_04_WriteAddress),
    .HBM_WriteData(HBM_04_WriteData),
    .HBM_WriteReady(HBM_04_WriteReady),
    .HBM_WriteResp(HBM_04_WriteResp),
    .HBM_WriteLast(HBM_04_WriteLast),
    .HBM_EndWrite(HBM_04_EndWrite),
    // Read Edge
    .DDR_StartRead(DDR_04_StartRead),
    .DDR_ReadBurst(DDR_04_ReadBurst),
    .DDR_ReadAddress(DDR_04_ReadAddress),
    .DDR_ReadData(DDR_04_ReadData),
    .DDR_ReadReady(DDR_04_ReadReady),
    .DDR_EndRead(DDR_04_EndRead)
);

//===================================
//      Instantiate PE 5 
//===================================
PE #(
    .PE_NUM(4'h5)
) Processing_Element_5(
    .clk(clk),
    .reset(reset),
    
    .start(start),
    .regResetDone(regResetDone[5]),
    .regGraphDone(regGraphDone[5]),
    .MaxSuperblockAddress(MaxSuperblockAddress[5]),
    //===================================
    //      Message FIFO Signals
    //===================================
    // Message FIFO In Signals
    .MSGFIFO_Full_i(MSGFIFO_Full_i[5]),
    .MSGFIFO_Write_i(MSGFIFO_Write_i[5]),
    .MSGFIFO_WriteData_i(MSGFIFO_WriteData_i[5]),
    
    // Message FIFO Out Signals 
    .MSGFIFO_Empty_o(MSGFIFO_Empty_o[5]),
    .MSGFIFO_Read_o(MSGFIFO_Read_o[5]),
    .MSGFIFO_ReadData_o(MSGFIFO_ReadData_o[5]),
    .MSGFIFO_ReadValid_o(MSGFIFO_Read_Valid_o[5]),
    
    //===================================
    //        AXI Engine Signals
    //===================================
    // Read Vertex
    .HBM_StartRead(HBM_05_StartRead),
    .HBM_ReadBurst(HBM_05_ReadBurst),
    .HBM_ReadAddress(HBM_05_ReadAddress),
    .HBM_ReadData(HBM_05_ReadData),
    .HBM_ReadReady(HBM_05_ReadReady),
    .HBM_EndRead(HBM_05_EndRead),
    // Write Vertex
    .HBM_StartWrite(HBM_05_StartWrite),
    .HBM_WriteBurst(HBM_05_WriteBurst),
    .HBM_WriteAddress(HBM_05_WriteAddress),
    .HBM_WriteData(HBM_05_WriteData),
    .HBM_WriteReady(HBM_05_WriteReady),
    .HBM_WriteResp(HBM_05_WriteResp),
    .HBM_WriteLast(HBM_05_WriteLast),
    .HBM_EndWrite(HBM_05_EndWrite),
    // Read Edge
    .DDR_StartRead(DDR_05_StartRead),
    .DDR_ReadBurst(DDR_05_ReadBurst),
    .DDR_ReadAddress(DDR_05_ReadAddress),
    .DDR_ReadData(DDR_05_ReadData),
    .DDR_ReadReady(DDR_05_ReadReady),
    .DDR_EndRead(DDR_05_EndRead)
);

//===================================
//      Instantiate PE 6 
//===================================
PE #(
    .PE_NUM(4'h6)
) Processing_Element_6(
    .clk(clk),
    .reset(reset),
    
    .start(start),
    .regResetDone(regResetDone[6]),
    .regGraphDone(regGraphDone[6]),
    .MaxSuperblockAddress(MaxSuperblockAddress[6]),
    //===================================
    //      Message FIFO Signals
    //===================================
    // Message FIFO In Signals
    .MSGFIFO_Full_i(MSGFIFO_Full_i[6]),
    .MSGFIFO_Write_i(MSGFIFO_Write_i[6]),
    .MSGFIFO_WriteData_i(MSGFIFO_WriteData_i[6]),
    
    // Message FIFO Out Signals 
    .MSGFIFO_Empty_o(MSGFIFO_Empty_o[6]),
    .MSGFIFO_Read_o(MSGFIFO_Read_o[6]),
    .MSGFIFO_ReadData_o(MSGFIFO_ReadData_o[6]),
    .MSGFIFO_ReadValid_o(MSGFIFO_Read_Valid_o[6]),
    
    //===================================
    //        AXI Engine Signals
    //===================================
    // Read Vertex
    .HBM_StartRead(HBM_06_StartRead),
    .HBM_ReadBurst(HBM_06_ReadBurst),
    .HBM_ReadAddress(HBM_06_ReadAddress),
    .HBM_ReadData(HBM_06_ReadData),
    .HBM_ReadReady(HBM_06_ReadReady),
    .HBM_EndRead(HBM_06_EndRead),
    // Write Vertex
    .HBM_StartWrite(HBM_06_StartWrite),
    .HBM_WriteBurst(HBM_06_WriteBurst),
    .HBM_WriteAddress(HBM_06_WriteAddress),
    .HBM_WriteData(HBM_06_WriteData),
    .HBM_WriteReady(HBM_06_WriteReady),
    .HBM_WriteResp(HBM_06_WriteResp),
    .HBM_WriteLast(HBM_06_WriteLast),
    .HBM_EndWrite(HBM_06_EndWrite),
    // Read Edge
    .DDR_StartRead(DDR_06_StartRead),
    .DDR_ReadBurst(DDR_06_ReadBurst),
    .DDR_ReadAddress(DDR_06_ReadAddress),
    .DDR_ReadData(DDR_06_ReadData),
    .DDR_ReadReady(DDR_06_ReadReady),
    .DDR_EndRead(DDR_06_EndRead)
);

//===================================
//      Instantiate PE 7 
//===================================
PE #(
    .PE_NUM(4'h7)
) Processing_Element_7(
    .clk(clk),
    .reset(reset),
    
    .start(start),
    .regResetDone(regResetDone[7]),
    .regGraphDone(regGraphDone[7]),
    .MaxSuperblockAddress(MaxSuperblockAddress[7]),
    //===================================
    //      Message FIFO Signals
    //===================================
    // Message FIFO In Signals
    .MSGFIFO_Full_i(MSGFIFO_Full_i[7]),
    .MSGFIFO_Write_i(MSGFIFO_Write_i[7]),
    .MSGFIFO_WriteData_i(MSGFIFO_WriteData_i[7]),
    
    // Message FIFO Out Signals 
    .MSGFIFO_Empty_o(MSGFIFO_Empty_o[7]),
    .MSGFIFO_Read_o(MSGFIFO_Read_o[7]),
    .MSGFIFO_ReadData_o(MSGFIFO_ReadData_o[7]),
    .MSGFIFO_ReadValid_o(MSGFIFO_Read_Valid_o[7]),
    
    //===================================
    //        AXI Engine Signals
    //===================================
    // Read Vertex
    .HBM_StartRead(HBM_07_StartRead),
    .HBM_ReadBurst(HBM_07_ReadBurst),
    .HBM_ReadAddress(HBM_07_ReadAddress),
    .HBM_ReadData(HBM_07_ReadData),
    .HBM_ReadReady(HBM_07_ReadReady),
    .HBM_EndRead(HBM_07_EndRead),
    // Write Vertex
    .HBM_StartWrite(HBM_07_StartWrite),
    .HBM_WriteBurst(HBM_07_WriteBurst),
    .HBM_WriteAddress(HBM_07_WriteAddress),
    .HBM_WriteData(HBM_07_WriteData),
    .HBM_WriteReady(HBM_07_WriteReady),
    .HBM_WriteResp(HBM_07_WriteResp),
    .HBM_WriteLast(HBM_07_WriteLast),
    .HBM_EndWrite(HBM_07_EndWrite),
    // Read Edge
    .DDR_StartRead(DDR_07_StartRead),
    .DDR_ReadBurst(DDR_07_ReadBurst),
    .DDR_ReadAddress(DDR_07_ReadAddress),
    .DDR_ReadData(DDR_07_ReadData),
    .DDR_ReadReady(DDR_07_ReadReady),
    .DDR_EndRead(DDR_07_EndRead)
);

//===================================
//      Instantiate PE 8 
//===================================
PE #(
    .PE_NUM(4'h8)
) Processing_Element_8(
    .clk(clk),
    .reset(reset),
    
    .start(start),
    .regResetDone(regResetDone[8]),
    .regGraphDone(regGraphDone[8]),
    .MaxSuperblockAddress(MaxSuperblockAddress[8]),
    //===================================
    //      Message FIFO Signals
    //===================================
    // Message FIFO In Signals
    .MSGFIFO_Full_i(MSGFIFO_Full_i[8]),
    .MSGFIFO_Write_i(MSGFIFO_Write_i[8]),
    .MSGFIFO_WriteData_i(MSGFIFO_WriteData_i[8]),
    
    // Message FIFO Out Signals 
    .MSGFIFO_Empty_o(MSGFIFO_Empty_o[8]),
    .MSGFIFO_Read_o(MSGFIFO_Read_o[8]),
    .MSGFIFO_ReadData_o(MSGFIFO_ReadData_o[8]),
    .MSGFIFO_ReadValid_o(MSGFIFO_Read_Valid_o[8]),
    
    //===================================
    //        AXI Engine Signals
    //===================================
    // Read Vertex
    .HBM_StartRead(HBM_08_StartRead),
    .HBM_ReadBurst(HBM_08_ReadBurst),
    .HBM_ReadAddress(HBM_08_ReadAddress),
    .HBM_ReadData(HBM_08_ReadData),
    .HBM_ReadReady(HBM_08_ReadReady),
    .HBM_EndRead(HBM_08_EndRead),
    // Write Vertex
    .HBM_StartWrite(HBM_08_StartWrite),
    .HBM_WriteBurst(HBM_08_WriteBurst),
    .HBM_WriteAddress(HBM_08_WriteAddress),
    .HBM_WriteData(HBM_08_WriteData),
    .HBM_WriteReady(HBM_08_WriteReady),
    .HBM_WriteResp(HBM_08_WriteResp),
    .HBM_WriteLast(HBM_08_WriteLast),
    .HBM_EndWrite(HBM_08_EndWrite),
    // Read Edge
    .DDR_StartRead(DDR_08_StartRead),
    .DDR_ReadBurst(DDR_08_ReadBurst),
    .DDR_ReadAddress(DDR_08_ReadAddress),
    .DDR_ReadData(DDR_08_ReadData),
    .DDR_ReadReady(DDR_08_ReadReady),
    .DDR_EndRead(DDR_08_EndRead)
);

//===================================
//      Instantiate PE 9 
//===================================
PE #(
    .PE_NUM(4'h9)
) Processing_Element_9(
    .clk(clk),
    .reset(reset),
    
    .start(start),
    .regResetDone(regResetDone[9]),
    .regGraphDone(regGraphDone[9]),
    .MaxSuperblockAddress(MaxSuperblockAddress[9]),
    //===================================
    //      Message FIFO Signals
    //===================================
    // Message FIFO In Signals
    .MSGFIFO_Full_i(MSGFIFO_Full_i[9]),
    .MSGFIFO_Write_i(MSGFIFO_Write_i[9]),
    .MSGFIFO_WriteData_i(MSGFIFO_WriteData_i[9]),
    
    // Message FIFO Out Signals 
    .MSGFIFO_Empty_o(MSGFIFO_Empty_o[9]),
    .MSGFIFO_Read_o(MSGFIFO_Read_o[9]),
    .MSGFIFO_ReadData_o(MSGFIFO_ReadData_o[9]),
    .MSGFIFO_ReadValid_o(MSGFIFO_Read_Valid_o[9]),
    
    //===================================
    //        AXI Engine Signals
    //===================================
    // Read Vertex
    .HBM_StartRead(HBM_09_StartRead),
    .HBM_ReadBurst(HBM_09_ReadBurst),
    .HBM_ReadAddress(HBM_09_ReadAddress),
    .HBM_ReadData(HBM_09_ReadData),
    .HBM_ReadReady(HBM_09_ReadReady),
    .HBM_EndRead(HBM_09_EndRead),
    // Write Vertex
    .HBM_StartWrite(HBM_09_StartWrite),
    .HBM_WriteBurst(HBM_09_WriteBurst),
    .HBM_WriteAddress(HBM_09_WriteAddress),
    .HBM_WriteData(HBM_09_WriteData),
    .HBM_WriteReady(HBM_09_WriteReady),
    .HBM_WriteResp(HBM_09_WriteResp),
    .HBM_WriteLast(HBM_09_WriteLast),
    .HBM_EndWrite(HBM_09_EndWrite),
    // Read Edge
    .DDR_StartRead(DDR_09_StartRead),
    .DDR_ReadBurst(DDR_09_ReadBurst),
    .DDR_ReadAddress(DDR_09_ReadAddress),
    .DDR_ReadData(DDR_09_ReadData),
    .DDR_ReadReady(DDR_09_ReadReady),
    .DDR_EndRead(DDR_09_EndRead)
);

//===================================
//      Instantiate PE 10 
//===================================
PE #(
    .PE_NUM(4'hA)
) Processing_Element_10(
    .clk(clk),
    .reset(reset),
    
    .start(start),
    .regResetDone(regResetDone[10]),
    .regGraphDone(regGraphDone[10]),
    .MaxSuperblockAddress(MaxSuperblockAddress[10]),
    //===================================
    //      Message FIFO Signals
    //===================================
    // Message FIFO In Signals
    .MSGFIFO_Full_i(MSGFIFO_Full_i[10]),
    .MSGFIFO_Write_i(MSGFIFO_Write_i[10]),
    .MSGFIFO_WriteData_i(MSGFIFO_WriteData_i[10]),
    
    // Message FIFO Out Signals 
    .MSGFIFO_Empty_o(MSGFIFO_Empty_o[10]),
    .MSGFIFO_Read_o(MSGFIFO_Read_o[10]),
    .MSGFIFO_ReadData_o(MSGFIFO_ReadData_o[10]),
    .MSGFIFO_ReadValid_o(MSGFIFO_Read_Valid_o[10]),
    
    //===================================
    //        AXI Engine Signals
    //===================================
    // Read Vertex
    .HBM_StartRead(HBM_10_StartRead),
    .HBM_ReadBurst(HBM_10_ReadBurst),
    .HBM_ReadAddress(HBM_10_ReadAddress),
    .HBM_ReadData(HBM_10_ReadData),
    .HBM_ReadReady(HBM_10_ReadReady),
    .HBM_EndRead(HBM_10_EndRead),
    // Write Vertex
    .HBM_StartWrite(HBM_10_StartWrite),
    .HBM_WriteBurst(HBM_10_WriteBurst),
    .HBM_WriteAddress(HBM_10_WriteAddress),
    .HBM_WriteData(HBM_10_WriteData),
    .HBM_WriteReady(HBM_10_WriteReady),
    .HBM_WriteResp(HBM_10_WriteResp),
    .HBM_WriteLast(HBM_10_WriteLast),
    .HBM_EndWrite(HBM_10_EndWrite),
    // Read Edge
    .DDR_StartRead(DDR_10_StartRead),
    .DDR_ReadBurst(DDR_10_ReadBurst),
    .DDR_ReadAddress(DDR_10_ReadAddress),
    .DDR_ReadData(DDR_10_ReadData),
    .DDR_ReadReady(DDR_10_ReadReady),
    .DDR_EndRead(DDR_10_EndRead)
);

//===================================
//      Instantiate PE 11 
//===================================
PE #(
    .PE_NUM(4'hB)
) Processing_Element_11(
    .clk(clk),
    .reset(reset),
    
    .start(start),
    .regResetDone(regResetDone[11]),
    .regGraphDone(regGraphDone[11]),
    .MaxSuperblockAddress(MaxSuperblockAddress[11]),
    //===================================
    //      Message FIFO Signals
    //===================================
    // Message FIFO In Signals
    .MSGFIFO_Full_i(MSGFIFO_Full_i[11]),
    .MSGFIFO_Write_i(MSGFIFO_Write_i[11]),
    .MSGFIFO_WriteData_i(MSGFIFO_WriteData_i[11]),
    
    // Message FIFO Out Signals 
    .MSGFIFO_Empty_o(MSGFIFO_Empty_o[11]),
    .MSGFIFO_Read_o(MSGFIFO_Read_o[11]),
    .MSGFIFO_ReadData_o(MSGFIFO_ReadData_o[11]),
    .MSGFIFO_ReadValid_o(MSGFIFO_Read_Valid_o[11]),
    
    //===================================
    //        AXI Engine Signals
    //===================================
    // Read Vertex
    .HBM_StartRead(HBM_11_StartRead),
    .HBM_ReadBurst(HBM_11_ReadBurst),
    .HBM_ReadAddress(HBM_11_ReadAddress),
    .HBM_ReadData(HBM_11_ReadData),
    .HBM_ReadReady(HBM_11_ReadReady),
    .HBM_EndRead(HBM_11_EndRead),
    // Write Vertex
    .HBM_StartWrite(HBM_11_StartWrite),
    .HBM_WriteBurst(HBM_11_WriteBurst),
    .HBM_WriteAddress(HBM_11_WriteAddress),
    .HBM_WriteData(HBM_11_WriteData),
    .HBM_WriteReady(HBM_11_WriteReady),
    .HBM_WriteResp(HBM_11_WriteResp),
    .HBM_WriteLast(HBM_11_WriteLast),
    .HBM_EndWrite(HBM_11_EndWrite),
    // Read Edge
    .DDR_StartRead(DDR_11_StartRead),
    .DDR_ReadBurst(DDR_11_ReadBurst),
    .DDR_ReadAddress(DDR_11_ReadAddress),
    .DDR_ReadData(DDR_11_ReadData),
    .DDR_ReadReady(DDR_11_ReadReady),
    .DDR_EndRead(DDR_11_EndRead)
);

//===================================
//      Instantiate PE 12 
//===================================
PE #(
    .PE_NUM(4'hC)
) Processing_Element_12(
    .clk(clk),
    .reset(reset),
    
    .start(start),
    .regResetDone(regResetDone[12]),
    .regGraphDone(regGraphDone[12]),
    .MaxSuperblockAddress(MaxSuperblockAddress[12]),
    //===================================
    //      Message FIFO Signals
    //===================================
    // Message FIFO In Signals
    .MSGFIFO_Full_i(MSGFIFO_Full_i[12]),
    .MSGFIFO_Write_i(MSGFIFO_Write_i[12]),
    .MSGFIFO_WriteData_i(MSGFIFO_WriteData_i[12]),
    
    // Message FIFO Out Signals 
    .MSGFIFO_Empty_o(MSGFIFO_Empty_o[12]),
    .MSGFIFO_Read_o(MSGFIFO_Read_o[12]),
    .MSGFIFO_ReadData_o(MSGFIFO_ReadData_o[12]),
    .MSGFIFO_ReadValid_o(MSGFIFO_Read_Valid_o[12]),
    
    //===================================
    //        AXI Engine Signals
    //===================================
    // Read Vertex
    .HBM_StartRead(HBM_12_StartRead),
    .HBM_ReadBurst(HBM_12_ReadBurst),
    .HBM_ReadAddress(HBM_12_ReadAddress),
    .HBM_ReadData(HBM_12_ReadData),
    .HBM_ReadReady(HBM_12_ReadReady),
    .HBM_EndRead(HBM_12_EndRead),
    // Write Vertex
    .HBM_StartWrite(HBM_12_StartWrite),
    .HBM_WriteBurst(HBM_12_WriteBurst),
    .HBM_WriteAddress(HBM_12_WriteAddress),
    .HBM_WriteData(HBM_12_WriteData),
    .HBM_WriteReady(HBM_12_WriteReady),
    .HBM_WriteResp(HBM_12_WriteResp),
    .HBM_WriteLast(HBM_12_WriteLast),
    .HBM_EndWrite(HBM_12_EndWrite),
    // Read Edge
    .DDR_StartRead(DDR_12_StartRead),
    .DDR_ReadBurst(DDR_12_ReadBurst),
    .DDR_ReadAddress(DDR_12_ReadAddress),
    .DDR_ReadData(DDR_12_ReadData),
    .DDR_ReadReady(DDR_12_ReadReady),
    .DDR_EndRead(DDR_12_EndRead)
);

//===================================
//      Instantiate PE 13 
//===================================
PE #(
    .PE_NUM(4'hD)
) Processing_Element_13(
    .clk(clk),
    .reset(reset),
    
    .start(start),
    .regResetDone(regResetDone[13]),
    .regGraphDone(regGraphDone[13]),
    .MaxSuperblockAddress(MaxSuperblockAddress[13]),
    //===================================
    //      Message FIFO Signals
    //===================================
    // Message FIFO In Signals
    .MSGFIFO_Full_i(MSGFIFO_Full_i[13]),
    .MSGFIFO_Write_i(MSGFIFO_Write_i[13]),
    .MSGFIFO_WriteData_i(MSGFIFO_WriteData_i[13]),
    
    // Message FIFO Out Signals 
    .MSGFIFO_Empty_o(MSGFIFO_Empty_o[13]),
    .MSGFIFO_Read_o(MSGFIFO_Read_o[13]),
    .MSGFIFO_ReadData_o(MSGFIFO_ReadData_o[13]),
    .MSGFIFO_ReadValid_o(MSGFIFO_Read_Valid_o[13]),
    
    //===================================
    //        AXI Engine Signals
    //===================================
    // Read Vertex
    .HBM_StartRead(HBM_13_StartRead),
    .HBM_ReadBurst(HBM_13_ReadBurst),
    .HBM_ReadAddress(HBM_13_ReadAddress),
    .HBM_ReadData(HBM_13_ReadData),
    .HBM_ReadReady(HBM_13_ReadReady),
    .HBM_EndRead(HBM_13_EndRead),
    // Write Vertex
    .HBM_StartWrite(HBM_13_StartWrite),
    .HBM_WriteBurst(HBM_13_WriteBurst),
    .HBM_WriteAddress(HBM_13_WriteAddress),
    .HBM_WriteData(HBM_13_WriteData),
    .HBM_WriteReady(HBM_13_WriteReady),
    .HBM_WriteResp(HBM_13_WriteResp),
    .HBM_WriteLast(HBM_13_WriteLast),
    .HBM_EndWrite(HBM_13_EndWrite),
    // Read Edge
    .DDR_StartRead(DDR_13_StartRead),
    .DDR_ReadBurst(DDR_13_ReadBurst),
    .DDR_ReadAddress(DDR_13_ReadAddress),
    .DDR_ReadData(DDR_13_ReadData),
    .DDR_ReadReady(DDR_13_ReadReady),
    .DDR_EndRead(DDR_13_EndRead)
);

//===================================
//      Instantiate PE 14 
//===================================
PE #(
    .PE_NUM(4'hE)
) Processing_Element_14(
    .clk(clk),
    .reset(reset),
    
    .start(start),
    .regResetDone(regResetDone[14]),
    .regGraphDone(regGraphDone[14]),
    .MaxSuperblockAddress(MaxSuperblockAddress[14]),
    //===================================
    //      Message FIFO Signals
    //===================================
    // Message FIFO In Signals
    .MSGFIFO_Full_i(MSGFIFO_Full_i[14]),
    .MSGFIFO_Write_i(MSGFIFO_Write_i[14]),
    .MSGFIFO_WriteData_i(MSGFIFO_WriteData_i[14]),
    
    // Message FIFO Out Signals 
    .MSGFIFO_Empty_o(MSGFIFO_Empty_o[14]),
    .MSGFIFO_Read_o(MSGFIFO_Read_o[14]),
    .MSGFIFO_ReadData_o(MSGFIFO_ReadData_o[14]),
    .MSGFIFO_ReadValid_o(MSGFIFO_Read_Valid_o[14]),
    
    //===================================
    //        AXI Engine Signals
    //===================================
    // Read Vertex
    .HBM_StartRead(HBM_14_StartRead),
    .HBM_ReadBurst(HBM_14_ReadBurst),
    .HBM_ReadAddress(HBM_14_ReadAddress),
    .HBM_ReadData(HBM_14_ReadData),
    .HBM_ReadReady(HBM_14_ReadReady),
    .HBM_EndRead(HBM_14_EndRead),
    // Write Vertex
    .HBM_StartWrite(HBM_14_StartWrite),
    .HBM_WriteBurst(HBM_14_WriteBurst),
    .HBM_WriteAddress(HBM_14_WriteAddress),
    .HBM_WriteData(HBM_14_WriteData),
    .HBM_WriteReady(HBM_14_WriteReady),
    .HBM_WriteResp(HBM_14_WriteResp),
    .HBM_WriteLast(HBM_14_WriteLast),
    .HBM_EndWrite(HBM_14_EndWrite),
    // Read Edge
    .DDR_StartRead(DDR_14_StartRead),
    .DDR_ReadBurst(DDR_14_ReadBurst),
    .DDR_ReadAddress(DDR_14_ReadAddress),
    .DDR_ReadData(DDR_14_ReadData),
    .DDR_ReadReady(DDR_14_ReadReady),
    .DDR_EndRead(DDR_14_EndRead)
);

//===================================
//      Instantiate PE 15 
//===================================
PE #(
    .PE_NUM(4'hF)
) Processing_Element_15(
    .clk(clk),
    .reset(reset),
    
    .start(start),
    .regResetDone(regResetDone[15]),
    .regGraphDone(regGraphDone[15]),
    .MaxSuperblockAddress(MaxSuperblockAddress[15]),
    //===================================
    //      Message FIFO Signals
    //===================================
    // Message FIFO In Signals
    .MSGFIFO_Full_i(MSGFIFO_Full_i[15]),
    .MSGFIFO_Write_i(MSGFIFO_Write_i[15]),
    .MSGFIFO_WriteData_i(MSGFIFO_WriteData_i[15]),
    
    // Message FIFO Out Signals 
    .MSGFIFO_Empty_o(MSGFIFO_Empty_o[15]),
    .MSGFIFO_Read_o(MSGFIFO_Read_o[15]),
    .MSGFIFO_ReadData_o(MSGFIFO_ReadData_o[15]),
    .MSGFIFO_ReadValid_o(MSGFIFO_Read_Valid_o[15]),
    
    //===================================
    //        AXI Engine Signals
    //===================================
    // Read Vertex
    .HBM_StartRead(HBM_15_StartRead),
    .HBM_ReadBurst(HBM_15_ReadBurst),
    .HBM_ReadAddress(HBM_15_ReadAddress),
    .HBM_ReadData(HBM_15_ReadData),
    .HBM_ReadReady(HBM_15_ReadReady),
    .HBM_EndRead(HBM_15_EndRead),
    // Write Vertex
    .HBM_StartWrite(HBM_15_StartWrite),
    .HBM_WriteBurst(HBM_15_WriteBurst),
    .HBM_WriteAddress(HBM_15_WriteAddress),
    .HBM_WriteData(HBM_15_WriteData),
    .HBM_WriteReady(HBM_15_WriteReady),
    .HBM_WriteResp(HBM_15_WriteResp),
    .HBM_WriteLast(HBM_15_WriteLast),
    .HBM_EndWrite(HBM_15_EndWrite),
    // Read Edge
    .DDR_StartRead(DDR_15_StartRead),
    .DDR_ReadBurst(DDR_15_ReadBurst),
    .DDR_ReadAddress(DDR_15_ReadAddress),
    .DDR_ReadData(DDR_15_ReadData),
    .DDR_ReadReady(DDR_15_ReadReady),
    .DDR_EndRead(DDR_15_EndRead)
);

endmodule
