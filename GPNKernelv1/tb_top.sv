`timescale 1ns / 10ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 01:01:11 PM
// Design Name: 
// Module Name: tb_top
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

module tb_top();

parameter VERTEX_DATAWIDTH = 128*2;
parameter EDGE_DATAWIDTH = 64*8;
//parameter num_vertices = 1632803; // Pokec Graph
//parameter num_edges = 30622564; // Pokec Graph
//parameter LG = 1;
//parameter MEM_OFFSET = 102400; // Vertices per channel
//parameter MEMORY_OFFSET = 25; // Arbitor. Portion above lowest division of 2
//parameter AXI_CHANNEL_PARTITION = 16;
parameter num_vertices = 4039; // Facebook Graph
parameter num_edges = 88234; // Facebook Graph
parameter LG = 0;
parameter MEM_OFFSET = 256; // Vertices per channel
parameter MEMORY_OFFSET = 1; // Arbitor. Portion above lowest division of 2
parameter AXI_CHANNEL_PARTITION = 12; // Arbitor. Portion below lowest division of 2. 2^(x-4) = Vertices per channel, 15 = 2048, 14 = 1024, 13 = 512

// Vertex Memory 
bit [127:0] v_mem_b[num_vertices-1:0]; // Vertex
// Edge Memory
bit [63:0] e_mem_b[num_edges-1:0]; // Edge 


// Variables
int thousand_cycles;
int file;
bit Done;
logic ResetDone;
logic GraphDone;
logic First_Message_Write;
logic [63:0] First_Message;
int Frontier0;
int Frontier1;
int Frontier2;
int Frontier3;
int Frontier4;
int Frontier5;
int FrontierNU;

wire        HBM_StartRead;
wire  [7:0] HBM_ReadBurst;
wire [32:0] HBM_ReadAddress;
wire [VERTEX_DATAWIDTH-1:0] HBM_ReadData;
wire        HBM_ReadReady;
wire        HBM_EndRead;
// Write Vertex
wire        HBM_StartWrite;
wire  [7:0] HBM_WriteBurst;
wire [31:0] HBM_WriteStrobe;
wire [32:0] HBM_WriteAddress;
wire [VERTEX_DATAWIDTH-1:0] HBM_WriteData;
wire        HBM_WriteReady;
wire        HBM_WriteResp;
wire  [1:0] HBM_EndWrite;
// Read Edge
wire        DDR_StartRead;
wire  [7:0] DDR_ReadBurst;
wire [32:0] DDR_ReadAddress;
wire [EDGE_DATAWIDTH-1:0] DDR_ReadData;
wire        DDR_ReadReady;
wire        DDR_EndRead;
// Write Edge
wire        DDR_StartWrite;
wire  [7:0] DDR_WriteBurst;
wire [32:0] DDR_WriteAddress;
wire [EDGE_DATAWIDTH-1:0] DDR_WriteData;
wire        DDR_WriteReady;
wire        DDR_WriteResp;
wire  [1:0] DDR_EndWrite;

reg clk;
reg resetn;
wire reset;

//==========================================
//            Clock (100MHz)
//==========================================
initial clk = 1'b0;
always #5ns clk = ~clk;
assign reset = ~resetn;

initial begin
//==========================================
//              Load Memory
//==========================================
// PE Mem
if(LG == 1) begin
    $readmemh("vertices_pokec.txt", v_mem_b); $display("Loaded Pokec Vertices");
    $readmemh("edges_pokec.txt", e_mem_b); $display("Loaded Pokec Edges");
    $readmemh("truth_pokec_hex.mem", udata_results.v_mem_gf); $display("Loaded Pokec GF");
end
else begin
    $readmemh("vertices.txt", v_mem_b); $display("Loaded Facebook Vertices");
    $readmemh("edgelist.txt", e_mem_b); $display("Loaded Facebook Edges");
    $readmemh("truth.txt", udata_results.v_mem_gf); $display("Loaded Facebook GF");
end

Frontier0 = 0;
Frontier1 = 0;
Frontier2 = 0;
Frontier3 = 0;
Frontier4 = 0;
Frontier5 = 0;
FrontierNU = 0;

for(int j=0;j<num_vertices;j=j+1) begin
    if(udata_results.v_mem_gf[j] == 8'h00) Frontier0 = Frontier0 + 1;
    else if(udata_results.v_mem_gf[j] == 8'h01) Frontier1 = Frontier1 + 1;
    else if(udata_results.v_mem_gf[j] == 8'h02) Frontier2 = Frontier2 + 1;
    else if(udata_results.v_mem_gf[j] == 8'h03) Frontier3 = Frontier3 + 1;
    else if(udata_results.v_mem_gf[j] == 8'h04) Frontier4 = Frontier4 + 1;
    else if(udata_results.v_mem_gf[j] == 8'h05) Frontier5 = Frontier5 + 1;
    else if(udata_results.v_mem_gf[j] == 8'hFF) FrontierNU = FrontierNU + 1;
end
$display("Amount of Vertices Per Frontier");
$display("Frontier0 = %0d | Frontier1 = %0d | Frontier2 = %0d | Frontier3 = %0d", Frontier0, Frontier1, Frontier2, Frontier3);
$display("Frontier4 = %0d | Frontier5 = %0d | FrontierNU = %0d", Frontier4, Frontier5, FrontierNU);
//$stop;
//==========================================
//                 Reset
//==========================================
resetn = 1'b0;
// Reset Driver Signals
Done = 0;
First_Message_Write = 1'b0;
First_Message = 64'd0;

repeat(50) @(posedge clk);
wait(ResetDone);
resetn = 1'b1;
repeat(3) @(posedge clk);
//$stop;
$display("Sending First Message");
First_Message = 64'd0; //{33'hef00, 31'd0};; //{1'b0, base_addr, 31'd0}; // Starting vertex
First_Message_Write = 1'b1;
repeat(1) @(posedge clk);
First_Message = 64'd0;
First_Message_Write = 16'd0;
repeat(3) @(posedge clk);

//==========================================
//    Wait For Graph To Finish
//==========================================
while(~GraphDone) begin
    repeat(1) @(posedge clk);
end

#1000;

repeat(3) @(posedge clk);
Done = 1;
#100;
$finish;
end

//==========================================
//      Collect Data and Results
//==========================================
data_results #(
    .num_vertices(num_vertices),.num_edges(num_edges),.MEM_OFFSET(MEM_OFFSET)
) udata_results(
    .clk(clk),
    .GraphDone(GraphDone),
    .Done(Done)
);

//==========================================
//  Processing Element (IPs, MPU, VMU, MGU)
//==========================================
top_wrapper #(
    .MEMORY_OFFSET(MEMORY_OFFSET),.AXI_CHANNEL_PARTITION(AXI_CHANNEL_PARTITION)
) utop_wrapper(
    .clk(clk),
    .reset(reset),
    
    .FirstMessage(First_Message),
    .FirstMessage_Write(First_Message_Write),
    
    .ResetDone(ResetDone),
    .GraphDone(GraphDone),
    
    //===================================
    //  Master AXI Engine Signals
    //===================================
    // Read Vertex
    .HBM_StartRead(HBM_StartRead),
    .HBM_ReadBurst(HBM_ReadBurst),
    .HBM_ReadAddress(HBM_ReadAddress),
    .HBM_ReadData(HBM_ReadData),
    .HBM_ReadReady(HBM_ReadReady),
    .HBM_EndRead(HBM_EndRead),
    // Write Vertex
    .HBM_StartWrite(HBM_StartWrite),
    .HBM_WriteBurst(HBM_WriteBurst),
    .HBM_WriteStrobe(HBM_WriteStrobe),
    .HBM_WriteAddress(HBM_WriteAddress),
    .HBM_WriteData(HBM_WriteData),
    .HBM_WriteReady(HBM_WriteReady),
    .HBM_WriteResp(HBM_WriteResp),
    .HBM_EndWrite(HBM_EndWrite),
    // Read Edge
    .DDR_StartRead(DDR_StartRead),
    .DDR_ReadBurst(DDR_ReadBurst),
    .DDR_ReadAddress(DDR_ReadAddress),
    .DDR_ReadData(DDR_ReadData),
    .DDR_ReadReady(DDR_ReadReady),
    .DDR_EndRead(DDR_EndRead),
    // Write Edge
    .DDR_StartWrite(DDR_StartWrite),
    .DDR_WriteBurst(DDR_WriteBurst),
    .DDR_WriteAddress(DDR_WriteAddress),
    .DDR_WriteData(DDR_WriteData),
    .DDR_WriteReady(DDR_WriteReady),
    .DDR_WriteResp(DDR_WriteResp),
    .DDR_EndWrite(DDR_EndWrite)
);

memory_driver #(
    .OFFSET(4)
) uHBM(
    .clk(clk),
    .reset(reset),

    .StartWrite(HBM_StartWrite),
    .WriteAddress(HBM_WriteAddress),
    .WriteBurst(HBM_WriteBurst),
    .WriteStrobe(HBM_WriteStrobe),
    .WriteData(HBM_WriteData),
    .WriteReady(HBM_WriteReady),
    .WriteResp(HBM_WriteResp),
    .EndWrite(HBM_EndWrite),

    .StartRead(HBM_StartRead),
    .ReadAddress(HBM_ReadAddress),
    .ReadBurst(HBM_ReadBurst),
    .ReadData(HBM_ReadData),
    .ReadReady(HBM_ReadReady),
    .EndRead(HBM_EndRead)
);

memory_driver #(
    .DATA_WIDTH(512),
    .OFFSET(3)
) uDDR(
    .clk(clk),
    .reset(reset),

    .StartWrite(DDR_StartWrite),
    .WriteAddress(DDR_WriteAddress),
    .WriteBurst(DDR_WriteBurst),
    .WriteStrobe(64'hFFFFFFFFFFFFFFFF),
    .WriteData(DDR_WriteData),
    .WriteReady(DDR_WriteReady),
    .WriteResp(DDR_WriteResp),
    .EndWrite(DDR_EndWrite),

    .StartRead(DDR_StartRead),
    .ReadAddress(DDR_ReadAddress),
    .ReadBurst(DDR_ReadBurst),
    .ReadData(DDR_ReadData),
    .ReadReady(DDR_ReadReady),
    .EndRead(DDR_EndRead)
);

endmodule
