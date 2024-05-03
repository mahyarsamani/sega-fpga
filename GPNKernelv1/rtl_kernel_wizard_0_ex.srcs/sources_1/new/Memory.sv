`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2024 01:07:24 PM
// Design Name: 
// Module Name: Memory
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

/*
 * Copyright 2019 - 2020, RC4ML, Zhejiang University
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

//`include "hbm_bench.vh"

module Memory#(
    parameter integer C_S_AXI_CONTROL_ADDR_WIDTH = 12 ,
    parameter integer C_S_AXI_CONTROL_DATA_WIDTH = 32 ,
    parameter integer C_LOADVERTICES_TDATA_WIDTH = 256,
    parameter integer C_LOADEDGES_TDATA_WIDTH    = 512,
    parameter integer C_RESULTS_TDATA_WIDTH      = 256,
    parameter NUMVERTICES                        = 1000,
    parameter NUMEDGES                           = 10000
   )(
   
/////////ddr0////////
    input                       ddr0_sys_100M_p,
    input                       ddr0_sys_100M_n,

    output                      d32_port,

    output                      c0_ddr4_act_n,
    output [16:0]               c0_ddr4_adr,
    output [1:0]                c0_ddr4_ba,
    output [1:0]                c0_ddr4_bg,
    output [0:0]                c0_ddr4_cke,
    output [0:0]                c0_ddr4_odt,
    output [0:0]                c0_ddr4_cs_n,
    output [0:0]                c0_ddr4_ck_t,
    output [0:0]                c0_ddr4_ck_c,
    output                      c0_ddr4_reset_n,
    output                      c0_ddr4_parity,
    inout  [71:0]               c0_ddr4_dq,
    inout  [17:0]               c0_ddr4_dqs_t,
    inout  [17:0]               c0_ddr4_dqs_c,
    
  // System Signals
  input  wire                                    ap_clk               ,
  input  wire                                    ap_rst_n             ,
  //  Note: A minimum subset of AXI4 memory mapped signals are declared.  AXI
  // signals omitted from these interfaces are automatically inferred with the
  // optimal values for Xilinx accleration platforms.  This allows Xilinx AXI4 Interconnects
  // within the system to be optimized by removing logic for AXI4 protocol
  // features that are not necessary. When adapting AXI4 masters within the RTL
  // kernel that have signals not declared below, it is suitable to add the
  // signals to the declarations below to connect them to the AXI4 Master.
  // 
  // List of ommited signals - effect
  // -------------------------------
  // ID - Transaction ID are used for multithreading and out of order
  // transactions.  This increases complexity. This saves logic and increases Fmax
  // in the system when ommited.
  // SIZE - Default value is log2(data width in bytes). Needed for subsize bursts.
  // This saves logic and increases Fmax in the system when ommited.
  // BURST - Default value (0b01) is incremental.  Wrap and fixed bursts are not
  // recommended. This saves logic and increases Fmax in the system when ommited.
  // LOCK - Not supported in AXI4
  // CACHE - Default value (0b0011) allows modifiable transactions. No benefit to
  // changing this.
  // PROT - Has no effect in current acceleration platforms.
  // QOS - Has no effect in current acceleration platforms.
  // REGION - Has no effect in current acceleration platforms.
  // USER - Has no effect in current acceleration platforms.
  // RESP - Not useful in most acceleration platforms.
  // 
  // AXI4-Stream (slave) interface LoadVertices
  input  wire                                    LoadVertices_tvalid  ,
  output wire                                    LoadVertices_tready  ,
  input  wire [C_LOADVERTICES_TDATA_WIDTH-1:0]   LoadVertices_tdata   ,
  input  wire [C_LOADVERTICES_TDATA_WIDTH/8-1:0] LoadVertices_tkeep   ,
  input  wire                                    LoadVertices_tlast   ,
  // AXI4-Stream (slave) interface LoadEdges
  input  wire                                    LoadEdges_tvalid     ,
  output wire                                    LoadEdges_tready     ,
  input  wire [C_LOADEDGES_TDATA_WIDTH-1:0]      LoadEdges_tdata      ,
  input  wire [C_LOADEDGES_TDATA_WIDTH/8-1:0]    LoadEdges_tkeep      ,
  input  wire                                    LoadEdges_tlast      ,
  // AXI4-Stream (master) interface Results
  output wire                                    Results_tvalid       ,
  input  wire                                    Results_tready       ,
  output wire [C_RESULTS_TDATA_WIDTH-1:0]        Results_tdata        ,
  output wire [C_RESULTS_TDATA_WIDTH/8-1:0]      Results_tkeep        ,
  output wire                                    Results_tlast        ,
  // AXI4-Lite slave interface
  input  wire                                    s_axi_control_awvalid,
  output wire                                    s_axi_control_awready,
  input  wire [C_S_AXI_CONTROL_ADDR_WIDTH-1:0]   s_axi_control_awaddr ,
  input  wire                                    s_axi_control_wvalid ,
  output wire                                    s_axi_control_wready ,
  input  wire [C_S_AXI_CONTROL_DATA_WIDTH-1:0]   s_axi_control_wdata  ,
  input  wire [C_S_AXI_CONTROL_DATA_WIDTH/8-1:0] s_axi_control_wstrb  ,
  input  wire                                    s_axi_control_arvalid,
  output wire                                    s_axi_control_arready,
  input  wire [C_S_AXI_CONTROL_ADDR_WIDTH-1:0]   s_axi_control_araddr ,
  output wire                                    s_axi_control_rvalid ,
  input  wire                                    s_axi_control_rready ,
  output wire [C_S_AXI_CONTROL_DATA_WIDTH-1:0]   s_axi_control_rdata  ,
  output wire [2-1:0]                            s_axi_control_rresp  ,
  output wire                                    s_axi_control_bvalid ,
  input  wire                                    s_axi_control_bready ,
  output wire [2-1:0]                            s_axi_control_bresp  ,
  output wire                                    interrupt            
);
// KERNEL PORT
///////////////////////////////////////////////////////////////////////////////
// Wires and Variables
///////////////////////////////////////////////////////////////////////////////
(* DONT_TOUCH = "yes" *)
reg                                 areset                         = 1'b0;
wire                                ap_start                      ;
wire                                ap_idle                       ;
logic                               ap_start_r                     = 1'b0;
logic                               ap_idle_r                      = 1'b1;
logic                               ap_start_pulse                ;
wire                                ap_done                       ;
wire                                ap_ready                      ;
logic                               GPN_start_r = 1'b0;
logic                               GPN_start_pulse;
wire [64-1:0]                       FirstMessage                  ;
wire                                GraphDone;
   wire               APB_0_PCLK      ;
   wire               APB_0_PRESET_N  ;
   wire               AXI_ACLK_IN_0   ;
   wire               AXI_ARESET_N_0  ;
   wire               HBM_REF_CLK_0   ;
   wire               DDR0_sys_clk    ;
   //wire               ddr_sys_100M    ;
   wire               locked;
   wire               ddr0_sys_100M;

