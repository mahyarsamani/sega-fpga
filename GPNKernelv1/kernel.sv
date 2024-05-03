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

module kernel #(
    parameter integer C_S_AXI_CONTROL_ADDR_WIDTH = 12 ,
    parameter integer C_S_AXI_CONTROL_DATA_WIDTH = 32 ,
    parameter integer C_LOADVERTICES_TDATA_WIDTH = 256,
    parameter integer C_LOADEDGES_TDATA_WIDTH    = 512,
    parameter integer C_RESULTS_TDATA_WIDTH      = 256
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
wire [17:0]                         MemoryOffset0;
wire [17:0]                         MemoryOffset1;
wire [17:0]                         MemoryOffset2;
wire [17:0]                         MemoryOffset3;
wire [17:0]                         MemoryOffset4;
wire [17:0]                         MemoryOffset5;
wire [17:0]                         MemoryOffset6;
wire [17:0]                         MemoryOffset7;
wire [17:0]                         MemoryOffset8;
wire [17:0]                         MemoryOffset9;
wire [17:0]                         MemoryOffset10;
wire [17:0]                         MemoryOffset11;
wire [17:0]                         MemoryOffset12;
wire [17:0]                         MemoryOffset13;
wire [17:0]                         MemoryOffset14;
wire [17:0]                         MemoryOffset15;
wire [17:0]                         MemoryOffset16;
wire [21:0]                         TotalEdgeSize;
wire                                GraphDone;
reg                                 ResultsStart;
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

always @(posedge AXI_ACLK_IN_0_buf) begin
    ResultsStart <= GraphDone;
end
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
  .FirstMessage ( FirstMessage          ),
  .MemoryOffset0( MemoryOffset0         ),
  .MemoryOffset1( MemoryOffset1         ),
  .MemoryOffset2( MemoryOffset2         ),
  .MemoryOffset3( MemoryOffset3         ),
  .MemoryOffset4( MemoryOffset4         ),
  .MemoryOffset5( MemoryOffset5         ),
  .MemoryOffset6( MemoryOffset6         ),
  .MemoryOffset7( MemoryOffset7         ),
  .MemoryOffset8( MemoryOffset8         ),
  .MemoryOffset9( MemoryOffset9         ),
  .MemoryOffset10( MemoryOffset10       ),
  .MemoryOffset11( MemoryOffset11       ),
  .MemoryOffset12( MemoryOffset12       ),
  .MemoryOffset13( MemoryOffset13       ),
  .MemoryOffset14( MemoryOffset14       ),
  .MemoryOffset15( MemoryOffset15       ),
  .MemoryOffset16( MemoryOffset16       ),
  .TotalEdgeSize ( TotalEdgeSize        )
);

//=====================================
//          AXI Engine Wires
//=====================================
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

reg  HBM_01_StartRead;
reg  [32:0] HBM_01_ReadAddr;
reg  [7:0] HBM_01_ReadBurst;
wire [255:0] HBM_01_ReadData;
wire HBM_01_ReadReady;
wire HBM_01_EndRead;

reg  HBM_01_StartWrite;
reg  [32:0] HBM_01_WriteAddr;
reg  [7:0] HBM_01_WriteBurst;
reg  HBM_01_WriteReady;
reg  [255:0] HBM_01_WriteData;
wire HBM_01_WriteResp;
wire HBM_01_WriteLast;
wire HBM_01_EndWrite;

reg  HBM_02_StartRead;
reg  [32:0] HBM_02_ReadAddr;
reg  [7:0] HBM_02_ReadBurst;
wire [255:0] HBM_02_ReadData;
wire HBM_02_ReadReady;
wire HBM_02_EndRead;

reg  HBM_02_StartWrite;
reg  [32:0] HBM_02_WriteAddr;
reg  [7:0] HBM_02_WriteBurst;
reg  HBM_02_WriteReady;
reg  [255:0] HBM_02_WriteData;
wire HBM_02_WriteResp;
wire HBM_02_WriteLast;
wire HBM_02_EndWrite;

reg  HBM_03_StartRead;
reg  [32:0] HBM_03_ReadAddr;
reg  [7:0] HBM_03_ReadBurst;
wire [255:0] HBM_03_ReadData;
wire HBM_03_ReadReady;
wire HBM_03_EndRead;

reg  HBM_03_StartWrite;
reg  [32:0] HBM_03_WriteAddr;
reg  [7:0] HBM_03_WriteBurst;
reg  HBM_03_WriteReady;
reg  [255:0] HBM_03_WriteData;
wire HBM_03_WriteResp;
wire HBM_03_WriteLast;
wire HBM_03_EndWrite;

reg  HBM_04_StartRead;
reg  [32:0] HBM_04_ReadAddr;
reg  [7:0] HBM_04_ReadBurst;
wire [255:0] HBM_04_ReadData;
wire HBM_04_ReadReady;
wire HBM_04_EndRead;

reg  HBM_04_StartWrite;
reg  [32:0] HBM_04_WriteAddr;
reg  [7:0] HBM_04_WriteBurst;
reg  HBM_04_WriteReady;
reg  [255:0] HBM_04_WriteData;
wire HBM_04_WriteResp;
wire HBM_04_WriteLast;
wire HBM_04_EndWrite;

reg  HBM_05_StartRead;
reg  [32:0] HBM_05_ReadAddr;
reg  [7:0] HBM_05_ReadBurst;
wire [255:0] HBM_05_ReadData;
wire HBM_05_ReadReady;
wire HBM_05_EndRead;

reg  HBM_05_StartWrite;
reg  [32:0] HBM_05_WriteAddr;
reg  [7:0] HBM_05_WriteBurst;
reg  HBM_05_WriteReady;
reg  [255:0] HBM_05_WriteData;
wire HBM_05_WriteResp;
wire HBM_05_WriteLast;
wire HBM_05_EndWrite;

reg  HBM_06_StartRead;
reg  [32:0] HBM_06_ReadAddr;
reg  [7:0] HBM_06_ReadBurst;
wire [255:0] HBM_06_ReadData;
wire HBM_06_ReadReady;
wire HBM_06_EndRead;

reg  HBM_06_StartWrite;
reg  [32:0] HBM_06_WriteAddr;
reg  [7:0] HBM_06_WriteBurst;
reg  HBM_06_WriteReady;
reg  [255:0] HBM_06_WriteData;
wire HBM_06_WriteResp;
wire HBM_06_WriteLast;
wire HBM_06_EndWrite;

reg  HBM_07_StartRead;
reg  [32:0] HBM_07_ReadAddr;
reg  [7:0] HBM_07_ReadBurst;
wire [255:0] HBM_07_ReadData;
wire HBM_07_ReadReady;
wire HBM_07_EndRead;

reg  HBM_07_StartWrite;
reg  [32:0] HBM_07_WriteAddr;
reg  [7:0] HBM_07_WriteBurst;
reg  HBM_07_WriteReady;
reg  [255:0] HBM_07_WriteData;
wire HBM_07_WriteResp;
wire HBM_07_WriteLast;
wire HBM_07_EndWrite;

reg  HBM_08_StartRead;
reg  [32:0] HBM_08_ReadAddr;
reg  [7:0] HBM_08_ReadBurst;
wire [255:0] HBM_08_ReadData;
wire HBM_08_ReadReady;
wire HBM_08_EndRead;

reg  HBM_08_StartWrite;
reg  [32:0] HBM_08_WriteAddr;
reg  [7:0] HBM_08_WriteBurst;
reg  HBM_08_WriteReady;
reg  [255:0] HBM_08_WriteData;
wire HBM_08_WriteResp;
wire HBM_08_WriteLast;
wire HBM_08_EndWrite;

reg  HBM_09_StartRead;
reg  [32:0] HBM_09_ReadAddr;
reg  [7:0] HBM_09_ReadBurst;
wire [255:0] HBM_09_ReadData;
wire HBM_09_ReadReady;
wire HBM_09_EndRead;

reg  HBM_09_StartWrite;
reg  [32:0] HBM_09_WriteAddr;
reg  [7:0] HBM_09_WriteBurst;
reg  HBM_09_WriteReady;
reg  [255:0] HBM_09_WriteData;
wire HBM_09_WriteResp;
wire HBM_09_WriteLast;
wire HBM_09_EndWrite;

reg  HBM_10_StartRead;
reg  [32:0] HBM_10_ReadAddr;
reg  [7:0] HBM_10_ReadBurst;
wire [255:0] HBM_10_ReadData;
wire HBM_10_ReadReady;
wire HBM_10_EndRead;

reg  HBM_10_StartWrite;
reg  [32:0] HBM_10_WriteAddr;
reg  [7:0] HBM_10_WriteBurst;
reg  HBM_10_WriteReady;
reg  [255:0] HBM_10_WriteData;
wire HBM_10_WriteResp;
wire HBM_10_WriteLast;
wire HBM_10_EndWrite;

reg  HBM_11_StartRead;
reg  [32:0] HBM_11_ReadAddr;
reg  [7:0] HBM_11_ReadBurst;
wire [255:0] HBM_11_ReadData;
wire HBM_11_ReadReady;
wire HBM_11_EndRead;

reg  HBM_11_StartWrite;
reg  [32:0] HBM_11_WriteAddr;
reg  [7:0] HBM_11_WriteBurst;
reg  HBM_11_WriteReady;
reg  [255:0] HBM_11_WriteData;
wire HBM_11_WriteResp;
wire HBM_11_WriteLast;
wire HBM_11_EndWrite;

reg  HBM_12_StartRead;
reg  [32:0] HBM_12_ReadAddr;
reg  [7:0] HBM_12_ReadBurst;
wire [255:0] HBM_12_ReadData;
wire HBM_12_ReadReady;
wire HBM_12_EndRead;

reg  HBM_12_StartWrite;
reg  [32:0] HBM_12_WriteAddr;
reg  [7:0] HBM_12_WriteBurst;
reg  HBM_12_WriteReady;
reg  [255:0] HBM_12_WriteData;
wire HBM_12_WriteResp;
wire HBM_12_WriteLast;
wire HBM_12_EndWrite;

reg  HBM_13_StartRead;
reg  [32:0] HBM_13_ReadAddr;
reg  [7:0] HBM_13_ReadBurst;
wire [255:0] HBM_13_ReadData;
wire HBM_13_ReadReady;
wire HBM_13_EndRead;

reg  HBM_13_StartWrite;
reg  [32:0] HBM_13_WriteAddr;
reg  [7:0] HBM_13_WriteBurst;
reg  HBM_13_WriteReady;
reg  [255:0] HBM_13_WriteData;
wire HBM_13_WriteResp;
wire HBM_13_WriteLast;
wire HBM_13_EndWrite;

reg  HBM_14_StartRead;
reg  [32:0] HBM_14_ReadAddr;
reg  [7:0] HBM_14_ReadBurst;
wire [255:0] HBM_14_ReadData;
wire HBM_14_ReadReady;
wire HBM_14_EndRead;

reg  HBM_14_StartWrite;
reg  [32:0] HBM_14_WriteAddr;
reg  [7:0] HBM_14_WriteBurst;
reg  HBM_14_WriteReady;
reg  [255:0] HBM_14_WriteData;
wire HBM_14_WriteResp;
wire HBM_14_WriteLast;
wire HBM_14_EndWrite;

reg  HBM_15_StartRead;
reg  [32:0] HBM_15_ReadAddr;
reg  [7:0] HBM_15_ReadBurst;
wire [255:0] HBM_15_ReadData;
wire HBM_15_ReadReady;
wire HBM_15_EndRead;

reg  HBM_15_StartWrite;
reg  [32:0] HBM_15_WriteAddr;
reg  [7:0] HBM_15_WriteBurst;
reg  HBM_15_WriteReady;
reg  [255:0] HBM_15_WriteData;
wire HBM_15_WriteResp;
wire HBM_15_WriteLast;
wire HBM_15_EndWrite;

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

reg  DDR_01_StartRead;
reg  [32:0] DDR_01_ReadAddr;
reg  [7:0] DDR_01_ReadBurst;
wire [511:0] DDR_01_ReadData;
wire DDR_01_ReadReady;
wire DDR_01_EndRead;

reg  DDR_02_StartRead;
reg  [32:0] DDR_02_ReadAddr;
reg  [7:0] DDR_02_ReadBurst;
wire [511:0] DDR_02_ReadData;
wire DDR_02_ReadReady;
wire DDR_02_EndRead;

reg  DDR_03_StartRead;
reg  [32:0] DDR_03_ReadAddr;
reg  [7:0] DDR_03_ReadBurst;
wire [511:0] DDR_03_ReadData;
wire DDR_03_ReadReady;
wire DDR_03_EndRead;

reg  DDR_04_StartRead;
reg  [32:0] DDR_04_ReadAddr;
reg  [7:0] DDR_04_ReadBurst;
wire [511:0] DDR_04_ReadData;
wire DDR_04_ReadReady;
wire DDR_04_EndRead;

reg  DDR_05_StartRead;
reg  [32:0] DDR_05_ReadAddr;
reg  [7:0] DDR_05_ReadBurst;
wire [511:0] DDR_05_ReadData;
wire DDR_05_ReadReady;
wire DDR_05_EndRead;

reg  DDR_06_StartRead;
reg  [32:0] DDR_06_ReadAddr;
reg  [7:0] DDR_06_ReadBurst;
wire [511:0] DDR_06_ReadData;
wire DDR_06_ReadReady;
wire DDR_06_EndRead;

reg  DDR_07_StartRead;
reg  [32:0] DDR_07_ReadAddr;
reg  [7:0] DDR_07_ReadBurst;
wire [511:0] DDR_07_ReadData;
wire DDR_07_ReadReady;
wire DDR_07_EndRead;

reg  DDR_08_StartRead;
reg  [32:0] DDR_08_ReadAddr;
reg  [7:0] DDR_08_ReadBurst;
wire [511:0] DDR_08_ReadData;
wire DDR_08_ReadReady;
wire DDR_08_EndRead;

reg  DDR_09_StartRead;
reg  [32:0] DDR_09_ReadAddr;
reg  [7:0] DDR_09_ReadBurst;
wire [511:0] DDR_09_ReadData;
wire DDR_09_ReadReady;
wire DDR_09_EndRead;

reg  DDR_10_StartRead;
reg  [32:0] DDR_10_ReadAddr;
reg  [7:0] DDR_10_ReadBurst;
wire [511:0] DDR_10_ReadData;
wire DDR_10_ReadReady;
wire DDR_10_EndRead;

