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


// IP VLNV: xilinx.com:ip:sc_switchboard:1.0
// IP Revision: 6

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_d1ca_arsw_0 (
  aclk,
  aclken,
  s_sc_send,
  s_sc_req,
  s_sc_info,
  s_sc_payld,
  s_sc_recv,
  m_sc_recv,
  m_sc_send,
  m_sc_req,
  m_sc_info,
  m_sc_payld
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN MemoryInterfacesVIP_c0_sys_clk_i, ASSOCIATED_BUSIF M00_SC:M01_SC:M02_SC:M03_SC:M04_SC:M05_SC:M06_SC:M07_SC:M08_SC:M09_SC:M10_SC:M11_SC:M12_SC:M13_SC:M14_SC:M15_SC:S00_SC:S01_SC:S02_SC:S03_SC:S04_SC:S05_SC:S06_SC:S07_SC:S08_SC:S09_SC:S10_SC:S11_SC:S12_SC:S13_SC:S14_SC:S15_SC, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclken, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 aclken CE" *)
input wire aclken;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 S00_SC SEND [0:0] [0:0], xilinx.com:interface:sc:1.0 S01_SC SEND [0:0] [1:1], xilinx.com:interface:sc:1.0 S02_SC SEND [0:0] [2:2], xilinx.com:interface:sc:1.0 S03_SC SEND [0:0] [3:3], xilinx.com:interface:sc:1.0 S04_SC SEND [0:0] [4:4], xilinx.com:interface:sc:1.0 S05_SC SEND [0:0] [5:5], xilinx.com:interface:sc:1.0 S06_SC SEND [0:0] [6:6], xilinx.com:interface:sc:1.0 S07_SC SEND [0:0] [7:7], xilinx.com:interface:sc:1.0 S08_SC SEND [0:0] [8:8], xilinx.com:interface:sc\
:1.0 S09_SC SEND [0:0] [9:9], xilinx.com:interface:sc:1.0 S10_SC SEND [0:0] [10:10], xilinx.com:interface:sc:1.0 S11_SC SEND [0:0] [11:11], xilinx.com:interface:sc:1.0 S12_SC SEND [0:0] [12:12], xilinx.com:interface:sc:1.0 S13_SC SEND [0:0] [13:13], xilinx.com:interface:sc:1.0 S14_SC SEND [0:0] [14:14], xilinx.com:interface:sc:1.0 S15_SC SEND [0:0] [15:15]" *)
input wire [15 : 0] s_sc_send;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 S00_SC REQ [0:0] [0:0], xilinx.com:interface:sc:1.0 S01_SC REQ [0:0] [1:1], xilinx.com:interface:sc:1.0 S02_SC REQ [0:0] [2:2], xilinx.com:interface:sc:1.0 S03_SC REQ [0:0] [3:3], xilinx.com:interface:sc:1.0 S04_SC REQ [0:0] [4:4], xilinx.com:interface:sc:1.0 S05_SC REQ [0:0] [5:5], xilinx.com:interface:sc:1.0 S06_SC REQ [0:0] [6:6], xilinx.com:interface:sc:1.0 S07_SC REQ [0:0] [7:7], xilinx.com:interface:sc:1.0 S08_SC REQ [0:0] [8:8], xilinx.com:interface:sc:1.0 S09_\
SC REQ [0:0] [9:9], xilinx.com:interface:sc:1.0 S10_SC REQ [0:0] [10:10], xilinx.com:interface:sc:1.0 S11_SC REQ [0:0] [11:11], xilinx.com:interface:sc:1.0 S12_SC REQ [0:0] [12:12], xilinx.com:interface:sc:1.0 S13_SC REQ [0:0] [13:13], xilinx.com:interface:sc:1.0 S14_SC REQ [0:0] [14:14], xilinx.com:interface:sc:1.0 S15_SC REQ [0:0] [15:15]" *)
input wire [15 : 0] s_sc_req;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 S00_SC INFO [0:0] [0:0], xilinx.com:interface:sc:1.0 S01_SC INFO [0:0] [1:1], xilinx.com:interface:sc:1.0 S02_SC INFO [0:0] [2:2], xilinx.com:interface:sc:1.0 S03_SC INFO [0:0] [3:3], xilinx.com:interface:sc:1.0 S04_SC INFO [0:0] [4:4], xilinx.com:interface:sc:1.0 S05_SC INFO [0:0] [5:5], xilinx.com:interface:sc:1.0 S06_SC INFO [0:0] [6:6], xilinx.com:interface:sc:1.0 S07_SC INFO [0:0] [7:7], xilinx.com:interface:sc:1.0 S08_SC INFO [0:0] [8:8], xilinx.com:interface:sc\
:1.0 S09_SC INFO [0:0] [9:9], xilinx.com:interface:sc:1.0 S10_SC INFO [0:0] [10:10], xilinx.com:interface:sc:1.0 S11_SC INFO [0:0] [11:11], xilinx.com:interface:sc:1.0 S12_SC INFO [0:0] [12:12], xilinx.com:interface:sc:1.0 S13_SC INFO [0:0] [13:13], xilinx.com:interface:sc:1.0 S14_SC INFO [0:0] [14:14], xilinx.com:interface:sc:1.0 S15_SC INFO [0:0] [15:15]" *)
input wire [15 : 0] s_sc_info;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 S00_SC PAYLD [147:0] [147:0], xilinx.com:interface:sc:1.0 S01_SC PAYLD [147:0] [295:148], xilinx.com:interface:sc:1.0 S02_SC PAYLD [147:0] [443:296], xilinx.com:interface:sc:1.0 S03_SC PAYLD [147:0] [591:444], xilinx.com:interface:sc:1.0 S04_SC PAYLD [147:0] [739:592], xilinx.com:interface:sc:1.0 S05_SC PAYLD [147:0] [887:740], xilinx.com:interface:sc:1.0 S06_SC PAYLD [147:0] [1035:888], xilinx.com:interface:sc:1.0 S07_SC PAYLD [147:0] [1183:1036], xilinx.com:interfac\
e:sc:1.0 S08_SC PAYLD [147:0] [1331:1184], xilinx.com:interface:sc:1.0 S09_SC PAYLD [147:0] [1479:1332], xilinx.com:interface:sc:1.0 S10_SC PAYLD [147:0] [1627:1480], xilinx.com:interface:sc:1.0 S11_SC PAYLD [147:0] [1775:1628], xilinx.com:interface:sc:1.0 S12_SC PAYLD [147:0] [1923:1776], xilinx.com:interface:sc:1.0 S13_SC PAYLD [147:0] [2071:1924], xilinx.com:interface:sc:1.0 S14_SC PAYLD [147:0] [2219:2072], xilinx.com:interface:sc:1.0 S15_SC PAYLD [147:0] [2367:2220]" *)
input wire [2367 : 0] s_sc_payld;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_SC, BRIDGES M00_SC:M01_SC:M02_SC:M03_SC:M04_SC:M05_SC:M06_SC:M07_SC:M08_SC:M09_SC:M10_SC:M11_SC:M12_SC:M13_SC:M14_SC:M15_SC, XIL_INTERFACENAME S01_SC, BRIDGES M00_SC:M01_SC:M02_SC:M03_SC:M04_SC:M05_SC:M06_SC:M07_SC:M08_SC:M09_SC:M10_SC:M11_SC:M12_SC:M13_SC:M14_SC:M15_SC, XIL_INTERFACENAME S02_SC, BRIDGES M00_SC:M01_SC:M02_SC:M03_SC:M04_SC:M05_SC:M06_SC:M07_SC:M08_SC:M09_SC:M10_SC:M11_SC:M12_SC:M13_SC:M14_SC:M15_SC, XIL_INTERFACENAME S03_SC, BRIDGES M00_SC:M01_SC:M02_SC:M03_\
SC:M04_SC:M05_SC:M06_SC:M07_SC:M08_SC:M09_SC:M10_SC:M11_SC:M12_SC:M13_SC:M14_SC:M15_SC, XIL_INTERFACENAME S04_SC, BRIDGES M00_SC:M01_SC:M02_SC:M03_SC:M04_SC:M05_SC:M06_SC:M07_SC:M08_SC:M09_SC:M10_SC:M11_SC:M12_SC:M13_SC:M14_SC:M15_SC, XIL_INTERFACENAME S05_SC, BRIDGES M00_SC:M01_SC:M02_SC:M03_SC:M04_SC:M05_SC:M06_SC:M07_SC:M08_SC:M09_SC:M10_SC:M11_SC:M12_SC:M13_SC:M14_SC:M15_SC, XIL_INTERFACENAME S06_SC, BRIDGES M00_SC:M01_SC:M02_SC:M03_SC:M04_SC:M05_SC:M06_SC:M07_SC:M08_SC:M09_SC:M10_SC:M11_SC:\
M12_SC:M13_SC:M14_SC:M15_SC, XIL_INTERFACENAME S07_SC, BRIDGES M00_SC:M01_SC:M02_SC:M03_SC:M04_SC:M05_SC:M06_SC:M07_SC:M08_SC:M09_SC:M10_SC:M11_SC:M12_SC:M13_SC:M14_SC:M15_SC, XIL_INTERFACENAME S08_SC, BRIDGES M00_SC:M01_SC:M02_SC:M03_SC:M04_SC:M05_SC:M06_SC:M07_SC:M08_SC:M09_SC:M10_SC:M11_SC:M12_SC:M13_SC:M14_SC:M15_SC, XIL_INTERFACENAME S09_SC, BRIDGES M00_SC:M01_SC:M02_SC:M03_SC:M04_SC:M05_SC:M06_SC:M07_SC:M08_SC:M09_SC:M10_SC:M11_SC:M12_SC:M13_SC:M14_SC:M15_SC, XIL_INTERFACENAME S10_SC, BRID\
GES M00_SC:M01_SC:M02_SC:M03_SC:M04_SC:M05_SC:M06_SC:M07_SC:M08_SC:M09_SC:M10_SC:M11_SC:M12_SC:M13_SC:M14_SC:M15_SC, XIL_INTERFACENAME S11_SC, BRIDGES M00_SC:M01_SC:M02_SC:M03_SC:M04_SC:M05_SC:M06_SC:M07_SC:M08_SC:M09_SC:M10_SC:M11_SC:M12_SC:M13_SC:M14_SC:M15_SC, XIL_INTERFACENAME S12_SC, BRIDGES M00_SC:M01_SC:M02_SC:M03_SC:M04_SC:M05_SC:M06_SC:M07_SC:M08_SC:M09_SC:M10_SC:M11_SC:M12_SC:M13_SC:M14_SC:M15_SC, XIL_INTERFACENAME S13_SC, BRIDGES M00_SC:M01_SC:M02_SC:M03_SC:M04_SC:M05_SC:M06_SC:M07_SC\
:M08_SC:M09_SC:M10_SC:M11_SC:M12_SC:M13_SC:M14_SC:M15_SC, XIL_INTERFACENAME S14_SC, BRIDGES M00_SC:M01_SC:M02_SC:M03_SC:M04_SC:M05_SC:M06_SC:M07_SC:M08_SC:M09_SC:M10_SC:M11_SC:M12_SC:M13_SC:M14_SC:M15_SC, XIL_INTERFACENAME S15_SC, BRIDGES M00_SC:M01_SC:M02_SC:M03_SC:M04_SC:M05_SC:M06_SC:M07_SC:M08_SC:M09_SC:M10_SC:M11_SC:M12_SC:M13_SC:M14_SC:M15_SC" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 S00_SC RECV [0:0] [0:0], xilinx.com:interface:sc:1.0 S01_SC RECV [0:0] [1:1], xilinx.com:interface:sc:1.0 S02_SC RECV [0:0] [2:2], xilinx.com:interface:sc:1.0 S03_SC RECV [0:0] [3:3], xilinx.com:interface:sc:1.0 S04_SC RECV [0:0] [4:4], xilinx.com:interface:sc:1.0 S05_SC RECV [0:0] [5:5], xilinx.com:interface:sc:1.0 S06_SC RECV [0:0] [6:6], xilinx.com:interface:sc:1.0 S07_SC RECV [0:0] [7:7], xilinx.com:interface:sc:1.0 S08_SC RECV [0:0] [8:8], xilinx.com:interface:sc\
:1.0 S09_SC RECV [0:0] [9:9], xilinx.com:interface:sc:1.0 S10_SC RECV [0:0] [10:10], xilinx.com:interface:sc:1.0 S11_SC RECV [0:0] [11:11], xilinx.com:interface:sc:1.0 S12_SC RECV [0:0] [12:12], xilinx.com:interface:sc:1.0 S13_SC RECV [0:0] [13:13], xilinx.com:interface:sc:1.0 S14_SC RECV [0:0] [14:14], xilinx.com:interface:sc:1.0 S15_SC RECV [0:0] [15:15]" *)
output wire [15 : 0] s_sc_recv;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M00_SC RECV" *)
input wire [15 : 0] m_sc_recv;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M00_SC SEND" *)
output wire [15 : 0] m_sc_send;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M00_SC REQ" *)
output wire [15 : 0] m_sc_req;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M00_SC INFO" *)
output wire [15 : 0] m_sc_info;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M00_SC PAYLD" *)
output wire [147 : 0] m_sc_payld;

  sc_switchboard_v1_0_6_top #(
    .C_PAYLD_WIDTH(148),
    .K_MAX_INFO_WIDTH(1),
    .C_S_PIPELINES(0),
    .C_M_PIPELINES(1),
    .C_S_LATENCY(0),
    .C_NUM_SI(16),
    .C_NUM_MI(1),
    .C_TESTING_MODE(0),
    .C_CONNECTIVITY(16'B1111111111111111)
  ) inst (
    .aclk(aclk),
    .aclken(aclken),
    .connectivity(16'B1111111111111111),
    .s_sc_send(s_sc_send),
    .s_sc_req(s_sc_req),
    .s_sc_info(s_sc_info),
    .s_sc_payld(s_sc_payld),
    .s_sc_recv(s_sc_recv),
    .m_sc_recv(m_sc_recv),
    .m_sc_send(m_sc_send),
    .m_sc_req(m_sc_req),
    .m_sc_info(m_sc_info),
    .m_sc_payld(m_sc_payld)
  );
endmodule
