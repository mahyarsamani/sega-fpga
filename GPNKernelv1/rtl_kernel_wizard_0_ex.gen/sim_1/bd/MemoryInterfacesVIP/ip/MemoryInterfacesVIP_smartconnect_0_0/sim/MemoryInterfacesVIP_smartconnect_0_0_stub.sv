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


//------------------------------------------------------------------------------------
// Filename:    MemoryInterfacesVIP_smartconnect_0_0_stub.sv
// Description: This HDL file is intended to be used with following simulators only:
//
//   Vivado Simulator (XSim)
//   Cadence Xcelium Simulator
//
//------------------------------------------------------------------------------------
`timescale 1ps/1ps

`ifdef XILINX_SIMULATOR

`ifndef XILINX_SIMULATOR_BITASBOOL
`define XILINX_SIMULATOR_BITASBOOL
typedef bit bit_as_bool;
`endif

(* SC_MODULE_EXPORT *)
module MemoryInterfacesVIP_smartconnect_0_0 (
  input bit_as_bool aclk,
  input bit_as_bool aresetn,
  input bit [5 : 0] S00_AXI_awid,
  input bit [33 : 0] S00_AXI_awaddr,
  input bit [7 : 0] S00_AXI_awlen,
  input bit [2 : 0] S00_AXI_awsize,
  input bit [1 : 0] S00_AXI_awburst,
  input bit [0 : 0] S00_AXI_awlock,
  input bit [3 : 0] S00_AXI_awcache,
  input bit [2 : 0] S00_AXI_awprot,
  input bit [3 : 0] S00_AXI_awqos,
  input bit_as_bool S00_AXI_awvalid,
  output bit_as_bool S00_AXI_awready,
  input bit [511 : 0] S00_AXI_wdata,
  input bit [63 : 0] S00_AXI_wstrb,
  input bit_as_bool S00_AXI_wlast,
  input bit_as_bool S00_AXI_wvalid,
  output bit_as_bool S00_AXI_wready,
  output bit [5 : 0] S00_AXI_bid,
  output bit [1 : 0] S00_AXI_bresp,
  output bit_as_bool S00_AXI_bvalid,
  input bit_as_bool S00_AXI_bready,
  input bit [5 : 0] S00_AXI_arid,
  input bit [33 : 0] S00_AXI_araddr,
  input bit [7 : 0] S00_AXI_arlen,
  input bit [2 : 0] S00_AXI_arsize,
  input bit [1 : 0] S00_AXI_arburst,
  input bit [0 : 0] S00_AXI_arlock,
  input bit [3 : 0] S00_AXI_arcache,
  input bit [2 : 0] S00_AXI_arprot,
  input bit [3 : 0] S00_AXI_arqos,
  input bit_as_bool S00_AXI_arvalid,
  output bit_as_bool S00_AXI_arready,
  output bit [5 : 0] S00_AXI_rid,
  output bit [511 : 0] S00_AXI_rdata,
  output bit [1 : 0] S00_AXI_rresp,
  output bit_as_bool S00_AXI_rlast,
  output bit_as_bool S00_AXI_rvalid,
  input bit_as_bool S00_AXI_rready,
  input bit [5 : 0] S01_AXI_awid,
  input bit [33 : 0] S01_AXI_awaddr,
  input bit [7 : 0] S01_AXI_awlen,
  input bit [2 : 0] S01_AXI_awsize,
  input bit [1 : 0] S01_AXI_awburst,
  input bit [0 : 0] S01_AXI_awlock,
  input bit [3 : 0] S01_AXI_awcache,
  input bit [2 : 0] S01_AXI_awprot,
  input bit [3 : 0] S01_AXI_awqos,
  input bit_as_bool S01_AXI_awvalid,
  output bit_as_bool S01_AXI_awready,
  input bit [511 : 0] S01_AXI_wdata,
  input bit [63 : 0] S01_AXI_wstrb,
  input bit_as_bool S01_AXI_wlast,
  input bit_as_bool S01_AXI_wvalid,
  output bit_as_bool S01_AXI_wready,
  output bit [5 : 0] S01_AXI_bid,
  output bit [1 : 0] S01_AXI_bresp,
  output bit_as_bool S01_AXI_bvalid,
  input bit_as_bool S01_AXI_bready,
  input bit [5 : 0] S01_AXI_arid,
  input bit [33 : 0] S01_AXI_araddr,
  input bit [7 : 0] S01_AXI_arlen,
  input bit [2 : 0] S01_AXI_arsize,
  input bit [1 : 0] S01_AXI_arburst,
  input bit [0 : 0] S01_AXI_arlock,
  input bit [3 : 0] S01_AXI_arcache,
  input bit [2 : 0] S01_AXI_arprot,
  input bit [3 : 0] S01_AXI_arqos,
  input bit_as_bool S01_AXI_arvalid,
  output bit_as_bool S01_AXI_arready,
  output bit [5 : 0] S01_AXI_rid,
  output bit [511 : 0] S01_AXI_rdata,
  output bit [1 : 0] S01_AXI_rresp,
  output bit_as_bool S01_AXI_rlast,
  output bit_as_bool S01_AXI_rvalid,
  input bit_as_bool S01_AXI_rready,
  input bit [5 : 0] S02_AXI_awid,
  input bit [33 : 0] S02_AXI_awaddr,
  input bit [7 : 0] S02_AXI_awlen,
  input bit [2 : 0] S02_AXI_awsize,
  input bit [1 : 0] S02_AXI_awburst,
  input bit [0 : 0] S02_AXI_awlock,
  input bit [3 : 0] S02_AXI_awcache,
  input bit [2 : 0] S02_AXI_awprot,
  input bit [3 : 0] S02_AXI_awqos,
  input bit_as_bool S02_AXI_awvalid,
  output bit_as_bool S02_AXI_awready,
  input bit [511 : 0] S02_AXI_wdata,
  input bit [63 : 0] S02_AXI_wstrb,
  input bit_as_bool S02_AXI_wlast,
  input bit_as_bool S02_AXI_wvalid,
  output bit_as_bool S02_AXI_wready,
  output bit [5 : 0] S02_AXI_bid,
  output bit [1 : 0] S02_AXI_bresp,
  output bit_as_bool S02_AXI_bvalid,
  input bit_as_bool S02_AXI_bready,
  input bit [5 : 0] S02_AXI_arid,
  input bit [33 : 0] S02_AXI_araddr,
  input bit [7 : 0] S02_AXI_arlen,
  input bit [2 : 0] S02_AXI_arsize,
  input bit [1 : 0] S02_AXI_arburst,
  input bit [0 : 0] S02_AXI_arlock,
  input bit [3 : 0] S02_AXI_arcache,
  input bit [2 : 0] S02_AXI_arprot,
  input bit [3 : 0] S02_AXI_arqos,
  input bit_as_bool S02_AXI_arvalid,
  output bit_as_bool S02_AXI_arready,
  output bit [5 : 0] S02_AXI_rid,
  output bit [511 : 0] S02_AXI_rdata,
  output bit [1 : 0] S02_AXI_rresp,
  output bit_as_bool S02_AXI_rlast,
  output bit_as_bool S02_AXI_rvalid,
  input bit_as_bool S02_AXI_rready,
  input bit [5 : 0] S03_AXI_awid,
  input bit [33 : 0] S03_AXI_awaddr,
  input bit [7 : 0] S03_AXI_awlen,
  input bit [2 : 0] S03_AXI_awsize,
  input bit [1 : 0] S03_AXI_awburst,
  input bit [0 : 0] S03_AXI_awlock,
  input bit [3 : 0] S03_AXI_awcache,
  input bit [2 : 0] S03_AXI_awprot,
  input bit [3 : 0] S03_AXI_awqos,
  input bit_as_bool S03_AXI_awvalid,
  output bit_as_bool S03_AXI_awready,
  input bit [511 : 0] S03_AXI_wdata,
  input bit [63 : 0] S03_AXI_wstrb,
  input bit_as_bool S03_AXI_wlast,
  input bit_as_bool S03_AXI_wvalid,
  output bit_as_bool S03_AXI_wready,
  output bit [5 : 0] S03_AXI_bid,
  output bit [1 : 0] S03_AXI_bresp,
  output bit_as_bool S03_AXI_bvalid,
  input bit_as_bool S03_AXI_bready,
  input bit [5 : 0] S03_AXI_arid,
  input bit [33 : 0] S03_AXI_araddr,
  input bit [7 : 0] S03_AXI_arlen,
  input bit [2 : 0] S03_AXI_arsize,
  input bit [1 : 0] S03_AXI_arburst,
  input bit [0 : 0] S03_AXI_arlock,
  input bit [3 : 0] S03_AXI_arcache,
  input bit [2 : 0] S03_AXI_arprot,
  input bit [3 : 0] S03_AXI_arqos,
  input bit_as_bool S03_AXI_arvalid,
  output bit_as_bool S03_AXI_arready,
  output bit [5 : 0] S03_AXI_rid,
  output bit [511 : 0] S03_AXI_rdata,
  output bit [1 : 0] S03_AXI_rresp,
  output bit_as_bool S03_AXI_rlast,
  output bit_as_bool S03_AXI_rvalid,
  input bit_as_bool S03_AXI_rready,
  input bit [5 : 0] S04_AXI_awid,
  input bit [33 : 0] S04_AXI_awaddr,
  input bit [7 : 0] S04_AXI_awlen,
  input bit [2 : 0] S04_AXI_awsize,
  input bit [1 : 0] S04_AXI_awburst,
  input bit [0 : 0] S04_AXI_awlock,
  input bit [3 : 0] S04_AXI_awcache,
  input bit [2 : 0] S04_AXI_awprot,
  input bit [3 : 0] S04_AXI_awqos,
  input bit_as_bool S04_AXI_awvalid,
  output bit_as_bool S04_AXI_awready,
  input bit [511 : 0] S04_AXI_wdata,
  input bit [63 : 0] S04_AXI_wstrb,
  input bit_as_bool S04_AXI_wlast,
  input bit_as_bool S04_AXI_wvalid,
  output bit_as_bool S04_AXI_wready,
  output bit [5 : 0] S04_AXI_bid,
  output bit [1 : 0] S04_AXI_bresp,
  output bit_as_bool S04_AXI_bvalid,
  input bit_as_bool S04_AXI_bready,
  input bit [5 : 0] S04_AXI_arid,
  input bit [33 : 0] S04_AXI_araddr,
  input bit [7 : 0] S04_AXI_arlen,
  input bit [2 : 0] S04_AXI_arsize,
  input bit [1 : 0] S04_AXI_arburst,
  input bit [0 : 0] S04_AXI_arlock,
  input bit [3 : 0] S04_AXI_arcache,
  input bit [2 : 0] S04_AXI_arprot,
  input bit [3 : 0] S04_AXI_arqos,
  input bit_as_bool S04_AXI_arvalid,
  output bit_as_bool S04_AXI_arready,
  output bit [5 : 0] S04_AXI_rid,
  output bit [511 : 0] S04_AXI_rdata,
  output bit [1 : 0] S04_AXI_rresp,
  output bit_as_bool S04_AXI_rlast,
  output bit_as_bool S04_AXI_rvalid,
  input bit_as_bool S04_AXI_rready,
  input bit [5 : 0] S05_AXI_awid,
  input bit [33 : 0] S05_AXI_awaddr,
  input bit [7 : 0] S05_AXI_awlen,
  input bit [2 : 0] S05_AXI_awsize,
  input bit [1 : 0] S05_AXI_awburst,
  input bit [0 : 0] S05_AXI_awlock,
  input bit [3 : 0] S05_AXI_awcache,
  input bit [2 : 0] S05_AXI_awprot,
  input bit [3 : 0] S05_AXI_awqos,
  input bit_as_bool S05_AXI_awvalid,
  output bit_as_bool S05_AXI_awready,
  input bit [511 : 0] S05_AXI_wdata,
  input bit [63 : 0] S05_AXI_wstrb,
  input bit_as_bool S05_AXI_wlast,
  input bit_as_bool S05_AXI_wvalid,
  output bit_as_bool S05_AXI_wready,
  output bit [5 : 0] S05_AXI_bid,
  output bit [1 : 0] S05_AXI_bresp,
  output bit_as_bool S05_AXI_bvalid,
  input bit_as_bool S05_AXI_bready,
  input bit [5 : 0] S05_AXI_arid,
  input bit [33 : 0] S05_AXI_araddr,
  input bit [7 : 0] S05_AXI_arlen,
  input bit [2 : 0] S05_AXI_arsize,
  input bit [1 : 0] S05_AXI_arburst,
  input bit [0 : 0] S05_AXI_arlock,
  input bit [3 : 0] S05_AXI_arcache,
  input bit [2 : 0] S05_AXI_arprot,
  input bit [3 : 0] S05_AXI_arqos,
  input bit_as_bool S05_AXI_arvalid,
  output bit_as_bool S05_AXI_arready,
  output bit [5 : 0] S05_AXI_rid,
  output bit [511 : 0] S05_AXI_rdata,
  output bit [1 : 0] S05_AXI_rresp,
  output bit_as_bool S05_AXI_rlast,
  output bit_as_bool S05_AXI_rvalid,
  input bit_as_bool S05_AXI_rready,
  input bit [5 : 0] S06_AXI_awid,
  input bit [33 : 0] S06_AXI_awaddr,
  input bit [7 : 0] S06_AXI_awlen,
  input bit [2 : 0] S06_AXI_awsize,
  input bit [1 : 0] S06_AXI_awburst,
  input bit [0 : 0] S06_AXI_awlock,
  input bit [3 : 0] S06_AXI_awcache,
  input bit [2 : 0] S06_AXI_awprot,
  input bit [3 : 0] S06_AXI_awqos,
  input bit_as_bool S06_AXI_awvalid,
  output bit_as_bool S06_AXI_awready,
  input bit [511 : 0] S06_AXI_wdata,
  input bit [63 : 0] S06_AXI_wstrb,
  input bit_as_bool S06_AXI_wlast,
  input bit_as_bool S06_AXI_wvalid,
  output bit_as_bool S06_AXI_wready,
  output bit [5 : 0] S06_AXI_bid,
  output bit [1 : 0] S06_AXI_bresp,
  output bit_as_bool S06_AXI_bvalid,
  input bit_as_bool S06_AXI_bready,
  input bit [5 : 0] S06_AXI_arid,
  input bit [33 : 0] S06_AXI_araddr,
  input bit [7 : 0] S06_AXI_arlen,
  input bit [2 : 0] S06_AXI_arsize,
  input bit [1 : 0] S06_AXI_arburst,
  input bit [0 : 0] S06_AXI_arlock,
  input bit [3 : 0] S06_AXI_arcache,
  input bit [2 : 0] S06_AXI_arprot,
  input bit [3 : 0] S06_AXI_arqos,
  input bit_as_bool S06_AXI_arvalid,
  output bit_as_bool S06_AXI_arready,
  output bit [5 : 0] S06_AXI_rid,
  output bit [511 : 0] S06_AXI_rdata,
  output bit [1 : 0] S06_AXI_rresp,
  output bit_as_bool S06_AXI_rlast,
  output bit_as_bool S06_AXI_rvalid,
  input bit_as_bool S06_AXI_rready,
  input bit [5 : 0] S07_AXI_awid,
  input bit [33 : 0] S07_AXI_awaddr,
  input bit [7 : 0] S07_AXI_awlen,
  input bit [2 : 0] S07_AXI_awsize,
  input bit [1 : 0] S07_AXI_awburst,
  input bit [0 : 0] S07_AXI_awlock,
  input bit [3 : 0] S07_AXI_awcache,
  input bit [2 : 0] S07_AXI_awprot,
  input bit [3 : 0] S07_AXI_awqos,
  input bit_as_bool S07_AXI_awvalid,
  output bit_as_bool S07_AXI_awready,
  input bit [511 : 0] S07_AXI_wdata,
  input bit [63 : 0] S07_AXI_wstrb,
  input bit_as_bool S07_AXI_wlast,
  input bit_as_bool S07_AXI_wvalid,
  output bit_as_bool S07_AXI_wready,
  output bit [5 : 0] S07_AXI_bid,
  output bit [1 : 0] S07_AXI_bresp,
  output bit_as_bool S07_AXI_bvalid,
  input bit_as_bool S07_AXI_bready,
  input bit [5 : 0] S07_AXI_arid,
  input bit [33 : 0] S07_AXI_araddr,
  input bit [7 : 0] S07_AXI_arlen,
  input bit [2 : 0] S07_AXI_arsize,
  input bit [1 : 0] S07_AXI_arburst,
  input bit [0 : 0] S07_AXI_arlock,
  input bit [3 : 0] S07_AXI_arcache,
  input bit [2 : 0] S07_AXI_arprot,
  input bit [3 : 0] S07_AXI_arqos,
  input bit_as_bool S07_AXI_arvalid,
  output bit_as_bool S07_AXI_arready,
  output bit [5 : 0] S07_AXI_rid,
  output bit [511 : 0] S07_AXI_rdata,
  output bit [1 : 0] S07_AXI_rresp,
  output bit_as_bool S07_AXI_rlast,
  output bit_as_bool S07_AXI_rvalid,
  input bit_as_bool S07_AXI_rready,
  input bit [5 : 0] S08_AXI_awid,
  input bit [33 : 0] S08_AXI_awaddr,
  input bit [7 : 0] S08_AXI_awlen,
  input bit [2 : 0] S08_AXI_awsize,
  input bit [1 : 0] S08_AXI_awburst,
  input bit [0 : 0] S08_AXI_awlock,
  input bit [3 : 0] S08_AXI_awcache,
  input bit [2 : 0] S08_AXI_awprot,
  input bit [3 : 0] S08_AXI_awqos,
  input bit_as_bool S08_AXI_awvalid,
  output bit_as_bool S08_AXI_awready,
  input bit [511 : 0] S08_AXI_wdata,
  input bit [63 : 0] S08_AXI_wstrb,
  input bit_as_bool S08_AXI_wlast,
  input bit_as_bool S08_AXI_wvalid,
  output bit_as_bool S08_AXI_wready,
  output bit [5 : 0] S08_AXI_bid,
  output bit [1 : 0] S08_AXI_bresp,
  output bit_as_bool S08_AXI_bvalid,
  input bit_as_bool S08_AXI_bready,
  input bit [5 : 0] S08_AXI_arid,
  input bit [33 : 0] S08_AXI_araddr,
  input bit [7 : 0] S08_AXI_arlen,
  input bit [2 : 0] S08_AXI_arsize,
  input bit [1 : 0] S08_AXI_arburst,
  input bit [0 : 0] S08_AXI_arlock,
  input bit [3 : 0] S08_AXI_arcache,
  input bit [2 : 0] S08_AXI_arprot,
  input bit [3 : 0] S08_AXI_arqos,
  input bit_as_bool S08_AXI_arvalid,
  output bit_as_bool S08_AXI_arready,
  output bit [5 : 0] S08_AXI_rid,
  output bit [511 : 0] S08_AXI_rdata,
  output bit [1 : 0] S08_AXI_rresp,
  output bit_as_bool S08_AXI_rlast,
  output bit_as_bool S08_AXI_rvalid,
  input bit_as_bool S08_AXI_rready,
  input bit [5 : 0] S09_AXI_awid,
  input bit [33 : 0] S09_AXI_awaddr,
  input bit [7 : 0] S09_AXI_awlen,
  input bit [2 : 0] S09_AXI_awsize,
  input bit [1 : 0] S09_AXI_awburst,
  input bit [0 : 0] S09_AXI_awlock,
  input bit [3 : 0] S09_AXI_awcache,
  input bit [2 : 0] S09_AXI_awprot,
  input bit [3 : 0] S09_AXI_awqos,
  input bit_as_bool S09_AXI_awvalid,
  output bit_as_bool S09_AXI_awready,
  input bit [511 : 0] S09_AXI_wdata,
  input bit [63 : 0] S09_AXI_wstrb,
  input bit_as_bool S09_AXI_wlast,
  input bit_as_bool S09_AXI_wvalid,
  output bit_as_bool S09_AXI_wready,
  output bit [5 : 0] S09_AXI_bid,
  output bit [1 : 0] S09_AXI_bresp,
  output bit_as_bool S09_AXI_bvalid,
  input bit_as_bool S09_AXI_bready,
  input bit [5 : 0] S09_AXI_arid,
  input bit [33 : 0] S09_AXI_araddr,
  input bit [7 : 0] S09_AXI_arlen,
  input bit [2 : 0] S09_AXI_arsize,
  input bit [1 : 0] S09_AXI_arburst,
  input bit [0 : 0] S09_AXI_arlock,
  input bit [3 : 0] S09_AXI_arcache,
  input bit [2 : 0] S09_AXI_arprot,
  input bit [3 : 0] S09_AXI_arqos,
  input bit_as_bool S09_AXI_arvalid,
  output bit_as_bool S09_AXI_arready,
  output bit [5 : 0] S09_AXI_rid,
  output bit [511 : 0] S09_AXI_rdata,
  output bit [1 : 0] S09_AXI_rresp,
  output bit_as_bool S09_AXI_rlast,
  output bit_as_bool S09_AXI_rvalid,
  input bit_as_bool S09_AXI_rready,
  input bit [5 : 0] S10_AXI_awid,
  input bit [33 : 0] S10_AXI_awaddr,
  input bit [7 : 0] S10_AXI_awlen,
  input bit [2 : 0] S10_AXI_awsize,
  input bit [1 : 0] S10_AXI_awburst,
  input bit [0 : 0] S10_AXI_awlock,
  input bit [3 : 0] S10_AXI_awcache,
  input bit [2 : 0] S10_AXI_awprot,
  input bit [3 : 0] S10_AXI_awqos,
  input bit_as_bool S10_AXI_awvalid,
  output bit_as_bool S10_AXI_awready,
  input bit [511 : 0] S10_AXI_wdata,
  input bit [63 : 0] S10_AXI_wstrb,
  input bit_as_bool S10_AXI_wlast,
  input bit_as_bool S10_AXI_wvalid,
  output bit_as_bool S10_AXI_wready,
  output bit [5 : 0] S10_AXI_bid,
  output bit [1 : 0] S10_AXI_bresp,
  output bit_as_bool S10_AXI_bvalid,
  input bit_as_bool S10_AXI_bready,
  input bit [5 : 0] S10_AXI_arid,
  input bit [33 : 0] S10_AXI_araddr,
  input bit [7 : 0] S10_AXI_arlen,
  input bit [2 : 0] S10_AXI_arsize,
  input bit [1 : 0] S10_AXI_arburst,
  input bit [0 : 0] S10_AXI_arlock,
  input bit [3 : 0] S10_AXI_arcache,
  input bit [2 : 0] S10_AXI_arprot,
  input bit [3 : 0] S10_AXI_arqos,
  input bit_as_bool S10_AXI_arvalid,
  output bit_as_bool S10_AXI_arready,
  output bit [5 : 0] S10_AXI_rid,
  output bit [511 : 0] S10_AXI_rdata,
  output bit [1 : 0] S10_AXI_rresp,
  output bit_as_bool S10_AXI_rlast,
  output bit_as_bool S10_AXI_rvalid,
  input bit_as_bool S10_AXI_rready,
  input bit [5 : 0] S11_AXI_awid,
  input bit [33 : 0] S11_AXI_awaddr,
  input bit [7 : 0] S11_AXI_awlen,
  input bit [2 : 0] S11_AXI_awsize,
  input bit [1 : 0] S11_AXI_awburst,
  input bit [0 : 0] S11_AXI_awlock,
  input bit [3 : 0] S11_AXI_awcache,
  input bit [2 : 0] S11_AXI_awprot,
  input bit [3 : 0] S11_AXI_awqos,
  input bit_as_bool S11_AXI_awvalid,
  output bit_as_bool S11_AXI_awready,
  input bit [511 : 0] S11_AXI_wdata,
  input bit [63 : 0] S11_AXI_wstrb,
  input bit_as_bool S11_AXI_wlast,
  input bit_as_bool S11_AXI_wvalid,
  output bit_as_bool S11_AXI_wready,
  output bit [5 : 0] S11_AXI_bid,
  output bit [1 : 0] S11_AXI_bresp,
  output bit_as_bool S11_AXI_bvalid,
  input bit_as_bool S11_AXI_bready,
  input bit [5 : 0] S11_AXI_arid,
  input bit [33 : 0] S11_AXI_araddr,
  input bit [7 : 0] S11_AXI_arlen,
  input bit [2 : 0] S11_AXI_arsize,
  input bit [1 : 0] S11_AXI_arburst,
  input bit [0 : 0] S11_AXI_arlock,
  input bit [3 : 0] S11_AXI_arcache,
  input bit [2 : 0] S11_AXI_arprot,
  input bit [3 : 0] S11_AXI_arqos,
  input bit_as_bool S11_AXI_arvalid,
  output bit_as_bool S11_AXI_arready,
  output bit [5 : 0] S11_AXI_rid,
  output bit [511 : 0] S11_AXI_rdata,
  output bit [1 : 0] S11_AXI_rresp,
  output bit_as_bool S11_AXI_rlast,
  output bit_as_bool S11_AXI_rvalid,
  input bit_as_bool S11_AXI_rready,
  input bit [5 : 0] S12_AXI_awid,
  input bit [33 : 0] S12_AXI_awaddr,
  input bit [7 : 0] S12_AXI_awlen,
  input bit [2 : 0] S12_AXI_awsize,
  input bit [1 : 0] S12_AXI_awburst,
  input bit [0 : 0] S12_AXI_awlock,
  input bit [3 : 0] S12_AXI_awcache,
  input bit [2 : 0] S12_AXI_awprot,
  input bit [3 : 0] S12_AXI_awqos,
  input bit_as_bool S12_AXI_awvalid,
  output bit_as_bool S12_AXI_awready,
  input bit [511 : 0] S12_AXI_wdata,
  input bit [63 : 0] S12_AXI_wstrb,
  input bit_as_bool S12_AXI_wlast,
  input bit_as_bool S12_AXI_wvalid,
  output bit_as_bool S12_AXI_wready,
  output bit [5 : 0] S12_AXI_bid,
  output bit [1 : 0] S12_AXI_bresp,
  output bit_as_bool S12_AXI_bvalid,
  input bit_as_bool S12_AXI_bready,
  input bit [5 : 0] S12_AXI_arid,
  input bit [33 : 0] S12_AXI_araddr,
  input bit [7 : 0] S12_AXI_arlen,
  input bit [2 : 0] S12_AXI_arsize,
  input bit [1 : 0] S12_AXI_arburst,
  input bit [0 : 0] S12_AXI_arlock,
  input bit [3 : 0] S12_AXI_arcache,
  input bit [2 : 0] S12_AXI_arprot,
  input bit [3 : 0] S12_AXI_arqos,
  input bit_as_bool S12_AXI_arvalid,
  output bit_as_bool S12_AXI_arready,
  output bit [5 : 0] S12_AXI_rid,
  output bit [511 : 0] S12_AXI_rdata,
  output bit [1 : 0] S12_AXI_rresp,
  output bit_as_bool S12_AXI_rlast,
  output bit_as_bool S12_AXI_rvalid,
  input bit_as_bool S12_AXI_rready,
  input bit [5 : 0] S13_AXI_awid,
  input bit [33 : 0] S13_AXI_awaddr,
  input bit [7 : 0] S13_AXI_awlen,
  input bit [2 : 0] S13_AXI_awsize,
  input bit [1 : 0] S13_AXI_awburst,
  input bit [0 : 0] S13_AXI_awlock,
  input bit [3 : 0] S13_AXI_awcache,
  input bit [2 : 0] S13_AXI_awprot,
  input bit [3 : 0] S13_AXI_awqos,
  input bit_as_bool S13_AXI_awvalid,
  output bit_as_bool S13_AXI_awready,
  input bit [511 : 0] S13_AXI_wdata,
  input bit [63 : 0] S13_AXI_wstrb,
  input bit_as_bool S13_AXI_wlast,
  input bit_as_bool S13_AXI_wvalid,
  output bit_as_bool S13_AXI_wready,
  output bit [5 : 0] S13_AXI_bid,
  output bit [1 : 0] S13_AXI_bresp,
  output bit_as_bool S13_AXI_bvalid,
  input bit_as_bool S13_AXI_bready,
  input bit [5 : 0] S13_AXI_arid,
  input bit [33 : 0] S13_AXI_araddr,
  input bit [7 : 0] S13_AXI_arlen,
  input bit [2 : 0] S13_AXI_arsize,
  input bit [1 : 0] S13_AXI_arburst,
  input bit [0 : 0] S13_AXI_arlock,
  input bit [3 : 0] S13_AXI_arcache,
  input bit [2 : 0] S13_AXI_arprot,
  input bit [3 : 0] S13_AXI_arqos,
  input bit_as_bool S13_AXI_arvalid,
  output bit_as_bool S13_AXI_arready,
  output bit [5 : 0] S13_AXI_rid,
  output bit [511 : 0] S13_AXI_rdata,
  output bit [1 : 0] S13_AXI_rresp,
  output bit_as_bool S13_AXI_rlast,
  output bit_as_bool S13_AXI_rvalid,
  input bit_as_bool S13_AXI_rready,
  input bit [5 : 0] S14_AXI_awid,
  input bit [33 : 0] S14_AXI_awaddr,
  input bit [7 : 0] S14_AXI_awlen,
  input bit [2 : 0] S14_AXI_awsize,
  input bit [1 : 0] S14_AXI_awburst,
  input bit [0 : 0] S14_AXI_awlock,
  input bit [3 : 0] S14_AXI_awcache,
  input bit [2 : 0] S14_AXI_awprot,
  input bit [3 : 0] S14_AXI_awqos,
  input bit_as_bool S14_AXI_awvalid,
  output bit_as_bool S14_AXI_awready,
  input bit [511 : 0] S14_AXI_wdata,
  input bit [63 : 0] S14_AXI_wstrb,
  input bit_as_bool S14_AXI_wlast,
  input bit_as_bool S14_AXI_wvalid,
  output bit_as_bool S14_AXI_wready,
  output bit [5 : 0] S14_AXI_bid,
  output bit [1 : 0] S14_AXI_bresp,
  output bit_as_bool S14_AXI_bvalid,
  input bit_as_bool S14_AXI_bready,
  input bit [5 : 0] S14_AXI_arid,
  input bit [33 : 0] S14_AXI_araddr,
  input bit [7 : 0] S14_AXI_arlen,
  input bit [2 : 0] S14_AXI_arsize,
  input bit [1 : 0] S14_AXI_arburst,
  input bit [0 : 0] S14_AXI_arlock,
  input bit [3 : 0] S14_AXI_arcache,
  input bit [2 : 0] S14_AXI_arprot,
  input bit [3 : 0] S14_AXI_arqos,
  input bit_as_bool S14_AXI_arvalid,
  output bit_as_bool S14_AXI_arready,
  output bit [5 : 0] S14_AXI_rid,
  output bit [511 : 0] S14_AXI_rdata,
  output bit [1 : 0] S14_AXI_rresp,
  output bit_as_bool S14_AXI_rlast,
  output bit_as_bool S14_AXI_rvalid,
  input bit_as_bool S14_AXI_rready,
  input bit [5 : 0] S15_AXI_awid,
  input bit [33 : 0] S15_AXI_awaddr,
  input bit [7 : 0] S15_AXI_awlen,
  input bit [2 : 0] S15_AXI_awsize,
  input bit [1 : 0] S15_AXI_awburst,
  input bit [0 : 0] S15_AXI_awlock,
  input bit [3 : 0] S15_AXI_awcache,
  input bit [2 : 0] S15_AXI_awprot,
  input bit [3 : 0] S15_AXI_awqos,
  input bit_as_bool S15_AXI_awvalid,
  output bit_as_bool S15_AXI_awready,
  input bit [511 : 0] S15_AXI_wdata,
  input bit [63 : 0] S15_AXI_wstrb,
  input bit_as_bool S15_AXI_wlast,
  input bit_as_bool S15_AXI_wvalid,
  output bit_as_bool S15_AXI_wready,
  output bit [5 : 0] S15_AXI_bid,
  output bit [1 : 0] S15_AXI_bresp,
  output bit_as_bool S15_AXI_bvalid,
  input bit_as_bool S15_AXI_bready,
  input bit [5 : 0] S15_AXI_arid,
  input bit [33 : 0] S15_AXI_araddr,
  input bit [7 : 0] S15_AXI_arlen,
  input bit [2 : 0] S15_AXI_arsize,
  input bit [1 : 0] S15_AXI_arburst,
  input bit [0 : 0] S15_AXI_arlock,
  input bit [3 : 0] S15_AXI_arcache,
  input bit [2 : 0] S15_AXI_arprot,
  input bit [3 : 0] S15_AXI_arqos,
  input bit_as_bool S15_AXI_arvalid,
  output bit_as_bool S15_AXI_arready,
  output bit [5 : 0] S15_AXI_rid,
  output bit [511 : 0] S15_AXI_rdata,
  output bit [1 : 0] S15_AXI_rresp,
  output bit_as_bool S15_AXI_rlast,
  output bit_as_bool S15_AXI_rvalid,
  input bit_as_bool S15_AXI_rready,
  output bit [33 : 0] M00_AXI_awaddr,
  output bit [7 : 0] M00_AXI_awlen,
  output bit [2 : 0] M00_AXI_awsize,
  output bit [1 : 0] M00_AXI_awburst,
  output bit [0 : 0] M00_AXI_awlock,
  output bit [3 : 0] M00_AXI_awcache,
  output bit [2 : 0] M00_AXI_awprot,
  output bit [3 : 0] M00_AXI_awqos,
  output bit_as_bool M00_AXI_awvalid,
  input bit_as_bool M00_AXI_awready,
  output bit [511 : 0] M00_AXI_wdata,
  output bit [63 : 0] M00_AXI_wstrb,
  output bit_as_bool M00_AXI_wlast,
  output bit_as_bool M00_AXI_wvalid,
  input bit_as_bool M00_AXI_wready,
  input bit [1 : 0] M00_AXI_bresp,
  input bit_as_bool M00_AXI_bvalid,
  output bit_as_bool M00_AXI_bready,
  output bit [33 : 0] M00_AXI_araddr,
  output bit [7 : 0] M00_AXI_arlen,
  output bit [2 : 0] M00_AXI_arsize,
  output bit [1 : 0] M00_AXI_arburst,
  output bit [0 : 0] M00_AXI_arlock,
  output bit [3 : 0] M00_AXI_arcache,
  output bit [2 : 0] M00_AXI_arprot,
  output bit [3 : 0] M00_AXI_arqos,
  output bit_as_bool M00_AXI_arvalid,
  input bit_as_bool M00_AXI_arready,
  input bit [511 : 0] M00_AXI_rdata,
  input bit [1 : 0] M00_AXI_rresp,
  input bit_as_bool M00_AXI_rlast,
  input bit_as_bool M00_AXI_rvalid,
  output bit_as_bool M00_AXI_rready
);
endmodule
`endif

