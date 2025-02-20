// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Wed Mar 27 23:57:46 2024
// Host        : COE-CS-crystal running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top PE_IPs_blk_mem_gen_0_2 -prefix
//               PE_IPs_blk_mem_gen_0_2_ PE_IPs_blk_mem_gen_0_2_stub.v
// Design      : PE_IPs_blk_mem_gen_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *)
module PE_IPs_blk_mem_gen_0_2(clka, ena, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[9:0],dina[50:0],douta[50:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [9:0]addra;
  input [50:0]dina;
  output [50:0]douta;
endmodule
