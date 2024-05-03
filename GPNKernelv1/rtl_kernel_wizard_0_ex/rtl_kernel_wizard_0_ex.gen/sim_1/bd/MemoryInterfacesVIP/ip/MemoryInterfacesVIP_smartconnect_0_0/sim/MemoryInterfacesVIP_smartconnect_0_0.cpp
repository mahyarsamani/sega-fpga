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


#include "MemoryInterfacesVIP_smartconnect_0_0_sc.h"

#include "MemoryInterfacesVIP_smartconnect_0_0.h"

#include "smartconnect.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
MemoryInterfacesVIP_smartconnect_0_0::MemoryInterfacesVIP_smartconnect_0_0(const sc_core::sc_module_name& nm) : MemoryInterfacesVIP_smartconnect_0_0_sc(nm), aclk("aclk"), aresetn("aresetn"), S00_AXI_awid("S00_AXI_awid"), S00_AXI_awaddr("S00_AXI_awaddr"), S00_AXI_awlen("S00_AXI_awlen"), S00_AXI_awsize("S00_AXI_awsize"), S00_AXI_awburst("S00_AXI_awburst"), S00_AXI_awlock("S00_AXI_awlock"), S00_AXI_awcache("S00_AXI_awcache"), S00_AXI_awprot("S00_AXI_awprot"), S00_AXI_awqos("S00_AXI_awqos"), S00_AXI_awvalid("S00_AXI_awvalid"), S00_AXI_awready("S00_AXI_awready"), S00_AXI_wdata("S00_AXI_wdata"), S00_AXI_wstrb("S00_AXI_wstrb"), S00_AXI_wlast("S00_AXI_wlast"), S00_AXI_wvalid("S00_AXI_wvalid"), S00_AXI_wready("S00_AXI_wready"), S00_AXI_bid("S00_AXI_bid"), S00_AXI_bresp("S00_AXI_bresp"), S00_AXI_bvalid("S00_AXI_bvalid"), S00_AXI_bready("S00_AXI_bready"), S00_AXI_arid("S00_AXI_arid"), S00_AXI_araddr("S00_AXI_araddr"), S00_AXI_arlen("S00_AXI_arlen"), S00_AXI_arsize("S00_AXI_arsize"), S00_AXI_arburst("S00_AXI_arburst"), S00_AXI_arlock("S00_AXI_arlock"), S00_AXI_arcache("S00_AXI_arcache"), S00_AXI_arprot("S00_AXI_arprot"), S00_AXI_arqos("S00_AXI_arqos"), S00_AXI_arvalid("S00_AXI_arvalid"), S00_AXI_arready("S00_AXI_arready"), S00_AXI_rid("S00_AXI_rid"), S00_AXI_rdata("S00_AXI_rdata"), S00_AXI_rresp("S00_AXI_rresp"), S00_AXI_rlast("S00_AXI_rlast"), S00_AXI_rvalid("S00_AXI_rvalid"), S00_AXI_rready("S00_AXI_rready"), S01_AXI_awid("S01_AXI_awid"), S01_AXI_awaddr("S01_AXI_awaddr"), S01_AXI_awlen("S01_AXI_awlen"), S01_AXI_awsize("S01_AXI_awsize"), S01_AXI_awburst("S01_AXI_awburst"), S01_AXI_awlock("S01_AXI_awlock"), S01_AXI_awcache("S01_AXI_awcache"), S01_AXI_awprot("S01_AXI_awprot"), S01_AXI_awqos("S01_AXI_awqos"), S01_AXI_awvalid("S01_AXI_awvalid"), S01_AXI_awready("S01_AXI_awready"), S01_AXI_wdata("S01_AXI_wdata"), S01_AXI_wstrb("S01_AXI_wstrb"), S01_AXI_wlast("S01_AXI_wlast"), S01_AXI_wvalid("S01_AXI_wvalid"), S01_AXI_wready("S01_AXI_wready"), S01_AXI_bid("S01_AXI_bid"), S01_AXI_bresp("S01_AXI_bresp"), S01_AXI_bvalid("S01_AXI_bvalid"), S01_AXI_bready("S01_AXI_bready"), S01_AXI_arid("S01_AXI_arid"), S01_AXI_araddr("S01_AXI_araddr"), S01_AXI_arlen("S01_AXI_arlen"), S01_AXI_arsize("S01_AXI_arsize"), S01_AXI_arburst("S01_AXI_arburst"), S01_AXI_arlock("S01_AXI_arlock"), S01_AXI_arcache("S01_AXI_arcache"), S01_AXI_arprot("S01_AXI_arprot"), S01_AXI_arqos("S01_AXI_arqos"), S01_AXI_arvalid("S01_AXI_arvalid"), S01_AXI_arready("S01_AXI_arready"), S01_AXI_rid("S01_AXI_rid"), S01_AXI_rdata("S01_AXI_rdata"), S01_AXI_rresp("S01_AXI_rresp"), S01_AXI_rlast("S01_AXI_rlast"), S01_AXI_rvalid("S01_AXI_rvalid"), S01_AXI_rready("S01_AXI_rready"), S02_AXI_awid("S02_AXI_awid"), S02_AXI_awaddr("S02_AXI_awaddr"), S02_AXI_awlen("S02_AXI_awlen"), S02_AXI_awsize("S02_AXI_awsize"), S02_AXI_awburst("S02_AXI_awburst"), S02_AXI_awlock("S02_AXI_awlock"), S02_AXI_awcache("S02_AXI_awcache"), S02_AXI_awprot("S02_AXI_awprot"), S02_AXI_awqos("S02_AXI_awqos"), S02_AXI_awvalid("S02_AXI_awvalid"), S02_AXI_awready("S02_AXI_awready"), S02_AXI_wdata("S02_AXI_wdata"), S02_AXI_wstrb("S02_AXI_wstrb"), S02_AXI_wlast("S02_AXI_wlast"), S02_AXI_wvalid("S02_AXI_wvalid"), S02_AXI_wready("S02_AXI_wready"), S02_AXI_bid("S02_AXI_bid"), S02_AXI_bresp("S02_AXI_bresp"), S02_AXI_bvalid("S02_AXI_bvalid"), S02_AXI_bready("S02_AXI_bready"), S02_AXI_arid("S02_AXI_arid"), S02_AXI_araddr("S02_AXI_araddr"), S02_AXI_arlen("S02_AXI_arlen"), S02_AXI_arsize("S02_AXI_arsize"), S02_AXI_arburst("S02_AXI_arburst"), S02_AXI_arlock("S02_AXI_arlock"), S02_AXI_arcache("S02_AXI_arcache"), S02_AXI_arprot("S02_AXI_arprot"), S02_AXI_arqos("S02_AXI_arqos"), S02_AXI_arvalid("S02_AXI_arvalid"), S02_AXI_arready("S02_AXI_arready"), S02_AXI_rid("S02_AXI_rid"), S02_AXI_rdata("S02_AXI_rdata"), S02_AXI_rresp("S02_AXI_rresp"), S02_AXI_rlast("S02_AXI_rlast"), S02_AXI_rvalid("S02_AXI_rvalid"), S02_AXI_rready("S02_AXI_rready"), S03_AXI_awid("S03_AXI_awid"), S03_AXI_awaddr("S03_AXI_awaddr"), S03_AXI_awlen("S03_AXI_awlen"), S03_AXI_awsize("S03_AXI_awsize"), S03_AXI_awburst("S03_AXI_awburst"), S03_AXI_awlock("S03_AXI_awlock"), S03_AXI_awcache("S03_AXI_awcache"), S03_AXI_awprot("S03_AXI_awprot"), S03_AXI_awqos("S03_AXI_awqos"), S03_AXI_awvalid("S03_AXI_awvalid"), S03_AXI_awready("S03_AXI_awready"), S03_AXI_wdata("S03_AXI_wdata"), S03_AXI_wstrb("S03_AXI_wstrb"), S03_AXI_wlast("S03_AXI_wlast"), S03_AXI_wvalid("S03_AXI_wvalid"), S03_AXI_wready("S03_AXI_wready"), S03_AXI_bid("S03_AXI_bid"), S03_AXI_bresp("S03_AXI_bresp"), S03_AXI_bvalid("S03_AXI_bvalid"), S03_AXI_bready("S03_AXI_bready"), S03_AXI_arid("S03_AXI_arid"), S03_AXI_araddr("S03_AXI_araddr"), S03_AXI_arlen("S03_AXI_arlen"), S03_AXI_arsize("S03_AXI_arsize"), S03_AXI_arburst("S03_AXI_arburst"), S03_AXI_arlock("S03_AXI_arlock"), S03_AXI_arcache("S03_AXI_arcache"), S03_AXI_arprot("S03_AXI_arprot"), S03_AXI_arqos("S03_AXI_arqos"), S03_AXI_arvalid("S03_AXI_arvalid"), S03_AXI_arready("S03_AXI_arready"), S03_AXI_rid("S03_AXI_rid"), S03_AXI_rdata("S03_AXI_rdata"), S03_AXI_rresp("S03_AXI_rresp"), S03_AXI_rlast("S03_AXI_rlast"), S03_AXI_rvalid("S03_AXI_rvalid"), S03_AXI_rready("S03_AXI_rready"), S04_AXI_awid("S04_AXI_awid"), S04_AXI_awaddr("S04_AXI_awaddr"), S04_AXI_awlen("S04_AXI_awlen"), S04_AXI_awsize("S04_AXI_awsize"), S04_AXI_awburst("S04_AXI_awburst"), S04_AXI_awlock("S04_AXI_awlock"), S04_AXI_awcache("S04_AXI_awcache"), S04_AXI_awprot("S04_AXI_awprot"), S04_AXI_awqos("S04_AXI_awqos"), S04_AXI_awvalid("S04_AXI_awvalid"), S04_AXI_awready("S04_AXI_awready"), S04_AXI_wdata("S04_AXI_wdata"), S04_AXI_wstrb("S04_AXI_wstrb"), S04_AXI_wlast("S04_AXI_wlast"), S04_AXI_wvalid("S04_AXI_wvalid"), S04_AXI_wready("S04_AXI_wready"), S04_AXI_bid("S04_AXI_bid"), S04_AXI_bresp("S04_AXI_bresp"), S04_AXI_bvalid("S04_AXI_bvalid"), S04_AXI_bready("S04_AXI_bready"), S04_AXI_arid("S04_AXI_arid"), S04_AXI_araddr("S04_AXI_araddr"), S04_AXI_arlen("S04_AXI_arlen"), S04_AXI_arsize("S04_AXI_arsize"), S04_AXI_arburst("S04_AXI_arburst"), S04_AXI_arlock("S04_AXI_arlock"), S04_AXI_arcache("S04_AXI_arcache"), S04_AXI_arprot("S04_AXI_arprot"), S04_AXI_arqos("S04_AXI_arqos"), S04_AXI_arvalid("S04_AXI_arvalid"), S04_AXI_arready("S04_AXI_arready"), S04_AXI_rid("S04_AXI_rid"), S04_AXI_rdata("S04_AXI_rdata"), S04_AXI_rresp("S04_AXI_rresp"), S04_AXI_rlast("S04_AXI_rlast"), S04_AXI_rvalid("S04_AXI_rvalid"), S04_AXI_rready("S04_AXI_rready"), S05_AXI_awid("S05_AXI_awid"), S05_AXI_awaddr("S05_AXI_awaddr"), S05_AXI_awlen("S05_AXI_awlen"), S05_AXI_awsize("S05_AXI_awsize"), S05_AXI_awburst("S05_AXI_awburst"), S05_AXI_awlock("S05_AXI_awlock"), S05_AXI_awcache("S05_AXI_awcache"), S05_AXI_awprot("S05_AXI_awprot"), S05_AXI_awqos("S05_AXI_awqos"), S05_AXI_awvalid("S05_AXI_awvalid"), S05_AXI_awready("S05_AXI_awready"), S05_AXI_wdata("S05_AXI_wdata"), S05_AXI_wstrb("S05_AXI_wstrb"), S05_AXI_wlast("S05_AXI_wlast"), S05_AXI_wvalid("S05_AXI_wvalid"), S05_AXI_wready("S05_AXI_wready"), S05_AXI_bid("S05_AXI_bid"), S05_AXI_bresp("S05_AXI_bresp"), S05_AXI_bvalid("S05_AXI_bvalid"), S05_AXI_bready("S05_AXI_bready"), S05_AXI_arid("S05_AXI_arid"), S05_AXI_araddr("S05_AXI_araddr"), S05_AXI_arlen("S05_AXI_arlen"), S05_AXI_arsize("S05_AXI_arsize"), S05_AXI_arburst("S05_AXI_arburst"), S05_AXI_arlock("S05_AXI_arlock"), S05_AXI_arcache("S05_AXI_arcache"), S05_AXI_arprot("S05_AXI_arprot"), S05_AXI_arqos("S05_AXI_arqos"), S05_AXI_arvalid("S05_AXI_arvalid"), S05_AXI_arready("S05_AXI_arready"), S05_AXI_rid("S05_AXI_rid"), S05_AXI_rdata("S05_AXI_rdata"), S05_AXI_rresp("S05_AXI_rresp"), S05_AXI_rlast("S05_AXI_rlast"), S05_AXI_rvalid("S05_AXI_rvalid"), S05_AXI_rready("S05_AXI_rready"), S06_AXI_awid("S06_AXI_awid"), S06_AXI_awaddr("S06_AXI_awaddr"), S06_AXI_awlen("S06_AXI_awlen"), S06_AXI_awsize("S06_AXI_awsize"), S06_AXI_awburst("S06_AXI_awburst"), S06_AXI_awlock("S06_AXI_awlock"), S06_AXI_awcache("S06_AXI_awcache"), S06_AXI_awprot("S06_AXI_awprot"), S06_AXI_awqos("S06_AXI_awqos"), S06_AXI_awvalid("S06_AXI_awvalid"), S06_AXI_awready("S06_AXI_awready"), S06_AXI_wdata("S06_AXI_wdata"), S06_AXI_wstrb("S06_AXI_wstrb"), S06_AXI_wlast("S06_AXI_wlast"), S06_AXI_wvalid("S06_AXI_wvalid"), S06_AXI_wready("S06_AXI_wready"), S06_AXI_bid("S06_AXI_bid"), S06_AXI_bresp("S06_AXI_bresp"), S06_AXI_bvalid("S06_AXI_bvalid"), S06_AXI_bready("S06_AXI_bready"), S06_AXI_arid("S06_AXI_arid"), S06_AXI_araddr("S06_AXI_araddr"), S06_AXI_arlen("S06_AXI_arlen"), S06_AXI_arsize("S06_AXI_arsize"), S06_AXI_arburst("S06_AXI_arburst"), S06_AXI_arlock("S06_AXI_arlock"), S06_AXI_arcache("S06_AXI_arcache"), S06_AXI_arprot("S06_AXI_arprot"), S06_AXI_arqos("S06_AXI_arqos"), S06_AXI_arvalid("S06_AXI_arvalid"), S06_AXI_arready("S06_AXI_arready"), S06_AXI_rid("S06_AXI_rid"), S06_AXI_rdata("S06_AXI_rdata"), S06_AXI_rresp("S06_AXI_rresp"), S06_AXI_rlast("S06_AXI_rlast"), S06_AXI_rvalid("S06_AXI_rvalid"), S06_AXI_rready("S06_AXI_rready"), S07_AXI_awid("S07_AXI_awid"), S07_AXI_awaddr("S07_AXI_awaddr"), S07_AXI_awlen("S07_AXI_awlen"), S07_AXI_awsize("S07_AXI_awsize"), S07_AXI_awburst("S07_AXI_awburst"), S07_AXI_awlock("S07_AXI_awlock"), S07_AXI_awcache("S07_AXI_awcache"), S07_AXI_awprot("S07_AXI_awprot"), S07_AXI_awqos("S07_AXI_awqos"), S07_AXI_awvalid("S07_AXI_awvalid"), S07_AXI_awready("S07_AXI_awready"), S07_AXI_wdata("S07_AXI_wdata"), S07_AXI_wstrb("S07_AXI_wstrb"), S07_AXI_wlast("S07_AXI_wlast"), S07_AXI_wvalid("S07_AXI_wvalid"), S07_AXI_wready("S07_AXI_wready"), S07_AXI_bid("S07_AXI_bid"), S07_AXI_bresp("S07_AXI_bresp"), S07_AXI_bvalid("S07_AXI_bvalid"), S07_AXI_bready("S07_AXI_bready"), S07_AXI_arid("S07_AXI_arid"), S07_AXI_araddr("S07_AXI_araddr"), S07_AXI_arlen("S07_AXI_arlen"), S07_AXI_arsize("S07_AXI_arsize"), S07_AXI_arburst("S07_AXI_arburst"), S07_AXI_arlock("S07_AXI_arlock"), S07_AXI_arcache("S07_AXI_arcache"), S07_AXI_arprot("S07_AXI_arprot"), S07_AXI_arqos("S07_AXI_arqos"), S07_AXI_arvalid("S07_AXI_arvalid"), S07_AXI_arready("S07_AXI_arready"), S07_AXI_rid("S07_AXI_rid"), S07_AXI_rdata("S07_AXI_rdata"), S07_AXI_rresp("S07_AXI_rresp"), S07_AXI_rlast("S07_AXI_rlast"), S07_AXI_rvalid("S07_AXI_rvalid"), S07_AXI_rready("S07_AXI_rready"), S08_AXI_awid("S08_AXI_awid"), S08_AXI_awaddr("S08_AXI_awaddr"), S08_AXI_awlen("S08_AXI_awlen"), S08_AXI_awsize("S08_AXI_awsize"), S08_AXI_awburst("S08_AXI_awburst"), S08_AXI_awlock("S08_AXI_awlock"), S08_AXI_awcache("S08_AXI_awcache"), S08_AXI_awprot("S08_AXI_awprot"), S08_AXI_awqos("S08_AXI_awqos"), S08_AXI_awvalid("S08_AXI_awvalid"), S08_AXI_awready("S08_AXI_awready"), S08_AXI_wdata("S08_AXI_wdata"), S08_AXI_wstrb("S08_AXI_wstrb"), S08_AXI_wlast("S08_AXI_wlast"), S08_AXI_wvalid("S08_AXI_wvalid"), S08_AXI_wready("S08_AXI_wready"), S08_AXI_bid("S08_AXI_bid"), S08_AXI_bresp("S08_AXI_bresp"), S08_AXI_bvalid("S08_AXI_bvalid"), S08_AXI_bready("S08_AXI_bready"), S08_AXI_arid("S08_AXI_arid"), S08_AXI_araddr("S08_AXI_araddr"), S08_AXI_arlen("S08_AXI_arlen"), S08_AXI_arsize("S08_AXI_arsize"), S08_AXI_arburst("S08_AXI_arburst"), S08_AXI_arlock("S08_AXI_arlock"), S08_AXI_arcache("S08_AXI_arcache"), S08_AXI_arprot("S08_AXI_arprot"), S08_AXI_arqos("S08_AXI_arqos"), S08_AXI_arvalid("S08_AXI_arvalid"), S08_AXI_arready("S08_AXI_arready"), S08_AXI_rid("S08_AXI_rid"), S08_AXI_rdata("S08_AXI_rdata"), S08_AXI_rresp("S08_AXI_rresp"), S08_AXI_rlast("S08_AXI_rlast"), S08_AXI_rvalid("S08_AXI_rvalid"), S08_AXI_rready("S08_AXI_rready"), S09_AXI_awid("S09_AXI_awid"), S09_AXI_awaddr("S09_AXI_awaddr"), S09_AXI_awlen("S09_AXI_awlen"), S09_AXI_awsize("S09_AXI_awsize"), S09_AXI_awburst("S09_AXI_awburst"), S09_AXI_awlock("S09_AXI_awlock"), S09_AXI_awcache("S09_AXI_awcache"), S09_AXI_awprot("S09_AXI_awprot"), S09_AXI_awqos("S09_AXI_awqos"), S09_AXI_awvalid("S09_AXI_awvalid"), S09_AXI_awready("S09_AXI_awready"), S09_AXI_wdata("S09_AXI_wdata"), S09_AXI_wstrb("S09_AXI_wstrb"), S09_AXI_wlast("S09_AXI_wlast"), S09_AXI_wvalid("S09_AXI_wvalid"), S09_AXI_wready("S09_AXI_wready"), S09_AXI_bid("S09_AXI_bid"), S09_AXI_bresp("S09_AXI_bresp"), S09_AXI_bvalid("S09_AXI_bvalid"), S09_AXI_bready("S09_AXI_bready"), S09_AXI_arid("S09_AXI_arid"), S09_AXI_araddr("S09_AXI_araddr"), S09_AXI_arlen("S09_AXI_arlen"), S09_AXI_arsize("S09_AXI_arsize"), S09_AXI_arburst("S09_AXI_arburst"), S09_AXI_arlock("S09_AXI_arlock"), S09_AXI_arcache("S09_AXI_arcache"), S09_AXI_arprot("S09_AXI_arprot"), S09_AXI_arqos("S09_AXI_arqos"), S09_AXI_arvalid("S09_AXI_arvalid"), S09_AXI_arready("S09_AXI_arready"), S09_AXI_rid("S09_AXI_rid"), S09_AXI_rdata("S09_AXI_rdata"), S09_AXI_rresp("S09_AXI_rresp"), S09_AXI_rlast("S09_AXI_rlast"), S09_AXI_rvalid("S09_AXI_rvalid"), S09_AXI_rready("S09_AXI_rready"), S10_AXI_awid("S10_AXI_awid"), S10_AXI_awaddr("S10_AXI_awaddr"), S10_AXI_awlen("S10_AXI_awlen"), S10_AXI_awsize("S10_AXI_awsize"), S10_AXI_awburst("S10_AXI_awburst"), S10_AXI_awlock("S10_AXI_awlock"), S10_AXI_awcache("S10_AXI_awcache"), S10_AXI_awprot("S10_AXI_awprot"), S10_AXI_awqos("S10_AXI_awqos"), S10_AXI_awvalid("S10_AXI_awvalid"), S10_AXI_awready("S10_AXI_awready"), S10_AXI_wdata("S10_AXI_wdata"), S10_AXI_wstrb("S10_AXI_wstrb"), S10_AXI_wlast("S10_AXI_wlast"), S10_AXI_wvalid("S10_AXI_wvalid"), S10_AXI_wready("S10_AXI_wready"), S10_AXI_bid("S10_AXI_bid"), S10_AXI_bresp("S10_AXI_bresp"), S10_AXI_bvalid("S10_AXI_bvalid"), S10_AXI_bready("S10_AXI_bready"), S10_AXI_arid("S10_AXI_arid"), S10_AXI_araddr("S10_AXI_araddr"), S10_AXI_arlen("S10_AXI_arlen"), S10_AXI_arsize("S10_AXI_arsize"), S10_AXI_arburst("S10_AXI_arburst"), S10_AXI_arlock("S10_AXI_arlock"), S10_AXI_arcache("S10_AXI_arcache"), S10_AXI_arprot("S10_AXI_arprot"), S10_AXI_arqos("S10_AXI_arqos"), S10_AXI_arvalid("S10_AXI_arvalid"), S10_AXI_arready("S10_AXI_arready"), S10_AXI_rid("S10_AXI_rid"), S10_AXI_rdata("S10_AXI_rdata"), S10_AXI_rresp("S10_AXI_rresp"), S10_AXI_rlast("S10_AXI_rlast"), S10_AXI_rvalid("S10_AXI_rvalid"), S10_AXI_rready("S10_AXI_rready"), S11_AXI_awid("S11_AXI_awid"), S11_AXI_awaddr("S11_AXI_awaddr"), S11_AXI_awlen("S11_AXI_awlen"), S11_AXI_awsize("S11_AXI_awsize"), S11_AXI_awburst("S11_AXI_awburst"), S11_AXI_awlock("S11_AXI_awlock"), S11_AXI_awcache("S11_AXI_awcache"), S11_AXI_awprot("S11_AXI_awprot"), S11_AXI_awqos("S11_AXI_awqos"), S11_AXI_awvalid("S11_AXI_awvalid"), S11_AXI_awready("S11_AXI_awready"), S11_AXI_wdata("S11_AXI_wdata"), S11_AXI_wstrb("S11_AXI_wstrb"), S11_AXI_wlast("S11_AXI_wlast"), S11_AXI_wvalid("S11_AXI_wvalid"), S11_AXI_wready("S11_AXI_wready"), S11_AXI_bid("S11_AXI_bid"), S11_AXI_bresp("S11_AXI_bresp"), S11_AXI_bvalid("S11_AXI_bvalid"), S11_AXI_bready("S11_AXI_bready"), S11_AXI_arid("S11_AXI_arid"), S11_AXI_araddr("S11_AXI_araddr"), S11_AXI_arlen("S11_AXI_arlen"), S11_AXI_arsize("S11_AXI_arsize"), S11_AXI_arburst("S11_AXI_arburst"), S11_AXI_arlock("S11_AXI_arlock"), S11_AXI_arcache("S11_AXI_arcache"), S11_AXI_arprot("S11_AXI_arprot"), S11_AXI_arqos("S11_AXI_arqos"), S11_AXI_arvalid("S11_AXI_arvalid"), S11_AXI_arready("S11_AXI_arready"), S11_AXI_rid("S11_AXI_rid"), S11_AXI_rdata("S11_AXI_rdata"), S11_AXI_rresp("S11_AXI_rresp"), S11_AXI_rlast("S11_AXI_rlast"), S11_AXI_rvalid("S11_AXI_rvalid"), S11_AXI_rready("S11_AXI_rready"), S12_AXI_awid("S12_AXI_awid"), S12_AXI_awaddr("S12_AXI_awaddr"), S12_AXI_awlen("S12_AXI_awlen"), S12_AXI_awsize("S12_AXI_awsize"), S12_AXI_awburst("S12_AXI_awburst"), S12_AXI_awlock("S12_AXI_awlock"), S12_AXI_awcache("S12_AXI_awcache"), S12_AXI_awprot("S12_AXI_awprot"), S12_AXI_awqos("S12_AXI_awqos"), S12_AXI_awvalid("S12_AXI_awvalid"), S12_AXI_awready("S12_AXI_awready"), S12_AXI_wdata("S12_AXI_wdata"), S12_AXI_wstrb("S12_AXI_wstrb"), S12_AXI_wlast("S12_AXI_wlast"), S12_AXI_wvalid("S12_AXI_wvalid"), S12_AXI_wready("S12_AXI_wready"), S12_AXI_bid("S12_AXI_bid"), S12_AXI_bresp("S12_AXI_bresp"), S12_AXI_bvalid("S12_AXI_bvalid"), S12_AXI_bready("S12_AXI_bready"), S12_AXI_arid("S12_AXI_arid"), S12_AXI_araddr("S12_AXI_araddr"), S12_AXI_arlen("S12_AXI_arlen"), S12_AXI_arsize("S12_AXI_arsize"), S12_AXI_arburst("S12_AXI_arburst"), S12_AXI_arlock("S12_AXI_arlock"), S12_AXI_arcache("S12_AXI_arcache"), S12_AXI_arprot("S12_AXI_arprot"), S12_AXI_arqos("S12_AXI_arqos"), S12_AXI_arvalid("S12_AXI_arvalid"), S12_AXI_arready("S12_AXI_arready"), S12_AXI_rid("S12_AXI_rid"), S12_AXI_rdata("S12_AXI_rdata"), S12_AXI_rresp("S12_AXI_rresp"), S12_AXI_rlast("S12_AXI_rlast"), S12_AXI_rvalid("S12_AXI_rvalid"), S12_AXI_rready("S12_AXI_rready"), S13_AXI_awid("S13_AXI_awid"), S13_AXI_awaddr("S13_AXI_awaddr"), S13_AXI_awlen("S13_AXI_awlen"), S13_AXI_awsize("S13_AXI_awsize"), S13_AXI_awburst("S13_AXI_awburst"), S13_AXI_awlock("S13_AXI_awlock"), S13_AXI_awcache("S13_AXI_awcache"), S13_AXI_awprot("S13_AXI_awprot"), S13_AXI_awqos("S13_AXI_awqos"), S13_AXI_awvalid("S13_AXI_awvalid"), S13_AXI_awready("S13_AXI_awready"), S13_AXI_wdata("S13_AXI_wdata"), S13_AXI_wstrb("S13_AXI_wstrb"), S13_AXI_wlast("S13_AXI_wlast"), S13_AXI_wvalid("S13_AXI_wvalid"), S13_AXI_wready("S13_AXI_wready"), S13_AXI_bid("S13_AXI_bid"), S13_AXI_bresp("S13_AXI_bresp"), S13_AXI_bvalid("S13_AXI_bvalid"), S13_AXI_bready("S13_AXI_bready"), S13_AXI_arid("S13_AXI_arid"), S13_AXI_araddr("S13_AXI_araddr"), S13_AXI_arlen("S13_AXI_arlen"), S13_AXI_arsize("S13_AXI_arsize"), S13_AXI_arburst("S13_AXI_arburst"), S13_AXI_arlock("S13_AXI_arlock"), S13_AXI_arcache("S13_AXI_arcache"), S13_AXI_arprot("S13_AXI_arprot"), S13_AXI_arqos("S13_AXI_arqos"), S13_AXI_arvalid("S13_AXI_arvalid"), S13_AXI_arready("S13_AXI_arready"), S13_AXI_rid("S13_AXI_rid"), S13_AXI_rdata("S13_AXI_rdata"), S13_AXI_rresp("S13_AXI_rresp"), S13_AXI_rlast("S13_AXI_rlast"), S13_AXI_rvalid("S13_AXI_rvalid"), S13_AXI_rready("S13_AXI_rready"), S14_AXI_awid("S14_AXI_awid"), S14_AXI_awaddr("S14_AXI_awaddr"), S14_AXI_awlen("S14_AXI_awlen"), S14_AXI_awsize("S14_AXI_awsize"), S14_AXI_awburst("S14_AXI_awburst"), S14_AXI_awlock("S14_AXI_awlock"), S14_AXI_awcache("S14_AXI_awcache"), S14_AXI_awprot("S14_AXI_awprot"), S14_AXI_awqos("S14_AXI_awqos"), S14_AXI_awvalid("S14_AXI_awvalid"), S14_AXI_awready("S14_AXI_awready"), S14_AXI_wdata("S14_AXI_wdata"), S14_AXI_wstrb("S14_AXI_wstrb"), S14_AXI_wlast("S14_AXI_wlast"), S14_AXI_wvalid("S14_AXI_wvalid"), S14_AXI_wready("S14_AXI_wready"), S14_AXI_bid("S14_AXI_bid"), S14_AXI_bresp("S14_AXI_bresp"), S14_AXI_bvalid("S14_AXI_bvalid"), S14_AXI_bready("S14_AXI_bready"), S14_AXI_arid("S14_AXI_arid"), S14_AXI_araddr("S14_AXI_araddr"), S14_AXI_arlen("S14_AXI_arlen"), S14_AXI_arsize("S14_AXI_arsize"), S14_AXI_arburst("S14_AXI_arburst"), S14_AXI_arlock("S14_AXI_arlock"), S14_AXI_arcache("S14_AXI_arcache"), S14_AXI_arprot("S14_AXI_arprot"), S14_AXI_arqos("S14_AXI_arqos"), S14_AXI_arvalid("S14_AXI_arvalid"), S14_AXI_arready("S14_AXI_arready"), S14_AXI_rid("S14_AXI_rid"), S14_AXI_rdata("S14_AXI_rdata"), S14_AXI_rresp("S14_AXI_rresp"), S14_AXI_rlast("S14_AXI_rlast"), S14_AXI_rvalid("S14_AXI_rvalid"), S14_AXI_rready("S14_AXI_rready"), S15_AXI_awid("S15_AXI_awid"), S15_AXI_awaddr("S15_AXI_awaddr"), S15_AXI_awlen("S15_AXI_awlen"), S15_AXI_awsize("S15_AXI_awsize"), S15_AXI_awburst("S15_AXI_awburst"), S15_AXI_awlock("S15_AXI_awlock"), S15_AXI_awcache("S15_AXI_awcache"), S15_AXI_awprot("S15_AXI_awprot"), S15_AXI_awqos("S15_AXI_awqos"), S15_AXI_awvalid("S15_AXI_awvalid"), S15_AXI_awready("S15_AXI_awready"), S15_AXI_wdata("S15_AXI_wdata"), S15_AXI_wstrb("S15_AXI_wstrb"), S15_AXI_wlast("S15_AXI_wlast"), S15_AXI_wvalid("S15_AXI_wvalid"), S15_AXI_wready("S15_AXI_wready"), S15_AXI_bid("S15_AXI_bid"), S15_AXI_bresp("S15_AXI_bresp"), S15_AXI_bvalid("S15_AXI_bvalid"), S15_AXI_bready("S15_AXI_bready"), S15_AXI_arid("S15_AXI_arid"), S15_AXI_araddr("S15_AXI_araddr"), S15_AXI_arlen("S15_AXI_arlen"), S15_AXI_arsize("S15_AXI_arsize"), S15_AXI_arburst("S15_AXI_arburst"), S15_AXI_arlock("S15_AXI_arlock"), S15_AXI_arcache("S15_AXI_arcache"), S15_AXI_arprot("S15_AXI_arprot"), S15_AXI_arqos("S15_AXI_arqos"), S15_AXI_arvalid("S15_AXI_arvalid"), S15_AXI_arready("S15_AXI_arready"), S15_AXI_rid("S15_AXI_rid"), S15_AXI_rdata("S15_AXI_rdata"), S15_AXI_rresp("S15_AXI_rresp"), S15_AXI_rlast("S15_AXI_rlast"), S15_AXI_rvalid("S15_AXI_rvalid"), S15_AXI_rready("S15_AXI_rready"), M00_AXI_awaddr("M00_AXI_awaddr"), M00_AXI_awlen("M00_AXI_awlen"), M00_AXI_awsize("M00_AXI_awsize"), M00_AXI_awburst("M00_AXI_awburst"), M00_AXI_awlock("M00_AXI_awlock"), M00_AXI_awcache("M00_AXI_awcache"), M00_AXI_awprot("M00_AXI_awprot"), M00_AXI_awqos("M00_AXI_awqos"), M00_AXI_awvalid("M00_AXI_awvalid"), M00_AXI_awready("M00_AXI_awready"), M00_AXI_wdata("M00_AXI_wdata"), M00_AXI_wstrb("M00_AXI_wstrb"), M00_AXI_wlast("M00_AXI_wlast"), M00_AXI_wvalid("M00_AXI_wvalid"), M00_AXI_wready("M00_AXI_wready"), M00_AXI_bresp("M00_AXI_bresp"), M00_AXI_bvalid("M00_AXI_bvalid"), M00_AXI_bready("M00_AXI_bready"), M00_AXI_araddr("M00_AXI_araddr"), M00_AXI_arlen("M00_AXI_arlen"), M00_AXI_arsize("M00_AXI_arsize"), M00_AXI_arburst("M00_AXI_arburst"), M00_AXI_arlock("M00_AXI_arlock"), M00_AXI_arcache("M00_AXI_arcache"), M00_AXI_arprot("M00_AXI_arprot"), M00_AXI_arqos("M00_AXI_arqos"), M00_AXI_arvalid("M00_AXI_arvalid"), M00_AXI_arready("M00_AXI_arready"), M00_AXI_rdata("M00_AXI_rdata"), M00_AXI_rresp("M00_AXI_rresp"), M00_AXI_rlast("M00_AXI_rlast"), M00_AXI_rvalid("M00_AXI_rvalid"), M00_AXI_rready("M00_AXI_rready")
{

  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_S00_AXI_awlock_converter = NULL;
  mp_S00_AXI_arlock_converter = NULL;
  mp_S01_AXI_transactor = NULL;
  mp_S01_AXI_awlock_converter = NULL;
  mp_S01_AXI_arlock_converter = NULL;
  mp_S02_AXI_transactor = NULL;
  mp_S02_AXI_awlock_converter = NULL;
  mp_S02_AXI_arlock_converter = NULL;
  mp_S03_AXI_transactor = NULL;
  mp_S03_AXI_awlock_converter = NULL;
  mp_S03_AXI_arlock_converter = NULL;
  mp_S04_AXI_transactor = NULL;
  mp_S04_AXI_awlock_converter = NULL;
  mp_S04_AXI_arlock_converter = NULL;
  mp_S05_AXI_transactor = NULL;
  mp_S05_AXI_awlock_converter = NULL;
  mp_S05_AXI_arlock_converter = NULL;
  mp_S06_AXI_transactor = NULL;
  mp_S06_AXI_awlock_converter = NULL;
  mp_S06_AXI_arlock_converter = NULL;
  mp_S07_AXI_transactor = NULL;
  mp_S07_AXI_awlock_converter = NULL;
  mp_S07_AXI_arlock_converter = NULL;
  mp_S08_AXI_transactor = NULL;
  mp_S08_AXI_awlock_converter = NULL;
  mp_S08_AXI_arlock_converter = NULL;
  mp_S09_AXI_transactor = NULL;
  mp_S09_AXI_awlock_converter = NULL;
  mp_S09_AXI_arlock_converter = NULL;
  mp_S10_AXI_transactor = NULL;
  mp_S10_AXI_awlock_converter = NULL;
  mp_S10_AXI_arlock_converter = NULL;
  mp_S11_AXI_transactor = NULL;
  mp_S11_AXI_awlock_converter = NULL;
  mp_S11_AXI_arlock_converter = NULL;
  mp_S12_AXI_transactor = NULL;
  mp_S12_AXI_awlock_converter = NULL;
  mp_S12_AXI_arlock_converter = NULL;
  mp_S13_AXI_transactor = NULL;
  mp_S13_AXI_awlock_converter = NULL;
  mp_S13_AXI_arlock_converter = NULL;
  mp_S14_AXI_transactor = NULL;
  mp_S14_AXI_awlock_converter = NULL;
  mp_S14_AXI_arlock_converter = NULL;
  mp_S15_AXI_transactor = NULL;
  mp_S15_AXI_awlock_converter = NULL;
  mp_S15_AXI_arlock_converter = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_M00_AXI_awlock_converter = NULL;
  mp_M00_AXI_arlock_converter = NULL;

  // initialize socket stubs

}

void MemoryInterfacesVIP_smartconnect_0_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXI' transactor parameters
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);

    // S00_AXI' transactor ports

    mp_S00_AXI_transactor->AWID(S00_AXI_awid);
    mp_S00_AXI_transactor->AWADDR(S00_AXI_awaddr);
    mp_S00_AXI_transactor->AWLEN(S00_AXI_awlen);
    mp_S00_AXI_transactor->AWSIZE(S00_AXI_awsize);
    mp_S00_AXI_transactor->AWBURST(S00_AXI_awburst);
    mp_S00_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_awlock_converter");
    mp_S00_AXI_awlock_converter->vector_in(S00_AXI_awlock);
    mp_S00_AXI_awlock_converter->scalar_out(m_S00_AXI_awlock_converter_signal);
    mp_S00_AXI_transactor->AWLOCK(m_S00_AXI_awlock_converter_signal);
    mp_S00_AXI_transactor->AWCACHE(S00_AXI_awcache);
    mp_S00_AXI_transactor->AWPROT(S00_AXI_awprot);
    mp_S00_AXI_transactor->AWQOS(S00_AXI_awqos);
    mp_S00_AXI_transactor->AWVALID(S00_AXI_awvalid);
    mp_S00_AXI_transactor->AWREADY(S00_AXI_awready);
    mp_S00_AXI_transactor->WDATA(S00_AXI_wdata);
    mp_S00_AXI_transactor->WSTRB(S00_AXI_wstrb);
    mp_S00_AXI_transactor->WLAST(S00_AXI_wlast);
    mp_S00_AXI_transactor->WVALID(S00_AXI_wvalid);
    mp_S00_AXI_transactor->WREADY(S00_AXI_wready);
    mp_S00_AXI_transactor->BID(S00_AXI_bid);
    mp_S00_AXI_transactor->BRESP(S00_AXI_bresp);
    mp_S00_AXI_transactor->BVALID(S00_AXI_bvalid);
    mp_S00_AXI_transactor->BREADY(S00_AXI_bready);
    mp_S00_AXI_transactor->ARID(S00_AXI_arid);
    mp_S00_AXI_transactor->ARADDR(S00_AXI_araddr);
    mp_S00_AXI_transactor->ARLEN(S00_AXI_arlen);
    mp_S00_AXI_transactor->ARSIZE(S00_AXI_arsize);
    mp_S00_AXI_transactor->ARBURST(S00_AXI_arburst);
    mp_S00_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_arlock_converter");
    mp_S00_AXI_arlock_converter->vector_in(S00_AXI_arlock);
    mp_S00_AXI_arlock_converter->scalar_out(m_S00_AXI_arlock_converter_signal);
    mp_S00_AXI_transactor->ARLOCK(m_S00_AXI_arlock_converter_signal);
    mp_S00_AXI_transactor->ARCACHE(S00_AXI_arcache);
    mp_S00_AXI_transactor->ARPROT(S00_AXI_arprot);
    mp_S00_AXI_transactor->ARQOS(S00_AXI_arqos);
    mp_S00_AXI_transactor->ARVALID(S00_AXI_arvalid);
    mp_S00_AXI_transactor->ARREADY(S00_AXI_arready);
    mp_S00_AXI_transactor->RID(S00_AXI_rid);
    mp_S00_AXI_transactor->RDATA(S00_AXI_rdata);
    mp_S00_AXI_transactor->RRESP(S00_AXI_rresp);
    mp_S00_AXI_transactor->RLAST(S00_AXI_rlast);
    mp_S00_AXI_transactor->RVALID(S00_AXI_rvalid);
    mp_S00_AXI_transactor->RREADY(S00_AXI_rready);
    mp_S00_AXI_transactor->CLK(aclk);
    mp_S00_AXI_transactor->RST(aresetn);

    // S00_AXI' transactor sockets

    mp_impl->S00_AXI_tlm_aximm_read_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->S00_AXI_tlm_aximm_write_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S01_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S01_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S01_AXI' transactor parameters
    xsc::common_cpp::properties S01_AXI_transactor_param_props;
    S01_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S01_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S01_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S01_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S01_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S01_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S01_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S01_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S01_AXI_transactor", S01_AXI_transactor_param_props);

    // S01_AXI' transactor ports

    mp_S01_AXI_transactor->AWID(S01_AXI_awid);
    mp_S01_AXI_transactor->AWADDR(S01_AXI_awaddr);
    mp_S01_AXI_transactor->AWLEN(S01_AXI_awlen);
    mp_S01_AXI_transactor->AWSIZE(S01_AXI_awsize);
    mp_S01_AXI_transactor->AWBURST(S01_AXI_awburst);
    mp_S01_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_awlock_converter");
    mp_S01_AXI_awlock_converter->vector_in(S01_AXI_awlock);
    mp_S01_AXI_awlock_converter->scalar_out(m_S01_AXI_awlock_converter_signal);
    mp_S01_AXI_transactor->AWLOCK(m_S01_AXI_awlock_converter_signal);
    mp_S01_AXI_transactor->AWCACHE(S01_AXI_awcache);
    mp_S01_AXI_transactor->AWPROT(S01_AXI_awprot);
    mp_S01_AXI_transactor->AWQOS(S01_AXI_awqos);
    mp_S01_AXI_transactor->AWVALID(S01_AXI_awvalid);
    mp_S01_AXI_transactor->AWREADY(S01_AXI_awready);
    mp_S01_AXI_transactor->WDATA(S01_AXI_wdata);
    mp_S01_AXI_transactor->WSTRB(S01_AXI_wstrb);
    mp_S01_AXI_transactor->WLAST(S01_AXI_wlast);
    mp_S01_AXI_transactor->WVALID(S01_AXI_wvalid);
    mp_S01_AXI_transactor->WREADY(S01_AXI_wready);
    mp_S01_AXI_transactor->BID(S01_AXI_bid);
    mp_S01_AXI_transactor->BRESP(S01_AXI_bresp);
    mp_S01_AXI_transactor->BVALID(S01_AXI_bvalid);
    mp_S01_AXI_transactor->BREADY(S01_AXI_bready);
    mp_S01_AXI_transactor->ARID(S01_AXI_arid);
    mp_S01_AXI_transactor->ARADDR(S01_AXI_araddr);
    mp_S01_AXI_transactor->ARLEN(S01_AXI_arlen);
    mp_S01_AXI_transactor->ARSIZE(S01_AXI_arsize);
    mp_S01_AXI_transactor->ARBURST(S01_AXI_arburst);
    mp_S01_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_arlock_converter");
    mp_S01_AXI_arlock_converter->vector_in(S01_AXI_arlock);
    mp_S01_AXI_arlock_converter->scalar_out(m_S01_AXI_arlock_converter_signal);
    mp_S01_AXI_transactor->ARLOCK(m_S01_AXI_arlock_converter_signal);
    mp_S01_AXI_transactor->ARCACHE(S01_AXI_arcache);
    mp_S01_AXI_transactor->ARPROT(S01_AXI_arprot);
    mp_S01_AXI_transactor->ARQOS(S01_AXI_arqos);
    mp_S01_AXI_transactor->ARVALID(S01_AXI_arvalid);
    mp_S01_AXI_transactor->ARREADY(S01_AXI_arready);
    mp_S01_AXI_transactor->RID(S01_AXI_rid);
    mp_S01_AXI_transactor->RDATA(S01_AXI_rdata);
    mp_S01_AXI_transactor->RRESP(S01_AXI_rresp);
    mp_S01_AXI_transactor->RLAST(S01_AXI_rlast);
    mp_S01_AXI_transactor->RVALID(S01_AXI_rvalid);
    mp_S01_AXI_transactor->RREADY(S01_AXI_rready);
    mp_S01_AXI_transactor->CLK(aclk);
    mp_S01_AXI_transactor->RST(aresetn);

    // S01_AXI' transactor sockets

    mp_impl->S01_AXI_tlm_aximm_read_socket->bind(*(mp_S01_AXI_transactor->rd_socket));
    mp_impl->S01_AXI_tlm_aximm_write_socket->bind(*(mp_S01_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S02_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S02_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S02_AXI' transactor parameters
    xsc::common_cpp::properties S02_AXI_transactor_param_props;
    S02_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S02_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S02_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S02_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S02_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S02_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S02_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S02_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S02_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S02_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S02_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S02_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S02_AXI_transactor", S02_AXI_transactor_param_props);

    // S02_AXI' transactor ports

    mp_S02_AXI_transactor->AWID(S02_AXI_awid);
    mp_S02_AXI_transactor->AWADDR(S02_AXI_awaddr);
    mp_S02_AXI_transactor->AWLEN(S02_AXI_awlen);
    mp_S02_AXI_transactor->AWSIZE(S02_AXI_awsize);
    mp_S02_AXI_transactor->AWBURST(S02_AXI_awburst);
    mp_S02_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_awlock_converter");
    mp_S02_AXI_awlock_converter->vector_in(S02_AXI_awlock);
    mp_S02_AXI_awlock_converter->scalar_out(m_S02_AXI_awlock_converter_signal);
    mp_S02_AXI_transactor->AWLOCK(m_S02_AXI_awlock_converter_signal);
    mp_S02_AXI_transactor->AWCACHE(S02_AXI_awcache);
    mp_S02_AXI_transactor->AWPROT(S02_AXI_awprot);
    mp_S02_AXI_transactor->AWQOS(S02_AXI_awqos);
    mp_S02_AXI_transactor->AWVALID(S02_AXI_awvalid);
    mp_S02_AXI_transactor->AWREADY(S02_AXI_awready);
    mp_S02_AXI_transactor->WDATA(S02_AXI_wdata);
    mp_S02_AXI_transactor->WSTRB(S02_AXI_wstrb);
    mp_S02_AXI_transactor->WLAST(S02_AXI_wlast);
    mp_S02_AXI_transactor->WVALID(S02_AXI_wvalid);
    mp_S02_AXI_transactor->WREADY(S02_AXI_wready);
    mp_S02_AXI_transactor->BID(S02_AXI_bid);
    mp_S02_AXI_transactor->BRESP(S02_AXI_bresp);
    mp_S02_AXI_transactor->BVALID(S02_AXI_bvalid);
    mp_S02_AXI_transactor->BREADY(S02_AXI_bready);
    mp_S02_AXI_transactor->ARID(S02_AXI_arid);
    mp_S02_AXI_transactor->ARADDR(S02_AXI_araddr);
    mp_S02_AXI_transactor->ARLEN(S02_AXI_arlen);
    mp_S02_AXI_transactor->ARSIZE(S02_AXI_arsize);
    mp_S02_AXI_transactor->ARBURST(S02_AXI_arburst);
    mp_S02_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_arlock_converter");
    mp_S02_AXI_arlock_converter->vector_in(S02_AXI_arlock);
    mp_S02_AXI_arlock_converter->scalar_out(m_S02_AXI_arlock_converter_signal);
    mp_S02_AXI_transactor->ARLOCK(m_S02_AXI_arlock_converter_signal);
    mp_S02_AXI_transactor->ARCACHE(S02_AXI_arcache);
    mp_S02_AXI_transactor->ARPROT(S02_AXI_arprot);
    mp_S02_AXI_transactor->ARQOS(S02_AXI_arqos);
    mp_S02_AXI_transactor->ARVALID(S02_AXI_arvalid);
    mp_S02_AXI_transactor->ARREADY(S02_AXI_arready);
    mp_S02_AXI_transactor->RID(S02_AXI_rid);
    mp_S02_AXI_transactor->RDATA(S02_AXI_rdata);
    mp_S02_AXI_transactor->RRESP(S02_AXI_rresp);
    mp_S02_AXI_transactor->RLAST(S02_AXI_rlast);
    mp_S02_AXI_transactor->RVALID(S02_AXI_rvalid);
    mp_S02_AXI_transactor->RREADY(S02_AXI_rready);
    mp_S02_AXI_transactor->CLK(aclk);
    mp_S02_AXI_transactor->RST(aresetn);

    // S02_AXI' transactor sockets

    mp_impl->S02_AXI_tlm_aximm_read_socket->bind(*(mp_S02_AXI_transactor->rd_socket));
    mp_impl->S02_AXI_tlm_aximm_write_socket->bind(*(mp_S02_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S03_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S03_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S03_AXI' transactor parameters
    xsc::common_cpp::properties S03_AXI_transactor_param_props;
    S03_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S03_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S03_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S03_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S03_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S03_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S03_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S03_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S03_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S03_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S03_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S03_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S03_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S03_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S03_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S03_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S03_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S03_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S03_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S03_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S03_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S03_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S03_AXI_transactor", S03_AXI_transactor_param_props);

    // S03_AXI' transactor ports

    mp_S03_AXI_transactor->AWID(S03_AXI_awid);
    mp_S03_AXI_transactor->AWADDR(S03_AXI_awaddr);
    mp_S03_AXI_transactor->AWLEN(S03_AXI_awlen);
    mp_S03_AXI_transactor->AWSIZE(S03_AXI_awsize);
    mp_S03_AXI_transactor->AWBURST(S03_AXI_awburst);
    mp_S03_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_awlock_converter");
    mp_S03_AXI_awlock_converter->vector_in(S03_AXI_awlock);
    mp_S03_AXI_awlock_converter->scalar_out(m_S03_AXI_awlock_converter_signal);
    mp_S03_AXI_transactor->AWLOCK(m_S03_AXI_awlock_converter_signal);
    mp_S03_AXI_transactor->AWCACHE(S03_AXI_awcache);
    mp_S03_AXI_transactor->AWPROT(S03_AXI_awprot);
    mp_S03_AXI_transactor->AWQOS(S03_AXI_awqos);
    mp_S03_AXI_transactor->AWVALID(S03_AXI_awvalid);
    mp_S03_AXI_transactor->AWREADY(S03_AXI_awready);
    mp_S03_AXI_transactor->WDATA(S03_AXI_wdata);
    mp_S03_AXI_transactor->WSTRB(S03_AXI_wstrb);
    mp_S03_AXI_transactor->WLAST(S03_AXI_wlast);
    mp_S03_AXI_transactor->WVALID(S03_AXI_wvalid);
    mp_S03_AXI_transactor->WREADY(S03_AXI_wready);
    mp_S03_AXI_transactor->BID(S03_AXI_bid);
    mp_S03_AXI_transactor->BRESP(S03_AXI_bresp);
    mp_S03_AXI_transactor->BVALID(S03_AXI_bvalid);
    mp_S03_AXI_transactor->BREADY(S03_AXI_bready);
    mp_S03_AXI_transactor->ARID(S03_AXI_arid);
    mp_S03_AXI_transactor->ARADDR(S03_AXI_araddr);
    mp_S03_AXI_transactor->ARLEN(S03_AXI_arlen);
    mp_S03_AXI_transactor->ARSIZE(S03_AXI_arsize);
    mp_S03_AXI_transactor->ARBURST(S03_AXI_arburst);
    mp_S03_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_arlock_converter");
    mp_S03_AXI_arlock_converter->vector_in(S03_AXI_arlock);
    mp_S03_AXI_arlock_converter->scalar_out(m_S03_AXI_arlock_converter_signal);
    mp_S03_AXI_transactor->ARLOCK(m_S03_AXI_arlock_converter_signal);
    mp_S03_AXI_transactor->ARCACHE(S03_AXI_arcache);
    mp_S03_AXI_transactor->ARPROT(S03_AXI_arprot);
    mp_S03_AXI_transactor->ARQOS(S03_AXI_arqos);
    mp_S03_AXI_transactor->ARVALID(S03_AXI_arvalid);
    mp_S03_AXI_transactor->ARREADY(S03_AXI_arready);
    mp_S03_AXI_transactor->RID(S03_AXI_rid);
    mp_S03_AXI_transactor->RDATA(S03_AXI_rdata);
    mp_S03_AXI_transactor->RRESP(S03_AXI_rresp);
    mp_S03_AXI_transactor->RLAST(S03_AXI_rlast);
    mp_S03_AXI_transactor->RVALID(S03_AXI_rvalid);
    mp_S03_AXI_transactor->RREADY(S03_AXI_rready);
    mp_S03_AXI_transactor->CLK(aclk);
    mp_S03_AXI_transactor->RST(aresetn);

    // S03_AXI' transactor sockets

    mp_impl->S03_AXI_tlm_aximm_read_socket->bind(*(mp_S03_AXI_transactor->rd_socket));
    mp_impl->S03_AXI_tlm_aximm_write_socket->bind(*(mp_S03_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S04_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S04_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S04_AXI' transactor parameters
    xsc::common_cpp::properties S04_AXI_transactor_param_props;
    S04_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S04_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S04_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S04_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S04_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S04_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S04_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S04_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S04_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S04_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S04_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S04_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S04_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S04_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S04_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S04_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S04_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S04_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S04_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S04_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S04_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S04_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S04_AXI_transactor", S04_AXI_transactor_param_props);

    // S04_AXI' transactor ports

    mp_S04_AXI_transactor->AWID(S04_AXI_awid);
    mp_S04_AXI_transactor->AWADDR(S04_AXI_awaddr);
    mp_S04_AXI_transactor->AWLEN(S04_AXI_awlen);
    mp_S04_AXI_transactor->AWSIZE(S04_AXI_awsize);
    mp_S04_AXI_transactor->AWBURST(S04_AXI_awburst);
    mp_S04_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_awlock_converter");
    mp_S04_AXI_awlock_converter->vector_in(S04_AXI_awlock);
    mp_S04_AXI_awlock_converter->scalar_out(m_S04_AXI_awlock_converter_signal);
    mp_S04_AXI_transactor->AWLOCK(m_S04_AXI_awlock_converter_signal);
    mp_S04_AXI_transactor->AWCACHE(S04_AXI_awcache);
    mp_S04_AXI_transactor->AWPROT(S04_AXI_awprot);
    mp_S04_AXI_transactor->AWQOS(S04_AXI_awqos);
    mp_S04_AXI_transactor->AWVALID(S04_AXI_awvalid);
    mp_S04_AXI_transactor->AWREADY(S04_AXI_awready);
    mp_S04_AXI_transactor->WDATA(S04_AXI_wdata);
    mp_S04_AXI_transactor->WSTRB(S04_AXI_wstrb);
    mp_S04_AXI_transactor->WLAST(S04_AXI_wlast);
    mp_S04_AXI_transactor->WVALID(S04_AXI_wvalid);
    mp_S04_AXI_transactor->WREADY(S04_AXI_wready);
    mp_S04_AXI_transactor->BID(S04_AXI_bid);
    mp_S04_AXI_transactor->BRESP(S04_AXI_bresp);
    mp_S04_AXI_transactor->BVALID(S04_AXI_bvalid);
    mp_S04_AXI_transactor->BREADY(S04_AXI_bready);
    mp_S04_AXI_transactor->ARID(S04_AXI_arid);
    mp_S04_AXI_transactor->ARADDR(S04_AXI_araddr);
    mp_S04_AXI_transactor->ARLEN(S04_AXI_arlen);
    mp_S04_AXI_transactor->ARSIZE(S04_AXI_arsize);
    mp_S04_AXI_transactor->ARBURST(S04_AXI_arburst);
    mp_S04_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_arlock_converter");
    mp_S04_AXI_arlock_converter->vector_in(S04_AXI_arlock);
    mp_S04_AXI_arlock_converter->scalar_out(m_S04_AXI_arlock_converter_signal);
    mp_S04_AXI_transactor->ARLOCK(m_S04_AXI_arlock_converter_signal);
    mp_S04_AXI_transactor->ARCACHE(S04_AXI_arcache);
    mp_S04_AXI_transactor->ARPROT(S04_AXI_arprot);
    mp_S04_AXI_transactor->ARQOS(S04_AXI_arqos);
    mp_S04_AXI_transactor->ARVALID(S04_AXI_arvalid);
    mp_S04_AXI_transactor->ARREADY(S04_AXI_arready);
    mp_S04_AXI_transactor->RID(S04_AXI_rid);
    mp_S04_AXI_transactor->RDATA(S04_AXI_rdata);
    mp_S04_AXI_transactor->RRESP(S04_AXI_rresp);
    mp_S04_AXI_transactor->RLAST(S04_AXI_rlast);
    mp_S04_AXI_transactor->RVALID(S04_AXI_rvalid);
    mp_S04_AXI_transactor->RREADY(S04_AXI_rready);
    mp_S04_AXI_transactor->CLK(aclk);
    mp_S04_AXI_transactor->RST(aresetn);

    // S04_AXI' transactor sockets

    mp_impl->S04_AXI_tlm_aximm_read_socket->bind(*(mp_S04_AXI_transactor->rd_socket));
    mp_impl->S04_AXI_tlm_aximm_write_socket->bind(*(mp_S04_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S05_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S05_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S05_AXI' transactor parameters
    xsc::common_cpp::properties S05_AXI_transactor_param_props;
    S05_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S05_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S05_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S05_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S05_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S05_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S05_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S05_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S05_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S05_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S05_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S05_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S05_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S05_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S05_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S05_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S05_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S05_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S05_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S05_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S05_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S05_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S05_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S05_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S05_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S05_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S05_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S05_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S05_AXI_transactor", S05_AXI_transactor_param_props);

    // S05_AXI' transactor ports

    mp_S05_AXI_transactor->AWID(S05_AXI_awid);
    mp_S05_AXI_transactor->AWADDR(S05_AXI_awaddr);
    mp_S05_AXI_transactor->AWLEN(S05_AXI_awlen);
    mp_S05_AXI_transactor->AWSIZE(S05_AXI_awsize);
    mp_S05_AXI_transactor->AWBURST(S05_AXI_awburst);
    mp_S05_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S05_AXI_awlock_converter");
    mp_S05_AXI_awlock_converter->vector_in(S05_AXI_awlock);
    mp_S05_AXI_awlock_converter->scalar_out(m_S05_AXI_awlock_converter_signal);
    mp_S05_AXI_transactor->AWLOCK(m_S05_AXI_awlock_converter_signal);
    mp_S05_AXI_transactor->AWCACHE(S05_AXI_awcache);
    mp_S05_AXI_transactor->AWPROT(S05_AXI_awprot);
    mp_S05_AXI_transactor->AWQOS(S05_AXI_awqos);
    mp_S05_AXI_transactor->AWVALID(S05_AXI_awvalid);
    mp_S05_AXI_transactor->AWREADY(S05_AXI_awready);
    mp_S05_AXI_transactor->WDATA(S05_AXI_wdata);
    mp_S05_AXI_transactor->WSTRB(S05_AXI_wstrb);
    mp_S05_AXI_transactor->WLAST(S05_AXI_wlast);
    mp_S05_AXI_transactor->WVALID(S05_AXI_wvalid);
    mp_S05_AXI_transactor->WREADY(S05_AXI_wready);
    mp_S05_AXI_transactor->BID(S05_AXI_bid);
    mp_S05_AXI_transactor->BRESP(S05_AXI_bresp);
    mp_S05_AXI_transactor->BVALID(S05_AXI_bvalid);
    mp_S05_AXI_transactor->BREADY(S05_AXI_bready);
    mp_S05_AXI_transactor->ARID(S05_AXI_arid);
    mp_S05_AXI_transactor->ARADDR(S05_AXI_araddr);
    mp_S05_AXI_transactor->ARLEN(S05_AXI_arlen);
    mp_S05_AXI_transactor->ARSIZE(S05_AXI_arsize);
    mp_S05_AXI_transactor->ARBURST(S05_AXI_arburst);
    mp_S05_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S05_AXI_arlock_converter");
    mp_S05_AXI_arlock_converter->vector_in(S05_AXI_arlock);
    mp_S05_AXI_arlock_converter->scalar_out(m_S05_AXI_arlock_converter_signal);
    mp_S05_AXI_transactor->ARLOCK(m_S05_AXI_arlock_converter_signal);
    mp_S05_AXI_transactor->ARCACHE(S05_AXI_arcache);
    mp_S05_AXI_transactor->ARPROT(S05_AXI_arprot);
    mp_S05_AXI_transactor->ARQOS(S05_AXI_arqos);
    mp_S05_AXI_transactor->ARVALID(S05_AXI_arvalid);
    mp_S05_AXI_transactor->ARREADY(S05_AXI_arready);
    mp_S05_AXI_transactor->RID(S05_AXI_rid);
    mp_S05_AXI_transactor->RDATA(S05_AXI_rdata);
    mp_S05_AXI_transactor->RRESP(S05_AXI_rresp);
    mp_S05_AXI_transactor->RLAST(S05_AXI_rlast);
    mp_S05_AXI_transactor->RVALID(S05_AXI_rvalid);
    mp_S05_AXI_transactor->RREADY(S05_AXI_rready);
    mp_S05_AXI_transactor->CLK(aclk);
    mp_S05_AXI_transactor->RST(aresetn);

    // S05_AXI' transactor sockets

    mp_impl->S05_AXI_tlm_aximm_read_socket->bind(*(mp_S05_AXI_transactor->rd_socket));
    mp_impl->S05_AXI_tlm_aximm_write_socket->bind(*(mp_S05_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S06_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S06_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S06_AXI' transactor parameters
    xsc::common_cpp::properties S06_AXI_transactor_param_props;
    S06_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S06_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S06_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S06_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S06_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S06_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S06_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S06_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S06_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S06_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S06_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S06_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S06_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S06_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S06_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S06_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S06_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S06_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S06_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S06_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S06_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S06_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S06_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S06_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S06_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S06_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S06_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S06_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S06_AXI_transactor", S06_AXI_transactor_param_props);

    // S06_AXI' transactor ports

    mp_S06_AXI_transactor->AWID(S06_AXI_awid);
    mp_S06_AXI_transactor->AWADDR(S06_AXI_awaddr);
    mp_S06_AXI_transactor->AWLEN(S06_AXI_awlen);
    mp_S06_AXI_transactor->AWSIZE(S06_AXI_awsize);
    mp_S06_AXI_transactor->AWBURST(S06_AXI_awburst);
    mp_S06_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S06_AXI_awlock_converter");
    mp_S06_AXI_awlock_converter->vector_in(S06_AXI_awlock);
    mp_S06_AXI_awlock_converter->scalar_out(m_S06_AXI_awlock_converter_signal);
    mp_S06_AXI_transactor->AWLOCK(m_S06_AXI_awlock_converter_signal);
    mp_S06_AXI_transactor->AWCACHE(S06_AXI_awcache);
    mp_S06_AXI_transactor->AWPROT(S06_AXI_awprot);
    mp_S06_AXI_transactor->AWQOS(S06_AXI_awqos);
    mp_S06_AXI_transactor->AWVALID(S06_AXI_awvalid);
    mp_S06_AXI_transactor->AWREADY(S06_AXI_awready);
    mp_S06_AXI_transactor->WDATA(S06_AXI_wdata);
    mp_S06_AXI_transactor->WSTRB(S06_AXI_wstrb);
    mp_S06_AXI_transactor->WLAST(S06_AXI_wlast);
    mp_S06_AXI_transactor->WVALID(S06_AXI_wvalid);
    mp_S06_AXI_transactor->WREADY(S06_AXI_wready);
    mp_S06_AXI_transactor->BID(S06_AXI_bid);
    mp_S06_AXI_transactor->BRESP(S06_AXI_bresp);
    mp_S06_AXI_transactor->BVALID(S06_AXI_bvalid);
    mp_S06_AXI_transactor->BREADY(S06_AXI_bready);
    mp_S06_AXI_transactor->ARID(S06_AXI_arid);
    mp_S06_AXI_transactor->ARADDR(S06_AXI_araddr);
    mp_S06_AXI_transactor->ARLEN(S06_AXI_arlen);
    mp_S06_AXI_transactor->ARSIZE(S06_AXI_arsize);
    mp_S06_AXI_transactor->ARBURST(S06_AXI_arburst);
    mp_S06_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S06_AXI_arlock_converter");
    mp_S06_AXI_arlock_converter->vector_in(S06_AXI_arlock);
    mp_S06_AXI_arlock_converter->scalar_out(m_S06_AXI_arlock_converter_signal);
    mp_S06_AXI_transactor->ARLOCK(m_S06_AXI_arlock_converter_signal);
    mp_S06_AXI_transactor->ARCACHE(S06_AXI_arcache);
    mp_S06_AXI_transactor->ARPROT(S06_AXI_arprot);
    mp_S06_AXI_transactor->ARQOS(S06_AXI_arqos);
    mp_S06_AXI_transactor->ARVALID(S06_AXI_arvalid);
    mp_S06_AXI_transactor->ARREADY(S06_AXI_arready);
    mp_S06_AXI_transactor->RID(S06_AXI_rid);
    mp_S06_AXI_transactor->RDATA(S06_AXI_rdata);
    mp_S06_AXI_transactor->RRESP(S06_AXI_rresp);
    mp_S06_AXI_transactor->RLAST(S06_AXI_rlast);
    mp_S06_AXI_transactor->RVALID(S06_AXI_rvalid);
    mp_S06_AXI_transactor->RREADY(S06_AXI_rready);
    mp_S06_AXI_transactor->CLK(aclk);
    mp_S06_AXI_transactor->RST(aresetn);

    // S06_AXI' transactor sockets

    mp_impl->S06_AXI_tlm_aximm_read_socket->bind(*(mp_S06_AXI_transactor->rd_socket));
    mp_impl->S06_AXI_tlm_aximm_write_socket->bind(*(mp_S06_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S07_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S07_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S07_AXI' transactor parameters
    xsc::common_cpp::properties S07_AXI_transactor_param_props;
    S07_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S07_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S07_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S07_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S07_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S07_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S07_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S07_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S07_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S07_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S07_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S07_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S07_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S07_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S07_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S07_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S07_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S07_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S07_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S07_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S07_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S07_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S07_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S07_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S07_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S07_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S07_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S07_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S07_AXI_transactor", S07_AXI_transactor_param_props);

    // S07_AXI' transactor ports

    mp_S07_AXI_transactor->AWID(S07_AXI_awid);
    mp_S07_AXI_transactor->AWADDR(S07_AXI_awaddr);
    mp_S07_AXI_transactor->AWLEN(S07_AXI_awlen);
    mp_S07_AXI_transactor->AWSIZE(S07_AXI_awsize);
    mp_S07_AXI_transactor->AWBURST(S07_AXI_awburst);
    mp_S07_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S07_AXI_awlock_converter");
    mp_S07_AXI_awlock_converter->vector_in(S07_AXI_awlock);
    mp_S07_AXI_awlock_converter->scalar_out(m_S07_AXI_awlock_converter_signal);
    mp_S07_AXI_transactor->AWLOCK(m_S07_AXI_awlock_converter_signal);
    mp_S07_AXI_transactor->AWCACHE(S07_AXI_awcache);
    mp_S07_AXI_transactor->AWPROT(S07_AXI_awprot);
    mp_S07_AXI_transactor->AWQOS(S07_AXI_awqos);
    mp_S07_AXI_transactor->AWVALID(S07_AXI_awvalid);
    mp_S07_AXI_transactor->AWREADY(S07_AXI_awready);
    mp_S07_AXI_transactor->WDATA(S07_AXI_wdata);
    mp_S07_AXI_transactor->WSTRB(S07_AXI_wstrb);
    mp_S07_AXI_transactor->WLAST(S07_AXI_wlast);
    mp_S07_AXI_transactor->WVALID(S07_AXI_wvalid);
    mp_S07_AXI_transactor->WREADY(S07_AXI_wready);
    mp_S07_AXI_transactor->BID(S07_AXI_bid);
    mp_S07_AXI_transactor->BRESP(S07_AXI_bresp);
    mp_S07_AXI_transactor->BVALID(S07_AXI_bvalid);
    mp_S07_AXI_transactor->BREADY(S07_AXI_bready);
    mp_S07_AXI_transactor->ARID(S07_AXI_arid);
    mp_S07_AXI_transactor->ARADDR(S07_AXI_araddr);
    mp_S07_AXI_transactor->ARLEN(S07_AXI_arlen);
    mp_S07_AXI_transactor->ARSIZE(S07_AXI_arsize);
    mp_S07_AXI_transactor->ARBURST(S07_AXI_arburst);
    mp_S07_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S07_AXI_arlock_converter");
    mp_S07_AXI_arlock_converter->vector_in(S07_AXI_arlock);
    mp_S07_AXI_arlock_converter->scalar_out(m_S07_AXI_arlock_converter_signal);
    mp_S07_AXI_transactor->ARLOCK(m_S07_AXI_arlock_converter_signal);
    mp_S07_AXI_transactor->ARCACHE(S07_AXI_arcache);
    mp_S07_AXI_transactor->ARPROT(S07_AXI_arprot);
    mp_S07_AXI_transactor->ARQOS(S07_AXI_arqos);
    mp_S07_AXI_transactor->ARVALID(S07_AXI_arvalid);
    mp_S07_AXI_transactor->ARREADY(S07_AXI_arready);
    mp_S07_AXI_transactor->RID(S07_AXI_rid);
    mp_S07_AXI_transactor->RDATA(S07_AXI_rdata);
    mp_S07_AXI_transactor->RRESP(S07_AXI_rresp);
    mp_S07_AXI_transactor->RLAST(S07_AXI_rlast);
    mp_S07_AXI_transactor->RVALID(S07_AXI_rvalid);
    mp_S07_AXI_transactor->RREADY(S07_AXI_rready);
    mp_S07_AXI_transactor->CLK(aclk);
    mp_S07_AXI_transactor->RST(aresetn);

    // S07_AXI' transactor sockets

    mp_impl->S07_AXI_tlm_aximm_read_socket->bind(*(mp_S07_AXI_transactor->rd_socket));
    mp_impl->S07_AXI_tlm_aximm_write_socket->bind(*(mp_S07_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S08_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S08_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S08_AXI' transactor parameters
    xsc::common_cpp::properties S08_AXI_transactor_param_props;
    S08_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S08_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S08_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S08_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S08_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S08_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S08_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S08_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S08_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S08_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S08_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S08_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S08_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S08_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S08_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S08_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S08_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S08_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S08_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S08_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S08_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S08_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S08_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S08_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S08_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S08_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S08_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S08_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S08_AXI_transactor", S08_AXI_transactor_param_props);

    // S08_AXI' transactor ports

    mp_S08_AXI_transactor->AWID(S08_AXI_awid);
    mp_S08_AXI_transactor->AWADDR(S08_AXI_awaddr);
    mp_S08_AXI_transactor->AWLEN(S08_AXI_awlen);
    mp_S08_AXI_transactor->AWSIZE(S08_AXI_awsize);
    mp_S08_AXI_transactor->AWBURST(S08_AXI_awburst);
    mp_S08_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S08_AXI_awlock_converter");
    mp_S08_AXI_awlock_converter->vector_in(S08_AXI_awlock);
    mp_S08_AXI_awlock_converter->scalar_out(m_S08_AXI_awlock_converter_signal);
    mp_S08_AXI_transactor->AWLOCK(m_S08_AXI_awlock_converter_signal);
    mp_S08_AXI_transactor->AWCACHE(S08_AXI_awcache);
    mp_S08_AXI_transactor->AWPROT(S08_AXI_awprot);
    mp_S08_AXI_transactor->AWQOS(S08_AXI_awqos);
    mp_S08_AXI_transactor->AWVALID(S08_AXI_awvalid);
    mp_S08_AXI_transactor->AWREADY(S08_AXI_awready);
    mp_S08_AXI_transactor->WDATA(S08_AXI_wdata);
    mp_S08_AXI_transactor->WSTRB(S08_AXI_wstrb);
    mp_S08_AXI_transactor->WLAST(S08_AXI_wlast);
    mp_S08_AXI_transactor->WVALID(S08_AXI_wvalid);
    mp_S08_AXI_transactor->WREADY(S08_AXI_wready);
    mp_S08_AXI_transactor->BID(S08_AXI_bid);
    mp_S08_AXI_transactor->BRESP(S08_AXI_bresp);
    mp_S08_AXI_transactor->BVALID(S08_AXI_bvalid);
    mp_S08_AXI_transactor->BREADY(S08_AXI_bready);
    mp_S08_AXI_transactor->ARID(S08_AXI_arid);
    mp_S08_AXI_transactor->ARADDR(S08_AXI_araddr);
    mp_S08_AXI_transactor->ARLEN(S08_AXI_arlen);
    mp_S08_AXI_transactor->ARSIZE(S08_AXI_arsize);
    mp_S08_AXI_transactor->ARBURST(S08_AXI_arburst);
    mp_S08_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S08_AXI_arlock_converter");
    mp_S08_AXI_arlock_converter->vector_in(S08_AXI_arlock);
    mp_S08_AXI_arlock_converter->scalar_out(m_S08_AXI_arlock_converter_signal);
    mp_S08_AXI_transactor->ARLOCK(m_S08_AXI_arlock_converter_signal);
    mp_S08_AXI_transactor->ARCACHE(S08_AXI_arcache);
    mp_S08_AXI_transactor->ARPROT(S08_AXI_arprot);
    mp_S08_AXI_transactor->ARQOS(S08_AXI_arqos);
    mp_S08_AXI_transactor->ARVALID(S08_AXI_arvalid);
    mp_S08_AXI_transactor->ARREADY(S08_AXI_arready);
    mp_S08_AXI_transactor->RID(S08_AXI_rid);
    mp_S08_AXI_transactor->RDATA(S08_AXI_rdata);
    mp_S08_AXI_transactor->RRESP(S08_AXI_rresp);
    mp_S08_AXI_transactor->RLAST(S08_AXI_rlast);
    mp_S08_AXI_transactor->RVALID(S08_AXI_rvalid);
    mp_S08_AXI_transactor->RREADY(S08_AXI_rready);
    mp_S08_AXI_transactor->CLK(aclk);
    mp_S08_AXI_transactor->RST(aresetn);

    // S08_AXI' transactor sockets

    mp_impl->S08_AXI_tlm_aximm_read_socket->bind(*(mp_S08_AXI_transactor->rd_socket));
    mp_impl->S08_AXI_tlm_aximm_write_socket->bind(*(mp_S08_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S09_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S09_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S09_AXI' transactor parameters
    xsc::common_cpp::properties S09_AXI_transactor_param_props;
    S09_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S09_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S09_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S09_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S09_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S09_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S09_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S09_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S09_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S09_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S09_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S09_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S09_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S09_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S09_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S09_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S09_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S09_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S09_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S09_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S09_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S09_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S09_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S09_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S09_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S09_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S09_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S09_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S09_AXI_transactor", S09_AXI_transactor_param_props);

    // S09_AXI' transactor ports

    mp_S09_AXI_transactor->AWID(S09_AXI_awid);
    mp_S09_AXI_transactor->AWADDR(S09_AXI_awaddr);
    mp_S09_AXI_transactor->AWLEN(S09_AXI_awlen);
    mp_S09_AXI_transactor->AWSIZE(S09_AXI_awsize);
    mp_S09_AXI_transactor->AWBURST(S09_AXI_awburst);
    mp_S09_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S09_AXI_awlock_converter");
    mp_S09_AXI_awlock_converter->vector_in(S09_AXI_awlock);
    mp_S09_AXI_awlock_converter->scalar_out(m_S09_AXI_awlock_converter_signal);
    mp_S09_AXI_transactor->AWLOCK(m_S09_AXI_awlock_converter_signal);
    mp_S09_AXI_transactor->AWCACHE(S09_AXI_awcache);
    mp_S09_AXI_transactor->AWPROT(S09_AXI_awprot);
    mp_S09_AXI_transactor->AWQOS(S09_AXI_awqos);
    mp_S09_AXI_transactor->AWVALID(S09_AXI_awvalid);
    mp_S09_AXI_transactor->AWREADY(S09_AXI_awready);
    mp_S09_AXI_transactor->WDATA(S09_AXI_wdata);
    mp_S09_AXI_transactor->WSTRB(S09_AXI_wstrb);
    mp_S09_AXI_transactor->WLAST(S09_AXI_wlast);
    mp_S09_AXI_transactor->WVALID(S09_AXI_wvalid);
    mp_S09_AXI_transactor->WREADY(S09_AXI_wready);
    mp_S09_AXI_transactor->BID(S09_AXI_bid);
    mp_S09_AXI_transactor->BRESP(S09_AXI_bresp);
    mp_S09_AXI_transactor->BVALID(S09_AXI_bvalid);
    mp_S09_AXI_transactor->BREADY(S09_AXI_bready);
    mp_S09_AXI_transactor->ARID(S09_AXI_arid);
    mp_S09_AXI_transactor->ARADDR(S09_AXI_araddr);
    mp_S09_AXI_transactor->ARLEN(S09_AXI_arlen);
    mp_S09_AXI_transactor->ARSIZE(S09_AXI_arsize);
    mp_S09_AXI_transactor->ARBURST(S09_AXI_arburst);
    mp_S09_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S09_AXI_arlock_converter");
    mp_S09_AXI_arlock_converter->vector_in(S09_AXI_arlock);
    mp_S09_AXI_arlock_converter->scalar_out(m_S09_AXI_arlock_converter_signal);
    mp_S09_AXI_transactor->ARLOCK(m_S09_AXI_arlock_converter_signal);
    mp_S09_AXI_transactor->ARCACHE(S09_AXI_arcache);
    mp_S09_AXI_transactor->ARPROT(S09_AXI_arprot);
    mp_S09_AXI_transactor->ARQOS(S09_AXI_arqos);
    mp_S09_AXI_transactor->ARVALID(S09_AXI_arvalid);
    mp_S09_AXI_transactor->ARREADY(S09_AXI_arready);
    mp_S09_AXI_transactor->RID(S09_AXI_rid);
    mp_S09_AXI_transactor->RDATA(S09_AXI_rdata);
    mp_S09_AXI_transactor->RRESP(S09_AXI_rresp);
    mp_S09_AXI_transactor->RLAST(S09_AXI_rlast);
    mp_S09_AXI_transactor->RVALID(S09_AXI_rvalid);
    mp_S09_AXI_transactor->RREADY(S09_AXI_rready);
    mp_S09_AXI_transactor->CLK(aclk);
    mp_S09_AXI_transactor->RST(aresetn);

    // S09_AXI' transactor sockets

    mp_impl->S09_AXI_tlm_aximm_read_socket->bind(*(mp_S09_AXI_transactor->rd_socket));
    mp_impl->S09_AXI_tlm_aximm_write_socket->bind(*(mp_S09_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S10_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S10_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S10_AXI' transactor parameters
    xsc::common_cpp::properties S10_AXI_transactor_param_props;
    S10_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S10_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S10_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S10_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S10_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S10_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S10_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S10_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S10_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S10_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S10_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S10_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S10_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S10_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S10_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S10_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S10_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S10_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S10_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S10_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S10_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S10_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S10_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S10_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S10_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S10_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S10_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S10_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S10_AXI_transactor", S10_AXI_transactor_param_props);

    // S10_AXI' transactor ports

    mp_S10_AXI_transactor->AWID(S10_AXI_awid);
    mp_S10_AXI_transactor->AWADDR(S10_AXI_awaddr);
    mp_S10_AXI_transactor->AWLEN(S10_AXI_awlen);
    mp_S10_AXI_transactor->AWSIZE(S10_AXI_awsize);
    mp_S10_AXI_transactor->AWBURST(S10_AXI_awburst);
    mp_S10_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S10_AXI_awlock_converter");
    mp_S10_AXI_awlock_converter->vector_in(S10_AXI_awlock);
    mp_S10_AXI_awlock_converter->scalar_out(m_S10_AXI_awlock_converter_signal);
    mp_S10_AXI_transactor->AWLOCK(m_S10_AXI_awlock_converter_signal);
    mp_S10_AXI_transactor->AWCACHE(S10_AXI_awcache);
    mp_S10_AXI_transactor->AWPROT(S10_AXI_awprot);
    mp_S10_AXI_transactor->AWQOS(S10_AXI_awqos);
    mp_S10_AXI_transactor->AWVALID(S10_AXI_awvalid);
    mp_S10_AXI_transactor->AWREADY(S10_AXI_awready);
    mp_S10_AXI_transactor->WDATA(S10_AXI_wdata);
    mp_S10_AXI_transactor->WSTRB(S10_AXI_wstrb);
    mp_S10_AXI_transactor->WLAST(S10_AXI_wlast);
    mp_S10_AXI_transactor->WVALID(S10_AXI_wvalid);
    mp_S10_AXI_transactor->WREADY(S10_AXI_wready);
    mp_S10_AXI_transactor->BID(S10_AXI_bid);
    mp_S10_AXI_transactor->BRESP(S10_AXI_bresp);
    mp_S10_AXI_transactor->BVALID(S10_AXI_bvalid);
    mp_S10_AXI_transactor->BREADY(S10_AXI_bready);
    mp_S10_AXI_transactor->ARID(S10_AXI_arid);
    mp_S10_AXI_transactor->ARADDR(S10_AXI_araddr);
    mp_S10_AXI_transactor->ARLEN(S10_AXI_arlen);
    mp_S10_AXI_transactor->ARSIZE(S10_AXI_arsize);
    mp_S10_AXI_transactor->ARBURST(S10_AXI_arburst);
    mp_S10_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S10_AXI_arlock_converter");
    mp_S10_AXI_arlock_converter->vector_in(S10_AXI_arlock);
    mp_S10_AXI_arlock_converter->scalar_out(m_S10_AXI_arlock_converter_signal);
    mp_S10_AXI_transactor->ARLOCK(m_S10_AXI_arlock_converter_signal);
    mp_S10_AXI_transactor->ARCACHE(S10_AXI_arcache);
    mp_S10_AXI_transactor->ARPROT(S10_AXI_arprot);
    mp_S10_AXI_transactor->ARQOS(S10_AXI_arqos);
    mp_S10_AXI_transactor->ARVALID(S10_AXI_arvalid);
    mp_S10_AXI_transactor->ARREADY(S10_AXI_arready);
    mp_S10_AXI_transactor->RID(S10_AXI_rid);
    mp_S10_AXI_transactor->RDATA(S10_AXI_rdata);
    mp_S10_AXI_transactor->RRESP(S10_AXI_rresp);
    mp_S10_AXI_transactor->RLAST(S10_AXI_rlast);
    mp_S10_AXI_transactor->RVALID(S10_AXI_rvalid);
    mp_S10_AXI_transactor->RREADY(S10_AXI_rready);
    mp_S10_AXI_transactor->CLK(aclk);
    mp_S10_AXI_transactor->RST(aresetn);

    // S10_AXI' transactor sockets

    mp_impl->S10_AXI_tlm_aximm_read_socket->bind(*(mp_S10_AXI_transactor->rd_socket));
    mp_impl->S10_AXI_tlm_aximm_write_socket->bind(*(mp_S10_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S11_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S11_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S11_AXI' transactor parameters
    xsc::common_cpp::properties S11_AXI_transactor_param_props;
    S11_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S11_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S11_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S11_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S11_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S11_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S11_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S11_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S11_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S11_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S11_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S11_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S11_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S11_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S11_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S11_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S11_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S11_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S11_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S11_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S11_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S11_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S11_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S11_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S11_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S11_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S11_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S11_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S11_AXI_transactor", S11_AXI_transactor_param_props);

    // S11_AXI' transactor ports

    mp_S11_AXI_transactor->AWID(S11_AXI_awid);
    mp_S11_AXI_transactor->AWADDR(S11_AXI_awaddr);
    mp_S11_AXI_transactor->AWLEN(S11_AXI_awlen);
    mp_S11_AXI_transactor->AWSIZE(S11_AXI_awsize);
    mp_S11_AXI_transactor->AWBURST(S11_AXI_awburst);
    mp_S11_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S11_AXI_awlock_converter");
    mp_S11_AXI_awlock_converter->vector_in(S11_AXI_awlock);
    mp_S11_AXI_awlock_converter->scalar_out(m_S11_AXI_awlock_converter_signal);
    mp_S11_AXI_transactor->AWLOCK(m_S11_AXI_awlock_converter_signal);
    mp_S11_AXI_transactor->AWCACHE(S11_AXI_awcache);
    mp_S11_AXI_transactor->AWPROT(S11_AXI_awprot);
    mp_S11_AXI_transactor->AWQOS(S11_AXI_awqos);
    mp_S11_AXI_transactor->AWVALID(S11_AXI_awvalid);
    mp_S11_AXI_transactor->AWREADY(S11_AXI_awready);
    mp_S11_AXI_transactor->WDATA(S11_AXI_wdata);
    mp_S11_AXI_transactor->WSTRB(S11_AXI_wstrb);
    mp_S11_AXI_transactor->WLAST(S11_AXI_wlast);
    mp_S11_AXI_transactor->WVALID(S11_AXI_wvalid);
    mp_S11_AXI_transactor->WREADY(S11_AXI_wready);
    mp_S11_AXI_transactor->BID(S11_AXI_bid);
    mp_S11_AXI_transactor->BRESP(S11_AXI_bresp);
    mp_S11_AXI_transactor->BVALID(S11_AXI_bvalid);
    mp_S11_AXI_transactor->BREADY(S11_AXI_bready);
    mp_S11_AXI_transactor->ARID(S11_AXI_arid);
    mp_S11_AXI_transactor->ARADDR(S11_AXI_araddr);
    mp_S11_AXI_transactor->ARLEN(S11_AXI_arlen);
    mp_S11_AXI_transactor->ARSIZE(S11_AXI_arsize);
    mp_S11_AXI_transactor->ARBURST(S11_AXI_arburst);
    mp_S11_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S11_AXI_arlock_converter");
    mp_S11_AXI_arlock_converter->vector_in(S11_AXI_arlock);
    mp_S11_AXI_arlock_converter->scalar_out(m_S11_AXI_arlock_converter_signal);
    mp_S11_AXI_transactor->ARLOCK(m_S11_AXI_arlock_converter_signal);
    mp_S11_AXI_transactor->ARCACHE(S11_AXI_arcache);
    mp_S11_AXI_transactor->ARPROT(S11_AXI_arprot);
    mp_S11_AXI_transactor->ARQOS(S11_AXI_arqos);
    mp_S11_AXI_transactor->ARVALID(S11_AXI_arvalid);
    mp_S11_AXI_transactor->ARREADY(S11_AXI_arready);
    mp_S11_AXI_transactor->RID(S11_AXI_rid);
    mp_S11_AXI_transactor->RDATA(S11_AXI_rdata);
    mp_S11_AXI_transactor->RRESP(S11_AXI_rresp);
    mp_S11_AXI_transactor->RLAST(S11_AXI_rlast);
    mp_S11_AXI_transactor->RVALID(S11_AXI_rvalid);
    mp_S11_AXI_transactor->RREADY(S11_AXI_rready);
    mp_S11_AXI_transactor->CLK(aclk);
    mp_S11_AXI_transactor->RST(aresetn);

    // S11_AXI' transactor sockets

    mp_impl->S11_AXI_tlm_aximm_read_socket->bind(*(mp_S11_AXI_transactor->rd_socket));
    mp_impl->S11_AXI_tlm_aximm_write_socket->bind(*(mp_S11_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S12_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S12_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S12_AXI' transactor parameters
    xsc::common_cpp::properties S12_AXI_transactor_param_props;
    S12_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S12_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S12_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S12_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S12_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S12_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S12_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S12_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S12_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S12_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S12_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S12_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S12_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S12_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S12_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S12_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S12_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S12_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S12_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S12_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S12_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S12_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S12_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S12_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S12_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S12_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S12_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S12_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S12_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S12_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S12_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S12_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S12_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S12_AXI_transactor", S12_AXI_transactor_param_props);

    // S12_AXI' transactor ports

    mp_S12_AXI_transactor->AWID(S12_AXI_awid);
    mp_S12_AXI_transactor->AWADDR(S12_AXI_awaddr);
    mp_S12_AXI_transactor->AWLEN(S12_AXI_awlen);
    mp_S12_AXI_transactor->AWSIZE(S12_AXI_awsize);
    mp_S12_AXI_transactor->AWBURST(S12_AXI_awburst);
    mp_S12_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S12_AXI_awlock_converter");
    mp_S12_AXI_awlock_converter->vector_in(S12_AXI_awlock);
    mp_S12_AXI_awlock_converter->scalar_out(m_S12_AXI_awlock_converter_signal);
    mp_S12_AXI_transactor->AWLOCK(m_S12_AXI_awlock_converter_signal);
    mp_S12_AXI_transactor->AWCACHE(S12_AXI_awcache);
    mp_S12_AXI_transactor->AWPROT(S12_AXI_awprot);
    mp_S12_AXI_transactor->AWQOS(S12_AXI_awqos);
    mp_S12_AXI_transactor->AWVALID(S12_AXI_awvalid);
    mp_S12_AXI_transactor->AWREADY(S12_AXI_awready);
    mp_S12_AXI_transactor->WDATA(S12_AXI_wdata);
    mp_S12_AXI_transactor->WSTRB(S12_AXI_wstrb);
    mp_S12_AXI_transactor->WLAST(S12_AXI_wlast);
    mp_S12_AXI_transactor->WVALID(S12_AXI_wvalid);
    mp_S12_AXI_transactor->WREADY(S12_AXI_wready);
    mp_S12_AXI_transactor->BID(S12_AXI_bid);
    mp_S12_AXI_transactor->BRESP(S12_AXI_bresp);
    mp_S12_AXI_transactor->BVALID(S12_AXI_bvalid);
    mp_S12_AXI_transactor->BREADY(S12_AXI_bready);
    mp_S12_AXI_transactor->ARID(S12_AXI_arid);
    mp_S12_AXI_transactor->ARADDR(S12_AXI_araddr);
    mp_S12_AXI_transactor->ARLEN(S12_AXI_arlen);
    mp_S12_AXI_transactor->ARSIZE(S12_AXI_arsize);
    mp_S12_AXI_transactor->ARBURST(S12_AXI_arburst);
    mp_S12_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S12_AXI_arlock_converter");
    mp_S12_AXI_arlock_converter->vector_in(S12_AXI_arlock);
    mp_S12_AXI_arlock_converter->scalar_out(m_S12_AXI_arlock_converter_signal);
    mp_S12_AXI_transactor->ARLOCK(m_S12_AXI_arlock_converter_signal);
    mp_S12_AXI_transactor->ARCACHE(S12_AXI_arcache);
    mp_S12_AXI_transactor->ARPROT(S12_AXI_arprot);
    mp_S12_AXI_transactor->ARQOS(S12_AXI_arqos);
    mp_S12_AXI_transactor->ARVALID(S12_AXI_arvalid);
    mp_S12_AXI_transactor->ARREADY(S12_AXI_arready);
    mp_S12_AXI_transactor->RID(S12_AXI_rid);
    mp_S12_AXI_transactor->RDATA(S12_AXI_rdata);
    mp_S12_AXI_transactor->RRESP(S12_AXI_rresp);
    mp_S12_AXI_transactor->RLAST(S12_AXI_rlast);
    mp_S12_AXI_transactor->RVALID(S12_AXI_rvalid);
    mp_S12_AXI_transactor->RREADY(S12_AXI_rready);
    mp_S12_AXI_transactor->CLK(aclk);
    mp_S12_AXI_transactor->RST(aresetn);

    // S12_AXI' transactor sockets

    mp_impl->S12_AXI_tlm_aximm_read_socket->bind(*(mp_S12_AXI_transactor->rd_socket));
    mp_impl->S12_AXI_tlm_aximm_write_socket->bind(*(mp_S12_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S13_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S13_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S13_AXI' transactor parameters
    xsc::common_cpp::properties S13_AXI_transactor_param_props;
    S13_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S13_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S13_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S13_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S13_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S13_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S13_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S13_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S13_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S13_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S13_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S13_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S13_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S13_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S13_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S13_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S13_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S13_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S13_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S13_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S13_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S13_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S13_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S13_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S13_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S13_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S13_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S13_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S13_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S13_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S13_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S13_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S13_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S13_AXI_transactor", S13_AXI_transactor_param_props);

    // S13_AXI' transactor ports

    mp_S13_AXI_transactor->AWID(S13_AXI_awid);
    mp_S13_AXI_transactor->AWADDR(S13_AXI_awaddr);
    mp_S13_AXI_transactor->AWLEN(S13_AXI_awlen);
    mp_S13_AXI_transactor->AWSIZE(S13_AXI_awsize);
    mp_S13_AXI_transactor->AWBURST(S13_AXI_awburst);
    mp_S13_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S13_AXI_awlock_converter");
    mp_S13_AXI_awlock_converter->vector_in(S13_AXI_awlock);
    mp_S13_AXI_awlock_converter->scalar_out(m_S13_AXI_awlock_converter_signal);
    mp_S13_AXI_transactor->AWLOCK(m_S13_AXI_awlock_converter_signal);
    mp_S13_AXI_transactor->AWCACHE(S13_AXI_awcache);
    mp_S13_AXI_transactor->AWPROT(S13_AXI_awprot);
    mp_S13_AXI_transactor->AWQOS(S13_AXI_awqos);
    mp_S13_AXI_transactor->AWVALID(S13_AXI_awvalid);
    mp_S13_AXI_transactor->AWREADY(S13_AXI_awready);
    mp_S13_AXI_transactor->WDATA(S13_AXI_wdata);
    mp_S13_AXI_transactor->WSTRB(S13_AXI_wstrb);
    mp_S13_AXI_transactor->WLAST(S13_AXI_wlast);
    mp_S13_AXI_transactor->WVALID(S13_AXI_wvalid);
    mp_S13_AXI_transactor->WREADY(S13_AXI_wready);
    mp_S13_AXI_transactor->BID(S13_AXI_bid);
    mp_S13_AXI_transactor->BRESP(S13_AXI_bresp);
    mp_S13_AXI_transactor->BVALID(S13_AXI_bvalid);
    mp_S13_AXI_transactor->BREADY(S13_AXI_bready);
    mp_S13_AXI_transactor->ARID(S13_AXI_arid);
    mp_S13_AXI_transactor->ARADDR(S13_AXI_araddr);
    mp_S13_AXI_transactor->ARLEN(S13_AXI_arlen);
    mp_S13_AXI_transactor->ARSIZE(S13_AXI_arsize);
    mp_S13_AXI_transactor->ARBURST(S13_AXI_arburst);
    mp_S13_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S13_AXI_arlock_converter");
    mp_S13_AXI_arlock_converter->vector_in(S13_AXI_arlock);
    mp_S13_AXI_arlock_converter->scalar_out(m_S13_AXI_arlock_converter_signal);
    mp_S13_AXI_transactor->ARLOCK(m_S13_AXI_arlock_converter_signal);
    mp_S13_AXI_transactor->ARCACHE(S13_AXI_arcache);
    mp_S13_AXI_transactor->ARPROT(S13_AXI_arprot);
    mp_S13_AXI_transactor->ARQOS(S13_AXI_arqos);
    mp_S13_AXI_transactor->ARVALID(S13_AXI_arvalid);
    mp_S13_AXI_transactor->ARREADY(S13_AXI_arready);
    mp_S13_AXI_transactor->RID(S13_AXI_rid);
    mp_S13_AXI_transactor->RDATA(S13_AXI_rdata);
    mp_S13_AXI_transactor->RRESP(S13_AXI_rresp);
    mp_S13_AXI_transactor->RLAST(S13_AXI_rlast);
    mp_S13_AXI_transactor->RVALID(S13_AXI_rvalid);
    mp_S13_AXI_transactor->RREADY(S13_AXI_rready);
    mp_S13_AXI_transactor->CLK(aclk);
    mp_S13_AXI_transactor->RST(aresetn);

    // S13_AXI' transactor sockets

    mp_impl->S13_AXI_tlm_aximm_read_socket->bind(*(mp_S13_AXI_transactor->rd_socket));
    mp_impl->S13_AXI_tlm_aximm_write_socket->bind(*(mp_S13_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S14_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S14_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S14_AXI' transactor parameters
    xsc::common_cpp::properties S14_AXI_transactor_param_props;
    S14_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S14_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S14_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S14_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S14_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S14_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S14_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S14_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S14_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S14_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S14_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S14_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S14_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S14_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S14_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S14_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S14_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S14_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S14_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S14_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S14_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S14_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S14_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S14_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S14_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S14_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S14_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S14_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S14_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S14_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S14_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S14_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S14_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S14_AXI_transactor", S14_AXI_transactor_param_props);

    // S14_AXI' transactor ports

    mp_S14_AXI_transactor->AWID(S14_AXI_awid);
    mp_S14_AXI_transactor->AWADDR(S14_AXI_awaddr);
    mp_S14_AXI_transactor->AWLEN(S14_AXI_awlen);
    mp_S14_AXI_transactor->AWSIZE(S14_AXI_awsize);
    mp_S14_AXI_transactor->AWBURST(S14_AXI_awburst);
    mp_S14_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S14_AXI_awlock_converter");
    mp_S14_AXI_awlock_converter->vector_in(S14_AXI_awlock);
    mp_S14_AXI_awlock_converter->scalar_out(m_S14_AXI_awlock_converter_signal);
    mp_S14_AXI_transactor->AWLOCK(m_S14_AXI_awlock_converter_signal);
    mp_S14_AXI_transactor->AWCACHE(S14_AXI_awcache);
    mp_S14_AXI_transactor->AWPROT(S14_AXI_awprot);
    mp_S14_AXI_transactor->AWQOS(S14_AXI_awqos);
    mp_S14_AXI_transactor->AWVALID(S14_AXI_awvalid);
    mp_S14_AXI_transactor->AWREADY(S14_AXI_awready);
    mp_S14_AXI_transactor->WDATA(S14_AXI_wdata);
    mp_S14_AXI_transactor->WSTRB(S14_AXI_wstrb);
    mp_S14_AXI_transactor->WLAST(S14_AXI_wlast);
    mp_S14_AXI_transactor->WVALID(S14_AXI_wvalid);
    mp_S14_AXI_transactor->WREADY(S14_AXI_wready);
    mp_S14_AXI_transactor->BID(S14_AXI_bid);
    mp_S14_AXI_transactor->BRESP(S14_AXI_bresp);
    mp_S14_AXI_transactor->BVALID(S14_AXI_bvalid);
    mp_S14_AXI_transactor->BREADY(S14_AXI_bready);
    mp_S14_AXI_transactor->ARID(S14_AXI_arid);
    mp_S14_AXI_transactor->ARADDR(S14_AXI_araddr);
    mp_S14_AXI_transactor->ARLEN(S14_AXI_arlen);
    mp_S14_AXI_transactor->ARSIZE(S14_AXI_arsize);
    mp_S14_AXI_transactor->ARBURST(S14_AXI_arburst);
    mp_S14_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S14_AXI_arlock_converter");
    mp_S14_AXI_arlock_converter->vector_in(S14_AXI_arlock);
    mp_S14_AXI_arlock_converter->scalar_out(m_S14_AXI_arlock_converter_signal);
    mp_S14_AXI_transactor->ARLOCK(m_S14_AXI_arlock_converter_signal);
    mp_S14_AXI_transactor->ARCACHE(S14_AXI_arcache);
    mp_S14_AXI_transactor->ARPROT(S14_AXI_arprot);
    mp_S14_AXI_transactor->ARQOS(S14_AXI_arqos);
    mp_S14_AXI_transactor->ARVALID(S14_AXI_arvalid);
    mp_S14_AXI_transactor->ARREADY(S14_AXI_arready);
    mp_S14_AXI_transactor->RID(S14_AXI_rid);
    mp_S14_AXI_transactor->RDATA(S14_AXI_rdata);
    mp_S14_AXI_transactor->RRESP(S14_AXI_rresp);
    mp_S14_AXI_transactor->RLAST(S14_AXI_rlast);
    mp_S14_AXI_transactor->RVALID(S14_AXI_rvalid);
    mp_S14_AXI_transactor->RREADY(S14_AXI_rready);
    mp_S14_AXI_transactor->CLK(aclk);
    mp_S14_AXI_transactor->RST(aresetn);

    // S14_AXI' transactor sockets

    mp_impl->S14_AXI_tlm_aximm_read_socket->bind(*(mp_S14_AXI_transactor->rd_socket));
    mp_impl->S14_AXI_tlm_aximm_write_socket->bind(*(mp_S14_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S15_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S15_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S15_AXI' transactor parameters
    xsc::common_cpp::properties S15_AXI_transactor_param_props;
    S15_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S15_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S15_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S15_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S15_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S15_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S15_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S15_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S15_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S15_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S15_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S15_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S15_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S15_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S15_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S15_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S15_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S15_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S15_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S15_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S15_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S15_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S15_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S15_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S15_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S15_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S15_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S15_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S15_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S15_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S15_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S15_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S15_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S15_AXI_transactor", S15_AXI_transactor_param_props);

    // S15_AXI' transactor ports

    mp_S15_AXI_transactor->AWID(S15_AXI_awid);
    mp_S15_AXI_transactor->AWADDR(S15_AXI_awaddr);
    mp_S15_AXI_transactor->AWLEN(S15_AXI_awlen);
    mp_S15_AXI_transactor->AWSIZE(S15_AXI_awsize);
    mp_S15_AXI_transactor->AWBURST(S15_AXI_awburst);
    mp_S15_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S15_AXI_awlock_converter");
    mp_S15_AXI_awlock_converter->vector_in(S15_AXI_awlock);
    mp_S15_AXI_awlock_converter->scalar_out(m_S15_AXI_awlock_converter_signal);
    mp_S15_AXI_transactor->AWLOCK(m_S15_AXI_awlock_converter_signal);
    mp_S15_AXI_transactor->AWCACHE(S15_AXI_awcache);
    mp_S15_AXI_transactor->AWPROT(S15_AXI_awprot);
    mp_S15_AXI_transactor->AWQOS(S15_AXI_awqos);
    mp_S15_AXI_transactor->AWVALID(S15_AXI_awvalid);
    mp_S15_AXI_transactor->AWREADY(S15_AXI_awready);
    mp_S15_AXI_transactor->WDATA(S15_AXI_wdata);
    mp_S15_AXI_transactor->WSTRB(S15_AXI_wstrb);
    mp_S15_AXI_transactor->WLAST(S15_AXI_wlast);
    mp_S15_AXI_transactor->WVALID(S15_AXI_wvalid);
    mp_S15_AXI_transactor->WREADY(S15_AXI_wready);
    mp_S15_AXI_transactor->BID(S15_AXI_bid);
    mp_S15_AXI_transactor->BRESP(S15_AXI_bresp);
    mp_S15_AXI_transactor->BVALID(S15_AXI_bvalid);
    mp_S15_AXI_transactor->BREADY(S15_AXI_bready);
    mp_S15_AXI_transactor->ARID(S15_AXI_arid);
    mp_S15_AXI_transactor->ARADDR(S15_AXI_araddr);
    mp_S15_AXI_transactor->ARLEN(S15_AXI_arlen);
    mp_S15_AXI_transactor->ARSIZE(S15_AXI_arsize);
    mp_S15_AXI_transactor->ARBURST(S15_AXI_arburst);
    mp_S15_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S15_AXI_arlock_converter");
    mp_S15_AXI_arlock_converter->vector_in(S15_AXI_arlock);
    mp_S15_AXI_arlock_converter->scalar_out(m_S15_AXI_arlock_converter_signal);
    mp_S15_AXI_transactor->ARLOCK(m_S15_AXI_arlock_converter_signal);
    mp_S15_AXI_transactor->ARCACHE(S15_AXI_arcache);
    mp_S15_AXI_transactor->ARPROT(S15_AXI_arprot);
    mp_S15_AXI_transactor->ARQOS(S15_AXI_arqos);
    mp_S15_AXI_transactor->ARVALID(S15_AXI_arvalid);
    mp_S15_AXI_transactor->ARREADY(S15_AXI_arready);
    mp_S15_AXI_transactor->RID(S15_AXI_rid);
    mp_S15_AXI_transactor->RDATA(S15_AXI_rdata);
    mp_S15_AXI_transactor->RRESP(S15_AXI_rresp);
    mp_S15_AXI_transactor->RLAST(S15_AXI_rlast);
    mp_S15_AXI_transactor->RVALID(S15_AXI_rvalid);
    mp_S15_AXI_transactor->RREADY(S15_AXI_rready);
    mp_S15_AXI_transactor->CLK(aclk);
    mp_S15_AXI_transactor->RST(aresetn);

    // S15_AXI' transactor sockets

    mp_impl->S15_AXI_tlm_aximm_read_socket->bind(*(mp_S15_AXI_transactor->rd_socket));
    mp_impl->S15_AXI_tlm_aximm_write_socket->bind(*(mp_S15_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "M00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXI' transactor parameters
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,34,1,1,1,1,1,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);

    // M00_AXI' transactor ports

    mp_M00_AXI_transactor->AWADDR(M00_AXI_awaddr);
    mp_M00_AXI_transactor->AWLEN(M00_AXI_awlen);
    mp_M00_AXI_transactor->AWSIZE(M00_AXI_awsize);
    mp_M00_AXI_transactor->AWBURST(M00_AXI_awburst);
    mp_M00_AXI_awlock_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_awlock_converter");
    mp_M00_AXI_awlock_converter->scalar_in(m_M00_AXI_awlock_converter_signal);
    mp_M00_AXI_awlock_converter->vector_out(M00_AXI_awlock);
    mp_M00_AXI_transactor->AWLOCK(m_M00_AXI_awlock_converter_signal);
    mp_M00_AXI_transactor->AWCACHE(M00_AXI_awcache);
    mp_M00_AXI_transactor->AWPROT(M00_AXI_awprot);
    mp_M00_AXI_transactor->AWQOS(M00_AXI_awqos);
    mp_M00_AXI_transactor->AWVALID(M00_AXI_awvalid);
    mp_M00_AXI_transactor->AWREADY(M00_AXI_awready);
    mp_M00_AXI_transactor->WDATA(M00_AXI_wdata);
    mp_M00_AXI_transactor->WSTRB(M00_AXI_wstrb);
    mp_M00_AXI_transactor->WLAST(M00_AXI_wlast);
    mp_M00_AXI_transactor->WVALID(M00_AXI_wvalid);
    mp_M00_AXI_transactor->WREADY(M00_AXI_wready);
    mp_M00_AXI_transactor->BRESP(M00_AXI_bresp);
    mp_M00_AXI_transactor->BVALID(M00_AXI_bvalid);
    mp_M00_AXI_transactor->BREADY(M00_AXI_bready);
    mp_M00_AXI_transactor->ARADDR(M00_AXI_araddr);
    mp_M00_AXI_transactor->ARLEN(M00_AXI_arlen);
    mp_M00_AXI_transactor->ARSIZE(M00_AXI_arsize);
    mp_M00_AXI_transactor->ARBURST(M00_AXI_arburst);
    mp_M00_AXI_arlock_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_arlock_converter");
    mp_M00_AXI_arlock_converter->scalar_in(m_M00_AXI_arlock_converter_signal);
    mp_M00_AXI_arlock_converter->vector_out(M00_AXI_arlock);
    mp_M00_AXI_transactor->ARLOCK(m_M00_AXI_arlock_converter_signal);
    mp_M00_AXI_transactor->ARCACHE(M00_AXI_arcache);
    mp_M00_AXI_transactor->ARPROT(M00_AXI_arprot);
    mp_M00_AXI_transactor->ARQOS(M00_AXI_arqos);
    mp_M00_AXI_transactor->ARVALID(M00_AXI_arvalid);
    mp_M00_AXI_transactor->ARREADY(M00_AXI_arready);
    mp_M00_AXI_transactor->RDATA(M00_AXI_rdata);
    mp_M00_AXI_transactor->RRESP(M00_AXI_rresp);
    mp_M00_AXI_transactor->RLAST(M00_AXI_rlast);
    mp_M00_AXI_transactor->RVALID(M00_AXI_rvalid);
    mp_M00_AXI_transactor->RREADY(M00_AXI_rready);
    mp_M00_AXI_transactor->CLK(aclk);
    mp_M00_AXI_transactor->RST(aresetn);

    // M00_AXI' transactor sockets

    mp_impl->M00_AXI_tlm_aximm_read_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->M00_AXI_tlm_aximm_write_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
MemoryInterfacesVIP_smartconnect_0_0::MemoryInterfacesVIP_smartconnect_0_0(const sc_core::sc_module_name& nm) : MemoryInterfacesVIP_smartconnect_0_0_sc(nm), aclk("aclk"), aresetn("aresetn"), S00_AXI_awid("S00_AXI_awid"), S00_AXI_awaddr("S00_AXI_awaddr"), S00_AXI_awlen("S00_AXI_awlen"), S00_AXI_awsize("S00_AXI_awsize"), S00_AXI_awburst("S00_AXI_awburst"), S00_AXI_awlock("S00_AXI_awlock"), S00_AXI_awcache("S00_AXI_awcache"), S00_AXI_awprot("S00_AXI_awprot"), S00_AXI_awqos("S00_AXI_awqos"), S00_AXI_awvalid("S00_AXI_awvalid"), S00_AXI_awready("S00_AXI_awready"), S00_AXI_wdata("S00_AXI_wdata"), S00_AXI_wstrb("S00_AXI_wstrb"), S00_AXI_wlast("S00_AXI_wlast"), S00_AXI_wvalid("S00_AXI_wvalid"), S00_AXI_wready("S00_AXI_wready"), S00_AXI_bid("S00_AXI_bid"), S00_AXI_bresp("S00_AXI_bresp"), S00_AXI_bvalid("S00_AXI_bvalid"), S00_AXI_bready("S00_AXI_bready"), S00_AXI_arid("S00_AXI_arid"), S00_AXI_araddr("S00_AXI_araddr"), S00_AXI_arlen("S00_AXI_arlen"), S00_AXI_arsize("S00_AXI_arsize"), S00_AXI_arburst("S00_AXI_arburst"), S00_AXI_arlock("S00_AXI_arlock"), S00_AXI_arcache("S00_AXI_arcache"), S00_AXI_arprot("S00_AXI_arprot"), S00_AXI_arqos("S00_AXI_arqos"), S00_AXI_arvalid("S00_AXI_arvalid"), S00_AXI_arready("S00_AXI_arready"), S00_AXI_rid("S00_AXI_rid"), S00_AXI_rdata("S00_AXI_rdata"), S00_AXI_rresp("S00_AXI_rresp"), S00_AXI_rlast("S00_AXI_rlast"), S00_AXI_rvalid("S00_AXI_rvalid"), S00_AXI_rready("S00_AXI_rready"), S01_AXI_awid("S01_AXI_awid"), S01_AXI_awaddr("S01_AXI_awaddr"), S01_AXI_awlen("S01_AXI_awlen"), S01_AXI_awsize("S01_AXI_awsize"), S01_AXI_awburst("S01_AXI_awburst"), S01_AXI_awlock("S01_AXI_awlock"), S01_AXI_awcache("S01_AXI_awcache"), S01_AXI_awprot("S01_AXI_awprot"), S01_AXI_awqos("S01_AXI_awqos"), S01_AXI_awvalid("S01_AXI_awvalid"), S01_AXI_awready("S01_AXI_awready"), S01_AXI_wdata("S01_AXI_wdata"), S01_AXI_wstrb("S01_AXI_wstrb"), S01_AXI_wlast("S01_AXI_wlast"), S01_AXI_wvalid("S01_AXI_wvalid"), S01_AXI_wready("S01_AXI_wready"), S01_AXI_bid("S01_AXI_bid"), S01_AXI_bresp("S01_AXI_bresp"), S01_AXI_bvalid("S01_AXI_bvalid"), S01_AXI_bready("S01_AXI_bready"), S01_AXI_arid("S01_AXI_arid"), S01_AXI_araddr("S01_AXI_araddr"), S01_AXI_arlen("S01_AXI_arlen"), S01_AXI_arsize("S01_AXI_arsize"), S01_AXI_arburst("S01_AXI_arburst"), S01_AXI_arlock("S01_AXI_arlock"), S01_AXI_arcache("S01_AXI_arcache"), S01_AXI_arprot("S01_AXI_arprot"), S01_AXI_arqos("S01_AXI_arqos"), S01_AXI_arvalid("S01_AXI_arvalid"), S01_AXI_arready("S01_AXI_arready"), S01_AXI_rid("S01_AXI_rid"), S01_AXI_rdata("S01_AXI_rdata"), S01_AXI_rresp("S01_AXI_rresp"), S01_AXI_rlast("S01_AXI_rlast"), S01_AXI_rvalid("S01_AXI_rvalid"), S01_AXI_rready("S01_AXI_rready"), S02_AXI_awid("S02_AXI_awid"), S02_AXI_awaddr("S02_AXI_awaddr"), S02_AXI_awlen("S02_AXI_awlen"), S02_AXI_awsize("S02_AXI_awsize"), S02_AXI_awburst("S02_AXI_awburst"), S02_AXI_awlock("S02_AXI_awlock"), S02_AXI_awcache("S02_AXI_awcache"), S02_AXI_awprot("S02_AXI_awprot"), S02_AXI_awqos("S02_AXI_awqos"), S02_AXI_awvalid("S02_AXI_awvalid"), S02_AXI_awready("S02_AXI_awready"), S02_AXI_wdata("S02_AXI_wdata"), S02_AXI_wstrb("S02_AXI_wstrb"), S02_AXI_wlast("S02_AXI_wlast"), S02_AXI_wvalid("S02_AXI_wvalid"), S02_AXI_wready("S02_AXI_wready"), S02_AXI_bid("S02_AXI_bid"), S02_AXI_bresp("S02_AXI_bresp"), S02_AXI_bvalid("S02_AXI_bvalid"), S02_AXI_bready("S02_AXI_bready"), S02_AXI_arid("S02_AXI_arid"), S02_AXI_araddr("S02_AXI_araddr"), S02_AXI_arlen("S02_AXI_arlen"), S02_AXI_arsize("S02_AXI_arsize"), S02_AXI_arburst("S02_AXI_arburst"), S02_AXI_arlock("S02_AXI_arlock"), S02_AXI_arcache("S02_AXI_arcache"), S02_AXI_arprot("S02_AXI_arprot"), S02_AXI_arqos("S02_AXI_arqos"), S02_AXI_arvalid("S02_AXI_arvalid"), S02_AXI_arready("S02_AXI_arready"), S02_AXI_rid("S02_AXI_rid"), S02_AXI_rdata("S02_AXI_rdata"), S02_AXI_rresp("S02_AXI_rresp"), S02_AXI_rlast("S02_AXI_rlast"), S02_AXI_rvalid("S02_AXI_rvalid"), S02_AXI_rready("S02_AXI_rready"), S03_AXI_awid("S03_AXI_awid"), S03_AXI_awaddr("S03_AXI_awaddr"), S03_AXI_awlen("S03_AXI_awlen"), S03_AXI_awsize("S03_AXI_awsize"), S03_AXI_awburst("S03_AXI_awburst"), S03_AXI_awlock("S03_AXI_awlock"), S03_AXI_awcache("S03_AXI_awcache"), S03_AXI_awprot("S03_AXI_awprot"), S03_AXI_awqos("S03_AXI_awqos"), S03_AXI_awvalid("S03_AXI_awvalid"), S03_AXI_awready("S03_AXI_awready"), S03_AXI_wdata("S03_AXI_wdata"), S03_AXI_wstrb("S03_AXI_wstrb"), S03_AXI_wlast("S03_AXI_wlast"), S03_AXI_wvalid("S03_AXI_wvalid"), S03_AXI_wready("S03_AXI_wready"), S03_AXI_bid("S03_AXI_bid"), S03_AXI_bresp("S03_AXI_bresp"), S03_AXI_bvalid("S03_AXI_bvalid"), S03_AXI_bready("S03_AXI_bready"), S03_AXI_arid("S03_AXI_arid"), S03_AXI_araddr("S03_AXI_araddr"), S03_AXI_arlen("S03_AXI_arlen"), S03_AXI_arsize("S03_AXI_arsize"), S03_AXI_arburst("S03_AXI_arburst"), S03_AXI_arlock("S03_AXI_arlock"), S03_AXI_arcache("S03_AXI_arcache"), S03_AXI_arprot("S03_AXI_arprot"), S03_AXI_arqos("S03_AXI_arqos"), S03_AXI_arvalid("S03_AXI_arvalid"), S03_AXI_arready("S03_AXI_arready"), S03_AXI_rid("S03_AXI_rid"), S03_AXI_rdata("S03_AXI_rdata"), S03_AXI_rresp("S03_AXI_rresp"), S03_AXI_rlast("S03_AXI_rlast"), S03_AXI_rvalid("S03_AXI_rvalid"), S03_AXI_rready("S03_AXI_rready"), S04_AXI_awid("S04_AXI_awid"), S04_AXI_awaddr("S04_AXI_awaddr"), S04_AXI_awlen("S04_AXI_awlen"), S04_AXI_awsize("S04_AXI_awsize"), S04_AXI_awburst("S04_AXI_awburst"), S04_AXI_awlock("S04_AXI_awlock"), S04_AXI_awcache("S04_AXI_awcache"), S04_AXI_awprot("S04_AXI_awprot"), S04_AXI_awqos("S04_AXI_awqos"), S04_AXI_awvalid("S04_AXI_awvalid"), S04_AXI_awready("S04_AXI_awready"), S04_AXI_wdata("S04_AXI_wdata"), S04_AXI_wstrb("S04_AXI_wstrb"), S04_AXI_wlast("S04_AXI_wlast"), S04_AXI_wvalid("S04_AXI_wvalid"), S04_AXI_wready("S04_AXI_wready"), S04_AXI_bid("S04_AXI_bid"), S04_AXI_bresp("S04_AXI_bresp"), S04_AXI_bvalid("S04_AXI_bvalid"), S04_AXI_bready("S04_AXI_bready"), S04_AXI_arid("S04_AXI_arid"), S04_AXI_araddr("S04_AXI_araddr"), S04_AXI_arlen("S04_AXI_arlen"), S04_AXI_arsize("S04_AXI_arsize"), S04_AXI_arburst("S04_AXI_arburst"), S04_AXI_arlock("S04_AXI_arlock"), S04_AXI_arcache("S04_AXI_arcache"), S04_AXI_arprot("S04_AXI_arprot"), S04_AXI_arqos("S04_AXI_arqos"), S04_AXI_arvalid("S04_AXI_arvalid"), S04_AXI_arready("S04_AXI_arready"), S04_AXI_rid("S04_AXI_rid"), S04_AXI_rdata("S04_AXI_rdata"), S04_AXI_rresp("S04_AXI_rresp"), S04_AXI_rlast("S04_AXI_rlast"), S04_AXI_rvalid("S04_AXI_rvalid"), S04_AXI_rready("S04_AXI_rready"), S05_AXI_awid("S05_AXI_awid"), S05_AXI_awaddr("S05_AXI_awaddr"), S05_AXI_awlen("S05_AXI_awlen"), S05_AXI_awsize("S05_AXI_awsize"), S05_AXI_awburst("S05_AXI_awburst"), S05_AXI_awlock("S05_AXI_awlock"), S05_AXI_awcache("S05_AXI_awcache"), S05_AXI_awprot("S05_AXI_awprot"), S05_AXI_awqos("S05_AXI_awqos"), S05_AXI_awvalid("S05_AXI_awvalid"), S05_AXI_awready("S05_AXI_awready"), S05_AXI_wdata("S05_AXI_wdata"), S05_AXI_wstrb("S05_AXI_wstrb"), S05_AXI_wlast("S05_AXI_wlast"), S05_AXI_wvalid("S05_AXI_wvalid"), S05_AXI_wready("S05_AXI_wready"), S05_AXI_bid("S05_AXI_bid"), S05_AXI_bresp("S05_AXI_bresp"), S05_AXI_bvalid("S05_AXI_bvalid"), S05_AXI_bready("S05_AXI_bready"), S05_AXI_arid("S05_AXI_arid"), S05_AXI_araddr("S05_AXI_araddr"), S05_AXI_arlen("S05_AXI_arlen"), S05_AXI_arsize("S05_AXI_arsize"), S05_AXI_arburst("S05_AXI_arburst"), S05_AXI_arlock("S05_AXI_arlock"), S05_AXI_arcache("S05_AXI_arcache"), S05_AXI_arprot("S05_AXI_arprot"), S05_AXI_arqos("S05_AXI_arqos"), S05_AXI_arvalid("S05_AXI_arvalid"), S05_AXI_arready("S05_AXI_arready"), S05_AXI_rid("S05_AXI_rid"), S05_AXI_rdata("S05_AXI_rdata"), S05_AXI_rresp("S05_AXI_rresp"), S05_AXI_rlast("S05_AXI_rlast"), S05_AXI_rvalid("S05_AXI_rvalid"), S05_AXI_rready("S05_AXI_rready"), S06_AXI_awid("S06_AXI_awid"), S06_AXI_awaddr("S06_AXI_awaddr"), S06_AXI_awlen("S06_AXI_awlen"), S06_AXI_awsize("S06_AXI_awsize"), S06_AXI_awburst("S06_AXI_awburst"), S06_AXI_awlock("S06_AXI_awlock"), S06_AXI_awcache("S06_AXI_awcache"), S06_AXI_awprot("S06_AXI_awprot"), S06_AXI_awqos("S06_AXI_awqos"), S06_AXI_awvalid("S06_AXI_awvalid"), S06_AXI_awready("S06_AXI_awready"), S06_AXI_wdata("S06_AXI_wdata"), S06_AXI_wstrb("S06_AXI_wstrb"), S06_AXI_wlast("S06_AXI_wlast"), S06_AXI_wvalid("S06_AXI_wvalid"), S06_AXI_wready("S06_AXI_wready"), S06_AXI_bid("S06_AXI_bid"), S06_AXI_bresp("S06_AXI_bresp"), S06_AXI_bvalid("S06_AXI_bvalid"), S06_AXI_bready("S06_AXI_bready"), S06_AXI_arid("S06_AXI_arid"), S06_AXI_araddr("S06_AXI_araddr"), S06_AXI_arlen("S06_AXI_arlen"), S06_AXI_arsize("S06_AXI_arsize"), S06_AXI_arburst("S06_AXI_arburst"), S06_AXI_arlock("S06_AXI_arlock"), S06_AXI_arcache("S06_AXI_arcache"), S06_AXI_arprot("S06_AXI_arprot"), S06_AXI_arqos("S06_AXI_arqos"), S06_AXI_arvalid("S06_AXI_arvalid"), S06_AXI_arready("S06_AXI_arready"), S06_AXI_rid("S06_AXI_rid"), S06_AXI_rdata("S06_AXI_rdata"), S06_AXI_rresp("S06_AXI_rresp"), S06_AXI_rlast("S06_AXI_rlast"), S06_AXI_rvalid("S06_AXI_rvalid"), S06_AXI_rready("S06_AXI_rready"), S07_AXI_awid("S07_AXI_awid"), S07_AXI_awaddr("S07_AXI_awaddr"), S07_AXI_awlen("S07_AXI_awlen"), S07_AXI_awsize("S07_AXI_awsize"), S07_AXI_awburst("S07_AXI_awburst"), S07_AXI_awlock("S07_AXI_awlock"), S07_AXI_awcache("S07_AXI_awcache"), S07_AXI_awprot("S07_AXI_awprot"), S07_AXI_awqos("S07_AXI_awqos"), S07_AXI_awvalid("S07_AXI_awvalid"), S07_AXI_awready("S07_AXI_awready"), S07_AXI_wdata("S07_AXI_wdata"), S07_AXI_wstrb("S07_AXI_wstrb"), S07_AXI_wlast("S07_AXI_wlast"), S07_AXI_wvalid("S07_AXI_wvalid"), S07_AXI_wready("S07_AXI_wready"), S07_AXI_bid("S07_AXI_bid"), S07_AXI_bresp("S07_AXI_bresp"), S07_AXI_bvalid("S07_AXI_bvalid"), S07_AXI_bready("S07_AXI_bready"), S07_AXI_arid("S07_AXI_arid"), S07_AXI_araddr("S07_AXI_araddr"), S07_AXI_arlen("S07_AXI_arlen"), S07_AXI_arsize("S07_AXI_arsize"), S07_AXI_arburst("S07_AXI_arburst"), S07_AXI_arlock("S07_AXI_arlock"), S07_AXI_arcache("S07_AXI_arcache"), S07_AXI_arprot("S07_AXI_arprot"), S07_AXI_arqos("S07_AXI_arqos"), S07_AXI_arvalid("S07_AXI_arvalid"), S07_AXI_arready("S07_AXI_arready"), S07_AXI_rid("S07_AXI_rid"), S07_AXI_rdata("S07_AXI_rdata"), S07_AXI_rresp("S07_AXI_rresp"), S07_AXI_rlast("S07_AXI_rlast"), S07_AXI_rvalid("S07_AXI_rvalid"), S07_AXI_rready("S07_AXI_rready"), S08_AXI_awid("S08_AXI_awid"), S08_AXI_awaddr("S08_AXI_awaddr"), S08_AXI_awlen("S08_AXI_awlen"), S08_AXI_awsize("S08_AXI_awsize"), S08_AXI_awburst("S08_AXI_awburst"), S08_AXI_awlock("S08_AXI_awlock"), S08_AXI_awcache("S08_AXI_awcache"), S08_AXI_awprot("S08_AXI_awprot"), S08_AXI_awqos("S08_AXI_awqos"), S08_AXI_awvalid("S08_AXI_awvalid"), S08_AXI_awready("S08_AXI_awready"), S08_AXI_wdata("S08_AXI_wdata"), S08_AXI_wstrb("S08_AXI_wstrb"), S08_AXI_wlast("S08_AXI_wlast"), S08_AXI_wvalid("S08_AXI_wvalid"), S08_AXI_wready("S08_AXI_wready"), S08_AXI_bid("S08_AXI_bid"), S08_AXI_bresp("S08_AXI_bresp"), S08_AXI_bvalid("S08_AXI_bvalid"), S08_AXI_bready("S08_AXI_bready"), S08_AXI_arid("S08_AXI_arid"), S08_AXI_araddr("S08_AXI_araddr"), S08_AXI_arlen("S08_AXI_arlen"), S08_AXI_arsize("S08_AXI_arsize"), S08_AXI_arburst("S08_AXI_arburst"), S08_AXI_arlock("S08_AXI_arlock"), S08_AXI_arcache("S08_AXI_arcache"), S08_AXI_arprot("S08_AXI_arprot"), S08_AXI_arqos("S08_AXI_arqos"), S08_AXI_arvalid("S08_AXI_arvalid"), S08_AXI_arready("S08_AXI_arready"), S08_AXI_rid("S08_AXI_rid"), S08_AXI_rdata("S08_AXI_rdata"), S08_AXI_rresp("S08_AXI_rresp"), S08_AXI_rlast("S08_AXI_rlast"), S08_AXI_rvalid("S08_AXI_rvalid"), S08_AXI_rready("S08_AXI_rready"), S09_AXI_awid("S09_AXI_awid"), S09_AXI_awaddr("S09_AXI_awaddr"), S09_AXI_awlen("S09_AXI_awlen"), S09_AXI_awsize("S09_AXI_awsize"), S09_AXI_awburst("S09_AXI_awburst"), S09_AXI_awlock("S09_AXI_awlock"), S09_AXI_awcache("S09_AXI_awcache"), S09_AXI_awprot("S09_AXI_awprot"), S09_AXI_awqos("S09_AXI_awqos"), S09_AXI_awvalid("S09_AXI_awvalid"), S09_AXI_awready("S09_AXI_awready"), S09_AXI_wdata("S09_AXI_wdata"), S09_AXI_wstrb("S09_AXI_wstrb"), S09_AXI_wlast("S09_AXI_wlast"), S09_AXI_wvalid("S09_AXI_wvalid"), S09_AXI_wready("S09_AXI_wready"), S09_AXI_bid("S09_AXI_bid"), S09_AXI_bresp("S09_AXI_bresp"), S09_AXI_bvalid("S09_AXI_bvalid"), S09_AXI_bready("S09_AXI_bready"), S09_AXI_arid("S09_AXI_arid"), S09_AXI_araddr("S09_AXI_araddr"), S09_AXI_arlen("S09_AXI_arlen"), S09_AXI_arsize("S09_AXI_arsize"), S09_AXI_arburst("S09_AXI_arburst"), S09_AXI_arlock("S09_AXI_arlock"), S09_AXI_arcache("S09_AXI_arcache"), S09_AXI_arprot("S09_AXI_arprot"), S09_AXI_arqos("S09_AXI_arqos"), S09_AXI_arvalid("S09_AXI_arvalid"), S09_AXI_arready("S09_AXI_arready"), S09_AXI_rid("S09_AXI_rid"), S09_AXI_rdata("S09_AXI_rdata"), S09_AXI_rresp("S09_AXI_rresp"), S09_AXI_rlast("S09_AXI_rlast"), S09_AXI_rvalid("S09_AXI_rvalid"), S09_AXI_rready("S09_AXI_rready"), S10_AXI_awid("S10_AXI_awid"), S10_AXI_awaddr("S10_AXI_awaddr"), S10_AXI_awlen("S10_AXI_awlen"), S10_AXI_awsize("S10_AXI_awsize"), S10_AXI_awburst("S10_AXI_awburst"), S10_AXI_awlock("S10_AXI_awlock"), S10_AXI_awcache("S10_AXI_awcache"), S10_AXI_awprot("S10_AXI_awprot"), S10_AXI_awqos("S10_AXI_awqos"), S10_AXI_awvalid("S10_AXI_awvalid"), S10_AXI_awready("S10_AXI_awready"), S10_AXI_wdata("S10_AXI_wdata"), S10_AXI_wstrb("S10_AXI_wstrb"), S10_AXI_wlast("S10_AXI_wlast"), S10_AXI_wvalid("S10_AXI_wvalid"), S10_AXI_wready("S10_AXI_wready"), S10_AXI_bid("S10_AXI_bid"), S10_AXI_bresp("S10_AXI_bresp"), S10_AXI_bvalid("S10_AXI_bvalid"), S10_AXI_bready("S10_AXI_bready"), S10_AXI_arid("S10_AXI_arid"), S10_AXI_araddr("S10_AXI_araddr"), S10_AXI_arlen("S10_AXI_arlen"), S10_AXI_arsize("S10_AXI_arsize"), S10_AXI_arburst("S10_AXI_arburst"), S10_AXI_arlock("S10_AXI_arlock"), S10_AXI_arcache("S10_AXI_arcache"), S10_AXI_arprot("S10_AXI_arprot"), S10_AXI_arqos("S10_AXI_arqos"), S10_AXI_arvalid("S10_AXI_arvalid"), S10_AXI_arready("S10_AXI_arready"), S10_AXI_rid("S10_AXI_rid"), S10_AXI_rdata("S10_AXI_rdata"), S10_AXI_rresp("S10_AXI_rresp"), S10_AXI_rlast("S10_AXI_rlast"), S10_AXI_rvalid("S10_AXI_rvalid"), S10_AXI_rready("S10_AXI_rready"), S11_AXI_awid("S11_AXI_awid"), S11_AXI_awaddr("S11_AXI_awaddr"), S11_AXI_awlen("S11_AXI_awlen"), S11_AXI_awsize("S11_AXI_awsize"), S11_AXI_awburst("S11_AXI_awburst"), S11_AXI_awlock("S11_AXI_awlock"), S11_AXI_awcache("S11_AXI_awcache"), S11_AXI_awprot("S11_AXI_awprot"), S11_AXI_awqos("S11_AXI_awqos"), S11_AXI_awvalid("S11_AXI_awvalid"), S11_AXI_awready("S11_AXI_awready"), S11_AXI_wdata("S11_AXI_wdata"), S11_AXI_wstrb("S11_AXI_wstrb"), S11_AXI_wlast("S11_AXI_wlast"), S11_AXI_wvalid("S11_AXI_wvalid"), S11_AXI_wready("S11_AXI_wready"), S11_AXI_bid("S11_AXI_bid"), S11_AXI_bresp("S11_AXI_bresp"), S11_AXI_bvalid("S11_AXI_bvalid"), S11_AXI_bready("S11_AXI_bready"), S11_AXI_arid("S11_AXI_arid"), S11_AXI_araddr("S11_AXI_araddr"), S11_AXI_arlen("S11_AXI_arlen"), S11_AXI_arsize("S11_AXI_arsize"), S11_AXI_arburst("S11_AXI_arburst"), S11_AXI_arlock("S11_AXI_arlock"), S11_AXI_arcache("S11_AXI_arcache"), S11_AXI_arprot("S11_AXI_arprot"), S11_AXI_arqos("S11_AXI_arqos"), S11_AXI_arvalid("S11_AXI_arvalid"), S11_AXI_arready("S11_AXI_arready"), S11_AXI_rid("S11_AXI_rid"), S11_AXI_rdata("S11_AXI_rdata"), S11_AXI_rresp("S11_AXI_rresp"), S11_AXI_rlast("S11_AXI_rlast"), S11_AXI_rvalid("S11_AXI_rvalid"), S11_AXI_rready("S11_AXI_rready"), S12_AXI_awid("S12_AXI_awid"), S12_AXI_awaddr("S12_AXI_awaddr"), S12_AXI_awlen("S12_AXI_awlen"), S12_AXI_awsize("S12_AXI_awsize"), S12_AXI_awburst("S12_AXI_awburst"), S12_AXI_awlock("S12_AXI_awlock"), S12_AXI_awcache("S12_AXI_awcache"), S12_AXI_awprot("S12_AXI_awprot"), S12_AXI_awqos("S12_AXI_awqos"), S12_AXI_awvalid("S12_AXI_awvalid"), S12_AXI_awready("S12_AXI_awready"), S12_AXI_wdata("S12_AXI_wdata"), S12_AXI_wstrb("S12_AXI_wstrb"), S12_AXI_wlast("S12_AXI_wlast"), S12_AXI_wvalid("S12_AXI_wvalid"), S12_AXI_wready("S12_AXI_wready"), S12_AXI_bid("S12_AXI_bid"), S12_AXI_bresp("S12_AXI_bresp"), S12_AXI_bvalid("S12_AXI_bvalid"), S12_AXI_bready("S12_AXI_bready"), S12_AXI_arid("S12_AXI_arid"), S12_AXI_araddr("S12_AXI_araddr"), S12_AXI_arlen("S12_AXI_arlen"), S12_AXI_arsize("S12_AXI_arsize"), S12_AXI_arburst("S12_AXI_arburst"), S12_AXI_arlock("S12_AXI_arlock"), S12_AXI_arcache("S12_AXI_arcache"), S12_AXI_arprot("S12_AXI_arprot"), S12_AXI_arqos("S12_AXI_arqos"), S12_AXI_arvalid("S12_AXI_arvalid"), S12_AXI_arready("S12_AXI_arready"), S12_AXI_rid("S12_AXI_rid"), S12_AXI_rdata("S12_AXI_rdata"), S12_AXI_rresp("S12_AXI_rresp"), S12_AXI_rlast("S12_AXI_rlast"), S12_AXI_rvalid("S12_AXI_rvalid"), S12_AXI_rready("S12_AXI_rready"), S13_AXI_awid("S13_AXI_awid"), S13_AXI_awaddr("S13_AXI_awaddr"), S13_AXI_awlen("S13_AXI_awlen"), S13_AXI_awsize("S13_AXI_awsize"), S13_AXI_awburst("S13_AXI_awburst"), S13_AXI_awlock("S13_AXI_awlock"), S13_AXI_awcache("S13_AXI_awcache"), S13_AXI_awprot("S13_AXI_awprot"), S13_AXI_awqos("S13_AXI_awqos"), S13_AXI_awvalid("S13_AXI_awvalid"), S13_AXI_awready("S13_AXI_awready"), S13_AXI_wdata("S13_AXI_wdata"), S13_AXI_wstrb("S13_AXI_wstrb"), S13_AXI_wlast("S13_AXI_wlast"), S13_AXI_wvalid("S13_AXI_wvalid"), S13_AXI_wready("S13_AXI_wready"), S13_AXI_bid("S13_AXI_bid"), S13_AXI_bresp("S13_AXI_bresp"), S13_AXI_bvalid("S13_AXI_bvalid"), S13_AXI_bready("S13_AXI_bready"), S13_AXI_arid("S13_AXI_arid"), S13_AXI_araddr("S13_AXI_araddr"), S13_AXI_arlen("S13_AXI_arlen"), S13_AXI_arsize("S13_AXI_arsize"), S13_AXI_arburst("S13_AXI_arburst"), S13_AXI_arlock("S13_AXI_arlock"), S13_AXI_arcache("S13_AXI_arcache"), S13_AXI_arprot("S13_AXI_arprot"), S13_AXI_arqos("S13_AXI_arqos"), S13_AXI_arvalid("S13_AXI_arvalid"), S13_AXI_arready("S13_AXI_arready"), S13_AXI_rid("S13_AXI_rid"), S13_AXI_rdata("S13_AXI_rdata"), S13_AXI_rresp("S13_AXI_rresp"), S13_AXI_rlast("S13_AXI_rlast"), S13_AXI_rvalid("S13_AXI_rvalid"), S13_AXI_rready("S13_AXI_rready"), S14_AXI_awid("S14_AXI_awid"), S14_AXI_awaddr("S14_AXI_awaddr"), S14_AXI_awlen("S14_AXI_awlen"), S14_AXI_awsize("S14_AXI_awsize"), S14_AXI_awburst("S14_AXI_awburst"), S14_AXI_awlock("S14_AXI_awlock"), S14_AXI_awcache("S14_AXI_awcache"), S14_AXI_awprot("S14_AXI_awprot"), S14_AXI_awqos("S14_AXI_awqos"), S14_AXI_awvalid("S14_AXI_awvalid"), S14_AXI_awready("S14_AXI_awready"), S14_AXI_wdata("S14_AXI_wdata"), S14_AXI_wstrb("S14_AXI_wstrb"), S14_AXI_wlast("S14_AXI_wlast"), S14_AXI_wvalid("S14_AXI_wvalid"), S14_AXI_wready("S14_AXI_wready"), S14_AXI_bid("S14_AXI_bid"), S14_AXI_bresp("S14_AXI_bresp"), S14_AXI_bvalid("S14_AXI_bvalid"), S14_AXI_bready("S14_AXI_bready"), S14_AXI_arid("S14_AXI_arid"), S14_AXI_araddr("S14_AXI_araddr"), S14_AXI_arlen("S14_AXI_arlen"), S14_AXI_arsize("S14_AXI_arsize"), S14_AXI_arburst("S14_AXI_arburst"), S14_AXI_arlock("S14_AXI_arlock"), S14_AXI_arcache("S14_AXI_arcache"), S14_AXI_arprot("S14_AXI_arprot"), S14_AXI_arqos("S14_AXI_arqos"), S14_AXI_arvalid("S14_AXI_arvalid"), S14_AXI_arready("S14_AXI_arready"), S14_AXI_rid("S14_AXI_rid"), S14_AXI_rdata("S14_AXI_rdata"), S14_AXI_rresp("S14_AXI_rresp"), S14_AXI_rlast("S14_AXI_rlast"), S14_AXI_rvalid("S14_AXI_rvalid"), S14_AXI_rready("S14_AXI_rready"), S15_AXI_awid("S15_AXI_awid"), S15_AXI_awaddr("S15_AXI_awaddr"), S15_AXI_awlen("S15_AXI_awlen"), S15_AXI_awsize("S15_AXI_awsize"), S15_AXI_awburst("S15_AXI_awburst"), S15_AXI_awlock("S15_AXI_awlock"), S15_AXI_awcache("S15_AXI_awcache"), S15_AXI_awprot("S15_AXI_awprot"), S15_AXI_awqos("S15_AXI_awqos"), S15_AXI_awvalid("S15_AXI_awvalid"), S15_AXI_awready("S15_AXI_awready"), S15_AXI_wdata("S15_AXI_wdata"), S15_AXI_wstrb("S15_AXI_wstrb"), S15_AXI_wlast("S15_AXI_wlast"), S15_AXI_wvalid("S15_AXI_wvalid"), S15_AXI_wready("S15_AXI_wready"), S15_AXI_bid("S15_AXI_bid"), S15_AXI_bresp("S15_AXI_bresp"), S15_AXI_bvalid("S15_AXI_bvalid"), S15_AXI_bready("S15_AXI_bready"), S15_AXI_arid("S15_AXI_arid"), S15_AXI_araddr("S15_AXI_araddr"), S15_AXI_arlen("S15_AXI_arlen"), S15_AXI_arsize("S15_AXI_arsize"), S15_AXI_arburst("S15_AXI_arburst"), S15_AXI_arlock("S15_AXI_arlock"), S15_AXI_arcache("S15_AXI_arcache"), S15_AXI_arprot("S15_AXI_arprot"), S15_AXI_arqos("S15_AXI_arqos"), S15_AXI_arvalid("S15_AXI_arvalid"), S15_AXI_arready("S15_AXI_arready"), S15_AXI_rid("S15_AXI_rid"), S15_AXI_rdata("S15_AXI_rdata"), S15_AXI_rresp("S15_AXI_rresp"), S15_AXI_rlast("S15_AXI_rlast"), S15_AXI_rvalid("S15_AXI_rvalid"), S15_AXI_rready("S15_AXI_rready"), M00_AXI_awaddr("M00_AXI_awaddr"), M00_AXI_awlen("M00_AXI_awlen"), M00_AXI_awsize("M00_AXI_awsize"), M00_AXI_awburst("M00_AXI_awburst"), M00_AXI_awlock("M00_AXI_awlock"), M00_AXI_awcache("M00_AXI_awcache"), M00_AXI_awprot("M00_AXI_awprot"), M00_AXI_awqos("M00_AXI_awqos"), M00_AXI_awvalid("M00_AXI_awvalid"), M00_AXI_awready("M00_AXI_awready"), M00_AXI_wdata("M00_AXI_wdata"), M00_AXI_wstrb("M00_AXI_wstrb"), M00_AXI_wlast("M00_AXI_wlast"), M00_AXI_wvalid("M00_AXI_wvalid"), M00_AXI_wready("M00_AXI_wready"), M00_AXI_bresp("M00_AXI_bresp"), M00_AXI_bvalid("M00_AXI_bvalid"), M00_AXI_bready("M00_AXI_bready"), M00_AXI_araddr("M00_AXI_araddr"), M00_AXI_arlen("M00_AXI_arlen"), M00_AXI_arsize("M00_AXI_arsize"), M00_AXI_arburst("M00_AXI_arburst"), M00_AXI_arlock("M00_AXI_arlock"), M00_AXI_arcache("M00_AXI_arcache"), M00_AXI_arprot("M00_AXI_arprot"), M00_AXI_arqos("M00_AXI_arqos"), M00_AXI_arvalid("M00_AXI_arvalid"), M00_AXI_arready("M00_AXI_arready"), M00_AXI_rdata("M00_AXI_rdata"), M00_AXI_rresp("M00_AXI_rresp"), M00_AXI_rlast("M00_AXI_rlast"), M00_AXI_rvalid("M00_AXI_rvalid"), M00_AXI_rready("M00_AXI_rready")
{

  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_S00_AXI_awlock_converter = NULL;
  mp_S00_AXI_arlock_converter = NULL;
  mp_S01_AXI_transactor = NULL;
  mp_S01_AXI_awlock_converter = NULL;
  mp_S01_AXI_arlock_converter = NULL;
  mp_S02_AXI_transactor = NULL;
  mp_S02_AXI_awlock_converter = NULL;
  mp_S02_AXI_arlock_converter = NULL;
  mp_S03_AXI_transactor = NULL;
  mp_S03_AXI_awlock_converter = NULL;
  mp_S03_AXI_arlock_converter = NULL;
  mp_S04_AXI_transactor = NULL;
  mp_S04_AXI_awlock_converter = NULL;
  mp_S04_AXI_arlock_converter = NULL;
  mp_S05_AXI_transactor = NULL;
  mp_S05_AXI_awlock_converter = NULL;
  mp_S05_AXI_arlock_converter = NULL;
  mp_S06_AXI_transactor = NULL;
  mp_S06_AXI_awlock_converter = NULL;
  mp_S06_AXI_arlock_converter = NULL;
  mp_S07_AXI_transactor = NULL;
  mp_S07_AXI_awlock_converter = NULL;
  mp_S07_AXI_arlock_converter = NULL;
  mp_S08_AXI_transactor = NULL;
  mp_S08_AXI_awlock_converter = NULL;
  mp_S08_AXI_arlock_converter = NULL;
  mp_S09_AXI_transactor = NULL;
  mp_S09_AXI_awlock_converter = NULL;
  mp_S09_AXI_arlock_converter = NULL;
  mp_S10_AXI_transactor = NULL;
  mp_S10_AXI_awlock_converter = NULL;
  mp_S10_AXI_arlock_converter = NULL;
  mp_S11_AXI_transactor = NULL;
  mp_S11_AXI_awlock_converter = NULL;
  mp_S11_AXI_arlock_converter = NULL;
  mp_S12_AXI_transactor = NULL;
  mp_S12_AXI_awlock_converter = NULL;
  mp_S12_AXI_arlock_converter = NULL;
  mp_S13_AXI_transactor = NULL;
  mp_S13_AXI_awlock_converter = NULL;
  mp_S13_AXI_arlock_converter = NULL;
  mp_S14_AXI_transactor = NULL;
  mp_S14_AXI_awlock_converter = NULL;
  mp_S14_AXI_arlock_converter = NULL;
  mp_S15_AXI_transactor = NULL;
  mp_S15_AXI_awlock_converter = NULL;
  mp_S15_AXI_arlock_converter = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_M00_AXI_awlock_converter = NULL;
  mp_M00_AXI_arlock_converter = NULL;

  // initialize socket stubs

}

void MemoryInterfacesVIP_smartconnect_0_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXI' transactor parameters
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);

    // S00_AXI' transactor ports

    mp_S00_AXI_transactor->AWID(S00_AXI_awid);
    mp_S00_AXI_transactor->AWADDR(S00_AXI_awaddr);
    mp_S00_AXI_transactor->AWLEN(S00_AXI_awlen);
    mp_S00_AXI_transactor->AWSIZE(S00_AXI_awsize);
    mp_S00_AXI_transactor->AWBURST(S00_AXI_awburst);
    mp_S00_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_awlock_converter");
    mp_S00_AXI_awlock_converter->vector_in(S00_AXI_awlock);
    mp_S00_AXI_awlock_converter->scalar_out(m_S00_AXI_awlock_converter_signal);
    mp_S00_AXI_transactor->AWLOCK(m_S00_AXI_awlock_converter_signal);
    mp_S00_AXI_transactor->AWCACHE(S00_AXI_awcache);
    mp_S00_AXI_transactor->AWPROT(S00_AXI_awprot);
    mp_S00_AXI_transactor->AWQOS(S00_AXI_awqos);
    mp_S00_AXI_transactor->AWVALID(S00_AXI_awvalid);
    mp_S00_AXI_transactor->AWREADY(S00_AXI_awready);
    mp_S00_AXI_transactor->WDATA(S00_AXI_wdata);
    mp_S00_AXI_transactor->WSTRB(S00_AXI_wstrb);
    mp_S00_AXI_transactor->WLAST(S00_AXI_wlast);
    mp_S00_AXI_transactor->WVALID(S00_AXI_wvalid);
    mp_S00_AXI_transactor->WREADY(S00_AXI_wready);
    mp_S00_AXI_transactor->BID(S00_AXI_bid);
    mp_S00_AXI_transactor->BRESP(S00_AXI_bresp);
    mp_S00_AXI_transactor->BVALID(S00_AXI_bvalid);
    mp_S00_AXI_transactor->BREADY(S00_AXI_bready);
    mp_S00_AXI_transactor->ARID(S00_AXI_arid);
    mp_S00_AXI_transactor->ARADDR(S00_AXI_araddr);
    mp_S00_AXI_transactor->ARLEN(S00_AXI_arlen);
    mp_S00_AXI_transactor->ARSIZE(S00_AXI_arsize);
    mp_S00_AXI_transactor->ARBURST(S00_AXI_arburst);
    mp_S00_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_arlock_converter");
    mp_S00_AXI_arlock_converter->vector_in(S00_AXI_arlock);
    mp_S00_AXI_arlock_converter->scalar_out(m_S00_AXI_arlock_converter_signal);
    mp_S00_AXI_transactor->ARLOCK(m_S00_AXI_arlock_converter_signal);
    mp_S00_AXI_transactor->ARCACHE(S00_AXI_arcache);
    mp_S00_AXI_transactor->ARPROT(S00_AXI_arprot);
    mp_S00_AXI_transactor->ARQOS(S00_AXI_arqos);
    mp_S00_AXI_transactor->ARVALID(S00_AXI_arvalid);
    mp_S00_AXI_transactor->ARREADY(S00_AXI_arready);
    mp_S00_AXI_transactor->RID(S00_AXI_rid);
    mp_S00_AXI_transactor->RDATA(S00_AXI_rdata);
    mp_S00_AXI_transactor->RRESP(S00_AXI_rresp);
    mp_S00_AXI_transactor->RLAST(S00_AXI_rlast);
    mp_S00_AXI_transactor->RVALID(S00_AXI_rvalid);
    mp_S00_AXI_transactor->RREADY(S00_AXI_rready);
    mp_S00_AXI_transactor->CLK(aclk);
    mp_S00_AXI_transactor->RST(aresetn);

    // S00_AXI' transactor sockets

    mp_impl->S00_AXI_tlm_aximm_read_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->S00_AXI_tlm_aximm_write_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S01_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S01_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S01_AXI' transactor parameters
    xsc::common_cpp::properties S01_AXI_transactor_param_props;
    S01_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S01_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S01_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S01_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S01_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S01_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S01_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S01_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S01_AXI_transactor", S01_AXI_transactor_param_props);

    // S01_AXI' transactor ports

    mp_S01_AXI_transactor->AWID(S01_AXI_awid);
    mp_S01_AXI_transactor->AWADDR(S01_AXI_awaddr);
    mp_S01_AXI_transactor->AWLEN(S01_AXI_awlen);
    mp_S01_AXI_transactor->AWSIZE(S01_AXI_awsize);
    mp_S01_AXI_transactor->AWBURST(S01_AXI_awburst);
    mp_S01_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_awlock_converter");
    mp_S01_AXI_awlock_converter->vector_in(S01_AXI_awlock);
    mp_S01_AXI_awlock_converter->scalar_out(m_S01_AXI_awlock_converter_signal);
    mp_S01_AXI_transactor->AWLOCK(m_S01_AXI_awlock_converter_signal);
    mp_S01_AXI_transactor->AWCACHE(S01_AXI_awcache);
    mp_S01_AXI_transactor->AWPROT(S01_AXI_awprot);
    mp_S01_AXI_transactor->AWQOS(S01_AXI_awqos);
    mp_S01_AXI_transactor->AWVALID(S01_AXI_awvalid);
    mp_S01_AXI_transactor->AWREADY(S01_AXI_awready);
    mp_S01_AXI_transactor->WDATA(S01_AXI_wdata);
    mp_S01_AXI_transactor->WSTRB(S01_AXI_wstrb);
    mp_S01_AXI_transactor->WLAST(S01_AXI_wlast);
    mp_S01_AXI_transactor->WVALID(S01_AXI_wvalid);
    mp_S01_AXI_transactor->WREADY(S01_AXI_wready);
    mp_S01_AXI_transactor->BID(S01_AXI_bid);
    mp_S01_AXI_transactor->BRESP(S01_AXI_bresp);
    mp_S01_AXI_transactor->BVALID(S01_AXI_bvalid);
    mp_S01_AXI_transactor->BREADY(S01_AXI_bready);
    mp_S01_AXI_transactor->ARID(S01_AXI_arid);
    mp_S01_AXI_transactor->ARADDR(S01_AXI_araddr);
    mp_S01_AXI_transactor->ARLEN(S01_AXI_arlen);
    mp_S01_AXI_transactor->ARSIZE(S01_AXI_arsize);
    mp_S01_AXI_transactor->ARBURST(S01_AXI_arburst);
    mp_S01_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_arlock_converter");
    mp_S01_AXI_arlock_converter->vector_in(S01_AXI_arlock);
    mp_S01_AXI_arlock_converter->scalar_out(m_S01_AXI_arlock_converter_signal);
    mp_S01_AXI_transactor->ARLOCK(m_S01_AXI_arlock_converter_signal);
    mp_S01_AXI_transactor->ARCACHE(S01_AXI_arcache);
    mp_S01_AXI_transactor->ARPROT(S01_AXI_arprot);
    mp_S01_AXI_transactor->ARQOS(S01_AXI_arqos);
    mp_S01_AXI_transactor->ARVALID(S01_AXI_arvalid);
    mp_S01_AXI_transactor->ARREADY(S01_AXI_arready);
    mp_S01_AXI_transactor->RID(S01_AXI_rid);
    mp_S01_AXI_transactor->RDATA(S01_AXI_rdata);
    mp_S01_AXI_transactor->RRESP(S01_AXI_rresp);
    mp_S01_AXI_transactor->RLAST(S01_AXI_rlast);
    mp_S01_AXI_transactor->RVALID(S01_AXI_rvalid);
    mp_S01_AXI_transactor->RREADY(S01_AXI_rready);
    mp_S01_AXI_transactor->CLK(aclk);
    mp_S01_AXI_transactor->RST(aresetn);

    // S01_AXI' transactor sockets

    mp_impl->S01_AXI_tlm_aximm_read_socket->bind(*(mp_S01_AXI_transactor->rd_socket));
    mp_impl->S01_AXI_tlm_aximm_write_socket->bind(*(mp_S01_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S02_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S02_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S02_AXI' transactor parameters
    xsc::common_cpp::properties S02_AXI_transactor_param_props;
    S02_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S02_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S02_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S02_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S02_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S02_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S02_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S02_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S02_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S02_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S02_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S02_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S02_AXI_transactor", S02_AXI_transactor_param_props);

    // S02_AXI' transactor ports

    mp_S02_AXI_transactor->AWID(S02_AXI_awid);
    mp_S02_AXI_transactor->AWADDR(S02_AXI_awaddr);
    mp_S02_AXI_transactor->AWLEN(S02_AXI_awlen);
    mp_S02_AXI_transactor->AWSIZE(S02_AXI_awsize);
    mp_S02_AXI_transactor->AWBURST(S02_AXI_awburst);
    mp_S02_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_awlock_converter");
    mp_S02_AXI_awlock_converter->vector_in(S02_AXI_awlock);
    mp_S02_AXI_awlock_converter->scalar_out(m_S02_AXI_awlock_converter_signal);
    mp_S02_AXI_transactor->AWLOCK(m_S02_AXI_awlock_converter_signal);
    mp_S02_AXI_transactor->AWCACHE(S02_AXI_awcache);
    mp_S02_AXI_transactor->AWPROT(S02_AXI_awprot);
    mp_S02_AXI_transactor->AWQOS(S02_AXI_awqos);
    mp_S02_AXI_transactor->AWVALID(S02_AXI_awvalid);
    mp_S02_AXI_transactor->AWREADY(S02_AXI_awready);
    mp_S02_AXI_transactor->WDATA(S02_AXI_wdata);
    mp_S02_AXI_transactor->WSTRB(S02_AXI_wstrb);
    mp_S02_AXI_transactor->WLAST(S02_AXI_wlast);
    mp_S02_AXI_transactor->WVALID(S02_AXI_wvalid);
    mp_S02_AXI_transactor->WREADY(S02_AXI_wready);
    mp_S02_AXI_transactor->BID(S02_AXI_bid);
    mp_S02_AXI_transactor->BRESP(S02_AXI_bresp);
    mp_S02_AXI_transactor->BVALID(S02_AXI_bvalid);
    mp_S02_AXI_transactor->BREADY(S02_AXI_bready);
    mp_S02_AXI_transactor->ARID(S02_AXI_arid);
    mp_S02_AXI_transactor->ARADDR(S02_AXI_araddr);
    mp_S02_AXI_transactor->ARLEN(S02_AXI_arlen);
    mp_S02_AXI_transactor->ARSIZE(S02_AXI_arsize);
    mp_S02_AXI_transactor->ARBURST(S02_AXI_arburst);
    mp_S02_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_arlock_converter");
    mp_S02_AXI_arlock_converter->vector_in(S02_AXI_arlock);
    mp_S02_AXI_arlock_converter->scalar_out(m_S02_AXI_arlock_converter_signal);
    mp_S02_AXI_transactor->ARLOCK(m_S02_AXI_arlock_converter_signal);
    mp_S02_AXI_transactor->ARCACHE(S02_AXI_arcache);
    mp_S02_AXI_transactor->ARPROT(S02_AXI_arprot);
    mp_S02_AXI_transactor->ARQOS(S02_AXI_arqos);
    mp_S02_AXI_transactor->ARVALID(S02_AXI_arvalid);
    mp_S02_AXI_transactor->ARREADY(S02_AXI_arready);
    mp_S02_AXI_transactor->RID(S02_AXI_rid);
    mp_S02_AXI_transactor->RDATA(S02_AXI_rdata);
    mp_S02_AXI_transactor->RRESP(S02_AXI_rresp);
    mp_S02_AXI_transactor->RLAST(S02_AXI_rlast);
    mp_S02_AXI_transactor->RVALID(S02_AXI_rvalid);
    mp_S02_AXI_transactor->RREADY(S02_AXI_rready);
    mp_S02_AXI_transactor->CLK(aclk);
    mp_S02_AXI_transactor->RST(aresetn);

    // S02_AXI' transactor sockets

    mp_impl->S02_AXI_tlm_aximm_read_socket->bind(*(mp_S02_AXI_transactor->rd_socket));
    mp_impl->S02_AXI_tlm_aximm_write_socket->bind(*(mp_S02_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S03_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S03_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S03_AXI' transactor parameters
    xsc::common_cpp::properties S03_AXI_transactor_param_props;
    S03_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S03_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S03_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S03_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S03_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S03_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S03_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S03_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S03_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S03_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S03_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S03_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S03_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S03_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S03_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S03_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S03_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S03_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S03_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S03_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S03_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S03_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S03_AXI_transactor", S03_AXI_transactor_param_props);

    // S03_AXI' transactor ports

    mp_S03_AXI_transactor->AWID(S03_AXI_awid);
    mp_S03_AXI_transactor->AWADDR(S03_AXI_awaddr);
    mp_S03_AXI_transactor->AWLEN(S03_AXI_awlen);
    mp_S03_AXI_transactor->AWSIZE(S03_AXI_awsize);
    mp_S03_AXI_transactor->AWBURST(S03_AXI_awburst);
    mp_S03_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_awlock_converter");
    mp_S03_AXI_awlock_converter->vector_in(S03_AXI_awlock);
    mp_S03_AXI_awlock_converter->scalar_out(m_S03_AXI_awlock_converter_signal);
    mp_S03_AXI_transactor->AWLOCK(m_S03_AXI_awlock_converter_signal);
    mp_S03_AXI_transactor->AWCACHE(S03_AXI_awcache);
    mp_S03_AXI_transactor->AWPROT(S03_AXI_awprot);
    mp_S03_AXI_transactor->AWQOS(S03_AXI_awqos);
    mp_S03_AXI_transactor->AWVALID(S03_AXI_awvalid);
    mp_S03_AXI_transactor->AWREADY(S03_AXI_awready);
    mp_S03_AXI_transactor->WDATA(S03_AXI_wdata);
    mp_S03_AXI_transactor->WSTRB(S03_AXI_wstrb);
    mp_S03_AXI_transactor->WLAST(S03_AXI_wlast);
    mp_S03_AXI_transactor->WVALID(S03_AXI_wvalid);
    mp_S03_AXI_transactor->WREADY(S03_AXI_wready);
    mp_S03_AXI_transactor->BID(S03_AXI_bid);
    mp_S03_AXI_transactor->BRESP(S03_AXI_bresp);
    mp_S03_AXI_transactor->BVALID(S03_AXI_bvalid);
    mp_S03_AXI_transactor->BREADY(S03_AXI_bready);
    mp_S03_AXI_transactor->ARID(S03_AXI_arid);
    mp_S03_AXI_transactor->ARADDR(S03_AXI_araddr);
    mp_S03_AXI_transactor->ARLEN(S03_AXI_arlen);
    mp_S03_AXI_transactor->ARSIZE(S03_AXI_arsize);
    mp_S03_AXI_transactor->ARBURST(S03_AXI_arburst);
    mp_S03_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_arlock_converter");
    mp_S03_AXI_arlock_converter->vector_in(S03_AXI_arlock);
    mp_S03_AXI_arlock_converter->scalar_out(m_S03_AXI_arlock_converter_signal);
    mp_S03_AXI_transactor->ARLOCK(m_S03_AXI_arlock_converter_signal);
    mp_S03_AXI_transactor->ARCACHE(S03_AXI_arcache);
    mp_S03_AXI_transactor->ARPROT(S03_AXI_arprot);
    mp_S03_AXI_transactor->ARQOS(S03_AXI_arqos);
    mp_S03_AXI_transactor->ARVALID(S03_AXI_arvalid);
    mp_S03_AXI_transactor->ARREADY(S03_AXI_arready);
    mp_S03_AXI_transactor->RID(S03_AXI_rid);
    mp_S03_AXI_transactor->RDATA(S03_AXI_rdata);
    mp_S03_AXI_transactor->RRESP(S03_AXI_rresp);
    mp_S03_AXI_transactor->RLAST(S03_AXI_rlast);
    mp_S03_AXI_transactor->RVALID(S03_AXI_rvalid);
    mp_S03_AXI_transactor->RREADY(S03_AXI_rready);
    mp_S03_AXI_transactor->CLK(aclk);
    mp_S03_AXI_transactor->RST(aresetn);

    // S03_AXI' transactor sockets

    mp_impl->S03_AXI_tlm_aximm_read_socket->bind(*(mp_S03_AXI_transactor->rd_socket));
    mp_impl->S03_AXI_tlm_aximm_write_socket->bind(*(mp_S03_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S04_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S04_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S04_AXI' transactor parameters
    xsc::common_cpp::properties S04_AXI_transactor_param_props;
    S04_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S04_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S04_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S04_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S04_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S04_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S04_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S04_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S04_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S04_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S04_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S04_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S04_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S04_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S04_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S04_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S04_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S04_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S04_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S04_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S04_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S04_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S04_AXI_transactor", S04_AXI_transactor_param_props);

    // S04_AXI' transactor ports

    mp_S04_AXI_transactor->AWID(S04_AXI_awid);
    mp_S04_AXI_transactor->AWADDR(S04_AXI_awaddr);
    mp_S04_AXI_transactor->AWLEN(S04_AXI_awlen);
    mp_S04_AXI_transactor->AWSIZE(S04_AXI_awsize);
    mp_S04_AXI_transactor->AWBURST(S04_AXI_awburst);
    mp_S04_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_awlock_converter");
    mp_S04_AXI_awlock_converter->vector_in(S04_AXI_awlock);
    mp_S04_AXI_awlock_converter->scalar_out(m_S04_AXI_awlock_converter_signal);
    mp_S04_AXI_transactor->AWLOCK(m_S04_AXI_awlock_converter_signal);
    mp_S04_AXI_transactor->AWCACHE(S04_AXI_awcache);
    mp_S04_AXI_transactor->AWPROT(S04_AXI_awprot);
    mp_S04_AXI_transactor->AWQOS(S04_AXI_awqos);
    mp_S04_AXI_transactor->AWVALID(S04_AXI_awvalid);
    mp_S04_AXI_transactor->AWREADY(S04_AXI_awready);
    mp_S04_AXI_transactor->WDATA(S04_AXI_wdata);
    mp_S04_AXI_transactor->WSTRB(S04_AXI_wstrb);
    mp_S04_AXI_transactor->WLAST(S04_AXI_wlast);
    mp_S04_AXI_transactor->WVALID(S04_AXI_wvalid);
    mp_S04_AXI_transactor->WREADY(S04_AXI_wready);
    mp_S04_AXI_transactor->BID(S04_AXI_bid);
    mp_S04_AXI_transactor->BRESP(S04_AXI_bresp);
    mp_S04_AXI_transactor->BVALID(S04_AXI_bvalid);
    mp_S04_AXI_transactor->BREADY(S04_AXI_bready);
    mp_S04_AXI_transactor->ARID(S04_AXI_arid);
    mp_S04_AXI_transactor->ARADDR(S04_AXI_araddr);
    mp_S04_AXI_transactor->ARLEN(S04_AXI_arlen);
    mp_S04_AXI_transactor->ARSIZE(S04_AXI_arsize);
    mp_S04_AXI_transactor->ARBURST(S04_AXI_arburst);
    mp_S04_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_arlock_converter");
    mp_S04_AXI_arlock_converter->vector_in(S04_AXI_arlock);
    mp_S04_AXI_arlock_converter->scalar_out(m_S04_AXI_arlock_converter_signal);
    mp_S04_AXI_transactor->ARLOCK(m_S04_AXI_arlock_converter_signal);
    mp_S04_AXI_transactor->ARCACHE(S04_AXI_arcache);
    mp_S04_AXI_transactor->ARPROT(S04_AXI_arprot);
    mp_S04_AXI_transactor->ARQOS(S04_AXI_arqos);
    mp_S04_AXI_transactor->ARVALID(S04_AXI_arvalid);
    mp_S04_AXI_transactor->ARREADY(S04_AXI_arready);
    mp_S04_AXI_transactor->RID(S04_AXI_rid);
    mp_S04_AXI_transactor->RDATA(S04_AXI_rdata);
    mp_S04_AXI_transactor->RRESP(S04_AXI_rresp);
    mp_S04_AXI_transactor->RLAST(S04_AXI_rlast);
    mp_S04_AXI_transactor->RVALID(S04_AXI_rvalid);
    mp_S04_AXI_transactor->RREADY(S04_AXI_rready);
    mp_S04_AXI_transactor->CLK(aclk);
    mp_S04_AXI_transactor->RST(aresetn);

    // S04_AXI' transactor sockets

    mp_impl->S04_AXI_tlm_aximm_read_socket->bind(*(mp_S04_AXI_transactor->rd_socket));
    mp_impl->S04_AXI_tlm_aximm_write_socket->bind(*(mp_S04_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S05_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S05_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S05_AXI' transactor parameters
    xsc::common_cpp::properties S05_AXI_transactor_param_props;
    S05_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S05_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S05_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S05_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S05_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S05_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S05_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S05_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S05_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S05_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S05_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S05_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S05_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S05_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S05_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S05_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S05_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S05_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S05_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S05_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S05_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S05_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S05_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S05_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S05_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S05_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S05_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S05_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S05_AXI_transactor", S05_AXI_transactor_param_props);

    // S05_AXI' transactor ports

    mp_S05_AXI_transactor->AWID(S05_AXI_awid);
    mp_S05_AXI_transactor->AWADDR(S05_AXI_awaddr);
    mp_S05_AXI_transactor->AWLEN(S05_AXI_awlen);
    mp_S05_AXI_transactor->AWSIZE(S05_AXI_awsize);
    mp_S05_AXI_transactor->AWBURST(S05_AXI_awburst);
    mp_S05_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S05_AXI_awlock_converter");
    mp_S05_AXI_awlock_converter->vector_in(S05_AXI_awlock);
    mp_S05_AXI_awlock_converter->scalar_out(m_S05_AXI_awlock_converter_signal);
    mp_S05_AXI_transactor->AWLOCK(m_S05_AXI_awlock_converter_signal);
    mp_S05_AXI_transactor->AWCACHE(S05_AXI_awcache);
    mp_S05_AXI_transactor->AWPROT(S05_AXI_awprot);
    mp_S05_AXI_transactor->AWQOS(S05_AXI_awqos);
    mp_S05_AXI_transactor->AWVALID(S05_AXI_awvalid);
    mp_S05_AXI_transactor->AWREADY(S05_AXI_awready);
    mp_S05_AXI_transactor->WDATA(S05_AXI_wdata);
    mp_S05_AXI_transactor->WSTRB(S05_AXI_wstrb);
    mp_S05_AXI_transactor->WLAST(S05_AXI_wlast);
    mp_S05_AXI_transactor->WVALID(S05_AXI_wvalid);
    mp_S05_AXI_transactor->WREADY(S05_AXI_wready);
    mp_S05_AXI_transactor->BID(S05_AXI_bid);
    mp_S05_AXI_transactor->BRESP(S05_AXI_bresp);
    mp_S05_AXI_transactor->BVALID(S05_AXI_bvalid);
    mp_S05_AXI_transactor->BREADY(S05_AXI_bready);
    mp_S05_AXI_transactor->ARID(S05_AXI_arid);
    mp_S05_AXI_transactor->ARADDR(S05_AXI_araddr);
    mp_S05_AXI_transactor->ARLEN(S05_AXI_arlen);
    mp_S05_AXI_transactor->ARSIZE(S05_AXI_arsize);
    mp_S05_AXI_transactor->ARBURST(S05_AXI_arburst);
    mp_S05_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S05_AXI_arlock_converter");
    mp_S05_AXI_arlock_converter->vector_in(S05_AXI_arlock);
    mp_S05_AXI_arlock_converter->scalar_out(m_S05_AXI_arlock_converter_signal);
    mp_S05_AXI_transactor->ARLOCK(m_S05_AXI_arlock_converter_signal);
    mp_S05_AXI_transactor->ARCACHE(S05_AXI_arcache);
    mp_S05_AXI_transactor->ARPROT(S05_AXI_arprot);
    mp_S05_AXI_transactor->ARQOS(S05_AXI_arqos);
    mp_S05_AXI_transactor->ARVALID(S05_AXI_arvalid);
    mp_S05_AXI_transactor->ARREADY(S05_AXI_arready);
    mp_S05_AXI_transactor->RID(S05_AXI_rid);
    mp_S05_AXI_transactor->RDATA(S05_AXI_rdata);
    mp_S05_AXI_transactor->RRESP(S05_AXI_rresp);
    mp_S05_AXI_transactor->RLAST(S05_AXI_rlast);
    mp_S05_AXI_transactor->RVALID(S05_AXI_rvalid);
    mp_S05_AXI_transactor->RREADY(S05_AXI_rready);
    mp_S05_AXI_transactor->CLK(aclk);
    mp_S05_AXI_transactor->RST(aresetn);

    // S05_AXI' transactor sockets

    mp_impl->S05_AXI_tlm_aximm_read_socket->bind(*(mp_S05_AXI_transactor->rd_socket));
    mp_impl->S05_AXI_tlm_aximm_write_socket->bind(*(mp_S05_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S06_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S06_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S06_AXI' transactor parameters
    xsc::common_cpp::properties S06_AXI_transactor_param_props;
    S06_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S06_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S06_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S06_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S06_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S06_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S06_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S06_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S06_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S06_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S06_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S06_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S06_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S06_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S06_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S06_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S06_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S06_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S06_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S06_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S06_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S06_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S06_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S06_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S06_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S06_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S06_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S06_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S06_AXI_transactor", S06_AXI_transactor_param_props);

    // S06_AXI' transactor ports

    mp_S06_AXI_transactor->AWID(S06_AXI_awid);
    mp_S06_AXI_transactor->AWADDR(S06_AXI_awaddr);
    mp_S06_AXI_transactor->AWLEN(S06_AXI_awlen);
    mp_S06_AXI_transactor->AWSIZE(S06_AXI_awsize);
    mp_S06_AXI_transactor->AWBURST(S06_AXI_awburst);
    mp_S06_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S06_AXI_awlock_converter");
    mp_S06_AXI_awlock_converter->vector_in(S06_AXI_awlock);
    mp_S06_AXI_awlock_converter->scalar_out(m_S06_AXI_awlock_converter_signal);
    mp_S06_AXI_transactor->AWLOCK(m_S06_AXI_awlock_converter_signal);
    mp_S06_AXI_transactor->AWCACHE(S06_AXI_awcache);
    mp_S06_AXI_transactor->AWPROT(S06_AXI_awprot);
    mp_S06_AXI_transactor->AWQOS(S06_AXI_awqos);
    mp_S06_AXI_transactor->AWVALID(S06_AXI_awvalid);
    mp_S06_AXI_transactor->AWREADY(S06_AXI_awready);
    mp_S06_AXI_transactor->WDATA(S06_AXI_wdata);
    mp_S06_AXI_transactor->WSTRB(S06_AXI_wstrb);
    mp_S06_AXI_transactor->WLAST(S06_AXI_wlast);
    mp_S06_AXI_transactor->WVALID(S06_AXI_wvalid);
    mp_S06_AXI_transactor->WREADY(S06_AXI_wready);
    mp_S06_AXI_transactor->BID(S06_AXI_bid);
    mp_S06_AXI_transactor->BRESP(S06_AXI_bresp);
    mp_S06_AXI_transactor->BVALID(S06_AXI_bvalid);
    mp_S06_AXI_transactor->BREADY(S06_AXI_bready);
    mp_S06_AXI_transactor->ARID(S06_AXI_arid);
    mp_S06_AXI_transactor->ARADDR(S06_AXI_araddr);
    mp_S06_AXI_transactor->ARLEN(S06_AXI_arlen);
    mp_S06_AXI_transactor->ARSIZE(S06_AXI_arsize);
    mp_S06_AXI_transactor->ARBURST(S06_AXI_arburst);
    mp_S06_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S06_AXI_arlock_converter");
    mp_S06_AXI_arlock_converter->vector_in(S06_AXI_arlock);
    mp_S06_AXI_arlock_converter->scalar_out(m_S06_AXI_arlock_converter_signal);
    mp_S06_AXI_transactor->ARLOCK(m_S06_AXI_arlock_converter_signal);
    mp_S06_AXI_transactor->ARCACHE(S06_AXI_arcache);
    mp_S06_AXI_transactor->ARPROT(S06_AXI_arprot);
    mp_S06_AXI_transactor->ARQOS(S06_AXI_arqos);
    mp_S06_AXI_transactor->ARVALID(S06_AXI_arvalid);
    mp_S06_AXI_transactor->ARREADY(S06_AXI_arready);
    mp_S06_AXI_transactor->RID(S06_AXI_rid);
    mp_S06_AXI_transactor->RDATA(S06_AXI_rdata);
    mp_S06_AXI_transactor->RRESP(S06_AXI_rresp);
    mp_S06_AXI_transactor->RLAST(S06_AXI_rlast);
    mp_S06_AXI_transactor->RVALID(S06_AXI_rvalid);
    mp_S06_AXI_transactor->RREADY(S06_AXI_rready);
    mp_S06_AXI_transactor->CLK(aclk);
    mp_S06_AXI_transactor->RST(aresetn);

    // S06_AXI' transactor sockets

    mp_impl->S06_AXI_tlm_aximm_read_socket->bind(*(mp_S06_AXI_transactor->rd_socket));
    mp_impl->S06_AXI_tlm_aximm_write_socket->bind(*(mp_S06_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S07_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S07_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S07_AXI' transactor parameters
    xsc::common_cpp::properties S07_AXI_transactor_param_props;
    S07_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S07_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S07_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S07_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S07_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S07_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S07_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S07_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S07_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S07_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S07_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S07_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S07_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S07_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S07_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S07_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S07_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S07_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S07_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S07_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S07_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S07_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S07_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S07_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S07_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S07_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S07_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S07_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S07_AXI_transactor", S07_AXI_transactor_param_props);

    // S07_AXI' transactor ports

    mp_S07_AXI_transactor->AWID(S07_AXI_awid);
    mp_S07_AXI_transactor->AWADDR(S07_AXI_awaddr);
    mp_S07_AXI_transactor->AWLEN(S07_AXI_awlen);
    mp_S07_AXI_transactor->AWSIZE(S07_AXI_awsize);
    mp_S07_AXI_transactor->AWBURST(S07_AXI_awburst);
    mp_S07_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S07_AXI_awlock_converter");
    mp_S07_AXI_awlock_converter->vector_in(S07_AXI_awlock);
    mp_S07_AXI_awlock_converter->scalar_out(m_S07_AXI_awlock_converter_signal);
    mp_S07_AXI_transactor->AWLOCK(m_S07_AXI_awlock_converter_signal);
    mp_S07_AXI_transactor->AWCACHE(S07_AXI_awcache);
    mp_S07_AXI_transactor->AWPROT(S07_AXI_awprot);
    mp_S07_AXI_transactor->AWQOS(S07_AXI_awqos);
    mp_S07_AXI_transactor->AWVALID(S07_AXI_awvalid);
    mp_S07_AXI_transactor->AWREADY(S07_AXI_awready);
    mp_S07_AXI_transactor->WDATA(S07_AXI_wdata);
    mp_S07_AXI_transactor->WSTRB(S07_AXI_wstrb);
    mp_S07_AXI_transactor->WLAST(S07_AXI_wlast);
    mp_S07_AXI_transactor->WVALID(S07_AXI_wvalid);
    mp_S07_AXI_transactor->WREADY(S07_AXI_wready);
    mp_S07_AXI_transactor->BID(S07_AXI_bid);
    mp_S07_AXI_transactor->BRESP(S07_AXI_bresp);
    mp_S07_AXI_transactor->BVALID(S07_AXI_bvalid);
    mp_S07_AXI_transactor->BREADY(S07_AXI_bready);
    mp_S07_AXI_transactor->ARID(S07_AXI_arid);
    mp_S07_AXI_transactor->ARADDR(S07_AXI_araddr);
    mp_S07_AXI_transactor->ARLEN(S07_AXI_arlen);
    mp_S07_AXI_transactor->ARSIZE(S07_AXI_arsize);
    mp_S07_AXI_transactor->ARBURST(S07_AXI_arburst);
    mp_S07_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S07_AXI_arlock_converter");
    mp_S07_AXI_arlock_converter->vector_in(S07_AXI_arlock);
    mp_S07_AXI_arlock_converter->scalar_out(m_S07_AXI_arlock_converter_signal);
    mp_S07_AXI_transactor->ARLOCK(m_S07_AXI_arlock_converter_signal);
    mp_S07_AXI_transactor->ARCACHE(S07_AXI_arcache);
    mp_S07_AXI_transactor->ARPROT(S07_AXI_arprot);
    mp_S07_AXI_transactor->ARQOS(S07_AXI_arqos);
    mp_S07_AXI_transactor->ARVALID(S07_AXI_arvalid);
    mp_S07_AXI_transactor->ARREADY(S07_AXI_arready);
    mp_S07_AXI_transactor->RID(S07_AXI_rid);
    mp_S07_AXI_transactor->RDATA(S07_AXI_rdata);
    mp_S07_AXI_transactor->RRESP(S07_AXI_rresp);
    mp_S07_AXI_transactor->RLAST(S07_AXI_rlast);
    mp_S07_AXI_transactor->RVALID(S07_AXI_rvalid);
    mp_S07_AXI_transactor->RREADY(S07_AXI_rready);
    mp_S07_AXI_transactor->CLK(aclk);
    mp_S07_AXI_transactor->RST(aresetn);

    // S07_AXI' transactor sockets

    mp_impl->S07_AXI_tlm_aximm_read_socket->bind(*(mp_S07_AXI_transactor->rd_socket));
    mp_impl->S07_AXI_tlm_aximm_write_socket->bind(*(mp_S07_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S08_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S08_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S08_AXI' transactor parameters
    xsc::common_cpp::properties S08_AXI_transactor_param_props;
    S08_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S08_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S08_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S08_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S08_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S08_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S08_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S08_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S08_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S08_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S08_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S08_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S08_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S08_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S08_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S08_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S08_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S08_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S08_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S08_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S08_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S08_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S08_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S08_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S08_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S08_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S08_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S08_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S08_AXI_transactor", S08_AXI_transactor_param_props);

    // S08_AXI' transactor ports

    mp_S08_AXI_transactor->AWID(S08_AXI_awid);
    mp_S08_AXI_transactor->AWADDR(S08_AXI_awaddr);
    mp_S08_AXI_transactor->AWLEN(S08_AXI_awlen);
    mp_S08_AXI_transactor->AWSIZE(S08_AXI_awsize);
    mp_S08_AXI_transactor->AWBURST(S08_AXI_awburst);
    mp_S08_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S08_AXI_awlock_converter");
    mp_S08_AXI_awlock_converter->vector_in(S08_AXI_awlock);
    mp_S08_AXI_awlock_converter->scalar_out(m_S08_AXI_awlock_converter_signal);
    mp_S08_AXI_transactor->AWLOCK(m_S08_AXI_awlock_converter_signal);
    mp_S08_AXI_transactor->AWCACHE(S08_AXI_awcache);
    mp_S08_AXI_transactor->AWPROT(S08_AXI_awprot);
    mp_S08_AXI_transactor->AWQOS(S08_AXI_awqos);
    mp_S08_AXI_transactor->AWVALID(S08_AXI_awvalid);
    mp_S08_AXI_transactor->AWREADY(S08_AXI_awready);
    mp_S08_AXI_transactor->WDATA(S08_AXI_wdata);
    mp_S08_AXI_transactor->WSTRB(S08_AXI_wstrb);
    mp_S08_AXI_transactor->WLAST(S08_AXI_wlast);
    mp_S08_AXI_transactor->WVALID(S08_AXI_wvalid);
    mp_S08_AXI_transactor->WREADY(S08_AXI_wready);
    mp_S08_AXI_transactor->BID(S08_AXI_bid);
    mp_S08_AXI_transactor->BRESP(S08_AXI_bresp);
    mp_S08_AXI_transactor->BVALID(S08_AXI_bvalid);
    mp_S08_AXI_transactor->BREADY(S08_AXI_bready);
    mp_S08_AXI_transactor->ARID(S08_AXI_arid);
    mp_S08_AXI_transactor->ARADDR(S08_AXI_araddr);
    mp_S08_AXI_transactor->ARLEN(S08_AXI_arlen);
    mp_S08_AXI_transactor->ARSIZE(S08_AXI_arsize);
    mp_S08_AXI_transactor->ARBURST(S08_AXI_arburst);
    mp_S08_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S08_AXI_arlock_converter");
    mp_S08_AXI_arlock_converter->vector_in(S08_AXI_arlock);
    mp_S08_AXI_arlock_converter->scalar_out(m_S08_AXI_arlock_converter_signal);
    mp_S08_AXI_transactor->ARLOCK(m_S08_AXI_arlock_converter_signal);
    mp_S08_AXI_transactor->ARCACHE(S08_AXI_arcache);
    mp_S08_AXI_transactor->ARPROT(S08_AXI_arprot);
    mp_S08_AXI_transactor->ARQOS(S08_AXI_arqos);
    mp_S08_AXI_transactor->ARVALID(S08_AXI_arvalid);
    mp_S08_AXI_transactor->ARREADY(S08_AXI_arready);
    mp_S08_AXI_transactor->RID(S08_AXI_rid);
    mp_S08_AXI_transactor->RDATA(S08_AXI_rdata);
    mp_S08_AXI_transactor->RRESP(S08_AXI_rresp);
    mp_S08_AXI_transactor->RLAST(S08_AXI_rlast);
    mp_S08_AXI_transactor->RVALID(S08_AXI_rvalid);
    mp_S08_AXI_transactor->RREADY(S08_AXI_rready);
    mp_S08_AXI_transactor->CLK(aclk);
    mp_S08_AXI_transactor->RST(aresetn);

    // S08_AXI' transactor sockets

    mp_impl->S08_AXI_tlm_aximm_read_socket->bind(*(mp_S08_AXI_transactor->rd_socket));
    mp_impl->S08_AXI_tlm_aximm_write_socket->bind(*(mp_S08_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S09_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S09_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S09_AXI' transactor parameters
    xsc::common_cpp::properties S09_AXI_transactor_param_props;
    S09_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S09_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S09_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S09_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S09_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S09_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S09_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S09_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S09_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S09_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S09_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S09_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S09_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S09_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S09_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S09_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S09_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S09_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S09_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S09_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S09_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S09_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S09_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S09_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S09_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S09_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S09_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S09_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S09_AXI_transactor", S09_AXI_transactor_param_props);

    // S09_AXI' transactor ports

    mp_S09_AXI_transactor->AWID(S09_AXI_awid);
    mp_S09_AXI_transactor->AWADDR(S09_AXI_awaddr);
    mp_S09_AXI_transactor->AWLEN(S09_AXI_awlen);
    mp_S09_AXI_transactor->AWSIZE(S09_AXI_awsize);
    mp_S09_AXI_transactor->AWBURST(S09_AXI_awburst);
    mp_S09_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S09_AXI_awlock_converter");
    mp_S09_AXI_awlock_converter->vector_in(S09_AXI_awlock);
    mp_S09_AXI_awlock_converter->scalar_out(m_S09_AXI_awlock_converter_signal);
    mp_S09_AXI_transactor->AWLOCK(m_S09_AXI_awlock_converter_signal);
    mp_S09_AXI_transactor->AWCACHE(S09_AXI_awcache);
    mp_S09_AXI_transactor->AWPROT(S09_AXI_awprot);
    mp_S09_AXI_transactor->AWQOS(S09_AXI_awqos);
    mp_S09_AXI_transactor->AWVALID(S09_AXI_awvalid);
    mp_S09_AXI_transactor->AWREADY(S09_AXI_awready);
    mp_S09_AXI_transactor->WDATA(S09_AXI_wdata);
    mp_S09_AXI_transactor->WSTRB(S09_AXI_wstrb);
    mp_S09_AXI_transactor->WLAST(S09_AXI_wlast);
    mp_S09_AXI_transactor->WVALID(S09_AXI_wvalid);
    mp_S09_AXI_transactor->WREADY(S09_AXI_wready);
    mp_S09_AXI_transactor->BID(S09_AXI_bid);
    mp_S09_AXI_transactor->BRESP(S09_AXI_bresp);
    mp_S09_AXI_transactor->BVALID(S09_AXI_bvalid);
    mp_S09_AXI_transactor->BREADY(S09_AXI_bready);
    mp_S09_AXI_transactor->ARID(S09_AXI_arid);
    mp_S09_AXI_transactor->ARADDR(S09_AXI_araddr);
    mp_S09_AXI_transactor->ARLEN(S09_AXI_arlen);
    mp_S09_AXI_transactor->ARSIZE(S09_AXI_arsize);
    mp_S09_AXI_transactor->ARBURST(S09_AXI_arburst);
    mp_S09_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S09_AXI_arlock_converter");
    mp_S09_AXI_arlock_converter->vector_in(S09_AXI_arlock);
    mp_S09_AXI_arlock_converter->scalar_out(m_S09_AXI_arlock_converter_signal);
    mp_S09_AXI_transactor->ARLOCK(m_S09_AXI_arlock_converter_signal);
    mp_S09_AXI_transactor->ARCACHE(S09_AXI_arcache);
    mp_S09_AXI_transactor->ARPROT(S09_AXI_arprot);
    mp_S09_AXI_transactor->ARQOS(S09_AXI_arqos);
    mp_S09_AXI_transactor->ARVALID(S09_AXI_arvalid);
    mp_S09_AXI_transactor->ARREADY(S09_AXI_arready);
    mp_S09_AXI_transactor->RID(S09_AXI_rid);
    mp_S09_AXI_transactor->RDATA(S09_AXI_rdata);
    mp_S09_AXI_transactor->RRESP(S09_AXI_rresp);
    mp_S09_AXI_transactor->RLAST(S09_AXI_rlast);
    mp_S09_AXI_transactor->RVALID(S09_AXI_rvalid);
    mp_S09_AXI_transactor->RREADY(S09_AXI_rready);
    mp_S09_AXI_transactor->CLK(aclk);
    mp_S09_AXI_transactor->RST(aresetn);

    // S09_AXI' transactor sockets

    mp_impl->S09_AXI_tlm_aximm_read_socket->bind(*(mp_S09_AXI_transactor->rd_socket));
    mp_impl->S09_AXI_tlm_aximm_write_socket->bind(*(mp_S09_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S10_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S10_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S10_AXI' transactor parameters
    xsc::common_cpp::properties S10_AXI_transactor_param_props;
    S10_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S10_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S10_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S10_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S10_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S10_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S10_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S10_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S10_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S10_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S10_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S10_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S10_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S10_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S10_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S10_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S10_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S10_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S10_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S10_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S10_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S10_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S10_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S10_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S10_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S10_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S10_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S10_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S10_AXI_transactor", S10_AXI_transactor_param_props);

    // S10_AXI' transactor ports

    mp_S10_AXI_transactor->AWID(S10_AXI_awid);
    mp_S10_AXI_transactor->AWADDR(S10_AXI_awaddr);
    mp_S10_AXI_transactor->AWLEN(S10_AXI_awlen);
    mp_S10_AXI_transactor->AWSIZE(S10_AXI_awsize);
    mp_S10_AXI_transactor->AWBURST(S10_AXI_awburst);
    mp_S10_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S10_AXI_awlock_converter");
    mp_S10_AXI_awlock_converter->vector_in(S10_AXI_awlock);
    mp_S10_AXI_awlock_converter->scalar_out(m_S10_AXI_awlock_converter_signal);
    mp_S10_AXI_transactor->AWLOCK(m_S10_AXI_awlock_converter_signal);
    mp_S10_AXI_transactor->AWCACHE(S10_AXI_awcache);
    mp_S10_AXI_transactor->AWPROT(S10_AXI_awprot);
    mp_S10_AXI_transactor->AWQOS(S10_AXI_awqos);
    mp_S10_AXI_transactor->AWVALID(S10_AXI_awvalid);
    mp_S10_AXI_transactor->AWREADY(S10_AXI_awready);
    mp_S10_AXI_transactor->WDATA(S10_AXI_wdata);
    mp_S10_AXI_transactor->WSTRB(S10_AXI_wstrb);
    mp_S10_AXI_transactor->WLAST(S10_AXI_wlast);
    mp_S10_AXI_transactor->WVALID(S10_AXI_wvalid);
    mp_S10_AXI_transactor->WREADY(S10_AXI_wready);
    mp_S10_AXI_transactor->BID(S10_AXI_bid);
    mp_S10_AXI_transactor->BRESP(S10_AXI_bresp);
    mp_S10_AXI_transactor->BVALID(S10_AXI_bvalid);
    mp_S10_AXI_transactor->BREADY(S10_AXI_bready);
    mp_S10_AXI_transactor->ARID(S10_AXI_arid);
    mp_S10_AXI_transactor->ARADDR(S10_AXI_araddr);
    mp_S10_AXI_transactor->ARLEN(S10_AXI_arlen);
    mp_S10_AXI_transactor->ARSIZE(S10_AXI_arsize);
    mp_S10_AXI_transactor->ARBURST(S10_AXI_arburst);
    mp_S10_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S10_AXI_arlock_converter");
    mp_S10_AXI_arlock_converter->vector_in(S10_AXI_arlock);
    mp_S10_AXI_arlock_converter->scalar_out(m_S10_AXI_arlock_converter_signal);
    mp_S10_AXI_transactor->ARLOCK(m_S10_AXI_arlock_converter_signal);
    mp_S10_AXI_transactor->ARCACHE(S10_AXI_arcache);
    mp_S10_AXI_transactor->ARPROT(S10_AXI_arprot);
    mp_S10_AXI_transactor->ARQOS(S10_AXI_arqos);
    mp_S10_AXI_transactor->ARVALID(S10_AXI_arvalid);
    mp_S10_AXI_transactor->ARREADY(S10_AXI_arready);
    mp_S10_AXI_transactor->RID(S10_AXI_rid);
    mp_S10_AXI_transactor->RDATA(S10_AXI_rdata);
    mp_S10_AXI_transactor->RRESP(S10_AXI_rresp);
    mp_S10_AXI_transactor->RLAST(S10_AXI_rlast);
    mp_S10_AXI_transactor->RVALID(S10_AXI_rvalid);
    mp_S10_AXI_transactor->RREADY(S10_AXI_rready);
    mp_S10_AXI_transactor->CLK(aclk);
    mp_S10_AXI_transactor->RST(aresetn);

    // S10_AXI' transactor sockets

    mp_impl->S10_AXI_tlm_aximm_read_socket->bind(*(mp_S10_AXI_transactor->rd_socket));
    mp_impl->S10_AXI_tlm_aximm_write_socket->bind(*(mp_S10_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S11_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S11_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S11_AXI' transactor parameters
    xsc::common_cpp::properties S11_AXI_transactor_param_props;
    S11_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S11_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S11_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S11_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S11_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S11_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S11_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S11_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S11_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S11_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S11_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S11_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S11_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S11_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S11_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S11_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S11_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S11_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S11_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S11_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S11_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S11_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S11_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S11_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S11_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S11_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S11_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S11_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S11_AXI_transactor", S11_AXI_transactor_param_props);

    // S11_AXI' transactor ports

    mp_S11_AXI_transactor->AWID(S11_AXI_awid);
    mp_S11_AXI_transactor->AWADDR(S11_AXI_awaddr);
    mp_S11_AXI_transactor->AWLEN(S11_AXI_awlen);
    mp_S11_AXI_transactor->AWSIZE(S11_AXI_awsize);
    mp_S11_AXI_transactor->AWBURST(S11_AXI_awburst);
    mp_S11_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S11_AXI_awlock_converter");
    mp_S11_AXI_awlock_converter->vector_in(S11_AXI_awlock);
    mp_S11_AXI_awlock_converter->scalar_out(m_S11_AXI_awlock_converter_signal);
    mp_S11_AXI_transactor->AWLOCK(m_S11_AXI_awlock_converter_signal);
    mp_S11_AXI_transactor->AWCACHE(S11_AXI_awcache);
    mp_S11_AXI_transactor->AWPROT(S11_AXI_awprot);
    mp_S11_AXI_transactor->AWQOS(S11_AXI_awqos);
    mp_S11_AXI_transactor->AWVALID(S11_AXI_awvalid);
    mp_S11_AXI_transactor->AWREADY(S11_AXI_awready);
    mp_S11_AXI_transactor->WDATA(S11_AXI_wdata);
    mp_S11_AXI_transactor->WSTRB(S11_AXI_wstrb);
    mp_S11_AXI_transactor->WLAST(S11_AXI_wlast);
    mp_S11_AXI_transactor->WVALID(S11_AXI_wvalid);
    mp_S11_AXI_transactor->WREADY(S11_AXI_wready);
    mp_S11_AXI_transactor->BID(S11_AXI_bid);
    mp_S11_AXI_transactor->BRESP(S11_AXI_bresp);
    mp_S11_AXI_transactor->BVALID(S11_AXI_bvalid);
    mp_S11_AXI_transactor->BREADY(S11_AXI_bready);
    mp_S11_AXI_transactor->ARID(S11_AXI_arid);
    mp_S11_AXI_transactor->ARADDR(S11_AXI_araddr);
    mp_S11_AXI_transactor->ARLEN(S11_AXI_arlen);
    mp_S11_AXI_transactor->ARSIZE(S11_AXI_arsize);
    mp_S11_AXI_transactor->ARBURST(S11_AXI_arburst);
    mp_S11_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S11_AXI_arlock_converter");
    mp_S11_AXI_arlock_converter->vector_in(S11_AXI_arlock);
    mp_S11_AXI_arlock_converter->scalar_out(m_S11_AXI_arlock_converter_signal);
    mp_S11_AXI_transactor->ARLOCK(m_S11_AXI_arlock_converter_signal);
    mp_S11_AXI_transactor->ARCACHE(S11_AXI_arcache);
    mp_S11_AXI_transactor->ARPROT(S11_AXI_arprot);
    mp_S11_AXI_transactor->ARQOS(S11_AXI_arqos);
    mp_S11_AXI_transactor->ARVALID(S11_AXI_arvalid);
    mp_S11_AXI_transactor->ARREADY(S11_AXI_arready);
    mp_S11_AXI_transactor->RID(S11_AXI_rid);
    mp_S11_AXI_transactor->RDATA(S11_AXI_rdata);
    mp_S11_AXI_transactor->RRESP(S11_AXI_rresp);
    mp_S11_AXI_transactor->RLAST(S11_AXI_rlast);
    mp_S11_AXI_transactor->RVALID(S11_AXI_rvalid);
    mp_S11_AXI_transactor->RREADY(S11_AXI_rready);
    mp_S11_AXI_transactor->CLK(aclk);
    mp_S11_AXI_transactor->RST(aresetn);

    // S11_AXI' transactor sockets

    mp_impl->S11_AXI_tlm_aximm_read_socket->bind(*(mp_S11_AXI_transactor->rd_socket));
    mp_impl->S11_AXI_tlm_aximm_write_socket->bind(*(mp_S11_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S12_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S12_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S12_AXI' transactor parameters
    xsc::common_cpp::properties S12_AXI_transactor_param_props;
    S12_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S12_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S12_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S12_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S12_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S12_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S12_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S12_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S12_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S12_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S12_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S12_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S12_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S12_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S12_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S12_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S12_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S12_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S12_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S12_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S12_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S12_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S12_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S12_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S12_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S12_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S12_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S12_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S12_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S12_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S12_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S12_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S12_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S12_AXI_transactor", S12_AXI_transactor_param_props);

    // S12_AXI' transactor ports

    mp_S12_AXI_transactor->AWID(S12_AXI_awid);
    mp_S12_AXI_transactor->AWADDR(S12_AXI_awaddr);
    mp_S12_AXI_transactor->AWLEN(S12_AXI_awlen);
    mp_S12_AXI_transactor->AWSIZE(S12_AXI_awsize);
    mp_S12_AXI_transactor->AWBURST(S12_AXI_awburst);
    mp_S12_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S12_AXI_awlock_converter");
    mp_S12_AXI_awlock_converter->vector_in(S12_AXI_awlock);
    mp_S12_AXI_awlock_converter->scalar_out(m_S12_AXI_awlock_converter_signal);
    mp_S12_AXI_transactor->AWLOCK(m_S12_AXI_awlock_converter_signal);
    mp_S12_AXI_transactor->AWCACHE(S12_AXI_awcache);
    mp_S12_AXI_transactor->AWPROT(S12_AXI_awprot);
    mp_S12_AXI_transactor->AWQOS(S12_AXI_awqos);
    mp_S12_AXI_transactor->AWVALID(S12_AXI_awvalid);
    mp_S12_AXI_transactor->AWREADY(S12_AXI_awready);
    mp_S12_AXI_transactor->WDATA(S12_AXI_wdata);
    mp_S12_AXI_transactor->WSTRB(S12_AXI_wstrb);
    mp_S12_AXI_transactor->WLAST(S12_AXI_wlast);
    mp_S12_AXI_transactor->WVALID(S12_AXI_wvalid);
    mp_S12_AXI_transactor->WREADY(S12_AXI_wready);
    mp_S12_AXI_transactor->BID(S12_AXI_bid);
    mp_S12_AXI_transactor->BRESP(S12_AXI_bresp);
    mp_S12_AXI_transactor->BVALID(S12_AXI_bvalid);
    mp_S12_AXI_transactor->BREADY(S12_AXI_bready);
    mp_S12_AXI_transactor->ARID(S12_AXI_arid);
    mp_S12_AXI_transactor->ARADDR(S12_AXI_araddr);
    mp_S12_AXI_transactor->ARLEN(S12_AXI_arlen);
    mp_S12_AXI_transactor->ARSIZE(S12_AXI_arsize);
    mp_S12_AXI_transactor->ARBURST(S12_AXI_arburst);
    mp_S12_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S12_AXI_arlock_converter");
    mp_S12_AXI_arlock_converter->vector_in(S12_AXI_arlock);
    mp_S12_AXI_arlock_converter->scalar_out(m_S12_AXI_arlock_converter_signal);
    mp_S12_AXI_transactor->ARLOCK(m_S12_AXI_arlock_converter_signal);
    mp_S12_AXI_transactor->ARCACHE(S12_AXI_arcache);
    mp_S12_AXI_transactor->ARPROT(S12_AXI_arprot);
    mp_S12_AXI_transactor->ARQOS(S12_AXI_arqos);
    mp_S12_AXI_transactor->ARVALID(S12_AXI_arvalid);
    mp_S12_AXI_transactor->ARREADY(S12_AXI_arready);
    mp_S12_AXI_transactor->RID(S12_AXI_rid);
    mp_S12_AXI_transactor->RDATA(S12_AXI_rdata);
    mp_S12_AXI_transactor->RRESP(S12_AXI_rresp);
    mp_S12_AXI_transactor->RLAST(S12_AXI_rlast);
    mp_S12_AXI_transactor->RVALID(S12_AXI_rvalid);
    mp_S12_AXI_transactor->RREADY(S12_AXI_rready);
    mp_S12_AXI_transactor->CLK(aclk);
    mp_S12_AXI_transactor->RST(aresetn);

    // S12_AXI' transactor sockets

    mp_impl->S12_AXI_tlm_aximm_read_socket->bind(*(mp_S12_AXI_transactor->rd_socket));
    mp_impl->S12_AXI_tlm_aximm_write_socket->bind(*(mp_S12_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S13_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S13_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S13_AXI' transactor parameters
    xsc::common_cpp::properties S13_AXI_transactor_param_props;
    S13_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S13_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S13_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S13_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S13_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S13_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S13_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S13_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S13_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S13_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S13_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S13_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S13_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S13_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S13_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S13_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S13_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S13_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S13_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S13_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S13_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S13_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S13_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S13_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S13_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S13_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S13_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S13_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S13_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S13_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S13_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S13_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S13_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S13_AXI_transactor", S13_AXI_transactor_param_props);

    // S13_AXI' transactor ports

    mp_S13_AXI_transactor->AWID(S13_AXI_awid);
    mp_S13_AXI_transactor->AWADDR(S13_AXI_awaddr);
    mp_S13_AXI_transactor->AWLEN(S13_AXI_awlen);
    mp_S13_AXI_transactor->AWSIZE(S13_AXI_awsize);
    mp_S13_AXI_transactor->AWBURST(S13_AXI_awburst);
    mp_S13_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S13_AXI_awlock_converter");
    mp_S13_AXI_awlock_converter->vector_in(S13_AXI_awlock);
    mp_S13_AXI_awlock_converter->scalar_out(m_S13_AXI_awlock_converter_signal);
    mp_S13_AXI_transactor->AWLOCK(m_S13_AXI_awlock_converter_signal);
    mp_S13_AXI_transactor->AWCACHE(S13_AXI_awcache);
    mp_S13_AXI_transactor->AWPROT(S13_AXI_awprot);
    mp_S13_AXI_transactor->AWQOS(S13_AXI_awqos);
    mp_S13_AXI_transactor->AWVALID(S13_AXI_awvalid);
    mp_S13_AXI_transactor->AWREADY(S13_AXI_awready);
    mp_S13_AXI_transactor->WDATA(S13_AXI_wdata);
    mp_S13_AXI_transactor->WSTRB(S13_AXI_wstrb);
    mp_S13_AXI_transactor->WLAST(S13_AXI_wlast);
    mp_S13_AXI_transactor->WVALID(S13_AXI_wvalid);
    mp_S13_AXI_transactor->WREADY(S13_AXI_wready);
    mp_S13_AXI_transactor->BID(S13_AXI_bid);
    mp_S13_AXI_transactor->BRESP(S13_AXI_bresp);
    mp_S13_AXI_transactor->BVALID(S13_AXI_bvalid);
    mp_S13_AXI_transactor->BREADY(S13_AXI_bready);
    mp_S13_AXI_transactor->ARID(S13_AXI_arid);
    mp_S13_AXI_transactor->ARADDR(S13_AXI_araddr);
    mp_S13_AXI_transactor->ARLEN(S13_AXI_arlen);
    mp_S13_AXI_transactor->ARSIZE(S13_AXI_arsize);
    mp_S13_AXI_transactor->ARBURST(S13_AXI_arburst);
    mp_S13_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S13_AXI_arlock_converter");
    mp_S13_AXI_arlock_converter->vector_in(S13_AXI_arlock);
    mp_S13_AXI_arlock_converter->scalar_out(m_S13_AXI_arlock_converter_signal);
    mp_S13_AXI_transactor->ARLOCK(m_S13_AXI_arlock_converter_signal);
    mp_S13_AXI_transactor->ARCACHE(S13_AXI_arcache);
    mp_S13_AXI_transactor->ARPROT(S13_AXI_arprot);
    mp_S13_AXI_transactor->ARQOS(S13_AXI_arqos);
    mp_S13_AXI_transactor->ARVALID(S13_AXI_arvalid);
    mp_S13_AXI_transactor->ARREADY(S13_AXI_arready);
    mp_S13_AXI_transactor->RID(S13_AXI_rid);
    mp_S13_AXI_transactor->RDATA(S13_AXI_rdata);
    mp_S13_AXI_transactor->RRESP(S13_AXI_rresp);
    mp_S13_AXI_transactor->RLAST(S13_AXI_rlast);
    mp_S13_AXI_transactor->RVALID(S13_AXI_rvalid);
    mp_S13_AXI_transactor->RREADY(S13_AXI_rready);
    mp_S13_AXI_transactor->CLK(aclk);
    mp_S13_AXI_transactor->RST(aresetn);

    // S13_AXI' transactor sockets

    mp_impl->S13_AXI_tlm_aximm_read_socket->bind(*(mp_S13_AXI_transactor->rd_socket));
    mp_impl->S13_AXI_tlm_aximm_write_socket->bind(*(mp_S13_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S14_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S14_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S14_AXI' transactor parameters
    xsc::common_cpp::properties S14_AXI_transactor_param_props;
    S14_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S14_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S14_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S14_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S14_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S14_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S14_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S14_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S14_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S14_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S14_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S14_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S14_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S14_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S14_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S14_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S14_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S14_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S14_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S14_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S14_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S14_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S14_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S14_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S14_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S14_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S14_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S14_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S14_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S14_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S14_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S14_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S14_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S14_AXI_transactor", S14_AXI_transactor_param_props);

    // S14_AXI' transactor ports

    mp_S14_AXI_transactor->AWID(S14_AXI_awid);
    mp_S14_AXI_transactor->AWADDR(S14_AXI_awaddr);
    mp_S14_AXI_transactor->AWLEN(S14_AXI_awlen);
    mp_S14_AXI_transactor->AWSIZE(S14_AXI_awsize);
    mp_S14_AXI_transactor->AWBURST(S14_AXI_awburst);
    mp_S14_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S14_AXI_awlock_converter");
    mp_S14_AXI_awlock_converter->vector_in(S14_AXI_awlock);
    mp_S14_AXI_awlock_converter->scalar_out(m_S14_AXI_awlock_converter_signal);
    mp_S14_AXI_transactor->AWLOCK(m_S14_AXI_awlock_converter_signal);
    mp_S14_AXI_transactor->AWCACHE(S14_AXI_awcache);
    mp_S14_AXI_transactor->AWPROT(S14_AXI_awprot);
    mp_S14_AXI_transactor->AWQOS(S14_AXI_awqos);
    mp_S14_AXI_transactor->AWVALID(S14_AXI_awvalid);
    mp_S14_AXI_transactor->AWREADY(S14_AXI_awready);
    mp_S14_AXI_transactor->WDATA(S14_AXI_wdata);
    mp_S14_AXI_transactor->WSTRB(S14_AXI_wstrb);
    mp_S14_AXI_transactor->WLAST(S14_AXI_wlast);
    mp_S14_AXI_transactor->WVALID(S14_AXI_wvalid);
    mp_S14_AXI_transactor->WREADY(S14_AXI_wready);
    mp_S14_AXI_transactor->BID(S14_AXI_bid);
    mp_S14_AXI_transactor->BRESP(S14_AXI_bresp);
    mp_S14_AXI_transactor->BVALID(S14_AXI_bvalid);
    mp_S14_AXI_transactor->BREADY(S14_AXI_bready);
    mp_S14_AXI_transactor->ARID(S14_AXI_arid);
    mp_S14_AXI_transactor->ARADDR(S14_AXI_araddr);
    mp_S14_AXI_transactor->ARLEN(S14_AXI_arlen);
    mp_S14_AXI_transactor->ARSIZE(S14_AXI_arsize);
    mp_S14_AXI_transactor->ARBURST(S14_AXI_arburst);
    mp_S14_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S14_AXI_arlock_converter");
    mp_S14_AXI_arlock_converter->vector_in(S14_AXI_arlock);
    mp_S14_AXI_arlock_converter->scalar_out(m_S14_AXI_arlock_converter_signal);
    mp_S14_AXI_transactor->ARLOCK(m_S14_AXI_arlock_converter_signal);
    mp_S14_AXI_transactor->ARCACHE(S14_AXI_arcache);
    mp_S14_AXI_transactor->ARPROT(S14_AXI_arprot);
    mp_S14_AXI_transactor->ARQOS(S14_AXI_arqos);
    mp_S14_AXI_transactor->ARVALID(S14_AXI_arvalid);
    mp_S14_AXI_transactor->ARREADY(S14_AXI_arready);
    mp_S14_AXI_transactor->RID(S14_AXI_rid);
    mp_S14_AXI_transactor->RDATA(S14_AXI_rdata);
    mp_S14_AXI_transactor->RRESP(S14_AXI_rresp);
    mp_S14_AXI_transactor->RLAST(S14_AXI_rlast);
    mp_S14_AXI_transactor->RVALID(S14_AXI_rvalid);
    mp_S14_AXI_transactor->RREADY(S14_AXI_rready);
    mp_S14_AXI_transactor->CLK(aclk);
    mp_S14_AXI_transactor->RST(aresetn);

    // S14_AXI' transactor sockets

    mp_impl->S14_AXI_tlm_aximm_read_socket->bind(*(mp_S14_AXI_transactor->rd_socket));
    mp_impl->S14_AXI_tlm_aximm_write_socket->bind(*(mp_S14_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S15_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S15_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S15_AXI' transactor parameters
    xsc::common_cpp::properties S15_AXI_transactor_param_props;
    S15_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S15_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S15_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S15_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S15_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S15_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S15_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S15_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S15_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S15_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S15_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S15_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S15_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S15_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S15_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S15_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S15_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S15_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S15_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S15_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S15_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S15_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S15_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S15_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S15_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S15_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S15_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S15_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S15_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S15_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S15_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S15_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S15_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S15_AXI_transactor", S15_AXI_transactor_param_props);

    // S15_AXI' transactor ports

    mp_S15_AXI_transactor->AWID(S15_AXI_awid);
    mp_S15_AXI_transactor->AWADDR(S15_AXI_awaddr);
    mp_S15_AXI_transactor->AWLEN(S15_AXI_awlen);
    mp_S15_AXI_transactor->AWSIZE(S15_AXI_awsize);
    mp_S15_AXI_transactor->AWBURST(S15_AXI_awburst);
    mp_S15_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S15_AXI_awlock_converter");
    mp_S15_AXI_awlock_converter->vector_in(S15_AXI_awlock);
    mp_S15_AXI_awlock_converter->scalar_out(m_S15_AXI_awlock_converter_signal);
    mp_S15_AXI_transactor->AWLOCK(m_S15_AXI_awlock_converter_signal);
    mp_S15_AXI_transactor->AWCACHE(S15_AXI_awcache);
    mp_S15_AXI_transactor->AWPROT(S15_AXI_awprot);
    mp_S15_AXI_transactor->AWQOS(S15_AXI_awqos);
    mp_S15_AXI_transactor->AWVALID(S15_AXI_awvalid);
    mp_S15_AXI_transactor->AWREADY(S15_AXI_awready);
    mp_S15_AXI_transactor->WDATA(S15_AXI_wdata);
    mp_S15_AXI_transactor->WSTRB(S15_AXI_wstrb);
    mp_S15_AXI_transactor->WLAST(S15_AXI_wlast);
    mp_S15_AXI_transactor->WVALID(S15_AXI_wvalid);
    mp_S15_AXI_transactor->WREADY(S15_AXI_wready);
    mp_S15_AXI_transactor->BID(S15_AXI_bid);
    mp_S15_AXI_transactor->BRESP(S15_AXI_bresp);
    mp_S15_AXI_transactor->BVALID(S15_AXI_bvalid);
    mp_S15_AXI_transactor->BREADY(S15_AXI_bready);
    mp_S15_AXI_transactor->ARID(S15_AXI_arid);
    mp_S15_AXI_transactor->ARADDR(S15_AXI_araddr);
    mp_S15_AXI_transactor->ARLEN(S15_AXI_arlen);
    mp_S15_AXI_transactor->ARSIZE(S15_AXI_arsize);
    mp_S15_AXI_transactor->ARBURST(S15_AXI_arburst);
    mp_S15_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S15_AXI_arlock_converter");
    mp_S15_AXI_arlock_converter->vector_in(S15_AXI_arlock);
    mp_S15_AXI_arlock_converter->scalar_out(m_S15_AXI_arlock_converter_signal);
    mp_S15_AXI_transactor->ARLOCK(m_S15_AXI_arlock_converter_signal);
    mp_S15_AXI_transactor->ARCACHE(S15_AXI_arcache);
    mp_S15_AXI_transactor->ARPROT(S15_AXI_arprot);
    mp_S15_AXI_transactor->ARQOS(S15_AXI_arqos);
    mp_S15_AXI_transactor->ARVALID(S15_AXI_arvalid);
    mp_S15_AXI_transactor->ARREADY(S15_AXI_arready);
    mp_S15_AXI_transactor->RID(S15_AXI_rid);
    mp_S15_AXI_transactor->RDATA(S15_AXI_rdata);
    mp_S15_AXI_transactor->RRESP(S15_AXI_rresp);
    mp_S15_AXI_transactor->RLAST(S15_AXI_rlast);
    mp_S15_AXI_transactor->RVALID(S15_AXI_rvalid);
    mp_S15_AXI_transactor->RREADY(S15_AXI_rready);
    mp_S15_AXI_transactor->CLK(aclk);
    mp_S15_AXI_transactor->RST(aresetn);

    // S15_AXI' transactor sockets

    mp_impl->S15_AXI_tlm_aximm_read_socket->bind(*(mp_S15_AXI_transactor->rd_socket));
    mp_impl->S15_AXI_tlm_aximm_write_socket->bind(*(mp_S15_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "M00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXI' transactor parameters
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,34,1,1,1,1,1,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);

    // M00_AXI' transactor ports

    mp_M00_AXI_transactor->AWADDR(M00_AXI_awaddr);
    mp_M00_AXI_transactor->AWLEN(M00_AXI_awlen);
    mp_M00_AXI_transactor->AWSIZE(M00_AXI_awsize);
    mp_M00_AXI_transactor->AWBURST(M00_AXI_awburst);
    mp_M00_AXI_awlock_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_awlock_converter");
    mp_M00_AXI_awlock_converter->scalar_in(m_M00_AXI_awlock_converter_signal);
    mp_M00_AXI_awlock_converter->vector_out(M00_AXI_awlock);
    mp_M00_AXI_transactor->AWLOCK(m_M00_AXI_awlock_converter_signal);
    mp_M00_AXI_transactor->AWCACHE(M00_AXI_awcache);
    mp_M00_AXI_transactor->AWPROT(M00_AXI_awprot);
    mp_M00_AXI_transactor->AWQOS(M00_AXI_awqos);
    mp_M00_AXI_transactor->AWVALID(M00_AXI_awvalid);
    mp_M00_AXI_transactor->AWREADY(M00_AXI_awready);
    mp_M00_AXI_transactor->WDATA(M00_AXI_wdata);
    mp_M00_AXI_transactor->WSTRB(M00_AXI_wstrb);
    mp_M00_AXI_transactor->WLAST(M00_AXI_wlast);
    mp_M00_AXI_transactor->WVALID(M00_AXI_wvalid);
    mp_M00_AXI_transactor->WREADY(M00_AXI_wready);
    mp_M00_AXI_transactor->BRESP(M00_AXI_bresp);
    mp_M00_AXI_transactor->BVALID(M00_AXI_bvalid);
    mp_M00_AXI_transactor->BREADY(M00_AXI_bready);
    mp_M00_AXI_transactor->ARADDR(M00_AXI_araddr);
    mp_M00_AXI_transactor->ARLEN(M00_AXI_arlen);
    mp_M00_AXI_transactor->ARSIZE(M00_AXI_arsize);
    mp_M00_AXI_transactor->ARBURST(M00_AXI_arburst);
    mp_M00_AXI_arlock_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_arlock_converter");
    mp_M00_AXI_arlock_converter->scalar_in(m_M00_AXI_arlock_converter_signal);
    mp_M00_AXI_arlock_converter->vector_out(M00_AXI_arlock);
    mp_M00_AXI_transactor->ARLOCK(m_M00_AXI_arlock_converter_signal);
    mp_M00_AXI_transactor->ARCACHE(M00_AXI_arcache);
    mp_M00_AXI_transactor->ARPROT(M00_AXI_arprot);
    mp_M00_AXI_transactor->ARQOS(M00_AXI_arqos);
    mp_M00_AXI_transactor->ARVALID(M00_AXI_arvalid);
    mp_M00_AXI_transactor->ARREADY(M00_AXI_arready);
    mp_M00_AXI_transactor->RDATA(M00_AXI_rdata);
    mp_M00_AXI_transactor->RRESP(M00_AXI_rresp);
    mp_M00_AXI_transactor->RLAST(M00_AXI_rlast);
    mp_M00_AXI_transactor->RVALID(M00_AXI_rvalid);
    mp_M00_AXI_transactor->RREADY(M00_AXI_rready);
    mp_M00_AXI_transactor->CLK(aclk);
    mp_M00_AXI_transactor->RST(aresetn);

    // M00_AXI' transactor sockets

    mp_impl->M00_AXI_tlm_aximm_read_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->M00_AXI_tlm_aximm_write_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XM_SYSTEMC




#ifdef RIVIERA
MemoryInterfacesVIP_smartconnect_0_0::MemoryInterfacesVIP_smartconnect_0_0(const sc_core::sc_module_name& nm) : MemoryInterfacesVIP_smartconnect_0_0_sc(nm), aclk("aclk"), aresetn("aresetn"), S00_AXI_awid("S00_AXI_awid"), S00_AXI_awaddr("S00_AXI_awaddr"), S00_AXI_awlen("S00_AXI_awlen"), S00_AXI_awsize("S00_AXI_awsize"), S00_AXI_awburst("S00_AXI_awburst"), S00_AXI_awlock("S00_AXI_awlock"), S00_AXI_awcache("S00_AXI_awcache"), S00_AXI_awprot("S00_AXI_awprot"), S00_AXI_awqos("S00_AXI_awqos"), S00_AXI_awvalid("S00_AXI_awvalid"), S00_AXI_awready("S00_AXI_awready"), S00_AXI_wdata("S00_AXI_wdata"), S00_AXI_wstrb("S00_AXI_wstrb"), S00_AXI_wlast("S00_AXI_wlast"), S00_AXI_wvalid("S00_AXI_wvalid"), S00_AXI_wready("S00_AXI_wready"), S00_AXI_bid("S00_AXI_bid"), S00_AXI_bresp("S00_AXI_bresp"), S00_AXI_bvalid("S00_AXI_bvalid"), S00_AXI_bready("S00_AXI_bready"), S00_AXI_arid("S00_AXI_arid"), S00_AXI_araddr("S00_AXI_araddr"), S00_AXI_arlen("S00_AXI_arlen"), S00_AXI_arsize("S00_AXI_arsize"), S00_AXI_arburst("S00_AXI_arburst"), S00_AXI_arlock("S00_AXI_arlock"), S00_AXI_arcache("S00_AXI_arcache"), S00_AXI_arprot("S00_AXI_arprot"), S00_AXI_arqos("S00_AXI_arqos"), S00_AXI_arvalid("S00_AXI_arvalid"), S00_AXI_arready("S00_AXI_arready"), S00_AXI_rid("S00_AXI_rid"), S00_AXI_rdata("S00_AXI_rdata"), S00_AXI_rresp("S00_AXI_rresp"), S00_AXI_rlast("S00_AXI_rlast"), S00_AXI_rvalid("S00_AXI_rvalid"), S00_AXI_rready("S00_AXI_rready"), S01_AXI_awid("S01_AXI_awid"), S01_AXI_awaddr("S01_AXI_awaddr"), S01_AXI_awlen("S01_AXI_awlen"), S01_AXI_awsize("S01_AXI_awsize"), S01_AXI_awburst("S01_AXI_awburst"), S01_AXI_awlock("S01_AXI_awlock"), S01_AXI_awcache("S01_AXI_awcache"), S01_AXI_awprot("S01_AXI_awprot"), S01_AXI_awqos("S01_AXI_awqos"), S01_AXI_awvalid("S01_AXI_awvalid"), S01_AXI_awready("S01_AXI_awready"), S01_AXI_wdata("S01_AXI_wdata"), S01_AXI_wstrb("S01_AXI_wstrb"), S01_AXI_wlast("S01_AXI_wlast"), S01_AXI_wvalid("S01_AXI_wvalid"), S01_AXI_wready("S01_AXI_wready"), S01_AXI_bid("S01_AXI_bid"), S01_AXI_bresp("S01_AXI_bresp"), S01_AXI_bvalid("S01_AXI_bvalid"), S01_AXI_bready("S01_AXI_bready"), S01_AXI_arid("S01_AXI_arid"), S01_AXI_araddr("S01_AXI_araddr"), S01_AXI_arlen("S01_AXI_arlen"), S01_AXI_arsize("S01_AXI_arsize"), S01_AXI_arburst("S01_AXI_arburst"), S01_AXI_arlock("S01_AXI_arlock"), S01_AXI_arcache("S01_AXI_arcache"), S01_AXI_arprot("S01_AXI_arprot"), S01_AXI_arqos("S01_AXI_arqos"), S01_AXI_arvalid("S01_AXI_arvalid"), S01_AXI_arready("S01_AXI_arready"), S01_AXI_rid("S01_AXI_rid"), S01_AXI_rdata("S01_AXI_rdata"), S01_AXI_rresp("S01_AXI_rresp"), S01_AXI_rlast("S01_AXI_rlast"), S01_AXI_rvalid("S01_AXI_rvalid"), S01_AXI_rready("S01_AXI_rready"), S02_AXI_awid("S02_AXI_awid"), S02_AXI_awaddr("S02_AXI_awaddr"), S02_AXI_awlen("S02_AXI_awlen"), S02_AXI_awsize("S02_AXI_awsize"), S02_AXI_awburst("S02_AXI_awburst"), S02_AXI_awlock("S02_AXI_awlock"), S02_AXI_awcache("S02_AXI_awcache"), S02_AXI_awprot("S02_AXI_awprot"), S02_AXI_awqos("S02_AXI_awqos"), S02_AXI_awvalid("S02_AXI_awvalid"), S02_AXI_awready("S02_AXI_awready"), S02_AXI_wdata("S02_AXI_wdata"), S02_AXI_wstrb("S02_AXI_wstrb"), S02_AXI_wlast("S02_AXI_wlast"), S02_AXI_wvalid("S02_AXI_wvalid"), S02_AXI_wready("S02_AXI_wready"), S02_AXI_bid("S02_AXI_bid"), S02_AXI_bresp("S02_AXI_bresp"), S02_AXI_bvalid("S02_AXI_bvalid"), S02_AXI_bready("S02_AXI_bready"), S02_AXI_arid("S02_AXI_arid"), S02_AXI_araddr("S02_AXI_araddr"), S02_AXI_arlen("S02_AXI_arlen"), S02_AXI_arsize("S02_AXI_arsize"), S02_AXI_arburst("S02_AXI_arburst"), S02_AXI_arlock("S02_AXI_arlock"), S02_AXI_arcache("S02_AXI_arcache"), S02_AXI_arprot("S02_AXI_arprot"), S02_AXI_arqos("S02_AXI_arqos"), S02_AXI_arvalid("S02_AXI_arvalid"), S02_AXI_arready("S02_AXI_arready"), S02_AXI_rid("S02_AXI_rid"), S02_AXI_rdata("S02_AXI_rdata"), S02_AXI_rresp("S02_AXI_rresp"), S02_AXI_rlast("S02_AXI_rlast"), S02_AXI_rvalid("S02_AXI_rvalid"), S02_AXI_rready("S02_AXI_rready"), S03_AXI_awid("S03_AXI_awid"), S03_AXI_awaddr("S03_AXI_awaddr"), S03_AXI_awlen("S03_AXI_awlen"), S03_AXI_awsize("S03_AXI_awsize"), S03_AXI_awburst("S03_AXI_awburst"), S03_AXI_awlock("S03_AXI_awlock"), S03_AXI_awcache("S03_AXI_awcache"), S03_AXI_awprot("S03_AXI_awprot"), S03_AXI_awqos("S03_AXI_awqos"), S03_AXI_awvalid("S03_AXI_awvalid"), S03_AXI_awready("S03_AXI_awready"), S03_AXI_wdata("S03_AXI_wdata"), S03_AXI_wstrb("S03_AXI_wstrb"), S03_AXI_wlast("S03_AXI_wlast"), S03_AXI_wvalid("S03_AXI_wvalid"), S03_AXI_wready("S03_AXI_wready"), S03_AXI_bid("S03_AXI_bid"), S03_AXI_bresp("S03_AXI_bresp"), S03_AXI_bvalid("S03_AXI_bvalid"), S03_AXI_bready("S03_AXI_bready"), S03_AXI_arid("S03_AXI_arid"), S03_AXI_araddr("S03_AXI_araddr"), S03_AXI_arlen("S03_AXI_arlen"), S03_AXI_arsize("S03_AXI_arsize"), S03_AXI_arburst("S03_AXI_arburst"), S03_AXI_arlock("S03_AXI_arlock"), S03_AXI_arcache("S03_AXI_arcache"), S03_AXI_arprot("S03_AXI_arprot"), S03_AXI_arqos("S03_AXI_arqos"), S03_AXI_arvalid("S03_AXI_arvalid"), S03_AXI_arready("S03_AXI_arready"), S03_AXI_rid("S03_AXI_rid"), S03_AXI_rdata("S03_AXI_rdata"), S03_AXI_rresp("S03_AXI_rresp"), S03_AXI_rlast("S03_AXI_rlast"), S03_AXI_rvalid("S03_AXI_rvalid"), S03_AXI_rready("S03_AXI_rready"), S04_AXI_awid("S04_AXI_awid"), S04_AXI_awaddr("S04_AXI_awaddr"), S04_AXI_awlen("S04_AXI_awlen"), S04_AXI_awsize("S04_AXI_awsize"), S04_AXI_awburst("S04_AXI_awburst"), S04_AXI_awlock("S04_AXI_awlock"), S04_AXI_awcache("S04_AXI_awcache"), S04_AXI_awprot("S04_AXI_awprot"), S04_AXI_awqos("S04_AXI_awqos"), S04_AXI_awvalid("S04_AXI_awvalid"), S04_AXI_awready("S04_AXI_awready"), S04_AXI_wdata("S04_AXI_wdata"), S04_AXI_wstrb("S04_AXI_wstrb"), S04_AXI_wlast("S04_AXI_wlast"), S04_AXI_wvalid("S04_AXI_wvalid"), S04_AXI_wready("S04_AXI_wready"), S04_AXI_bid("S04_AXI_bid"), S04_AXI_bresp("S04_AXI_bresp"), S04_AXI_bvalid("S04_AXI_bvalid"), S04_AXI_bready("S04_AXI_bready"), S04_AXI_arid("S04_AXI_arid"), S04_AXI_araddr("S04_AXI_araddr"), S04_AXI_arlen("S04_AXI_arlen"), S04_AXI_arsize("S04_AXI_arsize"), S04_AXI_arburst("S04_AXI_arburst"), S04_AXI_arlock("S04_AXI_arlock"), S04_AXI_arcache("S04_AXI_arcache"), S04_AXI_arprot("S04_AXI_arprot"), S04_AXI_arqos("S04_AXI_arqos"), S04_AXI_arvalid("S04_AXI_arvalid"), S04_AXI_arready("S04_AXI_arready"), S04_AXI_rid("S04_AXI_rid"), S04_AXI_rdata("S04_AXI_rdata"), S04_AXI_rresp("S04_AXI_rresp"), S04_AXI_rlast("S04_AXI_rlast"), S04_AXI_rvalid("S04_AXI_rvalid"), S04_AXI_rready("S04_AXI_rready"), S05_AXI_awid("S05_AXI_awid"), S05_AXI_awaddr("S05_AXI_awaddr"), S05_AXI_awlen("S05_AXI_awlen"), S05_AXI_awsize("S05_AXI_awsize"), S05_AXI_awburst("S05_AXI_awburst"), S05_AXI_awlock("S05_AXI_awlock"), S05_AXI_awcache("S05_AXI_awcache"), S05_AXI_awprot("S05_AXI_awprot"), S05_AXI_awqos("S05_AXI_awqos"), S05_AXI_awvalid("S05_AXI_awvalid"), S05_AXI_awready("S05_AXI_awready"), S05_AXI_wdata("S05_AXI_wdata"), S05_AXI_wstrb("S05_AXI_wstrb"), S05_AXI_wlast("S05_AXI_wlast"), S05_AXI_wvalid("S05_AXI_wvalid"), S05_AXI_wready("S05_AXI_wready"), S05_AXI_bid("S05_AXI_bid"), S05_AXI_bresp("S05_AXI_bresp"), S05_AXI_bvalid("S05_AXI_bvalid"), S05_AXI_bready("S05_AXI_bready"), S05_AXI_arid("S05_AXI_arid"), S05_AXI_araddr("S05_AXI_araddr"), S05_AXI_arlen("S05_AXI_arlen"), S05_AXI_arsize("S05_AXI_arsize"), S05_AXI_arburst("S05_AXI_arburst"), S05_AXI_arlock("S05_AXI_arlock"), S05_AXI_arcache("S05_AXI_arcache"), S05_AXI_arprot("S05_AXI_arprot"), S05_AXI_arqos("S05_AXI_arqos"), S05_AXI_arvalid("S05_AXI_arvalid"), S05_AXI_arready("S05_AXI_arready"), S05_AXI_rid("S05_AXI_rid"), S05_AXI_rdata("S05_AXI_rdata"), S05_AXI_rresp("S05_AXI_rresp"), S05_AXI_rlast("S05_AXI_rlast"), S05_AXI_rvalid("S05_AXI_rvalid"), S05_AXI_rready("S05_AXI_rready"), S06_AXI_awid("S06_AXI_awid"), S06_AXI_awaddr("S06_AXI_awaddr"), S06_AXI_awlen("S06_AXI_awlen"), S06_AXI_awsize("S06_AXI_awsize"), S06_AXI_awburst("S06_AXI_awburst"), S06_AXI_awlock("S06_AXI_awlock"), S06_AXI_awcache("S06_AXI_awcache"), S06_AXI_awprot("S06_AXI_awprot"), S06_AXI_awqos("S06_AXI_awqos"), S06_AXI_awvalid("S06_AXI_awvalid"), S06_AXI_awready("S06_AXI_awready"), S06_AXI_wdata("S06_AXI_wdata"), S06_AXI_wstrb("S06_AXI_wstrb"), S06_AXI_wlast("S06_AXI_wlast"), S06_AXI_wvalid("S06_AXI_wvalid"), S06_AXI_wready("S06_AXI_wready"), S06_AXI_bid("S06_AXI_bid"), S06_AXI_bresp("S06_AXI_bresp"), S06_AXI_bvalid("S06_AXI_bvalid"), S06_AXI_bready("S06_AXI_bready"), S06_AXI_arid("S06_AXI_arid"), S06_AXI_araddr("S06_AXI_araddr"), S06_AXI_arlen("S06_AXI_arlen"), S06_AXI_arsize("S06_AXI_arsize"), S06_AXI_arburst("S06_AXI_arburst"), S06_AXI_arlock("S06_AXI_arlock"), S06_AXI_arcache("S06_AXI_arcache"), S06_AXI_arprot("S06_AXI_arprot"), S06_AXI_arqos("S06_AXI_arqos"), S06_AXI_arvalid("S06_AXI_arvalid"), S06_AXI_arready("S06_AXI_arready"), S06_AXI_rid("S06_AXI_rid"), S06_AXI_rdata("S06_AXI_rdata"), S06_AXI_rresp("S06_AXI_rresp"), S06_AXI_rlast("S06_AXI_rlast"), S06_AXI_rvalid("S06_AXI_rvalid"), S06_AXI_rready("S06_AXI_rready"), S07_AXI_awid("S07_AXI_awid"), S07_AXI_awaddr("S07_AXI_awaddr"), S07_AXI_awlen("S07_AXI_awlen"), S07_AXI_awsize("S07_AXI_awsize"), S07_AXI_awburst("S07_AXI_awburst"), S07_AXI_awlock("S07_AXI_awlock"), S07_AXI_awcache("S07_AXI_awcache"), S07_AXI_awprot("S07_AXI_awprot"), S07_AXI_awqos("S07_AXI_awqos"), S07_AXI_awvalid("S07_AXI_awvalid"), S07_AXI_awready("S07_AXI_awready"), S07_AXI_wdata("S07_AXI_wdata"), S07_AXI_wstrb("S07_AXI_wstrb"), S07_AXI_wlast("S07_AXI_wlast"), S07_AXI_wvalid("S07_AXI_wvalid"), S07_AXI_wready("S07_AXI_wready"), S07_AXI_bid("S07_AXI_bid"), S07_AXI_bresp("S07_AXI_bresp"), S07_AXI_bvalid("S07_AXI_bvalid"), S07_AXI_bready("S07_AXI_bready"), S07_AXI_arid("S07_AXI_arid"), S07_AXI_araddr("S07_AXI_araddr"), S07_AXI_arlen("S07_AXI_arlen"), S07_AXI_arsize("S07_AXI_arsize"), S07_AXI_arburst("S07_AXI_arburst"), S07_AXI_arlock("S07_AXI_arlock"), S07_AXI_arcache("S07_AXI_arcache"), S07_AXI_arprot("S07_AXI_arprot"), S07_AXI_arqos("S07_AXI_arqos"), S07_AXI_arvalid("S07_AXI_arvalid"), S07_AXI_arready("S07_AXI_arready"), S07_AXI_rid("S07_AXI_rid"), S07_AXI_rdata("S07_AXI_rdata"), S07_AXI_rresp("S07_AXI_rresp"), S07_AXI_rlast("S07_AXI_rlast"), S07_AXI_rvalid("S07_AXI_rvalid"), S07_AXI_rready("S07_AXI_rready"), S08_AXI_awid("S08_AXI_awid"), S08_AXI_awaddr("S08_AXI_awaddr"), S08_AXI_awlen("S08_AXI_awlen"), S08_AXI_awsize("S08_AXI_awsize"), S08_AXI_awburst("S08_AXI_awburst"), S08_AXI_awlock("S08_AXI_awlock"), S08_AXI_awcache("S08_AXI_awcache"), S08_AXI_awprot("S08_AXI_awprot"), S08_AXI_awqos("S08_AXI_awqos"), S08_AXI_awvalid("S08_AXI_awvalid"), S08_AXI_awready("S08_AXI_awready"), S08_AXI_wdata("S08_AXI_wdata"), S08_AXI_wstrb("S08_AXI_wstrb"), S08_AXI_wlast("S08_AXI_wlast"), S08_AXI_wvalid("S08_AXI_wvalid"), S08_AXI_wready("S08_AXI_wready"), S08_AXI_bid("S08_AXI_bid"), S08_AXI_bresp("S08_AXI_bresp"), S08_AXI_bvalid("S08_AXI_bvalid"), S08_AXI_bready("S08_AXI_bready"), S08_AXI_arid("S08_AXI_arid"), S08_AXI_araddr("S08_AXI_araddr"), S08_AXI_arlen("S08_AXI_arlen"), S08_AXI_arsize("S08_AXI_arsize"), S08_AXI_arburst("S08_AXI_arburst"), S08_AXI_arlock("S08_AXI_arlock"), S08_AXI_arcache("S08_AXI_arcache"), S08_AXI_arprot("S08_AXI_arprot"), S08_AXI_arqos("S08_AXI_arqos"), S08_AXI_arvalid("S08_AXI_arvalid"), S08_AXI_arready("S08_AXI_arready"), S08_AXI_rid("S08_AXI_rid"), S08_AXI_rdata("S08_AXI_rdata"), S08_AXI_rresp("S08_AXI_rresp"), S08_AXI_rlast("S08_AXI_rlast"), S08_AXI_rvalid("S08_AXI_rvalid"), S08_AXI_rready("S08_AXI_rready"), S09_AXI_awid("S09_AXI_awid"), S09_AXI_awaddr("S09_AXI_awaddr"), S09_AXI_awlen("S09_AXI_awlen"), S09_AXI_awsize("S09_AXI_awsize"), S09_AXI_awburst("S09_AXI_awburst"), S09_AXI_awlock("S09_AXI_awlock"), S09_AXI_awcache("S09_AXI_awcache"), S09_AXI_awprot("S09_AXI_awprot"), S09_AXI_awqos("S09_AXI_awqos"), S09_AXI_awvalid("S09_AXI_awvalid"), S09_AXI_awready("S09_AXI_awready"), S09_AXI_wdata("S09_AXI_wdata"), S09_AXI_wstrb("S09_AXI_wstrb"), S09_AXI_wlast("S09_AXI_wlast"), S09_AXI_wvalid("S09_AXI_wvalid"), S09_AXI_wready("S09_AXI_wready"), S09_AXI_bid("S09_AXI_bid"), S09_AXI_bresp("S09_AXI_bresp"), S09_AXI_bvalid("S09_AXI_bvalid"), S09_AXI_bready("S09_AXI_bready"), S09_AXI_arid("S09_AXI_arid"), S09_AXI_araddr("S09_AXI_araddr"), S09_AXI_arlen("S09_AXI_arlen"), S09_AXI_arsize("S09_AXI_arsize"), S09_AXI_arburst("S09_AXI_arburst"), S09_AXI_arlock("S09_AXI_arlock"), S09_AXI_arcache("S09_AXI_arcache"), S09_AXI_arprot("S09_AXI_arprot"), S09_AXI_arqos("S09_AXI_arqos"), S09_AXI_arvalid("S09_AXI_arvalid"), S09_AXI_arready("S09_AXI_arready"), S09_AXI_rid("S09_AXI_rid"), S09_AXI_rdata("S09_AXI_rdata"), S09_AXI_rresp("S09_AXI_rresp"), S09_AXI_rlast("S09_AXI_rlast"), S09_AXI_rvalid("S09_AXI_rvalid"), S09_AXI_rready("S09_AXI_rready"), S10_AXI_awid("S10_AXI_awid"), S10_AXI_awaddr("S10_AXI_awaddr"), S10_AXI_awlen("S10_AXI_awlen"), S10_AXI_awsize("S10_AXI_awsize"), S10_AXI_awburst("S10_AXI_awburst"), S10_AXI_awlock("S10_AXI_awlock"), S10_AXI_awcache("S10_AXI_awcache"), S10_AXI_awprot("S10_AXI_awprot"), S10_AXI_awqos("S10_AXI_awqos"), S10_AXI_awvalid("S10_AXI_awvalid"), S10_AXI_awready("S10_AXI_awready"), S10_AXI_wdata("S10_AXI_wdata"), S10_AXI_wstrb("S10_AXI_wstrb"), S10_AXI_wlast("S10_AXI_wlast"), S10_AXI_wvalid("S10_AXI_wvalid"), S10_AXI_wready("S10_AXI_wready"), S10_AXI_bid("S10_AXI_bid"), S10_AXI_bresp("S10_AXI_bresp"), S10_AXI_bvalid("S10_AXI_bvalid"), S10_AXI_bready("S10_AXI_bready"), S10_AXI_arid("S10_AXI_arid"), S10_AXI_araddr("S10_AXI_araddr"), S10_AXI_arlen("S10_AXI_arlen"), S10_AXI_arsize("S10_AXI_arsize"), S10_AXI_arburst("S10_AXI_arburst"), S10_AXI_arlock("S10_AXI_arlock"), S10_AXI_arcache("S10_AXI_arcache"), S10_AXI_arprot("S10_AXI_arprot"), S10_AXI_arqos("S10_AXI_arqos"), S10_AXI_arvalid("S10_AXI_arvalid"), S10_AXI_arready("S10_AXI_arready"), S10_AXI_rid("S10_AXI_rid"), S10_AXI_rdata("S10_AXI_rdata"), S10_AXI_rresp("S10_AXI_rresp"), S10_AXI_rlast("S10_AXI_rlast"), S10_AXI_rvalid("S10_AXI_rvalid"), S10_AXI_rready("S10_AXI_rready"), S11_AXI_awid("S11_AXI_awid"), S11_AXI_awaddr("S11_AXI_awaddr"), S11_AXI_awlen("S11_AXI_awlen"), S11_AXI_awsize("S11_AXI_awsize"), S11_AXI_awburst("S11_AXI_awburst"), S11_AXI_awlock("S11_AXI_awlock"), S11_AXI_awcache("S11_AXI_awcache"), S11_AXI_awprot("S11_AXI_awprot"), S11_AXI_awqos("S11_AXI_awqos"), S11_AXI_awvalid("S11_AXI_awvalid"), S11_AXI_awready("S11_AXI_awready"), S11_AXI_wdata("S11_AXI_wdata"), S11_AXI_wstrb("S11_AXI_wstrb"), S11_AXI_wlast("S11_AXI_wlast"), S11_AXI_wvalid("S11_AXI_wvalid"), S11_AXI_wready("S11_AXI_wready"), S11_AXI_bid("S11_AXI_bid"), S11_AXI_bresp("S11_AXI_bresp"), S11_AXI_bvalid("S11_AXI_bvalid"), S11_AXI_bready("S11_AXI_bready"), S11_AXI_arid("S11_AXI_arid"), S11_AXI_araddr("S11_AXI_araddr"), S11_AXI_arlen("S11_AXI_arlen"), S11_AXI_arsize("S11_AXI_arsize"), S11_AXI_arburst("S11_AXI_arburst"), S11_AXI_arlock("S11_AXI_arlock"), S11_AXI_arcache("S11_AXI_arcache"), S11_AXI_arprot("S11_AXI_arprot"), S11_AXI_arqos("S11_AXI_arqos"), S11_AXI_arvalid("S11_AXI_arvalid"), S11_AXI_arready("S11_AXI_arready"), S11_AXI_rid("S11_AXI_rid"), S11_AXI_rdata("S11_AXI_rdata"), S11_AXI_rresp("S11_AXI_rresp"), S11_AXI_rlast("S11_AXI_rlast"), S11_AXI_rvalid("S11_AXI_rvalid"), S11_AXI_rready("S11_AXI_rready"), S12_AXI_awid("S12_AXI_awid"), S12_AXI_awaddr("S12_AXI_awaddr"), S12_AXI_awlen("S12_AXI_awlen"), S12_AXI_awsize("S12_AXI_awsize"), S12_AXI_awburst("S12_AXI_awburst"), S12_AXI_awlock("S12_AXI_awlock"), S12_AXI_awcache("S12_AXI_awcache"), S12_AXI_awprot("S12_AXI_awprot"), S12_AXI_awqos("S12_AXI_awqos"), S12_AXI_awvalid("S12_AXI_awvalid"), S12_AXI_awready("S12_AXI_awready"), S12_AXI_wdata("S12_AXI_wdata"), S12_AXI_wstrb("S12_AXI_wstrb"), S12_AXI_wlast("S12_AXI_wlast"), S12_AXI_wvalid("S12_AXI_wvalid"), S12_AXI_wready("S12_AXI_wready"), S12_AXI_bid("S12_AXI_bid"), S12_AXI_bresp("S12_AXI_bresp"), S12_AXI_bvalid("S12_AXI_bvalid"), S12_AXI_bready("S12_AXI_bready"), S12_AXI_arid("S12_AXI_arid"), S12_AXI_araddr("S12_AXI_araddr"), S12_AXI_arlen("S12_AXI_arlen"), S12_AXI_arsize("S12_AXI_arsize"), S12_AXI_arburst("S12_AXI_arburst"), S12_AXI_arlock("S12_AXI_arlock"), S12_AXI_arcache("S12_AXI_arcache"), S12_AXI_arprot("S12_AXI_arprot"), S12_AXI_arqos("S12_AXI_arqos"), S12_AXI_arvalid("S12_AXI_arvalid"), S12_AXI_arready("S12_AXI_arready"), S12_AXI_rid("S12_AXI_rid"), S12_AXI_rdata("S12_AXI_rdata"), S12_AXI_rresp("S12_AXI_rresp"), S12_AXI_rlast("S12_AXI_rlast"), S12_AXI_rvalid("S12_AXI_rvalid"), S12_AXI_rready("S12_AXI_rready"), S13_AXI_awid("S13_AXI_awid"), S13_AXI_awaddr("S13_AXI_awaddr"), S13_AXI_awlen("S13_AXI_awlen"), S13_AXI_awsize("S13_AXI_awsize"), S13_AXI_awburst("S13_AXI_awburst"), S13_AXI_awlock("S13_AXI_awlock"), S13_AXI_awcache("S13_AXI_awcache"), S13_AXI_awprot("S13_AXI_awprot"), S13_AXI_awqos("S13_AXI_awqos"), S13_AXI_awvalid("S13_AXI_awvalid"), S13_AXI_awready("S13_AXI_awready"), S13_AXI_wdata("S13_AXI_wdata"), S13_AXI_wstrb("S13_AXI_wstrb"), S13_AXI_wlast("S13_AXI_wlast"), S13_AXI_wvalid("S13_AXI_wvalid"), S13_AXI_wready("S13_AXI_wready"), S13_AXI_bid("S13_AXI_bid"), S13_AXI_bresp("S13_AXI_bresp"), S13_AXI_bvalid("S13_AXI_bvalid"), S13_AXI_bready("S13_AXI_bready"), S13_AXI_arid("S13_AXI_arid"), S13_AXI_araddr("S13_AXI_araddr"), S13_AXI_arlen("S13_AXI_arlen"), S13_AXI_arsize("S13_AXI_arsize"), S13_AXI_arburst("S13_AXI_arburst"), S13_AXI_arlock("S13_AXI_arlock"), S13_AXI_arcache("S13_AXI_arcache"), S13_AXI_arprot("S13_AXI_arprot"), S13_AXI_arqos("S13_AXI_arqos"), S13_AXI_arvalid("S13_AXI_arvalid"), S13_AXI_arready("S13_AXI_arready"), S13_AXI_rid("S13_AXI_rid"), S13_AXI_rdata("S13_AXI_rdata"), S13_AXI_rresp("S13_AXI_rresp"), S13_AXI_rlast("S13_AXI_rlast"), S13_AXI_rvalid("S13_AXI_rvalid"), S13_AXI_rready("S13_AXI_rready"), S14_AXI_awid("S14_AXI_awid"), S14_AXI_awaddr("S14_AXI_awaddr"), S14_AXI_awlen("S14_AXI_awlen"), S14_AXI_awsize("S14_AXI_awsize"), S14_AXI_awburst("S14_AXI_awburst"), S14_AXI_awlock("S14_AXI_awlock"), S14_AXI_awcache("S14_AXI_awcache"), S14_AXI_awprot("S14_AXI_awprot"), S14_AXI_awqos("S14_AXI_awqos"), S14_AXI_awvalid("S14_AXI_awvalid"), S14_AXI_awready("S14_AXI_awready"), S14_AXI_wdata("S14_AXI_wdata"), S14_AXI_wstrb("S14_AXI_wstrb"), S14_AXI_wlast("S14_AXI_wlast"), S14_AXI_wvalid("S14_AXI_wvalid"), S14_AXI_wready("S14_AXI_wready"), S14_AXI_bid("S14_AXI_bid"), S14_AXI_bresp("S14_AXI_bresp"), S14_AXI_bvalid("S14_AXI_bvalid"), S14_AXI_bready("S14_AXI_bready"), S14_AXI_arid("S14_AXI_arid"), S14_AXI_araddr("S14_AXI_araddr"), S14_AXI_arlen("S14_AXI_arlen"), S14_AXI_arsize("S14_AXI_arsize"), S14_AXI_arburst("S14_AXI_arburst"), S14_AXI_arlock("S14_AXI_arlock"), S14_AXI_arcache("S14_AXI_arcache"), S14_AXI_arprot("S14_AXI_arprot"), S14_AXI_arqos("S14_AXI_arqos"), S14_AXI_arvalid("S14_AXI_arvalid"), S14_AXI_arready("S14_AXI_arready"), S14_AXI_rid("S14_AXI_rid"), S14_AXI_rdata("S14_AXI_rdata"), S14_AXI_rresp("S14_AXI_rresp"), S14_AXI_rlast("S14_AXI_rlast"), S14_AXI_rvalid("S14_AXI_rvalid"), S14_AXI_rready("S14_AXI_rready"), S15_AXI_awid("S15_AXI_awid"), S15_AXI_awaddr("S15_AXI_awaddr"), S15_AXI_awlen("S15_AXI_awlen"), S15_AXI_awsize("S15_AXI_awsize"), S15_AXI_awburst("S15_AXI_awburst"), S15_AXI_awlock("S15_AXI_awlock"), S15_AXI_awcache("S15_AXI_awcache"), S15_AXI_awprot("S15_AXI_awprot"), S15_AXI_awqos("S15_AXI_awqos"), S15_AXI_awvalid("S15_AXI_awvalid"), S15_AXI_awready("S15_AXI_awready"), S15_AXI_wdata("S15_AXI_wdata"), S15_AXI_wstrb("S15_AXI_wstrb"), S15_AXI_wlast("S15_AXI_wlast"), S15_AXI_wvalid("S15_AXI_wvalid"), S15_AXI_wready("S15_AXI_wready"), S15_AXI_bid("S15_AXI_bid"), S15_AXI_bresp("S15_AXI_bresp"), S15_AXI_bvalid("S15_AXI_bvalid"), S15_AXI_bready("S15_AXI_bready"), S15_AXI_arid("S15_AXI_arid"), S15_AXI_araddr("S15_AXI_araddr"), S15_AXI_arlen("S15_AXI_arlen"), S15_AXI_arsize("S15_AXI_arsize"), S15_AXI_arburst("S15_AXI_arburst"), S15_AXI_arlock("S15_AXI_arlock"), S15_AXI_arcache("S15_AXI_arcache"), S15_AXI_arprot("S15_AXI_arprot"), S15_AXI_arqos("S15_AXI_arqos"), S15_AXI_arvalid("S15_AXI_arvalid"), S15_AXI_arready("S15_AXI_arready"), S15_AXI_rid("S15_AXI_rid"), S15_AXI_rdata("S15_AXI_rdata"), S15_AXI_rresp("S15_AXI_rresp"), S15_AXI_rlast("S15_AXI_rlast"), S15_AXI_rvalid("S15_AXI_rvalid"), S15_AXI_rready("S15_AXI_rready"), M00_AXI_awaddr("M00_AXI_awaddr"), M00_AXI_awlen("M00_AXI_awlen"), M00_AXI_awsize("M00_AXI_awsize"), M00_AXI_awburst("M00_AXI_awburst"), M00_AXI_awlock("M00_AXI_awlock"), M00_AXI_awcache("M00_AXI_awcache"), M00_AXI_awprot("M00_AXI_awprot"), M00_AXI_awqos("M00_AXI_awqos"), M00_AXI_awvalid("M00_AXI_awvalid"), M00_AXI_awready("M00_AXI_awready"), M00_AXI_wdata("M00_AXI_wdata"), M00_AXI_wstrb("M00_AXI_wstrb"), M00_AXI_wlast("M00_AXI_wlast"), M00_AXI_wvalid("M00_AXI_wvalid"), M00_AXI_wready("M00_AXI_wready"), M00_AXI_bresp("M00_AXI_bresp"), M00_AXI_bvalid("M00_AXI_bvalid"), M00_AXI_bready("M00_AXI_bready"), M00_AXI_araddr("M00_AXI_araddr"), M00_AXI_arlen("M00_AXI_arlen"), M00_AXI_arsize("M00_AXI_arsize"), M00_AXI_arburst("M00_AXI_arburst"), M00_AXI_arlock("M00_AXI_arlock"), M00_AXI_arcache("M00_AXI_arcache"), M00_AXI_arprot("M00_AXI_arprot"), M00_AXI_arqos("M00_AXI_arqos"), M00_AXI_arvalid("M00_AXI_arvalid"), M00_AXI_arready("M00_AXI_arready"), M00_AXI_rdata("M00_AXI_rdata"), M00_AXI_rresp("M00_AXI_rresp"), M00_AXI_rlast("M00_AXI_rlast"), M00_AXI_rvalid("M00_AXI_rvalid"), M00_AXI_rready("M00_AXI_rready")
{

  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_S00_AXI_awlock_converter = NULL;
  mp_S00_AXI_arlock_converter = NULL;
  mp_S01_AXI_transactor = NULL;
  mp_S01_AXI_awlock_converter = NULL;
  mp_S01_AXI_arlock_converter = NULL;
  mp_S02_AXI_transactor = NULL;
  mp_S02_AXI_awlock_converter = NULL;
  mp_S02_AXI_arlock_converter = NULL;
  mp_S03_AXI_transactor = NULL;
  mp_S03_AXI_awlock_converter = NULL;
  mp_S03_AXI_arlock_converter = NULL;
  mp_S04_AXI_transactor = NULL;
  mp_S04_AXI_awlock_converter = NULL;
  mp_S04_AXI_arlock_converter = NULL;
  mp_S05_AXI_transactor = NULL;
  mp_S05_AXI_awlock_converter = NULL;
  mp_S05_AXI_arlock_converter = NULL;
  mp_S06_AXI_transactor = NULL;
  mp_S06_AXI_awlock_converter = NULL;
  mp_S06_AXI_arlock_converter = NULL;
  mp_S07_AXI_transactor = NULL;
  mp_S07_AXI_awlock_converter = NULL;
  mp_S07_AXI_arlock_converter = NULL;
  mp_S08_AXI_transactor = NULL;
  mp_S08_AXI_awlock_converter = NULL;
  mp_S08_AXI_arlock_converter = NULL;
  mp_S09_AXI_transactor = NULL;
  mp_S09_AXI_awlock_converter = NULL;
  mp_S09_AXI_arlock_converter = NULL;
  mp_S10_AXI_transactor = NULL;
  mp_S10_AXI_awlock_converter = NULL;
  mp_S10_AXI_arlock_converter = NULL;
  mp_S11_AXI_transactor = NULL;
  mp_S11_AXI_awlock_converter = NULL;
  mp_S11_AXI_arlock_converter = NULL;
  mp_S12_AXI_transactor = NULL;
  mp_S12_AXI_awlock_converter = NULL;
  mp_S12_AXI_arlock_converter = NULL;
  mp_S13_AXI_transactor = NULL;
  mp_S13_AXI_awlock_converter = NULL;
  mp_S13_AXI_arlock_converter = NULL;
  mp_S14_AXI_transactor = NULL;
  mp_S14_AXI_awlock_converter = NULL;
  mp_S14_AXI_arlock_converter = NULL;
  mp_S15_AXI_transactor = NULL;
  mp_S15_AXI_awlock_converter = NULL;
  mp_S15_AXI_arlock_converter = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_M00_AXI_awlock_converter = NULL;
  mp_M00_AXI_arlock_converter = NULL;

  // initialize socket stubs

}

void MemoryInterfacesVIP_smartconnect_0_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXI' transactor parameters
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);

    // S00_AXI' transactor ports

    mp_S00_AXI_transactor->AWID(S00_AXI_awid);
    mp_S00_AXI_transactor->AWADDR(S00_AXI_awaddr);
    mp_S00_AXI_transactor->AWLEN(S00_AXI_awlen);
    mp_S00_AXI_transactor->AWSIZE(S00_AXI_awsize);
    mp_S00_AXI_transactor->AWBURST(S00_AXI_awburst);
    mp_S00_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_awlock_converter");
    mp_S00_AXI_awlock_converter->vector_in(S00_AXI_awlock);
    mp_S00_AXI_awlock_converter->scalar_out(m_S00_AXI_awlock_converter_signal);
    mp_S00_AXI_transactor->AWLOCK(m_S00_AXI_awlock_converter_signal);
    mp_S00_AXI_transactor->AWCACHE(S00_AXI_awcache);
    mp_S00_AXI_transactor->AWPROT(S00_AXI_awprot);
    mp_S00_AXI_transactor->AWQOS(S00_AXI_awqos);
    mp_S00_AXI_transactor->AWVALID(S00_AXI_awvalid);
    mp_S00_AXI_transactor->AWREADY(S00_AXI_awready);
    mp_S00_AXI_transactor->WDATA(S00_AXI_wdata);
    mp_S00_AXI_transactor->WSTRB(S00_AXI_wstrb);
    mp_S00_AXI_transactor->WLAST(S00_AXI_wlast);
    mp_S00_AXI_transactor->WVALID(S00_AXI_wvalid);
    mp_S00_AXI_transactor->WREADY(S00_AXI_wready);
    mp_S00_AXI_transactor->BID(S00_AXI_bid);
    mp_S00_AXI_transactor->BRESP(S00_AXI_bresp);
    mp_S00_AXI_transactor->BVALID(S00_AXI_bvalid);
    mp_S00_AXI_transactor->BREADY(S00_AXI_bready);
    mp_S00_AXI_transactor->ARID(S00_AXI_arid);
    mp_S00_AXI_transactor->ARADDR(S00_AXI_araddr);
    mp_S00_AXI_transactor->ARLEN(S00_AXI_arlen);
    mp_S00_AXI_transactor->ARSIZE(S00_AXI_arsize);
    mp_S00_AXI_transactor->ARBURST(S00_AXI_arburst);
    mp_S00_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_arlock_converter");
    mp_S00_AXI_arlock_converter->vector_in(S00_AXI_arlock);
    mp_S00_AXI_arlock_converter->scalar_out(m_S00_AXI_arlock_converter_signal);
    mp_S00_AXI_transactor->ARLOCK(m_S00_AXI_arlock_converter_signal);
    mp_S00_AXI_transactor->ARCACHE(S00_AXI_arcache);
    mp_S00_AXI_transactor->ARPROT(S00_AXI_arprot);
    mp_S00_AXI_transactor->ARQOS(S00_AXI_arqos);
    mp_S00_AXI_transactor->ARVALID(S00_AXI_arvalid);
    mp_S00_AXI_transactor->ARREADY(S00_AXI_arready);
    mp_S00_AXI_transactor->RID(S00_AXI_rid);
    mp_S00_AXI_transactor->RDATA(S00_AXI_rdata);
    mp_S00_AXI_transactor->RRESP(S00_AXI_rresp);
    mp_S00_AXI_transactor->RLAST(S00_AXI_rlast);
    mp_S00_AXI_transactor->RVALID(S00_AXI_rvalid);
    mp_S00_AXI_transactor->RREADY(S00_AXI_rready);
    mp_S00_AXI_transactor->CLK(aclk);
    mp_S00_AXI_transactor->RST(aresetn);

    // S00_AXI' transactor sockets

    mp_impl->S00_AXI_tlm_aximm_read_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->S00_AXI_tlm_aximm_write_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S01_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S01_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S01_AXI' transactor parameters
    xsc::common_cpp::properties S01_AXI_transactor_param_props;
    S01_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S01_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S01_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S01_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S01_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S01_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S01_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S01_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S01_AXI_transactor", S01_AXI_transactor_param_props);

    // S01_AXI' transactor ports

    mp_S01_AXI_transactor->AWID(S01_AXI_awid);
    mp_S01_AXI_transactor->AWADDR(S01_AXI_awaddr);
    mp_S01_AXI_transactor->AWLEN(S01_AXI_awlen);
    mp_S01_AXI_transactor->AWSIZE(S01_AXI_awsize);
    mp_S01_AXI_transactor->AWBURST(S01_AXI_awburst);
    mp_S01_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_awlock_converter");
    mp_S01_AXI_awlock_converter->vector_in(S01_AXI_awlock);
    mp_S01_AXI_awlock_converter->scalar_out(m_S01_AXI_awlock_converter_signal);
    mp_S01_AXI_transactor->AWLOCK(m_S01_AXI_awlock_converter_signal);
    mp_S01_AXI_transactor->AWCACHE(S01_AXI_awcache);
    mp_S01_AXI_transactor->AWPROT(S01_AXI_awprot);
    mp_S01_AXI_transactor->AWQOS(S01_AXI_awqos);
    mp_S01_AXI_transactor->AWVALID(S01_AXI_awvalid);
    mp_S01_AXI_transactor->AWREADY(S01_AXI_awready);
    mp_S01_AXI_transactor->WDATA(S01_AXI_wdata);
    mp_S01_AXI_transactor->WSTRB(S01_AXI_wstrb);
    mp_S01_AXI_transactor->WLAST(S01_AXI_wlast);
    mp_S01_AXI_transactor->WVALID(S01_AXI_wvalid);
    mp_S01_AXI_transactor->WREADY(S01_AXI_wready);
    mp_S01_AXI_transactor->BID(S01_AXI_bid);
    mp_S01_AXI_transactor->BRESP(S01_AXI_bresp);
    mp_S01_AXI_transactor->BVALID(S01_AXI_bvalid);
    mp_S01_AXI_transactor->BREADY(S01_AXI_bready);
    mp_S01_AXI_transactor->ARID(S01_AXI_arid);
    mp_S01_AXI_transactor->ARADDR(S01_AXI_araddr);
    mp_S01_AXI_transactor->ARLEN(S01_AXI_arlen);
    mp_S01_AXI_transactor->ARSIZE(S01_AXI_arsize);
    mp_S01_AXI_transactor->ARBURST(S01_AXI_arburst);
    mp_S01_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_arlock_converter");
    mp_S01_AXI_arlock_converter->vector_in(S01_AXI_arlock);
    mp_S01_AXI_arlock_converter->scalar_out(m_S01_AXI_arlock_converter_signal);
    mp_S01_AXI_transactor->ARLOCK(m_S01_AXI_arlock_converter_signal);
    mp_S01_AXI_transactor->ARCACHE(S01_AXI_arcache);
    mp_S01_AXI_transactor->ARPROT(S01_AXI_arprot);
    mp_S01_AXI_transactor->ARQOS(S01_AXI_arqos);
    mp_S01_AXI_transactor->ARVALID(S01_AXI_arvalid);
    mp_S01_AXI_transactor->ARREADY(S01_AXI_arready);
    mp_S01_AXI_transactor->RID(S01_AXI_rid);
    mp_S01_AXI_transactor->RDATA(S01_AXI_rdata);
    mp_S01_AXI_transactor->RRESP(S01_AXI_rresp);
    mp_S01_AXI_transactor->RLAST(S01_AXI_rlast);
    mp_S01_AXI_transactor->RVALID(S01_AXI_rvalid);
    mp_S01_AXI_transactor->RREADY(S01_AXI_rready);
    mp_S01_AXI_transactor->CLK(aclk);
    mp_S01_AXI_transactor->RST(aresetn);

    // S01_AXI' transactor sockets

    mp_impl->S01_AXI_tlm_aximm_read_socket->bind(*(mp_S01_AXI_transactor->rd_socket));
    mp_impl->S01_AXI_tlm_aximm_write_socket->bind(*(mp_S01_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S02_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S02_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S02_AXI' transactor parameters
    xsc::common_cpp::properties S02_AXI_transactor_param_props;
    S02_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S02_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S02_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S02_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S02_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S02_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S02_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S02_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S02_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S02_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S02_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S02_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S02_AXI_transactor", S02_AXI_transactor_param_props);

    // S02_AXI' transactor ports

    mp_S02_AXI_transactor->AWID(S02_AXI_awid);
    mp_S02_AXI_transactor->AWADDR(S02_AXI_awaddr);
    mp_S02_AXI_transactor->AWLEN(S02_AXI_awlen);
    mp_S02_AXI_transactor->AWSIZE(S02_AXI_awsize);
    mp_S02_AXI_transactor->AWBURST(S02_AXI_awburst);
    mp_S02_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_awlock_converter");
    mp_S02_AXI_awlock_converter->vector_in(S02_AXI_awlock);
    mp_S02_AXI_awlock_converter->scalar_out(m_S02_AXI_awlock_converter_signal);
    mp_S02_AXI_transactor->AWLOCK(m_S02_AXI_awlock_converter_signal);
    mp_S02_AXI_transactor->AWCACHE(S02_AXI_awcache);
    mp_S02_AXI_transactor->AWPROT(S02_AXI_awprot);
    mp_S02_AXI_transactor->AWQOS(S02_AXI_awqos);
    mp_S02_AXI_transactor->AWVALID(S02_AXI_awvalid);
    mp_S02_AXI_transactor->AWREADY(S02_AXI_awready);
    mp_S02_AXI_transactor->WDATA(S02_AXI_wdata);
    mp_S02_AXI_transactor->WSTRB(S02_AXI_wstrb);
    mp_S02_AXI_transactor->WLAST(S02_AXI_wlast);
    mp_S02_AXI_transactor->WVALID(S02_AXI_wvalid);
    mp_S02_AXI_transactor->WREADY(S02_AXI_wready);
    mp_S02_AXI_transactor->BID(S02_AXI_bid);
    mp_S02_AXI_transactor->BRESP(S02_AXI_bresp);
    mp_S02_AXI_transactor->BVALID(S02_AXI_bvalid);
    mp_S02_AXI_transactor->BREADY(S02_AXI_bready);
    mp_S02_AXI_transactor->ARID(S02_AXI_arid);
    mp_S02_AXI_transactor->ARADDR(S02_AXI_araddr);
    mp_S02_AXI_transactor->ARLEN(S02_AXI_arlen);
    mp_S02_AXI_transactor->ARSIZE(S02_AXI_arsize);
    mp_S02_AXI_transactor->ARBURST(S02_AXI_arburst);
    mp_S02_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_arlock_converter");
    mp_S02_AXI_arlock_converter->vector_in(S02_AXI_arlock);
    mp_S02_AXI_arlock_converter->scalar_out(m_S02_AXI_arlock_converter_signal);
    mp_S02_AXI_transactor->ARLOCK(m_S02_AXI_arlock_converter_signal);
    mp_S02_AXI_transactor->ARCACHE(S02_AXI_arcache);
    mp_S02_AXI_transactor->ARPROT(S02_AXI_arprot);
    mp_S02_AXI_transactor->ARQOS(S02_AXI_arqos);
    mp_S02_AXI_transactor->ARVALID(S02_AXI_arvalid);
    mp_S02_AXI_transactor->ARREADY(S02_AXI_arready);
    mp_S02_AXI_transactor->RID(S02_AXI_rid);
    mp_S02_AXI_transactor->RDATA(S02_AXI_rdata);
    mp_S02_AXI_transactor->RRESP(S02_AXI_rresp);
    mp_S02_AXI_transactor->RLAST(S02_AXI_rlast);
    mp_S02_AXI_transactor->RVALID(S02_AXI_rvalid);
    mp_S02_AXI_transactor->RREADY(S02_AXI_rready);
    mp_S02_AXI_transactor->CLK(aclk);
    mp_S02_AXI_transactor->RST(aresetn);

    // S02_AXI' transactor sockets

    mp_impl->S02_AXI_tlm_aximm_read_socket->bind(*(mp_S02_AXI_transactor->rd_socket));
    mp_impl->S02_AXI_tlm_aximm_write_socket->bind(*(mp_S02_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S03_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S03_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S03_AXI' transactor parameters
    xsc::common_cpp::properties S03_AXI_transactor_param_props;
    S03_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S03_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S03_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S03_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S03_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S03_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S03_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S03_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S03_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S03_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S03_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S03_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S03_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S03_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S03_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S03_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S03_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S03_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S03_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S03_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S03_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S03_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S03_AXI_transactor", S03_AXI_transactor_param_props);

    // S03_AXI' transactor ports

    mp_S03_AXI_transactor->AWID(S03_AXI_awid);
    mp_S03_AXI_transactor->AWADDR(S03_AXI_awaddr);
    mp_S03_AXI_transactor->AWLEN(S03_AXI_awlen);
    mp_S03_AXI_transactor->AWSIZE(S03_AXI_awsize);
    mp_S03_AXI_transactor->AWBURST(S03_AXI_awburst);
    mp_S03_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_awlock_converter");
    mp_S03_AXI_awlock_converter->vector_in(S03_AXI_awlock);
    mp_S03_AXI_awlock_converter->scalar_out(m_S03_AXI_awlock_converter_signal);
    mp_S03_AXI_transactor->AWLOCK(m_S03_AXI_awlock_converter_signal);
    mp_S03_AXI_transactor->AWCACHE(S03_AXI_awcache);
    mp_S03_AXI_transactor->AWPROT(S03_AXI_awprot);
    mp_S03_AXI_transactor->AWQOS(S03_AXI_awqos);
    mp_S03_AXI_transactor->AWVALID(S03_AXI_awvalid);
    mp_S03_AXI_transactor->AWREADY(S03_AXI_awready);
    mp_S03_AXI_transactor->WDATA(S03_AXI_wdata);
    mp_S03_AXI_transactor->WSTRB(S03_AXI_wstrb);
    mp_S03_AXI_transactor->WLAST(S03_AXI_wlast);
    mp_S03_AXI_transactor->WVALID(S03_AXI_wvalid);
    mp_S03_AXI_transactor->WREADY(S03_AXI_wready);
    mp_S03_AXI_transactor->BID(S03_AXI_bid);
    mp_S03_AXI_transactor->BRESP(S03_AXI_bresp);
    mp_S03_AXI_transactor->BVALID(S03_AXI_bvalid);
    mp_S03_AXI_transactor->BREADY(S03_AXI_bready);
    mp_S03_AXI_transactor->ARID(S03_AXI_arid);
    mp_S03_AXI_transactor->ARADDR(S03_AXI_araddr);
    mp_S03_AXI_transactor->ARLEN(S03_AXI_arlen);
    mp_S03_AXI_transactor->ARSIZE(S03_AXI_arsize);
    mp_S03_AXI_transactor->ARBURST(S03_AXI_arburst);
    mp_S03_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_arlock_converter");
    mp_S03_AXI_arlock_converter->vector_in(S03_AXI_arlock);
    mp_S03_AXI_arlock_converter->scalar_out(m_S03_AXI_arlock_converter_signal);
    mp_S03_AXI_transactor->ARLOCK(m_S03_AXI_arlock_converter_signal);
    mp_S03_AXI_transactor->ARCACHE(S03_AXI_arcache);
    mp_S03_AXI_transactor->ARPROT(S03_AXI_arprot);
    mp_S03_AXI_transactor->ARQOS(S03_AXI_arqos);
    mp_S03_AXI_transactor->ARVALID(S03_AXI_arvalid);
    mp_S03_AXI_transactor->ARREADY(S03_AXI_arready);
    mp_S03_AXI_transactor->RID(S03_AXI_rid);
    mp_S03_AXI_transactor->RDATA(S03_AXI_rdata);
    mp_S03_AXI_transactor->RRESP(S03_AXI_rresp);
    mp_S03_AXI_transactor->RLAST(S03_AXI_rlast);
    mp_S03_AXI_transactor->RVALID(S03_AXI_rvalid);
    mp_S03_AXI_transactor->RREADY(S03_AXI_rready);
    mp_S03_AXI_transactor->CLK(aclk);
    mp_S03_AXI_transactor->RST(aresetn);

    // S03_AXI' transactor sockets

    mp_impl->S03_AXI_tlm_aximm_read_socket->bind(*(mp_S03_AXI_transactor->rd_socket));
    mp_impl->S03_AXI_tlm_aximm_write_socket->bind(*(mp_S03_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S04_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S04_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S04_AXI' transactor parameters
    xsc::common_cpp::properties S04_AXI_transactor_param_props;
    S04_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S04_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S04_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S04_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S04_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S04_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S04_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S04_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S04_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S04_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S04_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S04_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S04_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S04_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S04_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S04_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S04_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S04_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S04_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S04_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S04_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S04_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S04_AXI_transactor", S04_AXI_transactor_param_props);

    // S04_AXI' transactor ports

    mp_S04_AXI_transactor->AWID(S04_AXI_awid);
    mp_S04_AXI_transactor->AWADDR(S04_AXI_awaddr);
    mp_S04_AXI_transactor->AWLEN(S04_AXI_awlen);
    mp_S04_AXI_transactor->AWSIZE(S04_AXI_awsize);
    mp_S04_AXI_transactor->AWBURST(S04_AXI_awburst);
    mp_S04_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_awlock_converter");
    mp_S04_AXI_awlock_converter->vector_in(S04_AXI_awlock);
    mp_S04_AXI_awlock_converter->scalar_out(m_S04_AXI_awlock_converter_signal);
    mp_S04_AXI_transactor->AWLOCK(m_S04_AXI_awlock_converter_signal);
    mp_S04_AXI_transactor->AWCACHE(S04_AXI_awcache);
    mp_S04_AXI_transactor->AWPROT(S04_AXI_awprot);
    mp_S04_AXI_transactor->AWQOS(S04_AXI_awqos);
    mp_S04_AXI_transactor->AWVALID(S04_AXI_awvalid);
    mp_S04_AXI_transactor->AWREADY(S04_AXI_awready);
    mp_S04_AXI_transactor->WDATA(S04_AXI_wdata);
    mp_S04_AXI_transactor->WSTRB(S04_AXI_wstrb);
    mp_S04_AXI_transactor->WLAST(S04_AXI_wlast);
    mp_S04_AXI_transactor->WVALID(S04_AXI_wvalid);
    mp_S04_AXI_transactor->WREADY(S04_AXI_wready);
    mp_S04_AXI_transactor->BID(S04_AXI_bid);
    mp_S04_AXI_transactor->BRESP(S04_AXI_bresp);
    mp_S04_AXI_transactor->BVALID(S04_AXI_bvalid);
    mp_S04_AXI_transactor->BREADY(S04_AXI_bready);
    mp_S04_AXI_transactor->ARID(S04_AXI_arid);
    mp_S04_AXI_transactor->ARADDR(S04_AXI_araddr);
    mp_S04_AXI_transactor->ARLEN(S04_AXI_arlen);
    mp_S04_AXI_transactor->ARSIZE(S04_AXI_arsize);
    mp_S04_AXI_transactor->ARBURST(S04_AXI_arburst);
    mp_S04_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_arlock_converter");
    mp_S04_AXI_arlock_converter->vector_in(S04_AXI_arlock);
    mp_S04_AXI_arlock_converter->scalar_out(m_S04_AXI_arlock_converter_signal);
    mp_S04_AXI_transactor->ARLOCK(m_S04_AXI_arlock_converter_signal);
    mp_S04_AXI_transactor->ARCACHE(S04_AXI_arcache);
    mp_S04_AXI_transactor->ARPROT(S04_AXI_arprot);
    mp_S04_AXI_transactor->ARQOS(S04_AXI_arqos);
    mp_S04_AXI_transactor->ARVALID(S04_AXI_arvalid);
    mp_S04_AXI_transactor->ARREADY(S04_AXI_arready);
    mp_S04_AXI_transactor->RID(S04_AXI_rid);
    mp_S04_AXI_transactor->RDATA(S04_AXI_rdata);
    mp_S04_AXI_transactor->RRESP(S04_AXI_rresp);
    mp_S04_AXI_transactor->RLAST(S04_AXI_rlast);
    mp_S04_AXI_transactor->RVALID(S04_AXI_rvalid);
    mp_S04_AXI_transactor->RREADY(S04_AXI_rready);
    mp_S04_AXI_transactor->CLK(aclk);
    mp_S04_AXI_transactor->RST(aresetn);

    // S04_AXI' transactor sockets

    mp_impl->S04_AXI_tlm_aximm_read_socket->bind(*(mp_S04_AXI_transactor->rd_socket));
    mp_impl->S04_AXI_tlm_aximm_write_socket->bind(*(mp_S04_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S05_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S05_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S05_AXI' transactor parameters
    xsc::common_cpp::properties S05_AXI_transactor_param_props;
    S05_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S05_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S05_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S05_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S05_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S05_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S05_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S05_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S05_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S05_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S05_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S05_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S05_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S05_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S05_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S05_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S05_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S05_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S05_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S05_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S05_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S05_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S05_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S05_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S05_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S05_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S05_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S05_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S05_AXI_transactor", S05_AXI_transactor_param_props);

    // S05_AXI' transactor ports

    mp_S05_AXI_transactor->AWID(S05_AXI_awid);
    mp_S05_AXI_transactor->AWADDR(S05_AXI_awaddr);
    mp_S05_AXI_transactor->AWLEN(S05_AXI_awlen);
    mp_S05_AXI_transactor->AWSIZE(S05_AXI_awsize);
    mp_S05_AXI_transactor->AWBURST(S05_AXI_awburst);
    mp_S05_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S05_AXI_awlock_converter");
    mp_S05_AXI_awlock_converter->vector_in(S05_AXI_awlock);
    mp_S05_AXI_awlock_converter->scalar_out(m_S05_AXI_awlock_converter_signal);
    mp_S05_AXI_transactor->AWLOCK(m_S05_AXI_awlock_converter_signal);
    mp_S05_AXI_transactor->AWCACHE(S05_AXI_awcache);
    mp_S05_AXI_transactor->AWPROT(S05_AXI_awprot);
    mp_S05_AXI_transactor->AWQOS(S05_AXI_awqos);
    mp_S05_AXI_transactor->AWVALID(S05_AXI_awvalid);
    mp_S05_AXI_transactor->AWREADY(S05_AXI_awready);
    mp_S05_AXI_transactor->WDATA(S05_AXI_wdata);
    mp_S05_AXI_transactor->WSTRB(S05_AXI_wstrb);
    mp_S05_AXI_transactor->WLAST(S05_AXI_wlast);
    mp_S05_AXI_transactor->WVALID(S05_AXI_wvalid);
    mp_S05_AXI_transactor->WREADY(S05_AXI_wready);
    mp_S05_AXI_transactor->BID(S05_AXI_bid);
    mp_S05_AXI_transactor->BRESP(S05_AXI_bresp);
    mp_S05_AXI_transactor->BVALID(S05_AXI_bvalid);
    mp_S05_AXI_transactor->BREADY(S05_AXI_bready);
    mp_S05_AXI_transactor->ARID(S05_AXI_arid);
    mp_S05_AXI_transactor->ARADDR(S05_AXI_araddr);
    mp_S05_AXI_transactor->ARLEN(S05_AXI_arlen);
    mp_S05_AXI_transactor->ARSIZE(S05_AXI_arsize);
    mp_S05_AXI_transactor->ARBURST(S05_AXI_arburst);
    mp_S05_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S05_AXI_arlock_converter");
    mp_S05_AXI_arlock_converter->vector_in(S05_AXI_arlock);
    mp_S05_AXI_arlock_converter->scalar_out(m_S05_AXI_arlock_converter_signal);
    mp_S05_AXI_transactor->ARLOCK(m_S05_AXI_arlock_converter_signal);
    mp_S05_AXI_transactor->ARCACHE(S05_AXI_arcache);
    mp_S05_AXI_transactor->ARPROT(S05_AXI_arprot);
    mp_S05_AXI_transactor->ARQOS(S05_AXI_arqos);
    mp_S05_AXI_transactor->ARVALID(S05_AXI_arvalid);
    mp_S05_AXI_transactor->ARREADY(S05_AXI_arready);
    mp_S05_AXI_transactor->RID(S05_AXI_rid);
    mp_S05_AXI_transactor->RDATA(S05_AXI_rdata);
    mp_S05_AXI_transactor->RRESP(S05_AXI_rresp);
    mp_S05_AXI_transactor->RLAST(S05_AXI_rlast);
    mp_S05_AXI_transactor->RVALID(S05_AXI_rvalid);
    mp_S05_AXI_transactor->RREADY(S05_AXI_rready);
    mp_S05_AXI_transactor->CLK(aclk);
    mp_S05_AXI_transactor->RST(aresetn);

    // S05_AXI' transactor sockets

    mp_impl->S05_AXI_tlm_aximm_read_socket->bind(*(mp_S05_AXI_transactor->rd_socket));
    mp_impl->S05_AXI_tlm_aximm_write_socket->bind(*(mp_S05_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S06_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S06_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S06_AXI' transactor parameters
    xsc::common_cpp::properties S06_AXI_transactor_param_props;
    S06_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S06_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S06_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S06_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S06_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S06_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S06_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S06_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S06_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S06_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S06_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S06_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S06_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S06_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S06_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S06_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S06_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S06_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S06_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S06_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S06_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S06_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S06_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S06_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S06_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S06_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S06_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S06_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S06_AXI_transactor", S06_AXI_transactor_param_props);

    // S06_AXI' transactor ports

    mp_S06_AXI_transactor->AWID(S06_AXI_awid);
    mp_S06_AXI_transactor->AWADDR(S06_AXI_awaddr);
    mp_S06_AXI_transactor->AWLEN(S06_AXI_awlen);
    mp_S06_AXI_transactor->AWSIZE(S06_AXI_awsize);
    mp_S06_AXI_transactor->AWBURST(S06_AXI_awburst);
    mp_S06_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S06_AXI_awlock_converter");
    mp_S06_AXI_awlock_converter->vector_in(S06_AXI_awlock);
    mp_S06_AXI_awlock_converter->scalar_out(m_S06_AXI_awlock_converter_signal);
    mp_S06_AXI_transactor->AWLOCK(m_S06_AXI_awlock_converter_signal);
    mp_S06_AXI_transactor->AWCACHE(S06_AXI_awcache);
    mp_S06_AXI_transactor->AWPROT(S06_AXI_awprot);
    mp_S06_AXI_transactor->AWQOS(S06_AXI_awqos);
    mp_S06_AXI_transactor->AWVALID(S06_AXI_awvalid);
    mp_S06_AXI_transactor->AWREADY(S06_AXI_awready);
    mp_S06_AXI_transactor->WDATA(S06_AXI_wdata);
    mp_S06_AXI_transactor->WSTRB(S06_AXI_wstrb);
    mp_S06_AXI_transactor->WLAST(S06_AXI_wlast);
    mp_S06_AXI_transactor->WVALID(S06_AXI_wvalid);
    mp_S06_AXI_transactor->WREADY(S06_AXI_wready);
    mp_S06_AXI_transactor->BID(S06_AXI_bid);
    mp_S06_AXI_transactor->BRESP(S06_AXI_bresp);
    mp_S06_AXI_transactor->BVALID(S06_AXI_bvalid);
    mp_S06_AXI_transactor->BREADY(S06_AXI_bready);
    mp_S06_AXI_transactor->ARID(S06_AXI_arid);
    mp_S06_AXI_transactor->ARADDR(S06_AXI_araddr);
    mp_S06_AXI_transactor->ARLEN(S06_AXI_arlen);
    mp_S06_AXI_transactor->ARSIZE(S06_AXI_arsize);
    mp_S06_AXI_transactor->ARBURST(S06_AXI_arburst);
    mp_S06_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S06_AXI_arlock_converter");
    mp_S06_AXI_arlock_converter->vector_in(S06_AXI_arlock);
    mp_S06_AXI_arlock_converter->scalar_out(m_S06_AXI_arlock_converter_signal);
    mp_S06_AXI_transactor->ARLOCK(m_S06_AXI_arlock_converter_signal);
    mp_S06_AXI_transactor->ARCACHE(S06_AXI_arcache);
    mp_S06_AXI_transactor->ARPROT(S06_AXI_arprot);
    mp_S06_AXI_transactor->ARQOS(S06_AXI_arqos);
    mp_S06_AXI_transactor->ARVALID(S06_AXI_arvalid);
    mp_S06_AXI_transactor->ARREADY(S06_AXI_arready);
    mp_S06_AXI_transactor->RID(S06_AXI_rid);
    mp_S06_AXI_transactor->RDATA(S06_AXI_rdata);
    mp_S06_AXI_transactor->RRESP(S06_AXI_rresp);
    mp_S06_AXI_transactor->RLAST(S06_AXI_rlast);
    mp_S06_AXI_transactor->RVALID(S06_AXI_rvalid);
    mp_S06_AXI_transactor->RREADY(S06_AXI_rready);
    mp_S06_AXI_transactor->CLK(aclk);
    mp_S06_AXI_transactor->RST(aresetn);

    // S06_AXI' transactor sockets

    mp_impl->S06_AXI_tlm_aximm_read_socket->bind(*(mp_S06_AXI_transactor->rd_socket));
    mp_impl->S06_AXI_tlm_aximm_write_socket->bind(*(mp_S06_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S07_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S07_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S07_AXI' transactor parameters
    xsc::common_cpp::properties S07_AXI_transactor_param_props;
    S07_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S07_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S07_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S07_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S07_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S07_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S07_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S07_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S07_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S07_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S07_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S07_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S07_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S07_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S07_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S07_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S07_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S07_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S07_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S07_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S07_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S07_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S07_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S07_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S07_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S07_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S07_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S07_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S07_AXI_transactor", S07_AXI_transactor_param_props);

    // S07_AXI' transactor ports

    mp_S07_AXI_transactor->AWID(S07_AXI_awid);
    mp_S07_AXI_transactor->AWADDR(S07_AXI_awaddr);
    mp_S07_AXI_transactor->AWLEN(S07_AXI_awlen);
    mp_S07_AXI_transactor->AWSIZE(S07_AXI_awsize);
    mp_S07_AXI_transactor->AWBURST(S07_AXI_awburst);
    mp_S07_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S07_AXI_awlock_converter");
    mp_S07_AXI_awlock_converter->vector_in(S07_AXI_awlock);
    mp_S07_AXI_awlock_converter->scalar_out(m_S07_AXI_awlock_converter_signal);
    mp_S07_AXI_transactor->AWLOCK(m_S07_AXI_awlock_converter_signal);
    mp_S07_AXI_transactor->AWCACHE(S07_AXI_awcache);
    mp_S07_AXI_transactor->AWPROT(S07_AXI_awprot);
    mp_S07_AXI_transactor->AWQOS(S07_AXI_awqos);
    mp_S07_AXI_transactor->AWVALID(S07_AXI_awvalid);
    mp_S07_AXI_transactor->AWREADY(S07_AXI_awready);
    mp_S07_AXI_transactor->WDATA(S07_AXI_wdata);
    mp_S07_AXI_transactor->WSTRB(S07_AXI_wstrb);
    mp_S07_AXI_transactor->WLAST(S07_AXI_wlast);
    mp_S07_AXI_transactor->WVALID(S07_AXI_wvalid);
    mp_S07_AXI_transactor->WREADY(S07_AXI_wready);
    mp_S07_AXI_transactor->BID(S07_AXI_bid);
    mp_S07_AXI_transactor->BRESP(S07_AXI_bresp);
    mp_S07_AXI_transactor->BVALID(S07_AXI_bvalid);
    mp_S07_AXI_transactor->BREADY(S07_AXI_bready);
    mp_S07_AXI_transactor->ARID(S07_AXI_arid);
    mp_S07_AXI_transactor->ARADDR(S07_AXI_araddr);
    mp_S07_AXI_transactor->ARLEN(S07_AXI_arlen);
    mp_S07_AXI_transactor->ARSIZE(S07_AXI_arsize);
    mp_S07_AXI_transactor->ARBURST(S07_AXI_arburst);
    mp_S07_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S07_AXI_arlock_converter");
    mp_S07_AXI_arlock_converter->vector_in(S07_AXI_arlock);
    mp_S07_AXI_arlock_converter->scalar_out(m_S07_AXI_arlock_converter_signal);
    mp_S07_AXI_transactor->ARLOCK(m_S07_AXI_arlock_converter_signal);
    mp_S07_AXI_transactor->ARCACHE(S07_AXI_arcache);
    mp_S07_AXI_transactor->ARPROT(S07_AXI_arprot);
    mp_S07_AXI_transactor->ARQOS(S07_AXI_arqos);
    mp_S07_AXI_transactor->ARVALID(S07_AXI_arvalid);
    mp_S07_AXI_transactor->ARREADY(S07_AXI_arready);
    mp_S07_AXI_transactor->RID(S07_AXI_rid);
    mp_S07_AXI_transactor->RDATA(S07_AXI_rdata);
    mp_S07_AXI_transactor->RRESP(S07_AXI_rresp);
    mp_S07_AXI_transactor->RLAST(S07_AXI_rlast);
    mp_S07_AXI_transactor->RVALID(S07_AXI_rvalid);
    mp_S07_AXI_transactor->RREADY(S07_AXI_rready);
    mp_S07_AXI_transactor->CLK(aclk);
    mp_S07_AXI_transactor->RST(aresetn);

    // S07_AXI' transactor sockets

    mp_impl->S07_AXI_tlm_aximm_read_socket->bind(*(mp_S07_AXI_transactor->rd_socket));
    mp_impl->S07_AXI_tlm_aximm_write_socket->bind(*(mp_S07_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S08_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S08_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S08_AXI' transactor parameters
    xsc::common_cpp::properties S08_AXI_transactor_param_props;
    S08_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S08_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S08_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S08_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S08_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S08_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S08_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S08_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S08_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S08_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S08_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S08_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S08_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S08_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S08_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S08_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S08_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S08_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S08_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S08_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S08_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S08_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S08_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S08_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S08_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S08_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S08_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S08_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S08_AXI_transactor", S08_AXI_transactor_param_props);

    // S08_AXI' transactor ports

    mp_S08_AXI_transactor->AWID(S08_AXI_awid);
    mp_S08_AXI_transactor->AWADDR(S08_AXI_awaddr);
    mp_S08_AXI_transactor->AWLEN(S08_AXI_awlen);
    mp_S08_AXI_transactor->AWSIZE(S08_AXI_awsize);
    mp_S08_AXI_transactor->AWBURST(S08_AXI_awburst);
    mp_S08_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S08_AXI_awlock_converter");
    mp_S08_AXI_awlock_converter->vector_in(S08_AXI_awlock);
    mp_S08_AXI_awlock_converter->scalar_out(m_S08_AXI_awlock_converter_signal);
    mp_S08_AXI_transactor->AWLOCK(m_S08_AXI_awlock_converter_signal);
    mp_S08_AXI_transactor->AWCACHE(S08_AXI_awcache);
    mp_S08_AXI_transactor->AWPROT(S08_AXI_awprot);
    mp_S08_AXI_transactor->AWQOS(S08_AXI_awqos);
    mp_S08_AXI_transactor->AWVALID(S08_AXI_awvalid);
    mp_S08_AXI_transactor->AWREADY(S08_AXI_awready);
    mp_S08_AXI_transactor->WDATA(S08_AXI_wdata);
    mp_S08_AXI_transactor->WSTRB(S08_AXI_wstrb);
    mp_S08_AXI_transactor->WLAST(S08_AXI_wlast);
    mp_S08_AXI_transactor->WVALID(S08_AXI_wvalid);
    mp_S08_AXI_transactor->WREADY(S08_AXI_wready);
    mp_S08_AXI_transactor->BID(S08_AXI_bid);
    mp_S08_AXI_transactor->BRESP(S08_AXI_bresp);
    mp_S08_AXI_transactor->BVALID(S08_AXI_bvalid);
    mp_S08_AXI_transactor->BREADY(S08_AXI_bready);
    mp_S08_AXI_transactor->ARID(S08_AXI_arid);
    mp_S08_AXI_transactor->ARADDR(S08_AXI_araddr);
    mp_S08_AXI_transactor->ARLEN(S08_AXI_arlen);
    mp_S08_AXI_transactor->ARSIZE(S08_AXI_arsize);
    mp_S08_AXI_transactor->ARBURST(S08_AXI_arburst);
    mp_S08_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S08_AXI_arlock_converter");
    mp_S08_AXI_arlock_converter->vector_in(S08_AXI_arlock);
    mp_S08_AXI_arlock_converter->scalar_out(m_S08_AXI_arlock_converter_signal);
    mp_S08_AXI_transactor->ARLOCK(m_S08_AXI_arlock_converter_signal);
    mp_S08_AXI_transactor->ARCACHE(S08_AXI_arcache);
    mp_S08_AXI_transactor->ARPROT(S08_AXI_arprot);
    mp_S08_AXI_transactor->ARQOS(S08_AXI_arqos);
    mp_S08_AXI_transactor->ARVALID(S08_AXI_arvalid);
    mp_S08_AXI_transactor->ARREADY(S08_AXI_arready);
    mp_S08_AXI_transactor->RID(S08_AXI_rid);
    mp_S08_AXI_transactor->RDATA(S08_AXI_rdata);
    mp_S08_AXI_transactor->RRESP(S08_AXI_rresp);
    mp_S08_AXI_transactor->RLAST(S08_AXI_rlast);
    mp_S08_AXI_transactor->RVALID(S08_AXI_rvalid);
    mp_S08_AXI_transactor->RREADY(S08_AXI_rready);
    mp_S08_AXI_transactor->CLK(aclk);
    mp_S08_AXI_transactor->RST(aresetn);

    // S08_AXI' transactor sockets

    mp_impl->S08_AXI_tlm_aximm_read_socket->bind(*(mp_S08_AXI_transactor->rd_socket));
    mp_impl->S08_AXI_tlm_aximm_write_socket->bind(*(mp_S08_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S09_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S09_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S09_AXI' transactor parameters
    xsc::common_cpp::properties S09_AXI_transactor_param_props;
    S09_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S09_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S09_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S09_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S09_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S09_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S09_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S09_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S09_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S09_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S09_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S09_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S09_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S09_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S09_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S09_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S09_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S09_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S09_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S09_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S09_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S09_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S09_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S09_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S09_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S09_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S09_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S09_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S09_AXI_transactor", S09_AXI_transactor_param_props);

    // S09_AXI' transactor ports

    mp_S09_AXI_transactor->AWID(S09_AXI_awid);
    mp_S09_AXI_transactor->AWADDR(S09_AXI_awaddr);
    mp_S09_AXI_transactor->AWLEN(S09_AXI_awlen);
    mp_S09_AXI_transactor->AWSIZE(S09_AXI_awsize);
    mp_S09_AXI_transactor->AWBURST(S09_AXI_awburst);
    mp_S09_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S09_AXI_awlock_converter");
    mp_S09_AXI_awlock_converter->vector_in(S09_AXI_awlock);
    mp_S09_AXI_awlock_converter->scalar_out(m_S09_AXI_awlock_converter_signal);
    mp_S09_AXI_transactor->AWLOCK(m_S09_AXI_awlock_converter_signal);
    mp_S09_AXI_transactor->AWCACHE(S09_AXI_awcache);
    mp_S09_AXI_transactor->AWPROT(S09_AXI_awprot);
    mp_S09_AXI_transactor->AWQOS(S09_AXI_awqos);
    mp_S09_AXI_transactor->AWVALID(S09_AXI_awvalid);
    mp_S09_AXI_transactor->AWREADY(S09_AXI_awready);
    mp_S09_AXI_transactor->WDATA(S09_AXI_wdata);
    mp_S09_AXI_transactor->WSTRB(S09_AXI_wstrb);
    mp_S09_AXI_transactor->WLAST(S09_AXI_wlast);
    mp_S09_AXI_transactor->WVALID(S09_AXI_wvalid);
    mp_S09_AXI_transactor->WREADY(S09_AXI_wready);
    mp_S09_AXI_transactor->BID(S09_AXI_bid);
    mp_S09_AXI_transactor->BRESP(S09_AXI_bresp);
    mp_S09_AXI_transactor->BVALID(S09_AXI_bvalid);
    mp_S09_AXI_transactor->BREADY(S09_AXI_bready);
    mp_S09_AXI_transactor->ARID(S09_AXI_arid);
    mp_S09_AXI_transactor->ARADDR(S09_AXI_araddr);
    mp_S09_AXI_transactor->ARLEN(S09_AXI_arlen);
    mp_S09_AXI_transactor->ARSIZE(S09_AXI_arsize);
    mp_S09_AXI_transactor->ARBURST(S09_AXI_arburst);
    mp_S09_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S09_AXI_arlock_converter");
    mp_S09_AXI_arlock_converter->vector_in(S09_AXI_arlock);
    mp_S09_AXI_arlock_converter->scalar_out(m_S09_AXI_arlock_converter_signal);
    mp_S09_AXI_transactor->ARLOCK(m_S09_AXI_arlock_converter_signal);
    mp_S09_AXI_transactor->ARCACHE(S09_AXI_arcache);
    mp_S09_AXI_transactor->ARPROT(S09_AXI_arprot);
    mp_S09_AXI_transactor->ARQOS(S09_AXI_arqos);
    mp_S09_AXI_transactor->ARVALID(S09_AXI_arvalid);
    mp_S09_AXI_transactor->ARREADY(S09_AXI_arready);
    mp_S09_AXI_transactor->RID(S09_AXI_rid);
    mp_S09_AXI_transactor->RDATA(S09_AXI_rdata);
    mp_S09_AXI_transactor->RRESP(S09_AXI_rresp);
    mp_S09_AXI_transactor->RLAST(S09_AXI_rlast);
    mp_S09_AXI_transactor->RVALID(S09_AXI_rvalid);
    mp_S09_AXI_transactor->RREADY(S09_AXI_rready);
    mp_S09_AXI_transactor->CLK(aclk);
    mp_S09_AXI_transactor->RST(aresetn);

    // S09_AXI' transactor sockets

    mp_impl->S09_AXI_tlm_aximm_read_socket->bind(*(mp_S09_AXI_transactor->rd_socket));
    mp_impl->S09_AXI_tlm_aximm_write_socket->bind(*(mp_S09_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S10_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S10_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S10_AXI' transactor parameters
    xsc::common_cpp::properties S10_AXI_transactor_param_props;
    S10_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S10_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S10_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S10_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S10_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S10_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S10_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S10_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S10_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S10_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S10_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S10_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S10_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S10_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S10_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S10_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S10_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S10_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S10_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S10_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S10_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S10_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S10_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S10_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S10_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S10_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S10_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S10_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S10_AXI_transactor", S10_AXI_transactor_param_props);

    // S10_AXI' transactor ports

    mp_S10_AXI_transactor->AWID(S10_AXI_awid);
    mp_S10_AXI_transactor->AWADDR(S10_AXI_awaddr);
    mp_S10_AXI_transactor->AWLEN(S10_AXI_awlen);
    mp_S10_AXI_transactor->AWSIZE(S10_AXI_awsize);
    mp_S10_AXI_transactor->AWBURST(S10_AXI_awburst);
    mp_S10_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S10_AXI_awlock_converter");
    mp_S10_AXI_awlock_converter->vector_in(S10_AXI_awlock);
    mp_S10_AXI_awlock_converter->scalar_out(m_S10_AXI_awlock_converter_signal);
    mp_S10_AXI_transactor->AWLOCK(m_S10_AXI_awlock_converter_signal);
    mp_S10_AXI_transactor->AWCACHE(S10_AXI_awcache);
    mp_S10_AXI_transactor->AWPROT(S10_AXI_awprot);
    mp_S10_AXI_transactor->AWQOS(S10_AXI_awqos);
    mp_S10_AXI_transactor->AWVALID(S10_AXI_awvalid);
    mp_S10_AXI_transactor->AWREADY(S10_AXI_awready);
    mp_S10_AXI_transactor->WDATA(S10_AXI_wdata);
    mp_S10_AXI_transactor->WSTRB(S10_AXI_wstrb);
    mp_S10_AXI_transactor->WLAST(S10_AXI_wlast);
    mp_S10_AXI_transactor->WVALID(S10_AXI_wvalid);
    mp_S10_AXI_transactor->WREADY(S10_AXI_wready);
    mp_S10_AXI_transactor->BID(S10_AXI_bid);
    mp_S10_AXI_transactor->BRESP(S10_AXI_bresp);
    mp_S10_AXI_transactor->BVALID(S10_AXI_bvalid);
    mp_S10_AXI_transactor->BREADY(S10_AXI_bready);
    mp_S10_AXI_transactor->ARID(S10_AXI_arid);
    mp_S10_AXI_transactor->ARADDR(S10_AXI_araddr);
    mp_S10_AXI_transactor->ARLEN(S10_AXI_arlen);
    mp_S10_AXI_transactor->ARSIZE(S10_AXI_arsize);
    mp_S10_AXI_transactor->ARBURST(S10_AXI_arburst);
    mp_S10_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S10_AXI_arlock_converter");
    mp_S10_AXI_arlock_converter->vector_in(S10_AXI_arlock);
    mp_S10_AXI_arlock_converter->scalar_out(m_S10_AXI_arlock_converter_signal);
    mp_S10_AXI_transactor->ARLOCK(m_S10_AXI_arlock_converter_signal);
    mp_S10_AXI_transactor->ARCACHE(S10_AXI_arcache);
    mp_S10_AXI_transactor->ARPROT(S10_AXI_arprot);
    mp_S10_AXI_transactor->ARQOS(S10_AXI_arqos);
    mp_S10_AXI_transactor->ARVALID(S10_AXI_arvalid);
    mp_S10_AXI_transactor->ARREADY(S10_AXI_arready);
    mp_S10_AXI_transactor->RID(S10_AXI_rid);
    mp_S10_AXI_transactor->RDATA(S10_AXI_rdata);
    mp_S10_AXI_transactor->RRESP(S10_AXI_rresp);
    mp_S10_AXI_transactor->RLAST(S10_AXI_rlast);
    mp_S10_AXI_transactor->RVALID(S10_AXI_rvalid);
    mp_S10_AXI_transactor->RREADY(S10_AXI_rready);
    mp_S10_AXI_transactor->CLK(aclk);
    mp_S10_AXI_transactor->RST(aresetn);

    // S10_AXI' transactor sockets

    mp_impl->S10_AXI_tlm_aximm_read_socket->bind(*(mp_S10_AXI_transactor->rd_socket));
    mp_impl->S10_AXI_tlm_aximm_write_socket->bind(*(mp_S10_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S11_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S11_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S11_AXI' transactor parameters
    xsc::common_cpp::properties S11_AXI_transactor_param_props;
    S11_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S11_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S11_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S11_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S11_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S11_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S11_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S11_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S11_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S11_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S11_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S11_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S11_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S11_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S11_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S11_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S11_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S11_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S11_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S11_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S11_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S11_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S11_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S11_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S11_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S11_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S11_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S11_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S11_AXI_transactor", S11_AXI_transactor_param_props);

    // S11_AXI' transactor ports

    mp_S11_AXI_transactor->AWID(S11_AXI_awid);
    mp_S11_AXI_transactor->AWADDR(S11_AXI_awaddr);
    mp_S11_AXI_transactor->AWLEN(S11_AXI_awlen);
    mp_S11_AXI_transactor->AWSIZE(S11_AXI_awsize);
    mp_S11_AXI_transactor->AWBURST(S11_AXI_awburst);
    mp_S11_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S11_AXI_awlock_converter");
    mp_S11_AXI_awlock_converter->vector_in(S11_AXI_awlock);
    mp_S11_AXI_awlock_converter->scalar_out(m_S11_AXI_awlock_converter_signal);
    mp_S11_AXI_transactor->AWLOCK(m_S11_AXI_awlock_converter_signal);
    mp_S11_AXI_transactor->AWCACHE(S11_AXI_awcache);
    mp_S11_AXI_transactor->AWPROT(S11_AXI_awprot);
    mp_S11_AXI_transactor->AWQOS(S11_AXI_awqos);
    mp_S11_AXI_transactor->AWVALID(S11_AXI_awvalid);
    mp_S11_AXI_transactor->AWREADY(S11_AXI_awready);
    mp_S11_AXI_transactor->WDATA(S11_AXI_wdata);
    mp_S11_AXI_transactor->WSTRB(S11_AXI_wstrb);
    mp_S11_AXI_transactor->WLAST(S11_AXI_wlast);
    mp_S11_AXI_transactor->WVALID(S11_AXI_wvalid);
    mp_S11_AXI_transactor->WREADY(S11_AXI_wready);
    mp_S11_AXI_transactor->BID(S11_AXI_bid);
    mp_S11_AXI_transactor->BRESP(S11_AXI_bresp);
    mp_S11_AXI_transactor->BVALID(S11_AXI_bvalid);
    mp_S11_AXI_transactor->BREADY(S11_AXI_bready);
    mp_S11_AXI_transactor->ARID(S11_AXI_arid);
    mp_S11_AXI_transactor->ARADDR(S11_AXI_araddr);
    mp_S11_AXI_transactor->ARLEN(S11_AXI_arlen);
    mp_S11_AXI_transactor->ARSIZE(S11_AXI_arsize);
    mp_S11_AXI_transactor->ARBURST(S11_AXI_arburst);
    mp_S11_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S11_AXI_arlock_converter");
    mp_S11_AXI_arlock_converter->vector_in(S11_AXI_arlock);
    mp_S11_AXI_arlock_converter->scalar_out(m_S11_AXI_arlock_converter_signal);
    mp_S11_AXI_transactor->ARLOCK(m_S11_AXI_arlock_converter_signal);
    mp_S11_AXI_transactor->ARCACHE(S11_AXI_arcache);
    mp_S11_AXI_transactor->ARPROT(S11_AXI_arprot);
    mp_S11_AXI_transactor->ARQOS(S11_AXI_arqos);
    mp_S11_AXI_transactor->ARVALID(S11_AXI_arvalid);
    mp_S11_AXI_transactor->ARREADY(S11_AXI_arready);
    mp_S11_AXI_transactor->RID(S11_AXI_rid);
    mp_S11_AXI_transactor->RDATA(S11_AXI_rdata);
    mp_S11_AXI_transactor->RRESP(S11_AXI_rresp);
    mp_S11_AXI_transactor->RLAST(S11_AXI_rlast);
    mp_S11_AXI_transactor->RVALID(S11_AXI_rvalid);
    mp_S11_AXI_transactor->RREADY(S11_AXI_rready);
    mp_S11_AXI_transactor->CLK(aclk);
    mp_S11_AXI_transactor->RST(aresetn);

    // S11_AXI' transactor sockets

    mp_impl->S11_AXI_tlm_aximm_read_socket->bind(*(mp_S11_AXI_transactor->rd_socket));
    mp_impl->S11_AXI_tlm_aximm_write_socket->bind(*(mp_S11_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S12_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S12_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S12_AXI' transactor parameters
    xsc::common_cpp::properties S12_AXI_transactor_param_props;
    S12_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S12_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S12_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S12_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S12_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S12_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S12_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S12_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S12_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S12_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S12_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S12_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S12_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S12_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S12_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S12_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S12_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S12_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S12_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S12_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S12_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S12_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S12_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S12_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S12_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S12_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S12_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S12_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S12_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S12_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S12_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S12_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S12_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S12_AXI_transactor", S12_AXI_transactor_param_props);

    // S12_AXI' transactor ports

    mp_S12_AXI_transactor->AWID(S12_AXI_awid);
    mp_S12_AXI_transactor->AWADDR(S12_AXI_awaddr);
    mp_S12_AXI_transactor->AWLEN(S12_AXI_awlen);
    mp_S12_AXI_transactor->AWSIZE(S12_AXI_awsize);
    mp_S12_AXI_transactor->AWBURST(S12_AXI_awburst);
    mp_S12_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S12_AXI_awlock_converter");
    mp_S12_AXI_awlock_converter->vector_in(S12_AXI_awlock);
    mp_S12_AXI_awlock_converter->scalar_out(m_S12_AXI_awlock_converter_signal);
    mp_S12_AXI_transactor->AWLOCK(m_S12_AXI_awlock_converter_signal);
    mp_S12_AXI_transactor->AWCACHE(S12_AXI_awcache);
    mp_S12_AXI_transactor->AWPROT(S12_AXI_awprot);
    mp_S12_AXI_transactor->AWQOS(S12_AXI_awqos);
    mp_S12_AXI_transactor->AWVALID(S12_AXI_awvalid);
    mp_S12_AXI_transactor->AWREADY(S12_AXI_awready);
    mp_S12_AXI_transactor->WDATA(S12_AXI_wdata);
    mp_S12_AXI_transactor->WSTRB(S12_AXI_wstrb);
    mp_S12_AXI_transactor->WLAST(S12_AXI_wlast);
    mp_S12_AXI_transactor->WVALID(S12_AXI_wvalid);
    mp_S12_AXI_transactor->WREADY(S12_AXI_wready);
    mp_S12_AXI_transactor->BID(S12_AXI_bid);
    mp_S12_AXI_transactor->BRESP(S12_AXI_bresp);
    mp_S12_AXI_transactor->BVALID(S12_AXI_bvalid);
    mp_S12_AXI_transactor->BREADY(S12_AXI_bready);
    mp_S12_AXI_transactor->ARID(S12_AXI_arid);
    mp_S12_AXI_transactor->ARADDR(S12_AXI_araddr);
    mp_S12_AXI_transactor->ARLEN(S12_AXI_arlen);
    mp_S12_AXI_transactor->ARSIZE(S12_AXI_arsize);
    mp_S12_AXI_transactor->ARBURST(S12_AXI_arburst);
    mp_S12_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S12_AXI_arlock_converter");
    mp_S12_AXI_arlock_converter->vector_in(S12_AXI_arlock);
    mp_S12_AXI_arlock_converter->scalar_out(m_S12_AXI_arlock_converter_signal);
    mp_S12_AXI_transactor->ARLOCK(m_S12_AXI_arlock_converter_signal);
    mp_S12_AXI_transactor->ARCACHE(S12_AXI_arcache);
    mp_S12_AXI_transactor->ARPROT(S12_AXI_arprot);
    mp_S12_AXI_transactor->ARQOS(S12_AXI_arqos);
    mp_S12_AXI_transactor->ARVALID(S12_AXI_arvalid);
    mp_S12_AXI_transactor->ARREADY(S12_AXI_arready);
    mp_S12_AXI_transactor->RID(S12_AXI_rid);
    mp_S12_AXI_transactor->RDATA(S12_AXI_rdata);
    mp_S12_AXI_transactor->RRESP(S12_AXI_rresp);
    mp_S12_AXI_transactor->RLAST(S12_AXI_rlast);
    mp_S12_AXI_transactor->RVALID(S12_AXI_rvalid);
    mp_S12_AXI_transactor->RREADY(S12_AXI_rready);
    mp_S12_AXI_transactor->CLK(aclk);
    mp_S12_AXI_transactor->RST(aresetn);

    // S12_AXI' transactor sockets

    mp_impl->S12_AXI_tlm_aximm_read_socket->bind(*(mp_S12_AXI_transactor->rd_socket));
    mp_impl->S12_AXI_tlm_aximm_write_socket->bind(*(mp_S12_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S13_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S13_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S13_AXI' transactor parameters
    xsc::common_cpp::properties S13_AXI_transactor_param_props;
    S13_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S13_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S13_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S13_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S13_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S13_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S13_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S13_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S13_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S13_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S13_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S13_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S13_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S13_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S13_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S13_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S13_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S13_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S13_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S13_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S13_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S13_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S13_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S13_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S13_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S13_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S13_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S13_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S13_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S13_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S13_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S13_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S13_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S13_AXI_transactor", S13_AXI_transactor_param_props);

    // S13_AXI' transactor ports

    mp_S13_AXI_transactor->AWID(S13_AXI_awid);
    mp_S13_AXI_transactor->AWADDR(S13_AXI_awaddr);
    mp_S13_AXI_transactor->AWLEN(S13_AXI_awlen);
    mp_S13_AXI_transactor->AWSIZE(S13_AXI_awsize);
    mp_S13_AXI_transactor->AWBURST(S13_AXI_awburst);
    mp_S13_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S13_AXI_awlock_converter");
    mp_S13_AXI_awlock_converter->vector_in(S13_AXI_awlock);
    mp_S13_AXI_awlock_converter->scalar_out(m_S13_AXI_awlock_converter_signal);
    mp_S13_AXI_transactor->AWLOCK(m_S13_AXI_awlock_converter_signal);
    mp_S13_AXI_transactor->AWCACHE(S13_AXI_awcache);
    mp_S13_AXI_transactor->AWPROT(S13_AXI_awprot);
    mp_S13_AXI_transactor->AWQOS(S13_AXI_awqos);
    mp_S13_AXI_transactor->AWVALID(S13_AXI_awvalid);
    mp_S13_AXI_transactor->AWREADY(S13_AXI_awready);
    mp_S13_AXI_transactor->WDATA(S13_AXI_wdata);
    mp_S13_AXI_transactor->WSTRB(S13_AXI_wstrb);
    mp_S13_AXI_transactor->WLAST(S13_AXI_wlast);
    mp_S13_AXI_transactor->WVALID(S13_AXI_wvalid);
    mp_S13_AXI_transactor->WREADY(S13_AXI_wready);
    mp_S13_AXI_transactor->BID(S13_AXI_bid);
    mp_S13_AXI_transactor->BRESP(S13_AXI_bresp);
    mp_S13_AXI_transactor->BVALID(S13_AXI_bvalid);
    mp_S13_AXI_transactor->BREADY(S13_AXI_bready);
    mp_S13_AXI_transactor->ARID(S13_AXI_arid);
    mp_S13_AXI_transactor->ARADDR(S13_AXI_araddr);
    mp_S13_AXI_transactor->ARLEN(S13_AXI_arlen);
    mp_S13_AXI_transactor->ARSIZE(S13_AXI_arsize);
    mp_S13_AXI_transactor->ARBURST(S13_AXI_arburst);
    mp_S13_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S13_AXI_arlock_converter");
    mp_S13_AXI_arlock_converter->vector_in(S13_AXI_arlock);
    mp_S13_AXI_arlock_converter->scalar_out(m_S13_AXI_arlock_converter_signal);
    mp_S13_AXI_transactor->ARLOCK(m_S13_AXI_arlock_converter_signal);
    mp_S13_AXI_transactor->ARCACHE(S13_AXI_arcache);
    mp_S13_AXI_transactor->ARPROT(S13_AXI_arprot);
    mp_S13_AXI_transactor->ARQOS(S13_AXI_arqos);
    mp_S13_AXI_transactor->ARVALID(S13_AXI_arvalid);
    mp_S13_AXI_transactor->ARREADY(S13_AXI_arready);
    mp_S13_AXI_transactor->RID(S13_AXI_rid);
    mp_S13_AXI_transactor->RDATA(S13_AXI_rdata);
    mp_S13_AXI_transactor->RRESP(S13_AXI_rresp);
    mp_S13_AXI_transactor->RLAST(S13_AXI_rlast);
    mp_S13_AXI_transactor->RVALID(S13_AXI_rvalid);
    mp_S13_AXI_transactor->RREADY(S13_AXI_rready);
    mp_S13_AXI_transactor->CLK(aclk);
    mp_S13_AXI_transactor->RST(aresetn);

    // S13_AXI' transactor sockets

    mp_impl->S13_AXI_tlm_aximm_read_socket->bind(*(mp_S13_AXI_transactor->rd_socket));
    mp_impl->S13_AXI_tlm_aximm_write_socket->bind(*(mp_S13_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S14_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S14_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S14_AXI' transactor parameters
    xsc::common_cpp::properties S14_AXI_transactor_param_props;
    S14_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S14_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S14_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S14_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S14_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S14_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S14_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S14_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S14_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S14_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S14_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S14_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S14_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S14_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S14_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S14_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S14_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S14_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S14_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S14_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S14_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S14_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S14_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S14_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S14_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S14_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S14_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S14_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S14_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S14_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S14_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S14_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S14_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S14_AXI_transactor", S14_AXI_transactor_param_props);

    // S14_AXI' transactor ports

    mp_S14_AXI_transactor->AWID(S14_AXI_awid);
    mp_S14_AXI_transactor->AWADDR(S14_AXI_awaddr);
    mp_S14_AXI_transactor->AWLEN(S14_AXI_awlen);
    mp_S14_AXI_transactor->AWSIZE(S14_AXI_awsize);
    mp_S14_AXI_transactor->AWBURST(S14_AXI_awburst);
    mp_S14_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S14_AXI_awlock_converter");
    mp_S14_AXI_awlock_converter->vector_in(S14_AXI_awlock);
    mp_S14_AXI_awlock_converter->scalar_out(m_S14_AXI_awlock_converter_signal);
    mp_S14_AXI_transactor->AWLOCK(m_S14_AXI_awlock_converter_signal);
    mp_S14_AXI_transactor->AWCACHE(S14_AXI_awcache);
    mp_S14_AXI_transactor->AWPROT(S14_AXI_awprot);
    mp_S14_AXI_transactor->AWQOS(S14_AXI_awqos);
    mp_S14_AXI_transactor->AWVALID(S14_AXI_awvalid);
    mp_S14_AXI_transactor->AWREADY(S14_AXI_awready);
    mp_S14_AXI_transactor->WDATA(S14_AXI_wdata);
    mp_S14_AXI_transactor->WSTRB(S14_AXI_wstrb);
    mp_S14_AXI_transactor->WLAST(S14_AXI_wlast);
    mp_S14_AXI_transactor->WVALID(S14_AXI_wvalid);
    mp_S14_AXI_transactor->WREADY(S14_AXI_wready);
    mp_S14_AXI_transactor->BID(S14_AXI_bid);
    mp_S14_AXI_transactor->BRESP(S14_AXI_bresp);
    mp_S14_AXI_transactor->BVALID(S14_AXI_bvalid);
    mp_S14_AXI_transactor->BREADY(S14_AXI_bready);
    mp_S14_AXI_transactor->ARID(S14_AXI_arid);
    mp_S14_AXI_transactor->ARADDR(S14_AXI_araddr);
    mp_S14_AXI_transactor->ARLEN(S14_AXI_arlen);
    mp_S14_AXI_transactor->ARSIZE(S14_AXI_arsize);
    mp_S14_AXI_transactor->ARBURST(S14_AXI_arburst);
    mp_S14_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S14_AXI_arlock_converter");
    mp_S14_AXI_arlock_converter->vector_in(S14_AXI_arlock);
    mp_S14_AXI_arlock_converter->scalar_out(m_S14_AXI_arlock_converter_signal);
    mp_S14_AXI_transactor->ARLOCK(m_S14_AXI_arlock_converter_signal);
    mp_S14_AXI_transactor->ARCACHE(S14_AXI_arcache);
    mp_S14_AXI_transactor->ARPROT(S14_AXI_arprot);
    mp_S14_AXI_transactor->ARQOS(S14_AXI_arqos);
    mp_S14_AXI_transactor->ARVALID(S14_AXI_arvalid);
    mp_S14_AXI_transactor->ARREADY(S14_AXI_arready);
    mp_S14_AXI_transactor->RID(S14_AXI_rid);
    mp_S14_AXI_transactor->RDATA(S14_AXI_rdata);
    mp_S14_AXI_transactor->RRESP(S14_AXI_rresp);
    mp_S14_AXI_transactor->RLAST(S14_AXI_rlast);
    mp_S14_AXI_transactor->RVALID(S14_AXI_rvalid);
    mp_S14_AXI_transactor->RREADY(S14_AXI_rready);
    mp_S14_AXI_transactor->CLK(aclk);
    mp_S14_AXI_transactor->RST(aresetn);

    // S14_AXI' transactor sockets

    mp_impl->S14_AXI_tlm_aximm_read_socket->bind(*(mp_S14_AXI_transactor->rd_socket));
    mp_impl->S14_AXI_tlm_aximm_write_socket->bind(*(mp_S14_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S15_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S15_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S15_AXI' transactor parameters
    xsc::common_cpp::properties S15_AXI_transactor_param_props;
    S15_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S15_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S15_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S15_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S15_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S15_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S15_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S15_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S15_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S15_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S15_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S15_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S15_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S15_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S15_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S15_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S15_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S15_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S15_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S15_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S15_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S15_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S15_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S15_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S15_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S15_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S15_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S15_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S15_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S15_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S15_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S15_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S15_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S15_AXI_transactor", S15_AXI_transactor_param_props);

    // S15_AXI' transactor ports

    mp_S15_AXI_transactor->AWID(S15_AXI_awid);
    mp_S15_AXI_transactor->AWADDR(S15_AXI_awaddr);
    mp_S15_AXI_transactor->AWLEN(S15_AXI_awlen);
    mp_S15_AXI_transactor->AWSIZE(S15_AXI_awsize);
    mp_S15_AXI_transactor->AWBURST(S15_AXI_awburst);
    mp_S15_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S15_AXI_awlock_converter");
    mp_S15_AXI_awlock_converter->vector_in(S15_AXI_awlock);
    mp_S15_AXI_awlock_converter->scalar_out(m_S15_AXI_awlock_converter_signal);
    mp_S15_AXI_transactor->AWLOCK(m_S15_AXI_awlock_converter_signal);
    mp_S15_AXI_transactor->AWCACHE(S15_AXI_awcache);
    mp_S15_AXI_transactor->AWPROT(S15_AXI_awprot);
    mp_S15_AXI_transactor->AWQOS(S15_AXI_awqos);
    mp_S15_AXI_transactor->AWVALID(S15_AXI_awvalid);
    mp_S15_AXI_transactor->AWREADY(S15_AXI_awready);
    mp_S15_AXI_transactor->WDATA(S15_AXI_wdata);
    mp_S15_AXI_transactor->WSTRB(S15_AXI_wstrb);
    mp_S15_AXI_transactor->WLAST(S15_AXI_wlast);
    mp_S15_AXI_transactor->WVALID(S15_AXI_wvalid);
    mp_S15_AXI_transactor->WREADY(S15_AXI_wready);
    mp_S15_AXI_transactor->BID(S15_AXI_bid);
    mp_S15_AXI_transactor->BRESP(S15_AXI_bresp);
    mp_S15_AXI_transactor->BVALID(S15_AXI_bvalid);
    mp_S15_AXI_transactor->BREADY(S15_AXI_bready);
    mp_S15_AXI_transactor->ARID(S15_AXI_arid);
    mp_S15_AXI_transactor->ARADDR(S15_AXI_araddr);
    mp_S15_AXI_transactor->ARLEN(S15_AXI_arlen);
    mp_S15_AXI_transactor->ARSIZE(S15_AXI_arsize);
    mp_S15_AXI_transactor->ARBURST(S15_AXI_arburst);
    mp_S15_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S15_AXI_arlock_converter");
    mp_S15_AXI_arlock_converter->vector_in(S15_AXI_arlock);
    mp_S15_AXI_arlock_converter->scalar_out(m_S15_AXI_arlock_converter_signal);
    mp_S15_AXI_transactor->ARLOCK(m_S15_AXI_arlock_converter_signal);
    mp_S15_AXI_transactor->ARCACHE(S15_AXI_arcache);
    mp_S15_AXI_transactor->ARPROT(S15_AXI_arprot);
    mp_S15_AXI_transactor->ARQOS(S15_AXI_arqos);
    mp_S15_AXI_transactor->ARVALID(S15_AXI_arvalid);
    mp_S15_AXI_transactor->ARREADY(S15_AXI_arready);
    mp_S15_AXI_transactor->RID(S15_AXI_rid);
    mp_S15_AXI_transactor->RDATA(S15_AXI_rdata);
    mp_S15_AXI_transactor->RRESP(S15_AXI_rresp);
    mp_S15_AXI_transactor->RLAST(S15_AXI_rlast);
    mp_S15_AXI_transactor->RVALID(S15_AXI_rvalid);
    mp_S15_AXI_transactor->RREADY(S15_AXI_rready);
    mp_S15_AXI_transactor->CLK(aclk);
    mp_S15_AXI_transactor->RST(aresetn);

    // S15_AXI' transactor sockets

    mp_impl->S15_AXI_tlm_aximm_read_socket->bind(*(mp_S15_AXI_transactor->rd_socket));
    mp_impl->S15_AXI_tlm_aximm_write_socket->bind(*(mp_S15_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "M00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXI' transactor parameters
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,34,1,1,1,1,1,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);

    // M00_AXI' transactor ports

    mp_M00_AXI_transactor->AWADDR(M00_AXI_awaddr);
    mp_M00_AXI_transactor->AWLEN(M00_AXI_awlen);
    mp_M00_AXI_transactor->AWSIZE(M00_AXI_awsize);
    mp_M00_AXI_transactor->AWBURST(M00_AXI_awburst);
    mp_M00_AXI_awlock_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_awlock_converter");
    mp_M00_AXI_awlock_converter->scalar_in(m_M00_AXI_awlock_converter_signal);
    mp_M00_AXI_awlock_converter->vector_out(M00_AXI_awlock);
    mp_M00_AXI_transactor->AWLOCK(m_M00_AXI_awlock_converter_signal);
    mp_M00_AXI_transactor->AWCACHE(M00_AXI_awcache);
    mp_M00_AXI_transactor->AWPROT(M00_AXI_awprot);
    mp_M00_AXI_transactor->AWQOS(M00_AXI_awqos);
    mp_M00_AXI_transactor->AWVALID(M00_AXI_awvalid);
    mp_M00_AXI_transactor->AWREADY(M00_AXI_awready);
    mp_M00_AXI_transactor->WDATA(M00_AXI_wdata);
    mp_M00_AXI_transactor->WSTRB(M00_AXI_wstrb);
    mp_M00_AXI_transactor->WLAST(M00_AXI_wlast);
    mp_M00_AXI_transactor->WVALID(M00_AXI_wvalid);
    mp_M00_AXI_transactor->WREADY(M00_AXI_wready);
    mp_M00_AXI_transactor->BRESP(M00_AXI_bresp);
    mp_M00_AXI_transactor->BVALID(M00_AXI_bvalid);
    mp_M00_AXI_transactor->BREADY(M00_AXI_bready);
    mp_M00_AXI_transactor->ARADDR(M00_AXI_araddr);
    mp_M00_AXI_transactor->ARLEN(M00_AXI_arlen);
    mp_M00_AXI_transactor->ARSIZE(M00_AXI_arsize);
    mp_M00_AXI_transactor->ARBURST(M00_AXI_arburst);
    mp_M00_AXI_arlock_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_arlock_converter");
    mp_M00_AXI_arlock_converter->scalar_in(m_M00_AXI_arlock_converter_signal);
    mp_M00_AXI_arlock_converter->vector_out(M00_AXI_arlock);
    mp_M00_AXI_transactor->ARLOCK(m_M00_AXI_arlock_converter_signal);
    mp_M00_AXI_transactor->ARCACHE(M00_AXI_arcache);
    mp_M00_AXI_transactor->ARPROT(M00_AXI_arprot);
    mp_M00_AXI_transactor->ARQOS(M00_AXI_arqos);
    mp_M00_AXI_transactor->ARVALID(M00_AXI_arvalid);
    mp_M00_AXI_transactor->ARREADY(M00_AXI_arready);
    mp_M00_AXI_transactor->RDATA(M00_AXI_rdata);
    mp_M00_AXI_transactor->RRESP(M00_AXI_rresp);
    mp_M00_AXI_transactor->RLAST(M00_AXI_rlast);
    mp_M00_AXI_transactor->RVALID(M00_AXI_rvalid);
    mp_M00_AXI_transactor->RREADY(M00_AXI_rready);
    mp_M00_AXI_transactor->CLK(aclk);
    mp_M00_AXI_transactor->RST(aresetn);

    // M00_AXI' transactor sockets

    mp_impl->M00_AXI_tlm_aximm_read_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->M00_AXI_tlm_aximm_write_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // RIVIERA




#ifdef VCSSYSTEMC
MemoryInterfacesVIP_smartconnect_0_0::MemoryInterfacesVIP_smartconnect_0_0(const sc_core::sc_module_name& nm) : MemoryInterfacesVIP_smartconnect_0_0_sc(nm),  aclk("aclk"), aresetn("aresetn"), S00_AXI_awid("S00_AXI_awid"), S00_AXI_awaddr("S00_AXI_awaddr"), S00_AXI_awlen("S00_AXI_awlen"), S00_AXI_awsize("S00_AXI_awsize"), S00_AXI_awburst("S00_AXI_awburst"), S00_AXI_awlock("S00_AXI_awlock"), S00_AXI_awcache("S00_AXI_awcache"), S00_AXI_awprot("S00_AXI_awprot"), S00_AXI_awqos("S00_AXI_awqos"), S00_AXI_awvalid("S00_AXI_awvalid"), S00_AXI_awready("S00_AXI_awready"), S00_AXI_wdata("S00_AXI_wdata"), S00_AXI_wstrb("S00_AXI_wstrb"), S00_AXI_wlast("S00_AXI_wlast"), S00_AXI_wvalid("S00_AXI_wvalid"), S00_AXI_wready("S00_AXI_wready"), S00_AXI_bid("S00_AXI_bid"), S00_AXI_bresp("S00_AXI_bresp"), S00_AXI_bvalid("S00_AXI_bvalid"), S00_AXI_bready("S00_AXI_bready"), S00_AXI_arid("S00_AXI_arid"), S00_AXI_araddr("S00_AXI_araddr"), S00_AXI_arlen("S00_AXI_arlen"), S00_AXI_arsize("S00_AXI_arsize"), S00_AXI_arburst("S00_AXI_arburst"), S00_AXI_arlock("S00_AXI_arlock"), S00_AXI_arcache("S00_AXI_arcache"), S00_AXI_arprot("S00_AXI_arprot"), S00_AXI_arqos("S00_AXI_arqos"), S00_AXI_arvalid("S00_AXI_arvalid"), S00_AXI_arready("S00_AXI_arready"), S00_AXI_rid("S00_AXI_rid"), S00_AXI_rdata("S00_AXI_rdata"), S00_AXI_rresp("S00_AXI_rresp"), S00_AXI_rlast("S00_AXI_rlast"), S00_AXI_rvalid("S00_AXI_rvalid"), S00_AXI_rready("S00_AXI_rready"), S01_AXI_awid("S01_AXI_awid"), S01_AXI_awaddr("S01_AXI_awaddr"), S01_AXI_awlen("S01_AXI_awlen"), S01_AXI_awsize("S01_AXI_awsize"), S01_AXI_awburst("S01_AXI_awburst"), S01_AXI_awlock("S01_AXI_awlock"), S01_AXI_awcache("S01_AXI_awcache"), S01_AXI_awprot("S01_AXI_awprot"), S01_AXI_awqos("S01_AXI_awqos"), S01_AXI_awvalid("S01_AXI_awvalid"), S01_AXI_awready("S01_AXI_awready"), S01_AXI_wdata("S01_AXI_wdata"), S01_AXI_wstrb("S01_AXI_wstrb"), S01_AXI_wlast("S01_AXI_wlast"), S01_AXI_wvalid("S01_AXI_wvalid"), S01_AXI_wready("S01_AXI_wready"), S01_AXI_bid("S01_AXI_bid"), S01_AXI_bresp("S01_AXI_bresp"), S01_AXI_bvalid("S01_AXI_bvalid"), S01_AXI_bready("S01_AXI_bready"), S01_AXI_arid("S01_AXI_arid"), S01_AXI_araddr("S01_AXI_araddr"), S01_AXI_arlen("S01_AXI_arlen"), S01_AXI_arsize("S01_AXI_arsize"), S01_AXI_arburst("S01_AXI_arburst"), S01_AXI_arlock("S01_AXI_arlock"), S01_AXI_arcache("S01_AXI_arcache"), S01_AXI_arprot("S01_AXI_arprot"), S01_AXI_arqos("S01_AXI_arqos"), S01_AXI_arvalid("S01_AXI_arvalid"), S01_AXI_arready("S01_AXI_arready"), S01_AXI_rid("S01_AXI_rid"), S01_AXI_rdata("S01_AXI_rdata"), S01_AXI_rresp("S01_AXI_rresp"), S01_AXI_rlast("S01_AXI_rlast"), S01_AXI_rvalid("S01_AXI_rvalid"), S01_AXI_rready("S01_AXI_rready"), S02_AXI_awid("S02_AXI_awid"), S02_AXI_awaddr("S02_AXI_awaddr"), S02_AXI_awlen("S02_AXI_awlen"), S02_AXI_awsize("S02_AXI_awsize"), S02_AXI_awburst("S02_AXI_awburst"), S02_AXI_awlock("S02_AXI_awlock"), S02_AXI_awcache("S02_AXI_awcache"), S02_AXI_awprot("S02_AXI_awprot"), S02_AXI_awqos("S02_AXI_awqos"), S02_AXI_awvalid("S02_AXI_awvalid"), S02_AXI_awready("S02_AXI_awready"), S02_AXI_wdata("S02_AXI_wdata"), S02_AXI_wstrb("S02_AXI_wstrb"), S02_AXI_wlast("S02_AXI_wlast"), S02_AXI_wvalid("S02_AXI_wvalid"), S02_AXI_wready("S02_AXI_wready"), S02_AXI_bid("S02_AXI_bid"), S02_AXI_bresp("S02_AXI_bresp"), S02_AXI_bvalid("S02_AXI_bvalid"), S02_AXI_bready("S02_AXI_bready"), S02_AXI_arid("S02_AXI_arid"), S02_AXI_araddr("S02_AXI_araddr"), S02_AXI_arlen("S02_AXI_arlen"), S02_AXI_arsize("S02_AXI_arsize"), S02_AXI_arburst("S02_AXI_arburst"), S02_AXI_arlock("S02_AXI_arlock"), S02_AXI_arcache("S02_AXI_arcache"), S02_AXI_arprot("S02_AXI_arprot"), S02_AXI_arqos("S02_AXI_arqos"), S02_AXI_arvalid("S02_AXI_arvalid"), S02_AXI_arready("S02_AXI_arready"), S02_AXI_rid("S02_AXI_rid"), S02_AXI_rdata("S02_AXI_rdata"), S02_AXI_rresp("S02_AXI_rresp"), S02_AXI_rlast("S02_AXI_rlast"), S02_AXI_rvalid("S02_AXI_rvalid"), S02_AXI_rready("S02_AXI_rready"), S03_AXI_awid("S03_AXI_awid"), S03_AXI_awaddr("S03_AXI_awaddr"), S03_AXI_awlen("S03_AXI_awlen"), S03_AXI_awsize("S03_AXI_awsize"), S03_AXI_awburst("S03_AXI_awburst"), S03_AXI_awlock("S03_AXI_awlock"), S03_AXI_awcache("S03_AXI_awcache"), S03_AXI_awprot("S03_AXI_awprot"), S03_AXI_awqos("S03_AXI_awqos"), S03_AXI_awvalid("S03_AXI_awvalid"), S03_AXI_awready("S03_AXI_awready"), S03_AXI_wdata("S03_AXI_wdata"), S03_AXI_wstrb("S03_AXI_wstrb"), S03_AXI_wlast("S03_AXI_wlast"), S03_AXI_wvalid("S03_AXI_wvalid"), S03_AXI_wready("S03_AXI_wready"), S03_AXI_bid("S03_AXI_bid"), S03_AXI_bresp("S03_AXI_bresp"), S03_AXI_bvalid("S03_AXI_bvalid"), S03_AXI_bready("S03_AXI_bready"), S03_AXI_arid("S03_AXI_arid"), S03_AXI_araddr("S03_AXI_araddr"), S03_AXI_arlen("S03_AXI_arlen"), S03_AXI_arsize("S03_AXI_arsize"), S03_AXI_arburst("S03_AXI_arburst"), S03_AXI_arlock("S03_AXI_arlock"), S03_AXI_arcache("S03_AXI_arcache"), S03_AXI_arprot("S03_AXI_arprot"), S03_AXI_arqos("S03_AXI_arqos"), S03_AXI_arvalid("S03_AXI_arvalid"), S03_AXI_arready("S03_AXI_arready"), S03_AXI_rid("S03_AXI_rid"), S03_AXI_rdata("S03_AXI_rdata"), S03_AXI_rresp("S03_AXI_rresp"), S03_AXI_rlast("S03_AXI_rlast"), S03_AXI_rvalid("S03_AXI_rvalid"), S03_AXI_rready("S03_AXI_rready"), S04_AXI_awid("S04_AXI_awid"), S04_AXI_awaddr("S04_AXI_awaddr"), S04_AXI_awlen("S04_AXI_awlen"), S04_AXI_awsize("S04_AXI_awsize"), S04_AXI_awburst("S04_AXI_awburst"), S04_AXI_awlock("S04_AXI_awlock"), S04_AXI_awcache("S04_AXI_awcache"), S04_AXI_awprot("S04_AXI_awprot"), S04_AXI_awqos("S04_AXI_awqos"), S04_AXI_awvalid("S04_AXI_awvalid"), S04_AXI_awready("S04_AXI_awready"), S04_AXI_wdata("S04_AXI_wdata"), S04_AXI_wstrb("S04_AXI_wstrb"), S04_AXI_wlast("S04_AXI_wlast"), S04_AXI_wvalid("S04_AXI_wvalid"), S04_AXI_wready("S04_AXI_wready"), S04_AXI_bid("S04_AXI_bid"), S04_AXI_bresp("S04_AXI_bresp"), S04_AXI_bvalid("S04_AXI_bvalid"), S04_AXI_bready("S04_AXI_bready"), S04_AXI_arid("S04_AXI_arid"), S04_AXI_araddr("S04_AXI_araddr"), S04_AXI_arlen("S04_AXI_arlen"), S04_AXI_arsize("S04_AXI_arsize"), S04_AXI_arburst("S04_AXI_arburst"), S04_AXI_arlock("S04_AXI_arlock"), S04_AXI_arcache("S04_AXI_arcache"), S04_AXI_arprot("S04_AXI_arprot"), S04_AXI_arqos("S04_AXI_arqos"), S04_AXI_arvalid("S04_AXI_arvalid"), S04_AXI_arready("S04_AXI_arready"), S04_AXI_rid("S04_AXI_rid"), S04_AXI_rdata("S04_AXI_rdata"), S04_AXI_rresp("S04_AXI_rresp"), S04_AXI_rlast("S04_AXI_rlast"), S04_AXI_rvalid("S04_AXI_rvalid"), S04_AXI_rready("S04_AXI_rready"), S05_AXI_awid("S05_AXI_awid"), S05_AXI_awaddr("S05_AXI_awaddr"), S05_AXI_awlen("S05_AXI_awlen"), S05_AXI_awsize("S05_AXI_awsize"), S05_AXI_awburst("S05_AXI_awburst"), S05_AXI_awlock("S05_AXI_awlock"), S05_AXI_awcache("S05_AXI_awcache"), S05_AXI_awprot("S05_AXI_awprot"), S05_AXI_awqos("S05_AXI_awqos"), S05_AXI_awvalid("S05_AXI_awvalid"), S05_AXI_awready("S05_AXI_awready"), S05_AXI_wdata("S05_AXI_wdata"), S05_AXI_wstrb("S05_AXI_wstrb"), S05_AXI_wlast("S05_AXI_wlast"), S05_AXI_wvalid("S05_AXI_wvalid"), S05_AXI_wready("S05_AXI_wready"), S05_AXI_bid("S05_AXI_bid"), S05_AXI_bresp("S05_AXI_bresp"), S05_AXI_bvalid("S05_AXI_bvalid"), S05_AXI_bready("S05_AXI_bready"), S05_AXI_arid("S05_AXI_arid"), S05_AXI_araddr("S05_AXI_araddr"), S05_AXI_arlen("S05_AXI_arlen"), S05_AXI_arsize("S05_AXI_arsize"), S05_AXI_arburst("S05_AXI_arburst"), S05_AXI_arlock("S05_AXI_arlock"), S05_AXI_arcache("S05_AXI_arcache"), S05_AXI_arprot("S05_AXI_arprot"), S05_AXI_arqos("S05_AXI_arqos"), S05_AXI_arvalid("S05_AXI_arvalid"), S05_AXI_arready("S05_AXI_arready"), S05_AXI_rid("S05_AXI_rid"), S05_AXI_rdata("S05_AXI_rdata"), S05_AXI_rresp("S05_AXI_rresp"), S05_AXI_rlast("S05_AXI_rlast"), S05_AXI_rvalid("S05_AXI_rvalid"), S05_AXI_rready("S05_AXI_rready"), S06_AXI_awid("S06_AXI_awid"), S06_AXI_awaddr("S06_AXI_awaddr"), S06_AXI_awlen("S06_AXI_awlen"), S06_AXI_awsize("S06_AXI_awsize"), S06_AXI_awburst("S06_AXI_awburst"), S06_AXI_awlock("S06_AXI_awlock"), S06_AXI_awcache("S06_AXI_awcache"), S06_AXI_awprot("S06_AXI_awprot"), S06_AXI_awqos("S06_AXI_awqos"), S06_AXI_awvalid("S06_AXI_awvalid"), S06_AXI_awready("S06_AXI_awready"), S06_AXI_wdata("S06_AXI_wdata"), S06_AXI_wstrb("S06_AXI_wstrb"), S06_AXI_wlast("S06_AXI_wlast"), S06_AXI_wvalid("S06_AXI_wvalid"), S06_AXI_wready("S06_AXI_wready"), S06_AXI_bid("S06_AXI_bid"), S06_AXI_bresp("S06_AXI_bresp"), S06_AXI_bvalid("S06_AXI_bvalid"), S06_AXI_bready("S06_AXI_bready"), S06_AXI_arid("S06_AXI_arid"), S06_AXI_araddr("S06_AXI_araddr"), S06_AXI_arlen("S06_AXI_arlen"), S06_AXI_arsize("S06_AXI_arsize"), S06_AXI_arburst("S06_AXI_arburst"), S06_AXI_arlock("S06_AXI_arlock"), S06_AXI_arcache("S06_AXI_arcache"), S06_AXI_arprot("S06_AXI_arprot"), S06_AXI_arqos("S06_AXI_arqos"), S06_AXI_arvalid("S06_AXI_arvalid"), S06_AXI_arready("S06_AXI_arready"), S06_AXI_rid("S06_AXI_rid"), S06_AXI_rdata("S06_AXI_rdata"), S06_AXI_rresp("S06_AXI_rresp"), S06_AXI_rlast("S06_AXI_rlast"), S06_AXI_rvalid("S06_AXI_rvalid"), S06_AXI_rready("S06_AXI_rready"), S07_AXI_awid("S07_AXI_awid"), S07_AXI_awaddr("S07_AXI_awaddr"), S07_AXI_awlen("S07_AXI_awlen"), S07_AXI_awsize("S07_AXI_awsize"), S07_AXI_awburst("S07_AXI_awburst"), S07_AXI_awlock("S07_AXI_awlock"), S07_AXI_awcache("S07_AXI_awcache"), S07_AXI_awprot("S07_AXI_awprot"), S07_AXI_awqos("S07_AXI_awqos"), S07_AXI_awvalid("S07_AXI_awvalid"), S07_AXI_awready("S07_AXI_awready"), S07_AXI_wdata("S07_AXI_wdata"), S07_AXI_wstrb("S07_AXI_wstrb"), S07_AXI_wlast("S07_AXI_wlast"), S07_AXI_wvalid("S07_AXI_wvalid"), S07_AXI_wready("S07_AXI_wready"), S07_AXI_bid("S07_AXI_bid"), S07_AXI_bresp("S07_AXI_bresp"), S07_AXI_bvalid("S07_AXI_bvalid"), S07_AXI_bready("S07_AXI_bready"), S07_AXI_arid("S07_AXI_arid"), S07_AXI_araddr("S07_AXI_araddr"), S07_AXI_arlen("S07_AXI_arlen"), S07_AXI_arsize("S07_AXI_arsize"), S07_AXI_arburst("S07_AXI_arburst"), S07_AXI_arlock("S07_AXI_arlock"), S07_AXI_arcache("S07_AXI_arcache"), S07_AXI_arprot("S07_AXI_arprot"), S07_AXI_arqos("S07_AXI_arqos"), S07_AXI_arvalid("S07_AXI_arvalid"), S07_AXI_arready("S07_AXI_arready"), S07_AXI_rid("S07_AXI_rid"), S07_AXI_rdata("S07_AXI_rdata"), S07_AXI_rresp("S07_AXI_rresp"), S07_AXI_rlast("S07_AXI_rlast"), S07_AXI_rvalid("S07_AXI_rvalid"), S07_AXI_rready("S07_AXI_rready"), S08_AXI_awid("S08_AXI_awid"), S08_AXI_awaddr("S08_AXI_awaddr"), S08_AXI_awlen("S08_AXI_awlen"), S08_AXI_awsize("S08_AXI_awsize"), S08_AXI_awburst("S08_AXI_awburst"), S08_AXI_awlock("S08_AXI_awlock"), S08_AXI_awcache("S08_AXI_awcache"), S08_AXI_awprot("S08_AXI_awprot"), S08_AXI_awqos("S08_AXI_awqos"), S08_AXI_awvalid("S08_AXI_awvalid"), S08_AXI_awready("S08_AXI_awready"), S08_AXI_wdata("S08_AXI_wdata"), S08_AXI_wstrb("S08_AXI_wstrb"), S08_AXI_wlast("S08_AXI_wlast"), S08_AXI_wvalid("S08_AXI_wvalid"), S08_AXI_wready("S08_AXI_wready"), S08_AXI_bid("S08_AXI_bid"), S08_AXI_bresp("S08_AXI_bresp"), S08_AXI_bvalid("S08_AXI_bvalid"), S08_AXI_bready("S08_AXI_bready"), S08_AXI_arid("S08_AXI_arid"), S08_AXI_araddr("S08_AXI_araddr"), S08_AXI_arlen("S08_AXI_arlen"), S08_AXI_arsize("S08_AXI_arsize"), S08_AXI_arburst("S08_AXI_arburst"), S08_AXI_arlock("S08_AXI_arlock"), S08_AXI_arcache("S08_AXI_arcache"), S08_AXI_arprot("S08_AXI_arprot"), S08_AXI_arqos("S08_AXI_arqos"), S08_AXI_arvalid("S08_AXI_arvalid"), S08_AXI_arready("S08_AXI_arready"), S08_AXI_rid("S08_AXI_rid"), S08_AXI_rdata("S08_AXI_rdata"), S08_AXI_rresp("S08_AXI_rresp"), S08_AXI_rlast("S08_AXI_rlast"), S08_AXI_rvalid("S08_AXI_rvalid"), S08_AXI_rready("S08_AXI_rready"), S09_AXI_awid("S09_AXI_awid"), S09_AXI_awaddr("S09_AXI_awaddr"), S09_AXI_awlen("S09_AXI_awlen"), S09_AXI_awsize("S09_AXI_awsize"), S09_AXI_awburst("S09_AXI_awburst"), S09_AXI_awlock("S09_AXI_awlock"), S09_AXI_awcache("S09_AXI_awcache"), S09_AXI_awprot("S09_AXI_awprot"), S09_AXI_awqos("S09_AXI_awqos"), S09_AXI_awvalid("S09_AXI_awvalid"), S09_AXI_awready("S09_AXI_awready"), S09_AXI_wdata("S09_AXI_wdata"), S09_AXI_wstrb("S09_AXI_wstrb"), S09_AXI_wlast("S09_AXI_wlast"), S09_AXI_wvalid("S09_AXI_wvalid"), S09_AXI_wready("S09_AXI_wready"), S09_AXI_bid("S09_AXI_bid"), S09_AXI_bresp("S09_AXI_bresp"), S09_AXI_bvalid("S09_AXI_bvalid"), S09_AXI_bready("S09_AXI_bready"), S09_AXI_arid("S09_AXI_arid"), S09_AXI_araddr("S09_AXI_araddr"), S09_AXI_arlen("S09_AXI_arlen"), S09_AXI_arsize("S09_AXI_arsize"), S09_AXI_arburst("S09_AXI_arburst"), S09_AXI_arlock("S09_AXI_arlock"), S09_AXI_arcache("S09_AXI_arcache"), S09_AXI_arprot("S09_AXI_arprot"), S09_AXI_arqos("S09_AXI_arqos"), S09_AXI_arvalid("S09_AXI_arvalid"), S09_AXI_arready("S09_AXI_arready"), S09_AXI_rid("S09_AXI_rid"), S09_AXI_rdata("S09_AXI_rdata"), S09_AXI_rresp("S09_AXI_rresp"), S09_AXI_rlast("S09_AXI_rlast"), S09_AXI_rvalid("S09_AXI_rvalid"), S09_AXI_rready("S09_AXI_rready"), S10_AXI_awid("S10_AXI_awid"), S10_AXI_awaddr("S10_AXI_awaddr"), S10_AXI_awlen("S10_AXI_awlen"), S10_AXI_awsize("S10_AXI_awsize"), S10_AXI_awburst("S10_AXI_awburst"), S10_AXI_awlock("S10_AXI_awlock"), S10_AXI_awcache("S10_AXI_awcache"), S10_AXI_awprot("S10_AXI_awprot"), S10_AXI_awqos("S10_AXI_awqos"), S10_AXI_awvalid("S10_AXI_awvalid"), S10_AXI_awready("S10_AXI_awready"), S10_AXI_wdata("S10_AXI_wdata"), S10_AXI_wstrb("S10_AXI_wstrb"), S10_AXI_wlast("S10_AXI_wlast"), S10_AXI_wvalid("S10_AXI_wvalid"), S10_AXI_wready("S10_AXI_wready"), S10_AXI_bid("S10_AXI_bid"), S10_AXI_bresp("S10_AXI_bresp"), S10_AXI_bvalid("S10_AXI_bvalid"), S10_AXI_bready("S10_AXI_bready"), S10_AXI_arid("S10_AXI_arid"), S10_AXI_araddr("S10_AXI_araddr"), S10_AXI_arlen("S10_AXI_arlen"), S10_AXI_arsize("S10_AXI_arsize"), S10_AXI_arburst("S10_AXI_arburst"), S10_AXI_arlock("S10_AXI_arlock"), S10_AXI_arcache("S10_AXI_arcache"), S10_AXI_arprot("S10_AXI_arprot"), S10_AXI_arqos("S10_AXI_arqos"), S10_AXI_arvalid("S10_AXI_arvalid"), S10_AXI_arready("S10_AXI_arready"), S10_AXI_rid("S10_AXI_rid"), S10_AXI_rdata("S10_AXI_rdata"), S10_AXI_rresp("S10_AXI_rresp"), S10_AXI_rlast("S10_AXI_rlast"), S10_AXI_rvalid("S10_AXI_rvalid"), S10_AXI_rready("S10_AXI_rready"), S11_AXI_awid("S11_AXI_awid"), S11_AXI_awaddr("S11_AXI_awaddr"), S11_AXI_awlen("S11_AXI_awlen"), S11_AXI_awsize("S11_AXI_awsize"), S11_AXI_awburst("S11_AXI_awburst"), S11_AXI_awlock("S11_AXI_awlock"), S11_AXI_awcache("S11_AXI_awcache"), S11_AXI_awprot("S11_AXI_awprot"), S11_AXI_awqos("S11_AXI_awqos"), S11_AXI_awvalid("S11_AXI_awvalid"), S11_AXI_awready("S11_AXI_awready"), S11_AXI_wdata("S11_AXI_wdata"), S11_AXI_wstrb("S11_AXI_wstrb"), S11_AXI_wlast("S11_AXI_wlast"), S11_AXI_wvalid("S11_AXI_wvalid"), S11_AXI_wready("S11_AXI_wready"), S11_AXI_bid("S11_AXI_bid"), S11_AXI_bresp("S11_AXI_bresp"), S11_AXI_bvalid("S11_AXI_bvalid"), S11_AXI_bready("S11_AXI_bready"), S11_AXI_arid("S11_AXI_arid"), S11_AXI_araddr("S11_AXI_araddr"), S11_AXI_arlen("S11_AXI_arlen"), S11_AXI_arsize("S11_AXI_arsize"), S11_AXI_arburst("S11_AXI_arburst"), S11_AXI_arlock("S11_AXI_arlock"), S11_AXI_arcache("S11_AXI_arcache"), S11_AXI_arprot("S11_AXI_arprot"), S11_AXI_arqos("S11_AXI_arqos"), S11_AXI_arvalid("S11_AXI_arvalid"), S11_AXI_arready("S11_AXI_arready"), S11_AXI_rid("S11_AXI_rid"), S11_AXI_rdata("S11_AXI_rdata"), S11_AXI_rresp("S11_AXI_rresp"), S11_AXI_rlast("S11_AXI_rlast"), S11_AXI_rvalid("S11_AXI_rvalid"), S11_AXI_rready("S11_AXI_rready"), S12_AXI_awid("S12_AXI_awid"), S12_AXI_awaddr("S12_AXI_awaddr"), S12_AXI_awlen("S12_AXI_awlen"), S12_AXI_awsize("S12_AXI_awsize"), S12_AXI_awburst("S12_AXI_awburst"), S12_AXI_awlock("S12_AXI_awlock"), S12_AXI_awcache("S12_AXI_awcache"), S12_AXI_awprot("S12_AXI_awprot"), S12_AXI_awqos("S12_AXI_awqos"), S12_AXI_awvalid("S12_AXI_awvalid"), S12_AXI_awready("S12_AXI_awready"), S12_AXI_wdata("S12_AXI_wdata"), S12_AXI_wstrb("S12_AXI_wstrb"), S12_AXI_wlast("S12_AXI_wlast"), S12_AXI_wvalid("S12_AXI_wvalid"), S12_AXI_wready("S12_AXI_wready"), S12_AXI_bid("S12_AXI_bid"), S12_AXI_bresp("S12_AXI_bresp"), S12_AXI_bvalid("S12_AXI_bvalid"), S12_AXI_bready("S12_AXI_bready"), S12_AXI_arid("S12_AXI_arid"), S12_AXI_araddr("S12_AXI_araddr"), S12_AXI_arlen("S12_AXI_arlen"), S12_AXI_arsize("S12_AXI_arsize"), S12_AXI_arburst("S12_AXI_arburst"), S12_AXI_arlock("S12_AXI_arlock"), S12_AXI_arcache("S12_AXI_arcache"), S12_AXI_arprot("S12_AXI_arprot"), S12_AXI_arqos("S12_AXI_arqos"), S12_AXI_arvalid("S12_AXI_arvalid"), S12_AXI_arready("S12_AXI_arready"), S12_AXI_rid("S12_AXI_rid"), S12_AXI_rdata("S12_AXI_rdata"), S12_AXI_rresp("S12_AXI_rresp"), S12_AXI_rlast("S12_AXI_rlast"), S12_AXI_rvalid("S12_AXI_rvalid"), S12_AXI_rready("S12_AXI_rready"), S13_AXI_awid("S13_AXI_awid"), S13_AXI_awaddr("S13_AXI_awaddr"), S13_AXI_awlen("S13_AXI_awlen"), S13_AXI_awsize("S13_AXI_awsize"), S13_AXI_awburst("S13_AXI_awburst"), S13_AXI_awlock("S13_AXI_awlock"), S13_AXI_awcache("S13_AXI_awcache"), S13_AXI_awprot("S13_AXI_awprot"), S13_AXI_awqos("S13_AXI_awqos"), S13_AXI_awvalid("S13_AXI_awvalid"), S13_AXI_awready("S13_AXI_awready"), S13_AXI_wdata("S13_AXI_wdata"), S13_AXI_wstrb("S13_AXI_wstrb"), S13_AXI_wlast("S13_AXI_wlast"), S13_AXI_wvalid("S13_AXI_wvalid"), S13_AXI_wready("S13_AXI_wready"), S13_AXI_bid("S13_AXI_bid"), S13_AXI_bresp("S13_AXI_bresp"), S13_AXI_bvalid("S13_AXI_bvalid"), S13_AXI_bready("S13_AXI_bready"), S13_AXI_arid("S13_AXI_arid"), S13_AXI_araddr("S13_AXI_araddr"), S13_AXI_arlen("S13_AXI_arlen"), S13_AXI_arsize("S13_AXI_arsize"), S13_AXI_arburst("S13_AXI_arburst"), S13_AXI_arlock("S13_AXI_arlock"), S13_AXI_arcache("S13_AXI_arcache"), S13_AXI_arprot("S13_AXI_arprot"), S13_AXI_arqos("S13_AXI_arqos"), S13_AXI_arvalid("S13_AXI_arvalid"), S13_AXI_arready("S13_AXI_arready"), S13_AXI_rid("S13_AXI_rid"), S13_AXI_rdata("S13_AXI_rdata"), S13_AXI_rresp("S13_AXI_rresp"), S13_AXI_rlast("S13_AXI_rlast"), S13_AXI_rvalid("S13_AXI_rvalid"), S13_AXI_rready("S13_AXI_rready"), S14_AXI_awid("S14_AXI_awid"), S14_AXI_awaddr("S14_AXI_awaddr"), S14_AXI_awlen("S14_AXI_awlen"), S14_AXI_awsize("S14_AXI_awsize"), S14_AXI_awburst("S14_AXI_awburst"), S14_AXI_awlock("S14_AXI_awlock"), S14_AXI_awcache("S14_AXI_awcache"), S14_AXI_awprot("S14_AXI_awprot"), S14_AXI_awqos("S14_AXI_awqos"), S14_AXI_awvalid("S14_AXI_awvalid"), S14_AXI_awready("S14_AXI_awready"), S14_AXI_wdata("S14_AXI_wdata"), S14_AXI_wstrb("S14_AXI_wstrb"), S14_AXI_wlast("S14_AXI_wlast"), S14_AXI_wvalid("S14_AXI_wvalid"), S14_AXI_wready("S14_AXI_wready"), S14_AXI_bid("S14_AXI_bid"), S14_AXI_bresp("S14_AXI_bresp"), S14_AXI_bvalid("S14_AXI_bvalid"), S14_AXI_bready("S14_AXI_bready"), S14_AXI_arid("S14_AXI_arid"), S14_AXI_araddr("S14_AXI_araddr"), S14_AXI_arlen("S14_AXI_arlen"), S14_AXI_arsize("S14_AXI_arsize"), S14_AXI_arburst("S14_AXI_arburst"), S14_AXI_arlock("S14_AXI_arlock"), S14_AXI_arcache("S14_AXI_arcache"), S14_AXI_arprot("S14_AXI_arprot"), S14_AXI_arqos("S14_AXI_arqos"), S14_AXI_arvalid("S14_AXI_arvalid"), S14_AXI_arready("S14_AXI_arready"), S14_AXI_rid("S14_AXI_rid"), S14_AXI_rdata("S14_AXI_rdata"), S14_AXI_rresp("S14_AXI_rresp"), S14_AXI_rlast("S14_AXI_rlast"), S14_AXI_rvalid("S14_AXI_rvalid"), S14_AXI_rready("S14_AXI_rready"), S15_AXI_awid("S15_AXI_awid"), S15_AXI_awaddr("S15_AXI_awaddr"), S15_AXI_awlen("S15_AXI_awlen"), S15_AXI_awsize("S15_AXI_awsize"), S15_AXI_awburst("S15_AXI_awburst"), S15_AXI_awlock("S15_AXI_awlock"), S15_AXI_awcache("S15_AXI_awcache"), S15_AXI_awprot("S15_AXI_awprot"), S15_AXI_awqos("S15_AXI_awqos"), S15_AXI_awvalid("S15_AXI_awvalid"), S15_AXI_awready("S15_AXI_awready"), S15_AXI_wdata("S15_AXI_wdata"), S15_AXI_wstrb("S15_AXI_wstrb"), S15_AXI_wlast("S15_AXI_wlast"), S15_AXI_wvalid("S15_AXI_wvalid"), S15_AXI_wready("S15_AXI_wready"), S15_AXI_bid("S15_AXI_bid"), S15_AXI_bresp("S15_AXI_bresp"), S15_AXI_bvalid("S15_AXI_bvalid"), S15_AXI_bready("S15_AXI_bready"), S15_AXI_arid("S15_AXI_arid"), S15_AXI_araddr("S15_AXI_araddr"), S15_AXI_arlen("S15_AXI_arlen"), S15_AXI_arsize("S15_AXI_arsize"), S15_AXI_arburst("S15_AXI_arburst"), S15_AXI_arlock("S15_AXI_arlock"), S15_AXI_arcache("S15_AXI_arcache"), S15_AXI_arprot("S15_AXI_arprot"), S15_AXI_arqos("S15_AXI_arqos"), S15_AXI_arvalid("S15_AXI_arvalid"), S15_AXI_arready("S15_AXI_arready"), S15_AXI_rid("S15_AXI_rid"), S15_AXI_rdata("S15_AXI_rdata"), S15_AXI_rresp("S15_AXI_rresp"), S15_AXI_rlast("S15_AXI_rlast"), S15_AXI_rvalid("S15_AXI_rvalid"), S15_AXI_rready("S15_AXI_rready"), M00_AXI_awaddr("M00_AXI_awaddr"), M00_AXI_awlen("M00_AXI_awlen"), M00_AXI_awsize("M00_AXI_awsize"), M00_AXI_awburst("M00_AXI_awburst"), M00_AXI_awlock("M00_AXI_awlock"), M00_AXI_awcache("M00_AXI_awcache"), M00_AXI_awprot("M00_AXI_awprot"), M00_AXI_awqos("M00_AXI_awqos"), M00_AXI_awvalid("M00_AXI_awvalid"), M00_AXI_awready("M00_AXI_awready"), M00_AXI_wdata("M00_AXI_wdata"), M00_AXI_wstrb("M00_AXI_wstrb"), M00_AXI_wlast("M00_AXI_wlast"), M00_AXI_wvalid("M00_AXI_wvalid"), M00_AXI_wready("M00_AXI_wready"), M00_AXI_bresp("M00_AXI_bresp"), M00_AXI_bvalid("M00_AXI_bvalid"), M00_AXI_bready("M00_AXI_bready"), M00_AXI_araddr("M00_AXI_araddr"), M00_AXI_arlen("M00_AXI_arlen"), M00_AXI_arsize("M00_AXI_arsize"), M00_AXI_arburst("M00_AXI_arburst"), M00_AXI_arlock("M00_AXI_arlock"), M00_AXI_arcache("M00_AXI_arcache"), M00_AXI_arprot("M00_AXI_arprot"), M00_AXI_arqos("M00_AXI_arqos"), M00_AXI_arvalid("M00_AXI_arvalid"), M00_AXI_arready("M00_AXI_arready"), M00_AXI_rdata("M00_AXI_rdata"), M00_AXI_rresp("M00_AXI_rresp"), M00_AXI_rlast("M00_AXI_rlast"), M00_AXI_rvalid("M00_AXI_rvalid"), M00_AXI_rready("M00_AXI_rready")
{
  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_S00_AXI_awlock_converter = NULL;
  mp_S00_AXI_arlock_converter = NULL;
  mp_S01_AXI_transactor = NULL;
  mp_S01_AXI_awlock_converter = NULL;
  mp_S01_AXI_arlock_converter = NULL;
  mp_S02_AXI_transactor = NULL;
  mp_S02_AXI_awlock_converter = NULL;
  mp_S02_AXI_arlock_converter = NULL;
  mp_S03_AXI_transactor = NULL;
  mp_S03_AXI_awlock_converter = NULL;
  mp_S03_AXI_arlock_converter = NULL;
  mp_S04_AXI_transactor = NULL;
  mp_S04_AXI_awlock_converter = NULL;
  mp_S04_AXI_arlock_converter = NULL;
  mp_S05_AXI_transactor = NULL;
  mp_S05_AXI_awlock_converter = NULL;
  mp_S05_AXI_arlock_converter = NULL;
  mp_S06_AXI_transactor = NULL;
  mp_S06_AXI_awlock_converter = NULL;
  mp_S06_AXI_arlock_converter = NULL;
  mp_S07_AXI_transactor = NULL;
  mp_S07_AXI_awlock_converter = NULL;
  mp_S07_AXI_arlock_converter = NULL;
  mp_S08_AXI_transactor = NULL;
  mp_S08_AXI_awlock_converter = NULL;
  mp_S08_AXI_arlock_converter = NULL;
  mp_S09_AXI_transactor = NULL;
  mp_S09_AXI_awlock_converter = NULL;
  mp_S09_AXI_arlock_converter = NULL;
  mp_S10_AXI_transactor = NULL;
  mp_S10_AXI_awlock_converter = NULL;
  mp_S10_AXI_arlock_converter = NULL;
  mp_S11_AXI_transactor = NULL;
  mp_S11_AXI_awlock_converter = NULL;
  mp_S11_AXI_arlock_converter = NULL;
  mp_S12_AXI_transactor = NULL;
  mp_S12_AXI_awlock_converter = NULL;
  mp_S12_AXI_arlock_converter = NULL;
  mp_S13_AXI_transactor = NULL;
  mp_S13_AXI_awlock_converter = NULL;
  mp_S13_AXI_arlock_converter = NULL;
  mp_S14_AXI_transactor = NULL;
  mp_S14_AXI_awlock_converter = NULL;
  mp_S14_AXI_arlock_converter = NULL;
  mp_S15_AXI_transactor = NULL;
  mp_S15_AXI_awlock_converter = NULL;
  mp_S15_AXI_arlock_converter = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_M00_AXI_awlock_converter = NULL;
  mp_M00_AXI_arlock_converter = NULL;

  // Instantiate Socket Stubs

  // configure S00_AXI_transactor
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);
  mp_S00_AXI_transactor->AWID(S00_AXI_awid);
  mp_S00_AXI_transactor->AWADDR(S00_AXI_awaddr);
  mp_S00_AXI_transactor->AWLEN(S00_AXI_awlen);
  mp_S00_AXI_transactor->AWSIZE(S00_AXI_awsize);
  mp_S00_AXI_transactor->AWBURST(S00_AXI_awburst);
  mp_S00_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_awlock_converter");
  mp_S00_AXI_awlock_converter->vector_in(S00_AXI_awlock);
  mp_S00_AXI_awlock_converter->scalar_out(m_S00_AXI_awlock_converter_signal);
  mp_S00_AXI_transactor->AWLOCK(m_S00_AXI_awlock_converter_signal);
  mp_S00_AXI_transactor->AWCACHE(S00_AXI_awcache);
  mp_S00_AXI_transactor->AWPROT(S00_AXI_awprot);
  mp_S00_AXI_transactor->AWQOS(S00_AXI_awqos);
  mp_S00_AXI_transactor->AWVALID(S00_AXI_awvalid);
  mp_S00_AXI_transactor->AWREADY(S00_AXI_awready);
  mp_S00_AXI_transactor->WDATA(S00_AXI_wdata);
  mp_S00_AXI_transactor->WSTRB(S00_AXI_wstrb);
  mp_S00_AXI_transactor->WLAST(S00_AXI_wlast);
  mp_S00_AXI_transactor->WVALID(S00_AXI_wvalid);
  mp_S00_AXI_transactor->WREADY(S00_AXI_wready);
  mp_S00_AXI_transactor->BID(S00_AXI_bid);
  mp_S00_AXI_transactor->BRESP(S00_AXI_bresp);
  mp_S00_AXI_transactor->BVALID(S00_AXI_bvalid);
  mp_S00_AXI_transactor->BREADY(S00_AXI_bready);
  mp_S00_AXI_transactor->ARID(S00_AXI_arid);
  mp_S00_AXI_transactor->ARADDR(S00_AXI_araddr);
  mp_S00_AXI_transactor->ARLEN(S00_AXI_arlen);
  mp_S00_AXI_transactor->ARSIZE(S00_AXI_arsize);
  mp_S00_AXI_transactor->ARBURST(S00_AXI_arburst);
  mp_S00_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_arlock_converter");
  mp_S00_AXI_arlock_converter->vector_in(S00_AXI_arlock);
  mp_S00_AXI_arlock_converter->scalar_out(m_S00_AXI_arlock_converter_signal);
  mp_S00_AXI_transactor->ARLOCK(m_S00_AXI_arlock_converter_signal);
  mp_S00_AXI_transactor->ARCACHE(S00_AXI_arcache);
  mp_S00_AXI_transactor->ARPROT(S00_AXI_arprot);
  mp_S00_AXI_transactor->ARQOS(S00_AXI_arqos);
  mp_S00_AXI_transactor->ARVALID(S00_AXI_arvalid);
  mp_S00_AXI_transactor->ARREADY(S00_AXI_arready);
  mp_S00_AXI_transactor->RID(S00_AXI_rid);
  mp_S00_AXI_transactor->RDATA(S00_AXI_rdata);
  mp_S00_AXI_transactor->RRESP(S00_AXI_rresp);
  mp_S00_AXI_transactor->RLAST(S00_AXI_rlast);
  mp_S00_AXI_transactor->RVALID(S00_AXI_rvalid);
  mp_S00_AXI_transactor->RREADY(S00_AXI_rready);
  mp_S00_AXI_transactor->CLK(aclk);
  mp_S00_AXI_transactor->RST(aresetn);
  // configure S01_AXI_transactor
    xsc::common_cpp::properties S01_AXI_transactor_param_props;
    S01_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S01_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S01_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S01_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S01_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S01_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S01_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S01_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S01_AXI_transactor", S01_AXI_transactor_param_props);
  mp_S01_AXI_transactor->AWID(S01_AXI_awid);
  mp_S01_AXI_transactor->AWADDR(S01_AXI_awaddr);
  mp_S01_AXI_transactor->AWLEN(S01_AXI_awlen);
  mp_S01_AXI_transactor->AWSIZE(S01_AXI_awsize);
  mp_S01_AXI_transactor->AWBURST(S01_AXI_awburst);
  mp_S01_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_awlock_converter");
  mp_S01_AXI_awlock_converter->vector_in(S01_AXI_awlock);
  mp_S01_AXI_awlock_converter->scalar_out(m_S01_AXI_awlock_converter_signal);
  mp_S01_AXI_transactor->AWLOCK(m_S01_AXI_awlock_converter_signal);
  mp_S01_AXI_transactor->AWCACHE(S01_AXI_awcache);
  mp_S01_AXI_transactor->AWPROT(S01_AXI_awprot);
  mp_S01_AXI_transactor->AWQOS(S01_AXI_awqos);
  mp_S01_AXI_transactor->AWVALID(S01_AXI_awvalid);
  mp_S01_AXI_transactor->AWREADY(S01_AXI_awready);
  mp_S01_AXI_transactor->WDATA(S01_AXI_wdata);
  mp_S01_AXI_transactor->WSTRB(S01_AXI_wstrb);
  mp_S01_AXI_transactor->WLAST(S01_AXI_wlast);
  mp_S01_AXI_transactor->WVALID(S01_AXI_wvalid);
  mp_S01_AXI_transactor->WREADY(S01_AXI_wready);
  mp_S01_AXI_transactor->BID(S01_AXI_bid);
  mp_S01_AXI_transactor->BRESP(S01_AXI_bresp);
  mp_S01_AXI_transactor->BVALID(S01_AXI_bvalid);
  mp_S01_AXI_transactor->BREADY(S01_AXI_bready);
  mp_S01_AXI_transactor->ARID(S01_AXI_arid);
  mp_S01_AXI_transactor->ARADDR(S01_AXI_araddr);
  mp_S01_AXI_transactor->ARLEN(S01_AXI_arlen);
  mp_S01_AXI_transactor->ARSIZE(S01_AXI_arsize);
  mp_S01_AXI_transactor->ARBURST(S01_AXI_arburst);
  mp_S01_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_arlock_converter");
  mp_S01_AXI_arlock_converter->vector_in(S01_AXI_arlock);
  mp_S01_AXI_arlock_converter->scalar_out(m_S01_AXI_arlock_converter_signal);
  mp_S01_AXI_transactor->ARLOCK(m_S01_AXI_arlock_converter_signal);
  mp_S01_AXI_transactor->ARCACHE(S01_AXI_arcache);
  mp_S01_AXI_transactor->ARPROT(S01_AXI_arprot);
  mp_S01_AXI_transactor->ARQOS(S01_AXI_arqos);
  mp_S01_AXI_transactor->ARVALID(S01_AXI_arvalid);
  mp_S01_AXI_transactor->ARREADY(S01_AXI_arready);
  mp_S01_AXI_transactor->RID(S01_AXI_rid);
  mp_S01_AXI_transactor->RDATA(S01_AXI_rdata);
  mp_S01_AXI_transactor->RRESP(S01_AXI_rresp);
  mp_S01_AXI_transactor->RLAST(S01_AXI_rlast);
  mp_S01_AXI_transactor->RVALID(S01_AXI_rvalid);
  mp_S01_AXI_transactor->RREADY(S01_AXI_rready);
  mp_S01_AXI_transactor->CLK(aclk);
  mp_S01_AXI_transactor->RST(aresetn);
  // configure S02_AXI_transactor
    xsc::common_cpp::properties S02_AXI_transactor_param_props;
    S02_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S02_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S02_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S02_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S02_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S02_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S02_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S02_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S02_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S02_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S02_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S02_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S02_AXI_transactor", S02_AXI_transactor_param_props);
  mp_S02_AXI_transactor->AWID(S02_AXI_awid);
  mp_S02_AXI_transactor->AWADDR(S02_AXI_awaddr);
  mp_S02_AXI_transactor->AWLEN(S02_AXI_awlen);
  mp_S02_AXI_transactor->AWSIZE(S02_AXI_awsize);
  mp_S02_AXI_transactor->AWBURST(S02_AXI_awburst);
  mp_S02_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_awlock_converter");
  mp_S02_AXI_awlock_converter->vector_in(S02_AXI_awlock);
  mp_S02_AXI_awlock_converter->scalar_out(m_S02_AXI_awlock_converter_signal);
  mp_S02_AXI_transactor->AWLOCK(m_S02_AXI_awlock_converter_signal);
  mp_S02_AXI_transactor->AWCACHE(S02_AXI_awcache);
  mp_S02_AXI_transactor->AWPROT(S02_AXI_awprot);
  mp_S02_AXI_transactor->AWQOS(S02_AXI_awqos);
  mp_S02_AXI_transactor->AWVALID(S02_AXI_awvalid);
  mp_S02_AXI_transactor->AWREADY(S02_AXI_awready);
  mp_S02_AXI_transactor->WDATA(S02_AXI_wdata);
  mp_S02_AXI_transactor->WSTRB(S02_AXI_wstrb);
  mp_S02_AXI_transactor->WLAST(S02_AXI_wlast);
  mp_S02_AXI_transactor->WVALID(S02_AXI_wvalid);
  mp_S02_AXI_transactor->WREADY(S02_AXI_wready);
  mp_S02_AXI_transactor->BID(S02_AXI_bid);
  mp_S02_AXI_transactor->BRESP(S02_AXI_bresp);
  mp_S02_AXI_transactor->BVALID(S02_AXI_bvalid);
  mp_S02_AXI_transactor->BREADY(S02_AXI_bready);
  mp_S02_AXI_transactor->ARID(S02_AXI_arid);
  mp_S02_AXI_transactor->ARADDR(S02_AXI_araddr);
  mp_S02_AXI_transactor->ARLEN(S02_AXI_arlen);
  mp_S02_AXI_transactor->ARSIZE(S02_AXI_arsize);
  mp_S02_AXI_transactor->ARBURST(S02_AXI_arburst);
  mp_S02_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_arlock_converter");
  mp_S02_AXI_arlock_converter->vector_in(S02_AXI_arlock);
  mp_S02_AXI_arlock_converter->scalar_out(m_S02_AXI_arlock_converter_signal);
  mp_S02_AXI_transactor->ARLOCK(m_S02_AXI_arlock_converter_signal);
  mp_S02_AXI_transactor->ARCACHE(S02_AXI_arcache);
  mp_S02_AXI_transactor->ARPROT(S02_AXI_arprot);
  mp_S02_AXI_transactor->ARQOS(S02_AXI_arqos);
  mp_S02_AXI_transactor->ARVALID(S02_AXI_arvalid);
  mp_S02_AXI_transactor->ARREADY(S02_AXI_arready);
  mp_S02_AXI_transactor->RID(S02_AXI_rid);
  mp_S02_AXI_transactor->RDATA(S02_AXI_rdata);
  mp_S02_AXI_transactor->RRESP(S02_AXI_rresp);
  mp_S02_AXI_transactor->RLAST(S02_AXI_rlast);
  mp_S02_AXI_transactor->RVALID(S02_AXI_rvalid);
  mp_S02_AXI_transactor->RREADY(S02_AXI_rready);
  mp_S02_AXI_transactor->CLK(aclk);
  mp_S02_AXI_transactor->RST(aresetn);
  // configure S03_AXI_transactor
    xsc::common_cpp::properties S03_AXI_transactor_param_props;
    S03_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S03_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S03_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S03_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S03_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S03_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S03_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S03_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S03_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S03_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S03_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S03_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S03_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S03_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S03_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S03_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S03_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S03_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S03_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S03_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S03_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S03_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S03_AXI_transactor", S03_AXI_transactor_param_props);
  mp_S03_AXI_transactor->AWID(S03_AXI_awid);
  mp_S03_AXI_transactor->AWADDR(S03_AXI_awaddr);
  mp_S03_AXI_transactor->AWLEN(S03_AXI_awlen);
  mp_S03_AXI_transactor->AWSIZE(S03_AXI_awsize);
  mp_S03_AXI_transactor->AWBURST(S03_AXI_awburst);
  mp_S03_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_awlock_converter");
  mp_S03_AXI_awlock_converter->vector_in(S03_AXI_awlock);
  mp_S03_AXI_awlock_converter->scalar_out(m_S03_AXI_awlock_converter_signal);
  mp_S03_AXI_transactor->AWLOCK(m_S03_AXI_awlock_converter_signal);
  mp_S03_AXI_transactor->AWCACHE(S03_AXI_awcache);
  mp_S03_AXI_transactor->AWPROT(S03_AXI_awprot);
  mp_S03_AXI_transactor->AWQOS(S03_AXI_awqos);
  mp_S03_AXI_transactor->AWVALID(S03_AXI_awvalid);
  mp_S03_AXI_transactor->AWREADY(S03_AXI_awready);
  mp_S03_AXI_transactor->WDATA(S03_AXI_wdata);
  mp_S03_AXI_transactor->WSTRB(S03_AXI_wstrb);
  mp_S03_AXI_transactor->WLAST(S03_AXI_wlast);
  mp_S03_AXI_transactor->WVALID(S03_AXI_wvalid);
  mp_S03_AXI_transactor->WREADY(S03_AXI_wready);
  mp_S03_AXI_transactor->BID(S03_AXI_bid);
  mp_S03_AXI_transactor->BRESP(S03_AXI_bresp);
  mp_S03_AXI_transactor->BVALID(S03_AXI_bvalid);
  mp_S03_AXI_transactor->BREADY(S03_AXI_bready);
  mp_S03_AXI_transactor->ARID(S03_AXI_arid);
  mp_S03_AXI_transactor->ARADDR(S03_AXI_araddr);
  mp_S03_AXI_transactor->ARLEN(S03_AXI_arlen);
  mp_S03_AXI_transactor->ARSIZE(S03_AXI_arsize);
  mp_S03_AXI_transactor->ARBURST(S03_AXI_arburst);
  mp_S03_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_arlock_converter");
  mp_S03_AXI_arlock_converter->vector_in(S03_AXI_arlock);
  mp_S03_AXI_arlock_converter->scalar_out(m_S03_AXI_arlock_converter_signal);
  mp_S03_AXI_transactor->ARLOCK(m_S03_AXI_arlock_converter_signal);
  mp_S03_AXI_transactor->ARCACHE(S03_AXI_arcache);
  mp_S03_AXI_transactor->ARPROT(S03_AXI_arprot);
  mp_S03_AXI_transactor->ARQOS(S03_AXI_arqos);
  mp_S03_AXI_transactor->ARVALID(S03_AXI_arvalid);
  mp_S03_AXI_transactor->ARREADY(S03_AXI_arready);
  mp_S03_AXI_transactor->RID(S03_AXI_rid);
  mp_S03_AXI_transactor->RDATA(S03_AXI_rdata);
  mp_S03_AXI_transactor->RRESP(S03_AXI_rresp);
  mp_S03_AXI_transactor->RLAST(S03_AXI_rlast);
  mp_S03_AXI_transactor->RVALID(S03_AXI_rvalid);
  mp_S03_AXI_transactor->RREADY(S03_AXI_rready);
  mp_S03_AXI_transactor->CLK(aclk);
  mp_S03_AXI_transactor->RST(aresetn);
  // configure S04_AXI_transactor
    xsc::common_cpp::properties S04_AXI_transactor_param_props;
    S04_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S04_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S04_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S04_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S04_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S04_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S04_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S04_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S04_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S04_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S04_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S04_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S04_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S04_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S04_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S04_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S04_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S04_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S04_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S04_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S04_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S04_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S04_AXI_transactor", S04_AXI_transactor_param_props);
  mp_S04_AXI_transactor->AWID(S04_AXI_awid);
  mp_S04_AXI_transactor->AWADDR(S04_AXI_awaddr);
  mp_S04_AXI_transactor->AWLEN(S04_AXI_awlen);
  mp_S04_AXI_transactor->AWSIZE(S04_AXI_awsize);
  mp_S04_AXI_transactor->AWBURST(S04_AXI_awburst);
  mp_S04_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_awlock_converter");
  mp_S04_AXI_awlock_converter->vector_in(S04_AXI_awlock);
  mp_S04_AXI_awlock_converter->scalar_out(m_S04_AXI_awlock_converter_signal);
  mp_S04_AXI_transactor->AWLOCK(m_S04_AXI_awlock_converter_signal);
  mp_S04_AXI_transactor->AWCACHE(S04_AXI_awcache);
  mp_S04_AXI_transactor->AWPROT(S04_AXI_awprot);
  mp_S04_AXI_transactor->AWQOS(S04_AXI_awqos);
  mp_S04_AXI_transactor->AWVALID(S04_AXI_awvalid);
  mp_S04_AXI_transactor->AWREADY(S04_AXI_awready);
  mp_S04_AXI_transactor->WDATA(S04_AXI_wdata);
  mp_S04_AXI_transactor->WSTRB(S04_AXI_wstrb);
  mp_S04_AXI_transactor->WLAST(S04_AXI_wlast);
  mp_S04_AXI_transactor->WVALID(S04_AXI_wvalid);
  mp_S04_AXI_transactor->WREADY(S04_AXI_wready);
  mp_S04_AXI_transactor->BID(S04_AXI_bid);
  mp_S04_AXI_transactor->BRESP(S04_AXI_bresp);
  mp_S04_AXI_transactor->BVALID(S04_AXI_bvalid);
  mp_S04_AXI_transactor->BREADY(S04_AXI_bready);
  mp_S04_AXI_transactor->ARID(S04_AXI_arid);
  mp_S04_AXI_transactor->ARADDR(S04_AXI_araddr);
  mp_S04_AXI_transactor->ARLEN(S04_AXI_arlen);
  mp_S04_AXI_transactor->ARSIZE(S04_AXI_arsize);
  mp_S04_AXI_transactor->ARBURST(S04_AXI_arburst);
  mp_S04_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_arlock_converter");
  mp_S04_AXI_arlock_converter->vector_in(S04_AXI_arlock);
  mp_S04_AXI_arlock_converter->scalar_out(m_S04_AXI_arlock_converter_signal);
  mp_S04_AXI_transactor->ARLOCK(m_S04_AXI_arlock_converter_signal);
  mp_S04_AXI_transactor->ARCACHE(S04_AXI_arcache);
  mp_S04_AXI_transactor->ARPROT(S04_AXI_arprot);
  mp_S04_AXI_transactor->ARQOS(S04_AXI_arqos);
  mp_S04_AXI_transactor->ARVALID(S04_AXI_arvalid);
  mp_S04_AXI_transactor->ARREADY(S04_AXI_arready);
  mp_S04_AXI_transactor->RID(S04_AXI_rid);
  mp_S04_AXI_transactor->RDATA(S04_AXI_rdata);
  mp_S04_AXI_transactor->RRESP(S04_AXI_rresp);
  mp_S04_AXI_transactor->RLAST(S04_AXI_rlast);
  mp_S04_AXI_transactor->RVALID(S04_AXI_rvalid);
  mp_S04_AXI_transactor->RREADY(S04_AXI_rready);
  mp_S04_AXI_transactor->CLK(aclk);
  mp_S04_AXI_transactor->RST(aresetn);
  // configure S05_AXI_transactor
    xsc::common_cpp::properties S05_AXI_transactor_param_props;
    S05_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S05_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S05_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S05_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S05_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S05_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S05_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S05_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S05_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S05_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S05_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S05_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S05_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S05_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S05_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S05_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S05_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S05_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S05_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S05_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S05_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S05_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S05_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S05_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S05_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S05_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S05_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S05_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S05_AXI_transactor", S05_AXI_transactor_param_props);
  mp_S05_AXI_transactor->AWID(S05_AXI_awid);
  mp_S05_AXI_transactor->AWADDR(S05_AXI_awaddr);
  mp_S05_AXI_transactor->AWLEN(S05_AXI_awlen);
  mp_S05_AXI_transactor->AWSIZE(S05_AXI_awsize);
  mp_S05_AXI_transactor->AWBURST(S05_AXI_awburst);
  mp_S05_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S05_AXI_awlock_converter");
  mp_S05_AXI_awlock_converter->vector_in(S05_AXI_awlock);
  mp_S05_AXI_awlock_converter->scalar_out(m_S05_AXI_awlock_converter_signal);
  mp_S05_AXI_transactor->AWLOCK(m_S05_AXI_awlock_converter_signal);
  mp_S05_AXI_transactor->AWCACHE(S05_AXI_awcache);
  mp_S05_AXI_transactor->AWPROT(S05_AXI_awprot);
  mp_S05_AXI_transactor->AWQOS(S05_AXI_awqos);
  mp_S05_AXI_transactor->AWVALID(S05_AXI_awvalid);
  mp_S05_AXI_transactor->AWREADY(S05_AXI_awready);
  mp_S05_AXI_transactor->WDATA(S05_AXI_wdata);
  mp_S05_AXI_transactor->WSTRB(S05_AXI_wstrb);
  mp_S05_AXI_transactor->WLAST(S05_AXI_wlast);
  mp_S05_AXI_transactor->WVALID(S05_AXI_wvalid);
  mp_S05_AXI_transactor->WREADY(S05_AXI_wready);
  mp_S05_AXI_transactor->BID(S05_AXI_bid);
  mp_S05_AXI_transactor->BRESP(S05_AXI_bresp);
  mp_S05_AXI_transactor->BVALID(S05_AXI_bvalid);
  mp_S05_AXI_transactor->BREADY(S05_AXI_bready);
  mp_S05_AXI_transactor->ARID(S05_AXI_arid);
  mp_S05_AXI_transactor->ARADDR(S05_AXI_araddr);
  mp_S05_AXI_transactor->ARLEN(S05_AXI_arlen);
  mp_S05_AXI_transactor->ARSIZE(S05_AXI_arsize);
  mp_S05_AXI_transactor->ARBURST(S05_AXI_arburst);
  mp_S05_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S05_AXI_arlock_converter");
  mp_S05_AXI_arlock_converter->vector_in(S05_AXI_arlock);
  mp_S05_AXI_arlock_converter->scalar_out(m_S05_AXI_arlock_converter_signal);
  mp_S05_AXI_transactor->ARLOCK(m_S05_AXI_arlock_converter_signal);
  mp_S05_AXI_transactor->ARCACHE(S05_AXI_arcache);
  mp_S05_AXI_transactor->ARPROT(S05_AXI_arprot);
  mp_S05_AXI_transactor->ARQOS(S05_AXI_arqos);
  mp_S05_AXI_transactor->ARVALID(S05_AXI_arvalid);
  mp_S05_AXI_transactor->ARREADY(S05_AXI_arready);
  mp_S05_AXI_transactor->RID(S05_AXI_rid);
  mp_S05_AXI_transactor->RDATA(S05_AXI_rdata);
  mp_S05_AXI_transactor->RRESP(S05_AXI_rresp);
  mp_S05_AXI_transactor->RLAST(S05_AXI_rlast);
  mp_S05_AXI_transactor->RVALID(S05_AXI_rvalid);
  mp_S05_AXI_transactor->RREADY(S05_AXI_rready);
  mp_S05_AXI_transactor->CLK(aclk);
  mp_S05_AXI_transactor->RST(aresetn);
  // configure S06_AXI_transactor
    xsc::common_cpp::properties S06_AXI_transactor_param_props;
    S06_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S06_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S06_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S06_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S06_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S06_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S06_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S06_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S06_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S06_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S06_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S06_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S06_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S06_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S06_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S06_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S06_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S06_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S06_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S06_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S06_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S06_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S06_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S06_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S06_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S06_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S06_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S06_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S06_AXI_transactor", S06_AXI_transactor_param_props);
  mp_S06_AXI_transactor->AWID(S06_AXI_awid);
  mp_S06_AXI_transactor->AWADDR(S06_AXI_awaddr);
  mp_S06_AXI_transactor->AWLEN(S06_AXI_awlen);
  mp_S06_AXI_transactor->AWSIZE(S06_AXI_awsize);
  mp_S06_AXI_transactor->AWBURST(S06_AXI_awburst);
  mp_S06_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S06_AXI_awlock_converter");
  mp_S06_AXI_awlock_converter->vector_in(S06_AXI_awlock);
  mp_S06_AXI_awlock_converter->scalar_out(m_S06_AXI_awlock_converter_signal);
  mp_S06_AXI_transactor->AWLOCK(m_S06_AXI_awlock_converter_signal);
  mp_S06_AXI_transactor->AWCACHE(S06_AXI_awcache);
  mp_S06_AXI_transactor->AWPROT(S06_AXI_awprot);
  mp_S06_AXI_transactor->AWQOS(S06_AXI_awqos);
  mp_S06_AXI_transactor->AWVALID(S06_AXI_awvalid);
  mp_S06_AXI_transactor->AWREADY(S06_AXI_awready);
  mp_S06_AXI_transactor->WDATA(S06_AXI_wdata);
  mp_S06_AXI_transactor->WSTRB(S06_AXI_wstrb);
  mp_S06_AXI_transactor->WLAST(S06_AXI_wlast);
  mp_S06_AXI_transactor->WVALID(S06_AXI_wvalid);
  mp_S06_AXI_transactor->WREADY(S06_AXI_wready);
  mp_S06_AXI_transactor->BID(S06_AXI_bid);
  mp_S06_AXI_transactor->BRESP(S06_AXI_bresp);
  mp_S06_AXI_transactor->BVALID(S06_AXI_bvalid);
  mp_S06_AXI_transactor->BREADY(S06_AXI_bready);
  mp_S06_AXI_transactor->ARID(S06_AXI_arid);
  mp_S06_AXI_transactor->ARADDR(S06_AXI_araddr);
  mp_S06_AXI_transactor->ARLEN(S06_AXI_arlen);
  mp_S06_AXI_transactor->ARSIZE(S06_AXI_arsize);
  mp_S06_AXI_transactor->ARBURST(S06_AXI_arburst);
  mp_S06_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S06_AXI_arlock_converter");
  mp_S06_AXI_arlock_converter->vector_in(S06_AXI_arlock);
  mp_S06_AXI_arlock_converter->scalar_out(m_S06_AXI_arlock_converter_signal);
  mp_S06_AXI_transactor->ARLOCK(m_S06_AXI_arlock_converter_signal);
  mp_S06_AXI_transactor->ARCACHE(S06_AXI_arcache);
  mp_S06_AXI_transactor->ARPROT(S06_AXI_arprot);
  mp_S06_AXI_transactor->ARQOS(S06_AXI_arqos);
  mp_S06_AXI_transactor->ARVALID(S06_AXI_arvalid);
  mp_S06_AXI_transactor->ARREADY(S06_AXI_arready);
  mp_S06_AXI_transactor->RID(S06_AXI_rid);
  mp_S06_AXI_transactor->RDATA(S06_AXI_rdata);
  mp_S06_AXI_transactor->RRESP(S06_AXI_rresp);
  mp_S06_AXI_transactor->RLAST(S06_AXI_rlast);
  mp_S06_AXI_transactor->RVALID(S06_AXI_rvalid);
  mp_S06_AXI_transactor->RREADY(S06_AXI_rready);
  mp_S06_AXI_transactor->CLK(aclk);
  mp_S06_AXI_transactor->RST(aresetn);
  // configure S07_AXI_transactor
    xsc::common_cpp::properties S07_AXI_transactor_param_props;
    S07_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S07_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S07_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S07_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S07_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S07_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S07_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S07_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S07_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S07_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S07_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S07_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S07_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S07_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S07_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S07_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S07_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S07_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S07_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S07_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S07_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S07_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S07_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S07_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S07_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S07_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S07_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S07_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S07_AXI_transactor", S07_AXI_transactor_param_props);
  mp_S07_AXI_transactor->AWID(S07_AXI_awid);
  mp_S07_AXI_transactor->AWADDR(S07_AXI_awaddr);
  mp_S07_AXI_transactor->AWLEN(S07_AXI_awlen);
  mp_S07_AXI_transactor->AWSIZE(S07_AXI_awsize);
  mp_S07_AXI_transactor->AWBURST(S07_AXI_awburst);
  mp_S07_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S07_AXI_awlock_converter");
  mp_S07_AXI_awlock_converter->vector_in(S07_AXI_awlock);
  mp_S07_AXI_awlock_converter->scalar_out(m_S07_AXI_awlock_converter_signal);
  mp_S07_AXI_transactor->AWLOCK(m_S07_AXI_awlock_converter_signal);
  mp_S07_AXI_transactor->AWCACHE(S07_AXI_awcache);
  mp_S07_AXI_transactor->AWPROT(S07_AXI_awprot);
  mp_S07_AXI_transactor->AWQOS(S07_AXI_awqos);
  mp_S07_AXI_transactor->AWVALID(S07_AXI_awvalid);
  mp_S07_AXI_transactor->AWREADY(S07_AXI_awready);
  mp_S07_AXI_transactor->WDATA(S07_AXI_wdata);
  mp_S07_AXI_transactor->WSTRB(S07_AXI_wstrb);
  mp_S07_AXI_transactor->WLAST(S07_AXI_wlast);
  mp_S07_AXI_transactor->WVALID(S07_AXI_wvalid);
  mp_S07_AXI_transactor->WREADY(S07_AXI_wready);
  mp_S07_AXI_transactor->BID(S07_AXI_bid);
  mp_S07_AXI_transactor->BRESP(S07_AXI_bresp);
  mp_S07_AXI_transactor->BVALID(S07_AXI_bvalid);
  mp_S07_AXI_transactor->BREADY(S07_AXI_bready);
  mp_S07_AXI_transactor->ARID(S07_AXI_arid);
  mp_S07_AXI_transactor->ARADDR(S07_AXI_araddr);
  mp_S07_AXI_transactor->ARLEN(S07_AXI_arlen);
  mp_S07_AXI_transactor->ARSIZE(S07_AXI_arsize);
  mp_S07_AXI_transactor->ARBURST(S07_AXI_arburst);
  mp_S07_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S07_AXI_arlock_converter");
  mp_S07_AXI_arlock_converter->vector_in(S07_AXI_arlock);
  mp_S07_AXI_arlock_converter->scalar_out(m_S07_AXI_arlock_converter_signal);
  mp_S07_AXI_transactor->ARLOCK(m_S07_AXI_arlock_converter_signal);
  mp_S07_AXI_transactor->ARCACHE(S07_AXI_arcache);
  mp_S07_AXI_transactor->ARPROT(S07_AXI_arprot);
  mp_S07_AXI_transactor->ARQOS(S07_AXI_arqos);
  mp_S07_AXI_transactor->ARVALID(S07_AXI_arvalid);
  mp_S07_AXI_transactor->ARREADY(S07_AXI_arready);
  mp_S07_AXI_transactor->RID(S07_AXI_rid);
  mp_S07_AXI_transactor->RDATA(S07_AXI_rdata);
  mp_S07_AXI_transactor->RRESP(S07_AXI_rresp);
  mp_S07_AXI_transactor->RLAST(S07_AXI_rlast);
  mp_S07_AXI_transactor->RVALID(S07_AXI_rvalid);
  mp_S07_AXI_transactor->RREADY(S07_AXI_rready);
  mp_S07_AXI_transactor->CLK(aclk);
  mp_S07_AXI_transactor->RST(aresetn);
  // configure S08_AXI_transactor
    xsc::common_cpp::properties S08_AXI_transactor_param_props;
    S08_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S08_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S08_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S08_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S08_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S08_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S08_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S08_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S08_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S08_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S08_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S08_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S08_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S08_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S08_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S08_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S08_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S08_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S08_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S08_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S08_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S08_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S08_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S08_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S08_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S08_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S08_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S08_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S08_AXI_transactor", S08_AXI_transactor_param_props);
  mp_S08_AXI_transactor->AWID(S08_AXI_awid);
  mp_S08_AXI_transactor->AWADDR(S08_AXI_awaddr);
  mp_S08_AXI_transactor->AWLEN(S08_AXI_awlen);
  mp_S08_AXI_transactor->AWSIZE(S08_AXI_awsize);
  mp_S08_AXI_transactor->AWBURST(S08_AXI_awburst);
  mp_S08_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S08_AXI_awlock_converter");
  mp_S08_AXI_awlock_converter->vector_in(S08_AXI_awlock);
  mp_S08_AXI_awlock_converter->scalar_out(m_S08_AXI_awlock_converter_signal);
  mp_S08_AXI_transactor->AWLOCK(m_S08_AXI_awlock_converter_signal);
  mp_S08_AXI_transactor->AWCACHE(S08_AXI_awcache);
  mp_S08_AXI_transactor->AWPROT(S08_AXI_awprot);
  mp_S08_AXI_transactor->AWQOS(S08_AXI_awqos);
  mp_S08_AXI_transactor->AWVALID(S08_AXI_awvalid);
  mp_S08_AXI_transactor->AWREADY(S08_AXI_awready);
  mp_S08_AXI_transactor->WDATA(S08_AXI_wdata);
  mp_S08_AXI_transactor->WSTRB(S08_AXI_wstrb);
  mp_S08_AXI_transactor->WLAST(S08_AXI_wlast);
  mp_S08_AXI_transactor->WVALID(S08_AXI_wvalid);
  mp_S08_AXI_transactor->WREADY(S08_AXI_wready);
  mp_S08_AXI_transactor->BID(S08_AXI_bid);
  mp_S08_AXI_transactor->BRESP(S08_AXI_bresp);
  mp_S08_AXI_transactor->BVALID(S08_AXI_bvalid);
  mp_S08_AXI_transactor->BREADY(S08_AXI_bready);
  mp_S08_AXI_transactor->ARID(S08_AXI_arid);
  mp_S08_AXI_transactor->ARADDR(S08_AXI_araddr);
  mp_S08_AXI_transactor->ARLEN(S08_AXI_arlen);
  mp_S08_AXI_transactor->ARSIZE(S08_AXI_arsize);
  mp_S08_AXI_transactor->ARBURST(S08_AXI_arburst);
  mp_S08_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S08_AXI_arlock_converter");
  mp_S08_AXI_arlock_converter->vector_in(S08_AXI_arlock);
  mp_S08_AXI_arlock_converter->scalar_out(m_S08_AXI_arlock_converter_signal);
  mp_S08_AXI_transactor->ARLOCK(m_S08_AXI_arlock_converter_signal);
  mp_S08_AXI_transactor->ARCACHE(S08_AXI_arcache);
  mp_S08_AXI_transactor->ARPROT(S08_AXI_arprot);
  mp_S08_AXI_transactor->ARQOS(S08_AXI_arqos);
  mp_S08_AXI_transactor->ARVALID(S08_AXI_arvalid);
  mp_S08_AXI_transactor->ARREADY(S08_AXI_arready);
  mp_S08_AXI_transactor->RID(S08_AXI_rid);
  mp_S08_AXI_transactor->RDATA(S08_AXI_rdata);
  mp_S08_AXI_transactor->RRESP(S08_AXI_rresp);
  mp_S08_AXI_transactor->RLAST(S08_AXI_rlast);
  mp_S08_AXI_transactor->RVALID(S08_AXI_rvalid);
  mp_S08_AXI_transactor->RREADY(S08_AXI_rready);
  mp_S08_AXI_transactor->CLK(aclk);
  mp_S08_AXI_transactor->RST(aresetn);
  // configure S09_AXI_transactor
    xsc::common_cpp::properties S09_AXI_transactor_param_props;
    S09_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S09_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S09_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S09_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S09_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S09_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S09_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S09_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S09_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S09_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S09_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S09_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S09_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S09_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S09_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S09_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S09_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S09_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S09_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S09_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S09_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S09_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S09_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S09_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S09_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S09_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S09_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S09_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S09_AXI_transactor", S09_AXI_transactor_param_props);
  mp_S09_AXI_transactor->AWID(S09_AXI_awid);
  mp_S09_AXI_transactor->AWADDR(S09_AXI_awaddr);
  mp_S09_AXI_transactor->AWLEN(S09_AXI_awlen);
  mp_S09_AXI_transactor->AWSIZE(S09_AXI_awsize);
  mp_S09_AXI_transactor->AWBURST(S09_AXI_awburst);
  mp_S09_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S09_AXI_awlock_converter");
  mp_S09_AXI_awlock_converter->vector_in(S09_AXI_awlock);
  mp_S09_AXI_awlock_converter->scalar_out(m_S09_AXI_awlock_converter_signal);
  mp_S09_AXI_transactor->AWLOCK(m_S09_AXI_awlock_converter_signal);
  mp_S09_AXI_transactor->AWCACHE(S09_AXI_awcache);
  mp_S09_AXI_transactor->AWPROT(S09_AXI_awprot);
  mp_S09_AXI_transactor->AWQOS(S09_AXI_awqos);
  mp_S09_AXI_transactor->AWVALID(S09_AXI_awvalid);
  mp_S09_AXI_transactor->AWREADY(S09_AXI_awready);
  mp_S09_AXI_transactor->WDATA(S09_AXI_wdata);
  mp_S09_AXI_transactor->WSTRB(S09_AXI_wstrb);
  mp_S09_AXI_transactor->WLAST(S09_AXI_wlast);
  mp_S09_AXI_transactor->WVALID(S09_AXI_wvalid);
  mp_S09_AXI_transactor->WREADY(S09_AXI_wready);
  mp_S09_AXI_transactor->BID(S09_AXI_bid);
  mp_S09_AXI_transactor->BRESP(S09_AXI_bresp);
  mp_S09_AXI_transactor->BVALID(S09_AXI_bvalid);
  mp_S09_AXI_transactor->BREADY(S09_AXI_bready);
  mp_S09_AXI_transactor->ARID(S09_AXI_arid);
  mp_S09_AXI_transactor->ARADDR(S09_AXI_araddr);
  mp_S09_AXI_transactor->ARLEN(S09_AXI_arlen);
  mp_S09_AXI_transactor->ARSIZE(S09_AXI_arsize);
  mp_S09_AXI_transactor->ARBURST(S09_AXI_arburst);
  mp_S09_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S09_AXI_arlock_converter");
  mp_S09_AXI_arlock_converter->vector_in(S09_AXI_arlock);
  mp_S09_AXI_arlock_converter->scalar_out(m_S09_AXI_arlock_converter_signal);
  mp_S09_AXI_transactor->ARLOCK(m_S09_AXI_arlock_converter_signal);
  mp_S09_AXI_transactor->ARCACHE(S09_AXI_arcache);
  mp_S09_AXI_transactor->ARPROT(S09_AXI_arprot);
  mp_S09_AXI_transactor->ARQOS(S09_AXI_arqos);
  mp_S09_AXI_transactor->ARVALID(S09_AXI_arvalid);
  mp_S09_AXI_transactor->ARREADY(S09_AXI_arready);
  mp_S09_AXI_transactor->RID(S09_AXI_rid);
  mp_S09_AXI_transactor->RDATA(S09_AXI_rdata);
  mp_S09_AXI_transactor->RRESP(S09_AXI_rresp);
  mp_S09_AXI_transactor->RLAST(S09_AXI_rlast);
  mp_S09_AXI_transactor->RVALID(S09_AXI_rvalid);
  mp_S09_AXI_transactor->RREADY(S09_AXI_rready);
  mp_S09_AXI_transactor->CLK(aclk);
  mp_S09_AXI_transactor->RST(aresetn);
  // configure S10_AXI_transactor
    xsc::common_cpp::properties S10_AXI_transactor_param_props;
    S10_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S10_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S10_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S10_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S10_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S10_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S10_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S10_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S10_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S10_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S10_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S10_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S10_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S10_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S10_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S10_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S10_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S10_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S10_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S10_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S10_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S10_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S10_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S10_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S10_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S10_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S10_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S10_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S10_AXI_transactor", S10_AXI_transactor_param_props);
  mp_S10_AXI_transactor->AWID(S10_AXI_awid);
  mp_S10_AXI_transactor->AWADDR(S10_AXI_awaddr);
  mp_S10_AXI_transactor->AWLEN(S10_AXI_awlen);
  mp_S10_AXI_transactor->AWSIZE(S10_AXI_awsize);
  mp_S10_AXI_transactor->AWBURST(S10_AXI_awburst);
  mp_S10_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S10_AXI_awlock_converter");
  mp_S10_AXI_awlock_converter->vector_in(S10_AXI_awlock);
  mp_S10_AXI_awlock_converter->scalar_out(m_S10_AXI_awlock_converter_signal);
  mp_S10_AXI_transactor->AWLOCK(m_S10_AXI_awlock_converter_signal);
  mp_S10_AXI_transactor->AWCACHE(S10_AXI_awcache);
  mp_S10_AXI_transactor->AWPROT(S10_AXI_awprot);
  mp_S10_AXI_transactor->AWQOS(S10_AXI_awqos);
  mp_S10_AXI_transactor->AWVALID(S10_AXI_awvalid);
  mp_S10_AXI_transactor->AWREADY(S10_AXI_awready);
  mp_S10_AXI_transactor->WDATA(S10_AXI_wdata);
  mp_S10_AXI_transactor->WSTRB(S10_AXI_wstrb);
  mp_S10_AXI_transactor->WLAST(S10_AXI_wlast);
  mp_S10_AXI_transactor->WVALID(S10_AXI_wvalid);
  mp_S10_AXI_transactor->WREADY(S10_AXI_wready);
  mp_S10_AXI_transactor->BID(S10_AXI_bid);
  mp_S10_AXI_transactor->BRESP(S10_AXI_bresp);
  mp_S10_AXI_transactor->BVALID(S10_AXI_bvalid);
  mp_S10_AXI_transactor->BREADY(S10_AXI_bready);
  mp_S10_AXI_transactor->ARID(S10_AXI_arid);
  mp_S10_AXI_transactor->ARADDR(S10_AXI_araddr);
  mp_S10_AXI_transactor->ARLEN(S10_AXI_arlen);
  mp_S10_AXI_transactor->ARSIZE(S10_AXI_arsize);
  mp_S10_AXI_transactor->ARBURST(S10_AXI_arburst);
  mp_S10_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S10_AXI_arlock_converter");
  mp_S10_AXI_arlock_converter->vector_in(S10_AXI_arlock);
  mp_S10_AXI_arlock_converter->scalar_out(m_S10_AXI_arlock_converter_signal);
  mp_S10_AXI_transactor->ARLOCK(m_S10_AXI_arlock_converter_signal);
  mp_S10_AXI_transactor->ARCACHE(S10_AXI_arcache);
  mp_S10_AXI_transactor->ARPROT(S10_AXI_arprot);
  mp_S10_AXI_transactor->ARQOS(S10_AXI_arqos);
  mp_S10_AXI_transactor->ARVALID(S10_AXI_arvalid);
  mp_S10_AXI_transactor->ARREADY(S10_AXI_arready);
  mp_S10_AXI_transactor->RID(S10_AXI_rid);
  mp_S10_AXI_transactor->RDATA(S10_AXI_rdata);
  mp_S10_AXI_transactor->RRESP(S10_AXI_rresp);
  mp_S10_AXI_transactor->RLAST(S10_AXI_rlast);
  mp_S10_AXI_transactor->RVALID(S10_AXI_rvalid);
  mp_S10_AXI_transactor->RREADY(S10_AXI_rready);
  mp_S10_AXI_transactor->CLK(aclk);
  mp_S10_AXI_transactor->RST(aresetn);
  // configure S11_AXI_transactor
    xsc::common_cpp::properties S11_AXI_transactor_param_props;
    S11_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S11_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S11_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S11_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S11_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S11_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S11_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S11_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S11_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S11_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S11_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S11_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S11_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S11_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S11_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S11_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S11_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S11_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S11_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S11_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S11_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S11_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S11_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S11_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S11_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S11_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S11_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S11_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S11_AXI_transactor", S11_AXI_transactor_param_props);
  mp_S11_AXI_transactor->AWID(S11_AXI_awid);
  mp_S11_AXI_transactor->AWADDR(S11_AXI_awaddr);
  mp_S11_AXI_transactor->AWLEN(S11_AXI_awlen);
  mp_S11_AXI_transactor->AWSIZE(S11_AXI_awsize);
  mp_S11_AXI_transactor->AWBURST(S11_AXI_awburst);
  mp_S11_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S11_AXI_awlock_converter");
  mp_S11_AXI_awlock_converter->vector_in(S11_AXI_awlock);
  mp_S11_AXI_awlock_converter->scalar_out(m_S11_AXI_awlock_converter_signal);
  mp_S11_AXI_transactor->AWLOCK(m_S11_AXI_awlock_converter_signal);
  mp_S11_AXI_transactor->AWCACHE(S11_AXI_awcache);
  mp_S11_AXI_transactor->AWPROT(S11_AXI_awprot);
  mp_S11_AXI_transactor->AWQOS(S11_AXI_awqos);
  mp_S11_AXI_transactor->AWVALID(S11_AXI_awvalid);
  mp_S11_AXI_transactor->AWREADY(S11_AXI_awready);
  mp_S11_AXI_transactor->WDATA(S11_AXI_wdata);
  mp_S11_AXI_transactor->WSTRB(S11_AXI_wstrb);
  mp_S11_AXI_transactor->WLAST(S11_AXI_wlast);
  mp_S11_AXI_transactor->WVALID(S11_AXI_wvalid);
  mp_S11_AXI_transactor->WREADY(S11_AXI_wready);
  mp_S11_AXI_transactor->BID(S11_AXI_bid);
  mp_S11_AXI_transactor->BRESP(S11_AXI_bresp);
  mp_S11_AXI_transactor->BVALID(S11_AXI_bvalid);
  mp_S11_AXI_transactor->BREADY(S11_AXI_bready);
  mp_S11_AXI_transactor->ARID(S11_AXI_arid);
  mp_S11_AXI_transactor->ARADDR(S11_AXI_araddr);
  mp_S11_AXI_transactor->ARLEN(S11_AXI_arlen);
  mp_S11_AXI_transactor->ARSIZE(S11_AXI_arsize);
  mp_S11_AXI_transactor->ARBURST(S11_AXI_arburst);
  mp_S11_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S11_AXI_arlock_converter");
  mp_S11_AXI_arlock_converter->vector_in(S11_AXI_arlock);
  mp_S11_AXI_arlock_converter->scalar_out(m_S11_AXI_arlock_converter_signal);
  mp_S11_AXI_transactor->ARLOCK(m_S11_AXI_arlock_converter_signal);
  mp_S11_AXI_transactor->ARCACHE(S11_AXI_arcache);
  mp_S11_AXI_transactor->ARPROT(S11_AXI_arprot);
  mp_S11_AXI_transactor->ARQOS(S11_AXI_arqos);
  mp_S11_AXI_transactor->ARVALID(S11_AXI_arvalid);
  mp_S11_AXI_transactor->ARREADY(S11_AXI_arready);
  mp_S11_AXI_transactor->RID(S11_AXI_rid);
  mp_S11_AXI_transactor->RDATA(S11_AXI_rdata);
  mp_S11_AXI_transactor->RRESP(S11_AXI_rresp);
  mp_S11_AXI_transactor->RLAST(S11_AXI_rlast);
  mp_S11_AXI_transactor->RVALID(S11_AXI_rvalid);
  mp_S11_AXI_transactor->RREADY(S11_AXI_rready);
  mp_S11_AXI_transactor->CLK(aclk);
  mp_S11_AXI_transactor->RST(aresetn);
  // configure S12_AXI_transactor
    xsc::common_cpp::properties S12_AXI_transactor_param_props;
    S12_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S12_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S12_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S12_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S12_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S12_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S12_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S12_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S12_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S12_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S12_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S12_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S12_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S12_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S12_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S12_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S12_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S12_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S12_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S12_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S12_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S12_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S12_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S12_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S12_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S12_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S12_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S12_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S12_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S12_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S12_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S12_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S12_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S12_AXI_transactor", S12_AXI_transactor_param_props);
  mp_S12_AXI_transactor->AWID(S12_AXI_awid);
  mp_S12_AXI_transactor->AWADDR(S12_AXI_awaddr);
  mp_S12_AXI_transactor->AWLEN(S12_AXI_awlen);
  mp_S12_AXI_transactor->AWSIZE(S12_AXI_awsize);
  mp_S12_AXI_transactor->AWBURST(S12_AXI_awburst);
  mp_S12_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S12_AXI_awlock_converter");
  mp_S12_AXI_awlock_converter->vector_in(S12_AXI_awlock);
  mp_S12_AXI_awlock_converter->scalar_out(m_S12_AXI_awlock_converter_signal);
  mp_S12_AXI_transactor->AWLOCK(m_S12_AXI_awlock_converter_signal);
  mp_S12_AXI_transactor->AWCACHE(S12_AXI_awcache);
  mp_S12_AXI_transactor->AWPROT(S12_AXI_awprot);
  mp_S12_AXI_transactor->AWQOS(S12_AXI_awqos);
  mp_S12_AXI_transactor->AWVALID(S12_AXI_awvalid);
  mp_S12_AXI_transactor->AWREADY(S12_AXI_awready);
  mp_S12_AXI_transactor->WDATA(S12_AXI_wdata);
  mp_S12_AXI_transactor->WSTRB(S12_AXI_wstrb);
  mp_S12_AXI_transactor->WLAST(S12_AXI_wlast);
  mp_S12_AXI_transactor->WVALID(S12_AXI_wvalid);
  mp_S12_AXI_transactor->WREADY(S12_AXI_wready);
  mp_S12_AXI_transactor->BID(S12_AXI_bid);
  mp_S12_AXI_transactor->BRESP(S12_AXI_bresp);
  mp_S12_AXI_transactor->BVALID(S12_AXI_bvalid);
  mp_S12_AXI_transactor->BREADY(S12_AXI_bready);
  mp_S12_AXI_transactor->ARID(S12_AXI_arid);
  mp_S12_AXI_transactor->ARADDR(S12_AXI_araddr);
  mp_S12_AXI_transactor->ARLEN(S12_AXI_arlen);
  mp_S12_AXI_transactor->ARSIZE(S12_AXI_arsize);
  mp_S12_AXI_transactor->ARBURST(S12_AXI_arburst);
  mp_S12_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S12_AXI_arlock_converter");
  mp_S12_AXI_arlock_converter->vector_in(S12_AXI_arlock);
  mp_S12_AXI_arlock_converter->scalar_out(m_S12_AXI_arlock_converter_signal);
  mp_S12_AXI_transactor->ARLOCK(m_S12_AXI_arlock_converter_signal);
  mp_S12_AXI_transactor->ARCACHE(S12_AXI_arcache);
  mp_S12_AXI_transactor->ARPROT(S12_AXI_arprot);
  mp_S12_AXI_transactor->ARQOS(S12_AXI_arqos);
  mp_S12_AXI_transactor->ARVALID(S12_AXI_arvalid);
  mp_S12_AXI_transactor->ARREADY(S12_AXI_arready);
  mp_S12_AXI_transactor->RID(S12_AXI_rid);
  mp_S12_AXI_transactor->RDATA(S12_AXI_rdata);
  mp_S12_AXI_transactor->RRESP(S12_AXI_rresp);
  mp_S12_AXI_transactor->RLAST(S12_AXI_rlast);
  mp_S12_AXI_transactor->RVALID(S12_AXI_rvalid);
  mp_S12_AXI_transactor->RREADY(S12_AXI_rready);
  mp_S12_AXI_transactor->CLK(aclk);
  mp_S12_AXI_transactor->RST(aresetn);
  // configure S13_AXI_transactor
    xsc::common_cpp::properties S13_AXI_transactor_param_props;
    S13_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S13_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S13_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S13_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S13_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S13_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S13_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S13_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S13_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S13_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S13_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S13_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S13_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S13_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S13_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S13_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S13_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S13_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S13_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S13_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S13_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S13_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S13_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S13_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S13_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S13_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S13_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S13_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S13_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S13_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S13_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S13_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S13_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S13_AXI_transactor", S13_AXI_transactor_param_props);
  mp_S13_AXI_transactor->AWID(S13_AXI_awid);
  mp_S13_AXI_transactor->AWADDR(S13_AXI_awaddr);
  mp_S13_AXI_transactor->AWLEN(S13_AXI_awlen);
  mp_S13_AXI_transactor->AWSIZE(S13_AXI_awsize);
  mp_S13_AXI_transactor->AWBURST(S13_AXI_awburst);
  mp_S13_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S13_AXI_awlock_converter");
  mp_S13_AXI_awlock_converter->vector_in(S13_AXI_awlock);
  mp_S13_AXI_awlock_converter->scalar_out(m_S13_AXI_awlock_converter_signal);
  mp_S13_AXI_transactor->AWLOCK(m_S13_AXI_awlock_converter_signal);
  mp_S13_AXI_transactor->AWCACHE(S13_AXI_awcache);
  mp_S13_AXI_transactor->AWPROT(S13_AXI_awprot);
  mp_S13_AXI_transactor->AWQOS(S13_AXI_awqos);
  mp_S13_AXI_transactor->AWVALID(S13_AXI_awvalid);
  mp_S13_AXI_transactor->AWREADY(S13_AXI_awready);
  mp_S13_AXI_transactor->WDATA(S13_AXI_wdata);
  mp_S13_AXI_transactor->WSTRB(S13_AXI_wstrb);
  mp_S13_AXI_transactor->WLAST(S13_AXI_wlast);
  mp_S13_AXI_transactor->WVALID(S13_AXI_wvalid);
  mp_S13_AXI_transactor->WREADY(S13_AXI_wready);
  mp_S13_AXI_transactor->BID(S13_AXI_bid);
  mp_S13_AXI_transactor->BRESP(S13_AXI_bresp);
  mp_S13_AXI_transactor->BVALID(S13_AXI_bvalid);
  mp_S13_AXI_transactor->BREADY(S13_AXI_bready);
  mp_S13_AXI_transactor->ARID(S13_AXI_arid);
  mp_S13_AXI_transactor->ARADDR(S13_AXI_araddr);
  mp_S13_AXI_transactor->ARLEN(S13_AXI_arlen);
  mp_S13_AXI_transactor->ARSIZE(S13_AXI_arsize);
  mp_S13_AXI_transactor->ARBURST(S13_AXI_arburst);
  mp_S13_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S13_AXI_arlock_converter");
  mp_S13_AXI_arlock_converter->vector_in(S13_AXI_arlock);
  mp_S13_AXI_arlock_converter->scalar_out(m_S13_AXI_arlock_converter_signal);
  mp_S13_AXI_transactor->ARLOCK(m_S13_AXI_arlock_converter_signal);
  mp_S13_AXI_transactor->ARCACHE(S13_AXI_arcache);
  mp_S13_AXI_transactor->ARPROT(S13_AXI_arprot);
  mp_S13_AXI_transactor->ARQOS(S13_AXI_arqos);
  mp_S13_AXI_transactor->ARVALID(S13_AXI_arvalid);
  mp_S13_AXI_transactor->ARREADY(S13_AXI_arready);
  mp_S13_AXI_transactor->RID(S13_AXI_rid);
  mp_S13_AXI_transactor->RDATA(S13_AXI_rdata);
  mp_S13_AXI_transactor->RRESP(S13_AXI_rresp);
  mp_S13_AXI_transactor->RLAST(S13_AXI_rlast);
  mp_S13_AXI_transactor->RVALID(S13_AXI_rvalid);
  mp_S13_AXI_transactor->RREADY(S13_AXI_rready);
  mp_S13_AXI_transactor->CLK(aclk);
  mp_S13_AXI_transactor->RST(aresetn);
  // configure S14_AXI_transactor
    xsc::common_cpp::properties S14_AXI_transactor_param_props;
    S14_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S14_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S14_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S14_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S14_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S14_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S14_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S14_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S14_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S14_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S14_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S14_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S14_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S14_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S14_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S14_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S14_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S14_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S14_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S14_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S14_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S14_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S14_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S14_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S14_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S14_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S14_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S14_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S14_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S14_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S14_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S14_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S14_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S14_AXI_transactor", S14_AXI_transactor_param_props);
  mp_S14_AXI_transactor->AWID(S14_AXI_awid);
  mp_S14_AXI_transactor->AWADDR(S14_AXI_awaddr);
  mp_S14_AXI_transactor->AWLEN(S14_AXI_awlen);
  mp_S14_AXI_transactor->AWSIZE(S14_AXI_awsize);
  mp_S14_AXI_transactor->AWBURST(S14_AXI_awburst);
  mp_S14_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S14_AXI_awlock_converter");
  mp_S14_AXI_awlock_converter->vector_in(S14_AXI_awlock);
  mp_S14_AXI_awlock_converter->scalar_out(m_S14_AXI_awlock_converter_signal);
  mp_S14_AXI_transactor->AWLOCK(m_S14_AXI_awlock_converter_signal);
  mp_S14_AXI_transactor->AWCACHE(S14_AXI_awcache);
  mp_S14_AXI_transactor->AWPROT(S14_AXI_awprot);
  mp_S14_AXI_transactor->AWQOS(S14_AXI_awqos);
  mp_S14_AXI_transactor->AWVALID(S14_AXI_awvalid);
  mp_S14_AXI_transactor->AWREADY(S14_AXI_awready);
  mp_S14_AXI_transactor->WDATA(S14_AXI_wdata);
  mp_S14_AXI_transactor->WSTRB(S14_AXI_wstrb);
  mp_S14_AXI_transactor->WLAST(S14_AXI_wlast);
  mp_S14_AXI_transactor->WVALID(S14_AXI_wvalid);
  mp_S14_AXI_transactor->WREADY(S14_AXI_wready);
  mp_S14_AXI_transactor->BID(S14_AXI_bid);
  mp_S14_AXI_transactor->BRESP(S14_AXI_bresp);
  mp_S14_AXI_transactor->BVALID(S14_AXI_bvalid);
  mp_S14_AXI_transactor->BREADY(S14_AXI_bready);
  mp_S14_AXI_transactor->ARID(S14_AXI_arid);
  mp_S14_AXI_transactor->ARADDR(S14_AXI_araddr);
  mp_S14_AXI_transactor->ARLEN(S14_AXI_arlen);
  mp_S14_AXI_transactor->ARSIZE(S14_AXI_arsize);
  mp_S14_AXI_transactor->ARBURST(S14_AXI_arburst);
  mp_S14_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S14_AXI_arlock_converter");
  mp_S14_AXI_arlock_converter->vector_in(S14_AXI_arlock);
  mp_S14_AXI_arlock_converter->scalar_out(m_S14_AXI_arlock_converter_signal);
  mp_S14_AXI_transactor->ARLOCK(m_S14_AXI_arlock_converter_signal);
  mp_S14_AXI_transactor->ARCACHE(S14_AXI_arcache);
  mp_S14_AXI_transactor->ARPROT(S14_AXI_arprot);
  mp_S14_AXI_transactor->ARQOS(S14_AXI_arqos);
  mp_S14_AXI_transactor->ARVALID(S14_AXI_arvalid);
  mp_S14_AXI_transactor->ARREADY(S14_AXI_arready);
  mp_S14_AXI_transactor->RID(S14_AXI_rid);
  mp_S14_AXI_transactor->RDATA(S14_AXI_rdata);
  mp_S14_AXI_transactor->RRESP(S14_AXI_rresp);
  mp_S14_AXI_transactor->RLAST(S14_AXI_rlast);
  mp_S14_AXI_transactor->RVALID(S14_AXI_rvalid);
  mp_S14_AXI_transactor->RREADY(S14_AXI_rready);
  mp_S14_AXI_transactor->CLK(aclk);
  mp_S14_AXI_transactor->RST(aresetn);
  // configure S15_AXI_transactor
    xsc::common_cpp::properties S15_AXI_transactor_param_props;
    S15_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S15_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S15_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S15_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S15_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S15_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S15_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S15_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S15_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S15_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S15_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S15_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S15_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S15_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S15_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S15_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S15_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S15_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S15_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S15_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S15_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S15_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S15_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S15_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S15_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S15_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S15_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S15_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S15_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S15_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S15_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S15_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S15_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S15_AXI_transactor", S15_AXI_transactor_param_props);
  mp_S15_AXI_transactor->AWID(S15_AXI_awid);
  mp_S15_AXI_transactor->AWADDR(S15_AXI_awaddr);
  mp_S15_AXI_transactor->AWLEN(S15_AXI_awlen);
  mp_S15_AXI_transactor->AWSIZE(S15_AXI_awsize);
  mp_S15_AXI_transactor->AWBURST(S15_AXI_awburst);
  mp_S15_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S15_AXI_awlock_converter");
  mp_S15_AXI_awlock_converter->vector_in(S15_AXI_awlock);
  mp_S15_AXI_awlock_converter->scalar_out(m_S15_AXI_awlock_converter_signal);
  mp_S15_AXI_transactor->AWLOCK(m_S15_AXI_awlock_converter_signal);
  mp_S15_AXI_transactor->AWCACHE(S15_AXI_awcache);
  mp_S15_AXI_transactor->AWPROT(S15_AXI_awprot);
  mp_S15_AXI_transactor->AWQOS(S15_AXI_awqos);
  mp_S15_AXI_transactor->AWVALID(S15_AXI_awvalid);
  mp_S15_AXI_transactor->AWREADY(S15_AXI_awready);
  mp_S15_AXI_transactor->WDATA(S15_AXI_wdata);
  mp_S15_AXI_transactor->WSTRB(S15_AXI_wstrb);
  mp_S15_AXI_transactor->WLAST(S15_AXI_wlast);
  mp_S15_AXI_transactor->WVALID(S15_AXI_wvalid);
  mp_S15_AXI_transactor->WREADY(S15_AXI_wready);
  mp_S15_AXI_transactor->BID(S15_AXI_bid);
  mp_S15_AXI_transactor->BRESP(S15_AXI_bresp);
  mp_S15_AXI_transactor->BVALID(S15_AXI_bvalid);
  mp_S15_AXI_transactor->BREADY(S15_AXI_bready);
  mp_S15_AXI_transactor->ARID(S15_AXI_arid);
  mp_S15_AXI_transactor->ARADDR(S15_AXI_araddr);
  mp_S15_AXI_transactor->ARLEN(S15_AXI_arlen);
  mp_S15_AXI_transactor->ARSIZE(S15_AXI_arsize);
  mp_S15_AXI_transactor->ARBURST(S15_AXI_arburst);
  mp_S15_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S15_AXI_arlock_converter");
  mp_S15_AXI_arlock_converter->vector_in(S15_AXI_arlock);
  mp_S15_AXI_arlock_converter->scalar_out(m_S15_AXI_arlock_converter_signal);
  mp_S15_AXI_transactor->ARLOCK(m_S15_AXI_arlock_converter_signal);
  mp_S15_AXI_transactor->ARCACHE(S15_AXI_arcache);
  mp_S15_AXI_transactor->ARPROT(S15_AXI_arprot);
  mp_S15_AXI_transactor->ARQOS(S15_AXI_arqos);
  mp_S15_AXI_transactor->ARVALID(S15_AXI_arvalid);
  mp_S15_AXI_transactor->ARREADY(S15_AXI_arready);
  mp_S15_AXI_transactor->RID(S15_AXI_rid);
  mp_S15_AXI_transactor->RDATA(S15_AXI_rdata);
  mp_S15_AXI_transactor->RRESP(S15_AXI_rresp);
  mp_S15_AXI_transactor->RLAST(S15_AXI_rlast);
  mp_S15_AXI_transactor->RVALID(S15_AXI_rvalid);
  mp_S15_AXI_transactor->RREADY(S15_AXI_rready);
  mp_S15_AXI_transactor->CLK(aclk);
  mp_S15_AXI_transactor->RST(aresetn);
  // configure M00_AXI_transactor
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,34,1,1,1,1,1,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);
  mp_M00_AXI_transactor->AWADDR(M00_AXI_awaddr);
  mp_M00_AXI_transactor->AWLEN(M00_AXI_awlen);
  mp_M00_AXI_transactor->AWSIZE(M00_AXI_awsize);
  mp_M00_AXI_transactor->AWBURST(M00_AXI_awburst);
  mp_M00_AXI_awlock_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_awlock_converter");
  mp_M00_AXI_awlock_converter->scalar_in(m_M00_AXI_awlock_converter_signal);
  mp_M00_AXI_awlock_converter->vector_out(M00_AXI_awlock);
  mp_M00_AXI_transactor->AWLOCK(m_M00_AXI_awlock_converter_signal);
  mp_M00_AXI_transactor->AWCACHE(M00_AXI_awcache);
  mp_M00_AXI_transactor->AWPROT(M00_AXI_awprot);
  mp_M00_AXI_transactor->AWQOS(M00_AXI_awqos);
  mp_M00_AXI_transactor->AWVALID(M00_AXI_awvalid);
  mp_M00_AXI_transactor->AWREADY(M00_AXI_awready);
  mp_M00_AXI_transactor->WDATA(M00_AXI_wdata);
  mp_M00_AXI_transactor->WSTRB(M00_AXI_wstrb);
  mp_M00_AXI_transactor->WLAST(M00_AXI_wlast);
  mp_M00_AXI_transactor->WVALID(M00_AXI_wvalid);
  mp_M00_AXI_transactor->WREADY(M00_AXI_wready);
  mp_M00_AXI_transactor->BRESP(M00_AXI_bresp);
  mp_M00_AXI_transactor->BVALID(M00_AXI_bvalid);
  mp_M00_AXI_transactor->BREADY(M00_AXI_bready);
  mp_M00_AXI_transactor->ARADDR(M00_AXI_araddr);
  mp_M00_AXI_transactor->ARLEN(M00_AXI_arlen);
  mp_M00_AXI_transactor->ARSIZE(M00_AXI_arsize);
  mp_M00_AXI_transactor->ARBURST(M00_AXI_arburst);
  mp_M00_AXI_arlock_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_arlock_converter");
  mp_M00_AXI_arlock_converter->scalar_in(m_M00_AXI_arlock_converter_signal);
  mp_M00_AXI_arlock_converter->vector_out(M00_AXI_arlock);
  mp_M00_AXI_transactor->ARLOCK(m_M00_AXI_arlock_converter_signal);
  mp_M00_AXI_transactor->ARCACHE(M00_AXI_arcache);
  mp_M00_AXI_transactor->ARPROT(M00_AXI_arprot);
  mp_M00_AXI_transactor->ARQOS(M00_AXI_arqos);
  mp_M00_AXI_transactor->ARVALID(M00_AXI_arvalid);
  mp_M00_AXI_transactor->ARREADY(M00_AXI_arready);
  mp_M00_AXI_transactor->RDATA(M00_AXI_rdata);
  mp_M00_AXI_transactor->RRESP(M00_AXI_rresp);
  mp_M00_AXI_transactor->RLAST(M00_AXI_rlast);
  mp_M00_AXI_transactor->RVALID(M00_AXI_rvalid);
  mp_M00_AXI_transactor->RREADY(M00_AXI_rready);
  mp_M00_AXI_transactor->CLK(aclk);
  mp_M00_AXI_transactor->RST(aresetn);

  // initialize transactors stubs
  S00_AXI_transactor_target_wr_socket_stub = nullptr;
  S00_AXI_transactor_target_rd_socket_stub = nullptr;
  S01_AXI_transactor_target_wr_socket_stub = nullptr;
  S01_AXI_transactor_target_rd_socket_stub = nullptr;
  S02_AXI_transactor_target_wr_socket_stub = nullptr;
  S02_AXI_transactor_target_rd_socket_stub = nullptr;
  S03_AXI_transactor_target_wr_socket_stub = nullptr;
  S03_AXI_transactor_target_rd_socket_stub = nullptr;
  S04_AXI_transactor_target_wr_socket_stub = nullptr;
  S04_AXI_transactor_target_rd_socket_stub = nullptr;
  S05_AXI_transactor_target_wr_socket_stub = nullptr;
  S05_AXI_transactor_target_rd_socket_stub = nullptr;
  S06_AXI_transactor_target_wr_socket_stub = nullptr;
  S06_AXI_transactor_target_rd_socket_stub = nullptr;
  S07_AXI_transactor_target_wr_socket_stub = nullptr;
  S07_AXI_transactor_target_rd_socket_stub = nullptr;
  S08_AXI_transactor_target_wr_socket_stub = nullptr;
  S08_AXI_transactor_target_rd_socket_stub = nullptr;
  S09_AXI_transactor_target_wr_socket_stub = nullptr;
  S09_AXI_transactor_target_rd_socket_stub = nullptr;
  S10_AXI_transactor_target_wr_socket_stub = nullptr;
  S10_AXI_transactor_target_rd_socket_stub = nullptr;
  S11_AXI_transactor_target_wr_socket_stub = nullptr;
  S11_AXI_transactor_target_rd_socket_stub = nullptr;
  S12_AXI_transactor_target_wr_socket_stub = nullptr;
  S12_AXI_transactor_target_rd_socket_stub = nullptr;
  S13_AXI_transactor_target_wr_socket_stub = nullptr;
  S13_AXI_transactor_target_rd_socket_stub = nullptr;
  S14_AXI_transactor_target_wr_socket_stub = nullptr;
  S14_AXI_transactor_target_rd_socket_stub = nullptr;
  S15_AXI_transactor_target_wr_socket_stub = nullptr;
  S15_AXI_transactor_target_rd_socket_stub = nullptr;
  M00_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M00_AXI_transactor_initiator_rd_socket_stub = nullptr;

}

void MemoryInterfacesVIP_smartconnect_0_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    mp_impl->S00_AXI_tlm_aximm_read_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->S00_AXI_tlm_aximm_write_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  
  }
  else
  {
    S00_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S00_AXI_transactor_target_wr_socket_stub->bind(*(mp_S00_AXI_transactor->wr_socket));
    S00_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S00_AXI_transactor_target_rd_socket_stub->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_S00_AXI_transactor->disable_transactor();
  }

  // configure 'S01_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S01_AXI_TLM_MODE") != 1)
  {
    mp_impl->S01_AXI_tlm_aximm_read_socket->bind(*(mp_S01_AXI_transactor->rd_socket));
    mp_impl->S01_AXI_tlm_aximm_write_socket->bind(*(mp_S01_AXI_transactor->wr_socket));
  
  }
  else
  {
    S01_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S01_AXI_transactor_target_wr_socket_stub->bind(*(mp_S01_AXI_transactor->wr_socket));
    S01_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S01_AXI_transactor_target_rd_socket_stub->bind(*(mp_S01_AXI_transactor->rd_socket));
    mp_S01_AXI_transactor->disable_transactor();
  }

  // configure 'S02_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S02_AXI_TLM_MODE") != 1)
  {
    mp_impl->S02_AXI_tlm_aximm_read_socket->bind(*(mp_S02_AXI_transactor->rd_socket));
    mp_impl->S02_AXI_tlm_aximm_write_socket->bind(*(mp_S02_AXI_transactor->wr_socket));
  
  }
  else
  {
    S02_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S02_AXI_transactor_target_wr_socket_stub->bind(*(mp_S02_AXI_transactor->wr_socket));
    S02_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S02_AXI_transactor_target_rd_socket_stub->bind(*(mp_S02_AXI_transactor->rd_socket));
    mp_S02_AXI_transactor->disable_transactor();
  }

  // configure 'S03_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S03_AXI_TLM_MODE") != 1)
  {
    mp_impl->S03_AXI_tlm_aximm_read_socket->bind(*(mp_S03_AXI_transactor->rd_socket));
    mp_impl->S03_AXI_tlm_aximm_write_socket->bind(*(mp_S03_AXI_transactor->wr_socket));
  
  }
  else
  {
    S03_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S03_AXI_transactor_target_wr_socket_stub->bind(*(mp_S03_AXI_transactor->wr_socket));
    S03_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S03_AXI_transactor_target_rd_socket_stub->bind(*(mp_S03_AXI_transactor->rd_socket));
    mp_S03_AXI_transactor->disable_transactor();
  }

  // configure 'S04_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S04_AXI_TLM_MODE") != 1)
  {
    mp_impl->S04_AXI_tlm_aximm_read_socket->bind(*(mp_S04_AXI_transactor->rd_socket));
    mp_impl->S04_AXI_tlm_aximm_write_socket->bind(*(mp_S04_AXI_transactor->wr_socket));
  
  }
  else
  {
    S04_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S04_AXI_transactor_target_wr_socket_stub->bind(*(mp_S04_AXI_transactor->wr_socket));
    S04_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S04_AXI_transactor_target_rd_socket_stub->bind(*(mp_S04_AXI_transactor->rd_socket));
    mp_S04_AXI_transactor->disable_transactor();
  }

  // configure 'S05_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S05_AXI_TLM_MODE") != 1)
  {
    mp_impl->S05_AXI_tlm_aximm_read_socket->bind(*(mp_S05_AXI_transactor->rd_socket));
    mp_impl->S05_AXI_tlm_aximm_write_socket->bind(*(mp_S05_AXI_transactor->wr_socket));
  
  }
  else
  {
    S05_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S05_AXI_transactor_target_wr_socket_stub->bind(*(mp_S05_AXI_transactor->wr_socket));
    S05_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S05_AXI_transactor_target_rd_socket_stub->bind(*(mp_S05_AXI_transactor->rd_socket));
    mp_S05_AXI_transactor->disable_transactor();
  }

  // configure 'S06_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S06_AXI_TLM_MODE") != 1)
  {
    mp_impl->S06_AXI_tlm_aximm_read_socket->bind(*(mp_S06_AXI_transactor->rd_socket));
    mp_impl->S06_AXI_tlm_aximm_write_socket->bind(*(mp_S06_AXI_transactor->wr_socket));
  
  }
  else
  {
    S06_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S06_AXI_transactor_target_wr_socket_stub->bind(*(mp_S06_AXI_transactor->wr_socket));
    S06_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S06_AXI_transactor_target_rd_socket_stub->bind(*(mp_S06_AXI_transactor->rd_socket));
    mp_S06_AXI_transactor->disable_transactor();
  }

  // configure 'S07_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S07_AXI_TLM_MODE") != 1)
  {
    mp_impl->S07_AXI_tlm_aximm_read_socket->bind(*(mp_S07_AXI_transactor->rd_socket));
    mp_impl->S07_AXI_tlm_aximm_write_socket->bind(*(mp_S07_AXI_transactor->wr_socket));
  
  }
  else
  {
    S07_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S07_AXI_transactor_target_wr_socket_stub->bind(*(mp_S07_AXI_transactor->wr_socket));
    S07_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S07_AXI_transactor_target_rd_socket_stub->bind(*(mp_S07_AXI_transactor->rd_socket));
    mp_S07_AXI_transactor->disable_transactor();
  }

  // configure 'S08_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S08_AXI_TLM_MODE") != 1)
  {
    mp_impl->S08_AXI_tlm_aximm_read_socket->bind(*(mp_S08_AXI_transactor->rd_socket));
    mp_impl->S08_AXI_tlm_aximm_write_socket->bind(*(mp_S08_AXI_transactor->wr_socket));
  
  }
  else
  {
    S08_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S08_AXI_transactor_target_wr_socket_stub->bind(*(mp_S08_AXI_transactor->wr_socket));
    S08_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S08_AXI_transactor_target_rd_socket_stub->bind(*(mp_S08_AXI_transactor->rd_socket));
    mp_S08_AXI_transactor->disable_transactor();
  }

  // configure 'S09_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S09_AXI_TLM_MODE") != 1)
  {
    mp_impl->S09_AXI_tlm_aximm_read_socket->bind(*(mp_S09_AXI_transactor->rd_socket));
    mp_impl->S09_AXI_tlm_aximm_write_socket->bind(*(mp_S09_AXI_transactor->wr_socket));
  
  }
  else
  {
    S09_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S09_AXI_transactor_target_wr_socket_stub->bind(*(mp_S09_AXI_transactor->wr_socket));
    S09_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S09_AXI_transactor_target_rd_socket_stub->bind(*(mp_S09_AXI_transactor->rd_socket));
    mp_S09_AXI_transactor->disable_transactor();
  }

  // configure 'S10_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S10_AXI_TLM_MODE") != 1)
  {
    mp_impl->S10_AXI_tlm_aximm_read_socket->bind(*(mp_S10_AXI_transactor->rd_socket));
    mp_impl->S10_AXI_tlm_aximm_write_socket->bind(*(mp_S10_AXI_transactor->wr_socket));
  
  }
  else
  {
    S10_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S10_AXI_transactor_target_wr_socket_stub->bind(*(mp_S10_AXI_transactor->wr_socket));
    S10_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S10_AXI_transactor_target_rd_socket_stub->bind(*(mp_S10_AXI_transactor->rd_socket));
    mp_S10_AXI_transactor->disable_transactor();
  }

  // configure 'S11_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S11_AXI_TLM_MODE") != 1)
  {
    mp_impl->S11_AXI_tlm_aximm_read_socket->bind(*(mp_S11_AXI_transactor->rd_socket));
    mp_impl->S11_AXI_tlm_aximm_write_socket->bind(*(mp_S11_AXI_transactor->wr_socket));
  
  }
  else
  {
    S11_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S11_AXI_transactor_target_wr_socket_stub->bind(*(mp_S11_AXI_transactor->wr_socket));
    S11_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S11_AXI_transactor_target_rd_socket_stub->bind(*(mp_S11_AXI_transactor->rd_socket));
    mp_S11_AXI_transactor->disable_transactor();
  }

  // configure 'S12_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S12_AXI_TLM_MODE") != 1)
  {
    mp_impl->S12_AXI_tlm_aximm_read_socket->bind(*(mp_S12_AXI_transactor->rd_socket));
    mp_impl->S12_AXI_tlm_aximm_write_socket->bind(*(mp_S12_AXI_transactor->wr_socket));
  
  }
  else
  {
    S12_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S12_AXI_transactor_target_wr_socket_stub->bind(*(mp_S12_AXI_transactor->wr_socket));
    S12_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S12_AXI_transactor_target_rd_socket_stub->bind(*(mp_S12_AXI_transactor->rd_socket));
    mp_S12_AXI_transactor->disable_transactor();
  }

  // configure 'S13_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S13_AXI_TLM_MODE") != 1)
  {
    mp_impl->S13_AXI_tlm_aximm_read_socket->bind(*(mp_S13_AXI_transactor->rd_socket));
    mp_impl->S13_AXI_tlm_aximm_write_socket->bind(*(mp_S13_AXI_transactor->wr_socket));
  
  }
  else
  {
    S13_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S13_AXI_transactor_target_wr_socket_stub->bind(*(mp_S13_AXI_transactor->wr_socket));
    S13_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S13_AXI_transactor_target_rd_socket_stub->bind(*(mp_S13_AXI_transactor->rd_socket));
    mp_S13_AXI_transactor->disable_transactor();
  }

  // configure 'S14_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S14_AXI_TLM_MODE") != 1)
  {
    mp_impl->S14_AXI_tlm_aximm_read_socket->bind(*(mp_S14_AXI_transactor->rd_socket));
    mp_impl->S14_AXI_tlm_aximm_write_socket->bind(*(mp_S14_AXI_transactor->wr_socket));
  
  }
  else
  {
    S14_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S14_AXI_transactor_target_wr_socket_stub->bind(*(mp_S14_AXI_transactor->wr_socket));
    S14_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S14_AXI_transactor_target_rd_socket_stub->bind(*(mp_S14_AXI_transactor->rd_socket));
    mp_S14_AXI_transactor->disable_transactor();
  }

  // configure 'S15_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S15_AXI_TLM_MODE") != 1)
  {
    mp_impl->S15_AXI_tlm_aximm_read_socket->bind(*(mp_S15_AXI_transactor->rd_socket));
    mp_impl->S15_AXI_tlm_aximm_write_socket->bind(*(mp_S15_AXI_transactor->wr_socket));
  
  }
  else
  {
    S15_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S15_AXI_transactor_target_wr_socket_stub->bind(*(mp_S15_AXI_transactor->wr_socket));
    S15_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S15_AXI_transactor_target_rd_socket_stub->bind(*(mp_S15_AXI_transactor->rd_socket));
    mp_S15_AXI_transactor->disable_transactor();
  }

  // configure 'M00_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "M00_AXI_TLM_MODE") != 1)
  {
    mp_impl->M00_AXI_tlm_aximm_read_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->M00_AXI_tlm_aximm_write_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  
  }
  else
  {
    M00_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M00_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M00_AXI_transactor->wr_socket));
    M00_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M00_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_M00_AXI_transactor->disable_transactor();
  }

}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
MemoryInterfacesVIP_smartconnect_0_0::MemoryInterfacesVIP_smartconnect_0_0(const sc_core::sc_module_name& nm) : MemoryInterfacesVIP_smartconnect_0_0_sc(nm),  aclk("aclk"), aresetn("aresetn"), S00_AXI_awid("S00_AXI_awid"), S00_AXI_awaddr("S00_AXI_awaddr"), S00_AXI_awlen("S00_AXI_awlen"), S00_AXI_awsize("S00_AXI_awsize"), S00_AXI_awburst("S00_AXI_awburst"), S00_AXI_awlock("S00_AXI_awlock"), S00_AXI_awcache("S00_AXI_awcache"), S00_AXI_awprot("S00_AXI_awprot"), S00_AXI_awqos("S00_AXI_awqos"), S00_AXI_awvalid("S00_AXI_awvalid"), S00_AXI_awready("S00_AXI_awready"), S00_AXI_wdata("S00_AXI_wdata"), S00_AXI_wstrb("S00_AXI_wstrb"), S00_AXI_wlast("S00_AXI_wlast"), S00_AXI_wvalid("S00_AXI_wvalid"), S00_AXI_wready("S00_AXI_wready"), S00_AXI_bid("S00_AXI_bid"), S00_AXI_bresp("S00_AXI_bresp"), S00_AXI_bvalid("S00_AXI_bvalid"), S00_AXI_bready("S00_AXI_bready"), S00_AXI_arid("S00_AXI_arid"), S00_AXI_araddr("S00_AXI_araddr"), S00_AXI_arlen("S00_AXI_arlen"), S00_AXI_arsize("S00_AXI_arsize"), S00_AXI_arburst("S00_AXI_arburst"), S00_AXI_arlock("S00_AXI_arlock"), S00_AXI_arcache("S00_AXI_arcache"), S00_AXI_arprot("S00_AXI_arprot"), S00_AXI_arqos("S00_AXI_arqos"), S00_AXI_arvalid("S00_AXI_arvalid"), S00_AXI_arready("S00_AXI_arready"), S00_AXI_rid("S00_AXI_rid"), S00_AXI_rdata("S00_AXI_rdata"), S00_AXI_rresp("S00_AXI_rresp"), S00_AXI_rlast("S00_AXI_rlast"), S00_AXI_rvalid("S00_AXI_rvalid"), S00_AXI_rready("S00_AXI_rready"), S01_AXI_awid("S01_AXI_awid"), S01_AXI_awaddr("S01_AXI_awaddr"), S01_AXI_awlen("S01_AXI_awlen"), S01_AXI_awsize("S01_AXI_awsize"), S01_AXI_awburst("S01_AXI_awburst"), S01_AXI_awlock("S01_AXI_awlock"), S01_AXI_awcache("S01_AXI_awcache"), S01_AXI_awprot("S01_AXI_awprot"), S01_AXI_awqos("S01_AXI_awqos"), S01_AXI_awvalid("S01_AXI_awvalid"), S01_AXI_awready("S01_AXI_awready"), S01_AXI_wdata("S01_AXI_wdata"), S01_AXI_wstrb("S01_AXI_wstrb"), S01_AXI_wlast("S01_AXI_wlast"), S01_AXI_wvalid("S01_AXI_wvalid"), S01_AXI_wready("S01_AXI_wready"), S01_AXI_bid("S01_AXI_bid"), S01_AXI_bresp("S01_AXI_bresp"), S01_AXI_bvalid("S01_AXI_bvalid"), S01_AXI_bready("S01_AXI_bready"), S01_AXI_arid("S01_AXI_arid"), S01_AXI_araddr("S01_AXI_araddr"), S01_AXI_arlen("S01_AXI_arlen"), S01_AXI_arsize("S01_AXI_arsize"), S01_AXI_arburst("S01_AXI_arburst"), S01_AXI_arlock("S01_AXI_arlock"), S01_AXI_arcache("S01_AXI_arcache"), S01_AXI_arprot("S01_AXI_arprot"), S01_AXI_arqos("S01_AXI_arqos"), S01_AXI_arvalid("S01_AXI_arvalid"), S01_AXI_arready("S01_AXI_arready"), S01_AXI_rid("S01_AXI_rid"), S01_AXI_rdata("S01_AXI_rdata"), S01_AXI_rresp("S01_AXI_rresp"), S01_AXI_rlast("S01_AXI_rlast"), S01_AXI_rvalid("S01_AXI_rvalid"), S01_AXI_rready("S01_AXI_rready"), S02_AXI_awid("S02_AXI_awid"), S02_AXI_awaddr("S02_AXI_awaddr"), S02_AXI_awlen("S02_AXI_awlen"), S02_AXI_awsize("S02_AXI_awsize"), S02_AXI_awburst("S02_AXI_awburst"), S02_AXI_awlock("S02_AXI_awlock"), S02_AXI_awcache("S02_AXI_awcache"), S02_AXI_awprot("S02_AXI_awprot"), S02_AXI_awqos("S02_AXI_awqos"), S02_AXI_awvalid("S02_AXI_awvalid"), S02_AXI_awready("S02_AXI_awready"), S02_AXI_wdata("S02_AXI_wdata"), S02_AXI_wstrb("S02_AXI_wstrb"), S02_AXI_wlast("S02_AXI_wlast"), S02_AXI_wvalid("S02_AXI_wvalid"), S02_AXI_wready("S02_AXI_wready"), S02_AXI_bid("S02_AXI_bid"), S02_AXI_bresp("S02_AXI_bresp"), S02_AXI_bvalid("S02_AXI_bvalid"), S02_AXI_bready("S02_AXI_bready"), S02_AXI_arid("S02_AXI_arid"), S02_AXI_araddr("S02_AXI_araddr"), S02_AXI_arlen("S02_AXI_arlen"), S02_AXI_arsize("S02_AXI_arsize"), S02_AXI_arburst("S02_AXI_arburst"), S02_AXI_arlock("S02_AXI_arlock"), S02_AXI_arcache("S02_AXI_arcache"), S02_AXI_arprot("S02_AXI_arprot"), S02_AXI_arqos("S02_AXI_arqos"), S02_AXI_arvalid("S02_AXI_arvalid"), S02_AXI_arready("S02_AXI_arready"), S02_AXI_rid("S02_AXI_rid"), S02_AXI_rdata("S02_AXI_rdata"), S02_AXI_rresp("S02_AXI_rresp"), S02_AXI_rlast("S02_AXI_rlast"), S02_AXI_rvalid("S02_AXI_rvalid"), S02_AXI_rready("S02_AXI_rready"), S03_AXI_awid("S03_AXI_awid"), S03_AXI_awaddr("S03_AXI_awaddr"), S03_AXI_awlen("S03_AXI_awlen"), S03_AXI_awsize("S03_AXI_awsize"), S03_AXI_awburst("S03_AXI_awburst"), S03_AXI_awlock("S03_AXI_awlock"), S03_AXI_awcache("S03_AXI_awcache"), S03_AXI_awprot("S03_AXI_awprot"), S03_AXI_awqos("S03_AXI_awqos"), S03_AXI_awvalid("S03_AXI_awvalid"), S03_AXI_awready("S03_AXI_awready"), S03_AXI_wdata("S03_AXI_wdata"), S03_AXI_wstrb("S03_AXI_wstrb"), S03_AXI_wlast("S03_AXI_wlast"), S03_AXI_wvalid("S03_AXI_wvalid"), S03_AXI_wready("S03_AXI_wready"), S03_AXI_bid("S03_AXI_bid"), S03_AXI_bresp("S03_AXI_bresp"), S03_AXI_bvalid("S03_AXI_bvalid"), S03_AXI_bready("S03_AXI_bready"), S03_AXI_arid("S03_AXI_arid"), S03_AXI_araddr("S03_AXI_araddr"), S03_AXI_arlen("S03_AXI_arlen"), S03_AXI_arsize("S03_AXI_arsize"), S03_AXI_arburst("S03_AXI_arburst"), S03_AXI_arlock("S03_AXI_arlock"), S03_AXI_arcache("S03_AXI_arcache"), S03_AXI_arprot("S03_AXI_arprot"), S03_AXI_arqos("S03_AXI_arqos"), S03_AXI_arvalid("S03_AXI_arvalid"), S03_AXI_arready("S03_AXI_arready"), S03_AXI_rid("S03_AXI_rid"), S03_AXI_rdata("S03_AXI_rdata"), S03_AXI_rresp("S03_AXI_rresp"), S03_AXI_rlast("S03_AXI_rlast"), S03_AXI_rvalid("S03_AXI_rvalid"), S03_AXI_rready("S03_AXI_rready"), S04_AXI_awid("S04_AXI_awid"), S04_AXI_awaddr("S04_AXI_awaddr"), S04_AXI_awlen("S04_AXI_awlen"), S04_AXI_awsize("S04_AXI_awsize"), S04_AXI_awburst("S04_AXI_awburst"), S04_AXI_awlock("S04_AXI_awlock"), S04_AXI_awcache("S04_AXI_awcache"), S04_AXI_awprot("S04_AXI_awprot"), S04_AXI_awqos("S04_AXI_awqos"), S04_AXI_awvalid("S04_AXI_awvalid"), S04_AXI_awready("S04_AXI_awready"), S04_AXI_wdata("S04_AXI_wdata"), S04_AXI_wstrb("S04_AXI_wstrb"), S04_AXI_wlast("S04_AXI_wlast"), S04_AXI_wvalid("S04_AXI_wvalid"), S04_AXI_wready("S04_AXI_wready"), S04_AXI_bid("S04_AXI_bid"), S04_AXI_bresp("S04_AXI_bresp"), S04_AXI_bvalid("S04_AXI_bvalid"), S04_AXI_bready("S04_AXI_bready"), S04_AXI_arid("S04_AXI_arid"), S04_AXI_araddr("S04_AXI_araddr"), S04_AXI_arlen("S04_AXI_arlen"), S04_AXI_arsize("S04_AXI_arsize"), S04_AXI_arburst("S04_AXI_arburst"), S04_AXI_arlock("S04_AXI_arlock"), S04_AXI_arcache("S04_AXI_arcache"), S04_AXI_arprot("S04_AXI_arprot"), S04_AXI_arqos("S04_AXI_arqos"), S04_AXI_arvalid("S04_AXI_arvalid"), S04_AXI_arready("S04_AXI_arready"), S04_AXI_rid("S04_AXI_rid"), S04_AXI_rdata("S04_AXI_rdata"), S04_AXI_rresp("S04_AXI_rresp"), S04_AXI_rlast("S04_AXI_rlast"), S04_AXI_rvalid("S04_AXI_rvalid"), S04_AXI_rready("S04_AXI_rready"), S05_AXI_awid("S05_AXI_awid"), S05_AXI_awaddr("S05_AXI_awaddr"), S05_AXI_awlen("S05_AXI_awlen"), S05_AXI_awsize("S05_AXI_awsize"), S05_AXI_awburst("S05_AXI_awburst"), S05_AXI_awlock("S05_AXI_awlock"), S05_AXI_awcache("S05_AXI_awcache"), S05_AXI_awprot("S05_AXI_awprot"), S05_AXI_awqos("S05_AXI_awqos"), S05_AXI_awvalid("S05_AXI_awvalid"), S05_AXI_awready("S05_AXI_awready"), S05_AXI_wdata("S05_AXI_wdata"), S05_AXI_wstrb("S05_AXI_wstrb"), S05_AXI_wlast("S05_AXI_wlast"), S05_AXI_wvalid("S05_AXI_wvalid"), S05_AXI_wready("S05_AXI_wready"), S05_AXI_bid("S05_AXI_bid"), S05_AXI_bresp("S05_AXI_bresp"), S05_AXI_bvalid("S05_AXI_bvalid"), S05_AXI_bready("S05_AXI_bready"), S05_AXI_arid("S05_AXI_arid"), S05_AXI_araddr("S05_AXI_araddr"), S05_AXI_arlen("S05_AXI_arlen"), S05_AXI_arsize("S05_AXI_arsize"), S05_AXI_arburst("S05_AXI_arburst"), S05_AXI_arlock("S05_AXI_arlock"), S05_AXI_arcache("S05_AXI_arcache"), S05_AXI_arprot("S05_AXI_arprot"), S05_AXI_arqos("S05_AXI_arqos"), S05_AXI_arvalid("S05_AXI_arvalid"), S05_AXI_arready("S05_AXI_arready"), S05_AXI_rid("S05_AXI_rid"), S05_AXI_rdata("S05_AXI_rdata"), S05_AXI_rresp("S05_AXI_rresp"), S05_AXI_rlast("S05_AXI_rlast"), S05_AXI_rvalid("S05_AXI_rvalid"), S05_AXI_rready("S05_AXI_rready"), S06_AXI_awid("S06_AXI_awid"), S06_AXI_awaddr("S06_AXI_awaddr"), S06_AXI_awlen("S06_AXI_awlen"), S06_AXI_awsize("S06_AXI_awsize"), S06_AXI_awburst("S06_AXI_awburst"), S06_AXI_awlock("S06_AXI_awlock"), S06_AXI_awcache("S06_AXI_awcache"), S06_AXI_awprot("S06_AXI_awprot"), S06_AXI_awqos("S06_AXI_awqos"), S06_AXI_awvalid("S06_AXI_awvalid"), S06_AXI_awready("S06_AXI_awready"), S06_AXI_wdata("S06_AXI_wdata"), S06_AXI_wstrb("S06_AXI_wstrb"), S06_AXI_wlast("S06_AXI_wlast"), S06_AXI_wvalid("S06_AXI_wvalid"), S06_AXI_wready("S06_AXI_wready"), S06_AXI_bid("S06_AXI_bid"), S06_AXI_bresp("S06_AXI_bresp"), S06_AXI_bvalid("S06_AXI_bvalid"), S06_AXI_bready("S06_AXI_bready"), S06_AXI_arid("S06_AXI_arid"), S06_AXI_araddr("S06_AXI_araddr"), S06_AXI_arlen("S06_AXI_arlen"), S06_AXI_arsize("S06_AXI_arsize"), S06_AXI_arburst("S06_AXI_arburst"), S06_AXI_arlock("S06_AXI_arlock"), S06_AXI_arcache("S06_AXI_arcache"), S06_AXI_arprot("S06_AXI_arprot"), S06_AXI_arqos("S06_AXI_arqos"), S06_AXI_arvalid("S06_AXI_arvalid"), S06_AXI_arready("S06_AXI_arready"), S06_AXI_rid("S06_AXI_rid"), S06_AXI_rdata("S06_AXI_rdata"), S06_AXI_rresp("S06_AXI_rresp"), S06_AXI_rlast("S06_AXI_rlast"), S06_AXI_rvalid("S06_AXI_rvalid"), S06_AXI_rready("S06_AXI_rready"), S07_AXI_awid("S07_AXI_awid"), S07_AXI_awaddr("S07_AXI_awaddr"), S07_AXI_awlen("S07_AXI_awlen"), S07_AXI_awsize("S07_AXI_awsize"), S07_AXI_awburst("S07_AXI_awburst"), S07_AXI_awlock("S07_AXI_awlock"), S07_AXI_awcache("S07_AXI_awcache"), S07_AXI_awprot("S07_AXI_awprot"), S07_AXI_awqos("S07_AXI_awqos"), S07_AXI_awvalid("S07_AXI_awvalid"), S07_AXI_awready("S07_AXI_awready"), S07_AXI_wdata("S07_AXI_wdata"), S07_AXI_wstrb("S07_AXI_wstrb"), S07_AXI_wlast("S07_AXI_wlast"), S07_AXI_wvalid("S07_AXI_wvalid"), S07_AXI_wready("S07_AXI_wready"), S07_AXI_bid("S07_AXI_bid"), S07_AXI_bresp("S07_AXI_bresp"), S07_AXI_bvalid("S07_AXI_bvalid"), S07_AXI_bready("S07_AXI_bready"), S07_AXI_arid("S07_AXI_arid"), S07_AXI_araddr("S07_AXI_araddr"), S07_AXI_arlen("S07_AXI_arlen"), S07_AXI_arsize("S07_AXI_arsize"), S07_AXI_arburst("S07_AXI_arburst"), S07_AXI_arlock("S07_AXI_arlock"), S07_AXI_arcache("S07_AXI_arcache"), S07_AXI_arprot("S07_AXI_arprot"), S07_AXI_arqos("S07_AXI_arqos"), S07_AXI_arvalid("S07_AXI_arvalid"), S07_AXI_arready("S07_AXI_arready"), S07_AXI_rid("S07_AXI_rid"), S07_AXI_rdata("S07_AXI_rdata"), S07_AXI_rresp("S07_AXI_rresp"), S07_AXI_rlast("S07_AXI_rlast"), S07_AXI_rvalid("S07_AXI_rvalid"), S07_AXI_rready("S07_AXI_rready"), S08_AXI_awid("S08_AXI_awid"), S08_AXI_awaddr("S08_AXI_awaddr"), S08_AXI_awlen("S08_AXI_awlen"), S08_AXI_awsize("S08_AXI_awsize"), S08_AXI_awburst("S08_AXI_awburst"), S08_AXI_awlock("S08_AXI_awlock"), S08_AXI_awcache("S08_AXI_awcache"), S08_AXI_awprot("S08_AXI_awprot"), S08_AXI_awqos("S08_AXI_awqos"), S08_AXI_awvalid("S08_AXI_awvalid"), S08_AXI_awready("S08_AXI_awready"), S08_AXI_wdata("S08_AXI_wdata"), S08_AXI_wstrb("S08_AXI_wstrb"), S08_AXI_wlast("S08_AXI_wlast"), S08_AXI_wvalid("S08_AXI_wvalid"), S08_AXI_wready("S08_AXI_wready"), S08_AXI_bid("S08_AXI_bid"), S08_AXI_bresp("S08_AXI_bresp"), S08_AXI_bvalid("S08_AXI_bvalid"), S08_AXI_bready("S08_AXI_bready"), S08_AXI_arid("S08_AXI_arid"), S08_AXI_araddr("S08_AXI_araddr"), S08_AXI_arlen("S08_AXI_arlen"), S08_AXI_arsize("S08_AXI_arsize"), S08_AXI_arburst("S08_AXI_arburst"), S08_AXI_arlock("S08_AXI_arlock"), S08_AXI_arcache("S08_AXI_arcache"), S08_AXI_arprot("S08_AXI_arprot"), S08_AXI_arqos("S08_AXI_arqos"), S08_AXI_arvalid("S08_AXI_arvalid"), S08_AXI_arready("S08_AXI_arready"), S08_AXI_rid("S08_AXI_rid"), S08_AXI_rdata("S08_AXI_rdata"), S08_AXI_rresp("S08_AXI_rresp"), S08_AXI_rlast("S08_AXI_rlast"), S08_AXI_rvalid("S08_AXI_rvalid"), S08_AXI_rready("S08_AXI_rready"), S09_AXI_awid("S09_AXI_awid"), S09_AXI_awaddr("S09_AXI_awaddr"), S09_AXI_awlen("S09_AXI_awlen"), S09_AXI_awsize("S09_AXI_awsize"), S09_AXI_awburst("S09_AXI_awburst"), S09_AXI_awlock("S09_AXI_awlock"), S09_AXI_awcache("S09_AXI_awcache"), S09_AXI_awprot("S09_AXI_awprot"), S09_AXI_awqos("S09_AXI_awqos"), S09_AXI_awvalid("S09_AXI_awvalid"), S09_AXI_awready("S09_AXI_awready"), S09_AXI_wdata("S09_AXI_wdata"), S09_AXI_wstrb("S09_AXI_wstrb"), S09_AXI_wlast("S09_AXI_wlast"), S09_AXI_wvalid("S09_AXI_wvalid"), S09_AXI_wready("S09_AXI_wready"), S09_AXI_bid("S09_AXI_bid"), S09_AXI_bresp("S09_AXI_bresp"), S09_AXI_bvalid("S09_AXI_bvalid"), S09_AXI_bready("S09_AXI_bready"), S09_AXI_arid("S09_AXI_arid"), S09_AXI_araddr("S09_AXI_araddr"), S09_AXI_arlen("S09_AXI_arlen"), S09_AXI_arsize("S09_AXI_arsize"), S09_AXI_arburst("S09_AXI_arburst"), S09_AXI_arlock("S09_AXI_arlock"), S09_AXI_arcache("S09_AXI_arcache"), S09_AXI_arprot("S09_AXI_arprot"), S09_AXI_arqos("S09_AXI_arqos"), S09_AXI_arvalid("S09_AXI_arvalid"), S09_AXI_arready("S09_AXI_arready"), S09_AXI_rid("S09_AXI_rid"), S09_AXI_rdata("S09_AXI_rdata"), S09_AXI_rresp("S09_AXI_rresp"), S09_AXI_rlast("S09_AXI_rlast"), S09_AXI_rvalid("S09_AXI_rvalid"), S09_AXI_rready("S09_AXI_rready"), S10_AXI_awid("S10_AXI_awid"), S10_AXI_awaddr("S10_AXI_awaddr"), S10_AXI_awlen("S10_AXI_awlen"), S10_AXI_awsize("S10_AXI_awsize"), S10_AXI_awburst("S10_AXI_awburst"), S10_AXI_awlock("S10_AXI_awlock"), S10_AXI_awcache("S10_AXI_awcache"), S10_AXI_awprot("S10_AXI_awprot"), S10_AXI_awqos("S10_AXI_awqos"), S10_AXI_awvalid("S10_AXI_awvalid"), S10_AXI_awready("S10_AXI_awready"), S10_AXI_wdata("S10_AXI_wdata"), S10_AXI_wstrb("S10_AXI_wstrb"), S10_AXI_wlast("S10_AXI_wlast"), S10_AXI_wvalid("S10_AXI_wvalid"), S10_AXI_wready("S10_AXI_wready"), S10_AXI_bid("S10_AXI_bid"), S10_AXI_bresp("S10_AXI_bresp"), S10_AXI_bvalid("S10_AXI_bvalid"), S10_AXI_bready("S10_AXI_bready"), S10_AXI_arid("S10_AXI_arid"), S10_AXI_araddr("S10_AXI_araddr"), S10_AXI_arlen("S10_AXI_arlen"), S10_AXI_arsize("S10_AXI_arsize"), S10_AXI_arburst("S10_AXI_arburst"), S10_AXI_arlock("S10_AXI_arlock"), S10_AXI_arcache("S10_AXI_arcache"), S10_AXI_arprot("S10_AXI_arprot"), S10_AXI_arqos("S10_AXI_arqos"), S10_AXI_arvalid("S10_AXI_arvalid"), S10_AXI_arready("S10_AXI_arready"), S10_AXI_rid("S10_AXI_rid"), S10_AXI_rdata("S10_AXI_rdata"), S10_AXI_rresp("S10_AXI_rresp"), S10_AXI_rlast("S10_AXI_rlast"), S10_AXI_rvalid("S10_AXI_rvalid"), S10_AXI_rready("S10_AXI_rready"), S11_AXI_awid("S11_AXI_awid"), S11_AXI_awaddr("S11_AXI_awaddr"), S11_AXI_awlen("S11_AXI_awlen"), S11_AXI_awsize("S11_AXI_awsize"), S11_AXI_awburst("S11_AXI_awburst"), S11_AXI_awlock("S11_AXI_awlock"), S11_AXI_awcache("S11_AXI_awcache"), S11_AXI_awprot("S11_AXI_awprot"), S11_AXI_awqos("S11_AXI_awqos"), S11_AXI_awvalid("S11_AXI_awvalid"), S11_AXI_awready("S11_AXI_awready"), S11_AXI_wdata("S11_AXI_wdata"), S11_AXI_wstrb("S11_AXI_wstrb"), S11_AXI_wlast("S11_AXI_wlast"), S11_AXI_wvalid("S11_AXI_wvalid"), S11_AXI_wready("S11_AXI_wready"), S11_AXI_bid("S11_AXI_bid"), S11_AXI_bresp("S11_AXI_bresp"), S11_AXI_bvalid("S11_AXI_bvalid"), S11_AXI_bready("S11_AXI_bready"), S11_AXI_arid("S11_AXI_arid"), S11_AXI_araddr("S11_AXI_araddr"), S11_AXI_arlen("S11_AXI_arlen"), S11_AXI_arsize("S11_AXI_arsize"), S11_AXI_arburst("S11_AXI_arburst"), S11_AXI_arlock("S11_AXI_arlock"), S11_AXI_arcache("S11_AXI_arcache"), S11_AXI_arprot("S11_AXI_arprot"), S11_AXI_arqos("S11_AXI_arqos"), S11_AXI_arvalid("S11_AXI_arvalid"), S11_AXI_arready("S11_AXI_arready"), S11_AXI_rid("S11_AXI_rid"), S11_AXI_rdata("S11_AXI_rdata"), S11_AXI_rresp("S11_AXI_rresp"), S11_AXI_rlast("S11_AXI_rlast"), S11_AXI_rvalid("S11_AXI_rvalid"), S11_AXI_rready("S11_AXI_rready"), S12_AXI_awid("S12_AXI_awid"), S12_AXI_awaddr("S12_AXI_awaddr"), S12_AXI_awlen("S12_AXI_awlen"), S12_AXI_awsize("S12_AXI_awsize"), S12_AXI_awburst("S12_AXI_awburst"), S12_AXI_awlock("S12_AXI_awlock"), S12_AXI_awcache("S12_AXI_awcache"), S12_AXI_awprot("S12_AXI_awprot"), S12_AXI_awqos("S12_AXI_awqos"), S12_AXI_awvalid("S12_AXI_awvalid"), S12_AXI_awready("S12_AXI_awready"), S12_AXI_wdata("S12_AXI_wdata"), S12_AXI_wstrb("S12_AXI_wstrb"), S12_AXI_wlast("S12_AXI_wlast"), S12_AXI_wvalid("S12_AXI_wvalid"), S12_AXI_wready("S12_AXI_wready"), S12_AXI_bid("S12_AXI_bid"), S12_AXI_bresp("S12_AXI_bresp"), S12_AXI_bvalid("S12_AXI_bvalid"), S12_AXI_bready("S12_AXI_bready"), S12_AXI_arid("S12_AXI_arid"), S12_AXI_araddr("S12_AXI_araddr"), S12_AXI_arlen("S12_AXI_arlen"), S12_AXI_arsize("S12_AXI_arsize"), S12_AXI_arburst("S12_AXI_arburst"), S12_AXI_arlock("S12_AXI_arlock"), S12_AXI_arcache("S12_AXI_arcache"), S12_AXI_arprot("S12_AXI_arprot"), S12_AXI_arqos("S12_AXI_arqos"), S12_AXI_arvalid("S12_AXI_arvalid"), S12_AXI_arready("S12_AXI_arready"), S12_AXI_rid("S12_AXI_rid"), S12_AXI_rdata("S12_AXI_rdata"), S12_AXI_rresp("S12_AXI_rresp"), S12_AXI_rlast("S12_AXI_rlast"), S12_AXI_rvalid("S12_AXI_rvalid"), S12_AXI_rready("S12_AXI_rready"), S13_AXI_awid("S13_AXI_awid"), S13_AXI_awaddr("S13_AXI_awaddr"), S13_AXI_awlen("S13_AXI_awlen"), S13_AXI_awsize("S13_AXI_awsize"), S13_AXI_awburst("S13_AXI_awburst"), S13_AXI_awlock("S13_AXI_awlock"), S13_AXI_awcache("S13_AXI_awcache"), S13_AXI_awprot("S13_AXI_awprot"), S13_AXI_awqos("S13_AXI_awqos"), S13_AXI_awvalid("S13_AXI_awvalid"), S13_AXI_awready("S13_AXI_awready"), S13_AXI_wdata("S13_AXI_wdata"), S13_AXI_wstrb("S13_AXI_wstrb"), S13_AXI_wlast("S13_AXI_wlast"), S13_AXI_wvalid("S13_AXI_wvalid"), S13_AXI_wready("S13_AXI_wready"), S13_AXI_bid("S13_AXI_bid"), S13_AXI_bresp("S13_AXI_bresp"), S13_AXI_bvalid("S13_AXI_bvalid"), S13_AXI_bready("S13_AXI_bready"), S13_AXI_arid("S13_AXI_arid"), S13_AXI_araddr("S13_AXI_araddr"), S13_AXI_arlen("S13_AXI_arlen"), S13_AXI_arsize("S13_AXI_arsize"), S13_AXI_arburst("S13_AXI_arburst"), S13_AXI_arlock("S13_AXI_arlock"), S13_AXI_arcache("S13_AXI_arcache"), S13_AXI_arprot("S13_AXI_arprot"), S13_AXI_arqos("S13_AXI_arqos"), S13_AXI_arvalid("S13_AXI_arvalid"), S13_AXI_arready("S13_AXI_arready"), S13_AXI_rid("S13_AXI_rid"), S13_AXI_rdata("S13_AXI_rdata"), S13_AXI_rresp("S13_AXI_rresp"), S13_AXI_rlast("S13_AXI_rlast"), S13_AXI_rvalid("S13_AXI_rvalid"), S13_AXI_rready("S13_AXI_rready"), S14_AXI_awid("S14_AXI_awid"), S14_AXI_awaddr("S14_AXI_awaddr"), S14_AXI_awlen("S14_AXI_awlen"), S14_AXI_awsize("S14_AXI_awsize"), S14_AXI_awburst("S14_AXI_awburst"), S14_AXI_awlock("S14_AXI_awlock"), S14_AXI_awcache("S14_AXI_awcache"), S14_AXI_awprot("S14_AXI_awprot"), S14_AXI_awqos("S14_AXI_awqos"), S14_AXI_awvalid("S14_AXI_awvalid"), S14_AXI_awready("S14_AXI_awready"), S14_AXI_wdata("S14_AXI_wdata"), S14_AXI_wstrb("S14_AXI_wstrb"), S14_AXI_wlast("S14_AXI_wlast"), S14_AXI_wvalid("S14_AXI_wvalid"), S14_AXI_wready("S14_AXI_wready"), S14_AXI_bid("S14_AXI_bid"), S14_AXI_bresp("S14_AXI_bresp"), S14_AXI_bvalid("S14_AXI_bvalid"), S14_AXI_bready("S14_AXI_bready"), S14_AXI_arid("S14_AXI_arid"), S14_AXI_araddr("S14_AXI_araddr"), S14_AXI_arlen("S14_AXI_arlen"), S14_AXI_arsize("S14_AXI_arsize"), S14_AXI_arburst("S14_AXI_arburst"), S14_AXI_arlock("S14_AXI_arlock"), S14_AXI_arcache("S14_AXI_arcache"), S14_AXI_arprot("S14_AXI_arprot"), S14_AXI_arqos("S14_AXI_arqos"), S14_AXI_arvalid("S14_AXI_arvalid"), S14_AXI_arready("S14_AXI_arready"), S14_AXI_rid("S14_AXI_rid"), S14_AXI_rdata("S14_AXI_rdata"), S14_AXI_rresp("S14_AXI_rresp"), S14_AXI_rlast("S14_AXI_rlast"), S14_AXI_rvalid("S14_AXI_rvalid"), S14_AXI_rready("S14_AXI_rready"), S15_AXI_awid("S15_AXI_awid"), S15_AXI_awaddr("S15_AXI_awaddr"), S15_AXI_awlen("S15_AXI_awlen"), S15_AXI_awsize("S15_AXI_awsize"), S15_AXI_awburst("S15_AXI_awburst"), S15_AXI_awlock("S15_AXI_awlock"), S15_AXI_awcache("S15_AXI_awcache"), S15_AXI_awprot("S15_AXI_awprot"), S15_AXI_awqos("S15_AXI_awqos"), S15_AXI_awvalid("S15_AXI_awvalid"), S15_AXI_awready("S15_AXI_awready"), S15_AXI_wdata("S15_AXI_wdata"), S15_AXI_wstrb("S15_AXI_wstrb"), S15_AXI_wlast("S15_AXI_wlast"), S15_AXI_wvalid("S15_AXI_wvalid"), S15_AXI_wready("S15_AXI_wready"), S15_AXI_bid("S15_AXI_bid"), S15_AXI_bresp("S15_AXI_bresp"), S15_AXI_bvalid("S15_AXI_bvalid"), S15_AXI_bready("S15_AXI_bready"), S15_AXI_arid("S15_AXI_arid"), S15_AXI_araddr("S15_AXI_araddr"), S15_AXI_arlen("S15_AXI_arlen"), S15_AXI_arsize("S15_AXI_arsize"), S15_AXI_arburst("S15_AXI_arburst"), S15_AXI_arlock("S15_AXI_arlock"), S15_AXI_arcache("S15_AXI_arcache"), S15_AXI_arprot("S15_AXI_arprot"), S15_AXI_arqos("S15_AXI_arqos"), S15_AXI_arvalid("S15_AXI_arvalid"), S15_AXI_arready("S15_AXI_arready"), S15_AXI_rid("S15_AXI_rid"), S15_AXI_rdata("S15_AXI_rdata"), S15_AXI_rresp("S15_AXI_rresp"), S15_AXI_rlast("S15_AXI_rlast"), S15_AXI_rvalid("S15_AXI_rvalid"), S15_AXI_rready("S15_AXI_rready"), M00_AXI_awaddr("M00_AXI_awaddr"), M00_AXI_awlen("M00_AXI_awlen"), M00_AXI_awsize("M00_AXI_awsize"), M00_AXI_awburst("M00_AXI_awburst"), M00_AXI_awlock("M00_AXI_awlock"), M00_AXI_awcache("M00_AXI_awcache"), M00_AXI_awprot("M00_AXI_awprot"), M00_AXI_awqos("M00_AXI_awqos"), M00_AXI_awvalid("M00_AXI_awvalid"), M00_AXI_awready("M00_AXI_awready"), M00_AXI_wdata("M00_AXI_wdata"), M00_AXI_wstrb("M00_AXI_wstrb"), M00_AXI_wlast("M00_AXI_wlast"), M00_AXI_wvalid("M00_AXI_wvalid"), M00_AXI_wready("M00_AXI_wready"), M00_AXI_bresp("M00_AXI_bresp"), M00_AXI_bvalid("M00_AXI_bvalid"), M00_AXI_bready("M00_AXI_bready"), M00_AXI_araddr("M00_AXI_araddr"), M00_AXI_arlen("M00_AXI_arlen"), M00_AXI_arsize("M00_AXI_arsize"), M00_AXI_arburst("M00_AXI_arburst"), M00_AXI_arlock("M00_AXI_arlock"), M00_AXI_arcache("M00_AXI_arcache"), M00_AXI_arprot("M00_AXI_arprot"), M00_AXI_arqos("M00_AXI_arqos"), M00_AXI_arvalid("M00_AXI_arvalid"), M00_AXI_arready("M00_AXI_arready"), M00_AXI_rdata("M00_AXI_rdata"), M00_AXI_rresp("M00_AXI_rresp"), M00_AXI_rlast("M00_AXI_rlast"), M00_AXI_rvalid("M00_AXI_rvalid"), M00_AXI_rready("M00_AXI_rready")
{
  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_S00_AXI_awlock_converter = NULL;
  mp_S00_AXI_arlock_converter = NULL;
  mp_S01_AXI_transactor = NULL;
  mp_S01_AXI_awlock_converter = NULL;
  mp_S01_AXI_arlock_converter = NULL;
  mp_S02_AXI_transactor = NULL;
  mp_S02_AXI_awlock_converter = NULL;
  mp_S02_AXI_arlock_converter = NULL;
  mp_S03_AXI_transactor = NULL;
  mp_S03_AXI_awlock_converter = NULL;
  mp_S03_AXI_arlock_converter = NULL;
  mp_S04_AXI_transactor = NULL;
  mp_S04_AXI_awlock_converter = NULL;
  mp_S04_AXI_arlock_converter = NULL;
  mp_S05_AXI_transactor = NULL;
  mp_S05_AXI_awlock_converter = NULL;
  mp_S05_AXI_arlock_converter = NULL;
  mp_S06_AXI_transactor = NULL;
  mp_S06_AXI_awlock_converter = NULL;
  mp_S06_AXI_arlock_converter = NULL;
  mp_S07_AXI_transactor = NULL;
  mp_S07_AXI_awlock_converter = NULL;
  mp_S07_AXI_arlock_converter = NULL;
  mp_S08_AXI_transactor = NULL;
  mp_S08_AXI_awlock_converter = NULL;
  mp_S08_AXI_arlock_converter = NULL;
  mp_S09_AXI_transactor = NULL;
  mp_S09_AXI_awlock_converter = NULL;
  mp_S09_AXI_arlock_converter = NULL;
  mp_S10_AXI_transactor = NULL;
  mp_S10_AXI_awlock_converter = NULL;
  mp_S10_AXI_arlock_converter = NULL;
  mp_S11_AXI_transactor = NULL;
  mp_S11_AXI_awlock_converter = NULL;
  mp_S11_AXI_arlock_converter = NULL;
  mp_S12_AXI_transactor = NULL;
  mp_S12_AXI_awlock_converter = NULL;
  mp_S12_AXI_arlock_converter = NULL;
  mp_S13_AXI_transactor = NULL;
  mp_S13_AXI_awlock_converter = NULL;
  mp_S13_AXI_arlock_converter = NULL;
  mp_S14_AXI_transactor = NULL;
  mp_S14_AXI_awlock_converter = NULL;
  mp_S14_AXI_arlock_converter = NULL;
  mp_S15_AXI_transactor = NULL;
  mp_S15_AXI_awlock_converter = NULL;
  mp_S15_AXI_arlock_converter = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_M00_AXI_awlock_converter = NULL;
  mp_M00_AXI_arlock_converter = NULL;

  // Instantiate Socket Stubs

  // configure S00_AXI_transactor
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);
  mp_S00_AXI_transactor->AWID(S00_AXI_awid);
  mp_S00_AXI_transactor->AWADDR(S00_AXI_awaddr);
  mp_S00_AXI_transactor->AWLEN(S00_AXI_awlen);
  mp_S00_AXI_transactor->AWSIZE(S00_AXI_awsize);
  mp_S00_AXI_transactor->AWBURST(S00_AXI_awburst);
  mp_S00_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_awlock_converter");
  mp_S00_AXI_awlock_converter->vector_in(S00_AXI_awlock);
  mp_S00_AXI_awlock_converter->scalar_out(m_S00_AXI_awlock_converter_signal);
  mp_S00_AXI_transactor->AWLOCK(m_S00_AXI_awlock_converter_signal);
  mp_S00_AXI_transactor->AWCACHE(S00_AXI_awcache);
  mp_S00_AXI_transactor->AWPROT(S00_AXI_awprot);
  mp_S00_AXI_transactor->AWQOS(S00_AXI_awqos);
  mp_S00_AXI_transactor->AWVALID(S00_AXI_awvalid);
  mp_S00_AXI_transactor->AWREADY(S00_AXI_awready);
  mp_S00_AXI_transactor->WDATA(S00_AXI_wdata);
  mp_S00_AXI_transactor->WSTRB(S00_AXI_wstrb);
  mp_S00_AXI_transactor->WLAST(S00_AXI_wlast);
  mp_S00_AXI_transactor->WVALID(S00_AXI_wvalid);
  mp_S00_AXI_transactor->WREADY(S00_AXI_wready);
  mp_S00_AXI_transactor->BID(S00_AXI_bid);
  mp_S00_AXI_transactor->BRESP(S00_AXI_bresp);
  mp_S00_AXI_transactor->BVALID(S00_AXI_bvalid);
  mp_S00_AXI_transactor->BREADY(S00_AXI_bready);
  mp_S00_AXI_transactor->ARID(S00_AXI_arid);
  mp_S00_AXI_transactor->ARADDR(S00_AXI_araddr);
  mp_S00_AXI_transactor->ARLEN(S00_AXI_arlen);
  mp_S00_AXI_transactor->ARSIZE(S00_AXI_arsize);
  mp_S00_AXI_transactor->ARBURST(S00_AXI_arburst);
  mp_S00_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_arlock_converter");
  mp_S00_AXI_arlock_converter->vector_in(S00_AXI_arlock);
  mp_S00_AXI_arlock_converter->scalar_out(m_S00_AXI_arlock_converter_signal);
  mp_S00_AXI_transactor->ARLOCK(m_S00_AXI_arlock_converter_signal);
  mp_S00_AXI_transactor->ARCACHE(S00_AXI_arcache);
  mp_S00_AXI_transactor->ARPROT(S00_AXI_arprot);
  mp_S00_AXI_transactor->ARQOS(S00_AXI_arqos);
  mp_S00_AXI_transactor->ARVALID(S00_AXI_arvalid);
  mp_S00_AXI_transactor->ARREADY(S00_AXI_arready);
  mp_S00_AXI_transactor->RID(S00_AXI_rid);
  mp_S00_AXI_transactor->RDATA(S00_AXI_rdata);
  mp_S00_AXI_transactor->RRESP(S00_AXI_rresp);
  mp_S00_AXI_transactor->RLAST(S00_AXI_rlast);
  mp_S00_AXI_transactor->RVALID(S00_AXI_rvalid);
  mp_S00_AXI_transactor->RREADY(S00_AXI_rready);
  mp_S00_AXI_transactor->CLK(aclk);
  mp_S00_AXI_transactor->RST(aresetn);
  // configure S01_AXI_transactor
    xsc::common_cpp::properties S01_AXI_transactor_param_props;
    S01_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S01_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S01_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S01_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S01_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S01_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S01_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S01_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S01_AXI_transactor", S01_AXI_transactor_param_props);
  mp_S01_AXI_transactor->AWID(S01_AXI_awid);
  mp_S01_AXI_transactor->AWADDR(S01_AXI_awaddr);
  mp_S01_AXI_transactor->AWLEN(S01_AXI_awlen);
  mp_S01_AXI_transactor->AWSIZE(S01_AXI_awsize);
  mp_S01_AXI_transactor->AWBURST(S01_AXI_awburst);
  mp_S01_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_awlock_converter");
  mp_S01_AXI_awlock_converter->vector_in(S01_AXI_awlock);
  mp_S01_AXI_awlock_converter->scalar_out(m_S01_AXI_awlock_converter_signal);
  mp_S01_AXI_transactor->AWLOCK(m_S01_AXI_awlock_converter_signal);
  mp_S01_AXI_transactor->AWCACHE(S01_AXI_awcache);
  mp_S01_AXI_transactor->AWPROT(S01_AXI_awprot);
  mp_S01_AXI_transactor->AWQOS(S01_AXI_awqos);
  mp_S01_AXI_transactor->AWVALID(S01_AXI_awvalid);
  mp_S01_AXI_transactor->AWREADY(S01_AXI_awready);
  mp_S01_AXI_transactor->WDATA(S01_AXI_wdata);
  mp_S01_AXI_transactor->WSTRB(S01_AXI_wstrb);
  mp_S01_AXI_transactor->WLAST(S01_AXI_wlast);
  mp_S01_AXI_transactor->WVALID(S01_AXI_wvalid);
  mp_S01_AXI_transactor->WREADY(S01_AXI_wready);
  mp_S01_AXI_transactor->BID(S01_AXI_bid);
  mp_S01_AXI_transactor->BRESP(S01_AXI_bresp);
  mp_S01_AXI_transactor->BVALID(S01_AXI_bvalid);
  mp_S01_AXI_transactor->BREADY(S01_AXI_bready);
  mp_S01_AXI_transactor->ARID(S01_AXI_arid);
  mp_S01_AXI_transactor->ARADDR(S01_AXI_araddr);
  mp_S01_AXI_transactor->ARLEN(S01_AXI_arlen);
  mp_S01_AXI_transactor->ARSIZE(S01_AXI_arsize);
  mp_S01_AXI_transactor->ARBURST(S01_AXI_arburst);
  mp_S01_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_arlock_converter");
  mp_S01_AXI_arlock_converter->vector_in(S01_AXI_arlock);
  mp_S01_AXI_arlock_converter->scalar_out(m_S01_AXI_arlock_converter_signal);
  mp_S01_AXI_transactor->ARLOCK(m_S01_AXI_arlock_converter_signal);
  mp_S01_AXI_transactor->ARCACHE(S01_AXI_arcache);
  mp_S01_AXI_transactor->ARPROT(S01_AXI_arprot);
  mp_S01_AXI_transactor->ARQOS(S01_AXI_arqos);
  mp_S01_AXI_transactor->ARVALID(S01_AXI_arvalid);
  mp_S01_AXI_transactor->ARREADY(S01_AXI_arready);
  mp_S01_AXI_transactor->RID(S01_AXI_rid);
  mp_S01_AXI_transactor->RDATA(S01_AXI_rdata);
  mp_S01_AXI_transactor->RRESP(S01_AXI_rresp);
  mp_S01_AXI_transactor->RLAST(S01_AXI_rlast);
  mp_S01_AXI_transactor->RVALID(S01_AXI_rvalid);
  mp_S01_AXI_transactor->RREADY(S01_AXI_rready);
  mp_S01_AXI_transactor->CLK(aclk);
  mp_S01_AXI_transactor->RST(aresetn);
  // configure S02_AXI_transactor
    xsc::common_cpp::properties S02_AXI_transactor_param_props;
    S02_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S02_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S02_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S02_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S02_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S02_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S02_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S02_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S02_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S02_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S02_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S02_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S02_AXI_transactor", S02_AXI_transactor_param_props);
  mp_S02_AXI_transactor->AWID(S02_AXI_awid);
  mp_S02_AXI_transactor->AWADDR(S02_AXI_awaddr);
  mp_S02_AXI_transactor->AWLEN(S02_AXI_awlen);
  mp_S02_AXI_transactor->AWSIZE(S02_AXI_awsize);
  mp_S02_AXI_transactor->AWBURST(S02_AXI_awburst);
  mp_S02_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_awlock_converter");
  mp_S02_AXI_awlock_converter->vector_in(S02_AXI_awlock);
  mp_S02_AXI_awlock_converter->scalar_out(m_S02_AXI_awlock_converter_signal);
  mp_S02_AXI_transactor->AWLOCK(m_S02_AXI_awlock_converter_signal);
  mp_S02_AXI_transactor->AWCACHE(S02_AXI_awcache);
  mp_S02_AXI_transactor->AWPROT(S02_AXI_awprot);
  mp_S02_AXI_transactor->AWQOS(S02_AXI_awqos);
  mp_S02_AXI_transactor->AWVALID(S02_AXI_awvalid);
  mp_S02_AXI_transactor->AWREADY(S02_AXI_awready);
  mp_S02_AXI_transactor->WDATA(S02_AXI_wdata);
  mp_S02_AXI_transactor->WSTRB(S02_AXI_wstrb);
  mp_S02_AXI_transactor->WLAST(S02_AXI_wlast);
  mp_S02_AXI_transactor->WVALID(S02_AXI_wvalid);
  mp_S02_AXI_transactor->WREADY(S02_AXI_wready);
  mp_S02_AXI_transactor->BID(S02_AXI_bid);
  mp_S02_AXI_transactor->BRESP(S02_AXI_bresp);
  mp_S02_AXI_transactor->BVALID(S02_AXI_bvalid);
  mp_S02_AXI_transactor->BREADY(S02_AXI_bready);
  mp_S02_AXI_transactor->ARID(S02_AXI_arid);
  mp_S02_AXI_transactor->ARADDR(S02_AXI_araddr);
  mp_S02_AXI_transactor->ARLEN(S02_AXI_arlen);
  mp_S02_AXI_transactor->ARSIZE(S02_AXI_arsize);
  mp_S02_AXI_transactor->ARBURST(S02_AXI_arburst);
  mp_S02_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_arlock_converter");
  mp_S02_AXI_arlock_converter->vector_in(S02_AXI_arlock);
  mp_S02_AXI_arlock_converter->scalar_out(m_S02_AXI_arlock_converter_signal);
  mp_S02_AXI_transactor->ARLOCK(m_S02_AXI_arlock_converter_signal);
  mp_S02_AXI_transactor->ARCACHE(S02_AXI_arcache);
  mp_S02_AXI_transactor->ARPROT(S02_AXI_arprot);
  mp_S02_AXI_transactor->ARQOS(S02_AXI_arqos);
  mp_S02_AXI_transactor->ARVALID(S02_AXI_arvalid);
  mp_S02_AXI_transactor->ARREADY(S02_AXI_arready);
  mp_S02_AXI_transactor->RID(S02_AXI_rid);
  mp_S02_AXI_transactor->RDATA(S02_AXI_rdata);
  mp_S02_AXI_transactor->RRESP(S02_AXI_rresp);
  mp_S02_AXI_transactor->RLAST(S02_AXI_rlast);
  mp_S02_AXI_transactor->RVALID(S02_AXI_rvalid);
  mp_S02_AXI_transactor->RREADY(S02_AXI_rready);
  mp_S02_AXI_transactor->CLK(aclk);
  mp_S02_AXI_transactor->RST(aresetn);
  // configure S03_AXI_transactor
    xsc::common_cpp::properties S03_AXI_transactor_param_props;
    S03_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S03_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S03_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S03_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S03_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S03_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S03_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S03_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S03_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S03_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S03_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S03_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S03_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S03_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S03_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S03_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S03_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S03_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S03_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S03_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S03_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S03_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S03_AXI_transactor", S03_AXI_transactor_param_props);
  mp_S03_AXI_transactor->AWID(S03_AXI_awid);
  mp_S03_AXI_transactor->AWADDR(S03_AXI_awaddr);
  mp_S03_AXI_transactor->AWLEN(S03_AXI_awlen);
  mp_S03_AXI_transactor->AWSIZE(S03_AXI_awsize);
  mp_S03_AXI_transactor->AWBURST(S03_AXI_awburst);
  mp_S03_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_awlock_converter");
  mp_S03_AXI_awlock_converter->vector_in(S03_AXI_awlock);
  mp_S03_AXI_awlock_converter->scalar_out(m_S03_AXI_awlock_converter_signal);
  mp_S03_AXI_transactor->AWLOCK(m_S03_AXI_awlock_converter_signal);
  mp_S03_AXI_transactor->AWCACHE(S03_AXI_awcache);
  mp_S03_AXI_transactor->AWPROT(S03_AXI_awprot);
  mp_S03_AXI_transactor->AWQOS(S03_AXI_awqos);
  mp_S03_AXI_transactor->AWVALID(S03_AXI_awvalid);
  mp_S03_AXI_transactor->AWREADY(S03_AXI_awready);
  mp_S03_AXI_transactor->WDATA(S03_AXI_wdata);
  mp_S03_AXI_transactor->WSTRB(S03_AXI_wstrb);
  mp_S03_AXI_transactor->WLAST(S03_AXI_wlast);
  mp_S03_AXI_transactor->WVALID(S03_AXI_wvalid);
  mp_S03_AXI_transactor->WREADY(S03_AXI_wready);
  mp_S03_AXI_transactor->BID(S03_AXI_bid);
  mp_S03_AXI_transactor->BRESP(S03_AXI_bresp);
  mp_S03_AXI_transactor->BVALID(S03_AXI_bvalid);
  mp_S03_AXI_transactor->BREADY(S03_AXI_bready);
  mp_S03_AXI_transactor->ARID(S03_AXI_arid);
  mp_S03_AXI_transactor->ARADDR(S03_AXI_araddr);
  mp_S03_AXI_transactor->ARLEN(S03_AXI_arlen);
  mp_S03_AXI_transactor->ARSIZE(S03_AXI_arsize);
  mp_S03_AXI_transactor->ARBURST(S03_AXI_arburst);
  mp_S03_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_arlock_converter");
  mp_S03_AXI_arlock_converter->vector_in(S03_AXI_arlock);
  mp_S03_AXI_arlock_converter->scalar_out(m_S03_AXI_arlock_converter_signal);
  mp_S03_AXI_transactor->ARLOCK(m_S03_AXI_arlock_converter_signal);
  mp_S03_AXI_transactor->ARCACHE(S03_AXI_arcache);
  mp_S03_AXI_transactor->ARPROT(S03_AXI_arprot);
  mp_S03_AXI_transactor->ARQOS(S03_AXI_arqos);
  mp_S03_AXI_transactor->ARVALID(S03_AXI_arvalid);
  mp_S03_AXI_transactor->ARREADY(S03_AXI_arready);
  mp_S03_AXI_transactor->RID(S03_AXI_rid);
  mp_S03_AXI_transactor->RDATA(S03_AXI_rdata);
  mp_S03_AXI_transactor->RRESP(S03_AXI_rresp);
  mp_S03_AXI_transactor->RLAST(S03_AXI_rlast);
  mp_S03_AXI_transactor->RVALID(S03_AXI_rvalid);
  mp_S03_AXI_transactor->RREADY(S03_AXI_rready);
  mp_S03_AXI_transactor->CLK(aclk);
  mp_S03_AXI_transactor->RST(aresetn);
  // configure S04_AXI_transactor
    xsc::common_cpp::properties S04_AXI_transactor_param_props;
    S04_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S04_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S04_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S04_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S04_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S04_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S04_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S04_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S04_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S04_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S04_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S04_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S04_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S04_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S04_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S04_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S04_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S04_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S04_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S04_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S04_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S04_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S04_AXI_transactor", S04_AXI_transactor_param_props);
  mp_S04_AXI_transactor->AWID(S04_AXI_awid);
  mp_S04_AXI_transactor->AWADDR(S04_AXI_awaddr);
  mp_S04_AXI_transactor->AWLEN(S04_AXI_awlen);
  mp_S04_AXI_transactor->AWSIZE(S04_AXI_awsize);
  mp_S04_AXI_transactor->AWBURST(S04_AXI_awburst);
  mp_S04_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_awlock_converter");
  mp_S04_AXI_awlock_converter->vector_in(S04_AXI_awlock);
  mp_S04_AXI_awlock_converter->scalar_out(m_S04_AXI_awlock_converter_signal);
  mp_S04_AXI_transactor->AWLOCK(m_S04_AXI_awlock_converter_signal);
  mp_S04_AXI_transactor->AWCACHE(S04_AXI_awcache);
  mp_S04_AXI_transactor->AWPROT(S04_AXI_awprot);
  mp_S04_AXI_transactor->AWQOS(S04_AXI_awqos);
  mp_S04_AXI_transactor->AWVALID(S04_AXI_awvalid);
  mp_S04_AXI_transactor->AWREADY(S04_AXI_awready);
  mp_S04_AXI_transactor->WDATA(S04_AXI_wdata);
  mp_S04_AXI_transactor->WSTRB(S04_AXI_wstrb);
  mp_S04_AXI_transactor->WLAST(S04_AXI_wlast);
  mp_S04_AXI_transactor->WVALID(S04_AXI_wvalid);
  mp_S04_AXI_transactor->WREADY(S04_AXI_wready);
  mp_S04_AXI_transactor->BID(S04_AXI_bid);
  mp_S04_AXI_transactor->BRESP(S04_AXI_bresp);
  mp_S04_AXI_transactor->BVALID(S04_AXI_bvalid);
  mp_S04_AXI_transactor->BREADY(S04_AXI_bready);
  mp_S04_AXI_transactor->ARID(S04_AXI_arid);
  mp_S04_AXI_transactor->ARADDR(S04_AXI_araddr);
  mp_S04_AXI_transactor->ARLEN(S04_AXI_arlen);
  mp_S04_AXI_transactor->ARSIZE(S04_AXI_arsize);
  mp_S04_AXI_transactor->ARBURST(S04_AXI_arburst);
  mp_S04_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_arlock_converter");
  mp_S04_AXI_arlock_converter->vector_in(S04_AXI_arlock);
  mp_S04_AXI_arlock_converter->scalar_out(m_S04_AXI_arlock_converter_signal);
  mp_S04_AXI_transactor->ARLOCK(m_S04_AXI_arlock_converter_signal);
  mp_S04_AXI_transactor->ARCACHE(S04_AXI_arcache);
  mp_S04_AXI_transactor->ARPROT(S04_AXI_arprot);
  mp_S04_AXI_transactor->ARQOS(S04_AXI_arqos);
  mp_S04_AXI_transactor->ARVALID(S04_AXI_arvalid);
  mp_S04_AXI_transactor->ARREADY(S04_AXI_arready);
  mp_S04_AXI_transactor->RID(S04_AXI_rid);
  mp_S04_AXI_transactor->RDATA(S04_AXI_rdata);
  mp_S04_AXI_transactor->RRESP(S04_AXI_rresp);
  mp_S04_AXI_transactor->RLAST(S04_AXI_rlast);
  mp_S04_AXI_transactor->RVALID(S04_AXI_rvalid);
  mp_S04_AXI_transactor->RREADY(S04_AXI_rready);
  mp_S04_AXI_transactor->CLK(aclk);
  mp_S04_AXI_transactor->RST(aresetn);
  // configure S05_AXI_transactor
    xsc::common_cpp::properties S05_AXI_transactor_param_props;
    S05_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S05_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S05_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S05_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S05_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S05_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S05_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S05_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S05_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S05_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S05_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S05_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S05_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S05_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S05_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S05_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S05_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S05_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S05_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S05_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S05_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S05_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S05_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S05_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S05_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S05_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S05_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S05_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S05_AXI_transactor", S05_AXI_transactor_param_props);
  mp_S05_AXI_transactor->AWID(S05_AXI_awid);
  mp_S05_AXI_transactor->AWADDR(S05_AXI_awaddr);
  mp_S05_AXI_transactor->AWLEN(S05_AXI_awlen);
  mp_S05_AXI_transactor->AWSIZE(S05_AXI_awsize);
  mp_S05_AXI_transactor->AWBURST(S05_AXI_awburst);
  mp_S05_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S05_AXI_awlock_converter");
  mp_S05_AXI_awlock_converter->vector_in(S05_AXI_awlock);
  mp_S05_AXI_awlock_converter->scalar_out(m_S05_AXI_awlock_converter_signal);
  mp_S05_AXI_transactor->AWLOCK(m_S05_AXI_awlock_converter_signal);
  mp_S05_AXI_transactor->AWCACHE(S05_AXI_awcache);
  mp_S05_AXI_transactor->AWPROT(S05_AXI_awprot);
  mp_S05_AXI_transactor->AWQOS(S05_AXI_awqos);
  mp_S05_AXI_transactor->AWVALID(S05_AXI_awvalid);
  mp_S05_AXI_transactor->AWREADY(S05_AXI_awready);
  mp_S05_AXI_transactor->WDATA(S05_AXI_wdata);
  mp_S05_AXI_transactor->WSTRB(S05_AXI_wstrb);
  mp_S05_AXI_transactor->WLAST(S05_AXI_wlast);
  mp_S05_AXI_transactor->WVALID(S05_AXI_wvalid);
  mp_S05_AXI_transactor->WREADY(S05_AXI_wready);
  mp_S05_AXI_transactor->BID(S05_AXI_bid);
  mp_S05_AXI_transactor->BRESP(S05_AXI_bresp);
  mp_S05_AXI_transactor->BVALID(S05_AXI_bvalid);
  mp_S05_AXI_transactor->BREADY(S05_AXI_bready);
  mp_S05_AXI_transactor->ARID(S05_AXI_arid);
  mp_S05_AXI_transactor->ARADDR(S05_AXI_araddr);
  mp_S05_AXI_transactor->ARLEN(S05_AXI_arlen);
  mp_S05_AXI_transactor->ARSIZE(S05_AXI_arsize);
  mp_S05_AXI_transactor->ARBURST(S05_AXI_arburst);
  mp_S05_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S05_AXI_arlock_converter");
  mp_S05_AXI_arlock_converter->vector_in(S05_AXI_arlock);
  mp_S05_AXI_arlock_converter->scalar_out(m_S05_AXI_arlock_converter_signal);
  mp_S05_AXI_transactor->ARLOCK(m_S05_AXI_arlock_converter_signal);
  mp_S05_AXI_transactor->ARCACHE(S05_AXI_arcache);
  mp_S05_AXI_transactor->ARPROT(S05_AXI_arprot);
  mp_S05_AXI_transactor->ARQOS(S05_AXI_arqos);
  mp_S05_AXI_transactor->ARVALID(S05_AXI_arvalid);
  mp_S05_AXI_transactor->ARREADY(S05_AXI_arready);
  mp_S05_AXI_transactor->RID(S05_AXI_rid);
  mp_S05_AXI_transactor->RDATA(S05_AXI_rdata);
  mp_S05_AXI_transactor->RRESP(S05_AXI_rresp);
  mp_S05_AXI_transactor->RLAST(S05_AXI_rlast);
  mp_S05_AXI_transactor->RVALID(S05_AXI_rvalid);
  mp_S05_AXI_transactor->RREADY(S05_AXI_rready);
  mp_S05_AXI_transactor->CLK(aclk);
  mp_S05_AXI_transactor->RST(aresetn);
  // configure S06_AXI_transactor
    xsc::common_cpp::properties S06_AXI_transactor_param_props;
    S06_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S06_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S06_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S06_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S06_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S06_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S06_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S06_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S06_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S06_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S06_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S06_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S06_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S06_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S06_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S06_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S06_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S06_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S06_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S06_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S06_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S06_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S06_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S06_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S06_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S06_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S06_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S06_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S06_AXI_transactor", S06_AXI_transactor_param_props);
  mp_S06_AXI_transactor->AWID(S06_AXI_awid);
  mp_S06_AXI_transactor->AWADDR(S06_AXI_awaddr);
  mp_S06_AXI_transactor->AWLEN(S06_AXI_awlen);
  mp_S06_AXI_transactor->AWSIZE(S06_AXI_awsize);
  mp_S06_AXI_transactor->AWBURST(S06_AXI_awburst);
  mp_S06_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S06_AXI_awlock_converter");
  mp_S06_AXI_awlock_converter->vector_in(S06_AXI_awlock);
  mp_S06_AXI_awlock_converter->scalar_out(m_S06_AXI_awlock_converter_signal);
  mp_S06_AXI_transactor->AWLOCK(m_S06_AXI_awlock_converter_signal);
  mp_S06_AXI_transactor->AWCACHE(S06_AXI_awcache);
  mp_S06_AXI_transactor->AWPROT(S06_AXI_awprot);
  mp_S06_AXI_transactor->AWQOS(S06_AXI_awqos);
  mp_S06_AXI_transactor->AWVALID(S06_AXI_awvalid);
  mp_S06_AXI_transactor->AWREADY(S06_AXI_awready);
  mp_S06_AXI_transactor->WDATA(S06_AXI_wdata);
  mp_S06_AXI_transactor->WSTRB(S06_AXI_wstrb);
  mp_S06_AXI_transactor->WLAST(S06_AXI_wlast);
  mp_S06_AXI_transactor->WVALID(S06_AXI_wvalid);
  mp_S06_AXI_transactor->WREADY(S06_AXI_wready);
  mp_S06_AXI_transactor->BID(S06_AXI_bid);
  mp_S06_AXI_transactor->BRESP(S06_AXI_bresp);
  mp_S06_AXI_transactor->BVALID(S06_AXI_bvalid);
  mp_S06_AXI_transactor->BREADY(S06_AXI_bready);
  mp_S06_AXI_transactor->ARID(S06_AXI_arid);
  mp_S06_AXI_transactor->ARADDR(S06_AXI_araddr);
  mp_S06_AXI_transactor->ARLEN(S06_AXI_arlen);
  mp_S06_AXI_transactor->ARSIZE(S06_AXI_arsize);
  mp_S06_AXI_transactor->ARBURST(S06_AXI_arburst);
  mp_S06_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S06_AXI_arlock_converter");
  mp_S06_AXI_arlock_converter->vector_in(S06_AXI_arlock);
  mp_S06_AXI_arlock_converter->scalar_out(m_S06_AXI_arlock_converter_signal);
  mp_S06_AXI_transactor->ARLOCK(m_S06_AXI_arlock_converter_signal);
  mp_S06_AXI_transactor->ARCACHE(S06_AXI_arcache);
  mp_S06_AXI_transactor->ARPROT(S06_AXI_arprot);
  mp_S06_AXI_transactor->ARQOS(S06_AXI_arqos);
  mp_S06_AXI_transactor->ARVALID(S06_AXI_arvalid);
  mp_S06_AXI_transactor->ARREADY(S06_AXI_arready);
  mp_S06_AXI_transactor->RID(S06_AXI_rid);
  mp_S06_AXI_transactor->RDATA(S06_AXI_rdata);
  mp_S06_AXI_transactor->RRESP(S06_AXI_rresp);
  mp_S06_AXI_transactor->RLAST(S06_AXI_rlast);
  mp_S06_AXI_transactor->RVALID(S06_AXI_rvalid);
  mp_S06_AXI_transactor->RREADY(S06_AXI_rready);
  mp_S06_AXI_transactor->CLK(aclk);
  mp_S06_AXI_transactor->RST(aresetn);
  // configure S07_AXI_transactor
    xsc::common_cpp::properties S07_AXI_transactor_param_props;
    S07_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S07_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S07_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S07_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S07_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S07_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S07_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S07_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S07_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S07_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S07_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S07_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S07_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S07_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S07_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S07_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S07_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S07_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S07_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S07_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S07_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S07_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S07_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S07_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S07_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S07_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S07_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S07_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S07_AXI_transactor", S07_AXI_transactor_param_props);
  mp_S07_AXI_transactor->AWID(S07_AXI_awid);
  mp_S07_AXI_transactor->AWADDR(S07_AXI_awaddr);
  mp_S07_AXI_transactor->AWLEN(S07_AXI_awlen);
  mp_S07_AXI_transactor->AWSIZE(S07_AXI_awsize);
  mp_S07_AXI_transactor->AWBURST(S07_AXI_awburst);
  mp_S07_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S07_AXI_awlock_converter");
  mp_S07_AXI_awlock_converter->vector_in(S07_AXI_awlock);
  mp_S07_AXI_awlock_converter->scalar_out(m_S07_AXI_awlock_converter_signal);
  mp_S07_AXI_transactor->AWLOCK(m_S07_AXI_awlock_converter_signal);
  mp_S07_AXI_transactor->AWCACHE(S07_AXI_awcache);
  mp_S07_AXI_transactor->AWPROT(S07_AXI_awprot);
  mp_S07_AXI_transactor->AWQOS(S07_AXI_awqos);
  mp_S07_AXI_transactor->AWVALID(S07_AXI_awvalid);
  mp_S07_AXI_transactor->AWREADY(S07_AXI_awready);
  mp_S07_AXI_transactor->WDATA(S07_AXI_wdata);
  mp_S07_AXI_transactor->WSTRB(S07_AXI_wstrb);
  mp_S07_AXI_transactor->WLAST(S07_AXI_wlast);
  mp_S07_AXI_transactor->WVALID(S07_AXI_wvalid);
  mp_S07_AXI_transactor->WREADY(S07_AXI_wready);
  mp_S07_AXI_transactor->BID(S07_AXI_bid);
  mp_S07_AXI_transactor->BRESP(S07_AXI_bresp);
  mp_S07_AXI_transactor->BVALID(S07_AXI_bvalid);
  mp_S07_AXI_transactor->BREADY(S07_AXI_bready);
  mp_S07_AXI_transactor->ARID(S07_AXI_arid);
  mp_S07_AXI_transactor->ARADDR(S07_AXI_araddr);
  mp_S07_AXI_transactor->ARLEN(S07_AXI_arlen);
  mp_S07_AXI_transactor->ARSIZE(S07_AXI_arsize);
  mp_S07_AXI_transactor->ARBURST(S07_AXI_arburst);
  mp_S07_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S07_AXI_arlock_converter");
  mp_S07_AXI_arlock_converter->vector_in(S07_AXI_arlock);
  mp_S07_AXI_arlock_converter->scalar_out(m_S07_AXI_arlock_converter_signal);
  mp_S07_AXI_transactor->ARLOCK(m_S07_AXI_arlock_converter_signal);
  mp_S07_AXI_transactor->ARCACHE(S07_AXI_arcache);
  mp_S07_AXI_transactor->ARPROT(S07_AXI_arprot);
  mp_S07_AXI_transactor->ARQOS(S07_AXI_arqos);
  mp_S07_AXI_transactor->ARVALID(S07_AXI_arvalid);
  mp_S07_AXI_transactor->ARREADY(S07_AXI_arready);
  mp_S07_AXI_transactor->RID(S07_AXI_rid);
  mp_S07_AXI_transactor->RDATA(S07_AXI_rdata);
  mp_S07_AXI_transactor->RRESP(S07_AXI_rresp);
  mp_S07_AXI_transactor->RLAST(S07_AXI_rlast);
  mp_S07_AXI_transactor->RVALID(S07_AXI_rvalid);
  mp_S07_AXI_transactor->RREADY(S07_AXI_rready);
  mp_S07_AXI_transactor->CLK(aclk);
  mp_S07_AXI_transactor->RST(aresetn);
  // configure S08_AXI_transactor
    xsc::common_cpp::properties S08_AXI_transactor_param_props;
    S08_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S08_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S08_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S08_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S08_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S08_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S08_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S08_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S08_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S08_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S08_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S08_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S08_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S08_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S08_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S08_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S08_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S08_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S08_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S08_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S08_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S08_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S08_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S08_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S08_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S08_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S08_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S08_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S08_AXI_transactor", S08_AXI_transactor_param_props);
  mp_S08_AXI_transactor->AWID(S08_AXI_awid);
  mp_S08_AXI_transactor->AWADDR(S08_AXI_awaddr);
  mp_S08_AXI_transactor->AWLEN(S08_AXI_awlen);
  mp_S08_AXI_transactor->AWSIZE(S08_AXI_awsize);
  mp_S08_AXI_transactor->AWBURST(S08_AXI_awburst);
  mp_S08_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S08_AXI_awlock_converter");
  mp_S08_AXI_awlock_converter->vector_in(S08_AXI_awlock);
  mp_S08_AXI_awlock_converter->scalar_out(m_S08_AXI_awlock_converter_signal);
  mp_S08_AXI_transactor->AWLOCK(m_S08_AXI_awlock_converter_signal);
  mp_S08_AXI_transactor->AWCACHE(S08_AXI_awcache);
  mp_S08_AXI_transactor->AWPROT(S08_AXI_awprot);
  mp_S08_AXI_transactor->AWQOS(S08_AXI_awqos);
  mp_S08_AXI_transactor->AWVALID(S08_AXI_awvalid);
  mp_S08_AXI_transactor->AWREADY(S08_AXI_awready);
  mp_S08_AXI_transactor->WDATA(S08_AXI_wdata);
  mp_S08_AXI_transactor->WSTRB(S08_AXI_wstrb);
  mp_S08_AXI_transactor->WLAST(S08_AXI_wlast);
  mp_S08_AXI_transactor->WVALID(S08_AXI_wvalid);
  mp_S08_AXI_transactor->WREADY(S08_AXI_wready);
  mp_S08_AXI_transactor->BID(S08_AXI_bid);
  mp_S08_AXI_transactor->BRESP(S08_AXI_bresp);
  mp_S08_AXI_transactor->BVALID(S08_AXI_bvalid);
  mp_S08_AXI_transactor->BREADY(S08_AXI_bready);
  mp_S08_AXI_transactor->ARID(S08_AXI_arid);
  mp_S08_AXI_transactor->ARADDR(S08_AXI_araddr);
  mp_S08_AXI_transactor->ARLEN(S08_AXI_arlen);
  mp_S08_AXI_transactor->ARSIZE(S08_AXI_arsize);
  mp_S08_AXI_transactor->ARBURST(S08_AXI_arburst);
  mp_S08_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S08_AXI_arlock_converter");
  mp_S08_AXI_arlock_converter->vector_in(S08_AXI_arlock);
  mp_S08_AXI_arlock_converter->scalar_out(m_S08_AXI_arlock_converter_signal);
  mp_S08_AXI_transactor->ARLOCK(m_S08_AXI_arlock_converter_signal);
  mp_S08_AXI_transactor->ARCACHE(S08_AXI_arcache);
  mp_S08_AXI_transactor->ARPROT(S08_AXI_arprot);
  mp_S08_AXI_transactor->ARQOS(S08_AXI_arqos);
  mp_S08_AXI_transactor->ARVALID(S08_AXI_arvalid);
  mp_S08_AXI_transactor->ARREADY(S08_AXI_arready);
  mp_S08_AXI_transactor->RID(S08_AXI_rid);
  mp_S08_AXI_transactor->RDATA(S08_AXI_rdata);
  mp_S08_AXI_transactor->RRESP(S08_AXI_rresp);
  mp_S08_AXI_transactor->RLAST(S08_AXI_rlast);
  mp_S08_AXI_transactor->RVALID(S08_AXI_rvalid);
  mp_S08_AXI_transactor->RREADY(S08_AXI_rready);
  mp_S08_AXI_transactor->CLK(aclk);
  mp_S08_AXI_transactor->RST(aresetn);
  // configure S09_AXI_transactor
    xsc::common_cpp::properties S09_AXI_transactor_param_props;
    S09_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S09_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S09_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S09_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S09_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S09_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S09_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S09_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S09_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S09_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S09_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S09_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S09_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S09_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S09_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S09_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S09_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S09_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S09_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S09_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S09_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S09_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S09_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S09_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S09_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S09_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S09_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S09_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S09_AXI_transactor", S09_AXI_transactor_param_props);
  mp_S09_AXI_transactor->AWID(S09_AXI_awid);
  mp_S09_AXI_transactor->AWADDR(S09_AXI_awaddr);
  mp_S09_AXI_transactor->AWLEN(S09_AXI_awlen);
  mp_S09_AXI_transactor->AWSIZE(S09_AXI_awsize);
  mp_S09_AXI_transactor->AWBURST(S09_AXI_awburst);
  mp_S09_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S09_AXI_awlock_converter");
  mp_S09_AXI_awlock_converter->vector_in(S09_AXI_awlock);
  mp_S09_AXI_awlock_converter->scalar_out(m_S09_AXI_awlock_converter_signal);
  mp_S09_AXI_transactor->AWLOCK(m_S09_AXI_awlock_converter_signal);
  mp_S09_AXI_transactor->AWCACHE(S09_AXI_awcache);
  mp_S09_AXI_transactor->AWPROT(S09_AXI_awprot);
  mp_S09_AXI_transactor->AWQOS(S09_AXI_awqos);
  mp_S09_AXI_transactor->AWVALID(S09_AXI_awvalid);
  mp_S09_AXI_transactor->AWREADY(S09_AXI_awready);
  mp_S09_AXI_transactor->WDATA(S09_AXI_wdata);
  mp_S09_AXI_transactor->WSTRB(S09_AXI_wstrb);
  mp_S09_AXI_transactor->WLAST(S09_AXI_wlast);
  mp_S09_AXI_transactor->WVALID(S09_AXI_wvalid);
  mp_S09_AXI_transactor->WREADY(S09_AXI_wready);
  mp_S09_AXI_transactor->BID(S09_AXI_bid);
  mp_S09_AXI_transactor->BRESP(S09_AXI_bresp);
  mp_S09_AXI_transactor->BVALID(S09_AXI_bvalid);
  mp_S09_AXI_transactor->BREADY(S09_AXI_bready);
  mp_S09_AXI_transactor->ARID(S09_AXI_arid);
  mp_S09_AXI_transactor->ARADDR(S09_AXI_araddr);
  mp_S09_AXI_transactor->ARLEN(S09_AXI_arlen);
  mp_S09_AXI_transactor->ARSIZE(S09_AXI_arsize);
  mp_S09_AXI_transactor->ARBURST(S09_AXI_arburst);
  mp_S09_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S09_AXI_arlock_converter");
  mp_S09_AXI_arlock_converter->vector_in(S09_AXI_arlock);
  mp_S09_AXI_arlock_converter->scalar_out(m_S09_AXI_arlock_converter_signal);
  mp_S09_AXI_transactor->ARLOCK(m_S09_AXI_arlock_converter_signal);
  mp_S09_AXI_transactor->ARCACHE(S09_AXI_arcache);
  mp_S09_AXI_transactor->ARPROT(S09_AXI_arprot);
  mp_S09_AXI_transactor->ARQOS(S09_AXI_arqos);
  mp_S09_AXI_transactor->ARVALID(S09_AXI_arvalid);
  mp_S09_AXI_transactor->ARREADY(S09_AXI_arready);
  mp_S09_AXI_transactor->RID(S09_AXI_rid);
  mp_S09_AXI_transactor->RDATA(S09_AXI_rdata);
  mp_S09_AXI_transactor->RRESP(S09_AXI_rresp);
  mp_S09_AXI_transactor->RLAST(S09_AXI_rlast);
  mp_S09_AXI_transactor->RVALID(S09_AXI_rvalid);
  mp_S09_AXI_transactor->RREADY(S09_AXI_rready);
  mp_S09_AXI_transactor->CLK(aclk);
  mp_S09_AXI_transactor->RST(aresetn);
  // configure S10_AXI_transactor
    xsc::common_cpp::properties S10_AXI_transactor_param_props;
    S10_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S10_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S10_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S10_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S10_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S10_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S10_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S10_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S10_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S10_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S10_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S10_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S10_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S10_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S10_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S10_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S10_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S10_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S10_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S10_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S10_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S10_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S10_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S10_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S10_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S10_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S10_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S10_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S10_AXI_transactor", S10_AXI_transactor_param_props);
  mp_S10_AXI_transactor->AWID(S10_AXI_awid);
  mp_S10_AXI_transactor->AWADDR(S10_AXI_awaddr);
  mp_S10_AXI_transactor->AWLEN(S10_AXI_awlen);
  mp_S10_AXI_transactor->AWSIZE(S10_AXI_awsize);
  mp_S10_AXI_transactor->AWBURST(S10_AXI_awburst);
  mp_S10_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S10_AXI_awlock_converter");
  mp_S10_AXI_awlock_converter->vector_in(S10_AXI_awlock);
  mp_S10_AXI_awlock_converter->scalar_out(m_S10_AXI_awlock_converter_signal);
  mp_S10_AXI_transactor->AWLOCK(m_S10_AXI_awlock_converter_signal);
  mp_S10_AXI_transactor->AWCACHE(S10_AXI_awcache);
  mp_S10_AXI_transactor->AWPROT(S10_AXI_awprot);
  mp_S10_AXI_transactor->AWQOS(S10_AXI_awqos);
  mp_S10_AXI_transactor->AWVALID(S10_AXI_awvalid);
  mp_S10_AXI_transactor->AWREADY(S10_AXI_awready);
  mp_S10_AXI_transactor->WDATA(S10_AXI_wdata);
  mp_S10_AXI_transactor->WSTRB(S10_AXI_wstrb);
  mp_S10_AXI_transactor->WLAST(S10_AXI_wlast);
  mp_S10_AXI_transactor->WVALID(S10_AXI_wvalid);
  mp_S10_AXI_transactor->WREADY(S10_AXI_wready);
  mp_S10_AXI_transactor->BID(S10_AXI_bid);
  mp_S10_AXI_transactor->BRESP(S10_AXI_bresp);
  mp_S10_AXI_transactor->BVALID(S10_AXI_bvalid);
  mp_S10_AXI_transactor->BREADY(S10_AXI_bready);
  mp_S10_AXI_transactor->ARID(S10_AXI_arid);
  mp_S10_AXI_transactor->ARADDR(S10_AXI_araddr);
  mp_S10_AXI_transactor->ARLEN(S10_AXI_arlen);
  mp_S10_AXI_transactor->ARSIZE(S10_AXI_arsize);
  mp_S10_AXI_transactor->ARBURST(S10_AXI_arburst);
  mp_S10_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S10_AXI_arlock_converter");
  mp_S10_AXI_arlock_converter->vector_in(S10_AXI_arlock);
  mp_S10_AXI_arlock_converter->scalar_out(m_S10_AXI_arlock_converter_signal);
  mp_S10_AXI_transactor->ARLOCK(m_S10_AXI_arlock_converter_signal);
  mp_S10_AXI_transactor->ARCACHE(S10_AXI_arcache);
  mp_S10_AXI_transactor->ARPROT(S10_AXI_arprot);
  mp_S10_AXI_transactor->ARQOS(S10_AXI_arqos);
  mp_S10_AXI_transactor->ARVALID(S10_AXI_arvalid);
  mp_S10_AXI_transactor->ARREADY(S10_AXI_arready);
  mp_S10_AXI_transactor->RID(S10_AXI_rid);
  mp_S10_AXI_transactor->RDATA(S10_AXI_rdata);
  mp_S10_AXI_transactor->RRESP(S10_AXI_rresp);
  mp_S10_AXI_transactor->RLAST(S10_AXI_rlast);
  mp_S10_AXI_transactor->RVALID(S10_AXI_rvalid);
  mp_S10_AXI_transactor->RREADY(S10_AXI_rready);
  mp_S10_AXI_transactor->CLK(aclk);
  mp_S10_AXI_transactor->RST(aresetn);
  // configure S11_AXI_transactor
    xsc::common_cpp::properties S11_AXI_transactor_param_props;
    S11_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S11_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S11_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S11_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S11_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S11_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S11_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S11_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S11_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S11_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S11_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S11_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S11_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S11_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S11_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S11_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S11_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S11_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S11_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S11_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S11_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S11_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S11_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S11_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S11_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S11_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S11_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S11_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S11_AXI_transactor", S11_AXI_transactor_param_props);
  mp_S11_AXI_transactor->AWID(S11_AXI_awid);
  mp_S11_AXI_transactor->AWADDR(S11_AXI_awaddr);
  mp_S11_AXI_transactor->AWLEN(S11_AXI_awlen);
  mp_S11_AXI_transactor->AWSIZE(S11_AXI_awsize);
  mp_S11_AXI_transactor->AWBURST(S11_AXI_awburst);
  mp_S11_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S11_AXI_awlock_converter");
  mp_S11_AXI_awlock_converter->vector_in(S11_AXI_awlock);
  mp_S11_AXI_awlock_converter->scalar_out(m_S11_AXI_awlock_converter_signal);
  mp_S11_AXI_transactor->AWLOCK(m_S11_AXI_awlock_converter_signal);
  mp_S11_AXI_transactor->AWCACHE(S11_AXI_awcache);
  mp_S11_AXI_transactor->AWPROT(S11_AXI_awprot);
  mp_S11_AXI_transactor->AWQOS(S11_AXI_awqos);
  mp_S11_AXI_transactor->AWVALID(S11_AXI_awvalid);
  mp_S11_AXI_transactor->AWREADY(S11_AXI_awready);
  mp_S11_AXI_transactor->WDATA(S11_AXI_wdata);
  mp_S11_AXI_transactor->WSTRB(S11_AXI_wstrb);
  mp_S11_AXI_transactor->WLAST(S11_AXI_wlast);
  mp_S11_AXI_transactor->WVALID(S11_AXI_wvalid);
  mp_S11_AXI_transactor->WREADY(S11_AXI_wready);
  mp_S11_AXI_transactor->BID(S11_AXI_bid);
  mp_S11_AXI_transactor->BRESP(S11_AXI_bresp);
  mp_S11_AXI_transactor->BVALID(S11_AXI_bvalid);
  mp_S11_AXI_transactor->BREADY(S11_AXI_bready);
  mp_S11_AXI_transactor->ARID(S11_AXI_arid);
  mp_S11_AXI_transactor->ARADDR(S11_AXI_araddr);
  mp_S11_AXI_transactor->ARLEN(S11_AXI_arlen);
  mp_S11_AXI_transactor->ARSIZE(S11_AXI_arsize);
  mp_S11_AXI_transactor->ARBURST(S11_AXI_arburst);
  mp_S11_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S11_AXI_arlock_converter");
  mp_S11_AXI_arlock_converter->vector_in(S11_AXI_arlock);
  mp_S11_AXI_arlock_converter->scalar_out(m_S11_AXI_arlock_converter_signal);
  mp_S11_AXI_transactor->ARLOCK(m_S11_AXI_arlock_converter_signal);
  mp_S11_AXI_transactor->ARCACHE(S11_AXI_arcache);
  mp_S11_AXI_transactor->ARPROT(S11_AXI_arprot);
  mp_S11_AXI_transactor->ARQOS(S11_AXI_arqos);
  mp_S11_AXI_transactor->ARVALID(S11_AXI_arvalid);
  mp_S11_AXI_transactor->ARREADY(S11_AXI_arready);
  mp_S11_AXI_transactor->RID(S11_AXI_rid);
  mp_S11_AXI_transactor->RDATA(S11_AXI_rdata);
  mp_S11_AXI_transactor->RRESP(S11_AXI_rresp);
  mp_S11_AXI_transactor->RLAST(S11_AXI_rlast);
  mp_S11_AXI_transactor->RVALID(S11_AXI_rvalid);
  mp_S11_AXI_transactor->RREADY(S11_AXI_rready);
  mp_S11_AXI_transactor->CLK(aclk);
  mp_S11_AXI_transactor->RST(aresetn);
  // configure S12_AXI_transactor
    xsc::common_cpp::properties S12_AXI_transactor_param_props;
    S12_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S12_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S12_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S12_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S12_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S12_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S12_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S12_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S12_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S12_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S12_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S12_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S12_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S12_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S12_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S12_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S12_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S12_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S12_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S12_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S12_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S12_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S12_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S12_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S12_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S12_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S12_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S12_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S12_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S12_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S12_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S12_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S12_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S12_AXI_transactor", S12_AXI_transactor_param_props);
  mp_S12_AXI_transactor->AWID(S12_AXI_awid);
  mp_S12_AXI_transactor->AWADDR(S12_AXI_awaddr);
  mp_S12_AXI_transactor->AWLEN(S12_AXI_awlen);
  mp_S12_AXI_transactor->AWSIZE(S12_AXI_awsize);
  mp_S12_AXI_transactor->AWBURST(S12_AXI_awburst);
  mp_S12_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S12_AXI_awlock_converter");
  mp_S12_AXI_awlock_converter->vector_in(S12_AXI_awlock);
  mp_S12_AXI_awlock_converter->scalar_out(m_S12_AXI_awlock_converter_signal);
  mp_S12_AXI_transactor->AWLOCK(m_S12_AXI_awlock_converter_signal);
  mp_S12_AXI_transactor->AWCACHE(S12_AXI_awcache);
  mp_S12_AXI_transactor->AWPROT(S12_AXI_awprot);
  mp_S12_AXI_transactor->AWQOS(S12_AXI_awqos);
  mp_S12_AXI_transactor->AWVALID(S12_AXI_awvalid);
  mp_S12_AXI_transactor->AWREADY(S12_AXI_awready);
  mp_S12_AXI_transactor->WDATA(S12_AXI_wdata);
  mp_S12_AXI_transactor->WSTRB(S12_AXI_wstrb);
  mp_S12_AXI_transactor->WLAST(S12_AXI_wlast);
  mp_S12_AXI_transactor->WVALID(S12_AXI_wvalid);
  mp_S12_AXI_transactor->WREADY(S12_AXI_wready);
  mp_S12_AXI_transactor->BID(S12_AXI_bid);
  mp_S12_AXI_transactor->BRESP(S12_AXI_bresp);
  mp_S12_AXI_transactor->BVALID(S12_AXI_bvalid);
  mp_S12_AXI_transactor->BREADY(S12_AXI_bready);
  mp_S12_AXI_transactor->ARID(S12_AXI_arid);
  mp_S12_AXI_transactor->ARADDR(S12_AXI_araddr);
  mp_S12_AXI_transactor->ARLEN(S12_AXI_arlen);
  mp_S12_AXI_transactor->ARSIZE(S12_AXI_arsize);
  mp_S12_AXI_transactor->ARBURST(S12_AXI_arburst);
  mp_S12_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S12_AXI_arlock_converter");
  mp_S12_AXI_arlock_converter->vector_in(S12_AXI_arlock);
  mp_S12_AXI_arlock_converter->scalar_out(m_S12_AXI_arlock_converter_signal);
  mp_S12_AXI_transactor->ARLOCK(m_S12_AXI_arlock_converter_signal);
  mp_S12_AXI_transactor->ARCACHE(S12_AXI_arcache);
  mp_S12_AXI_transactor->ARPROT(S12_AXI_arprot);
  mp_S12_AXI_transactor->ARQOS(S12_AXI_arqos);
  mp_S12_AXI_transactor->ARVALID(S12_AXI_arvalid);
  mp_S12_AXI_transactor->ARREADY(S12_AXI_arready);
  mp_S12_AXI_transactor->RID(S12_AXI_rid);
  mp_S12_AXI_transactor->RDATA(S12_AXI_rdata);
  mp_S12_AXI_transactor->RRESP(S12_AXI_rresp);
  mp_S12_AXI_transactor->RLAST(S12_AXI_rlast);
  mp_S12_AXI_transactor->RVALID(S12_AXI_rvalid);
  mp_S12_AXI_transactor->RREADY(S12_AXI_rready);
  mp_S12_AXI_transactor->CLK(aclk);
  mp_S12_AXI_transactor->RST(aresetn);
  // configure S13_AXI_transactor
    xsc::common_cpp::properties S13_AXI_transactor_param_props;
    S13_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S13_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S13_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S13_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S13_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S13_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S13_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S13_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S13_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S13_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S13_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S13_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S13_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S13_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S13_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S13_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S13_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S13_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S13_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S13_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S13_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S13_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S13_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S13_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S13_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S13_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S13_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S13_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S13_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S13_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S13_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S13_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S13_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S13_AXI_transactor", S13_AXI_transactor_param_props);
  mp_S13_AXI_transactor->AWID(S13_AXI_awid);
  mp_S13_AXI_transactor->AWADDR(S13_AXI_awaddr);
  mp_S13_AXI_transactor->AWLEN(S13_AXI_awlen);
  mp_S13_AXI_transactor->AWSIZE(S13_AXI_awsize);
  mp_S13_AXI_transactor->AWBURST(S13_AXI_awburst);
  mp_S13_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S13_AXI_awlock_converter");
  mp_S13_AXI_awlock_converter->vector_in(S13_AXI_awlock);
  mp_S13_AXI_awlock_converter->scalar_out(m_S13_AXI_awlock_converter_signal);
  mp_S13_AXI_transactor->AWLOCK(m_S13_AXI_awlock_converter_signal);
  mp_S13_AXI_transactor->AWCACHE(S13_AXI_awcache);
  mp_S13_AXI_transactor->AWPROT(S13_AXI_awprot);
  mp_S13_AXI_transactor->AWQOS(S13_AXI_awqos);
  mp_S13_AXI_transactor->AWVALID(S13_AXI_awvalid);
  mp_S13_AXI_transactor->AWREADY(S13_AXI_awready);
  mp_S13_AXI_transactor->WDATA(S13_AXI_wdata);
  mp_S13_AXI_transactor->WSTRB(S13_AXI_wstrb);
  mp_S13_AXI_transactor->WLAST(S13_AXI_wlast);
  mp_S13_AXI_transactor->WVALID(S13_AXI_wvalid);
  mp_S13_AXI_transactor->WREADY(S13_AXI_wready);
  mp_S13_AXI_transactor->BID(S13_AXI_bid);
  mp_S13_AXI_transactor->BRESP(S13_AXI_bresp);
  mp_S13_AXI_transactor->BVALID(S13_AXI_bvalid);
  mp_S13_AXI_transactor->BREADY(S13_AXI_bready);
  mp_S13_AXI_transactor->ARID(S13_AXI_arid);
  mp_S13_AXI_transactor->ARADDR(S13_AXI_araddr);
  mp_S13_AXI_transactor->ARLEN(S13_AXI_arlen);
  mp_S13_AXI_transactor->ARSIZE(S13_AXI_arsize);
  mp_S13_AXI_transactor->ARBURST(S13_AXI_arburst);
  mp_S13_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S13_AXI_arlock_converter");
  mp_S13_AXI_arlock_converter->vector_in(S13_AXI_arlock);
  mp_S13_AXI_arlock_converter->scalar_out(m_S13_AXI_arlock_converter_signal);
  mp_S13_AXI_transactor->ARLOCK(m_S13_AXI_arlock_converter_signal);
  mp_S13_AXI_transactor->ARCACHE(S13_AXI_arcache);
  mp_S13_AXI_transactor->ARPROT(S13_AXI_arprot);
  mp_S13_AXI_transactor->ARQOS(S13_AXI_arqos);
  mp_S13_AXI_transactor->ARVALID(S13_AXI_arvalid);
  mp_S13_AXI_transactor->ARREADY(S13_AXI_arready);
  mp_S13_AXI_transactor->RID(S13_AXI_rid);
  mp_S13_AXI_transactor->RDATA(S13_AXI_rdata);
  mp_S13_AXI_transactor->RRESP(S13_AXI_rresp);
  mp_S13_AXI_transactor->RLAST(S13_AXI_rlast);
  mp_S13_AXI_transactor->RVALID(S13_AXI_rvalid);
  mp_S13_AXI_transactor->RREADY(S13_AXI_rready);
  mp_S13_AXI_transactor->CLK(aclk);
  mp_S13_AXI_transactor->RST(aresetn);
  // configure S14_AXI_transactor
    xsc::common_cpp::properties S14_AXI_transactor_param_props;
    S14_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S14_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S14_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S14_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S14_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S14_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S14_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S14_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S14_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S14_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S14_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S14_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S14_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S14_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S14_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S14_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S14_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S14_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S14_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S14_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S14_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S14_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S14_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S14_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S14_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S14_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S14_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S14_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S14_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S14_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S14_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S14_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S14_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S14_AXI_transactor", S14_AXI_transactor_param_props);
  mp_S14_AXI_transactor->AWID(S14_AXI_awid);
  mp_S14_AXI_transactor->AWADDR(S14_AXI_awaddr);
  mp_S14_AXI_transactor->AWLEN(S14_AXI_awlen);
  mp_S14_AXI_transactor->AWSIZE(S14_AXI_awsize);
  mp_S14_AXI_transactor->AWBURST(S14_AXI_awburst);
  mp_S14_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S14_AXI_awlock_converter");
  mp_S14_AXI_awlock_converter->vector_in(S14_AXI_awlock);
  mp_S14_AXI_awlock_converter->scalar_out(m_S14_AXI_awlock_converter_signal);
  mp_S14_AXI_transactor->AWLOCK(m_S14_AXI_awlock_converter_signal);
  mp_S14_AXI_transactor->AWCACHE(S14_AXI_awcache);
  mp_S14_AXI_transactor->AWPROT(S14_AXI_awprot);
  mp_S14_AXI_transactor->AWQOS(S14_AXI_awqos);
  mp_S14_AXI_transactor->AWVALID(S14_AXI_awvalid);
  mp_S14_AXI_transactor->AWREADY(S14_AXI_awready);
  mp_S14_AXI_transactor->WDATA(S14_AXI_wdata);
  mp_S14_AXI_transactor->WSTRB(S14_AXI_wstrb);
  mp_S14_AXI_transactor->WLAST(S14_AXI_wlast);
  mp_S14_AXI_transactor->WVALID(S14_AXI_wvalid);
  mp_S14_AXI_transactor->WREADY(S14_AXI_wready);
  mp_S14_AXI_transactor->BID(S14_AXI_bid);
  mp_S14_AXI_transactor->BRESP(S14_AXI_bresp);
  mp_S14_AXI_transactor->BVALID(S14_AXI_bvalid);
  mp_S14_AXI_transactor->BREADY(S14_AXI_bready);
  mp_S14_AXI_transactor->ARID(S14_AXI_arid);
  mp_S14_AXI_transactor->ARADDR(S14_AXI_araddr);
  mp_S14_AXI_transactor->ARLEN(S14_AXI_arlen);
  mp_S14_AXI_transactor->ARSIZE(S14_AXI_arsize);
  mp_S14_AXI_transactor->ARBURST(S14_AXI_arburst);
  mp_S14_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S14_AXI_arlock_converter");
  mp_S14_AXI_arlock_converter->vector_in(S14_AXI_arlock);
  mp_S14_AXI_arlock_converter->scalar_out(m_S14_AXI_arlock_converter_signal);
  mp_S14_AXI_transactor->ARLOCK(m_S14_AXI_arlock_converter_signal);
  mp_S14_AXI_transactor->ARCACHE(S14_AXI_arcache);
  mp_S14_AXI_transactor->ARPROT(S14_AXI_arprot);
  mp_S14_AXI_transactor->ARQOS(S14_AXI_arqos);
  mp_S14_AXI_transactor->ARVALID(S14_AXI_arvalid);
  mp_S14_AXI_transactor->ARREADY(S14_AXI_arready);
  mp_S14_AXI_transactor->RID(S14_AXI_rid);
  mp_S14_AXI_transactor->RDATA(S14_AXI_rdata);
  mp_S14_AXI_transactor->RRESP(S14_AXI_rresp);
  mp_S14_AXI_transactor->RLAST(S14_AXI_rlast);
  mp_S14_AXI_transactor->RVALID(S14_AXI_rvalid);
  mp_S14_AXI_transactor->RREADY(S14_AXI_rready);
  mp_S14_AXI_transactor->CLK(aclk);
  mp_S14_AXI_transactor->RST(aresetn);
  // configure S15_AXI_transactor
    xsc::common_cpp::properties S15_AXI_transactor_param_props;
    S15_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S15_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S15_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S15_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    S15_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S15_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S15_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S15_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S15_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S15_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S15_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S15_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S15_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S15_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S15_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S15_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S15_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S15_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S15_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S15_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S15_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S15_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S15_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S15_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S15_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S15_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S15_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S15_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S15_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S15_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S15_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S15_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_S15_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,6,1,1,1,1,1>("S15_AXI_transactor", S15_AXI_transactor_param_props);
  mp_S15_AXI_transactor->AWID(S15_AXI_awid);
  mp_S15_AXI_transactor->AWADDR(S15_AXI_awaddr);
  mp_S15_AXI_transactor->AWLEN(S15_AXI_awlen);
  mp_S15_AXI_transactor->AWSIZE(S15_AXI_awsize);
  mp_S15_AXI_transactor->AWBURST(S15_AXI_awburst);
  mp_S15_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S15_AXI_awlock_converter");
  mp_S15_AXI_awlock_converter->vector_in(S15_AXI_awlock);
  mp_S15_AXI_awlock_converter->scalar_out(m_S15_AXI_awlock_converter_signal);
  mp_S15_AXI_transactor->AWLOCK(m_S15_AXI_awlock_converter_signal);
  mp_S15_AXI_transactor->AWCACHE(S15_AXI_awcache);
  mp_S15_AXI_transactor->AWPROT(S15_AXI_awprot);
  mp_S15_AXI_transactor->AWQOS(S15_AXI_awqos);
  mp_S15_AXI_transactor->AWVALID(S15_AXI_awvalid);
  mp_S15_AXI_transactor->AWREADY(S15_AXI_awready);
  mp_S15_AXI_transactor->WDATA(S15_AXI_wdata);
  mp_S15_AXI_transactor->WSTRB(S15_AXI_wstrb);
  mp_S15_AXI_transactor->WLAST(S15_AXI_wlast);
  mp_S15_AXI_transactor->WVALID(S15_AXI_wvalid);
  mp_S15_AXI_transactor->WREADY(S15_AXI_wready);
  mp_S15_AXI_transactor->BID(S15_AXI_bid);
  mp_S15_AXI_transactor->BRESP(S15_AXI_bresp);
  mp_S15_AXI_transactor->BVALID(S15_AXI_bvalid);
  mp_S15_AXI_transactor->BREADY(S15_AXI_bready);
  mp_S15_AXI_transactor->ARID(S15_AXI_arid);
  mp_S15_AXI_transactor->ARADDR(S15_AXI_araddr);
  mp_S15_AXI_transactor->ARLEN(S15_AXI_arlen);
  mp_S15_AXI_transactor->ARSIZE(S15_AXI_arsize);
  mp_S15_AXI_transactor->ARBURST(S15_AXI_arburst);
  mp_S15_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S15_AXI_arlock_converter");
  mp_S15_AXI_arlock_converter->vector_in(S15_AXI_arlock);
  mp_S15_AXI_arlock_converter->scalar_out(m_S15_AXI_arlock_converter_signal);
  mp_S15_AXI_transactor->ARLOCK(m_S15_AXI_arlock_converter_signal);
  mp_S15_AXI_transactor->ARCACHE(S15_AXI_arcache);
  mp_S15_AXI_transactor->ARPROT(S15_AXI_arprot);
  mp_S15_AXI_transactor->ARQOS(S15_AXI_arqos);
  mp_S15_AXI_transactor->ARVALID(S15_AXI_arvalid);
  mp_S15_AXI_transactor->ARREADY(S15_AXI_arready);
  mp_S15_AXI_transactor->RID(S15_AXI_rid);
  mp_S15_AXI_transactor->RDATA(S15_AXI_rdata);
  mp_S15_AXI_transactor->RRESP(S15_AXI_rresp);
  mp_S15_AXI_transactor->RLAST(S15_AXI_rlast);
  mp_S15_AXI_transactor->RVALID(S15_AXI_rvalid);
  mp_S15_AXI_transactor->RREADY(S15_AXI_rready);
  mp_S15_AXI_transactor->CLK(aclk);
  mp_S15_AXI_transactor->RST(aresetn);
  // configure M00_AXI_transactor
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "MemoryInterfacesVIP_c0_sys_clk_i");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,34,1,1,1,1,1,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);
  mp_M00_AXI_transactor->AWADDR(M00_AXI_awaddr);
  mp_M00_AXI_transactor->AWLEN(M00_AXI_awlen);
  mp_M00_AXI_transactor->AWSIZE(M00_AXI_awsize);
  mp_M00_AXI_transactor->AWBURST(M00_AXI_awburst);
  mp_M00_AXI_awlock_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_awlock_converter");
  mp_M00_AXI_awlock_converter->scalar_in(m_M00_AXI_awlock_converter_signal);
  mp_M00_AXI_awlock_converter->vector_out(M00_AXI_awlock);
  mp_M00_AXI_transactor->AWLOCK(m_M00_AXI_awlock_converter_signal);
  mp_M00_AXI_transactor->AWCACHE(M00_AXI_awcache);
  mp_M00_AXI_transactor->AWPROT(M00_AXI_awprot);
  mp_M00_AXI_transactor->AWQOS(M00_AXI_awqos);
  mp_M00_AXI_transactor->AWVALID(M00_AXI_awvalid);
  mp_M00_AXI_transactor->AWREADY(M00_AXI_awready);
  mp_M00_AXI_transactor->WDATA(M00_AXI_wdata);
  mp_M00_AXI_transactor->WSTRB(M00_AXI_wstrb);
  mp_M00_AXI_transactor->WLAST(M00_AXI_wlast);
  mp_M00_AXI_transactor->WVALID(M00_AXI_wvalid);
  mp_M00_AXI_transactor->WREADY(M00_AXI_wready);
  mp_M00_AXI_transactor->BRESP(M00_AXI_bresp);
  mp_M00_AXI_transactor->BVALID(M00_AXI_bvalid);
  mp_M00_AXI_transactor->BREADY(M00_AXI_bready);
  mp_M00_AXI_transactor->ARADDR(M00_AXI_araddr);
  mp_M00_AXI_transactor->ARLEN(M00_AXI_arlen);
  mp_M00_AXI_transactor->ARSIZE(M00_AXI_arsize);
  mp_M00_AXI_transactor->ARBURST(M00_AXI_arburst);
  mp_M00_AXI_arlock_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_arlock_converter");
  mp_M00_AXI_arlock_converter->scalar_in(m_M00_AXI_arlock_converter_signal);
  mp_M00_AXI_arlock_converter->vector_out(M00_AXI_arlock);
  mp_M00_AXI_transactor->ARLOCK(m_M00_AXI_arlock_converter_signal);
  mp_M00_AXI_transactor->ARCACHE(M00_AXI_arcache);
  mp_M00_AXI_transactor->ARPROT(M00_AXI_arprot);
  mp_M00_AXI_transactor->ARQOS(M00_AXI_arqos);
  mp_M00_AXI_transactor->ARVALID(M00_AXI_arvalid);
  mp_M00_AXI_transactor->ARREADY(M00_AXI_arready);
  mp_M00_AXI_transactor->RDATA(M00_AXI_rdata);
  mp_M00_AXI_transactor->RRESP(M00_AXI_rresp);
  mp_M00_AXI_transactor->RLAST(M00_AXI_rlast);
  mp_M00_AXI_transactor->RVALID(M00_AXI_rvalid);
  mp_M00_AXI_transactor->RREADY(M00_AXI_rready);
  mp_M00_AXI_transactor->CLK(aclk);
  mp_M00_AXI_transactor->RST(aresetn);

  // initialize transactors stubs
  S00_AXI_transactor_target_wr_socket_stub = nullptr;
  S00_AXI_transactor_target_rd_socket_stub = nullptr;
  S01_AXI_transactor_target_wr_socket_stub = nullptr;
  S01_AXI_transactor_target_rd_socket_stub = nullptr;
  S02_AXI_transactor_target_wr_socket_stub = nullptr;
  S02_AXI_transactor_target_rd_socket_stub = nullptr;
  S03_AXI_transactor_target_wr_socket_stub = nullptr;
  S03_AXI_transactor_target_rd_socket_stub = nullptr;
  S04_AXI_transactor_target_wr_socket_stub = nullptr;
  S04_AXI_transactor_target_rd_socket_stub = nullptr;
  S05_AXI_transactor_target_wr_socket_stub = nullptr;
  S05_AXI_transactor_target_rd_socket_stub = nullptr;
  S06_AXI_transactor_target_wr_socket_stub = nullptr;
  S06_AXI_transactor_target_rd_socket_stub = nullptr;
  S07_AXI_transactor_target_wr_socket_stub = nullptr;
  S07_AXI_transactor_target_rd_socket_stub = nullptr;
  S08_AXI_transactor_target_wr_socket_stub = nullptr;
  S08_AXI_transactor_target_rd_socket_stub = nullptr;
  S09_AXI_transactor_target_wr_socket_stub = nullptr;
  S09_AXI_transactor_target_rd_socket_stub = nullptr;
  S10_AXI_transactor_target_wr_socket_stub = nullptr;
  S10_AXI_transactor_target_rd_socket_stub = nullptr;
  S11_AXI_transactor_target_wr_socket_stub = nullptr;
  S11_AXI_transactor_target_rd_socket_stub = nullptr;
  S12_AXI_transactor_target_wr_socket_stub = nullptr;
  S12_AXI_transactor_target_rd_socket_stub = nullptr;
  S13_AXI_transactor_target_wr_socket_stub = nullptr;
  S13_AXI_transactor_target_rd_socket_stub = nullptr;
  S14_AXI_transactor_target_wr_socket_stub = nullptr;
  S14_AXI_transactor_target_rd_socket_stub = nullptr;
  S15_AXI_transactor_target_wr_socket_stub = nullptr;
  S15_AXI_transactor_target_rd_socket_stub = nullptr;
  M00_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M00_AXI_transactor_initiator_rd_socket_stub = nullptr;

}

void MemoryInterfacesVIP_smartconnect_0_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    mp_impl->S00_AXI_tlm_aximm_read_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->S00_AXI_tlm_aximm_write_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  
  }
  else
  {
    S00_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S00_AXI_transactor_target_wr_socket_stub->bind(*(mp_S00_AXI_transactor->wr_socket));
    S00_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S00_AXI_transactor_target_rd_socket_stub->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_S00_AXI_transactor->disable_transactor();
  }

  // configure 'S01_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S01_AXI_TLM_MODE") != 1)
  {
    mp_impl->S01_AXI_tlm_aximm_read_socket->bind(*(mp_S01_AXI_transactor->rd_socket));
    mp_impl->S01_AXI_tlm_aximm_write_socket->bind(*(mp_S01_AXI_transactor->wr_socket));
  
  }
  else
  {
    S01_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S01_AXI_transactor_target_wr_socket_stub->bind(*(mp_S01_AXI_transactor->wr_socket));
    S01_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S01_AXI_transactor_target_rd_socket_stub->bind(*(mp_S01_AXI_transactor->rd_socket));
    mp_S01_AXI_transactor->disable_transactor();
  }

  // configure 'S02_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S02_AXI_TLM_MODE") != 1)
  {
    mp_impl->S02_AXI_tlm_aximm_read_socket->bind(*(mp_S02_AXI_transactor->rd_socket));
    mp_impl->S02_AXI_tlm_aximm_write_socket->bind(*(mp_S02_AXI_transactor->wr_socket));
  
  }
  else
  {
    S02_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S02_AXI_transactor_target_wr_socket_stub->bind(*(mp_S02_AXI_transactor->wr_socket));
    S02_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S02_AXI_transactor_target_rd_socket_stub->bind(*(mp_S02_AXI_transactor->rd_socket));
    mp_S02_AXI_transactor->disable_transactor();
  }

  // configure 'S03_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S03_AXI_TLM_MODE") != 1)
  {
    mp_impl->S03_AXI_tlm_aximm_read_socket->bind(*(mp_S03_AXI_transactor->rd_socket));
    mp_impl->S03_AXI_tlm_aximm_write_socket->bind(*(mp_S03_AXI_transactor->wr_socket));
  
  }
  else
  {
    S03_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S03_AXI_transactor_target_wr_socket_stub->bind(*(mp_S03_AXI_transactor->wr_socket));
    S03_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S03_AXI_transactor_target_rd_socket_stub->bind(*(mp_S03_AXI_transactor->rd_socket));
    mp_S03_AXI_transactor->disable_transactor();
  }

  // configure 'S04_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S04_AXI_TLM_MODE") != 1)
  {
    mp_impl->S04_AXI_tlm_aximm_read_socket->bind(*(mp_S04_AXI_transactor->rd_socket));
    mp_impl->S04_AXI_tlm_aximm_write_socket->bind(*(mp_S04_AXI_transactor->wr_socket));
  
  }
  else
  {
    S04_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S04_AXI_transactor_target_wr_socket_stub->bind(*(mp_S04_AXI_transactor->wr_socket));
    S04_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S04_AXI_transactor_target_rd_socket_stub->bind(*(mp_S04_AXI_transactor->rd_socket));
    mp_S04_AXI_transactor->disable_transactor();
  }

  // configure 'S05_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S05_AXI_TLM_MODE") != 1)
  {
    mp_impl->S05_AXI_tlm_aximm_read_socket->bind(*(mp_S05_AXI_transactor->rd_socket));
    mp_impl->S05_AXI_tlm_aximm_write_socket->bind(*(mp_S05_AXI_transactor->wr_socket));
  
  }
  else
  {
    S05_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S05_AXI_transactor_target_wr_socket_stub->bind(*(mp_S05_AXI_transactor->wr_socket));
    S05_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S05_AXI_transactor_target_rd_socket_stub->bind(*(mp_S05_AXI_transactor->rd_socket));
    mp_S05_AXI_transactor->disable_transactor();
  }

  // configure 'S06_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S06_AXI_TLM_MODE") != 1)
  {
    mp_impl->S06_AXI_tlm_aximm_read_socket->bind(*(mp_S06_AXI_transactor->rd_socket));
    mp_impl->S06_AXI_tlm_aximm_write_socket->bind(*(mp_S06_AXI_transactor->wr_socket));
  
  }
  else
  {
    S06_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S06_AXI_transactor_target_wr_socket_stub->bind(*(mp_S06_AXI_transactor->wr_socket));
    S06_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S06_AXI_transactor_target_rd_socket_stub->bind(*(mp_S06_AXI_transactor->rd_socket));
    mp_S06_AXI_transactor->disable_transactor();
  }

  // configure 'S07_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S07_AXI_TLM_MODE") != 1)
  {
    mp_impl->S07_AXI_tlm_aximm_read_socket->bind(*(mp_S07_AXI_transactor->rd_socket));
    mp_impl->S07_AXI_tlm_aximm_write_socket->bind(*(mp_S07_AXI_transactor->wr_socket));
  
  }
  else
  {
    S07_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S07_AXI_transactor_target_wr_socket_stub->bind(*(mp_S07_AXI_transactor->wr_socket));
    S07_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S07_AXI_transactor_target_rd_socket_stub->bind(*(mp_S07_AXI_transactor->rd_socket));
    mp_S07_AXI_transactor->disable_transactor();
  }

  // configure 'S08_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S08_AXI_TLM_MODE") != 1)
  {
    mp_impl->S08_AXI_tlm_aximm_read_socket->bind(*(mp_S08_AXI_transactor->rd_socket));
    mp_impl->S08_AXI_tlm_aximm_write_socket->bind(*(mp_S08_AXI_transactor->wr_socket));
  
  }
  else
  {
    S08_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S08_AXI_transactor_target_wr_socket_stub->bind(*(mp_S08_AXI_transactor->wr_socket));
    S08_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S08_AXI_transactor_target_rd_socket_stub->bind(*(mp_S08_AXI_transactor->rd_socket));
    mp_S08_AXI_transactor->disable_transactor();
  }

  // configure 'S09_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S09_AXI_TLM_MODE") != 1)
  {
    mp_impl->S09_AXI_tlm_aximm_read_socket->bind(*(mp_S09_AXI_transactor->rd_socket));
    mp_impl->S09_AXI_tlm_aximm_write_socket->bind(*(mp_S09_AXI_transactor->wr_socket));
  
  }
  else
  {
    S09_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S09_AXI_transactor_target_wr_socket_stub->bind(*(mp_S09_AXI_transactor->wr_socket));
    S09_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S09_AXI_transactor_target_rd_socket_stub->bind(*(mp_S09_AXI_transactor->rd_socket));
    mp_S09_AXI_transactor->disable_transactor();
  }

  // configure 'S10_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S10_AXI_TLM_MODE") != 1)
  {
    mp_impl->S10_AXI_tlm_aximm_read_socket->bind(*(mp_S10_AXI_transactor->rd_socket));
    mp_impl->S10_AXI_tlm_aximm_write_socket->bind(*(mp_S10_AXI_transactor->wr_socket));
  
  }
  else
  {
    S10_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S10_AXI_transactor_target_wr_socket_stub->bind(*(mp_S10_AXI_transactor->wr_socket));
    S10_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S10_AXI_transactor_target_rd_socket_stub->bind(*(mp_S10_AXI_transactor->rd_socket));
    mp_S10_AXI_transactor->disable_transactor();
  }

  // configure 'S11_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S11_AXI_TLM_MODE") != 1)
  {
    mp_impl->S11_AXI_tlm_aximm_read_socket->bind(*(mp_S11_AXI_transactor->rd_socket));
    mp_impl->S11_AXI_tlm_aximm_write_socket->bind(*(mp_S11_AXI_transactor->wr_socket));
  
  }
  else
  {
    S11_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S11_AXI_transactor_target_wr_socket_stub->bind(*(mp_S11_AXI_transactor->wr_socket));
    S11_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S11_AXI_transactor_target_rd_socket_stub->bind(*(mp_S11_AXI_transactor->rd_socket));
    mp_S11_AXI_transactor->disable_transactor();
  }

  // configure 'S12_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S12_AXI_TLM_MODE") != 1)
  {
    mp_impl->S12_AXI_tlm_aximm_read_socket->bind(*(mp_S12_AXI_transactor->rd_socket));
    mp_impl->S12_AXI_tlm_aximm_write_socket->bind(*(mp_S12_AXI_transactor->wr_socket));
  
  }
  else
  {
    S12_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S12_AXI_transactor_target_wr_socket_stub->bind(*(mp_S12_AXI_transactor->wr_socket));
    S12_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S12_AXI_transactor_target_rd_socket_stub->bind(*(mp_S12_AXI_transactor->rd_socket));
    mp_S12_AXI_transactor->disable_transactor();
  }

  // configure 'S13_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S13_AXI_TLM_MODE") != 1)
  {
    mp_impl->S13_AXI_tlm_aximm_read_socket->bind(*(mp_S13_AXI_transactor->rd_socket));
    mp_impl->S13_AXI_tlm_aximm_write_socket->bind(*(mp_S13_AXI_transactor->wr_socket));
  
  }
  else
  {
    S13_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S13_AXI_transactor_target_wr_socket_stub->bind(*(mp_S13_AXI_transactor->wr_socket));
    S13_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S13_AXI_transactor_target_rd_socket_stub->bind(*(mp_S13_AXI_transactor->rd_socket));
    mp_S13_AXI_transactor->disable_transactor();
  }

  // configure 'S14_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S14_AXI_TLM_MODE") != 1)
  {
    mp_impl->S14_AXI_tlm_aximm_read_socket->bind(*(mp_S14_AXI_transactor->rd_socket));
    mp_impl->S14_AXI_tlm_aximm_write_socket->bind(*(mp_S14_AXI_transactor->wr_socket));
  
  }
  else
  {
    S14_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S14_AXI_transactor_target_wr_socket_stub->bind(*(mp_S14_AXI_transactor->wr_socket));
    S14_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S14_AXI_transactor_target_rd_socket_stub->bind(*(mp_S14_AXI_transactor->rd_socket));
    mp_S14_AXI_transactor->disable_transactor();
  }

  // configure 'S15_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "S15_AXI_TLM_MODE") != 1)
  {
    mp_impl->S15_AXI_tlm_aximm_read_socket->bind(*(mp_S15_AXI_transactor->rd_socket));
    mp_impl->S15_AXI_tlm_aximm_write_socket->bind(*(mp_S15_AXI_transactor->wr_socket));
  
  }
  else
  {
    S15_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S15_AXI_transactor_target_wr_socket_stub->bind(*(mp_S15_AXI_transactor->wr_socket));
    S15_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S15_AXI_transactor_target_rd_socket_stub->bind(*(mp_S15_AXI_transactor->rd_socket));
    mp_S15_AXI_transactor->disable_transactor();
  }

  // configure 'M00_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("MemoryInterfacesVIP_smartconnect_0_0", "M00_AXI_TLM_MODE") != 1)
  {
    mp_impl->M00_AXI_tlm_aximm_read_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->M00_AXI_tlm_aximm_write_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  
  }
  else
  {
    M00_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M00_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M00_AXI_transactor->wr_socket));
    M00_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M00_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_M00_AXI_transactor->disable_transactor();
  }

}

#endif // MTI_SYSTEMC




MemoryInterfacesVIP_smartconnect_0_0::~MemoryInterfacesVIP_smartconnect_0_0()
{
  delete mp_S00_AXI_transactor;
  delete mp_S00_AXI_awlock_converter;
  delete mp_S00_AXI_arlock_converter;

  delete mp_S01_AXI_transactor;
  delete mp_S01_AXI_awlock_converter;
  delete mp_S01_AXI_arlock_converter;

  delete mp_S02_AXI_transactor;
  delete mp_S02_AXI_awlock_converter;
  delete mp_S02_AXI_arlock_converter;

  delete mp_S03_AXI_transactor;
  delete mp_S03_AXI_awlock_converter;
  delete mp_S03_AXI_arlock_converter;

  delete mp_S04_AXI_transactor;
  delete mp_S04_AXI_awlock_converter;
  delete mp_S04_AXI_arlock_converter;

  delete mp_S05_AXI_transactor;
  delete mp_S05_AXI_awlock_converter;
  delete mp_S05_AXI_arlock_converter;

  delete mp_S06_AXI_transactor;
  delete mp_S06_AXI_awlock_converter;
  delete mp_S06_AXI_arlock_converter;

  delete mp_S07_AXI_transactor;
  delete mp_S07_AXI_awlock_converter;
  delete mp_S07_AXI_arlock_converter;

  delete mp_S08_AXI_transactor;
  delete mp_S08_AXI_awlock_converter;
  delete mp_S08_AXI_arlock_converter;

  delete mp_S09_AXI_transactor;
  delete mp_S09_AXI_awlock_converter;
  delete mp_S09_AXI_arlock_converter;

  delete mp_S10_AXI_transactor;
  delete mp_S10_AXI_awlock_converter;
  delete mp_S10_AXI_arlock_converter;

  delete mp_S11_AXI_transactor;
  delete mp_S11_AXI_awlock_converter;
  delete mp_S11_AXI_arlock_converter;

  delete mp_S12_AXI_transactor;
  delete mp_S12_AXI_awlock_converter;
  delete mp_S12_AXI_arlock_converter;

  delete mp_S13_AXI_transactor;
  delete mp_S13_AXI_awlock_converter;
  delete mp_S13_AXI_arlock_converter;

  delete mp_S14_AXI_transactor;
  delete mp_S14_AXI_awlock_converter;
  delete mp_S14_AXI_arlock_converter;

  delete mp_S15_AXI_transactor;
  delete mp_S15_AXI_awlock_converter;
  delete mp_S15_AXI_arlock_converter;

  delete mp_M00_AXI_transactor;
  delete mp_M00_AXI_awlock_converter;
  delete mp_M00_AXI_arlock_converter;

}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(MemoryInterfacesVIP_smartconnect_0_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(MemoryInterfacesVIP_smartconnect_0_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(MemoryInterfacesVIP_smartconnect_0_0);
SC_REGISTER_BV(512);
#endif