(* keep = "TRUE" *)   wire          AXI_ACLK_IN_0_buf;

////////////////////////////////////////////////////////////////////////////////
// Instantiating BUFG for AXI Clock
////////////////////////////////////////////////////////////////////////////////
(* keep = "TRUE" *) wire      APB_0_PCLK_IBUF;
(* keep = "TRUE" *) wire      APB_0_PCLK_BUF;
    IBUFDS #(
      .IBUF_LOW_PWR("TRUE")     // Low power="TRUE", Highest performance="FALSE" 
   ) IBUFDS0_inst (
      .O(ddr0_sys_100M),  // Buffer output
      .I(ddr0_sys_100M_p),  // Diff_p buffer input (connect directly to top-level port)
      .IB(ddr0_sys_100M_n) // Diff_n buffer input (connect directly to top-level port)
   );
 
   
     BUFG BUFG0_inst (
      .O(DDR0_sys_clk), // 1-bit output: Clock output
      .I(ddr0_sys_100M)  // 1-bit input: Clock input
   ); 
   
IBUF u_APB_0_PCLK_IBUF  (
  .I (APB_0_PCLK),
  .O (APB_0_PCLK_IBUF)
);

BUFG u_APB_0_PCLK_BUFG  (
  .I (APB_0_PCLK_IBUF),
  .O (APB_0_PCLK_BUF)
);

