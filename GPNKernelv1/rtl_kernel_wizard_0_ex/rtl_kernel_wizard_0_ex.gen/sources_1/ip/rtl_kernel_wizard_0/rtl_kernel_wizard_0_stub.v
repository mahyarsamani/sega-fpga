// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Wed Mar 27 22:43:13 2024
// Host        : COE-CS-crystal running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/austin01/vivado/PE_Kernel/PE_Kernel.gen/sources_1/ip/rtl_kernel_wizard_0/rtl_kernel_wizard_0_stub.v
// Design      : rtl_kernel_wizard_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "rtl_kernel_wizard_v1_0_7_dummy,Vivado 2022.1" *)
module rtl_kernel_wizard_0(ap_clk)
/* synthesis syn_black_box black_box_pad_pin="ap_clk" */;
  input ap_clk;
endmodule