reg  DDR_11_StartRead;
reg  [32:0] DDR_11_ReadAddr;
reg  [7:0] DDR_11_ReadBurst;
wire [511:0] DDR_11_ReadData;
wire DDR_11_ReadReady;
wire DDR_11_EndRead;

reg  DDR_12_StartRead;
reg  [32:0] DDR_12_ReadAddr;
reg  [7:0] DDR_12_ReadBurst;
wire [511:0] DDR_12_ReadData;
wire DDR_12_ReadReady;
wire DDR_12_EndRead;

reg  DDR_13_StartRead;
reg  [32:0] DDR_13_ReadAddr;
reg  [7:0] DDR_13_ReadBurst;
wire [511:0] DDR_13_ReadData;
wire DDR_13_ReadReady;
wire DDR_13_EndRead;

reg  DDR_14_StartRead;
reg  [32:0] DDR_14_ReadAddr;
reg  [7:0] DDR_14_ReadBurst;
wire [511:0] DDR_14_ReadData;
wire DDR_14_ReadReady;
wire DDR_14_EndRead;

reg  DDR_15_StartRead;
reg  [32:0] DDR_15_ReadAddr;
reg  [7:0] DDR_15_ReadBurst;
wire [511:0] DDR_15_ReadData;
wire DDR_15_ReadReady;
wire DDR_15_EndRead;

//================================
// PE Wires
//================================
wire HBM_00_StartRead_PE;
wire [32:0] HBM_00_ReadAddr_PE;
wire [7:0] HBM_00_ReadBurst_PE;

wire HBM_00_StartWrite_PE;
wire [32:0] HBM_00_WriteAddr_PE;
wire [7:0] HBM_00_WriteBurst_PE;
wire HBM_00_WriteReady_PE;
wire [255:0] HBM_00_WriteData_PE;

wire HBM_01_StartRead_PE;
wire [32:0] HBM_01_ReadAddr_PE;
wire [7:0] HBM_01_ReadBurst_PE;

wire HBM_01_StartWrite_PE;
wire [32:0] HBM_01_WriteAddr_PE;
wire [7:0] HBM_01_WriteBurst_PE;
wire HBM_01_WriteReady_PE;
wire [255:0] HBM_01_WriteData_PE;

wire HBM_02_StartRead_PE;
wire [32:0] HBM_02_ReadAddr_PE;
wire [7:0] HBM_02_ReadBurst_PE;

wire HBM_02_StartWrite_PE;
wire [32:0] HBM_02_WriteAddr_PE;
wire [7:0] HBM_02_WriteBurst_PE;
wire HBM_02_WriteReady_PE;
wire [255:0] HBM_02_WriteData_PE;

wire HBM_03_StartRead_PE;
wire [32:0] HBM_03_ReadAddr_PE;
wire [7:0] HBM_03_ReadBurst_PE;

wire HBM_03_StartWrite_PE;
wire [32:0] HBM_03_WriteAddr_PE;
wire [7:0] HBM_03_WriteBurst_PE;
wire HBM_03_WriteReady_PE;
wire [255:0] HBM_03_WriteData_PE;

wire HBM_04_StartRead_PE;
wire [32:0] HBM_04_ReadAddr_PE;
wire [7:0] HBM_04_ReadBurst_PE;

wire HBM_04_StartWrite_PE;
wire [32:0] HBM_04_WriteAddr_PE;
wire [7:0] HBM_04_WriteBurst_PE;
wire HBM_04_WriteReady_PE;
wire [255:0] HBM_04_WriteData_PE;

wire HBM_05_StartRead_PE;
wire [32:0] HBM_05_ReadAddr_PE;
wire [7:0] HBM_05_ReadBurst_PE;

wire HBM_05_StartWrite_PE;
wire [32:0] HBM_05_WriteAddr_PE;
wire [7:0] HBM_05_WriteBurst_PE;
wire HBM_05_WriteReady_PE;
wire [255:0] HBM_05_WriteData_PE;

wire HBM_06_StartRead_PE;
wire [32:0] HBM_06_ReadAddr_PE;
wire [7:0] HBM_06_ReadBurst_PE;

wire HBM_06_StartWrite_PE;
wire [32:0] HBM_06_WriteAddr_PE;
wire [7:0] HBM_06_WriteBurst_PE;
wire HBM_06_WriteReady_PE;
wire [255:0] HBM_06_WriteData_PE;

wire HBM_07_StartRead_PE;
wire [32:0] HBM_07_ReadAddr_PE;
wire [7:0] HBM_07_ReadBurst_PE;

wire HBM_07_StartWrite_PE;
wire [32:0] HBM_07_WriteAddr_PE;
wire [7:0] HBM_07_WriteBurst_PE;
wire HBM_07_WriteReady_PE;
wire [255:0] HBM_07_WriteData_PE;

wire HBM_08_StartRead_PE;
wire [32:0] HBM_08_ReadAddr_PE;
wire [7:0] HBM_08_ReadBurst_PE;

wire HBM_08_StartWrite_PE;
wire [32:0] HBM_08_WriteAddr_PE;
wire [7:0] HBM_08_WriteBurst_PE;
wire HBM_08_WriteReady_PE;
wire [255:0] HBM_08_WriteData_PE;

wire HBM_09_StartRead_PE;
wire [32:0] HBM_09_ReadAddr_PE;
wire [7:0] HBM_09_ReadBurst_PE;

wire HBM_09_StartWrite_PE;
wire [32:0] HBM_09_WriteAddr_PE;
wire [7:0] HBM_09_WriteBurst_PE;
wire HBM_09_WriteReady_PE;
wire [255:0] HBM_09_WriteData_PE;

wire HBM_10_StartRead_PE;
wire [32:0] HBM_10_ReadAddr_PE;
wire [7:0] HBM_10_ReadBurst_PE;

wire HBM_10_StartWrite_PE;
wire [32:0] HBM_10_WriteAddr_PE;
wire [7:0] HBM_10_WriteBurst_PE;
wire HBM_10_WriteReady_PE;
wire [255:0] HBM_10_WriteData_PE;

wire HBM_11_StartRead_PE;
wire [32:0] HBM_11_ReadAddr_PE;
wire [7:0] HBM_11_ReadBurst_PE;

wire HBM_11_StartWrite_PE;
wire [32:0] HBM_11_WriteAddr_PE;
wire [7:0] HBM_11_WriteBurst_PE;
wire HBM_11_WriteReady_PE;
wire [255:0] HBM_11_WriteData_PE;

wire HBM_12_StartRead_PE;
wire [32:0] HBM_12_ReadAddr_PE;
wire [7:0] HBM_12_ReadBurst_PE;

wire HBM_12_StartWrite_PE;
wire [32:0] HBM_12_WriteAddr_PE;
wire [7:0] HBM_12_WriteBurst_PE;
wire HBM_12_WriteReady_PE;
wire [255:0] HBM_12_WriteData_PE;

wire HBM_13_StartRead_PE;
wire [32:0] HBM_13_ReadAddr_PE;
wire [7:0] HBM_13_ReadBurst_PE;

wire HBM_13_StartWrite_PE;
wire [32:0] HBM_13_WriteAddr_PE;
wire [7:0] HBM_13_WriteBurst_PE;
wire HBM_13_WriteReady_PE;
wire [255:0] HBM_13_WriteData_PE;

wire HBM_14_StartRead_PE;
wire [32:0] HBM_14_ReadAddr_PE;
wire [7:0] HBM_14_ReadBurst_PE;

wire HBM_14_StartWrite_PE;
wire [32:0] HBM_14_WriteAddr_PE;
wire [7:0] HBM_14_WriteBurst_PE;
wire HBM_14_WriteReady_PE;
wire [255:0] HBM_14_WriteData_PE;

wire HBM_15_StartRead_PE;
wire [32:0] HBM_15_ReadAddr_PE;
wire [7:0] HBM_15_ReadBurst_PE;

wire HBM_15_StartWrite_PE;
wire [32:0] HBM_15_WriteAddr_PE;
wire [7:0] HBM_15_WriteBurst_PE;
wire HBM_15_WriteReady_PE;
wire [255:0] HBM_15_WriteData_PE;
//=========================================
//       Host AXI Wires
//=========================================
reg  [7:0]  HBM_WriteBurst_Host;
reg  [7:0]  HBM_ReadBurst_Host;
reg  [32:0] HBM_WriteAddr_Host;
reg  [32:0] HBM_ReadAddr_Host;
reg  [255:0]HBM_WriteData_Host;
reg  [255:0]HBM_ReadData_Host;

reg  HBM_00_StartWrite_Host;
reg  HBM_00_WriteReady_Host;
reg  HBM_00_StartRead_Host;

reg  HBM_01_StartWrite_Host;
reg  HBM_01_WriteReady_Host;
reg  HBM_01_StartRead_Host;

reg  HBM_02_StartWrite_Host;
reg  HBM_02_WriteReady_Host;
reg  HBM_02_StartRead_Host;

reg  HBM_03_StartWrite_Host;
reg  HBM_03_WriteReady_Host;
reg  HBM_03_StartRead_Host;

reg  HBM_04_StartWrite_Host;
reg  HBM_04_WriteReady_Host;
reg  HBM_04_StartRead_Host;

reg  HBM_05_StartWrite_Host;
reg  HBM_05_WriteReady_Host;
reg  HBM_05_StartRead_Host;

reg  HBM_06_StartWrite_Host;
reg  HBM_06_WriteReady_Host;
reg  HBM_06_StartRead_Host;

reg  HBM_07_StartWrite_Host;
reg  HBM_07_WriteReady_Host;
reg  HBM_07_StartRead_Host;

reg  HBM_08_StartWrite_Host;
reg  HBM_08_WriteReady_Host;
reg  HBM_08_StartRead_Host;

reg  HBM_09_StartWrite_Host;
reg  HBM_09_WriteReady_Host;
reg  HBM_09_StartRead_Host;

reg  HBM_10_StartWrite_Host;
reg  HBM_10_WriteReady_Host;
reg  HBM_10_StartRead_Host;

reg  HBM_11_StartWrite_Host;
reg  HBM_11_WriteReady_Host;
reg  HBM_11_StartRead_Host;

reg  HBM_12_StartWrite_Host;
reg  HBM_12_WriteReady_Host;
reg  HBM_12_StartRead_Host;

reg  HBM_13_StartWrite_Host;
reg  HBM_13_WriteReady_Host;
reg  HBM_13_StartRead_Host;

reg  HBM_14_StartWrite_Host;
reg  HBM_14_WriteReady_Host;
reg  HBM_14_StartRead_Host;

reg  HBM_15_StartWrite_Host;
reg  HBM_15_WriteReady_Host;
reg  HBM_15_StartRead_Host;
//=========================================
//   AXI Stream to AXI Engine HBM
//=========================================
wire VERTICESFIFO_Full;
wire VERTICESFIFO_Empty;
reg  VERTICESFIFO_WriteEn;
reg  VERTICESFIFO_ReadEn;
reg  [19:0] HBM_writecounter;
reg  LoadVertices_tready_r;

reg  [3:0] HBM_ChannelW;

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

assign HBM_WriteBurst_Host = 8'd127;
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
    if(HBM_00_WriteLast || HBM_01_WriteLast || HBM_02_WriteLast || HBM_03_WriteLast || HBM_04_WriteLast || HBM_05_WriteLast || HBM_06_WriteLast || HBM_07_WriteLast || HBM_08_WriteLast || HBM_09_WriteLast || HBM_10_WriteLast || HBM_11_WriteLast || HBM_12_WriteLast || HBM_13_WriteLast || HBM_14_WriteLast || HBM_15_WriteLast) 
        state_VERTICESFIFO_out <= ENDWRITE;
    else 
        state_VERTICESFIFO_out <= WRITE;
ENDWRITE: 
	if((HBM_00_EndWrite || HBM_01_EndWrite || HBM_02_EndWrite || HBM_03_EndWrite || HBM_04_EndWrite || HBM_05_EndWrite || HBM_06_EndWrite || HBM_07_EndWrite || HBM_08_EndWrite || HBM_09_EndWrite || HBM_10_EndWrite || HBM_11_EndWrite || HBM_12_EndWrite || HBM_13_EndWrite || HBM_14_EndWrite || HBM_15_EndWrite) && HBM_writecounter[19:2]==(MemoryOffset16-1)) 
		state_VERTICESFIFO_out <= FINISH;
	else if(HBM_00_EndWrite || HBM_01_EndWrite || HBM_02_EndWrite || HBM_03_EndWrite || HBM_04_EndWrite || HBM_05_EndWrite || HBM_06_EndWrite || HBM_07_EndWrite || HBM_08_EndWrite || HBM_09_EndWrite || HBM_10_EndWrite || HBM_11_EndWrite || HBM_12_EndWrite || HBM_13_EndWrite || HBM_14_EndWrite || HBM_15_EndWrite) 
		state_VERTICESFIFO_out <= STARTWRITE;
	else 
		state_VERTICESFIFO_out <= ENDWRITE;
FINISH: 
    if(ap_done) state_VERTICESFIFO_out <= IDLE;
    else state_VERTICESFIFO_out <= FINISH;
default: state_VERTICESFIFO_out <= IDLE;
endcase
end