BUFG u_AXI_ACLK_IN_0  (
  .I (AXI_ACLK_IN_0),
  .O (AXI_ACLK_IN_0_buf)
);

  clk_wiz_0 inst_clk_wiz_0
   (
    // Clock out ports
    .clk_out1(AXI_ACLK_IN_0),     // output clk_out1
    .clk_out2(APB_0_PCLK),     // output clk_out2
    .clk_out3(HBM_REF_CLK_0),     // output clk_out3
    // Status and control signals
    .reset(1'b0), // input reset
    .locked(locked),       // output locked
   // Clock in ports
    .clk_in1(DDR0_sys_clk));      // input clk_in1
    
    assign APB_0_PRESET_N = locked;
    assign AXI_ARESET_N_0 = locked;
    
assign d32_port                = 1'b0;
// Register and invert reset signal.
always @(posedge ap_clk) begin
  areset <= ~ap_rst_n;
end
// create pulse when ap_start transitions to 1
always @(posedge ap_clk) begin
  begin
    ap_start_r <= (ap_start && locked);
  end
end

assign ap_start_pulse = ap_start && locked && ~ap_start_r;

always @(posedge AXI_ACLK_IN_0_buf) begin
    GPN_start_r <= (ap_start && locked);
end

assign GPN_start_pulse = ap_start && locked && ~GPN_start_r;
// ap_idle is asserted when done is asserted, it is de-asserted when ap_start_pulse
// is asserted
always @(posedge ap_clk) begin
  if (areset) begin
    ap_idle_r <= 1'b1;
  end
  else begin
    ap_idle_r <= ap_done ? 1'b1 :
      ap_start_pulse ? 1'b0 : ap_idle;
  end
end

assign ap_idle = ap_idle_r;
assign ap_ready = ap_done;

///////////////////////////////////////////////////////////////////////////////
// Begin control interface RTL.  Modifying not recommended.
///////////////////////////////////////////////////////////////////////////////
// AXI4-Lite slave interface
rtl_kernel_wizard_0_control_s_axi #(
  .C_S_AXI_ADDR_WIDTH ( C_S_AXI_CONTROL_ADDR_WIDTH ),
  .C_S_AXI_DATA_WIDTH ( C_S_AXI_CONTROL_DATA_WIDTH )
)
inst_control_s_axi (
  .ACLK         ( ap_clk                ),
  .ARESET       ( areset                ),
  .ACLK_EN      ( 1'b1                  ),
  .AWVALID      ( s_axi_control_awvalid ),
  .AWREADY      ( s_axi_control_awready ),
  .AWADDR       ( s_axi_control_awaddr  ),
  .WVALID       ( s_axi_control_wvalid  ),
  .WREADY       ( s_axi_control_wready  ),
  .WDATA        ( s_axi_control_wdata   ),
  .WSTRB        ( s_axi_control_wstrb   ),
  .ARVALID      ( s_axi_control_arvalid ),
  .ARREADY      ( s_axi_control_arready ),
  .ARADDR       ( s_axi_control_araddr  ),
  .RVALID       ( s_axi_control_rvalid  ),
  .RREADY       ( s_axi_control_rready  ),
  .RDATA        ( s_axi_control_rdata   ),
  .RRESP        ( s_axi_control_rresp   ),
  .BVALID       ( s_axi_control_bvalid  ),
  .BREADY       ( s_axi_control_bready  ),
  .BRESP        ( s_axi_control_bresp   ),
  .interrupt    ( interrupt             ),
  .ap_start     ( ap_start              ),
  .ap_done      ( ap_done               ),
  .ap_ready     ( ap_ready              ),
  .ap_idle      ( ap_idle               ),
  .FirstMessage ( FirstMessage          )
);
wire start;
assign start = (state_EDGESFIFO_out[4] && state_VERTICESFIFO_out[4]) ? 1'b1 : 1'b0;

reg  HBM_00_StartRead;
reg  [32:0] HBM_00_ReadAddr;
reg  [7:0] HBM_00_ReadBurst;
wire [255:0] HBM_00_ReadData;
wire HBM_00_ReadReady;
wire HBM_00_EndRead;

reg  HBM_00_StartWrite;
reg  [32:0] HBM_00_WriteAddr;
reg  [7:0] HBM_00_WriteBurst;
reg  HBM_00_WriteReady;
reg  [255:0] HBM_00_WriteData;
wire HBM_00_WriteResp;
wire HBM_00_WriteLast;
wire HBM_00_EndWrite;

reg  DDR_00_StartRead;
reg  [32:0] DDR_00_ReadAddr;
reg  [7:0] DDR_00_ReadBurst;
wire [511:0] DDR_00_ReadData;
wire DDR_00_ReadReady;
wire DDR_00_EndRead;

reg  DDR_00_StartWrite;
reg  [32:0] DDR_00_WriteAddr;
reg  [7:0] DDR_00_WriteBurst;
reg  DDR_00_WriteReady;
reg  [511:0] DDR_00_WriteData;
wire DDR_00_WriteResp;
wire DDR_00_WriteLast;
wire DDR_00_EndWrite;

// PE Wires
wire HBM_00_StartRead_PE;
wire [32:0] HBM_00_ReadAddr_PE;
wire [7:0] HBM_00_ReadBurst_PE;
wire [255:0] HBM_00_ReadData_PE;
reg HBM_00_ReadReady_PE;
reg HBM_00_EndRead_PE;

wire HBM_00_StartWrite_PE;
wire [32:0] HBM_00_WriteAddr_PE;
wire [7:0] HBM_00_WriteBurst_PE;
wire HBM_00_WriteReady_PE;
wire [255:0] HBM_00_WriteData_PE;
reg HBM_00_WriteResp_PE;
reg HBM_00_WriteLast_PE;
reg HBM_00_EndWrite_PE;

wire DDR_00_StartRead_PE;
wire [32:0] DDR_00_ReadAddr_PE;
wire [7:0] DDR_00_ReadBurst_PE;
//=========================================
//   AXI Stream to AXI Engine HBM
//=========================================
wire VERTICESFIFO_Full;
wire VERTICESFIFO_Empty;
reg  VERTICESFIFO_WriteEn;
reg  VERTICESFIFO_ReadEn;
reg  [31:0] HBM_writecounter;
reg  LoadVertices_tready_r;

reg  HBM_00_StartWrite_Host;
reg  [32:0] HBM_00_WriteAddr_Host;
wire [7:0] HBM_00_WriteBurst_Host;
reg  HBM_00_WriteReady_Host;
wire [255:0] HBM_00_WriteData_Host;

reg [4:0] state_VERTICESFIFO_in;
reg [4:0] state_VERTICESFIFO_out;
localparam
IDLE       = 5'b00001,
STARTREAD  = 5'b00010,
STARTWRITE = 5'b00010,
WRITE      = 5'b00100,
READ       = 5'b00100,
ENDWRITE   = 5'b01000,
ENDREAD    = 5'b01000,
FINISH     = 5'b10000;

assign HBM_00_WriteBurst_Host = 8'd127;
assign LoadVertices_tready = LoadVertices_tready_r;
//=================
//    HOST SIDE
//=================
always @(posedge ap_clk) begin
case(state_VERTICESFIFO_in)
IDLE: 
	if(ap_start_pulse) 
		state_VERTICESFIFO_in <= STARTREAD;
	else 
		state_VERTICESFIFO_in <= IDLE;
STARTREAD: 
	if(~VERTICESFIFO_Full && LoadVertices_tvalid && LoadVertices_tlast) 
		state_VERTICESFIFO_in <= FINISH;
	else 
		state_VERTICESFIFO_in <= STARTREAD;
FINISH: 
	state_VERTICESFIFO_in <= IDLE;
default: state_VERTICESFIFO_in <= IDLE;
endcase
end

always @(posedge ap_clk) begin
    LoadVertices_tready_r <= (state_VERTICESFIFO_in[1] && ~VERTICESFIFO_Full && locked);
    VERTICESFIFO_WriteEn <= (state_VERTICESFIFO_in[1] && ~VERTICESFIFO_Full && locked && LoadVertices_tvalid);
end

//=================
//    FPGA SIDE
//=================
always @(posedge AXI_ACLK_IN_0_buf) begin
case(state_VERTICESFIFO_out)
IDLE: 
	if(GPN_start_pulse) 
		state_VERTICESFIFO_out <= STARTWRITE;
	else 
		state_VERTICESFIFO_out <= IDLE;
STARTWRITE: 
	if(~VERTICESFIFO_Empty) 
		state_VERTICESFIFO_out <= WRITE;
	else 
		state_VERTICESFIFO_out <= STARTWRITE;
WRITE:
    if(HBM_00_WriteLast) 
        state_VERTICESFIFO_out <= ENDWRITE;
    else 
        state_VERTICESFIFO_out <= WRITE;
ENDWRITE: 
	if(HBM_00_EndWrite && HBM_writecounter==NUMVERTICES) 
		state_VERTICESFIFO_out <= FINISH;
	else if(HBM_00_EndWrite) 
		state_VERTICESFIFO_out <= STARTWRITE;
	else 
		state_VERTICESFIFO_out <= ENDWRITE;
FINISH: 
    if(ap_done) state_VERTICESFIFO_out <= IDLE;
    else state_VERTICESFIFO_out <= FINISH;
default: state_VERTICESFIFO_out <= IDLE;
endcase
end

always @(posedge AXI_ACLK_IN_0_buf) begin
if(state_VERTICESFIFO_out[0]) 
	HBM_writecounter <= 32'd0;
else 
	HBM_writecounter <= HBM_writecounter + (state_VERTICESFIFO_out[2] && HBM_00_WriteReady_Host);
end
always @(posedge AXI_ACLK_IN_0_buf) begin
    VERTICESFIFO_ReadEn <= (state_VERTICESFIFO_out[2] && HBM_00_WriteResp && ~VERTICESFIFO_Empty && ~HBM_00_WriteLast);
end
always @(posedge AXI_ACLK_IN_0_buf) begin
    HBM_00_StartWrite_Host <= (state_VERTICESFIFO_out[1] && ~VERTICESFIFO_Empty);
end
always @(posedge AXI_ACLK_IN_0_buf) begin
    HBM_00_WriteReady_Host <= (state_VERTICESFIFO_out[2] && HBM_00_WriteResp && ~VERTICESFIFO_Empty && ~HBM_00_WriteLast);
end
always @(posedge AXI_ACLK_IN_0_buf) begin
if(state_VERTICESFIFO_out[0]) 
	HBM_00_WriteAddr_Host <= 33'd0;
else 
	HBM_00_WriteAddr_Host <= {HBM_00_WriteAddr_Host[32:12] + (state_VERTICESFIFO_out[3] && HBM_00_EndWrite), 12'b00000};
end

LoadVerticesFIFO LoadVerticesFIFO(
// Input Vertices on Kernel Clk
.srst(areset),
.wr_clk(ap_clk),
.wr_en(VERTICESFIFO_WriteEn),
.din(LoadVertices_tdata),
.prog_full(VERTICESFIFO_Full),
// Output Vertices on AXI Clk
.rd_clk(AXI_ACLK_IN_0_buf),
.rd_en(VERTICESFIFO_ReadEn),
.dout(HBM_00_WriteData_Host),
.empty(VERTICESFIFO_Empty)
);

//=========================================
//   AXI Stream to AXI Engine DDR
//=========================================
wire EDGESFIFO_Full;
wire EDGESFIFO_Empty;
reg  EDGESFIFO_WriteEn;
reg  EDGESFIFO_ReadEn;
reg  [31:0] DDR_writecounter;
reg  LoadEdges_tready_r;

reg  DDR_00_StartWrite_Host;
reg  [32:0] DDR_00_WriteAddr_Host;
wire [7:0] DDR_00_WriteBurst_Host;
reg DDR_00_WriteReady_Host;
wire [511:0] DDR_00_WriteData_Host;

reg [4:0] state_EDGESFIFO_in;
reg [4:0] state_EDGESFIFO_out;
//localparam
//IDLE       = 5'b00001,
//STARTREAD  = 5'b00010,
//STARTWRITE = 5'b00010,
//WRITE      = 5'b00100,
//READ       = 5'b00100,
//ENDWRITE   = 5'b01000,
//ENDREAD    = 5'b01000,
//FINISH     = 5'b10000;
assign DDR_00_WriteBurst_Host = 8'd63;

assign LoadEdges_tready = LoadEdges_tready_r;
//=================
//    HOST SIDE
//=================
always @(posedge ap_clk) begin
case(state_EDGESFIFO_in)
IDLE: 
	if(ap_start_pulse) 
		state_EDGESFIFO_in <= STARTREAD;
	else 
		state_EDGESFIFO_in <= IDLE;
STARTREAD: 
	if(~EDGESFIFO_Full && LoadEdges_tvalid && LoadEdges_tlast) 
		state_EDGESFIFO_in <= FINISH;
	else 
		state_EDGESFIFO_in <= STARTREAD;
FINISH: 
    state_EDGESFIFO_in <= IDLE;
default: state_EDGESFIFO_in <= IDLE;
endcase
end

always @(posedge ap_clk) begin
    LoadEdges_tready_r <= (state_EDGESFIFO_in[1] && ~EDGESFIFO_Full && locked);
    EDGESFIFO_WriteEn <= (state_EDGESFIFO_in[1] && ~EDGESFIFO_Full && locked && LoadEdges_tvalid);
end
//=================
//    FPGA SIDE
//=================
always @(posedge AXI_ACLK_IN_0_buf) begin
case(state_EDGESFIFO_out)
IDLE: 
	if(GPN_start_pulse) 
		state_EDGESFIFO_out <= STARTWRITE;
	else 
		state_EDGESFIFO_out <= IDLE;
STARTWRITE: 
	if(~EDGESFIFO_Empty) 
		state_EDGESFIFO_out <= WRITE;
	else 
		state_EDGESFIFO_out <= STARTWRITE;
WRITE:
    if(DDR_00_WriteLast) 
        state_EDGESFIFO_out <= ENDWRITE;
    else 
        state_EDGESFIFO_out <= WRITE;
ENDWRITE: 
	if(DDR_00_EndWrite && DDR_writecounter==NUMEDGES) 
		state_EDGESFIFO_out <= FINISH;
	else if(DDR_00_EndWrite) 
		state_EDGESFIFO_out <= STARTWRITE;
	else 
		state_EDGESFIFO_out <= ENDWRITE;
FINISH: 
    if(ap_done) state_EDGESFIFO_out <= IDLE;
    else state_EDGESFIFO_out <= FINISH;
default: state_EDGESFIFO_out <= IDLE;
endcase
end 

always @(posedge AXI_ACLK_IN_0_buf) begin
if(state_EDGESFIFO_out[0]) 
	DDR_writecounter <= 32'd0;
else 
	DDR_writecounter <= DDR_writecounter + (state_EDGESFIFO_out[2] && DDR_00_WriteReady_Host);
end
always @(posedge AXI_ACLK_IN_0_buf) begin
    EDGESFIFO_ReadEn <= (state_EDGESFIFO_out[2] && DDR_00_WriteResp && ~EDGESFIFO_Empty && ~DDR_00_WriteLast);
end
always @(posedge AXI_ACLK_IN_0_buf) begin
    DDR_00_StartWrite_Host <= (state_EDGESFIFO_out[1] && ~EDGESFIFO_Empty);
end
always @(posedge AXI_ACLK_IN_0_buf) begin
    DDR_00_WriteReady_Host <= (state_EDGESFIFO_out[2] && DDR_00_WriteResp && ~EDGESFIFO_Empty && ~DDR_00_WriteLast);
end
always @(posedge AXI_ACLK_IN_0_buf) begin
if(state_EDGESFIFO_out[0]) 
	DDR_00_WriteAddr_Host <= 33'd0;
else 
	DDR_00_WriteAddr_Host <= {DDR_00_WriteAddr_Host[32:12] + (state_EDGESFIFO_out[3] && DDR_00_EndWrite), 12'b000000};
end

LoadEdgesFIFO LoadEdgesFIFO(
// Input Edges on Kernel Clk
.srst(areset),
.wr_clk(ap_clk),
.wr_en(EDGESFIFO_WriteEn),
.din(LoadEdges_tdata),
.prog_full(EDGESFIFO_Full),
// Output Edges on AXI Clk
.rd_clk(AXI_ACLK_IN_0_buf),
.rd_en(EDGESFIFO_ReadEn),
.dout(DDR_00_WriteData_Host),
.empty(EDGESFIFO_Empty)
);

//=========================================
//    Results
//=========================================
wire RESULTSFIFO_Full;
wire RESULTSFIFO_Empty;
reg  RESULTSFIFO_WriteEn;
reg  RESULTSFIFO_ReadEn;
reg  [31:0] RESULTS_readcounter;
reg  [31:0] RESULTS_writecounter;
wire [255:0] Vertex_Results; 
reg  [255:0] Vertex_ReadData;
reg  guardResults_tvalid;

reg  HBM_00_StartRead_Host;
reg  [32:0] HBM_00_ReadAddr_Host;
wire HBM_00_ReadBurst_Host;

reg [4:0] state_RESULTSFIFO_in;
reg [4:0] state_RESULTSFIFO_out;
//localparam
//IDLE      = 4'b0001,
//STARTREAD = 4'b0010,
//STARTWRITE  = 4'b0010,
//WRITE     = 4'b0100,
//READ      = 4'b0100,
//FINISH    = 4'b1000;

assign HBM_00_ReadBurst_Host = 8'd0;

assign Results_tdata = Vertex_Results;
assign Results_tkeep = 32'hFFFF_FFFF;
assign Results_tvalid = guardResults_tvalid;
assign Results_tlast = (RESULTS_writecounter==(NUMVERTICES-1) && Results_tvalid);
assign ap_done = state_RESULTSFIFO_out[4];
//=================
//    HOST SIDE
//=================
always @(posedge ap_clk) begin
case(state_RESULTSFIFO_out)
IDLE: 
	if(GraphDone) 
		state_RESULTSFIFO_out <= STARTWRITE;
	else 
		state_RESULTSFIFO_out <= IDLE;
STARTWRITE: 
	if(RESULTS_writecounter==NUMVERTICES && RESULTSFIFO_Empty) 
		state_RESULTSFIFO_out <= FINISH;
	else if(~RESULTSFIFO_Empty && Results_tready) 
		state_RESULTSFIFO_out <= WRITE;
	else 
		state_RESULTSFIFO_out <= STARTWRITE;
WRITE: state_RESULTSFIFO_out <= STARTWRITE;
FINISH: 
	if(GPN_start_pulse) 
		state_RESULTSFIFO_out <= IDLE;
	else 
		state_RESULTSFIFO_out <= FINISH;
default: state_RESULTSFIFO_out <= IDLE;
endcase
end

always @(posedge ap_clk) begin
    guardResults_tvalid <= (state_RESULTSFIFO_out[1] && ~RESULTSFIFO_Empty && Results_tready);
end
always @(posedge ap_clk) begin
if(state_RESULTSFIFO_out[0]) 
	RESULTS_writecounter <= 32'd0;
else 
	RESULTS_writecounter <= RESULTS_writecounter + (state_RESULTSFIFO_out[1] && ~RESULTSFIFO_Empty && Results_tready);
end
always @(posedge ap_clk) begin
    RESULTSFIFO_ReadEn <= (state_RESULTSFIFO_out[1] && ~RESULTSFIFO_Empty && Results_tready);
end

//=================
//    FPGA SIDE
//=================
always @(posedge AXI_ACLK_IN_0_buf) begin
case(state_RESULTSFIFO_in)
IDLE: 
	if(GraphDone) 
		state_RESULTSFIFO_in <= READ;
	else 
		state_RESULTSFIFO_in <= IDLE;
STARTREAD: 
	if(RESULTS_readcounter==NUMVERTICES && HBM_00_EndRead) 
		state_RESULTSFIFO_in <= FINISH;
	else if(HBM_00_EndRead) 
		state_RESULTSFIFO_in <= READ;
	else 
		state_RESULTSFIFO_in <= STARTREAD;
READ: 
	if(~RESULTSFIFO_Full) 
		state_RESULTSFIFO_in <= STARTREAD;
	else 
		state_RESULTSFIFO_in <= READ;
FINISH: 
	if(GPN_start_pulse) 
		state_RESULTSFIFO_in <= IDLE;
	else 
		state_RESULTSFIFO_in <= FINISH;
default: state_RESULTSFIFO_in <= IDLE;
endcase
end

always @(posedge AXI_ACLK_IN_0_buf) begin
    Vertex_ReadData <= HBM_00_ReadData;
end
always @(posedge AXI_ACLK_IN_0_buf) begin
if(state_RESULTSFIFO_in[0]) 
	RESULTS_readcounter <= 32'd0;
else 
	RESULTS_readcounter <= RESULTS_readcounter + (state_RESULTSFIFO_in[2] && ~RESULTSFIFO_Full);
end
always @(posedge AXI_ACLK_IN_0_buf) begin
    RESULTSFIFO_WriteEn <= (state_RESULTSFIFO_in[1] && HBM_00_EndRead);
end
always @(posedge AXI_ACLK_IN_0_buf) begin
    HBM_00_StartRead_Host <= (state_RESULTSFIFO_in[2] && ~RESULTSFIFO_Full);
end
always @(posedge AXI_ACLK_IN_0_buf) begin
if(state_RESULTSFIFO_out[0]) 
	HBM_00_ReadAddr_Host <= 33'd0;
else 
	HBM_00_ReadAddr_Host <= {HBM_00_ReadAddr_Host[32:5] + (state_RESULTSFIFO_in[2] && HBM_00_EndRead), 5'b00000};
end

ResultsFIFO ResultsFIFO(
// Input Results on AXI Clk
.srst(areset),
.wr_clk(AXI_ACLK_IN_0_buf),
.wr_en(RESULTSFIFO_WriteEn),
.din(Vertex_ReadData),
.prog_full(RESULTSFIFO_Full),
// Output Results on Kernel Clk
.rd_clk(ap_clk),
.rd_en(RESULTSFIFO_ReadEn),
.dout(Vertex_Results),
.empty(RESULTSFIFO_Empty)
);

wire [31:0] HBM_00_WriteParity;
   
assign HBM_00_WriteParity =  {{^(HBM_00_WriteData[255:248])},{^(HBM_00_WriteData[247:240])},{^(HBM_00_WriteData[239:232])},{^(HBM_00_WriteData[231:224])},
                              {^(HBM_00_WriteData[223:216])},{^(HBM_00_WriteData[215:208])},{^(HBM_00_WriteData[207:200])},{^(HBM_00_WriteData[199:192])},
                              {^(HBM_00_WriteData[191:184])},{^(HBM_00_WriteData[183:176])},{^(HBM_00_WriteData[175:168])},{^(HBM_00_WriteData[167:160])},
                              {^(HBM_00_WriteData[159:152])},{^(HBM_00_WriteData[151:144])},{^(HBM_00_WriteData[143:136])},{^(HBM_00_WriteData[135:128])},
                              {^(HBM_00_WriteData[127:120])},{^(HBM_00_WriteData[119:112])},{^(HBM_00_WriteData[111:104])},{^(HBM_00_WriteData[103:96])},
                              {^(HBM_00_WriteData[95:88])},  {^(HBM_00_WriteData[87:80])},  {^(HBM_00_WriteData[79:72])},  {^(HBM_00_WriteData[71:64])},
                              {^(HBM_00_WriteData[63:56])},  {^(HBM_00_WriteData[55:48])},  {^(HBM_00_WriteData[47:40])},  {^(HBM_00_WriteData[39:32])},
                              {^(HBM_00_WriteData[31:24])},  {^(HBM_00_WriteData[23:16])},  {^(HBM_00_WriteData[15:8])},   {^(HBM_00_WriteData[7:0])}};

wire [63:0] DDR_00_WriteParity;

assign DDR_00_WriteParity =  {{^(DDR_00_WriteData[511:504])},{^(DDR_00_WriteData[503:496])},{^(DDR_00_WriteData[495:488])},{^(DDR_00_WriteData[487:480])},
                              {^(DDR_00_WriteData[479:472])},{^(DDR_00_WriteData[471:464])},{^(DDR_00_WriteData[463:456])},{^(DDR_00_WriteData[455:448])},
                              {^(DDR_00_WriteData[447:440])},{^(DDR_00_WriteData[439:432])},{^(DDR_00_WriteData[431:424])},{^(DDR_00_WriteData[423:416])},
                              {^(DDR_00_WriteData[415:408])},{^(DDR_00_WriteData[407:400])},{^(DDR_00_WriteData[399:392])},{^(DDR_00_WriteData[391:384])},
                              {^(DDR_00_WriteData[383:376])},{^(DDR_00_WriteData[375:368])},{^(DDR_00_WriteData[367:360])},{^(DDR_00_WriteData[359:352])},
                              {^(DDR_00_WriteData[351:344])},{^(DDR_00_WriteData[343:336])},{^(DDR_00_WriteData[335:328])},{^(DDR_00_WriteData[327:320])},
                              {^(DDR_00_WriteData[319:312])},{^(DDR_00_WriteData[311:304])},{^(DDR_00_WriteData[303:296])},{^(DDR_00_WriteData[295:288])},
                              {^(DDR_00_WriteData[287:280])},{^(DDR_00_WriteData[279:272])},{^(DDR_00_WriteData[271:264])},{^(DDR_00_WriteData[263:256])},
							  {^(DDR_00_WriteData[255:248])},{^(DDR_00_WriteData[247:240])},{^(DDR_00_WriteData[239:232])},{^(DDR_00_WriteData[231:224])},
                              {^(DDR_00_WriteData[223:216])},{^(DDR_00_WriteData[215:208])},{^(DDR_00_WriteData[207:200])},{^(DDR_00_WriteData[199:192])},
                              {^(DDR_00_WriteData[191:184])},{^(DDR_00_WriteData[183:176])},{^(DDR_00_WriteData[175:168])},{^(DDR_00_WriteData[167:160])},
                              {^(DDR_00_WriteData[159:152])},{^(DDR_00_WriteData[151:144])},{^(DDR_00_WriteData[143:136])},{^(DDR_00_WriteData[135:128])},
                              {^(DDR_00_WriteData[127:120])},{^(DDR_00_WriteData[119:112])},{^(DDR_00_WriteData[111:104])},{^(DDR_00_WriteData[103:96])},
                              {^(DDR_00_WriteData[95:88])},  {^(DDR_00_WriteData[87:80])},  {^(DDR_00_WriteData[79:72])},  {^(DDR_00_WriteData[71:64])},
                              {^(DDR_00_WriteData[63:56])},  {^(DDR_00_WriteData[55:48])},  {^(DDR_00_WriteData[47:40])},  {^(DDR_00_WriteData[39:32])},
                              {^(DDR_00_WriteData[31:24])},  {^(DDR_00_WriteData[23:16])},  {^(DDR_00_WriteData[15:8])},   {^(DDR_00_WriteData[7:0])}};

//=========================================
// HBM AXI 00
//=========================================
always @(*) begin
// Read Channel
if(~AXI_ARESET_N_0) begin
HBM_00_StartRead <= 1'b0;
HBM_00_ReadAddr <= 33'd0;
HBM_00_ReadBurst <= 8'd0;
HBM_00_ReadReady_PE <= 1'b0;
HBM_00_EndRead_PE <= 1'b0;
end
else if(GraphDone) begin // Graph is not finished give access to PEs
HBM_00_StartRead = HBM_00_StartRead_Host;
HBM_00_ReadAddr = HBM_00_ReadAddr_Host;
HBM_00_ReadBurst = HBM_00_ReadBurst_Host;
HBM_00_ReadReady_PE = 1'b0;
HBM_00_EndRead_PE = 1'b0;
end
else begin // Graph done give access to RESULTS FIFO
HBM_00_StartRead = HBM_00_StartRead_PE;
HBM_00_ReadAddr = HBM_00_ReadAddr_PE;
HBM_00_ReadBurst = HBM_00_ReadBurst_PE;
HBM_00_ReadReady_PE = HBM_00_ReadReady;
HBM_00_EndRead_PE = HBM_00_EndRead;
end
// HBM_00_ReadData
// HBM_00_ReadReady
// HBM_00_EndRead

// Write Channel
if(~AXI_ARESET_N_0) begin
HBM_00_StartWrite = 1'b0;
HBM_00_WriteAddr = 33'd0;
HBM_00_WriteBurst = 8'd0;
HBM_00_WriteData = 256'd0;
HBM_00_WriteReady = 1'b0;
HBM_00_WriteResp_PE = 1'b0;
HBM_00_WriteLast_PE = 1'b0;
HBM_00_EndWrite_PE = 1'b0;
end
else if(start) begin // VERTEX FIFO in and out are Finished = Give access to PEs for HBM
HBM_00_StartWrite = HBM_00_StartWrite_PE;
HBM_00_WriteAddr = HBM_00_WriteAddr_PE;
HBM_00_WriteBurst = HBM_00_WriteBurst_PE;
HBM_00_WriteData = HBM_00_WriteData_PE;
HBM_00_WriteReady = HBM_00_WriteReady_PE;
HBM_00_WriteResp_PE = HBM_00_WriteResp;
HBM_00_WriteLast_PE = HBM_00_WriteLast;
HBM_00_EndWrite_PE = HBM_00_EndWrite;
end
else begin // DEFAULT is VERTEX FIFO
HBM_00_StartWrite = HBM_00_StartWrite_Host;
HBM_00_WriteAddr = HBM_00_WriteAddr_Host;
HBM_00_WriteBurst = HBM_00_WriteBurst_Host;
HBM_00_WriteData = HBM_00_WriteData_Host;
HBM_00_WriteReady = HBM_00_WriteReady_Host;
HBM_00_WriteResp_PE = 1'b0;
HBM_00_WriteLast_PE = 1'b0;
HBM_00_EndWrite_PE = 1'b0;
end
// HBM_00_WriteResp
// HBM_00_EndWrite
end

//=========================================
// DDR AXI 00
//=========================================
always @(*) begin
// Read Channel
if(~AXI_ARESET_N_0) begin
DDR_00_StartRead = 1'b0;
DDR_00_ReadAddr = 33'd0;
DDR_00_ReadBurst = 8'd0;
end 
else begin
DDR_00_StartRead = DDR_00_StartRead_PE;
DDR_00_ReadAddr = DDR_00_ReadAddr_PE;
DDR_00_ReadBurst = DDR_00_ReadBurst_PE;
end
// DDR_00_ReadData
// DDR_00_ReadReady
// DDR_00_EndRead

// Write Channel
if(~AXI_ARESET_N_0) begin
DDR_00_StartWrite = 1'b0;
DDR_00_WriteAddr = 33'd0;
DDR_00_WriteBurst = 8'd0;
DDR_00_WriteData = 512'd0;
DDR_00_WriteReady = 1'b0;
end 
else begin
DDR_00_StartWrite = DDR_00_StartWrite_Host;
DDR_00_WriteAddr = DDR_00_WriteAddr_Host;
DDR_00_WriteBurst = DDR_00_WriteBurst_Host;
DDR_00_WriteData = DDR_00_WriteData_Host;
DDR_00_WriteReady = DDR_00_WriteReady_Host;
end
// DDR_00_WriteResp
// DDR_00_EndWrite
end


wire                  c0_ddr4_clk;
wire                  c0_ddr4_rst;


reg                   c0_ddr4_aresetn;
  
always @(posedge c0_ddr4_clk) begin      
     c0_ddr4_aresetn <= ~c0_ddr4_rst;       
   end                                      


 


   
//MemoryInterfaces_wrapper inst_MemoryInterfaces (
//    .HBM_REF_CLK_0       (HBM_REF_CLK_0     ),
//    .HBM_00_ARESET_N     (AXI_ARESET_N_0  ), //resetn
//    .APB_0_PWDATA   (0),
//    .APB_0_PADDR    (0),
//    .APB_0_PCLK     (APB_0_PCLK_BUF),
//    .APB_0_PENABLE  (0),
//    .APB_0_PRESET_N (APB_0_PRESET_N),
//    .APB_0_PSEL     (0),
//    .APB_0_PWRITE   (0),
//    // AXI Engine Write Channel
//    .HBM_00_start_write  (HBM_00_StartWrite),
//    .HBM_00_write_addr   (HBM_00_WriteAddr),
//    .HBM_00_wburst       (HBM_00_WriteBurst),
//    .HBM_00_write_data   (HBM_00_WriteData),
//    .HBM_00_WDATA_PARITY (HBM_00_WriteParity), //////////////////////////////
//    .HBM_00_write_ready  (HBM_00_WriteReady),
//    .HBM_00_write_resp   (HBM_00_WriteResp),
//    .HBM_00_end_write    (HBM_00_EndWrite),
//    // AXI Engine Read Channel
//    .HBM_00_start_read   (HBM_00_StartRead),
//    .HBM_00_read_addr    (HBM_00_ReadAddr),
//    .HBM_00_rburst       (HBM_00_ReadBurst),
//    .HBM_00_read_data    (HBM_00_ReadData),
//    .HBM_00_read_ready   (HBM_00_ReadReady),
//    .HBM_00_end_read     (HBM_00_EndRead),
    
////========================================================================================
////                                      DDR
////========================================================================================
//    .sys_rst                (1'b0),
//    .c0_ddr4_aresetn        (c0_ddr4_aresetn),

//    .c0_sys_clk_i           (AXI_ACLK_IN_0_buf),
//    .c0_ddr4_act_n          (c0_ddr4_act_n),
//    .c0_ddr4_adr            (c0_ddr4_adr),
//    .c0_ddr4_ba             (c0_ddr4_ba),
//    .c0_ddr4_bg             (c0_ddr4_bg),
//    .c0_ddr4_cke            (c0_ddr4_cke),
//    .c0_ddr4_odt            (c0_ddr4_odt),
//    .c0_ddr4_cs_n           (c0_ddr4_cs_n),
//    .c0_ddr4_ck_t           (c0_ddr4_ck_t),
//    .c0_ddr4_ck_c           (c0_ddr4_ck_c),
//    .c0_ddr4_reset_n        (c0_ddr4_reset_n),

//    .c0_ddr4_parity         (c0_ddr4_parity),
//    .c0_ddr4_dq             (c0_ddr4_dq),
//    .c0_ddr4_dqs_c          (c0_ddr4_dqs_c),
//    .c0_ddr4_dqs_t          (c0_ddr4_dqs_t),

//    .c0_ddr4_ui_clk             (c0_ddr4_clk),
//    .c0_ddr4_ui_clk_sync_rst    (c0_ddr4_rst),
//    // AXI CTRL port
//    .c0_ddr4_s_axi_ctrl_awvalid (1'b0),
//    .c0_ddr4_s_axi_ctrl_awaddr  (32'b0),
//    // Slave Interface Write Data Ports
//    .c0_ddr4_s_axi_ctrl_wvalid  (1'b0),
//    .c0_ddr4_s_axi_ctrl_wdata   (32'b0),
//    // Slave Interface Write Response Ports
//    .c0_ddr4_s_axi_ctrl_bready  (1'b1),
//    // Slave Interface Read Address Ports
//    .c0_ddr4_s_axi_ctrl_arvalid (1'b0),
//    .c0_ddr4_s_axi_ctrl_araddr  (32'b0),
//    // Slave Interface Read Data Ports
//    .c0_ddr4_s_axi_ctrl_rready  (1'b1),
//    // AXI Engine Write Channel
//    .DDR_00_start_write  (DDR_00_StartWrite),
//    .DDR_00_write_addr   ({1'b0, DDR_00_WriteAddr}),
//    .DDR_00_wburst       (DDR_00_WriteBurst),
//    .DDR_00_write_data   (DDR_00_WriteData),
//    .DDR_00_WDATA_PARITY (DDR_00_WriteParity), //////////////////////////////
//    .DDR_00_write_ready  (DDR_00_WriteReady),
//    .DDR_00_write_resp   (DDR_00_WriteResp),
//    .DDR_00_end_write    (DDR_00_EndWrite),
//    // AXI Engine Read Channel
//    .DDR_00_start_read   (DDR_00_StartRead),
//    .DDR_00_read_addr    ({1'b0, DDR_00_ReadAddr}),
//    .DDR_00_rburst       (DDR_00_ReadBurst),
//    .DDR_00_read_data    (DDR_00_ReadData),
//    .DDR_00_read_ready   (DDR_00_ReadReady),
//    .DDR_00_end_read     (DDR_00_EndRead)
//);
MemoryInterfacesVIP_wrapper inst_MemoryInterfacesVIP (
    .HBM_00_ARESET_N     (AXI_ARESET_N_0  ), //resetn

    // AXI Engine Write Channel
    .HBM_00_start_write  (HBM_00_StartWrite),
    .HBM_00_write_addr   (HBM_00_WriteAddr),
    .HBM_00_wburst       (HBM_00_WriteBurst),
    .HBM_00_write_data   (HBM_00_WriteData),
    .HBM_00_write_ready  (HBM_00_WriteReady),
    .HBM_00_write_resp   (HBM_00_WriteResp),
    .HBM_00_write_last   (HBM_00_WriteLast),
    .HBM_00_end_write    (HBM_00_EndWrite),
    // AXI Engine Read Channel
    .HBM_00_start_read   (HBM_00_StartRead),
    .HBM_00_read_addr    (HBM_00_ReadAddr),
    .HBM_00_rburst       (HBM_00_ReadBurst),
    .HBM_00_read_data    (HBM_00_ReadData),
    .HBM_00_read_ready   (HBM_00_ReadReady),
    .HBM_00_end_read     (HBM_00_EndRead),
    
//========================================================================================
//                                      DDR
//========================================================================================

    .c0_sys_clk_i           (AXI_ACLK_IN_0_buf),
    // AXI Engine Write Channel
    .DDR_00_start_write  (DDR_00_StartWrite),
    .DDR_00_write_addr   ({1'b0, DDR_00_WriteAddr}),
    .DDR_00_wburst       (DDR_00_WriteBurst),
    .DDR_00_write_data   (DDR_00_WriteData),
    .DDR_00_write_ready  (DDR_00_WriteReady),
    .DDR_00_write_resp   (DDR_00_WriteResp),
    .DDR_00_write_last   (DDR_00_WriteLast),
    .DDR_00_end_write    (DDR_00_EndWrite),
    // AXI Engine Read Channel
    .DDR_00_start_read   (DDR_00_StartRead),
    .DDR_00_read_addr    ({1'b0, DDR_00_ReadAddr}),
    .DDR_00_rburst       (DDR_00_ReadBurst),
    .DDR_00_read_data    (DDR_00_ReadData),
    .DDR_00_read_ready   (DDR_00_ReadReady),
    .DDR_00_end_read     (DDR_00_EndRead)
);


top_wrapper GPN(
.clk(AXI_ACLK_IN_0_buf),
.reset(GPN_start_pulse),
.start(start),
.FirstMessage(FirstMessage),
.GraphDone(GraphDone),

.HBM_00_StartRead(HBM_00_StartRead_PE),
.HBM_00_ReadBurst(HBM_00_ReadBurst_PE),
.HBM_00_ReadAddress(HBM_00_ReadAddr_PE),
.HBM_00_ReadData(HBM_00_ReadData),
.HBM_00_ReadReady(HBM_00_ReadReady_PE),
.HBM_00_EndRead(HBM_00_EndRead_PE),

.HBM_00_StartWrite(HBM_00_StartWrite_PE),
.HBM_00_WriteBurst(HBM_00_WriteBurst_PE),
.HBM_00_WriteAddress(HBM_00_WriteAddr_PE),
.HBM_00_WriteData(HBM_00_WriteData_PE),
.HBM_00_WriteReady(HBM_00_WriteReady_PE),
.HBM_00_WriteResp(HBM_00_WriteResp_PE),
.HBM_00_WriteLast(HBM_00_WriteLast_PE),
.HBM_00_EndWrite(HBM_00_EndWrite_PE),

.DDR_00_StartRead(DDR_00_StartRead_PE),
.DDR_00_ReadBurst(DDR_00_ReadBurst_PE),
.DDR_00_ReadAddress(DDR_00_ReadAddr_PE),
.DDR_00_ReadData(DDR_00_ReadData),
.DDR_00_ReadReady(DDR_00_ReadReady),
.DDR_00_EndRead(DDR_00_EndRead)
);

endmodule
