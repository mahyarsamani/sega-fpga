// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Wed Apr 17 16:29:32 2024
// Host        : COE-CS-crystal running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ MemoryInterfaces_AXI_Engine_0_0_stub.v
// Design      : MemoryInterfaces_AXI_Engine_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_engine,Vivado 2022.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, resetn, start_wr, start_rd, end_wr, end_rd, 
  write_addr, wburst, read_addr, rburst, write_data, write_ready, read_data, write_resp, 
  read_ready, m_axi_AWVALID, m_axi_AWADDR, m_axi_AWID, m_axi_AWLEN, m_axi_AWSIZE, 
  m_axi_AWBURST, m_axi_AWLOCK, m_axi_AWCACHE, m_axi_AWPROT, m_axi_AWQOS, m_axi_AWREGION, 
  m_axi_AWREADY, m_axi_WVALID, m_axi_WDATA, m_axi_WSTRB, m_axi_WLAST, m_axi_WID, m_axi_WREADY, 
  m_axi_BVALID, m_axi_BRESP, m_axi_BID, m_axi_BREADY, m_axi_ARVALID, m_axi_ARADDR, m_axi_ARID, 
  m_axi_ARLEN, m_axi_ARSIZE, m_axi_ARBURST, m_axi_ARLOCK, m_axi_ARCACHE, m_axi_ARPROT, 
  m_axi_ARQOS, m_axi_ARREGION, m_axi_ARREADY, m_axi_RVALID, m_axi_RDATA, m_axi_RLAST, 
  m_axi_RID, m_axi_RRESP, m_axi_RREADY)
/* synthesis syn_black_box black_box_pad_pin="clk,resetn,start_wr,start_rd,end_wr[1:0],end_rd,write_addr[32:0],wburst[7:0],read_addr[32:0],rburst[7:0],write_data[255:0],write_ready,read_data[255:0],write_resp,read_ready,m_axi_AWVALID,m_axi_AWADDR[32:0],m_axi_AWID[5:0],m_axi_AWLEN[7:0],m_axi_AWSIZE[2:0],m_axi_AWBURST[1:0],m_axi_AWLOCK[1:0],m_axi_AWCACHE[3:0],m_axi_AWPROT[2:0],m_axi_AWQOS[3:0],m_axi_AWREGION[3:0],m_axi_AWREADY,m_axi_WVALID,m_axi_WDATA[255:0],m_axi_WSTRB[31:0],m_axi_WLAST,m_axi_WID[5:0],m_axi_WREADY,m_axi_BVALID,m_axi_BRESP[1:0],m_axi_BID[5:0],m_axi_BREADY,m_axi_ARVALID,m_axi_ARADDR[32:0],m_axi_ARID[5:0],m_axi_ARLEN[7:0],m_axi_ARSIZE[2:0],m_axi_ARBURST[1:0],m_axi_ARLOCK[1:0],m_axi_ARCACHE[3:0],m_axi_ARPROT[2:0],m_axi_ARQOS[3:0],m_axi_ARREGION[3:0],m_axi_ARREADY,m_axi_RVALID,m_axi_RDATA[255:0],m_axi_RLAST,m_axi_RID[5:0],m_axi_RRESP[1:0],m_axi_RREADY" */;
  input clk;
  input resetn;
  input start_wr;
  input start_rd;
  output [1:0]end_wr;
  output end_rd;
  input [32:0]write_addr;
  input [7:0]wburst;
  input [32:0]read_addr;
  input [7:0]rburst;
  input [255:0]write_data;
  input write_ready;
  output [255:0]read_data;
  output write_resp;
  output read_ready;
  output m_axi_AWVALID;
  output [32:0]m_axi_AWADDR;
  output [5:0]m_axi_AWID;
  output [7:0]m_axi_AWLEN;
  output [2:0]m_axi_AWSIZE;
  output [1:0]m_axi_AWBURST;
  output [1:0]m_axi_AWLOCK;
  output [3:0]m_axi_AWCACHE;
  output [2:0]m_axi_AWPROT;
  output [3:0]m_axi_AWQOS;
  output [3:0]m_axi_AWREGION;
  input m_axi_AWREADY;
  output m_axi_WVALID;
  output [255:0]m_axi_WDATA;
  output [31:0]m_axi_WSTRB;
  output m_axi_WLAST;
  output [5:0]m_axi_WID;
  input m_axi_WREADY;
  input m_axi_BVALID;
  input [1:0]m_axi_BRESP;
  input [5:0]m_axi_BID;
  output m_axi_BREADY;
  output m_axi_ARVALID;
  output [32:0]m_axi_ARADDR;
  output [5:0]m_axi_ARID;
  output [7:0]m_axi_ARLEN;
  output [2:0]m_axi_ARSIZE;
  output [1:0]m_axi_ARBURST;
  output [1:0]m_axi_ARLOCK;
  output [3:0]m_axi_ARCACHE;
  output [2:0]m_axi_ARPROT;
  output [3:0]m_axi_ARQOS;
  output [3:0]m_axi_ARREGION;
  input m_axi_ARREADY;
  input m_axi_RVALID;
  input [255:0]m_axi_RDATA;
  input m_axi_RLAST;
  input [5:0]m_axi_RID;
  input [1:0]m_axi_RRESP;
  output m_axi_RREADY;
endmodule