always @(*) begin
   if     (HBM_writecounter[19:2] >= MemoryOffset15) HBM_ChannelW = 4'hF;
   else if(HBM_writecounter[19:2] >= MemoryOffset14) HBM_ChannelW = 4'hE;
   else if(HBM_writecounter[19:2] >= MemoryOffset13) HBM_ChannelW = 4'hD;
   else if(HBM_writecounter[19:2] >= MemoryOffset12) HBM_ChannelW = 4'hC;
   else if(HBM_writecounter[19:2] >= MemoryOffset11) HBM_ChannelW = 4'hB;
   else if(HBM_writecounter[19:2] >= MemoryOffset10) HBM_ChannelW = 4'hA;
   else if(HBM_writecounter[19:2] >= MemoryOffset9)  HBM_ChannelW = 4'h9;
   else if(HBM_writecounter[19:2] >= MemoryOffset8)  HBM_ChannelW = 4'h8;
   else if(HBM_writecounter[19:2] >= MemoryOffset7)  HBM_ChannelW = 4'h7;
   else if(HBM_writecounter[19:2] >= MemoryOffset6)  HBM_ChannelW = 4'h6;
   else if(HBM_writecounter[19:2] >= MemoryOffset5)  HBM_ChannelW = 4'h5;
   else if(HBM_writecounter[19:2] >= MemoryOffset4)  HBM_ChannelW = 4'h4;
   else if(HBM_writecounter[19:2] >= MemoryOffset3)  HBM_ChannelW = 4'h3;
   else if(HBM_writecounter[19:2] >= MemoryOffset2)  HBM_ChannelW = 4'h2;
   else if(HBM_writecounter[19:2] >= MemoryOffset1)  HBM_ChannelW = 4'h1;
   else                                              HBM_ChannelW = 4'h0;
 end
 always @(posedge AXI_ACLK_IN_0_buf) begin
 if(state_VERTICESFIFO_out[0]) 
 	HBM_writecounter <= 24'd0;
 else 
 	HBM_writecounter <= HBM_writecounter + (state_VERTICESFIFO_out[3] && (HBM_00_EndWrite || HBM_01_EndWrite || HBM_02_EndWrite || HBM_03_EndWrite || HBM_04_EndWrite || HBM_05_EndWrite || HBM_06_EndWrite || HBM_07_EndWrite || HBM_08_EndWrite || HBM_09_EndWrite || HBM_10_EndWrite || HBM_11_EndWrite || HBM_12_EndWrite || HBM_13_EndWrite || HBM_14_EndWrite || HBM_15_EndWrite));
 end
 always @(posedge AXI_ACLK_IN_0_buf) begin
     VERTICESFIFO_ReadEn <= (state_VERTICESFIFO_out[2] && ~VERTICESFIFO_Empty && ((HBM_00_WriteResp && ~HBM_00_WriteLast) || (HBM_01_WriteResp && ~HBM_01_WriteLast) || (HBM_02_WriteResp && ~HBM_02_WriteLast) || (HBM_03_WriteResp && ~HBM_03_WriteLast) || (HBM_04_WriteResp && ~HBM_04_WriteLast) || (HBM_05_WriteResp && ~HBM_05_WriteLast) || (HBM_06_WriteResp && ~HBM_06_WriteLast) || (HBM_07_WriteResp && ~HBM_07_WriteLast) || (HBM_08_WriteResp && ~HBM_08_WriteLast) || (HBM_09_WriteResp && ~HBM_09_WriteLast) || (HBM_10_WriteResp && ~HBM_10_WriteLast) || (HBM_11_WriteResp && ~HBM_11_WriteLast) || (HBM_12_WriteResp && ~HBM_12_WriteLast) || (HBM_13_WriteResp && ~HBM_13_WriteLast) || (HBM_14_WriteResp && ~HBM_14_WriteLast) || (HBM_15_WriteResp && ~HBM_15_WriteLast)));
 end
 always @(posedge AXI_ACLK_IN_0_buf) begin
     HBM_00_StartWrite_Host <= (state_VERTICESFIFO_out[1] && ~VERTICESFIFO_Empty && HBM_ChannelW==4'h0);
     HBM_01_StartWrite_Host <= (state_VERTICESFIFO_out[1] && ~VERTICESFIFO_Empty && HBM_ChannelW==4'h1);
     HBM_02_StartWrite_Host <= (state_VERTICESFIFO_out[1] && ~VERTICESFIFO_Empty && HBM_ChannelW==4'h2);
     HBM_03_StartWrite_Host <= (state_VERTICESFIFO_out[1] && ~VERTICESFIFO_Empty && HBM_ChannelW==4'h3);
     HBM_04_StartWrite_Host <= (state_VERTICESFIFO_out[1] && ~VERTICESFIFO_Empty && HBM_ChannelW==4'h4);
     HBM_05_StartWrite_Host <= (state_VERTICESFIFO_out[1] && ~VERTICESFIFO_Empty && HBM_ChannelW==4'h5);
     HBM_06_StartWrite_Host <= (state_VERTICESFIFO_out[1] && ~VERTICESFIFO_Empty && HBM_ChannelW==4'h6);
     HBM_07_StartWrite_Host <= (state_VERTICESFIFO_out[1] && ~VERTICESFIFO_Empty && HBM_ChannelW==4'h7);
     HBM_08_StartWrite_Host <= (state_VERTICESFIFO_out[1] && ~VERTICESFIFO_Empty && HBM_ChannelW==4'h8);
     HBM_09_StartWrite_Host <= (state_VERTICESFIFO_out[1] && ~VERTICESFIFO_Empty && HBM_ChannelW==4'h9);
     HBM_10_StartWrite_Host <= (state_VERTICESFIFO_out[1] && ~VERTICESFIFO_Empty && HBM_ChannelW==4'hA);
     HBM_11_StartWrite_Host <= (state_VERTICESFIFO_out[1] && ~VERTICESFIFO_Empty && HBM_ChannelW==4'hB);
     HBM_12_StartWrite_Host <= (state_VERTICESFIFO_out[1] && ~VERTICESFIFO_Empty && HBM_ChannelW==4'hC);
     HBM_13_StartWrite_Host <= (state_VERTICESFIFO_out[1] && ~VERTICESFIFO_Empty && HBM_ChannelW==4'hD);
     HBM_14_StartWrite_Host <= (state_VERTICESFIFO_out[1] && ~VERTICESFIFO_Empty && HBM_ChannelW==4'hE);
     HBM_15_StartWrite_Host <= (state_VERTICESFIFO_out[1] && ~VERTICESFIFO_Empty && HBM_ChannelW==4'hF);
 end
 always @(posedge AXI_ACLK_IN_0_buf) begin
     HBM_00_WriteReady_Host <= (state_VERTICESFIFO_out[2] && HBM_00_WriteResp && ~VERTICESFIFO_Empty && ~HBM_00_WriteLast);
     HBM_01_WriteReady_Host <= (state_VERTICESFIFO_out[2] && HBM_01_WriteResp && ~VERTICESFIFO_Empty && ~HBM_01_WriteLast);
     HBM_02_WriteReady_Host <= (state_VERTICESFIFO_out[2] && HBM_02_WriteResp && ~VERTICESFIFO_Empty && ~HBM_02_WriteLast);
     HBM_03_WriteReady_Host <= (state_VERTICESFIFO_out[2] && HBM_03_WriteResp && ~VERTICESFIFO_Empty && ~HBM_03_WriteLast);
     HBM_04_WriteReady_Host <= (state_VERTICESFIFO_out[2] && HBM_04_WriteResp && ~VERTICESFIFO_Empty && ~HBM_04_WriteLast);
     HBM_05_WriteReady_Host <= (state_VERTICESFIFO_out[2] && HBM_05_WriteResp && ~VERTICESFIFO_Empty && ~HBM_05_WriteLast);
     HBM_06_WriteReady_Host <= (state_VERTICESFIFO_out[2] && HBM_06_WriteResp && ~VERTICESFIFO_Empty && ~HBM_06_WriteLast);
     HBM_07_WriteReady_Host <= (state_VERTICESFIFO_out[2] && HBM_07_WriteResp && ~VERTICESFIFO_Empty && ~HBM_07_WriteLast);
     HBM_08_WriteReady_Host <= (state_VERTICESFIFO_out[2] && HBM_08_WriteResp && ~VERTICESFIFO_Empty && ~HBM_08_WriteLast);
     HBM_09_WriteReady_Host <= (state_VERTICESFIFO_out[2] && HBM_09_WriteResp && ~VERTICESFIFO_Empty && ~HBM_09_WriteLast);
     HBM_10_WriteReady_Host <= (state_VERTICESFIFO_out[2] && HBM_10_WriteResp && ~VERTICESFIFO_Empty && ~HBM_10_WriteLast);
     HBM_11_WriteReady_Host <= (state_VERTICESFIFO_out[2] && HBM_11_WriteResp && ~VERTICESFIFO_Empty && ~HBM_11_WriteLast);
     HBM_12_WriteReady_Host <= (state_VERTICESFIFO_out[2] && HBM_12_WriteResp && ~VERTICESFIFO_Empty && ~HBM_12_WriteLast);
     HBM_13_WriteReady_Host <= (state_VERTICESFIFO_out[2] && HBM_13_WriteResp && ~VERTICESFIFO_Empty && ~HBM_13_WriteLast);
     HBM_14_WriteReady_Host <= (state_VERTICESFIFO_out[2] && HBM_14_WriteResp && ~VERTICESFIFO_Empty && ~HBM_14_WriteLast);
     HBM_15_WriteReady_Host <= (state_VERTICESFIFO_out[2] && HBM_15_WriteResp && ~VERTICESFIFO_Empty && ~HBM_15_WriteLast);
 end
 always @(posedge AXI_ACLK_IN_0_buf) begin
 if(state_VERTICESFIFO_out[0]) 
 	HBM_WriteAddr_Host <= 33'd0;
 else 
 	HBM_WriteAddr_Host <= {1'b0, HBM_ChannelW, HBM_WriteAddr_Host[27:12] + (state_VERTICESFIFO_out[3] && (HBM_00_EndWrite || HBM_01_EndWrite || HBM_02_EndWrite || HBM_03_EndWrite || HBM_04_EndWrite || HBM_05_EndWrite || HBM_06_EndWrite || HBM_07_EndWrite || HBM_08_EndWrite || HBM_09_EndWrite || HBM_10_EndWrite || HBM_11_EndWrite || HBM_12_EndWrite || HBM_13_EndWrite || HBM_14_EndWrite || HBM_15_EndWrite)), 12'b00000};
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
.dout(HBM_WriteData_Host),
.empty(VERTICESFIFO_Empty)
);

//=========================================
//   AXI Stream to AXI Engine DDR
//=========================================
wire EDGESFIFO_Full;
wire EDGESFIFO_Empty;
reg  EDGESFIFO_WriteEn;
reg  EDGESFIFO_ReadEn;
reg  [23:0] DDR_writecounter;
reg  LoadEdges_tready_r;

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
assign DDR_00_WriteBurst = 8'd63;

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
	if(DDR_00_EndWrite && DDR_writecounter==TotalEdgeSize) 
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
	DDR_writecounter <= 24'd0;
else 
	DDR_writecounter <= DDR_writecounter + (state_EDGESFIFO_out[1] && ~EDGESFIFO_Empty);
end
always @(posedge AXI_ACLK_IN_0_buf) begin
    EDGESFIFO_ReadEn <= (state_EDGESFIFO_out[2] && DDR_00_WriteResp && ~EDGESFIFO_Empty && ~DDR_00_WriteLast);
end
always @(posedge AXI_ACLK_IN_0_buf) begin
    DDR_00_StartWrite <= (state_EDGESFIFO_out[1] && ~EDGESFIFO_Empty);
end
always @(posedge AXI_ACLK_IN_0_buf) begin
    DDR_00_WriteReady <= (state_EDGESFIFO_out[2] && DDR_00_WriteResp && ~EDGESFIFO_Empty && ~DDR_00_WriteLast);
end
always @(posedge AXI_ACLK_IN_0_buf) begin
if(state_EDGESFIFO_out[0]) 
	DDR_00_WriteAddr <= 33'd0;
else 
	DDR_00_WriteAddr <= {DDR_00_WriteAddr[32:12] + (state_EDGESFIFO_out[3] && DDR_00_EndWrite), 12'b000000};
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
.dout(DDR_00_WriteData),
.empty(EDGESFIFO_Empty)
);

//=========================================
//    Results
//=========================================
wire RESULTSFIFO_Full;
wire RESULTSFIFO_Empty;
reg  RESULTSFIFO_WriteEn;
reg  RESULTSFIFO_ReadEn;
reg  [19:0] RESULTS_readcounter;
wire [255:0] Vertex_Results; 
reg  [255:0] Vertex_ReadData;
reg  guardResults_tvalid;
reg  [3:0] HBM_ChannelR;
reg  [4:0] state_RESULTSFIFO_in;
reg  [4:0] state_RESULTSFIFO_out;
//localparam
//IDLE       = 5'b00001,
//STARTREAD  = 5'b00010,
//STARTWRITE = 5'b00010,
//WRITE      = 5'b00100,
//READ       = 5'b00100,
//ENDWRITE   = 5'b01000,
//ENDREAD    = 5'b01000,
//FINISH     = 5'b10000;

assign HBM_ReadBurst_Host = 8'd127;

assign Results_tdata = Vertex_Results;
assign Results_tkeep = 32'hFFFF_FFFF;
assign Results_tvalid = guardResults_tvalid;
assign Results_tlast = (state_RESULTSFIFO_in[4] && Results_tvalid && RESULTSFIFO_Empty);
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
	if(state_RESULTSFIFO_in[4] && RESULTSFIFO_Empty) 
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
	if(RESULTS_readcounter[19:2]==(MemoryOffset16-1) && (HBM_00_EndRead || HBM_01_EndRead || HBM_02_EndRead || HBM_03_EndRead || HBM_04_EndRead || HBM_05_EndRead || HBM_06_EndRead || HBM_07_EndRead || HBM_08_EndRead || HBM_09_EndRead || HBM_10_EndRead || HBM_11_EndRead || HBM_12_EndRead || HBM_13_EndRead || HBM_14_EndRead || HBM_15_EndRead)) 
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
always @(*) begin
   if     (RESULTS_readcounter[19:2] >= MemoryOffset15) HBM_ChannelR = 4'hF;
   else if(RESULTS_readcounter[19:2] >= MemoryOffset14) HBM_ChannelR = 4'hE;
   else if(RESULTS_readcounter[19:2] >= MemoryOffset13) HBM_ChannelR = 4'hD;
   else if(RESULTS_readcounter[19:2] >= MemoryOffset12) HBM_ChannelR = 4'hC;
   else if(RESULTS_readcounter[19:2] >= MemoryOffset11) HBM_ChannelR = 4'hB;
   else if(RESULTS_readcounter[19:2] >= MemoryOffset10) HBM_ChannelR = 4'hA;
   else if(RESULTS_readcounter[19:2] >= MemoryOffset9)  HBM_ChannelR = 4'h9;
   else if(RESULTS_readcounter[19:2] >= MemoryOffset8)  HBM_ChannelR = 4'h8;
   else if(RESULTS_readcounter[19:2] >= MemoryOffset7)  HBM_ChannelR = 4'h7;
   else if(RESULTS_readcounter[19:2] >= MemoryOffset6)  HBM_ChannelR = 4'h6;
   else if(RESULTS_readcounter[19:2] >= MemoryOffset5)  HBM_ChannelR = 4'h5;
   else if(RESULTS_readcounter[19:2] >= MemoryOffset4)  HBM_ChannelR = 4'h4;
   else if(RESULTS_readcounter[19:2] >= MemoryOffset3)  HBM_ChannelR = 4'h3;
   else if(RESULTS_readcounter[19:2] >= MemoryOffset2)  HBM_ChannelR = 4'h2;
   else if(RESULTS_readcounter[19:2] >= MemoryOffset1)  HBM_ChannelR = 4'h1;
   else                                                 HBM_ChannelR = 4'h0;
 end
always @(posedge AXI_ACLK_IN_0_buf) begin
    Vertex_ReadData <= HBM_ReadData_Host;
end
always @(posedge AXI_ACLK_IN_0_buf) begin
if(state_RESULTSFIFO_in[0]) 
	RESULTS_readcounter <= 24'd0;
else 
	RESULTS_readcounter <= RESULTS_readcounter + (state_RESULTSFIFO_in[1] && (HBM_00_EndRead || HBM_01_EndRead || HBM_02_EndRead || HBM_03_EndRead || HBM_04_EndRead || HBM_05_EndRead || HBM_06_EndRead || HBM_07_EndRead || HBM_08_EndRead || HBM_09_EndRead || HBM_10_EndRead || HBM_11_EndRead || HBM_12_EndRead || HBM_13_EndRead || HBM_14_EndRead || HBM_15_EndRead));
end
always @(posedge AXI_ACLK_IN_0_buf) begin
    RESULTSFIFO_WriteEn <= (state_RESULTSFIFO_in[1] && (HBM_00_ReadReady || HBM_01_ReadReady || HBM_02_ReadReady || HBM_03_ReadReady || HBM_04_ReadReady || HBM_05_ReadReady || HBM_06_ReadReady || HBM_07_ReadReady || HBM_08_ReadReady || HBM_09_ReadReady || HBM_10_ReadReady || HBM_11_ReadReady || HBM_12_ReadReady || HBM_13_ReadReady || HBM_14_ReadReady || HBM_15_ReadReady));
end
always @(posedge AXI_ACLK_IN_0_buf) begin
    HBM_15_StartRead_Host <= (state_RESULTSFIFO_in[2] && ~RESULTSFIFO_Full && HBM_ChannelR==4'hF);
    HBM_14_StartRead_Host <= (state_RESULTSFIFO_in[2] && ~RESULTSFIFO_Full && HBM_ChannelR==4'hE);
    HBM_13_StartRead_Host <= (state_RESULTSFIFO_in[2] && ~RESULTSFIFO_Full && HBM_ChannelR==4'hD);
    HBM_12_StartRead_Host <= (state_RESULTSFIFO_in[2] && ~RESULTSFIFO_Full && HBM_ChannelR==4'hC);
    HBM_11_StartRead_Host <= (state_RESULTSFIFO_in[2] && ~RESULTSFIFO_Full && HBM_ChannelR==4'hB);
    HBM_10_StartRead_Host <= (state_RESULTSFIFO_in[2] && ~RESULTSFIFO_Full && HBM_ChannelR==4'hA);
    HBM_09_StartRead_Host <= (state_RESULTSFIFO_in[2] && ~RESULTSFIFO_Full && HBM_ChannelR==4'h9);
    HBM_08_StartRead_Host <= (state_RESULTSFIFO_in[2] && ~RESULTSFIFO_Full && HBM_ChannelR==4'h8);
    HBM_07_StartRead_Host <= (state_RESULTSFIFO_in[2] && ~RESULTSFIFO_Full && HBM_ChannelR==4'h7);
    HBM_06_StartRead_Host <= (state_RESULTSFIFO_in[2] && ~RESULTSFIFO_Full && HBM_ChannelR==4'h6);
    HBM_05_StartRead_Host <= (state_RESULTSFIFO_in[2] && ~RESULTSFIFO_Full && HBM_ChannelR==4'h5);
    HBM_04_StartRead_Host <= (state_RESULTSFIFO_in[2] && ~RESULTSFIFO_Full && HBM_ChannelR==4'h4);
    HBM_03_StartRead_Host <= (state_RESULTSFIFO_in[2] && ~RESULTSFIFO_Full && HBM_ChannelR==4'h3);
    HBM_02_StartRead_Host <= (state_RESULTSFIFO_in[2] && ~RESULTSFIFO_Full && HBM_ChannelR==4'h2);
    HBM_01_StartRead_Host <= (state_RESULTSFIFO_in[2] && ~RESULTSFIFO_Full && HBM_ChannelR==4'h1);
    HBM_00_StartRead_Host <= (state_RESULTSFIFO_in[2] && ~RESULTSFIFO_Full && HBM_ChannelR==4'h0);
end
always @(posedge AXI_ACLK_IN_0_buf) begin
if(state_RESULTSFIFO_out[0]) 
	HBM_ReadAddr_Host <= 33'd0;
else 
	HBM_ReadAddr_Host <= {1'b0, HBM_ChannelR, HBM_ReadAddr_Host[27:12] + (state_RESULTSFIFO_in[2] && (HBM_00_EndRead || HBM_01_EndRead || HBM_02_EndRead || HBM_03_EndRead || HBM_04_EndRead || HBM_05_EndRead || HBM_06_EndRead || HBM_07_EndRead || HBM_08_EndRead || HBM_09_EndRead || HBM_10_EndRead || HBM_11_EndRead || HBM_12_EndRead || HBM_13_EndRead || HBM_14_EndRead || HBM_15_EndRead)), 12'b00000};
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
wire start;
assign start = (state_EDGESFIFO_out[4] && state_VERTICESFIFO_out[4]) ? 1'b1 : 1'b0;

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
if(ResultsStart) begin
HBM_00_StartRead = HBM_00_StartRead_Host;
HBM_01_StartRead = HBM_01_StartRead_Host;
HBM_02_StartRead = HBM_02_StartRead_Host;
HBM_03_StartRead = HBM_03_StartRead_Host;
HBM_04_StartRead = HBM_04_StartRead_Host;
HBM_05_StartRead = HBM_05_StartRead_Host;
HBM_06_StartRead = HBM_06_StartRead_Host;
HBM_07_StartRead = HBM_07_StartRead_Host;
HBM_08_StartRead = HBM_08_StartRead_Host;
HBM_09_StartRead = HBM_09_StartRead_Host;
HBM_10_StartRead = HBM_10_StartRead_Host;
HBM_11_StartRead = HBM_11_StartRead_Host;
HBM_12_StartRead = HBM_12_StartRead_Host;
HBM_13_StartRead = HBM_13_StartRead_Host;
HBM_14_StartRead = HBM_14_StartRead_Host;
HBM_15_StartRead = HBM_15_StartRead_Host;
end
else begin
HBM_00_StartRead = HBM_00_StartRead_PE;
HBM_01_StartRead = HBM_01_StartRead_PE;
HBM_02_StartRead = HBM_02_StartRead_PE;
HBM_03_StartRead = HBM_03_StartRead_PE;
HBM_04_StartRead = HBM_04_StartRead_PE;
HBM_05_StartRead = HBM_05_StartRead_PE;
HBM_06_StartRead = HBM_06_StartRead_PE;
HBM_07_StartRead = HBM_07_StartRead_PE;
HBM_08_StartRead = HBM_08_StartRead_PE;
HBM_09_StartRead = HBM_09_StartRead_PE;
HBM_10_StartRead = HBM_10_StartRead_PE;
HBM_11_StartRead = HBM_11_StartRead_PE;
HBM_12_StartRead = HBM_12_StartRead_PE;
HBM_13_StartRead = HBM_13_StartRead_PE;
HBM_14_StartRead = HBM_14_StartRead_PE;
HBM_15_StartRead = HBM_15_StartRead_PE;
end
if(ResultsStart) begin
HBM_00_ReadAddr = HBM_ReadAddr_Host;
HBM_01_ReadAddr = HBM_ReadAddr_Host;
HBM_02_ReadAddr = HBM_ReadAddr_Host;
HBM_03_ReadAddr = HBM_ReadAddr_Host;
HBM_04_ReadAddr = HBM_ReadAddr_Host;
HBM_05_ReadAddr = HBM_ReadAddr_Host;
HBM_06_ReadAddr = HBM_ReadAddr_Host;
HBM_07_ReadAddr = HBM_ReadAddr_Host;
HBM_08_ReadAddr = HBM_ReadAddr_Host;
HBM_09_ReadAddr = HBM_ReadAddr_Host;
HBM_10_ReadAddr = HBM_ReadAddr_Host;
HBM_11_ReadAddr = HBM_ReadAddr_Host;
HBM_12_ReadAddr = HBM_ReadAddr_Host;
HBM_13_ReadAddr = HBM_ReadAddr_Host;
HBM_14_ReadAddr = HBM_ReadAddr_Host;
HBM_15_ReadAddr = HBM_ReadAddr_Host;
end
begin
HBM_00_ReadAddr = HBM_00_ReadAddr_PE;
HBM_01_ReadAddr = HBM_01_ReadAddr_PE;
HBM_02_ReadAddr = HBM_02_ReadAddr_PE;
HBM_03_ReadAddr = HBM_03_ReadAddr_PE;
HBM_04_ReadAddr = HBM_04_ReadAddr_PE;
HBM_05_ReadAddr = HBM_05_ReadAddr_PE;
HBM_06_ReadAddr = HBM_06_ReadAddr_PE;
HBM_07_ReadAddr = HBM_07_ReadAddr_PE;
HBM_08_ReadAddr = HBM_08_ReadAddr_PE;
HBM_09_ReadAddr = HBM_09_ReadAddr_PE;
HBM_10_ReadAddr = HBM_10_ReadAddr_PE;
HBM_11_ReadAddr = HBM_11_ReadAddr_PE;
HBM_12_ReadAddr = HBM_12_ReadAddr_PE;
HBM_13_ReadAddr = HBM_13_ReadAddr_PE;
HBM_14_ReadAddr = HBM_14_ReadAddr_PE;
HBM_15_ReadAddr = HBM_15_ReadAddr_PE;
end
if(ResultsStart) begin
HBM_00_ReadBurst = HBM_ReadBurst_Host;
HBM_01_ReadBurst = HBM_ReadBurst_Host;
HBM_02_ReadBurst = HBM_ReadBurst_Host;
HBM_03_ReadBurst = HBM_ReadBurst_Host;
HBM_04_ReadBurst = HBM_ReadBurst_Host;
HBM_05_ReadBurst = HBM_ReadBurst_Host;
HBM_06_ReadBurst = HBM_ReadBurst_Host;
HBM_07_ReadBurst = HBM_ReadBurst_Host;
HBM_08_ReadBurst = HBM_ReadBurst_Host;
HBM_09_ReadBurst = HBM_ReadBurst_Host;
HBM_10_ReadBurst = HBM_ReadBurst_Host;
HBM_11_ReadBurst = HBM_ReadBurst_Host;
HBM_12_ReadBurst = HBM_ReadBurst_Host;
HBM_13_ReadBurst = HBM_ReadBurst_Host;
HBM_14_ReadBurst = HBM_ReadBurst_Host;
HBM_15_ReadBurst = HBM_ReadBurst_Host;
end
else begin 
HBM_00_ReadBurst = HBM_00_ReadBurst_PE;
HBM_01_ReadBurst = HBM_01_ReadBurst_PE;
HBM_02_ReadBurst = HBM_02_ReadBurst_PE;
HBM_03_ReadBurst = HBM_03_ReadBurst_PE;
HBM_04_ReadBurst = HBM_04_ReadBurst_PE;
HBM_05_ReadBurst = HBM_05_ReadBurst_PE;
HBM_06_ReadBurst = HBM_06_ReadBurst_PE;
HBM_07_ReadBurst = HBM_07_ReadBurst_PE;
HBM_08_ReadBurst = HBM_08_ReadBurst_PE;
HBM_09_ReadBurst = HBM_09_ReadBurst_PE;
HBM_10_ReadBurst = HBM_10_ReadBurst_PE;
HBM_11_ReadBurst = HBM_11_ReadBurst_PE;
HBM_12_ReadBurst = HBM_12_ReadBurst_PE;
HBM_13_ReadBurst = HBM_13_ReadBurst_PE;
HBM_14_ReadBurst = HBM_14_ReadBurst_PE;
HBM_15_ReadBurst = HBM_15_ReadBurst_PE;
end
case(HBM_ChannelR)
4'h0: HBM_ReadData_Host = HBM_00_ReadData;
4'h1: HBM_ReadData_Host = HBM_01_ReadData;
4'h2: HBM_ReadData_Host = HBM_02_ReadData;
4'h3: HBM_ReadData_Host = HBM_03_ReadData;
4'h4: HBM_ReadData_Host = HBM_04_ReadData;
4'h5: HBM_ReadData_Host = HBM_05_ReadData;
4'h6: HBM_ReadData_Host = HBM_06_ReadData;
4'h7: HBM_ReadData_Host = HBM_07_ReadData;
4'h8: HBM_ReadData_Host = HBM_08_ReadData;
4'h9: HBM_ReadData_Host = HBM_09_ReadData;
4'hA: HBM_ReadData_Host = HBM_10_ReadData;
4'hB: HBM_ReadData_Host = HBM_11_ReadData;
4'hC: HBM_ReadData_Host = HBM_12_ReadData;
4'hD: HBM_ReadData_Host = HBM_13_ReadData;
4'hE: HBM_ReadData_Host = HBM_14_ReadData;
4'hF: HBM_ReadData_Host = HBM_15_ReadData;
endcase
end

always @(*) begin
// Write Channel
if(start) begin
HBM_00_StartWrite = HBM_00_StartWrite_PE;
HBM_01_StartWrite = HBM_01_StartWrite_PE;
HBM_02_StartWrite = HBM_02_StartWrite_PE;
HBM_03_StartWrite = HBM_03_StartWrite_PE;
HBM_04_StartWrite = HBM_04_StartWrite_PE;
HBM_05_StartWrite = HBM_05_StartWrite_PE;
HBM_06_StartWrite = HBM_06_StartWrite_PE;
HBM_07_StartWrite = HBM_07_StartWrite_PE;
HBM_08_StartWrite = HBM_08_StartWrite_PE;
HBM_09_StartWrite = HBM_09_StartWrite_PE;
HBM_10_StartWrite = HBM_10_StartWrite_PE;
HBM_11_StartWrite = HBM_11_StartWrite_PE;
HBM_12_StartWrite = HBM_12_StartWrite_PE;
HBM_13_StartWrite = HBM_13_StartWrite_PE;
HBM_14_StartWrite = HBM_14_StartWrite_PE;
HBM_15_StartWrite = HBM_15_StartWrite_PE;
end
else begin
HBM_00_StartWrite = HBM_00_StartWrite_Host;
HBM_01_StartWrite = HBM_01_StartWrite_Host;
HBM_02_StartWrite = HBM_02_StartWrite_Host;
HBM_03_StartWrite = HBM_03_StartWrite_Host;
HBM_04_StartWrite = HBM_04_StartWrite_Host;
HBM_05_StartWrite = HBM_05_StartWrite_Host;
HBM_06_StartWrite = HBM_06_StartWrite_Host;
HBM_07_StartWrite = HBM_07_StartWrite_Host;
HBM_08_StartWrite = HBM_08_StartWrite_Host;
HBM_09_StartWrite = HBM_09_StartWrite_Host;
HBM_10_StartWrite = HBM_10_StartWrite_Host;
HBM_11_StartWrite = HBM_11_StartWrite_Host;
HBM_12_StartWrite = HBM_12_StartWrite_Host;
HBM_13_StartWrite = HBM_13_StartWrite_Host;
HBM_14_StartWrite = HBM_14_StartWrite_Host;
HBM_15_StartWrite = HBM_15_StartWrite_Host;
end 
if(start) begin
HBM_00_WriteAddr = HBM_00_WriteAddr_PE;
HBM_01_WriteAddr = HBM_01_WriteAddr_PE;
HBM_02_WriteAddr = HBM_02_WriteAddr_PE;
HBM_03_WriteAddr = HBM_03_WriteAddr_PE;
HBM_04_WriteAddr = HBM_04_WriteAddr_PE;
HBM_05_WriteAddr = HBM_05_WriteAddr_PE;
HBM_06_WriteAddr = HBM_06_WriteAddr_PE;
HBM_07_WriteAddr = HBM_07_WriteAddr_PE;
HBM_08_WriteAddr = HBM_08_WriteAddr_PE;
HBM_09_WriteAddr = HBM_09_WriteAddr_PE;
HBM_10_WriteAddr = HBM_10_WriteAddr_PE;
HBM_11_WriteAddr = HBM_11_WriteAddr_PE;
HBM_12_WriteAddr = HBM_12_WriteAddr_PE;
HBM_13_WriteAddr = HBM_13_WriteAddr_PE;
HBM_14_WriteAddr = HBM_14_WriteAddr_PE;
HBM_15_WriteAddr = HBM_15_WriteAddr_PE;
end
else begin
HBM_00_WriteAddr = HBM_WriteAddr_Host;
HBM_01_WriteAddr = HBM_WriteAddr_Host;
HBM_02_WriteAddr = HBM_WriteAddr_Host;
HBM_03_WriteAddr = HBM_WriteAddr_Host;
HBM_04_WriteAddr = HBM_WriteAddr_Host;
HBM_05_WriteAddr = HBM_WriteAddr_Host;
HBM_06_WriteAddr = HBM_WriteAddr_Host;
HBM_07_WriteAddr = HBM_WriteAddr_Host;
HBM_08_WriteAddr = HBM_WriteAddr_Host;
HBM_09_WriteAddr = HBM_WriteAddr_Host;
HBM_10_WriteAddr = HBM_WriteAddr_Host;
HBM_11_WriteAddr = HBM_WriteAddr_Host;
HBM_12_WriteAddr = HBM_WriteAddr_Host;
HBM_13_WriteAddr = HBM_WriteAddr_Host;
HBM_14_WriteAddr = HBM_WriteAddr_Host;
HBM_15_WriteAddr = HBM_WriteAddr_Host;
end 
if(start) begin
HBM_00_WriteBurst = HBM_00_WriteBurst_PE;
HBM_01_WriteBurst = HBM_01_WriteBurst_PE;
HBM_02_WriteBurst = HBM_02_WriteBurst_PE;
HBM_03_WriteBurst = HBM_03_WriteBurst_PE;
HBM_04_WriteBurst = HBM_04_WriteBurst_PE;
HBM_05_WriteBurst = HBM_05_WriteBurst_PE;
HBM_06_WriteBurst = HBM_06_WriteBurst_PE;
HBM_07_WriteBurst = HBM_07_WriteBurst_PE;
HBM_08_WriteBurst = HBM_08_WriteBurst_PE;
HBM_09_WriteBurst = HBM_09_WriteBurst_PE;
HBM_10_WriteBurst = HBM_10_WriteBurst_PE;
HBM_11_WriteBurst = HBM_11_WriteBurst_PE;
HBM_12_WriteBurst = HBM_12_WriteBurst_PE;
HBM_13_WriteBurst = HBM_13_WriteBurst_PE;
HBM_14_WriteBurst = HBM_14_WriteBurst_PE;
HBM_15_WriteBurst = HBM_15_WriteBurst_PE;
end
else begin
HBM_00_WriteBurst = HBM_WriteBurst_Host;
HBM_01_WriteBurst = HBM_WriteBurst_Host;
HBM_02_WriteBurst = HBM_WriteBurst_Host;
HBM_03_WriteBurst = HBM_WriteBurst_Host;
HBM_04_WriteBurst = HBM_WriteBurst_Host;
HBM_05_WriteBurst = HBM_WriteBurst_Host;
HBM_06_WriteBurst = HBM_WriteBurst_Host;
HBM_07_WriteBurst = HBM_WriteBurst_Host;
HBM_08_WriteBurst = HBM_WriteBurst_Host;
HBM_09_WriteBurst = HBM_WriteBurst_Host;
HBM_10_WriteBurst = HBM_WriteBurst_Host;
HBM_11_WriteBurst = HBM_WriteBurst_Host;
HBM_12_WriteBurst = HBM_WriteBurst_Host;
HBM_13_WriteBurst = HBM_WriteBurst_Host;
HBM_14_WriteBurst = HBM_WriteBurst_Host;
HBM_15_WriteBurst = HBM_WriteBurst_Host;
end 
if(start) begin
HBM_00_WriteData = HBM_00_WriteData_PE;
HBM_01_WriteData = HBM_01_WriteData_PE;
HBM_02_WriteData = HBM_02_WriteData_PE;
HBM_03_WriteData = HBM_03_WriteData_PE;
HBM_04_WriteData = HBM_04_WriteData_PE;
HBM_05_WriteData = HBM_05_WriteData_PE;
HBM_06_WriteData = HBM_06_WriteData_PE;
HBM_07_WriteData = HBM_07_WriteData_PE;
HBM_08_WriteData = HBM_08_WriteData_PE;
HBM_09_WriteData = HBM_09_WriteData_PE;
HBM_10_WriteData = HBM_10_WriteData_PE;
HBM_11_WriteData = HBM_11_WriteData_PE;
HBM_12_WriteData = HBM_12_WriteData_PE;
HBM_13_WriteData = HBM_13_WriteData_PE;
HBM_14_WriteData = HBM_14_WriteData_PE;
HBM_15_WriteData = HBM_15_WriteData_PE;
end
else begin
HBM_00_WriteData = HBM_WriteData_Host;
HBM_01_WriteData = HBM_WriteData_Host;
HBM_02_WriteData = HBM_WriteData_Host;
HBM_03_WriteData = HBM_WriteData_Host;
HBM_04_WriteData = HBM_WriteData_Host;
HBM_05_WriteData = HBM_WriteData_Host;
HBM_06_WriteData = HBM_WriteData_Host;
HBM_07_WriteData = HBM_WriteData_Host;
HBM_08_WriteData = HBM_WriteData_Host;
HBM_09_WriteData = HBM_WriteData_Host;
HBM_10_WriteData = HBM_WriteData_Host;
HBM_11_WriteData = HBM_WriteData_Host;
HBM_12_WriteData = HBM_WriteData_Host;
HBM_13_WriteData = HBM_WriteData_Host;
HBM_14_WriteData = HBM_WriteData_Host;
HBM_15_WriteData = HBM_WriteData_Host;
end 
if(start) begin
HBM_00_WriteReady = HBM_00_WriteReady_PE;
HBM_01_WriteReady = HBM_01_WriteReady_PE;
HBM_02_WriteReady = HBM_02_WriteReady_PE;
HBM_03_WriteReady = HBM_03_WriteReady_PE;
HBM_04_WriteReady = HBM_04_WriteReady_PE;
HBM_05_WriteReady = HBM_05_WriteReady_PE;
HBM_06_WriteReady = HBM_06_WriteReady_PE;
HBM_07_WriteReady = HBM_07_WriteReady_PE;
HBM_08_WriteReady = HBM_08_WriteReady_PE;
HBM_09_WriteReady = HBM_09_WriteReady_PE;
HBM_10_WriteReady = HBM_10_WriteReady_PE;
HBM_11_WriteReady = HBM_11_WriteReady_PE;
HBM_12_WriteReady = HBM_12_WriteReady_PE;
HBM_13_WriteReady = HBM_13_WriteReady_PE;
HBM_14_WriteReady = HBM_14_WriteReady_PE;
HBM_15_WriteReady = HBM_15_WriteReady_PE;
end
else begin
HBM_00_WriteReady = HBM_00_WriteReady_Host;
HBM_01_WriteReady = HBM_01_WriteReady_Host;
HBM_02_WriteReady = HBM_02_WriteReady_Host;
HBM_03_WriteReady = HBM_03_WriteReady_Host;
HBM_04_WriteReady = HBM_04_WriteReady_Host;
HBM_05_WriteReady = HBM_05_WriteReady_Host;
HBM_06_WriteReady = HBM_06_WriteReady_Host;
HBM_07_WriteReady = HBM_07_WriteReady_Host;
HBM_08_WriteReady = HBM_08_WriteReady_Host;
HBM_09_WriteReady = HBM_09_WriteReady_Host;
HBM_10_WriteReady = HBM_10_WriteReady_Host;
HBM_11_WriteReady = HBM_11_WriteReady_Host;
HBM_12_WriteReady = HBM_12_WriteReady_Host;
HBM_13_WriteReady = HBM_13_WriteReady_Host;
HBM_14_WriteReady = HBM_14_WriteReady_Host;
HBM_15_WriteReady = HBM_15_WriteReady_Host;
end
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
    
    .HBM_01_start_write  (HBM_01_StartWrite),
    .HBM_01_write_addr   (HBM_01_WriteAddr),
    .HBM_01_wburst       (HBM_01_WriteBurst),
    .HBM_01_write_data   (HBM_01_WriteData),
    .HBM_01_write_ready  (HBM_01_WriteReady),
    .HBM_01_write_resp   (HBM_01_WriteResp),
    .HBM_01_write_last   (HBM_01_WriteLast),
    .HBM_01_end_write    (HBM_01_EndWrite),
    
    .HBM_01_start_read   (HBM_01_StartRead),
    .HBM_01_read_addr    (HBM_01_ReadAddr),
    .HBM_01_rburst       (HBM_01_ReadBurst),
    .HBM_01_read_data    (HBM_01_ReadData),
    .HBM_01_read_ready   (HBM_01_ReadReady),
    .HBM_01_end_read     (HBM_01_EndRead),
    
    .HBM_02_start_write  (HBM_02_StartWrite),
    .HBM_02_write_addr   (HBM_02_WriteAddr),
    .HBM_02_wburst       (HBM_02_WriteBurst),
    .HBM_02_write_data   (HBM_02_WriteData),
    .HBM_02_write_ready  (HBM_02_WriteReady),
    .HBM_02_write_resp   (HBM_02_WriteResp),
    .HBM_02_write_last   (HBM_02_WriteLast),
    .HBM_02_end_write    (HBM_02_EndWrite),
    
    .HBM_02_start_read   (HBM_02_StartRead),
    .HBM_02_read_addr    (HBM_02_ReadAddr),
    .HBM_02_rburst       (HBM_02_ReadBurst),
    .HBM_02_read_data    (HBM_02_ReadData),
    .HBM_02_read_ready   (HBM_02_ReadReady),
    .HBM_02_end_read     (HBM_02_EndRead),
    
    .HBM_03_start_write  (HBM_03_StartWrite),
    .HBM_03_write_addr   (HBM_03_WriteAddr),
    .HBM_03_wburst       (HBM_03_WriteBurst),
    .HBM_03_write_data   (HBM_03_WriteData),
    .HBM_03_write_ready  (HBM_03_WriteReady),
    .HBM_03_write_resp   (HBM_03_WriteResp),
    .HBM_03_write_last   (HBM_03_WriteLast),
    .HBM_03_end_write    (HBM_03_EndWrite),
    
    .HBM_03_start_read   (HBM_03_StartRead),
    .HBM_03_read_addr    (HBM_03_ReadAddr),
    .HBM_03_rburst       (HBM_03_ReadBurst),
    .HBM_03_read_data    (HBM_03_ReadData),
    .HBM_03_read_ready   (HBM_03_ReadReady),
    .HBM_03_end_read     (HBM_03_EndRead),
    
    .HBM_04_start_write  (HBM_04_StartWrite),
    .HBM_04_write_addr   (HBM_04_WriteAddr),
    .HBM_04_wburst       (HBM_04_WriteBurst),
    .HBM_04_write_data   (HBM_04_WriteData),
    .HBM_04_write_ready  (HBM_04_WriteReady),
    .HBM_04_write_resp   (HBM_04_WriteResp),
    .HBM_04_write_last   (HBM_04_WriteLast),
    .HBM_04_end_write    (HBM_04_EndWrite),
    
    .HBM_04_start_read   (HBM_04_StartRead),
    .HBM_04_read_addr    (HBM_04_ReadAddr),
    .HBM_04_rburst       (HBM_04_ReadBurst),
    .HBM_04_read_data    (HBM_04_ReadData),
    .HBM_04_read_ready   (HBM_04_ReadReady),
    .HBM_04_end_read     (HBM_04_EndRead),
    
    .HBM_05_start_write  (HBM_05_StartWrite),
    .HBM_05_write_addr   (HBM_05_WriteAddr),
    .HBM_05_wburst       (HBM_05_WriteBurst),
    .HBM_05_write_data   (HBM_05_WriteData),
    .HBM_05_write_ready  (HBM_05_WriteReady),
    .HBM_05_write_resp   (HBM_05_WriteResp),
    .HBM_05_write_last   (HBM_05_WriteLast),
    .HBM_05_end_write    (HBM_05_EndWrite),
    
    .HBM_05_start_read   (HBM_05_StartRead),
    .HBM_05_read_addr    (HBM_05_ReadAddr),
    .HBM_05_rburst       (HBM_05_ReadBurst),
    .HBM_05_read_data    (HBM_05_ReadData),
    .HBM_05_read_ready   (HBM_05_ReadReady),
    .HBM_05_end_read     (HBM_05_EndRead),
    
    .HBM_06_start_write  (HBM_06_StartWrite),
    .HBM_06_write_addr   (HBM_06_WriteAddr),
    .HBM_06_wburst       (HBM_06_WriteBurst),
    .HBM_06_write_data   (HBM_06_WriteData),
    .HBM_06_write_ready  (HBM_06_WriteReady),
    .HBM_06_write_resp   (HBM_06_WriteResp),
    .HBM_06_write_last   (HBM_06_WriteLast),
    .HBM_06_end_write    (HBM_06_EndWrite),
    
    .HBM_06_start_read   (HBM_06_StartRead),
    .HBM_06_read_addr    (HBM_06_ReadAddr),
    .HBM_06_rburst       (HBM_06_ReadBurst),
    .HBM_06_read_data    (HBM_06_ReadData),
    .HBM_06_read_ready   (HBM_06_ReadReady),
    .HBM_06_end_read     (HBM_06_EndRead),
    
    .HBM_07_start_write  (HBM_07_StartWrite),
    .HBM_07_write_addr   (HBM_07_WriteAddr),
    .HBM_07_wburst       (HBM_07_WriteBurst),
    .HBM_07_write_data   (HBM_07_WriteData),
    .HBM_07_write_ready  (HBM_07_WriteReady),
    .HBM_07_write_resp   (HBM_07_WriteResp),
    .HBM_07_write_last   (HBM_07_WriteLast),
    .HBM_07_end_write    (HBM_07_EndWrite),
    
    .HBM_07_start_read   (HBM_07_StartRead),
    .HBM_07_read_addr    (HBM_07_ReadAddr),
    .HBM_07_rburst       (HBM_07_ReadBurst),
    .HBM_07_read_data    (HBM_07_ReadData),
    .HBM_07_read_ready   (HBM_07_ReadReady),
    .HBM_07_end_read     (HBM_07_EndRead),
    
    .HBM_08_start_write  (HBM_08_StartWrite),
    .HBM_08_write_addr   (HBM_08_WriteAddr),
    .HBM_08_wburst       (HBM_08_WriteBurst),
    .HBM_08_write_data   (HBM_08_WriteData),
    .HBM_08_write_ready  (HBM_08_WriteReady),
    .HBM_08_write_resp   (HBM_08_WriteResp),
    .HBM_08_write_last   (HBM_08_WriteLast),
    .HBM_08_end_write    (HBM_08_EndWrite),
    
    .HBM_08_start_read   (HBM_08_StartRead),
    .HBM_08_read_addr    (HBM_08_ReadAddr),
    .HBM_08_rburst       (HBM_08_ReadBurst),
    .HBM_08_read_data    (HBM_08_ReadData),
    .HBM_08_read_ready   (HBM_08_ReadReady),
    .HBM_08_end_read     (HBM_08_EndRead),
    
    .HBM_09_start_write  (HBM_09_StartWrite),
    .HBM_09_write_addr   (HBM_09_WriteAddr),
    .HBM_09_wburst       (HBM_09_WriteBurst),
    .HBM_09_write_data   (HBM_09_WriteData),
    .HBM_09_write_ready  (HBM_09_WriteReady),
    .HBM_09_write_resp   (HBM_09_WriteResp),
    .HBM_09_write_last   (HBM_09_WriteLast),
    .HBM_09_end_write    (HBM_09_EndWrite),
    
    .HBM_09_start_read   (HBM_09_StartRead),
    .HBM_09_read_addr    (HBM_09_ReadAddr),
    .HBM_09_rburst       (HBM_09_ReadBurst),
    .HBM_09_read_data    (HBM_09_ReadData),
    .HBM_09_read_ready   (HBM_09_ReadReady),
    .HBM_09_end_read     (HBM_09_EndRead),
    
    .HBM_10_start_write  (HBM_10_StartWrite),
    .HBM_10_write_addr   (HBM_10_WriteAddr),
    .HBM_10_wburst       (HBM_10_WriteBurst),
    .HBM_10_write_data   (HBM_10_WriteData),
    .HBM_10_write_ready  (HBM_10_WriteReady),
    .HBM_10_write_resp   (HBM_10_WriteResp),
    .HBM_10_write_last   (HBM_10_WriteLast),
    .HBM_10_end_write    (HBM_10_EndWrite),
    
    .HBM_10_start_read   (HBM_10_StartRead),
    .HBM_10_read_addr    (HBM_10_ReadAddr),
    .HBM_10_rburst       (HBM_10_ReadBurst),
    .HBM_10_read_data    (HBM_10_ReadData),
    .HBM_10_read_ready   (HBM_10_ReadReady),
    .HBM_10_end_read     (HBM_10_EndRead),
    
    .HBM_11_start_write  (HBM_11_StartWrite),
    .HBM_11_write_addr   (HBM_11_WriteAddr),
    .HBM_11_wburst       (HBM_11_WriteBurst),
    .HBM_11_write_data   (HBM_11_WriteData),
    .HBM_11_write_ready  (HBM_11_WriteReady),
    .HBM_11_write_resp   (HBM_11_WriteResp),
    .HBM_11_write_last   (HBM_11_WriteLast),
    .HBM_11_end_write    (HBM_11_EndWrite),
    
    .HBM_11_start_read   (HBM_11_StartRead),
    .HBM_11_read_addr    (HBM_11_ReadAddr),
    .HBM_11_rburst       (HBM_11_ReadBurst),
    .HBM_11_read_data    (HBM_11_ReadData),
    .HBM_11_read_ready   (HBM_11_ReadReady),
    .HBM_11_end_read     (HBM_11_EndRead),
    
    .HBM_12_start_write  (HBM_12_StartWrite),
    .HBM_12_write_addr   (HBM_12_WriteAddr),
    .HBM_12_wburst       (HBM_12_WriteBurst),
    .HBM_12_write_data   (HBM_12_WriteData),
    .HBM_12_write_ready  (HBM_12_WriteReady),
    .HBM_12_write_resp   (HBM_12_WriteResp),
    .HBM_12_write_last   (HBM_12_WriteLast),
    .HBM_12_end_write    (HBM_12_EndWrite),
    
    .HBM_12_start_read   (HBM_12_StartRead),
    .HBM_12_read_addr    (HBM_12_ReadAddr),
    .HBM_12_rburst       (HBM_12_ReadBurst),
    .HBM_12_read_data    (HBM_12_ReadData),
    .HBM_12_read_ready   (HBM_12_ReadReady),
    .HBM_12_end_read     (HBM_12_EndRead),
    
    .HBM_13_start_write  (HBM_13_StartWrite),
    .HBM_13_write_addr   (HBM_13_WriteAddr),
    .HBM_13_wburst       (HBM_13_WriteBurst),
    .HBM_13_write_data   (HBM_13_WriteData),
    .HBM_13_write_ready  (HBM_13_WriteReady),
    .HBM_13_write_resp   (HBM_13_WriteResp),
    .HBM_13_write_last   (HBM_13_WriteLast),
    .HBM_13_end_write    (HBM_13_EndWrite),
    
    .HBM_13_start_read   (HBM_13_StartRead),
    .HBM_13_read_addr    (HBM_13_ReadAddr),
    .HBM_13_rburst       (HBM_13_ReadBurst),
    .HBM_13_read_data    (HBM_13_ReadData),
    .HBM_13_read_ready   (HBM_13_ReadReady),
    .HBM_13_end_read     (HBM_13_EndRead),
    
    .HBM_14_start_write  (HBM_14_StartWrite),
    .HBM_14_write_addr   (HBM_14_WriteAddr),
    .HBM_14_wburst       (HBM_14_WriteBurst),
    .HBM_14_write_data   (HBM_14_WriteData),
    .HBM_14_write_ready  (HBM_14_WriteReady),
    .HBM_14_write_resp   (HBM_14_WriteResp),
    .HBM_14_write_last   (HBM_14_WriteLast),
    .HBM_14_end_write    (HBM_14_EndWrite),
    
    .HBM_14_start_read   (HBM_14_StartRead),
    .HBM_14_read_addr    (HBM_14_ReadAddr),
    .HBM_14_rburst       (HBM_14_ReadBurst),
    .HBM_14_read_data    (HBM_14_ReadData),
    .HBM_14_read_ready   (HBM_14_ReadReady),
    .HBM_14_end_read     (HBM_14_EndRead),
    
    .HBM_15_start_write  (HBM_15_StartWrite),
    .HBM_15_write_addr   (HBM_15_WriteAddr),
    .HBM_15_wburst       (HBM_15_WriteBurst),
    .HBM_15_write_data   (HBM_15_WriteData),
    .HBM_15_write_ready  (HBM_15_WriteReady),
    .HBM_15_write_resp   (HBM_15_WriteResp),
    .HBM_15_write_last   (HBM_15_WriteLast),
    .HBM_15_end_write    (HBM_15_EndWrite),
    
    .HBM_15_start_read   (HBM_15_StartRead),
    .HBM_15_read_addr    (HBM_15_ReadAddr),
    .HBM_15_rburst       (HBM_15_ReadBurst),
    .HBM_15_read_data    (HBM_15_ReadData),
    .HBM_15_read_ready   (HBM_15_ReadReady),
    .HBM_15_end_read     (HBM_15_EndRead),
    
//========================================================================================
//                                      DDR
//========================================================================================

    .c0_sys_clk_i           (AXI_ACLK_IN_0_buf),

    .DDR_00_start_write  (DDR_00_StartWrite),
    .DDR_00_write_addr   ({1'b0, DDR_00_WriteAddr}),
    .DDR_00_wburst       (DDR_00_WriteBurst),
    .DDR_00_write_data   (DDR_00_WriteData),
    .DDR_00_write_ready  (DDR_00_WriteReady),
    .DDR_00_write_resp   (DDR_00_WriteResp),
    .DDR_00_write_last   (DDR_00_WriteLast),
    .DDR_00_end_write    (DDR_00_EndWrite),
    
    .DDR_00_start_read   (DDR_00_StartRead),
    .DDR_00_read_addr    ({1'b0, DDR_00_ReadAddr}),
    .DDR_00_rburst       (DDR_00_ReadBurst),
    .DDR_00_read_data    (DDR_00_ReadData),
    .DDR_00_read_ready   (DDR_00_ReadReady),
    .DDR_00_end_read     (DDR_00_EndRead),
    
    .DDR_01_start_write  (0),
    .DDR_01_write_addr   (0),
    .DDR_01_wburst       (0),
    .DDR_01_write_data   (0),
    .DDR_01_write_ready  (0),
    .DDR_01_write_resp   (),
    .DDR_01_write_last   (),
    .DDR_01_end_write    (),
    
    .DDR_01_start_read   (DDR_01_StartRead),
    .DDR_01_read_addr    ({1'b0, DDR_01_ReadAddr}),
    .DDR_01_rburst       (DDR_01_ReadBurst),
    .DDR_01_read_data    (DDR_01_ReadData),
    
    .DDR_01_read_ready   (DDR_01_ReadReady),
    .DDR_01_end_read     (DDR_01_EndRead),
    
    .DDR_02_start_write  (0),
    .DDR_02_write_addr   (0),
    .DDR_02_wburst       (0),
    .DDR_02_write_data   (0),
    .DDR_02_write_ready  (0),
    .DDR_02_write_resp   (),
    .DDR_02_write_last   (),
    .DDR_02_end_write    (),
    
    .DDR_02_start_read   (DDR_02_StartRead),
    .DDR_02_read_addr    ({1'b0, DDR_02_ReadAddr}),
    .DDR_02_rburst       (DDR_02_ReadBurst),
    .DDR_02_read_data    (DDR_02_ReadData),
    
    .DDR_02_read_ready   (DDR_02_ReadReady),
    .DDR_02_end_read     (DDR_02_EndRead),
    
    .DDR_03_start_write  (0),
    .DDR_03_write_addr   (0),
    .DDR_03_wburst       (0),
    .DDR_03_write_data   (0),
    .DDR_03_write_ready  (0),
    .DDR_03_write_resp   (),
    .DDR_03_write_last   (),
    .DDR_03_end_write    (),
    
    .DDR_03_start_read   (DDR_03_StartRead),
    .DDR_03_read_addr    ({1'b0, DDR_03_ReadAddr}),
    .DDR_03_rburst       (DDR_03_ReadBurst),
    .DDR_03_read_data    (DDR_03_ReadData),
    
    .DDR_03_read_ready   (DDR_03_ReadReady),
    .DDR_03_end_read     (DDR_03_EndRead),
    
    .DDR_04_start_write  (0),
    .DDR_04_write_addr   (0),
    .DDR_04_wburst       (0),
    .DDR_04_write_data   (0),
    .DDR_04_write_ready  (0),
    .DDR_04_write_resp   (),
    .DDR_04_write_last   (),
    .DDR_04_end_write    (),
    
    .DDR_04_start_read   (DDR_04_StartRead),
    .DDR_04_read_addr    ({1'b0, DDR_04_ReadAddr}),
    .DDR_04_rburst       (DDR_04_ReadBurst),
    .DDR_04_read_data    (DDR_04_ReadData),
    
    .DDR_04_read_ready   (DDR_04_ReadReady),
    .DDR_04_end_read     (DDR_04_EndRead),
    
    .DDR_05_start_write  (0),
    .DDR_05_write_addr   (0),
    .DDR_05_wburst       (0),
    .DDR_05_write_data   (0),
    .DDR_05_write_ready  (0),
    .DDR_05_write_resp   (),
    .DDR_05_write_last   (),
    .DDR_05_end_write    (),
    
    .DDR_05_start_read   (DDR_05_StartRead),
    .DDR_05_read_addr    ({1'b0, DDR_05_ReadAddr}),
    .DDR_05_rburst       (DDR_05_ReadBurst),
    .DDR_05_read_data    (DDR_05_ReadData),
    
    .DDR_05_read_ready   (DDR_05_ReadReady),
    .DDR_05_end_read     (DDR_05_EndRead),
    
    .DDR_06_start_write  (0),
    .DDR_06_write_addr   (0),
    .DDR_06_wburst       (0),
    .DDR_06_write_data   (0),
    .DDR_06_write_ready  (0),
    .DDR_06_write_resp   (),
    .DDR_06_write_last   (),
    .DDR_06_end_write    (),
    
    .DDR_06_start_read   (DDR_06_StartRead),
    .DDR_06_read_addr    ({1'b0, DDR_06_ReadAddr}),
    .DDR_06_rburst       (DDR_06_ReadBurst),
    .DDR_06_read_data    (DDR_06_ReadData),
    
    .DDR_06_read_ready   (DDR_06_ReadReady),
    .DDR_06_end_read     (DDR_06_EndRead),
    
    .DDR_07_start_write  (0),
    .DDR_07_write_addr   (0),
    .DDR_07_wburst       (0),
    .DDR_07_write_data   (0),
    .DDR_07_write_ready  (0),
    .DDR_07_write_resp   (),
    .DDR_07_write_last   (),
    .DDR_07_end_write    (),
    
    .DDR_07_start_read   (DDR_07_StartRead),
    .DDR_07_read_addr    ({1'b0, DDR_07_ReadAddr}),
    .DDR_07_rburst       (DDR_07_ReadBurst),
    .DDR_07_read_data    (DDR_07_ReadData),
    
    .DDR_07_read_ready   (DDR_07_ReadReady),
    .DDR_07_end_read     (DDR_07_EndRead),
    
    .DDR_08_start_write  (0),
    .DDR_08_write_addr   (0),
    .DDR_08_wburst       (0),
    .DDR_08_write_data   (0),
    .DDR_08_write_ready  (0),
    .DDR_08_write_resp   (),
    .DDR_08_write_last   (),
    .DDR_08_end_write    (),
    
    .DDR_08_start_read   (DDR_08_StartRead),
    .DDR_08_read_addr    ({1'b0, DDR_08_ReadAddr}),
    .DDR_08_rburst       (DDR_08_ReadBurst),
    .DDR_08_read_data    (DDR_08_ReadData),
    
    .DDR_08_read_ready   (DDR_08_ReadReady),
    .DDR_08_end_read     (DDR_08_EndRead),
    
    .DDR_09_start_write  (0),
    .DDR_09_write_addr   (0),
    .DDR_09_wburst       (0),
    .DDR_09_write_data   (0),
    .DDR_09_write_ready  (0),
    .DDR_09_write_resp   (),
    .DDR_09_write_last   (),
    .DDR_09_end_write    (),
    
    .DDR_09_start_read   (DDR_09_StartRead),
    .DDR_09_read_addr    ({1'b0, DDR_09_ReadAddr}),
    .DDR_09_rburst       (DDR_09_ReadBurst),
    .DDR_09_read_data    (DDR_09_ReadData),
    
    .DDR_09_read_ready   (DDR_09_ReadReady),
    .DDR_09_end_read     (DDR_09_EndRead),
    
    .DDR_10_start_write  (0),
    .DDR_10_write_addr   (0),
    .DDR_10_wburst       (0),
    .DDR_10_write_data   (0),
    .DDR_10_write_ready  (0),
    .DDR_10_write_resp   (),
    .DDR_10_write_last   (),
    .DDR_10_end_write    (),
    
    .DDR_10_start_read   (DDR_10_StartRead),
    .DDR_10_read_addr    ({1'b0, DDR_10_ReadAddr}),
    .DDR_10_rburst       (DDR_10_ReadBurst),
    .DDR_10_read_data    (DDR_10_ReadData),
    
    .DDR_10_read_ready   (DDR_10_ReadReady),
    .DDR_10_end_read     (DDR_10_EndRead),
    
    .DDR_11_start_write  (0),
    .DDR_11_write_addr   (0),
    .DDR_11_wburst       (0),
    .DDR_11_write_data   (0),
    .DDR_11_write_ready  (0),
    .DDR_11_write_resp   (),
    .DDR_11_write_last   (),
    .DDR_11_end_write    (),
    
    .DDR_11_start_read   (DDR_11_StartRead),
    .DDR_11_read_addr    ({1'b0, DDR_11_ReadAddr}),
    .DDR_11_rburst       (DDR_11_ReadBurst),
    .DDR_11_read_data    (DDR_11_ReadData),
    
    .DDR_11_read_ready   (DDR_11_ReadReady),
    .DDR_11_end_read     (DDR_11_EndRead),
    
    .DDR_12_start_write  (0),
    .DDR_12_write_addr   (0),
    .DDR_12_wburst       (0),
    .DDR_12_write_data   (0),
    .DDR_12_write_ready  (0),
    .DDR_12_write_resp   (),
    .DDR_12_write_last   (),
    .DDR_12_end_write    (),
    
    .DDR_12_start_read   (DDR_12_StartRead),
    .DDR_12_read_addr    ({1'b0, DDR_12_ReadAddr}),
    .DDR_12_rburst       (DDR_12_ReadBurst),
    .DDR_12_read_data    (DDR_12_ReadData),
    
    .DDR_12_read_ready   (DDR_12_ReadReady),
    .DDR_12_end_read     (DDR_12_EndRead),
    
    .DDR_13_start_write  (0),
    .DDR_13_write_addr   (0),
    .DDR_13_wburst       (0),
    .DDR_13_write_data   (0),
    .DDR_13_write_ready  (0),
    .DDR_13_write_resp   (),
    .DDR_13_write_last   (),
    .DDR_13_end_write    (),
    
    .DDR_13_start_read   (DDR_13_StartRead),
    .DDR_13_read_addr    ({1'b0, DDR_13_ReadAddr}),
    .DDR_13_rburst       (DDR_13_ReadBurst),
    .DDR_13_read_data    (DDR_13_ReadData),
    
    .DDR_13_read_ready   (DDR_13_ReadReady),
    .DDR_13_end_read     (DDR_13_EndRead),
    
    .DDR_14_start_write  (0),
    .DDR_14_write_addr   (0),
    .DDR_14_wburst       (0),
    .DDR_14_write_data   (0),
    .DDR_14_write_ready  (0),
    .DDR_14_write_resp   (),
    .DDR_14_write_last   (),
    .DDR_14_end_write    (),
    
    .DDR_14_start_read   (DDR_14_StartRead),
    .DDR_14_read_addr    ({1'b0, DDR_14_ReadAddr}),
    .DDR_14_rburst       (DDR_14_ReadBurst),
    .DDR_14_read_data    (DDR_14_ReadData),
    
    .DDR_14_read_ready   (DDR_14_ReadReady),
    .DDR_14_end_read     (DDR_14_EndRead),
    
    .DDR_15_start_write  (0),
    .DDR_15_write_addr   (0),
    .DDR_15_wburst       (0),
    .DDR_15_write_data   (0),
    .DDR_15_write_ready  (0),
    .DDR_15_write_resp   (),
    .DDR_15_write_last   (),
    .DDR_15_end_write    (),
    
    .DDR_15_start_read   (DDR_15_StartRead),
    .DDR_15_read_addr    ({1'b0, DDR_15_ReadAddr}),
    .DDR_15_rburst       (DDR_15_ReadBurst),
    .DDR_15_read_data    (DDR_15_ReadData),
    
    .DDR_15_read_ready   (DDR_15_ReadReady),
    .DDR_15_end_read     (DDR_15_EndRead)
);


GPN GPN(
.clk(AXI_ACLK_IN_0_buf),
.reset(GPN_start_pulse),
.start(start),
.FirstMessage(FirstMessage),
.GraphDone(GraphDone),

.MemoryOffset0(MemoryOffset0), // Always 0
.MemoryOffset1(MemoryOffset1), 
.MemoryOffset2(MemoryOffset2),
.MemoryOffset3(MemoryOffset3),
.MemoryOffset4(MemoryOffset4),
.MemoryOffset5(MemoryOffset5),
.MemoryOffset6(MemoryOffset6),
.MemoryOffset7(MemoryOffset7),
.MemoryOffset8(MemoryOffset8),
.MemoryOffset9(MemoryOffset9),
.MemoryOffset10(MemoryOffset10),
.MemoryOffset11(MemoryOffset11),
.MemoryOffset12(MemoryOffset12),
.MemoryOffset13(MemoryOffset13),
.MemoryOffset14(MemoryOffset14),
.MemoryOffset15(MemoryOffset15),
.MemoryOffset16(MemoryOffset16),

.HBM_00_StartRead(HBM_00_StartRead_PE),
.HBM_00_ReadBurst(HBM_00_ReadBurst_PE),
.HBM_00_ReadAddress(HBM_00_ReadAddr_PE),
.HBM_00_ReadData(HBM_00_ReadData),
.HBM_00_ReadReady(HBM_00_ReadReady),
.HBM_00_EndRead(HBM_00_EndRead),

.HBM_00_StartWrite(HBM_00_StartWrite_PE),
.HBM_00_WriteBurst(HBM_00_WriteBurst_PE),
.HBM_00_WriteAddress(HBM_00_WriteAddr_PE),
.HBM_00_WriteData(HBM_00_WriteData_PE),
.HBM_00_WriteReady(HBM_00_WriteReady_PE),
.HBM_00_WriteResp(HBM_00_WriteResp),
.HBM_00_WriteLast(HBM_00_WriteLast),
.HBM_00_EndWrite(HBM_00_EndWrite),

.DDR_00_StartRead(DDR_00_StartRead),
.DDR_00_ReadBurst(DDR_00_ReadBurst),
.DDR_00_ReadAddress(DDR_00_ReadAddr),
.DDR_00_ReadData(DDR_00_ReadData),
.DDR_00_ReadReady(DDR_00_ReadReady),
.DDR_00_EndRead(DDR_00_EndRead),

.HBM_01_StartRead(HBM_01_StartRead_PE),
.HBM_01_ReadBurst(HBM_01_ReadBurst_PE),
.HBM_01_ReadAddress(HBM_01_ReadAddr_PE),
.HBM_01_ReadData(HBM_01_ReadData),
.HBM_01_ReadReady(HBM_01_ReadReady),
.HBM_01_EndRead(HBM_01_EndRead),

.HBM_01_StartWrite(HBM_01_StartWrite_PE),
.HBM_01_WriteBurst(HBM_01_WriteBurst_PE),
.HBM_01_WriteAddress(HBM_01_WriteAddr_PE),
.HBM_01_WriteData(HBM_01_WriteData_PE),
.HBM_01_WriteReady(HBM_01_WriteReady_PE),
.HBM_01_WriteResp(HBM_01_WriteResp),
.HBM_01_WriteLast(HBM_01_WriteLast),
.HBM_01_EndWrite(HBM_01_EndWrite),

.DDR_01_StartRead(DDR_01_StartRead),
.DDR_01_ReadBurst(DDR_01_ReadBurst),
.DDR_01_ReadAddress(DDR_01_ReadAddr),
.DDR_01_ReadData(DDR_01_ReadData),
.DDR_01_ReadReady(DDR_01_ReadReady),
.DDR_01_EndRead(DDR_01_EndRead),

.HBM_02_StartRead(HBM_02_StartRead_PE),
.HBM_02_ReadBurst(HBM_02_ReadBurst_PE),
.HBM_02_ReadAddress(HBM_02_ReadAddr_PE),
.HBM_02_ReadData(HBM_02_ReadData),
.HBM_02_ReadReady(HBM_02_ReadReady),
.HBM_02_EndRead(HBM_02_EndRead),

.HBM_02_StartWrite(HBM_02_StartWrite_PE),
.HBM_02_WriteBurst(HBM_02_WriteBurst_PE),
.HBM_02_WriteAddress(HBM_02_WriteAddr_PE),
.HBM_02_WriteData(HBM_02_WriteData_PE),
.HBM_02_WriteReady(HBM_02_WriteReady_PE),
.HBM_02_WriteResp(HBM_02_WriteResp),
.HBM_02_WriteLast(HBM_02_WriteLast),
.HBM_02_EndWrite(HBM_02_EndWrite),

.DDR_02_StartRead(DDR_02_StartRead),
.DDR_02_ReadBurst(DDR_02_ReadBurst),
.DDR_02_ReadAddress(DDR_02_ReadAddr),
.DDR_02_ReadData(DDR_02_ReadData),
.DDR_02_ReadReady(DDR_02_ReadReady),
.DDR_02_EndRead(DDR_02_EndRead),

.HBM_03_StartRead(HBM_03_StartRead_PE),
.HBM_03_ReadBurst(HBM_03_ReadBurst_PE),
.HBM_03_ReadAddress(HBM_03_ReadAddr_PE),
.HBM_03_ReadData(HBM_03_ReadData),
.HBM_03_ReadReady(HBM_03_ReadReady),
.HBM_03_EndRead(HBM_03_EndRead),

.HBM_03_StartWrite(HBM_03_StartWrite_PE),
.HBM_03_WriteBurst(HBM_03_WriteBurst_PE),
.HBM_03_WriteAddress(HBM_03_WriteAddr_PE),
.HBM_03_WriteData(HBM_03_WriteData_PE),
.HBM_03_WriteReady(HBM_03_WriteReady_PE),
.HBM_03_WriteResp(HBM_03_WriteResp),
.HBM_03_WriteLast(HBM_03_WriteLast),
.HBM_03_EndWrite(HBM_03_EndWrite),

.DDR_03_StartRead(DDR_03_StartRead),
.DDR_03_ReadBurst(DDR_03_ReadBurst),
.DDR_03_ReadAddress(DDR_03_ReadAddr),
.DDR_03_ReadData(DDR_03_ReadData),
.DDR_03_ReadReady(DDR_03_ReadReady),
.DDR_03_EndRead(DDR_03_EndRead),

.HBM_04_StartRead(HBM_04_StartRead_PE),
.HBM_04_ReadBurst(HBM_04_ReadBurst_PE),
.HBM_04_ReadAddress(HBM_04_ReadAddr_PE),
.HBM_04_ReadData(HBM_04_ReadData),
.HBM_04_ReadReady(HBM_04_ReadReady),
.HBM_04_EndRead(HBM_04_EndRead),

.HBM_04_StartWrite(HBM_04_StartWrite_PE),
.HBM_04_WriteBurst(HBM_04_WriteBurst_PE),
.HBM_04_WriteAddress(HBM_04_WriteAddr_PE),
.HBM_04_WriteData(HBM_04_WriteData_PE),
.HBM_04_WriteReady(HBM_04_WriteReady_PE),
.HBM_04_WriteResp(HBM_04_WriteResp),
.HBM_04_WriteLast(HBM_04_WriteLast),
.HBM_04_EndWrite(HBM_04_EndWrite),

.DDR_04_StartRead(DDR_04_StartRead),
.DDR_04_ReadBurst(DDR_04_ReadBurst),
.DDR_04_ReadAddress(DDR_04_ReadAddr),
.DDR_04_ReadData(DDR_04_ReadData),
.DDR_04_ReadReady(DDR_04_ReadReady),
.DDR_04_EndRead(DDR_04_EndRead),

.HBM_05_StartRead(HBM_05_StartRead_PE),
.HBM_05_ReadBurst(HBM_05_ReadBurst_PE),
.HBM_05_ReadAddress(HBM_05_ReadAddr_PE),
.HBM_05_ReadData(HBM_05_ReadData),
.HBM_05_ReadReady(HBM_05_ReadReady),
.HBM_05_EndRead(HBM_05_EndRead),

.HBM_05_StartWrite(HBM_05_StartWrite_PE),
.HBM_05_WriteBurst(HBM_05_WriteBurst_PE),
.HBM_05_WriteAddress(HBM_05_WriteAddr_PE),
.HBM_05_WriteData(HBM_05_WriteData_PE),
.HBM_05_WriteReady(HBM_05_WriteReady_PE),
.HBM_05_WriteResp(HBM_05_WriteResp),
.HBM_05_WriteLast(HBM_05_WriteLast),
.HBM_05_EndWrite(HBM_05_EndWrite),

.DDR_05_StartRead(DDR_05_StartRead),
.DDR_05_ReadBurst(DDR_05_ReadBurst),
.DDR_05_ReadAddress(DDR_05_ReadAddr),
.DDR_05_ReadData(DDR_05_ReadData),
.DDR_05_ReadReady(DDR_05_ReadReady),
.DDR_05_EndRead(DDR_05_EndRead),

.HBM_06_StartRead(HBM_06_StartRead_PE),
.HBM_06_ReadBurst(HBM_06_ReadBurst_PE),
.HBM_06_ReadAddress(HBM_06_ReadAddr_PE),
.HBM_06_ReadData(HBM_06_ReadData),
.HBM_06_ReadReady(HBM_06_ReadReady),
.HBM_06_EndRead(HBM_06_EndRead),

.HBM_06_StartWrite(HBM_06_StartWrite_PE),
.HBM_06_WriteBurst(HBM_06_WriteBurst_PE),
.HBM_06_WriteAddress(HBM_06_WriteAddr_PE),
.HBM_06_WriteData(HBM_06_WriteData_PE),
.HBM_06_WriteReady(HBM_06_WriteReady_PE),
.HBM_06_WriteResp(HBM_06_WriteResp),
.HBM_06_WriteLast(HBM_06_WriteLast),
.HBM_06_EndWrite(HBM_06_EndWrite),

.DDR_06_StartRead(DDR_06_StartRead),
.DDR_06_ReadBurst(DDR_06_ReadBurst),
.DDR_06_ReadAddress(DDR_06_ReadAddr),
.DDR_06_ReadData(DDR_06_ReadData),
.DDR_06_ReadReady(DDR_06_ReadReady),
.DDR_06_EndRead(DDR_06_EndRead),

.HBM_07_StartRead(HBM_07_StartRead_PE),
.HBM_07_ReadBurst(HBM_07_ReadBurst_PE),
.HBM_07_ReadAddress(HBM_07_ReadAddr_PE),
.HBM_07_ReadData(HBM_07_ReadData),
.HBM_07_ReadReady(HBM_07_ReadReady),
.HBM_07_EndRead(HBM_07_EndRead),

.HBM_07_StartWrite(HBM_07_StartWrite_PE),
.HBM_07_WriteBurst(HBM_07_WriteBurst_PE),
.HBM_07_WriteAddress(HBM_07_WriteAddr_PE),
.HBM_07_WriteData(HBM_07_WriteData_PE),
.HBM_07_WriteReady(HBM_07_WriteReady_PE),
.HBM_07_WriteResp(HBM_07_WriteResp),
.HBM_07_WriteLast(HBM_07_WriteLast),
.HBM_07_EndWrite(HBM_07_EndWrite),

.DDR_07_StartRead(DDR_07_StartRead),
.DDR_07_ReadBurst(DDR_07_ReadBurst),
.DDR_07_ReadAddress(DDR_07_ReadAddr),
.DDR_07_ReadData(DDR_07_ReadData),
.DDR_07_ReadReady(DDR_07_ReadReady),
.DDR_07_EndRead(DDR_07_EndRead),

.HBM_08_StartRead(HBM_08_StartRead_PE),
.HBM_08_ReadBurst(HBM_08_ReadBurst_PE),
.HBM_08_ReadAddress(HBM_08_ReadAddr_PE),
.HBM_08_ReadData(HBM_08_ReadData),
.HBM_08_ReadReady(HBM_08_ReadReady),
.HBM_08_EndRead(HBM_08_EndRead),

.HBM_08_StartWrite(HBM_08_StartWrite_PE),
.HBM_08_WriteBurst(HBM_08_WriteBurst_PE),
.HBM_08_WriteAddress(HBM_08_WriteAddr_PE),
.HBM_08_WriteData(HBM_08_WriteData_PE),
.HBM_08_WriteReady(HBM_08_WriteReady_PE),
.HBM_08_WriteResp(HBM_08_WriteResp),
.HBM_08_WriteLast(HBM_08_WriteLast),
.HBM_08_EndWrite(HBM_08_EndWrite),

.DDR_08_StartRead(DDR_08_StartRead),
.DDR_08_ReadBurst(DDR_08_ReadBurst),
.DDR_08_ReadAddress(DDR_08_ReadAddr),
.DDR_08_ReadData(DDR_08_ReadData),
.DDR_08_ReadReady(DDR_08_ReadReady),
.DDR_08_EndRead(DDR_08_EndRead),

.HBM_09_StartRead(HBM_09_StartRead_PE),
.HBM_09_ReadBurst(HBM_09_ReadBurst_PE),
.HBM_09_ReadAddress(HBM_09_ReadAddr_PE),
.HBM_09_ReadData(HBM_09_ReadData),
.HBM_09_ReadReady(HBM_09_ReadReady),
.HBM_09_EndRead(HBM_09_EndRead),

.HBM_09_StartWrite(HBM_09_StartWrite_PE),
.HBM_09_WriteBurst(HBM_09_WriteBurst_PE),
.HBM_09_WriteAddress(HBM_09_WriteAddr_PE),
.HBM_09_WriteData(HBM_09_WriteData_PE),
.HBM_09_WriteReady(HBM_09_WriteReady_PE),
.HBM_09_WriteResp(HBM_09_WriteResp),
.HBM_09_WriteLast(HBM_09_WriteLast),
.HBM_09_EndWrite(HBM_09_EndWrite),

.DDR_09_StartRead(DDR_09_StartRead),
.DDR_09_ReadBurst(DDR_09_ReadBurst),
.DDR_09_ReadAddress(DDR_09_ReadAddr),
.DDR_09_ReadData(DDR_09_ReadData),
.DDR_09_ReadReady(DDR_09_ReadReady),
.DDR_09_EndRead(DDR_09_EndRead),

.HBM_10_StartRead(HBM_10_StartRead_PE),
.HBM_10_ReadBurst(HBM_10_ReadBurst_PE),
.HBM_10_ReadAddress(HBM_10_ReadAddr_PE),
.HBM_10_ReadData(HBM_10_ReadData),
.HBM_10_ReadReady(HBM_10_ReadReady),
.HBM_10_EndRead(HBM_10_EndRead),

.HBM_10_StartWrite(HBM_10_StartWrite_PE),
.HBM_10_WriteBurst(HBM_10_WriteBurst_PE),
.HBM_10_WriteAddress(HBM_10_WriteAddr_PE),
.HBM_10_WriteData(HBM_10_WriteData_PE),
.HBM_10_WriteReady(HBM_10_WriteReady_PE),
.HBM_10_WriteResp(HBM_10_WriteResp),
.HBM_10_WriteLast(HBM_10_WriteLast),
.HBM_10_EndWrite(HBM_10_EndWrite),

.DDR_10_StartRead(DDR_10_StartRead),
.DDR_10_ReadBurst(DDR_10_ReadBurst),
.DDR_10_ReadAddress(DDR_10_ReadAddr),
.DDR_10_ReadData(DDR_10_ReadData),
.DDR_10_ReadReady(DDR_10_ReadReady),
.DDR_10_EndRead(DDR_10_EndRead),

.HBM_11_StartRead(HBM_11_StartRead_PE),
.HBM_11_ReadBurst(HBM_11_ReadBurst_PE),
.HBM_11_ReadAddress(HBM_11_ReadAddr_PE),
.HBM_11_ReadData(HBM_11_ReadData),
.HBM_11_ReadReady(HBM_11_ReadReady),
.HBM_11_EndRead(HBM_11_EndRead),

.HBM_11_StartWrite(HBM_11_StartWrite_PE),
.HBM_11_WriteBurst(HBM_11_WriteBurst_PE),
.HBM_11_WriteAddress(HBM_11_WriteAddr_PE),
.HBM_11_WriteData(HBM_11_WriteData_PE),
.HBM_11_WriteReady(HBM_11_WriteReady_PE),
.HBM_11_WriteResp(HBM_11_WriteResp),
.HBM_11_WriteLast(HBM_11_WriteLast),
.HBM_11_EndWrite(HBM_11_EndWrite),

.DDR_11_StartRead(DDR_11_StartRead),
.DDR_11_ReadBurst(DDR_11_ReadBurst),
.DDR_11_ReadAddress(DDR_11_ReadAddr),
.DDR_11_ReadData(DDR_11_ReadData),
.DDR_11_ReadReady(DDR_11_ReadReady),
.DDR_11_EndRead(DDR_11_EndRead),

.HBM_12_StartRead(HBM_12_StartRead_PE),
.HBM_12_ReadBurst(HBM_12_ReadBurst_PE),
.HBM_12_ReadAddress(HBM_12_ReadAddr_PE),
.HBM_12_ReadData(HBM_12_ReadData),
.HBM_12_ReadReady(HBM_12_ReadReady),
.HBM_12_EndRead(HBM_12_EndRead),

.HBM_12_StartWrite(HBM_12_StartWrite_PE),
.HBM_12_WriteBurst(HBM_12_WriteBurst_PE),
.HBM_12_WriteAddress(HBM_12_WriteAddr_PE),
.HBM_12_WriteData(HBM_12_WriteData_PE),
.HBM_12_WriteReady(HBM_12_WriteReady_PE),
.HBM_12_WriteResp(HBM_12_WriteResp),
.HBM_12_WriteLast(HBM_12_WriteLast),
.HBM_12_EndWrite(HBM_12_EndWrite),

.DDR_12_StartRead(DDR_12_StartRead),
.DDR_12_ReadBurst(DDR_12_ReadBurst),
.DDR_12_ReadAddress(DDR_12_ReadAddr),
.DDR_12_ReadData(DDR_12_ReadData),
.DDR_12_ReadReady(DDR_12_ReadReady),
.DDR_12_EndRead(DDR_12_EndRead),

.HBM_13_StartRead(HBM_13_StartRead_PE),
.HBM_13_ReadBurst(HBM_13_ReadBurst_PE),
.HBM_13_ReadAddress(HBM_13_ReadAddr_PE),
.HBM_13_ReadData(HBM_13_ReadData),
.HBM_13_ReadReady(HBM_13_ReadReady),
.HBM_13_EndRead(HBM_13_EndRead),

.HBM_13_StartWrite(HBM_13_StartWrite_PE),
.HBM_13_WriteBurst(HBM_13_WriteBurst_PE),
.HBM_13_WriteAddress(HBM_13_WriteAddr_PE),
.HBM_13_WriteData(HBM_13_WriteData_PE),
.HBM_13_WriteReady(HBM_13_WriteReady_PE),
.HBM_13_WriteResp(HBM_13_WriteResp),
.HBM_13_WriteLast(HBM_13_WriteLast),
.HBM_13_EndWrite(HBM_13_EndWrite),

.DDR_13_StartRead(DDR_13_StartRead),
.DDR_13_ReadBurst(DDR_13_ReadBurst),
.DDR_13_ReadAddress(DDR_13_ReadAddr),
.DDR_13_ReadData(DDR_13_ReadData),
.DDR_13_ReadReady(DDR_13_ReadReady),
.DDR_13_EndRead(DDR_13_EndRead),

.HBM_14_StartRead(HBM_14_StartRead_PE),
.HBM_14_ReadBurst(HBM_14_ReadBurst_PE),
.HBM_14_ReadAddress(HBM_14_ReadAddr_PE),
.HBM_14_ReadData(HBM_14_ReadData),
.HBM_14_ReadReady(HBM_14_ReadReady),
.HBM_14_EndRead(HBM_14_EndRead),

.HBM_14_StartWrite(HBM_14_StartWrite_PE),
.HBM_14_WriteBurst(HBM_14_WriteBurst_PE),
.HBM_14_WriteAddress(HBM_14_WriteAddr_PE),
.HBM_14_WriteData(HBM_14_WriteData_PE),
.HBM_14_WriteReady(HBM_14_WriteReady_PE),
.HBM_14_WriteResp(HBM_14_WriteResp),
.HBM_14_WriteLast(HBM_14_WriteLast),
.HBM_14_EndWrite(HBM_14_EndWrite),

.DDR_14_StartRead(DDR_14_StartRead),
.DDR_14_ReadBurst(DDR_14_ReadBurst),
.DDR_14_ReadAddress(DDR_14_ReadAddr),
.DDR_14_ReadData(DDR_14_ReadData),
.DDR_14_ReadReady(DDR_14_ReadReady),
.DDR_14_EndRead(DDR_14_EndRead),

.HBM_15_StartRead(HBM_15_StartRead_PE),
.HBM_15_ReadBurst(HBM_15_ReadBurst_PE),
.HBM_15_ReadAddress(HBM_15_ReadAddr_PE),
.HBM_15_ReadData(HBM_15_ReadData),
.HBM_15_ReadReady(HBM_15_ReadReady),
.HBM_15_EndRead(HBM_15_EndRead),

.HBM_15_StartWrite(HBM_15_StartWrite_PE),
.HBM_15_WriteBurst(HBM_15_WriteBurst_PE),
.HBM_15_WriteAddress(HBM_15_WriteAddr_PE),
.HBM_15_WriteData(HBM_15_WriteData_PE),
.HBM_15_WriteReady(HBM_15_WriteReady_PE),
.HBM_15_WriteResp(HBM_15_WriteResp),
.HBM_15_WriteLast(HBM_15_WriteLast),
.HBM_15_EndWrite(HBM_15_EndWrite),

.DDR_15_StartRead(DDR_15_StartRead),
.DDR_15_ReadBurst(DDR_15_ReadBurst),
.DDR_15_ReadAddress(DDR_15_ReadAddr),
.DDR_15_ReadData(DDR_15_ReadData),
.DDR_15_ReadReady(DDR_15_ReadReady),
.DDR_15_EndRead(DDR_15_EndRead)
);

endmodule
