// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sun Apr 14 22:03:28 2024
// Host        : COE-CS-crystal running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/austin01/vivado/rtl_kernel_wizard_0_ex/rtl_kernel_wizard_0_ex.gen/sources_1/bd/PE_IPs/ip/PE_IPs_Msg_FIFO_In_1/PE_IPs_Msg_FIFO_In_1_stub.v
// Design      : PE_IPs_Msg_FIFO_In_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.1" *)
module PE_IPs_Msg_FIFO_In_1(clk, srst, din, wr_en, rd_en, dout, full, empty, valid, 
  prog_full, wr_rst_busy, rd_rst_busy)
/* synthesis syn_black_box black_box_pad_pin="clk,srst,din[93:0],wr_en,rd_en,dout[93:0],full,empty,valid,prog_full,wr_rst_busy,rd_rst_busy" */;
  input clk;
  input srst;
  input [93:0]din;
  input wr_en;
  input rd_en;
  output [93:0]dout;
  output full;
  output empty;
  output valid;
  output prog_full;
  output wr_rst_busy;
  output rd_rst_busy;
endmodule
