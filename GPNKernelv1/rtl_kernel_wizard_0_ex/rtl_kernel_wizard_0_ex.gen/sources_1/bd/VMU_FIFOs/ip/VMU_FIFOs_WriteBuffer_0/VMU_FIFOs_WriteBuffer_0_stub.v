// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Thu Mar 28 01:17:53 2024
// Host        : COE-CS-crystal running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top VMU_FIFOs_WriteBuffer_0 -prefix
//               VMU_FIFOs_WriteBuffer_0_ VMU_FIFOs_fifo_generator_0_0_stub.v
// Design      : VMU_FIFOs_fifo_generator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.1" *)
module VMU_FIFOs_WriteBuffer_0(clk, srst, din, wr_en, rd_en, sleep, dout, full, empty, 
  wr_rst_busy, rd_rst_busy)
/* synthesis syn_black_box black_box_pad_pin="clk,srst,din[255:0],wr_en,rd_en,sleep,dout[255:0],full,empty,wr_rst_busy,rd_rst_busy" */;
  input clk;
  input srst;
  input [255:0]din;
  input wr_en;
  input rd_en;
  input sleep;
  output [255:0]dout;
  output full;
  output empty;
  output wr_rst_busy;
  output rd_rst_busy;
endmodule
