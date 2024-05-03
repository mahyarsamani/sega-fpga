`timescale 1ps / 1ps
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

module tb_top_kernel();

import axi_vip_pkg::*;
// DDRVIP
import MemoryInterfacesVIP_HBMVIP_0_pkg::*;
// 16 HBM VIPs
import MemoryInterfacesVIP_axi_vip_0_0_pkg::*;
import MemoryInterfacesVIP_HBMVIP0_0_pkg::*;
import MemoryInterfacesVIP_HBMVIP0_1_pkg::*;
import MemoryInterfacesVIP_HBMVIP0_2_pkg::*;
import MemoryInterfacesVIP_HBMVIP0_3_pkg::*;
import MemoryInterfacesVIP_HBMVIP_2_pkg::*;
import MemoryInterfacesVIP_HBMVIP_3_pkg::*;
import MemoryInterfacesVIP_HBMVIP_4_pkg::*;
import MemoryInterfacesVIP_HBMVIP_5_pkg::*;
import MemoryInterfacesVIP_HBMVIP_6_pkg::*;
import MemoryInterfacesVIP_HBMVIP_7_pkg::*;
import MemoryInterfacesVIP_HBMVIP_8_pkg::*;
import MemoryInterfacesVIP_HBMVIP_9_pkg::*;
import MemoryInterfacesVIP_HBMVIP_10_pkg::*;
import MemoryInterfacesVIP_HBMVIP_11_pkg::*;
import MemoryInterfacesVIP_HBMVIP_12_pkg::*;

MemoryInterfacesVIP_HBMVIP_0_slv_mem_t slv_agent0;
MemoryInterfacesVIP_axi_vip_0_0_slv_mem_t slv_agent1;
MemoryInterfacesVIP_HBMVIP0_0_slv_mem_t slv_agent2;
MemoryInterfacesVIP_HBMVIP0_1_slv_mem_t slv_agent3;
MemoryInterfacesVIP_HBMVIP0_2_slv_mem_t slv_agent4;
MemoryInterfacesVIP_HBMVIP0_3_slv_mem_t slv_agent5;
MemoryInterfacesVIP_HBMVIP_2_slv_mem_t slv_agent6;
MemoryInterfacesVIP_HBMVIP_3_slv_mem_t slv_agent7;
MemoryInterfacesVIP_HBMVIP_4_slv_mem_t slv_agent8;
MemoryInterfacesVIP_HBMVIP_5_slv_mem_t slv_agent9;
MemoryInterfacesVIP_HBMVIP_6_slv_mem_t slv_agent10;
MemoryInterfacesVIP_HBMVIP_7_slv_mem_t slv_agent11;
MemoryInterfacesVIP_HBMVIP_8_slv_mem_t slv_agent12;
MemoryInterfacesVIP_HBMVIP_9_slv_mem_t slv_agent13;
MemoryInterfacesVIP_HBMVIP_10_slv_mem_t slv_agent14;
MemoryInterfacesVIP_HBMVIP_11_slv_mem_t slv_agent15;
MemoryInterfacesVIP_HBMVIP_12_slv_mem_t slv_agent16;
initial begin
slv_agent0 = new("Slave vip agent DDR", kernel.inst_MemoryInterfacesVIP.MemoryInterfacesVIP_i.DDRVIP.inst.IF);
slv_agent1 = new("Slave vip agent HBM0", kernel.inst_MemoryInterfacesVIP.MemoryInterfacesVIP_i.HBMVIP0.inst.IF);
slv_agent2 = new("Slave vip agent HBM1", kernel.inst_MemoryInterfacesVIP.MemoryInterfacesVIP_i.HBMVIP1.inst.IF);
slv_agent3 = new("Slave vip agent HBM2", kernel.inst_MemoryInterfacesVIP.MemoryInterfacesVIP_i.HBMVIP2.inst.IF);
slv_agent4 = new("Slave vip agent HBM3", kernel.inst_MemoryInterfacesVIP.MemoryInterfacesVIP_i.HBMVIP3.inst.IF);
slv_agent5 = new("Slave vip agent HBM4", kernel.inst_MemoryInterfacesVIP.MemoryInterfacesVIP_i.HBMVIP4.inst.IF);
slv_agent6 = new("Slave vip agent HBM5", kernel.inst_MemoryInterfacesVIP.MemoryInterfacesVIP_i.HBMVIP5.inst.IF);
slv_agent7 = new("Slave vip agent HBM6", kernel.inst_MemoryInterfacesVIP.MemoryInterfacesVIP_i.HBMVIP6.inst.IF);
slv_agent8 = new("Slave vip agent HBM7", kernel.inst_MemoryInterfacesVIP.MemoryInterfacesVIP_i.HBMVIP7.inst.IF);
slv_agent9 = new("Slave vip agent HBM8", kernel.inst_MemoryInterfacesVIP.MemoryInterfacesVIP_i.HBMVIP8.inst.IF);
slv_agent10 = new("Slave vip agent HBM9", kernel.inst_MemoryInterfacesVIP.MemoryInterfacesVIP_i.HBMVIP9.inst.IF);
slv_agent11 = new("Slave vip agent HBM10", kernel.inst_MemoryInterfacesVIP.MemoryInterfacesVIP_i.HBMVIP10.inst.IF);
slv_agent12 = new("Slave vip agent HBM11", kernel.inst_MemoryInterfacesVIP.MemoryInterfacesVIP_i.HBMVIP11.inst.IF);
slv_agent13 = new("Slave vip agent HBM12", kernel.inst_MemoryInterfacesVIP.MemoryInterfacesVIP_i.HBMVIP12.inst.IF);
slv_agent14 = new("Slave vip agent HBM13", kernel.inst_MemoryInterfacesVIP.MemoryInterfacesVIP_i.HBMVIP13.inst.IF);
slv_agent15 = new("Slave vip agent HBM14", kernel.inst_MemoryInterfacesVIP.MemoryInterfacesVIP_i.HBMVIP14.inst.IF);
slv_agent16 = new("Slave vip agent HBM15", kernel.inst_MemoryInterfacesVIP.MemoryInterfacesVIP_i.HBMVIP15.inst.IF);

slv_agent0.start_slave();
slv_agent1.start_slave();
slv_agent2.start_slave();
slv_agent3.start_slave();
slv_agent4.start_slave();
slv_agent5.start_slave();
slv_agent6.start_slave();
slv_agent7.start_slave();
slv_agent8.start_slave();
slv_agent9.start_slave();
slv_agent10.start_slave();
slv_agent11.start_slave();
slv_agent12.start_slave();
slv_agent13.start_slave();
slv_agent14.start_slave();
slv_agent15.start_slave();
slv_agent16.start_slave();
end

// parameter VERTEX_DATAWIDTH = 128*2;
// parameter EDGE_DATAWIDTH = 64*8;
// parameter num_vertices = 1632803; // Pokec Graph
// parameter num_edges = 30622564; // Pokec Graph
// parameter LG = 1;
// parameter MEM_OFFSET = 102400; // Vertices per channel
// parameter MEMORY_OFFSET = 25; // Arbitor. Portion above lowest division of 2
// parameter AXI_CHANNEL_PARTITION = 16;
parameter num_vertices = 4096; // Facebook Graph
parameter num_edges = 88576; // Facebook Graph
parameter LG = 0;

// Vertex Memory 
bit [127:0] v_mem_b[num_vertices-1:0]; // Vertex
// Edge Memory
bit [63:0] e_mem_b[num_edges-1:0]; // Edge 
// GFResults
bit [127:0] v_mem_gf[num_vertices-1:0];
// Kernel Results
bit [127:0] Results[num_vertices-1:0];
int Results_entry;
// Variables
logic GraphDone;
logic Done;
logic [11:0] GPNControlAddr;
logic [11:0] FirstMessageAddr;
logic [11:0] MemoryOffset0Addr;
logic [11:0] MemoryOffset1Addr;
logic [11:0] MemoryOffset2Addr;
logic [11:0] MemoryOffset3Addr;
logic [11:0] MemoryOffset4Addr;
logic [11:0] MemoryOffset5Addr;
logic [11:0] MemoryOffset6Addr;
logic [11:0] MemoryOffset7Addr;
logic [11:0] MemoryOffset8Addr;
logic [11:0] MemoryOffset9Addr;
logic [11:0] MemoryOffset10Addr;
logic [11:0] MemoryOffset11Addr;
logic [11:0] MemoryOffset12Addr;
logic [11:0] MemoryOffset13Addr;
logic [11:0] MemoryOffset14Addr;
logic [11:0] MemoryOffset15Addr;
logic [11:0] MemoryOffset16Addr;
logic [11:0] TotalEdgeSizeAddr;
logic [31:0] GPNControl;
logic [63:0] FirstMessage;
logic [31:0] MemoryOffset0;
logic [31:0] MemoryOffset1;
logic [31:0] MemoryOffset2;
logic [31:0] MemoryOffset3;
logic [31:0] MemoryOffset4;
logic [31:0] MemoryOffset5;
logic [31:0] MemoryOffset6;
logic [31:0] MemoryOffset7;
logic [31:0] MemoryOffset8;
logic [31:0] MemoryOffset9;
logic [31:0] MemoryOffset10;
logic [31:0] MemoryOffset11;
logic [31:0] MemoryOffset12;
logic [31:0] MemoryOffset13;
logic [31:0] MemoryOffset14;
logic [31:0] MemoryOffset15;
logic [31:0] MemoryOffset16;
logic [31:0] TotalEdgeSize;

int Frontier0;
int Frontier1;
int Frontier2;
int Frontier3;
int Frontier4;
int Frontier5;
int FrontierNU;

reg ap_clk;
reg ap_rst_n;
reg sys_clk_100M_p;
reg sys_clk_100M_n;
reg sys_rst_n;

reg [255:0] LoadVertices_tdata;
reg LoadVertices_tvalid;
wire LoadVertices_tready;
reg LoadVertices_tlast;
wire [31:0] LoadVertices_tkeep = 32'hFFFF_FFFF;

reg [511:0] LoadEdges_tdata;
reg LoadEdges_tvalid;
wire LoadEdges_tready;
reg LoadEdges_tlast;
wire [63:0] LoadEdges_tkeep = 64'hFFFF_FFFF_FFFF_FFFF;

reg [255:0] Results_tdata;
wire Results_tvalid;
reg Results_tready;
reg Results_tlast;
wire [31:0] Results_tkeep;

// Write Channel
reg awvalid;
wire awready;
reg [11:0] awaddr;
reg wvalid;
wire wready;
reg [31:0] wdata;
wire bvalid;
reg bready;
wire [1:0] bresp;

// Read Channel
reg arvalid;
wire arready;
reg [11:0] araddr;
wire rvalid;
reg rready;
wire [31:0] rdata;
wire [1:0] rresp;

//==========================================
//            Clock (250MHz)
//==========================================
initial ap_clk = 1'b0;
always ap_clk = #(2000) ~ap_clk;

//==========================================
//     Differential Clock (100MHz)
//==========================================
initial sys_clk_100M_p = 1'b0;
always sys_clk_100M_p = #(5000) ~sys_clk_100M_p;
initial sys_clk_100M_n = 1'b1;
always sys_clk_100M_n = #(5000) ~sys_clk_100M_n;

//==========================================
//              Load Memory
//==========================================
initial begin
    // PE Mem
//    // GF
    if(LG == 1) begin
        $readmemh("vertices_pokec.txt", v_mem_b); $display("Loaded Vertices");
        $readmemh("edges_pokec.txt", e_mem_b); $display("Loaded Edges");
        $readmemh("truth_pokec_hex.mem", v_mem_gf); $display("Loaded Results");
    end
    else begin
        $readmemh("Vertices.mem", v_mem_b); $display("Loaded Vertices");
        $readmemh("edgelist.mem", e_mem_b); $display("Loaded Edges");
        $readmemh("truth.mem", v_mem_gf); $display("Loaded Results");
    end
    
    Frontier0 = 0;
    Frontier1 = 0;
    Frontier2 = 0;
    Frontier3 = 0;
    Frontier4 = 0;
    Frontier5 = 0;
    FrontierNU = 0;
    
    for(int i=0;i<num_vertices;i=i+1) begin
    if(v_mem_gf[i] == 8'd1) Frontier1 = Frontier1 + 1;
    else if(v_mem_gf[i] == 8'd2) Frontier2 = Frontier2 + 1;
    else if(v_mem_gf[i] == 8'd3) Frontier3 = Frontier3 + 1;
    else if(v_mem_gf[i] == 8'd4) Frontier4 = Frontier4 + 1;
    else if(v_mem_gf[i] == 8'd5) Frontier5 = Frontier5 + 1;
    else if(v_mem_gf[i] == 8'hFF) FrontierNU = FrontierNU + 1;
    end
    $display("Amount of Vertices Per Frontier");
    $display("Frontier0 = 0 | Frontier1 = %0d | Frontier2 = %0d | Frontier3 = %0d", Frontier1, Frontier2, Frontier3);
    $display("Frontier4 = %0d | Frontier5 = %0d | FrontierNU = %0d", Frontier4, Frontier5, FrontierNU);
end

initial begin
// Reset (1 Cycle) Kernel Holds Reset
ap_rst_n = 0;
sys_rst_n = 0;
LoadVertices_tvalid = 0;
LoadVertices_tlast = 0;
LoadEdges_tvalid = 0;
LoadEdges_tlast = 0;
awvalid = 0;
awaddr = 0;
wvalid = 0;
wdata = 0;
arvalid = 0;
araddr = 0;
rready = 0;
bready = 0;
GraphDone = 0;
Done = 0;
repeat(3) @(posedge ap_clk);
ap_rst_n = 1;
sys_rst_n = 1;
// Set Arguements
GPNControlAddr = 12'h010;
FirstMessageAddr = 12'h018;
MemoryOffset0Addr = 12'h024;
MemoryOffset1Addr = 12'h02c;
MemoryOffset2Addr = 12'h034;
MemoryOffset3Addr = 12'h03c;
MemoryOffset4Addr = 12'h044;
MemoryOffset5Addr = 12'h04c;
MemoryOffset6Addr = 12'h054;
MemoryOffset7Addr = 12'h05c;
MemoryOffset8Addr = 12'h064;
MemoryOffset9Addr = 12'h06c;
MemoryOffset10Addr = 12'h074;
MemoryOffset11Addr = 12'h07c;
MemoryOffset12Addr = 12'h084;
MemoryOffset13Addr = 12'h08c;
MemoryOffset14Addr = 12'h094;
MemoryOffset15Addr = 12'h09c;
MemoryOffset16Addr = 12'h0a4;
TotalEdgeSizeAddr = 12'h0ac;
GPNControl = 32'd0;
FirstMessage = 64'd0;
MemoryOffset0 = 32'd0;
MemoryOffset1 = 32'd1;
MemoryOffset2 = 32'd2;
MemoryOffset3 = 32'd3;
MemoryOffset4 = 32'd4;
MemoryOffset5 = 32'd4;
MemoryOffset6 = 32'd4;
MemoryOffset7 = 32'd4;
MemoryOffset8 = 32'd4;
MemoryOffset9 = 32'd4;
MemoryOffset10 = 32'd4;
MemoryOffset11 = 32'd4;
MemoryOffset12 = 32'd4;
MemoryOffset13 = 32'd4;
MemoryOffset14 = 32'd4;
MemoryOffset15 = 32'd4;
MemoryOffset16 = 32'd4;
TotalEdgeSize = 32'd172;

//==========================================
//        Send Setup Arguements
//==========================================
bready = 1;
// // Send GPNControl
// awvalid = 1;
// awaddr = GPNControlAddr;
// wait(awready);
// repeat(1) @(posedge ap_clk);
// awvalid = 0;
// wvalid = 1;
// wdata = GPNControl;
// wait(wready);
// repeat(1) @(posedge ap_clk);
// wvalid = 0;
// Send FirstMessage
awvalid = 1;
awaddr = FirstMessageAddr;
wait(awready);
repeat(1) @(posedge ap_clk);
awvalid = 0;
wvalid = 1;
wdata = FirstMessage[31:0];
wait(wready);
repeat(1) @(posedge ap_clk);
wvalid = 0;
awvalid = 1;
awaddr = FirstMessageAddr + 4'h4;
wait(awready);
repeat(1) @(posedge ap_clk);
awvalid = 0;
wvalid = 1;
wdata = FirstMessage[63:32];
wait(wready);
repeat(1) @(posedge ap_clk);
wvalid = 0;
$display("Sent FirstMessage = %h", FirstMessage);
// Send MemoryOffset0
awvalid = 1;
awaddr = MemoryOffset0Addr;
wait(awready);
repeat(1) @(posedge ap_clk);
awvalid = 0;
wvalid = 1;
wdata = MemoryOffset0;
wait(wready);
repeat(1) @(posedge ap_clk);
wvalid = 0;
$display("Sent MemoryOffset0 = %h", MemoryOffset0);
// Send MemoryOffset1
awvalid = 1;
awaddr = MemoryOffset1Addr;
wait(awready);
repeat(1) @(posedge ap_clk);
awvalid = 0;
wvalid = 1;
wdata = MemoryOffset1;
wait(wready);
repeat(1) @(posedge ap_clk);
wvalid = 0;
$display("Sent MemoryOffset1 = %h", MemoryOffset1);
// Send MemoryOffset2
awvalid = 1;
awaddr = MemoryOffset2Addr;
wait(awready);
repeat(1) @(posedge ap_clk);
awvalid = 0;
wvalid = 1;
wdata = MemoryOffset2;
wait(wready);
repeat(1) @(posedge ap_clk);
wvalid = 0;
$display("Sent MemoryOffset2 = %h", MemoryOffset2);
// Send MemoryOffset3
awvalid = 1;
awaddr = MemoryOffset3Addr;
wait(awready);
repeat(1) @(posedge ap_clk);
awvalid = 0;
wvalid = 1;
wdata = MemoryOffset3;
wait(wready);
repeat(1) @(posedge ap_clk);
wvalid = 0;
$display("Sent MemoryOffset3 = %h", MemoryOffset3);
// Send MemoryOffset4
awvalid = 1;
awaddr = MemoryOffset4Addr;
wait(awready);
repeat(1) @(posedge ap_clk);
awvalid = 0;
wvalid = 1;
wdata = MemoryOffset4;
wait(wready);
repeat(1) @(posedge ap_clk);
wvalid = 0;
$display("Sent MemoryOffset4 = %h", MemoryOffset4);
// Send MemoryOffset5
awvalid = 1;
awaddr = MemoryOffset5Addr;
wait(awready);
repeat(1) @(posedge ap_clk);
awvalid = 0;
wvalid = 1;
wdata = MemoryOffset5;
wait(wready);
repeat(1) @(posedge ap_clk);
wvalid = 0;
$display("Sent MemoryOffset5 = %h", MemoryOffset5);
// Send MemoryOffset6
awvalid = 1;
awaddr = MemoryOffset6Addr;
wait(awready);
repeat(1) @(posedge ap_clk);
awvalid = 0;
wvalid = 1;
wdata = MemoryOffset6;
wait(wready);
repeat(1) @(posedge ap_clk);
wvalid = 0;
$display("Sent MemoryOffset6 = %h", MemoryOffset6);
// Send MemoryOffset7
awvalid = 1;
awaddr = MemoryOffset7Addr;
wait(awready);
repeat(1) @(posedge ap_clk);
awvalid = 0;
wvalid = 1;
wdata = MemoryOffset7;
wait(wready);
repeat(1) @(posedge ap_clk);
wvalid = 0;
$display("Sent MemoryOffset7 = %h", MemoryOffset7);
// Send MemoryOffset8
awvalid = 1;
awaddr = MemoryOffset8Addr;
wait(awready);
repeat(1) @(posedge ap_clk);
awvalid = 0;
wvalid = 1;
wdata = MemoryOffset8;
wait(wready);
repeat(1) @(posedge ap_clk);
wvalid = 0;
$display("Sent MemoryOffset8 = %h", MemoryOffset8);
// Send MemoryOffset9
awvalid = 1;
awaddr = MemoryOffset9Addr;
wait(awready);
repeat(1) @(posedge ap_clk);
awvalid = 0;
wvalid = 1;
wdata = MemoryOffset9;
wait(wready);
repeat(1) @(posedge ap_clk);
wvalid = 0;
$display("Sent MemoryOffset9 = %h", MemoryOffset9);
// Send MemoryOffset10
awvalid = 1;
awaddr = MemoryOffset10Addr;
wait(awready);
repeat(1) @(posedge ap_clk);
awvalid = 0;
wvalid = 1;
wdata = MemoryOffset10;
wait(wready);
repeat(1) @(posedge ap_clk);
wvalid = 0;
$display("Sent MemoryOffset10 = %h", MemoryOffset10);
// Send MemoryOffset11
awvalid = 1;
awaddr = MemoryOffset11Addr;
wait(awready);
repeat(1) @(posedge ap_clk);
awvalid = 0;
wvalid = 1;
wdata = MemoryOffset11;
wait(wready);
repeat(1) @(posedge ap_clk);
wvalid = 0;
$display("Sent MemoryOffset11 = %h", MemoryOffset11);
// Send MemoryOffset12
awvalid = 1;
awaddr = MemoryOffset12Addr;
wait(awready);
repeat(1) @(posedge ap_clk);
awvalid = 0;
wvalid = 1;
wdata = MemoryOffset12;
wait(wready);
repeat(1) @(posedge ap_clk);
wvalid = 0;
$display("Sent MemoryOffset12 = %h", MemoryOffset12);
// Send MemoryOffset13
awvalid = 1;
awaddr = MemoryOffset13Addr;
wait(awready);
repeat(1) @(posedge ap_clk);
awvalid = 0;
wvalid = 1;
wdata = MemoryOffset13;
wait(wready);
repeat(1) @(posedge ap_clk);
wvalid = 0;
$display("Sent MemoryOffset13 = %h", MemoryOffset13);
// Send MemoryOffset14
awvalid = 1;
awaddr = MemoryOffset14Addr;
wait(awready);
repeat(1) @(posedge ap_clk);
awvalid = 0;
wvalid = 1;
wdata = MemoryOffset14;
wait(wready);
repeat(1) @(posedge ap_clk);
wvalid = 0;
$display("Sent MemoryOffset14 = %h", MemoryOffset14);
// Send MemoryOffset15
awvalid = 1;
awaddr = MemoryOffset15Addr;
wait(awready);
repeat(1) @(posedge ap_clk);
awvalid = 0;
wvalid = 1;
wdata = MemoryOffset15;
wait(wready);
repeat(1) @(posedge ap_clk);
wvalid = 0;
$display("Sent MemoryOffset15 = %h", MemoryOffset15);
// Send MemoryOffset16
awvalid = 1;
awaddr = MemoryOffset16Addr;
wait(awready);
repeat(1) @(posedge ap_clk);
awvalid = 0;
wvalid = 1;
wdata = MemoryOffset16;
wait(wready);
repeat(1) @(posedge ap_clk);
wvalid = 0;
$display("Sent MemoryOffset16 = %h", MemoryOffset16);
// Send TotalEdgeSize
awvalid = 1;
awaddr = TotalEdgeSizeAddr;
wait(awready);
repeat(1) @(posedge ap_clk);
awvalid = 0;
wvalid = 1;
wdata = TotalEdgeSize;
wait(wready);
repeat(1) @(posedge ap_clk);
wvalid = 0;
$display("Sent TotalEdgeSize = %h", TotalEdgeSize);
//==========================================
//          Start Kernel
//==========================================
// Send Start Signal
awvalid = 1;
awaddr = 12'h000;
wait(awready);
repeat(1) @(posedge ap_clk);
awvalid = 0;
wvalid = 1;
wdata = 32'd1;
wait(wready);
repeat(1) @(posedge ap_clk);
wvalid = 0;
$display("Started Kernel");
//==========================================
//    Start Loading Vertices & Edges
//==========================================
fork begin
$display("Loading Vertices");
for(int i=0;i<(num_vertices/2);i=i+1) begin
repeat(1) @(posedge ap_clk);
LoadVertices_tdata = {v_mem_b[(i*2)+1], v_mem_b[(i*2)]};
LoadVertices_tvalid = 1;
LoadVertices_tlast = (i==((num_vertices/2)-1));
wait(LoadVertices_tready);
repeat(1) @(posedge ap_clk);
LoadVertices_tvalid = 0;
end 
$display("Finished Loading Vertices");
end
begin
$display("Loading Edges");
for(int i=0;i<(num_edges/8);i=i+1) begin
repeat(1) @(posedge ap_clk);
LoadEdges_tdata = {e_mem_b[(i*8)+7], e_mem_b[(i*8)+6], e_mem_b[(i*8)+5], e_mem_b[(i*8)+4], e_mem_b[(i*8)+3], e_mem_b[(i*8)+2], e_mem_b[(i*8)+1], e_mem_b[(i*8)]};
LoadEdges_tvalid = 1;
LoadVertices_tlast = (i==((num_edges/2)-2));
wait(LoadEdges_tready);
repeat(1) @(posedge ap_clk);
LoadEdges_tvalid = 0;
end
$display("Finished Loading Edges");
end
join
//==========================================
//      Wait For Graph To Finish
//==========================================
$display("Wait For Graph Done");
while(~GraphDone) begin
// Wait for read ready (done)
arvalid = 1;
araddr = 12'h000;
wait(arready);
repeat(1) @(posedge ap_clk);
arvalid = 0;
rready = 1;
wait(rvalid);
repeat(1) @(posedge ap_clk);
GraphDone = rdata[1];
rready = 0;
repeat(20) @(posedge ap_clk);
end
//==========================================
//        Start Checking Results
//==========================================
$display("Start Checking Results");
for(int i=0;i<num_vertices;i=i+1) begin
if(Results[i][127:120] != v_mem_gf[i])
$display("Failed Results at %0d | %h", i, Results[i]);
end
Done = 1;
end

//==========================================
//          Buffer Results
//==========================================
initial begin 
Results_entry = 0;
Results_tready = 0;
repeat(2) @(posedge ap_clk);
Results_tready = 1;
while(Results_entry < num_vertices) begin
    repeat(1) @(posedge ap_clk);
    if(Results_tvalid) begin
        Results[Results_entry] = Results_tdata[127:0];
        Results[Results_entry+1] = Results_tdata[255:128];
        Results_entry = Results_entry + 2;
    end
end
$display("Last Result");
repeat(1) @(posedge ap_clk);
Results_tready = 0;
end


data_results_kernel #(
    .num_vertices(num_vertices),.num_edges(num_edges)
) udata_results(
    .clk(kernel.GPN.clk),
    .GraphDone(GraphDone),
    .Done(Done)
);
//==========================================
//         Kernel
//==========================================

kernel kernel(
.ap_clk(ap_clk),
.ap_rst_n(ap_rst_n),
.ddr0_sys_100M_p(sys_clk_100M_p),
.ddr0_sys_100M_n(sys_clk_100M_n),
// AXI Streams
.LoadVertices_tdata(LoadVertices_tdata),
.LoadVertices_tvalid(LoadVertices_tvalid),
.LoadVertices_tready(LoadVertices_tready),
.LoadVertices_tlast(LoadVertices_tlast),
.LoadVertices_tkeep(LoadVertices_tkeep),

.LoadEdges_tdata(LoadEdges_tdata),
.LoadEdges_tvalid(LoadEdges_tvalid),
.LoadEdges_tready(LoadEdges_tready),
.LoadEdges_tlast(LoadEdges_tlast),
.LoadEdges_tkeep(LoadEdges_tkeep),

.Results_tdata(Results_tdata),
.Results_tvalid(Results_tvalid),
.Results_tready(Results_tready),
.Results_tlast(Results_tlast),
.Results_tkeep(Results_tkeep),
// Control S AXI
.s_axi_control_awvalid(awvalid),
.s_axi_control_awready(awready),
.s_axi_control_awaddr(awaddr),
.s_axi_control_wvalid(wvalid),
.s_axi_control_wready(wready),
.s_axi_control_wdata(wdata),
.s_axi_control_wstrb(4'hF),
.s_axi_control_arvalid(arvalid),
.s_axi_control_arready(arready),
.s_axi_control_araddr(araddr),
.s_axi_control_rvalid(rvalid),
.s_axi_control_rready(rready),
.s_axi_control_rdata(rdata),
.s_axi_control_rresp(rresp),
.s_axi_control_bvalid(bvalid),
.s_axi_control_bready(bready),
.s_axi_control_bresp(bresp),
.interrupt()
);

endmodule
