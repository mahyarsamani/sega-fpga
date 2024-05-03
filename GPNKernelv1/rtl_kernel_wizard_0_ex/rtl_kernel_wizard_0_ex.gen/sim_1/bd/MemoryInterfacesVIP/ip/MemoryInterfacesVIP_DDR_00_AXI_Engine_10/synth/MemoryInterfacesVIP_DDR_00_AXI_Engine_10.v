// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: user.org:user:AXI_Engine:2.0
// IP Revision: 55

(* X_CORE_INFO = "axi_engine,Vivado 2022.1" *)
(* CHECK_LICENSE_TYPE = "MemoryInterfacesVIP_DDR_00_AXI_Engine_10,axi_engine,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module MemoryInterfacesVIP_DDR_00_AXI_Engine_10 (
  clk,
  resetn,
  start_wr,
  start_rd,
  end_wr,
  end_rd,
  write_addr,
  wburst,
  read_addr,
  rburst,
  write_data,
  write_ready,
  read_data,
  write_resp,
  read_ready,
  write_last,
  m_axi_AWVALID,
  m_axi_AWADDR,
  m_axi_AWID,
  m_axi_AWLEN,
  m_axi_AWSIZE,
  m_axi_AWBURST,
  m_axi_AWLOCK,
  m_axi_AWCACHE,
  m_axi_AWPROT,
  m_axi_AWQOS,
  m_axi_AWREGION,
  m_axi_AWREADY,
  m_axi_WVALID,
  m_axi_WDATA,
  m_axi_WSTRB,
  m_axi_WLAST,
  m_axi_WID,
  m_axi_WREADY,
  m_axi_BVALID,
  m_axi_BRESP,
  m_axi_BID,
  m_axi_BREADY,
  m_axi_ARVALID,
  m_axi_ARADDR,
  m_axi_ARID,
  m_axi_ARLEN,
  m_axi_ARSIZE,
  m_axi_ARBURST,
  m_axi_ARLOCK,
  m_axi_ARCACHE,
  m_axi_ARPROT,
  m_axi_ARQOS,
  m_axi_ARREGION,
  m_axi_ARREADY,
  m_axi_RVALID,
  m_axi_RDATA,
  m_axi_RLAST,
  m_axi_RID,
  m_axi_RRESP,
  m_axi_RREADY
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axi, ASSOCIATED_RESET resetn, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN MemoryInterfacesVIP_c0_sys_clk_i, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *)
input wire resetn;
input wire start_wr;
input wire start_rd;
output wire [1 : 0] end_wr;
output wire end_rd;
input wire [33 : 0] write_addr;
input wire [7 : 0] wburst;
input wire [33 : 0] read_addr;
input wire [7 : 0] rburst;
input wire [511 : 0] write_data;
input wire write_ready;
output wire [511 : 0] read_data;
output wire write_resp;
output wire read_ready;
output wire write_last;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWVALID" *)
output wire m_axi_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWADDR" *)
output wire [33 : 0] m_axi_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWID" *)
output wire [5 : 0] m_axi_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWLEN" *)
output wire [7 : 0] m_axi_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWSIZE" *)
output wire [2 : 0] m_axi_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWBURST" *)
output wire [1 : 0] m_axi_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWLOCK" *)
output wire [1 : 0] m_axi_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWCACHE" *)
output wire [3 : 0] m_axi_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWPROT" *)
output wire [2 : 0] m_axi_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWQOS" *)
output wire [3 : 0] m_axi_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWREGION" *)
output wire [3 : 0] m_axi_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWREADY" *)
input wire m_axi_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WVALID" *)
output wire m_axi_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WDATA" *)
output wire [511 : 0] m_axi_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WSTRB" *)
output wire [63 : 0] m_axi_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WLAST" *)
output wire m_axi_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WID" *)
output wire [5 : 0] m_axi_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WREADY" *)
input wire m_axi_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BVALID" *)
input wire m_axi_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BRESP" *)
input wire [1 : 0] m_axi_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BID" *)
input wire [5 : 0] m_axi_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BREADY" *)
output wire m_axi_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARVALID" *)
output wire m_axi_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARADDR" *)
output wire [33 : 0] m_axi_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARID" *)
output wire [5 : 0] m_axi_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARLEN" *)
output wire [7 : 0] m_axi_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARSIZE" *)
output wire [2 : 0] m_axi_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARBURST" *)
output wire [1 : 0] m_axi_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARLOCK" *)
output wire [1 : 0] m_axi_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARCACHE" *)
output wire [3 : 0] m_axi_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARPROT" *)
output wire [2 : 0] m_axi_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARQOS" *)
output wire [3 : 0] m_axi_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARREGION" *)
output wire [3 : 0] m_axi_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARREADY" *)
input wire m_axi_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RVALID" *)
input wire m_axi_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RDATA" *)
input wire [511 : 0] m_axi_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RLAST" *)
input wire m_axi_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RID" *)
input wire [5 : 0] m_axi_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RRESP" *)
input wire [1 : 0] m_axi_RRESP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 6, ADDR_WIDTH 34, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN MemoryInterfacesVIP_c0_sys_clk_i, NUM_READ_THREADS 1, NUM_WRI\
TE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RREADY" *)
output wire m_axi_RREADY;

  axi_engine #(
    .ENGINE_ID(0),
    .ADDR_WIDTH(34),
    .DATA_WIDTH(512),
    .ID_WIDTH(6),
    .LEN_WIDTH(8)
  ) inst (
    .clk(clk),
    .resetn(resetn),
    .start_wr(start_wr),
    .start_rd(start_rd),
    .end_wr(end_wr),
    .end_rd(end_rd),
    .write_addr(write_addr),
    .wburst(wburst),
    .read_addr(read_addr),
    .rburst(rburst),
    .write_data(write_data),
    .write_ready(write_ready),
    .read_data(read_data),
    .write_resp(write_resp),
    .read_ready(read_ready),
    .write_last(write_last),
    .m_axi_AWVALID(m_axi_AWVALID),
    .m_axi_AWADDR(m_axi_AWADDR),
    .m_axi_AWID(m_axi_AWID),
    .m_axi_AWLEN(m_axi_AWLEN),
    .m_axi_AWSIZE(m_axi_AWSIZE),
    .m_axi_AWBURST(m_axi_AWBURST),
    .m_axi_AWLOCK(m_axi_AWLOCK),
    .m_axi_AWCACHE(m_axi_AWCACHE),
    .m_axi_AWPROT(m_axi_AWPROT),
    .m_axi_AWQOS(m_axi_AWQOS),
    .m_axi_AWREGION(m_axi_AWREGION),
    .m_axi_AWREADY(m_axi_AWREADY),
    .m_axi_WVALID(m_axi_WVALID),
    .m_axi_WDATA(m_axi_WDATA),
    .m_axi_WSTRB(m_axi_WSTRB),
    .m_axi_WLAST(m_axi_WLAST),
    .m_axi_WID(m_axi_WID),
    .m_axi_WREADY(m_axi_WREADY),
    .m_axi_BVALID(m_axi_BVALID),
    .m_axi_BRESP(m_axi_BRESP),
    .m_axi_BID(m_axi_BID),
    .m_axi_BREADY(m_axi_BREADY),
    .m_axi_ARVALID(m_axi_ARVALID),
    .m_axi_ARADDR(m_axi_ARADDR),
    .m_axi_ARID(m_axi_ARID),
    .m_axi_ARLEN(m_axi_ARLEN),
    .m_axi_ARSIZE(m_axi_ARSIZE),
    .m_axi_ARBURST(m_axi_ARBURST),
    .m_axi_ARLOCK(m_axi_ARLOCK),
    .m_axi_ARCACHE(m_axi_ARCACHE),
    .m_axi_ARPROT(m_axi_ARPROT),
    .m_axi_ARQOS(m_axi_ARQOS),
    .m_axi_ARREGION(m_axi_ARREGION),
    .m_axi_ARREADY(m_axi_ARREADY),
    .m_axi_RVALID(m_axi_RVALID),
    .m_axi_RDATA(m_axi_RDATA),
    .m_axi_RLAST(m_axi_RLAST),
    .m_axi_RID(m_axi_RID),
    .m_axi_RRESP(m_axi_RRESP),
    .m_axi_RREADY(m_axi_RREADY)
  );
endmodule