`ifdef XCELIUM
(* XMSC_MODULE_EXPORT *)
module MemoryInterfacesVIP_smartconnect_0_0 (aclk,aresetn,S00_AXI_awid,S00_AXI_awaddr,S00_AXI_awlen,S00_AXI_awsize,S00_AXI_awburst,S00_AXI_awlock,S00_AXI_awcache,S00_AXI_awprot,S00_AXI_awqos,S00_AXI_awvalid,S00_AXI_awready,S00_AXI_wdata,S00_AXI_wstrb,S00_AXI_wlast,S00_AXI_wvalid,S00_AXI_wready,S00_AXI_bid,S00_AXI_bresp,S00_AXI_bvalid,S00_AXI_bready,S00_AXI_arid,S00_AXI_araddr,S00_AXI_arlen,S00_AXI_arsize,S00_AXI_arburst,S00_AXI_arlock,S00_AXI_arcache,S00_AXI_arprot,S00_AXI_arqos,S00_AXI_arvalid,S00_AXI_arready,S00_AXI_rid,S00_AXI_rdata,S00_AXI_rresp,S00_AXI_rlast,S00_AXI_rvalid,S00_AXI_rready,S01_AXI_awid,S01_AXI_awaddr,S01_AXI_awlen,S01_AXI_awsize,S01_AXI_awburst,S01_AXI_awlock,S01_AXI_awcache,S01_AXI_awprot,S01_AXI_awqos,S01_AXI_awvalid,S01_AXI_awready,S01_AXI_wdata,S01_AXI_wstrb,S01_AXI_wlast,S01_AXI_wvalid,S01_AXI_wready,S01_AXI_bid,S01_AXI_bresp,S01_AXI_bvalid,S01_AXI_bready,S01_AXI_arid,S01_AXI_araddr,S01_AXI_arlen,S01_AXI_arsize,S01_AXI_arburst,S01_AXI_arlock,S01_AXI_arcache,S01_AXI_arprot,S01_AXI_arqos,S01_AXI_arvalid,S01_AXI_arready,S01_AXI_rid,S01_AXI_rdata,S01_AXI_rresp,S01_AXI_rlast,S01_AXI_rvalid,S01_AXI_rready,S02_AXI_awid,S02_AXI_awaddr,S02_AXI_awlen,S02_AXI_awsize,S02_AXI_awburst,S02_AXI_awlock,S02_AXI_awcache,S02_AXI_awprot,S02_AXI_awqos,S02_AXI_awvalid,S02_AXI_awready,S02_AXI_wdata,S02_AXI_wstrb,S02_AXI_wlast,S02_AXI_wvalid,S02_AXI_wready,S02_AXI_bid,S02_AXI_bresp,S02_AXI_bvalid,S02_AXI_bready,S02_AXI_arid,S02_AXI_araddr,S02_AXI_arlen,S02_AXI_arsize,S02_AXI_arburst,S02_AXI_arlock,S02_AXI_arcache,S02_AXI_arprot,S02_AXI_arqos,S02_AXI_arvalid,S02_AXI_arready,S02_AXI_rid,S02_AXI_rdata,S02_AXI_rresp,S02_AXI_rlast,S02_AXI_rvalid,S02_AXI_rready,S03_AXI_awid,S03_AXI_awaddr,S03_AXI_awlen,S03_AXI_awsize,S03_AXI_awburst,S03_AXI_awlock,S03_AXI_awcache,S03_AXI_awprot,S03_AXI_awqos,S03_AXI_awvalid,S03_AXI_awready,S03_AXI_wdata,S03_AXI_wstrb,S03_AXI_wlast,S03_AXI_wvalid,S03_AXI_wready,S03_AXI_bid,S03_AXI_bresp,S03_AXI_bvalid,S03_AXI_bready,S03_AXI_arid,S03_AXI_araddr,S03_AXI_arlen,S03_AXI_arsize,S03_AXI_arburst,S03_AXI_arlock,S03_AXI_arcache,S03_AXI_arprot,S03_AXI_arqos,S03_AXI_arvalid,S03_AXI_arready,S03_AXI_rid,S03_AXI_rdata,S03_AXI_rresp,S03_AXI_rlast,S03_AXI_rvalid,S03_AXI_rready,S04_AXI_awid,S04_AXI_awaddr,S04_AXI_awlen,S04_AXI_awsize,S04_AXI_awburst,S04_AXI_awlock,S04_AXI_awcache,S04_AXI_awprot,S04_AXI_awqos,S04_AXI_awvalid,S04_AXI_awready,S04_AXI_wdata,S04_AXI_wstrb,S04_AXI_wlast,S04_AXI_wvalid,S04_AXI_wready,S04_AXI_bid,S04_AXI_bresp,S04_AXI_bvalid,S04_AXI_bready,S04_AXI_arid,S04_AXI_araddr,S04_AXI_arlen,S04_AXI_arsize,S04_AXI_arburst,S04_AXI_arlock,S04_AXI_arcache,S04_AXI_arprot,S04_AXI_arqos,S04_AXI_arvalid,S04_AXI_arready,S04_AXI_rid,S04_AXI_rdata,S04_AXI_rresp,S04_AXI_rlast,S04_AXI_rvalid,S04_AXI_rready,S05_AXI_awid,S05_AXI_awaddr,S05_AXI_awlen,S05_AXI_awsize,S05_AXI_awburst,S05_AXI_awlock,S05_AXI_awcache,S05_AXI_awprot,S05_AXI_awqos,S05_AXI_awvalid,S05_AXI_awready,S05_AXI_wdata,S05_AXI_wstrb,S05_AXI_wlast,S05_AXI_wvalid,S05_AXI_wready,S05_AXI_bid,S05_AXI_bresp,S05_AXI_bvalid,S05_AXI_bready,S05_AXI_arid,S05_AXI_araddr,S05_AXI_arlen,S05_AXI_arsize,S05_AXI_arburst,S05_AXI_arlock,S05_AXI_arcache,S05_AXI_arprot,S05_AXI_arqos,S05_AXI_arvalid,S05_AXI_arready,S05_AXI_rid,S05_AXI_rdata,S05_AXI_rresp,S05_AXI_rlast,S05_AXI_rvalid,S05_AXI_rready,S06_AXI_awid,S06_AXI_awaddr,S06_AXI_awlen,S06_AXI_awsize,S06_AXI_awburst,S06_AXI_awlock,S06_AXI_awcache,S06_AXI_awprot,S06_AXI_awqos,S06_AXI_awvalid,S06_AXI_awready,S06_AXI_wdata,S06_AXI_wstrb,S06_AXI_wlast,S06_AXI_wvalid,S06_AXI_wready,S06_AXI_bid,S06_AXI_bresp,S06_AXI_bvalid,S06_AXI_bready,S06_AXI_arid,S06_AXI_araddr,S06_AXI_arlen,S06_AXI_arsize,S06_AXI_arburst,S06_AXI_arlock,S06_AXI_arcache,S06_AXI_arprot,S06_AXI_arqos,S06_AXI_arvalid,S06_AXI_arready,S06_AXI_rid,S06_AXI_rdata,S06_AXI_rresp,S06_AXI_rlast,S06_AXI_rvalid,S06_AXI_rready,S07_AXI_awid,S07_AXI_awaddr,S07_AXI_awlen,S07_AXI_awsize,S07_AXI_awburst,S07_AXI_awlock,S07_AXI_awcache,S07_AXI_awprot,S07_AXI_awqos,S07_AXI_awvalid,S07_AXI_awready,S07_AXI_wdata,S07_AXI_wstrb,S07_AXI_wlast,S07_AXI_wvalid,S07_AXI_wready,S07_AXI_bid,S07_AXI_bresp,S07_AXI_bvalid,S07_AXI_bready,S07_AXI_arid,S07_AXI_araddr,S07_AXI_arlen,S07_AXI_arsize,S07_AXI_arburst,S07_AXI_arlock,S07_AXI_arcache,S07_AXI_arprot,S07_AXI_arqos,S07_AXI_arvalid,S07_AXI_arready,S07_AXI_rid,S07_AXI_rdata,S07_AXI_rresp,S07_AXI_rlast,S07_AXI_rvalid,S07_AXI_rready,S08_AXI_awid,S08_AXI_awaddr,S08_AXI_awlen,S08_AXI_awsize,S08_AXI_awburst,S08_AXI_awlock,S08_AXI_awcache,S08_AXI_awprot,S08_AXI_awqos,S08_AXI_awvalid,S08_AXI_awready,S08_AXI_wdata,S08_AXI_wstrb,S08_AXI_wlast,S08_AXI_wvalid,S08_AXI_wready,S08_AXI_bid,S08_AXI_bresp,S08_AXI_bvalid,S08_AXI_bready,S08_AXI_arid,S08_AXI_araddr,S08_AXI_arlen,S08_AXI_arsize,S08_AXI_arburst,S08_AXI_arlock,S08_AXI_arcache,S08_AXI_arprot,S08_AXI_arqos,S08_AXI_arvalid,S08_AXI_arready,S08_AXI_rid,S08_AXI_rdata,S08_AXI_rresp,S08_AXI_rlast,S08_AXI_rvalid,S08_AXI_rready,S09_AXI_awid,S09_AXI_awaddr,S09_AXI_awlen,S09_AXI_awsize,S09_AXI_awburst,S09_AXI_awlock,S09_AXI_awcache,S09_AXI_awprot,S09_AXI_awqos,S09_AXI_awvalid,S09_AXI_awready,S09_AXI_wdata,S09_AXI_wstrb,S09_AXI_wlast,S09_AXI_wvalid,S09_AXI_wready,S09_AXI_bid,S09_AXI_bresp,S09_AXI_bvalid,S09_AXI_bready,S09_AXI_arid,S09_AXI_araddr,S09_AXI_arlen,S09_AXI_arsize,S09_AXI_arburst,S09_AXI_arlock,S09_AXI_arcache,S09_AXI_arprot,S09_AXI_arqos,S09_AXI_arvalid,S09_AXI_arready,S09_AXI_rid,S09_AXI_rdata,S09_AXI_rresp,S09_AXI_rlast,S09_AXI_rvalid,S09_AXI_rready,S10_AXI_awid,S10_AXI_awaddr,S10_AXI_awlen,S10_AXI_awsize,S10_AXI_awburst,S10_AXI_awlock,S10_AXI_awcache,S10_AXI_awprot,S10_AXI_awqos,S10_AXI_awvalid,S10_AXI_awready,S10_AXI_wdata,S10_AXI_wstrb,S10_AXI_wlast,S10_AXI_wvalid,S10_AXI_wready,S10_AXI_bid,S10_AXI_bresp,S10_AXI_bvalid,S10_AXI_bready,S10_AXI_arid,S10_AXI_araddr,S10_AXI_arlen,S10_AXI_arsize,S10_AXI_arburst,S10_AXI_arlock,S10_AXI_arcache,S10_AXI_arprot,S10_AXI_arqos,S10_AXI_arvalid,S10_AXI_arready,S10_AXI_rid,S10_AXI_rdata,S10_AXI_rresp,S10_AXI_rlast,S10_AXI_rvalid,S10_AXI_rready,S11_AXI_awid,S11_AXI_awaddr,S11_AXI_awlen,S11_AXI_awsize,S11_AXI_awburst,S11_AXI_awlock,S11_AXI_awcache,S11_AXI_awprot,S11_AXI_awqos,S11_AXI_awvalid,S11_AXI_awready,S11_AXI_wdata,S11_AXI_wstrb,S11_AXI_wlast,S11_AXI_wvalid,S11_AXI_wready,S11_AXI_bid,S11_AXI_bresp,S11_AXI_bvalid,S11_AXI_bready,S11_AXI_arid,S11_AXI_araddr,S11_AXI_arlen,S11_AXI_arsize,S11_AXI_arburst,S11_AXI_arlock,S11_AXI_arcache,S11_AXI_arprot,S11_AXI_arqos,S11_AXI_arvalid,S11_AXI_arready,S11_AXI_rid,S11_AXI_rdata,S11_AXI_rresp,S11_AXI_rlast,S11_AXI_rvalid,S11_AXI_rready,S12_AXI_awid,S12_AXI_awaddr,S12_AXI_awlen,S12_AXI_awsize,S12_AXI_awburst,S12_AXI_awlock,S12_AXI_awcache,S12_AXI_awprot,S12_AXI_awqos,S12_AXI_awvalid,S12_AXI_awready,S12_AXI_wdata,S12_AXI_wstrb,S12_AXI_wlast,S12_AXI_wvalid,S12_AXI_wready,S12_AXI_bid,S12_AXI_bresp,S12_AXI_bvalid,S12_AXI_bready,S12_AXI_arid,S12_AXI_araddr,S12_AXI_arlen,S12_AXI_arsize,S12_AXI_arburst,S12_AXI_arlock,S12_AXI_arcache,S12_AXI_arprot,S12_AXI_arqos,S12_AXI_arvalid,S12_AXI_arready,S12_AXI_rid,S12_AXI_rdata,S12_AXI_rresp,S12_AXI_rlast,S12_AXI_rvalid,S12_AXI_rready,S13_AXI_awid,S13_AXI_awaddr,S13_AXI_awlen,S13_AXI_awsize,S13_AXI_awburst,S13_AXI_awlock,S13_AXI_awcache,S13_AXI_awprot,S13_AXI_awqos,S13_AXI_awvalid,S13_AXI_awready,S13_AXI_wdata,S13_AXI_wstrb,S13_AXI_wlast,S13_AXI_wvalid,S13_AXI_wready,S13_AXI_bid,S13_AXI_bresp,S13_AXI_bvalid,S13_AXI_bready,S13_AXI_arid,S13_AXI_araddr,S13_AXI_arlen,S13_AXI_arsize,S13_AXI_arburst,S13_AXI_arlock,S13_AXI_arcache,S13_AXI_arprot,S13_AXI_arqos,S13_AXI_arvalid,S13_AXI_arready,S13_AXI_rid,S13_AXI_rdata,S13_AXI_rresp,S13_AXI_rlast,S13_AXI_rvalid,S13_AXI_rready,S14_AXI_awid,S14_AXI_awaddr,S14_AXI_awlen,S14_AXI_awsize,S14_AXI_awburst,S14_AXI_awlock,S14_AXI_awcache,S14_AXI_awprot,S14_AXI_awqos,S14_AXI_awvalid,S14_AXI_awready,S14_AXI_wdata,S14_AXI_wstrb,S14_AXI_wlast,S14_AXI_wvalid,S14_AXI_wready,S14_AXI_bid,S14_AXI_bresp,S14_AXI_bvalid,S14_AXI_bready,S14_AXI_arid,S14_AXI_araddr,S14_AXI_arlen,S14_AXI_arsize,S14_AXI_arburst,S14_AXI_arlock,S14_AXI_arcache,S14_AXI_arprot,S14_AXI_arqos,S14_AXI_arvalid,S14_AXI_arready,S14_AXI_rid,S14_AXI_rdata,S14_AXI_rresp,S14_AXI_rlast,S14_AXI_rvalid,S14_AXI_rready,S15_AXI_awid,S15_AXI_awaddr,S15_AXI_awlen,S15_AXI_awsize,S15_AXI_awburst,S15_AXI_awlock,S15_AXI_awcache,S15_AXI_awprot,S15_AXI_awqos,S15_AXI_awvalid,S15_AXI_awready,S15_AXI_wdata,S15_AXI_wstrb,S15_AXI_wlast,S15_AXI_wvalid,S15_AXI_wready,S15_AXI_bid,S15_AXI_bresp,S15_AXI_bvalid,S15_AXI_bready,S15_AXI_arid,S15_AXI_araddr,S15_AXI_arlen,S15_AXI_arsize,S15_AXI_arburst,S15_AXI_arlock,S15_AXI_arcache,S15_AXI_arprot,S15_AXI_arqos,S15_AXI_arvalid,S15_AXI_arready,S15_AXI_rid,S15_AXI_rdata,S15_AXI_rresp,S15_AXI_rlast,S15_AXI_rvalid,S15_AXI_rready,M00_AXI_awaddr,M00_AXI_awlen,M00_AXI_awsize,M00_AXI_awburst,M00_AXI_awlock,M00_AXI_awcache,M00_AXI_awprot,M00_AXI_awqos,M00_AXI_awvalid,M00_AXI_awready,M00_AXI_wdata,M00_AXI_wstrb,M00_AXI_wlast,M00_AXI_wvalid,M00_AXI_wready,M00_AXI_bresp,M00_AXI_bvalid,M00_AXI_bready,M00_AXI_araddr,M00_AXI_arlen,M00_AXI_arsize,M00_AXI_arburst,M00_AXI_arlock,M00_AXI_arcache,M00_AXI_arprot,M00_AXI_arqos,M00_AXI_arvalid,M00_AXI_arready,M00_AXI_rdata,M00_AXI_rresp,M00_AXI_rlast,M00_AXI_rvalid,M00_AXI_rready)
(* integer foreign = "SystemC";
*);
  input bit aclk;
  input bit aresetn;
  input bit [5 : 0] S00_AXI_awid;
  input bit [33 : 0] S00_AXI_awaddr;
  input bit [7 : 0] S00_AXI_awlen;
  input bit [2 : 0] S00_AXI_awsize;
  input bit [1 : 0] S00_AXI_awburst;
  input bit [0 : 0] S00_AXI_awlock;
  input bit [3 : 0] S00_AXI_awcache;
  input bit [2 : 0] S00_AXI_awprot;
  input bit [3 : 0] S00_AXI_awqos;
  input bit S00_AXI_awvalid;
  output wire S00_AXI_awready;
  input bit [511 : 0] S00_AXI_wdata;
  input bit [63 : 0] S00_AXI_wstrb;
  input bit S00_AXI_wlast;
  input bit S00_AXI_wvalid;
  output wire S00_AXI_wready;
  output wire [5 : 0] S00_AXI_bid;
  output wire [1 : 0] S00_AXI_bresp;
  output wire S00_AXI_bvalid;
  input bit S00_AXI_bready;
  input bit [5 : 0] S00_AXI_arid;
  input bit [33 : 0] S00_AXI_araddr;
  input bit [7 : 0] S00_AXI_arlen;
  input bit [2 : 0] S00_AXI_arsize;
  input bit [1 : 0] S00_AXI_arburst;
  input bit [0 : 0] S00_AXI_arlock;
  input bit [3 : 0] S00_AXI_arcache;
  input bit [2 : 0] S00_AXI_arprot;
  input bit [3 : 0] S00_AXI_arqos;
  input bit S00_AXI_arvalid;
  output wire S00_AXI_arready;
  output wire [5 : 0] S00_AXI_rid;
  output wire [511 : 0] S00_AXI_rdata;
  output wire [1 : 0] S00_AXI_rresp;
  output wire S00_AXI_rlast;
  output wire S00_AXI_rvalid;
  input bit S00_AXI_rready;
  input bit [5 : 0] S01_AXI_awid;
  input bit [33 : 0] S01_AXI_awaddr;
  input bit [7 : 0] S01_AXI_awlen;
  input bit [2 : 0] S01_AXI_awsize;
  input bit [1 : 0] S01_AXI_awburst;
  input bit [0 : 0] S01_AXI_awlock;
  input bit [3 : 0] S01_AXI_awcache;
  input bit [2 : 0] S01_AXI_awprot;
  input bit [3 : 0] S01_AXI_awqos;
  input bit S01_AXI_awvalid;
  output wire S01_AXI_awready;
  input bit [511 : 0] S01_AXI_wdata;
  input bit [63 : 0] S01_AXI_wstrb;
  input bit S01_AXI_wlast;
  input bit S01_AXI_wvalid;
  output wire S01_AXI_wready;
  output wire [5 : 0] S01_AXI_bid;
  output wire [1 : 0] S01_AXI_bresp;
  output wire S01_AXI_bvalid;
  input bit S01_AXI_bready;
  input bit [5 : 0] S01_AXI_arid;
  input bit [33 : 0] S01_AXI_araddr;
  input bit [7 : 0] S01_AXI_arlen;
  input bit [2 : 0] S01_AXI_arsize;
  input bit [1 : 0] S01_AXI_arburst;
  input bit [0 : 0] S01_AXI_arlock;
  input bit [3 : 0] S01_AXI_arcache;
  input bit [2 : 0] S01_AXI_arprot;
  input bit [3 : 0] S01_AXI_arqos;
  input bit S01_AXI_arvalid;
  output wire S01_AXI_arready;
  output wire [5 : 0] S01_AXI_rid;
  output wire [511 : 0] S01_AXI_rdata;
  output wire [1 : 0] S01_AXI_rresp;
  output wire S01_AXI_rlast;
  output wire S01_AXI_rvalid;
  input bit S01_AXI_rready;
  input bit [5 : 0] S02_AXI_awid;
  input bit [33 : 0] S02_AXI_awaddr;
  input bit [7 : 0] S02_AXI_awlen;
  input bit [2 : 0] S02_AXI_awsize;
  input bit [1 : 0] S02_AXI_awburst;
  input bit [0 : 0] S02_AXI_awlock;
  input bit [3 : 0] S02_AXI_awcache;
  input bit [2 : 0] S02_AXI_awprot;
  input bit [3 : 0] S02_AXI_awqos;
  input bit S02_AXI_awvalid;
  output wire S02_AXI_awready;
  input bit [511 : 0] S02_AXI_wdata;
  input bit [63 : 0] S02_AXI_wstrb;
  input bit S02_AXI_wlast;
  input bit S02_AXI_wvalid;
  output wire S02_AXI_wready;
  output wire [5 : 0] S02_AXI_bid;
  output wire [1 : 0] S02_AXI_bresp;
  output wire S02_AXI_bvalid;
  input bit S02_AXI_bready;
  input bit [5 : 0] S02_AXI_arid;
  input bit [33 : 0] S02_AXI_araddr;
  input bit [7 : 0] S02_AXI_arlen;
  input bit [2 : 0] S02_AXI_arsize;
  input bit [1 : 0] S02_AXI_arburst;
  input bit [0 : 0] S02_AXI_arlock;
  input bit [3 : 0] S02_AXI_arcache;
  input bit [2 : 0] S02_AXI_arprot;
  input bit [3 : 0] S02_AXI_arqos;
  input bit S02_AXI_arvalid;
  output wire S02_AXI_arready;
  output wire [5 : 0] S02_AXI_rid;
  output wire [511 : 0] S02_AXI_rdata;
  output wire [1 : 0] S02_AXI_rresp;
  output wire S02_AXI_rlast;
  output wire S02_AXI_rvalid;
  input bit S02_AXI_rready;
  input bit [5 : 0] S03_AXI_awid;
  input bit [33 : 0] S03_AXI_awaddr;
  input bit [7 : 0] S03_AXI_awlen;
  input bit [2 : 0] S03_AXI_awsize;
  input bit [1 : 0] S03_AXI_awburst;
  input bit [0 : 0] S03_AXI_awlock;
  input bit [3 : 0] S03_AXI_awcache;
  input bit [2 : 0] S03_AXI_awprot;
  input bit [3 : 0] S03_AXI_awqos;
  input bit S03_AXI_awvalid;
  output wire S03_AXI_awready;
  input bit [511 : 0] S03_AXI_wdata;
  input bit [63 : 0] S03_AXI_wstrb;
  input bit S03_AXI_wlast;
  input bit S03_AXI_wvalid;
  output wire S03_AXI_wready;
  output wire [5 : 0] S03_AXI_bid;
  output wire [1 : 0] S03_AXI_bresp;
  output wire S03_AXI_bvalid;
  input bit S03_AXI_bready;
  input bit [5 : 0] S03_AXI_arid;
  input bit [33 : 0] S03_AXI_araddr;
  input bit [7 : 0] S03_AXI_arlen;
  input bit [2 : 0] S03_AXI_arsize;
  input bit [1 : 0] S03_AXI_arburst;
  input bit [0 : 0] S03_AXI_arlock;
  input bit [3 : 0] S03_AXI_arcache;
  input bit [2 : 0] S03_AXI_arprot;
  input bit [3 : 0] S03_AXI_arqos;
  input bit S03_AXI_arvalid;
  output wire S03_AXI_arready;
  output wire [5 : 0] S03_AXI_rid;
  output wire [511 : 0] S03_AXI_rdata;
  output wire [1 : 0] S03_AXI_rresp;
  output wire S03_AXI_rlast;
  output wire S03_AXI_rvalid;
  input bit S03_AXI_rready;
  input bit [5 : 0] S04_AXI_awid;
  input bit [33 : 0] S04_AXI_awaddr;
  input bit [7 : 0] S04_AXI_awlen;
  input bit [2 : 0] S04_AXI_awsize;
  input bit [1 : 0] S04_AXI_awburst;
  input bit [0 : 0] S04_AXI_awlock;
  input bit [3 : 0] S04_AXI_awcache;
  input bit [2 : 0] S04_AXI_awprot;
  input bit [3 : 0] S04_AXI_awqos;
  input bit S04_AXI_awvalid;
  output wire S04_AXI_awready;
  input bit [511 : 0] S04_AXI_wdata;
  input bit [63 : 0] S04_AXI_wstrb;
  input bit S04_AXI_wlast;
  input bit S04_AXI_wvalid;
  output wire S04_AXI_wready;
  output wire [5 : 0] S04_AXI_bid;
  output wire [1 : 0] S04_AXI_bresp;
  output wire S04_AXI_bvalid;
  input bit S04_AXI_bready;
  input bit [5 : 0] S04_AXI_arid;
  input bit [33 : 0] S04_AXI_araddr;
  input bit [7 : 0] S04_AXI_arlen;
  input bit [2 : 0] S04_AXI_arsize;
  input bit [1 : 0] S04_AXI_arburst;
  input bit [0 : 0] S04_AXI_arlock;
  input bit [3 : 0] S04_AXI_arcache;
  input bit [2 : 0] S04_AXI_arprot;
  input bit [3 : 0] S04_AXI_arqos;
  input bit S04_AXI_arvalid;
  output wire S04_AXI_arready;
  output wire [5 : 0] S04_AXI_rid;
  output wire [511 : 0] S04_AXI_rdata;
  output wire [1 : 0] S04_AXI_rresp;
  output wire S04_AXI_rlast;
  output wire S04_AXI_rvalid;
  input bit S04_AXI_rready;
  input bit [5 : 0] S05_AXI_awid;
  input bit [33 : 0] S05_AXI_awaddr;
  input bit [7 : 0] S05_AXI_awlen;
  input bit [2 : 0] S05_AXI_awsize;
  input bit [1 : 0] S05_AXI_awburst;
  input bit [0 : 0] S05_AXI_awlock;
  input bit [3 : 0] S05_AXI_awcache;
  input bit [2 : 0] S05_AXI_awprot;
  input bit [3 : 0] S05_AXI_awqos;
  input bit S05_AXI_awvalid;
  output wire S05_AXI_awready;
  input bit [511 : 0] S05_AXI_wdata;
  input bit [63 : 0] S05_AXI_wstrb;
  input bit S05_AXI_wlast;
  input bit S05_AXI_wvalid;
  output wire S05_AXI_wready;
  output wire [5 : 0] S05_AXI_bid;
  output wire [1 : 0] S05_AXI_bresp;
  output wire S05_AXI_bvalid;
  input bit S05_AXI_bready;
  input bit [5 : 0] S05_AXI_arid;
  input bit [33 : 0] S05_AXI_araddr;
  input bit [7 : 0] S05_AXI_arlen;
  input bit [2 : 0] S05_AXI_arsize;
  input bit [1 : 0] S05_AXI_arburst;
  input bit [0 : 0] S05_AXI_arlock;
  input bit [3 : 0] S05_AXI_arcache;
  input bit [2 : 0] S05_AXI_arprot;
  input bit [3 : 0] S05_AXI_arqos;
  input bit S05_AXI_arvalid;
  output wire S05_AXI_arready;
  output wire [5 : 0] S05_AXI_rid;
  output wire [511 : 0] S05_AXI_rdata;
  output wire [1 : 0] S05_AXI_rresp;
  output wire S05_AXI_rlast;
  output wire S05_AXI_rvalid;
  input bit S05_AXI_rready;
  input bit [5 : 0] S06_AXI_awid;
  input bit [33 : 0] S06_AXI_awaddr;
  input bit [7 : 0] S06_AXI_awlen;
  input bit [2 : 0] S06_AXI_awsize;
  input bit [1 : 0] S06_AXI_awburst;
  input bit [0 : 0] S06_AXI_awlock;
  input bit [3 : 0] S06_AXI_awcache;
  input bit [2 : 0] S06_AXI_awprot;
  input bit [3 : 0] S06_AXI_awqos;
  input bit S06_AXI_awvalid;
  output wire S06_AXI_awready;
  input bit [511 : 0] S06_AXI_wdata;
  input bit [63 : 0] S06_AXI_wstrb;
  input bit S06_AXI_wlast;
  input bit S06_AXI_wvalid;
  output wire S06_AXI_wready;
  output wire [5 : 0] S06_AXI_bid;
  output wire [1 : 0] S06_AXI_bresp;
  output wire S06_AXI_bvalid;
  input bit S06_AXI_bready;
  input bit [5 : 0] S06_AXI_arid;
  input bit [33 : 0] S06_AXI_araddr;
  input bit [7 : 0] S06_AXI_arlen;
  input bit [2 : 0] S06_AXI_arsize;
  input bit [1 : 0] S06_AXI_arburst;
  input bit [0 : 0] S06_AXI_arlock;
  input bit [3 : 0] S06_AXI_arcache;
  input bit [2 : 0] S06_AXI_arprot;
  input bit [3 : 0] S06_AXI_arqos;
  input bit S06_AXI_arvalid;
  output wire S06_AXI_arready;
  output wire [5 : 0] S06_AXI_rid;
  output wire [511 : 0] S06_AXI_rdata;
  output wire [1 : 0] S06_AXI_rresp;
  output wire S06_AXI_rlast;
  output wire S06_AXI_rvalid;
  input bit S06_AXI_rready;
  input bit [5 : 0] S07_AXI_awid;
  input bit [33 : 0] S07_AXI_awaddr;
  input bit [7 : 0] S07_AXI_awlen;
  input bit [2 : 0] S07_AXI_awsize;
  input bit [1 : 0] S07_AXI_awburst;
  input bit [0 : 0] S07_AXI_awlock;
  input bit [3 : 0] S07_AXI_awcache;
  input bit [2 : 0] S07_AXI_awprot;
  input bit [3 : 0] S07_AXI_awqos;
  input bit S07_AXI_awvalid;
  output wire S07_AXI_awready;
  input bit [511 : 0] S07_AXI_wdata;
  input bit [63 : 0] S07_AXI_wstrb;
  input bit S07_AXI_wlast;
  input bit S07_AXI_wvalid;
  output wire S07_AXI_wready;
  output wire [5 : 0] S07_AXI_bid;
  output wire [1 : 0] S07_AXI_bresp;
  output wire S07_AXI_bvalid;
  input bit S07_AXI_bready;
  input bit [5 : 0] S07_AXI_arid;
  input bit [33 : 0] S07_AXI_araddr;
  input bit [7 : 0] S07_AXI_arlen;
  input bit [2 : 0] S07_AXI_arsize;
  input bit [1 : 0] S07_AXI_arburst;
  input bit [0 : 0] S07_AXI_arlock;
  input bit [3 : 0] S07_AXI_arcache;
  input bit [2 : 0] S07_AXI_arprot;
  input bit [3 : 0] S07_AXI_arqos;
  input bit S07_AXI_arvalid;
  output wire S07_AXI_arready;
  output wire [5 : 0] S07_AXI_rid;
  output wire [511 : 0] S07_AXI_rdata;
  output wire [1 : 0] S07_AXI_rresp;
  output wire S07_AXI_rlast;
  output wire S07_AXI_rvalid;
  input bit S07_AXI_rready;
  input bit [5 : 0] S08_AXI_awid;
  input bit [33 : 0] S08_AXI_awaddr;
  input bit [7 : 0] S08_AXI_awlen;
  input bit [2 : 0] S08_AXI_awsize;
  input bit [1 : 0] S08_AXI_awburst;
  input bit [0 : 0] S08_AXI_awlock;
  input bit [3 : 0] S08_AXI_awcache;
  input bit [2 : 0] S08_AXI_awprot;
  input bit [3 : 0] S08_AXI_awqos;
  input bit S08_AXI_awvalid;
  output wire S08_AXI_awready;
  input bit [511 : 0] S08_AXI_wdata;
  input bit [63 : 0] S08_AXI_wstrb;
  input bit S08_AXI_wlast;
  input bit S08_AXI_wvalid;
  output wire S08_AXI_wready;
  output wire [5 : 0] S08_AXI_bid;
  output wire [1 : 0] S08_AXI_bresp;
  output wire S08_AXI_bvalid;
  input bit S08_AXI_bready;
  input bit [5 : 0] S08_AXI_arid;
  input bit [33 : 0] S08_AXI_araddr;
  input bit [7 : 0] S08_AXI_arlen;
  input bit [2 : 0] S08_AXI_arsize;
  input bit [1 : 0] S08_AXI_arburst;
  input bit [0 : 0] S08_AXI_arlock;
  input bit [3 : 0] S08_AXI_arcache;
  input bit [2 : 0] S08_AXI_arprot;
  input bit [3 : 0] S08_AXI_arqos;
  input bit S08_AXI_arvalid;
  output wire S08_AXI_arready;
  output wire [5 : 0] S08_AXI_rid;
  output wire [511 : 0] S08_AXI_rdata;
  output wire [1 : 0] S08_AXI_rresp;
  output wire S08_AXI_rlast;
  output wire S08_AXI_rvalid;
  input bit S08_AXI_rready;
  input bit [5 : 0] S09_AXI_awid;
  input bit [33 : 0] S09_AXI_awaddr;
  input bit [7 : 0] S09_AXI_awlen;
  input bit [2 : 0] S09_AXI_awsize;
  input bit [1 : 0] S09_AXI_awburst;
  input bit [0 : 0] S09_AXI_awlock;
  input bit [3 : 0] S09_AXI_awcache;
  input bit [2 : 0] S09_AXI_awprot;
  input bit [3 : 0] S09_AXI_awqos;
  input bit S09_AXI_awvalid;
  output wire S09_AXI_awready;
  input bit [511 : 0] S09_AXI_wdata;
  input bit [63 : 0] S09_AXI_wstrb;
  input bit S09_AXI_wlast;
  input bit S09_AXI_wvalid;
  output wire S09_AXI_wready;
  output wire [5 : 0] S09_AXI_bid;
  output wire [1 : 0] S09_AXI_bresp;
  output wire S09_AXI_bvalid;
  input bit S09_AXI_bready;
  input bit [5 : 0] S09_AXI_arid;
  input bit [33 : 0] S09_AXI_araddr;
  input bit [7 : 0] S09_AXI_arlen;
  input bit [2 : 0] S09_AXI_arsize;
  input bit [1 : 0] S09_AXI_arburst;
  input bit [0 : 0] S09_AXI_arlock;
  input bit [3 : 0] S09_AXI_arcache;
  input bit [2 : 0] S09_AXI_arprot;
  input bit [3 : 0] S09_AXI_arqos;
  input bit S09_AXI_arvalid;
  output wire S09_AXI_arready;
  output wire [5 : 0] S09_AXI_rid;
  output wire [511 : 0] S09_AXI_rdata;
  output wire [1 : 0] S09_AXI_rresp;
  output wire S09_AXI_rlast;
  output wire S09_AXI_rvalid;
  input bit S09_AXI_rready;
  input bit [5 : 0] S10_AXI_awid;
  input bit [33 : 0] S10_AXI_awaddr;
  input bit [7 : 0] S10_AXI_awlen;
  input bit [2 : 0] S10_AXI_awsize;
  input bit [1 : 0] S10_AXI_awburst;
  input bit [0 : 0] S10_AXI_awlock;
  input bit [3 : 0] S10_AXI_awcache;
  input bit [2 : 0] S10_AXI_awprot;
  input bit [3 : 0] S10_AXI_awqos;
  input bit S10_AXI_awvalid;
  output wire S10_AXI_awready;
  input bit [511 : 0] S10_AXI_wdata;
  input bit [63 : 0] S10_AXI_wstrb;
  input bit S10_AXI_wlast;
  input bit S10_AXI_wvalid;
  output wire S10_AXI_wready;
  output wire [5 : 0] S10_AXI_bid;
  output wire [1 : 0] S10_AXI_bresp;
  output wire S10_AXI_bvalid;
  input bit S10_AXI_bready;
  input bit [5 : 0] S10_AXI_arid;
  input bit [33 : 0] S10_AXI_araddr;
  input bit [7 : 0] S10_AXI_arlen;
  input bit [2 : 0] S10_AXI_arsize;
  input bit [1 : 0] S10_AXI_arburst;
  input bit [0 : 0] S10_AXI_arlock;
  input bit [3 : 0] S10_AXI_arcache;
  input bit [2 : 0] S10_AXI_arprot;
  input bit [3 : 0] S10_AXI_arqos;
  input bit S10_AXI_arvalid;
  output wire S10_AXI_arready;
  output wire [5 : 0] S10_AXI_rid;
  output wire [511 : 0] S10_AXI_rdata;
  output wire [1 : 0] S10_AXI_rresp;
  output wire S10_AXI_rlast;
  output wire S10_AXI_rvalid;
  input bit S10_AXI_rready;
  input bit [5 : 0] S11_AXI_awid;
  input bit [33 : 0] S11_AXI_awaddr;
  input bit [7 : 0] S11_AXI_awlen;
  input bit [2 : 0] S11_AXI_awsize;
  input bit [1 : 0] S11_AXI_awburst;
  input bit [0 : 0] S11_AXI_awlock;
  input bit [3 : 0] S11_AXI_awcache;
  input bit [2 : 0] S11_AXI_awprot;
  input bit [3 : 0] S11_AXI_awqos;
  input bit S11_AXI_awvalid;
  output wire S11_AXI_awready;
  input bit [511 : 0] S11_AXI_wdata;
  input bit [63 : 0] S11_AXI_wstrb;
  input bit S11_AXI_wlast;
  input bit S11_AXI_wvalid;
  output wire S11_AXI_wready;
  output wire [5 : 0] S11_AXI_bid;
  output wire [1 : 0] S11_AXI_bresp;
  output wire S11_AXI_bvalid;
  input bit S11_AXI_bready;
  input bit [5 : 0] S11_AXI_arid;
  input bit [33 : 0] S11_AXI_araddr;
  input bit [7 : 0] S11_AXI_arlen;
  input bit [2 : 0] S11_AXI_arsize;
  input bit [1 : 0] S11_AXI_arburst;
  input bit [0 : 0] S11_AXI_arlock;
  input bit [3 : 0] S11_AXI_arcache;
  input bit [2 : 0] S11_AXI_arprot;
  input bit [3 : 0] S11_AXI_arqos;
  input bit S11_AXI_arvalid;
  output wire S11_AXI_arready;
  output wire [5 : 0] S11_AXI_rid;
  output wire [511 : 0] S11_AXI_rdata;
  output wire [1 : 0] S11_AXI_rresp;
  output wire S11_AXI_rlast;
  output wire S11_AXI_rvalid;
  input bit S11_AXI_rready;
  input bit [5 : 0] S12_AXI_awid;
  input bit [33 : 0] S12_AXI_awaddr;
  input bit [7 : 0] S12_AXI_awlen;
  input bit [2 : 0] S12_AXI_awsize;
  input bit [1 : 0] S12_AXI_awburst;
  input bit [0 : 0] S12_AXI_awlock;
  input bit [3 : 0] S12_AXI_awcache;
  input bit [2 : 0] S12_AXI_awprot;
  input bit [3 : 0] S12_AXI_awqos;
  input bit S12_AXI_awvalid;
  output wire S12_AXI_awready;
  input bit [511 : 0] S12_AXI_wdata;
  input bit [63 : 0] S12_AXI_wstrb;
  input bit S12_AXI_wlast;
  input bit S12_AXI_wvalid;
  output wire S12_AXI_wready;
  output wire [5 : 0] S12_AXI_bid;
  output wire [1 : 0] S12_AXI_bresp;
  output wire S12_AXI_bvalid;
  input bit S12_AXI_bready;
  input bit [5 : 0] S12_AXI_arid;
  input bit [33 : 0] S12_AXI_araddr;
  input bit [7 : 0] S12_AXI_arlen;
  input bit [2 : 0] S12_AXI_arsize;
  input bit [1 : 0] S12_AXI_arburst;
  input bit [0 : 0] S12_AXI_arlock;
  input bit [3 : 0] S12_AXI_arcache;
  input bit [2 : 0] S12_AXI_arprot;
  input bit [3 : 0] S12_AXI_arqos;
  input bit S12_AXI_arvalid;
  output wire S12_AXI_arready;
  output wire [5 : 0] S12_AXI_rid;
  output wire [511 : 0] S12_AXI_rdata;
  output wire [1 : 0] S12_AXI_rresp;
  output wire S12_AXI_rlast;
  output wire S12_AXI_rvalid;
  input bit S12_AXI_rready;
  input bit [5 : 0] S13_AXI_awid;
  input bit [33 : 0] S13_AXI_awaddr;
  input bit [7 : 0] S13_AXI_awlen;
  input bit [2 : 0] S13_AXI_awsize;
  input bit [1 : 0] S13_AXI_awburst;
  input bit [0 : 0] S13_AXI_awlock;
  input bit [3 : 0] S13_AXI_awcache;
  input bit [2 : 0] S13_AXI_awprot;
  input bit [3 : 0] S13_AXI_awqos;
  input bit S13_AXI_awvalid;
  output wire S13_AXI_awready;
  input bit [511 : 0] S13_AXI_wdata;
  input bit [63 : 0] S13_AXI_wstrb;
  input bit S13_AXI_wlast;
  input bit S13_AXI_wvalid;
  output wire S13_AXI_wready;
  output wire [5 : 0] S13_AXI_bid;
  output wire [1 : 0] S13_AXI_bresp;
  output wire S13_AXI_bvalid;
  input bit S13_AXI_bready;
  input bit [5 : 0] S13_AXI_arid;
  input bit [33 : 0] S13_AXI_araddr;
  input bit [7 : 0] S13_AXI_arlen;
  input bit [2 : 0] S13_AXI_arsize;
  input bit [1 : 0] S13_AXI_arburst;
  input bit [0 : 0] S13_AXI_arlock;
  input bit [3 : 0] S13_AXI_arcache;
  input bit [2 : 0] S13_AXI_arprot;
  input bit [3 : 0] S13_AXI_arqos;
  input bit S13_AXI_arvalid;
  output wire S13_AXI_arready;
  output wire [5 : 0] S13_AXI_rid;
  output wire [511 : 0] S13_AXI_rdata;
  output wire [1 : 0] S13_AXI_rresp;
  output wire S13_AXI_rlast;
  output wire S13_AXI_rvalid;
  input bit S13_AXI_rready;
  input bit [5 : 0] S14_AXI_awid;
  input bit [33 : 0] S14_AXI_awaddr;
  input bit [7 : 0] S14_AXI_awlen;
  input bit [2 : 0] S14_AXI_awsize;
  input bit [1 : 0] S14_AXI_awburst;
  input bit [0 : 0] S14_AXI_awlock;
  input bit [3 : 0] S14_AXI_awcache;
  input bit [2 : 0] S14_AXI_awprot;
  input bit [3 : 0] S14_AXI_awqos;
  input bit S14_AXI_awvalid;
  output wire S14_AXI_awready;
  input bit [511 : 0] S14_AXI_wdata;
  input bit [63 : 0] S14_AXI_wstrb;
  input bit S14_AXI_wlast;
  input bit S14_AXI_wvalid;
  output wire S14_AXI_wready;
  output wire [5 : 0] S14_AXI_bid;
  output wire [1 : 0] S14_AXI_bresp;
  output wire S14_AXI_bvalid;
  input bit S14_AXI_bready;
  input bit [5 : 0] S14_AXI_arid;
  input bit [33 : 0] S14_AXI_araddr;
  input bit [7 : 0] S14_AXI_arlen;
  input bit [2 : 0] S14_AXI_arsize;
  input bit [1 : 0] S14_AXI_arburst;
  input bit [0 : 0] S14_AXI_arlock;
  input bit [3 : 0] S14_AXI_arcache;
  input bit [2 : 0] S14_AXI_arprot;
  input bit [3 : 0] S14_AXI_arqos;
  input bit S14_AXI_arvalid;
  output wire S14_AXI_arready;
  output wire [5 : 0] S14_AXI_rid;
  output wire [511 : 0] S14_AXI_rdata;
  output wire [1 : 0] S14_AXI_rresp;
  output wire S14_AXI_rlast;
  output wire S14_AXI_rvalid;
  input bit S14_AXI_rready;
  input bit [5 : 0] S15_AXI_awid;
  input bit [33 : 0] S15_AXI_awaddr;
  input bit [7 : 0] S15_AXI_awlen;
  input bit [2 : 0] S15_AXI_awsize;
  input bit [1 : 0] S15_AXI_awburst;
  input bit [0 : 0] S15_AXI_awlock;
  input bit [3 : 0] S15_AXI_awcache;
  input bit [2 : 0] S15_AXI_awprot;
  input bit [3 : 0] S15_AXI_awqos;
  input bit S15_AXI_awvalid;
  output wire S15_AXI_awready;
  input bit [511 : 0] S15_AXI_wdata;
  input bit [63 : 0] S15_AXI_wstrb;
  input bit S15_AXI_wlast;
  input bit S15_AXI_wvalid;
  output wire S15_AXI_wready;
  output wire [5 : 0] S15_AXI_bid;
  output wire [1 : 0] S15_AXI_bresp;
  output wire S15_AXI_bvalid;
  input bit S15_AXI_bready;
  input bit [5 : 0] S15_AXI_arid;
  input bit [33 : 0] S15_AXI_araddr;
  input bit [7 : 0] S15_AXI_arlen;
  input bit [2 : 0] S15_AXI_arsize;
  input bit [1 : 0] S15_AXI_arburst;
  input bit [0 : 0] S15_AXI_arlock;
  input bit [3 : 0] S15_AXI_arcache;
  input bit [2 : 0] S15_AXI_arprot;
  input bit [3 : 0] S15_AXI_arqos;
  input bit S15_AXI_arvalid;
  output wire S15_AXI_arready;
  output wire [5 : 0] S15_AXI_rid;
  output wire [511 : 0] S15_AXI_rdata;
  output wire [1 : 0] S15_AXI_rresp;
  output wire S15_AXI_rlast;
  output wire S15_AXI_rvalid;
  input bit S15_AXI_rready;
  output wire [33 : 0] M00_AXI_awaddr;
  output wire [7 : 0] M00_AXI_awlen;
  output wire [2 : 0] M00_AXI_awsize;
  output wire [1 : 0] M00_AXI_awburst;
  output wire [0 : 0] M00_AXI_awlock;
  output wire [3 : 0] M00_AXI_awcache;
  output wire [2 : 0] M00_AXI_awprot;
  output wire [3 : 0] M00_AXI_awqos;
  output wire M00_AXI_awvalid;
  input bit M00_AXI_awready;
  output wire [511 : 0] M00_AXI_wdata;
  output wire [63 : 0] M00_AXI_wstrb;
  output wire M00_AXI_wlast;
  output wire M00_AXI_wvalid;
  input bit M00_AXI_wready;
  input bit [1 : 0] M00_AXI_bresp;
  input bit M00_AXI_bvalid;
  output wire M00_AXI_bready;
  output wire [33 : 0] M00_AXI_araddr;
  output wire [7 : 0] M00_AXI_arlen;
  output wire [2 : 0] M00_AXI_arsize;
  output wire [1 : 0] M00_AXI_arburst;
  output wire [0 : 0] M00_AXI_arlock;
  output wire [3 : 0] M00_AXI_arcache;
  output wire [2 : 0] M00_AXI_arprot;
  output wire [3 : 0] M00_AXI_arqos;
  output wire M00_AXI_arvalid;
  input bit M00_AXI_arready;
  input bit [511 : 0] M00_AXI_rdata;
  input bit [1 : 0] M00_AXI_rresp;
  input bit M00_AXI_rlast;
  input bit M00_AXI_rvalid;
  output wire M00_AXI_rready;
endmodule
`endif
