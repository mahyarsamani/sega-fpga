//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
//Date        : Tue Apr 30 23:38:39 2024
//Host        : COE-CS-crystal running 64-bit Ubuntu 22.04.3 LTS
//Command     : generate_target MemoryInterfacesVIP_wrapper.bd
//Design      : MemoryInterfacesVIP_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MemoryInterfacesVIP_wrapper
   (DDR_00_end_read,
    DDR_00_end_write,
    DDR_00_rburst,
    DDR_00_read_addr,
    DDR_00_read_data,
    DDR_00_read_ready,
    DDR_00_start_read,
    DDR_00_start_write,
    DDR_00_wburst,
    DDR_00_write_addr,
    DDR_00_write_data,
    DDR_00_write_last,
    DDR_00_write_ready,
    DDR_00_write_resp,
    DDR_01_end_read,
    DDR_01_end_write,
    DDR_01_rburst,
    DDR_01_read_addr,
    DDR_01_read_data,
    DDR_01_read_ready,
    DDR_01_start_read,
    DDR_01_start_write,
    DDR_01_wburst,
    DDR_01_write_addr,
    DDR_01_write_data,
    DDR_01_write_last,
    DDR_01_write_ready,
    DDR_01_write_resp,
    DDR_02_end_read,
    DDR_02_end_write,
    DDR_02_rburst,
    DDR_02_read_addr,
    DDR_02_read_data,
    DDR_02_read_ready,
    DDR_02_start_read,
    DDR_02_start_write,
    DDR_02_wburst,
    DDR_02_write_addr,
    DDR_02_write_data,
    DDR_02_write_last,
    DDR_02_write_ready,
    DDR_02_write_resp,
    DDR_03_end_read,
    DDR_03_end_write,
    DDR_03_rburst,
    DDR_03_read_addr,
    DDR_03_read_data,
    DDR_03_read_ready,
    DDR_03_start_read,
    DDR_03_start_write,
    DDR_03_wburst,
    DDR_03_write_addr,
    DDR_03_write_data,
    DDR_03_write_last,
    DDR_03_write_ready,
    DDR_03_write_resp,
    DDR_04_end_read,
    DDR_04_end_write,
    DDR_04_rburst,
    DDR_04_read_addr,
    DDR_04_read_data,
    DDR_04_read_ready,
    DDR_04_start_read,
    DDR_04_start_write,
    DDR_04_wburst,
    DDR_04_write_addr,
    DDR_04_write_data,
    DDR_04_write_last,
    DDR_04_write_ready,
    DDR_04_write_resp,
    DDR_05_end_read,
    DDR_05_end_write,
    DDR_05_rburst,
    DDR_05_read_addr,
    DDR_05_read_data,
    DDR_05_read_ready,
    DDR_05_start_read,
    DDR_05_start_write,
    DDR_05_wburst,
    DDR_05_write_addr,
    DDR_05_write_data,
    DDR_05_write_last,
    DDR_05_write_ready,
    DDR_05_write_resp,
    DDR_06_end_read,
    DDR_06_end_write,
    DDR_06_rburst,
    DDR_06_read_addr,
    DDR_06_read_data,
    DDR_06_read_ready,
    DDR_06_start_read,
    DDR_06_start_write,
    DDR_06_wburst,
    DDR_06_write_addr,
    DDR_06_write_data,
    DDR_06_write_last,
    DDR_06_write_ready,
    DDR_06_write_resp,
    DDR_07_end_read,
    DDR_07_end_write,
    DDR_07_rburst,
    DDR_07_read_addr,
    DDR_07_read_data,
    DDR_07_read_ready,
    DDR_07_start_read,
    DDR_07_start_write,
    DDR_07_wburst,
    DDR_07_write_addr,
    DDR_07_write_data,
    DDR_07_write_last,
    DDR_07_write_ready,
    DDR_07_write_resp,
    DDR_08_end_read,
    DDR_08_end_write,
    DDR_08_rburst,
    DDR_08_read_addr,
    DDR_08_read_data,
    DDR_08_read_ready,
    DDR_08_start_read,
    DDR_08_start_write,
    DDR_08_wburst,
    DDR_08_write_addr,
    DDR_08_write_data,
    DDR_08_write_last,
    DDR_08_write_ready,
    DDR_08_write_resp,
    DDR_09_end_read,
    DDR_09_end_write,
    DDR_09_rburst,
    DDR_09_read_addr,
    DDR_09_read_data,
    DDR_09_read_ready,
    DDR_09_start_read,
    DDR_09_start_write,
    DDR_09_wburst,
    DDR_09_write_addr,
    DDR_09_write_data,
    DDR_09_write_last,
    DDR_09_write_ready,
    DDR_09_write_resp,
    DDR_10_end_read,
    DDR_10_end_write,
    DDR_10_rburst,
    DDR_10_read_addr,
    DDR_10_read_data,
    DDR_10_read_ready,
    DDR_10_start_read,
    DDR_10_start_write,
    DDR_10_wburst,
    DDR_10_write_addr,
    DDR_10_write_data,
    DDR_10_write_last,
    DDR_10_write_ready,
    DDR_10_write_resp,
    DDR_11_end_read,
    DDR_11_end_write,
    DDR_11_rburst,
    DDR_11_read_addr,
    DDR_11_read_data,
    DDR_11_read_ready,
    DDR_11_start_read,
    DDR_11_start_write,
    DDR_11_wburst,
    DDR_11_write_addr,
    DDR_11_write_data,
    DDR_11_write_last,
    DDR_11_write_ready,
    DDR_11_write_resp,
    DDR_12_end_read,
    DDR_12_end_write,
    DDR_12_rburst,
    DDR_12_read_addr,
    DDR_12_read_data,
    DDR_12_read_ready,
    DDR_12_start_read,
    DDR_12_start_write,
    DDR_12_wburst,
    DDR_12_write_addr,
    DDR_12_write_data,
    DDR_12_write_last,
    DDR_12_write_ready,
    DDR_12_write_resp,
    DDR_13_end_read,
    DDR_13_end_write,
    DDR_13_rburst,
    DDR_13_read_addr,
    DDR_13_read_data,
    DDR_13_read_ready,
    DDR_13_start_read,
    DDR_13_start_write,
    DDR_13_wburst,
    DDR_13_write_addr,
    DDR_13_write_data,
    DDR_13_write_last,
    DDR_13_write_ready,
    DDR_13_write_resp,
    DDR_14_end_read,
    DDR_14_end_write,
    DDR_14_rburst,
    DDR_14_read_addr,
    DDR_14_read_data,
    DDR_14_read_ready,
    DDR_14_start_read,
    DDR_14_start_write,
    DDR_14_wburst,
    DDR_14_write_addr,
    DDR_14_write_data,
    DDR_14_write_last,
    DDR_14_write_ready,
    DDR_14_write_resp,
    DDR_15_end_read,
    DDR_15_end_write,
    DDR_15_rburst,
    DDR_15_read_addr,
    DDR_15_read_data,
    DDR_15_read_ready,
    DDR_15_start_read,
    DDR_15_start_write,
    DDR_15_wburst,
    DDR_15_write_addr,
    DDR_15_write_data,
    DDR_15_write_last,
    DDR_15_write_ready,
    DDR_15_write_resp,
    HBM_00_ARESET_N,
    HBM_00_end_read,
    HBM_00_end_write,
    HBM_00_rburst,
    HBM_00_read_addr,
    HBM_00_read_data,
    HBM_00_read_ready,
    HBM_00_start_read,
    HBM_00_start_write,
    HBM_00_wburst,
    HBM_00_write_addr,
    HBM_00_write_data,
    HBM_00_write_last,
    HBM_00_write_ready,
    HBM_00_write_resp,
    HBM_01_end_read,
    HBM_01_end_write,
    HBM_01_rburst,
    HBM_01_read_addr,
    HBM_01_read_data,
    HBM_01_read_ready,
    HBM_01_start_read,
    HBM_01_start_write,
    HBM_01_wburst,
    HBM_01_write_addr,
    HBM_01_write_data,
    HBM_01_write_last,
    HBM_01_write_ready,
    HBM_01_write_resp,
    HBM_02_end_read,
    HBM_02_end_write,
    HBM_02_rburst,
    HBM_02_read_addr,
    HBM_02_read_data,
    HBM_02_read_ready,
    HBM_02_start_read,
    HBM_02_start_write,
    HBM_02_wburst,
    HBM_02_write_addr,
    HBM_02_write_data,
    HBM_02_write_last,
    HBM_02_write_ready,
    HBM_02_write_resp,
    HBM_03_end_read,
    HBM_03_end_write,
    HBM_03_rburst,
    HBM_03_read_addr,
    HBM_03_read_data,
    HBM_03_read_ready,
    HBM_03_start_read,
    HBM_03_start_write,
    HBM_03_wburst,
    HBM_03_write_addr,
    HBM_03_write_data,
    HBM_03_write_last,
    HBM_03_write_ready,
    HBM_03_write_resp,
    HBM_04_end_read,
    HBM_04_end_write,
    HBM_04_rburst,
    HBM_04_read_addr,
    HBM_04_read_data,
    HBM_04_read_ready,
    HBM_04_start_read,
    HBM_04_start_write,
    HBM_04_wburst,
    HBM_04_write_addr,
    HBM_04_write_data,
    HBM_04_write_last,
    HBM_04_write_ready,
    HBM_04_write_resp,
    HBM_05_end_read,
    HBM_05_end_write,
    HBM_05_rburst,
    HBM_05_read_addr,
    HBM_05_read_data,
    HBM_05_read_ready,
    HBM_05_start_read,
    HBM_05_start_write,
    HBM_05_wburst,
    HBM_05_write_addr,
    HBM_05_write_data,
    HBM_05_write_last,
    HBM_05_write_ready,
    HBM_05_write_resp,
    HBM_06_end_read,
    HBM_06_end_write,
    HBM_06_rburst,
    HBM_06_read_addr,
    HBM_06_read_data,
    HBM_06_read_ready,
    HBM_06_start_read,
    HBM_06_start_write,
    HBM_06_wburst,
    HBM_06_write_addr,
    HBM_06_write_data,
    HBM_06_write_last,
    HBM_06_write_ready,
    HBM_06_write_resp,
    HBM_07_end_read,
    HBM_07_end_write,
    HBM_07_rburst,
    HBM_07_read_addr,
    HBM_07_read_data,
    HBM_07_read_ready,
    HBM_07_start_read,
    HBM_07_start_write,
    HBM_07_wburst,
    HBM_07_write_addr,
    HBM_07_write_data,
    HBM_07_write_last,
    HBM_07_write_ready,
    HBM_07_write_resp,
    HBM_08_end_read,
    HBM_08_end_write,
    HBM_08_rburst,
    HBM_08_read_addr,
    HBM_08_read_data,
    HBM_08_read_ready,
    HBM_08_start_read,
    HBM_08_start_write,
    HBM_08_wburst,
    HBM_08_write_addr,
    HBM_08_write_data,
    HBM_08_write_last,
    HBM_08_write_ready,
    HBM_08_write_resp,
    HBM_09_end_read,
    HBM_09_end_write,
    HBM_09_rburst,
    HBM_09_read_addr,
    HBM_09_read_data,
    HBM_09_read_ready,
    HBM_09_start_read,
    HBM_09_start_write,
    HBM_09_wburst,
    HBM_09_write_addr,
    HBM_09_write_data,
    HBM_09_write_last,
    HBM_09_write_ready,
    HBM_09_write_resp,
    HBM_10_end_read,
    HBM_10_end_write,
    HBM_10_rburst,
    HBM_10_read_addr,
    HBM_10_read_data,
    HBM_10_read_ready,
    HBM_10_start_read,
    HBM_10_start_write,
    HBM_10_wburst,
    HBM_10_write_addr,
    HBM_10_write_data,
    HBM_10_write_last,
    HBM_10_write_ready,
    HBM_10_write_resp,
    HBM_11_end_read,
    HBM_11_end_write,
    HBM_11_rburst,
    HBM_11_read_addr,
    HBM_11_read_data,
    HBM_11_read_ready,
    HBM_11_start_read,
    HBM_11_start_write,
    HBM_11_wburst,
    HBM_11_write_addr,
    HBM_11_write_data,
    HBM_11_write_last,
    HBM_11_write_ready,
    HBM_11_write_resp,
    HBM_12_end_read,
    HBM_12_end_write,
    HBM_12_rburst,
    HBM_12_read_addr,
    HBM_12_read_data,
    HBM_12_read_ready,
    HBM_12_start_read,
    HBM_12_start_write,
    HBM_12_wburst,
    HBM_12_write_addr,
    HBM_12_write_data,
    HBM_12_write_last,
    HBM_12_write_ready,
    HBM_12_write_resp,
    HBM_13_end_read,
    HBM_13_end_write,
    HBM_13_rburst,
    HBM_13_read_addr,
    HBM_13_read_data,
    HBM_13_read_ready,
    HBM_13_start_read,
    HBM_13_start_write,
    HBM_13_wburst,
    HBM_13_write_addr,
    HBM_13_write_data,
    HBM_13_write_last,
    HBM_13_write_ready,
    HBM_13_write_resp,
    HBM_14_end_read,
    HBM_14_end_write,
    HBM_14_rburst,
    HBM_14_read_addr,
    HBM_14_read_data,
    HBM_14_read_ready,
    HBM_14_start_read,
    HBM_14_start_write,
    HBM_14_wburst,
    HBM_14_write_addr,
    HBM_14_write_data,
    HBM_14_write_last,
    HBM_14_write_ready,
    HBM_14_write_resp,
    HBM_15_end_read,
    HBM_15_end_write,
    HBM_15_rburst,
    HBM_15_read_addr,
    HBM_15_read_data,
    HBM_15_read_ready,
    HBM_15_start_read,
    HBM_15_start_write,
    HBM_15_wburst,
    HBM_15_write_addr,
    HBM_15_write_data,
    HBM_15_write_last,
    HBM_15_write_ready,
    HBM_15_write_resp,
    c0_sys_clk_i);
  output DDR_00_end_read;
  output [1:0]DDR_00_end_write;
  input [7:0]DDR_00_rburst;
  input [33:0]DDR_00_read_addr;
  output [511:0]DDR_00_read_data;
  output DDR_00_read_ready;
  input DDR_00_start_read;
  input DDR_00_start_write;
  input [7:0]DDR_00_wburst;
  input [33:0]DDR_00_write_addr;
  input [511:0]DDR_00_write_data;
  output DDR_00_write_last;
  input DDR_00_write_ready;
  output DDR_00_write_resp;
  output DDR_01_end_read;
  output [1:0]DDR_01_end_write;
  input [7:0]DDR_01_rburst;
  input [33:0]DDR_01_read_addr;
  output [511:0]DDR_01_read_data;
  output DDR_01_read_ready;
  input DDR_01_start_read;
  input DDR_01_start_write;
  input [7:0]DDR_01_wburst;
  input [33:0]DDR_01_write_addr;
  input [511:0]DDR_01_write_data;
  output DDR_01_write_last;
  input DDR_01_write_ready;
  output DDR_01_write_resp;
  output DDR_02_end_read;
  output [1:0]DDR_02_end_write;
  input [7:0]DDR_02_rburst;
  input [33:0]DDR_02_read_addr;
  output [511:0]DDR_02_read_data;
  output DDR_02_read_ready;
  input DDR_02_start_read;
  input DDR_02_start_write;
  input [7:0]DDR_02_wburst;
  input [33:0]DDR_02_write_addr;
  input [511:0]DDR_02_write_data;
  output DDR_02_write_last;
  input DDR_02_write_ready;
  output DDR_02_write_resp;
  output DDR_03_end_read;
  output [1:0]DDR_03_end_write;
  input [7:0]DDR_03_rburst;
  input [33:0]DDR_03_read_addr;
  output [511:0]DDR_03_read_data;
  output DDR_03_read_ready;
  input DDR_03_start_read;
  input DDR_03_start_write;
  input [7:0]DDR_03_wburst;
  input [33:0]DDR_03_write_addr;
  input [511:0]DDR_03_write_data;
  output DDR_03_write_last;
  input DDR_03_write_ready;
  output DDR_03_write_resp;
  output DDR_04_end_read;
  output [1:0]DDR_04_end_write;
  input [7:0]DDR_04_rburst;
  input [33:0]DDR_04_read_addr;
  output [511:0]DDR_04_read_data;
  output DDR_04_read_ready;
  input DDR_04_start_read;
  input DDR_04_start_write;
  input [7:0]DDR_04_wburst;
  input [33:0]DDR_04_write_addr;
  input [511:0]DDR_04_write_data;
  output DDR_04_write_last;
  input DDR_04_write_ready;
  output DDR_04_write_resp;
  output DDR_05_end_read;
  output [1:0]DDR_05_end_write;
  input [7:0]DDR_05_rburst;
  input [33:0]DDR_05_read_addr;
  output [511:0]DDR_05_read_data;
  output DDR_05_read_ready;
  input DDR_05_start_read;
  input DDR_05_start_write;
  input [7:0]DDR_05_wburst;
  input [33:0]DDR_05_write_addr;
  input [511:0]DDR_05_write_data;
  output DDR_05_write_last;
  input DDR_05_write_ready;
  output DDR_05_write_resp;
  output DDR_06_end_read;
  output [1:0]DDR_06_end_write;
  input [7:0]DDR_06_rburst;
  input [33:0]DDR_06_read_addr;
  output [511:0]DDR_06_read_data;
  output DDR_06_read_ready;
  input DDR_06_start_read;
  input DDR_06_start_write;
  input [7:0]DDR_06_wburst;
  input [33:0]DDR_06_write_addr;
  input [511:0]DDR_06_write_data;
  output DDR_06_write_last;
  input DDR_06_write_ready;
  output DDR_06_write_resp;
  output DDR_07_end_read;
  output [1:0]DDR_07_end_write;
  input [7:0]DDR_07_rburst;
  input [33:0]DDR_07_read_addr;
  output [511:0]DDR_07_read_data;
  output DDR_07_read_ready;
  input DDR_07_start_read;
  input DDR_07_start_write;
  input [7:0]DDR_07_wburst;
  input [33:0]DDR_07_write_addr;
  input [511:0]DDR_07_write_data;
  output DDR_07_write_last;
  input DDR_07_write_ready;
  output DDR_07_write_resp;
  output DDR_08_end_read;
  output [1:0]DDR_08_end_write;
  input [7:0]DDR_08_rburst;
  input [33:0]DDR_08_read_addr;
  output [511:0]DDR_08_read_data;
  output DDR_08_read_ready;
  input DDR_08_start_read;
  input DDR_08_start_write;
  input [7:0]DDR_08_wburst;
  input [33:0]DDR_08_write_addr;
  input [511:0]DDR_08_write_data;
  output DDR_08_write_last;
  input DDR_08_write_ready;
  output DDR_08_write_resp;
  output DDR_09_end_read;
  output [1:0]DDR_09_end_write;
  input [7:0]DDR_09_rburst;
  input [33:0]DDR_09_read_addr;
  output [511:0]DDR_09_read_data;
  output DDR_09_read_ready;
  input DDR_09_start_read;
  input DDR_09_start_write;
  input [7:0]DDR_09_wburst;
  input [33:0]DDR_09_write_addr;
  input [511:0]DDR_09_write_data;
  output DDR_09_write_last;
  input DDR_09_write_ready;
  output DDR_09_write_resp;
  output DDR_10_end_read;
  output [1:0]DDR_10_end_write;
  input [7:0]DDR_10_rburst;
  input [33:0]DDR_10_read_addr;
  output [511:0]DDR_10_read_data;
  output DDR_10_read_ready;
  input DDR_10_start_read;
  input DDR_10_start_write;
  input [7:0]DDR_10_wburst;
  input [33:0]DDR_10_write_addr;
  input [511:0]DDR_10_write_data;
  output DDR_10_write_last;
  input DDR_10_write_ready;
  output DDR_10_write_resp;
  output DDR_11_end_read;
  output [1:0]DDR_11_end_write;
  input [7:0]DDR_11_rburst;
  input [33:0]DDR_11_read_addr;
  output [511:0]DDR_11_read_data;
  output DDR_11_read_ready;
  input DDR_11_start_read;
  input DDR_11_start_write;
  input [7:0]DDR_11_wburst;
  input [33:0]DDR_11_write_addr;
  input [511:0]DDR_11_write_data;
  output DDR_11_write_last;
  input DDR_11_write_ready;
  output DDR_11_write_resp;
  output DDR_12_end_read;
  output [1:0]DDR_12_end_write;
  input [7:0]DDR_12_rburst;
  input [33:0]DDR_12_read_addr;
  output [511:0]DDR_12_read_data;
  output DDR_12_read_ready;
  input DDR_12_start_read;
  input DDR_12_start_write;
  input [7:0]DDR_12_wburst;
  input [33:0]DDR_12_write_addr;
  input [511:0]DDR_12_write_data;
  output DDR_12_write_last;
  input DDR_12_write_ready;
  output DDR_12_write_resp;
  output DDR_13_end_read;
  output [1:0]DDR_13_end_write;
  input [7:0]DDR_13_rburst;
  input [33:0]DDR_13_read_addr;
  output [511:0]DDR_13_read_data;
  output DDR_13_read_ready;
  input DDR_13_start_read;
  input DDR_13_start_write;
  input [7:0]DDR_13_wburst;
  input [33:0]DDR_13_write_addr;
  input [511:0]DDR_13_write_data;
  output DDR_13_write_last;
  input DDR_13_write_ready;
  output DDR_13_write_resp;
  output DDR_14_end_read;
  output [1:0]DDR_14_end_write;
  input [7:0]DDR_14_rburst;
  input [33:0]DDR_14_read_addr;
  output [511:0]DDR_14_read_data;
  output DDR_14_read_ready;
  input DDR_14_start_read;
  input DDR_14_start_write;
  input [7:0]DDR_14_wburst;
  input [33:0]DDR_14_write_addr;
  input [511:0]DDR_14_write_data;
  output DDR_14_write_last;
  input DDR_14_write_ready;
  output DDR_14_write_resp;
  output DDR_15_end_read;
  output [1:0]DDR_15_end_write;
  input [7:0]DDR_15_rburst;
  input [33:0]DDR_15_read_addr;
  output [511:0]DDR_15_read_data;
  output DDR_15_read_ready;
  input DDR_15_start_read;
  input DDR_15_start_write;
  input [7:0]DDR_15_wburst;
  input [33:0]DDR_15_write_addr;
  input [511:0]DDR_15_write_data;
  output DDR_15_write_last;
  input DDR_15_write_ready;
  output DDR_15_write_resp;
  input HBM_00_ARESET_N;
  output HBM_00_end_read;
  output [1:0]HBM_00_end_write;
  input [7:0]HBM_00_rburst;
  input [32:0]HBM_00_read_addr;
  output [255:0]HBM_00_read_data;
  output HBM_00_read_ready;
  input HBM_00_start_read;
  input HBM_00_start_write;
  input [7:0]HBM_00_wburst;
  input [32:0]HBM_00_write_addr;
  input [255:0]HBM_00_write_data;
  output HBM_00_write_last;
  input HBM_00_write_ready;
  output HBM_00_write_resp;
  output HBM_01_end_read;
  output [1:0]HBM_01_end_write;
  input [7:0]HBM_01_rburst;
  input [32:0]HBM_01_read_addr;
  output [255:0]HBM_01_read_data;
  output HBM_01_read_ready;
  input HBM_01_start_read;
  input HBM_01_start_write;
  input [7:0]HBM_01_wburst;
  input [32:0]HBM_01_write_addr;
  input [255:0]HBM_01_write_data;
  output HBM_01_write_last;
  input HBM_01_write_ready;
  output HBM_01_write_resp;
  output HBM_02_end_read;
  output [1:0]HBM_02_end_write;
  input [7:0]HBM_02_rburst;
  input [32:0]HBM_02_read_addr;
  output [255:0]HBM_02_read_data;
  output HBM_02_read_ready;
  input HBM_02_start_read;
  input HBM_02_start_write;
  input [7:0]HBM_02_wburst;
  input [32:0]HBM_02_write_addr;
  input [255:0]HBM_02_write_data;
  output HBM_02_write_last;
  input HBM_02_write_ready;
  output HBM_02_write_resp;
  output HBM_03_end_read;
  output [1:0]HBM_03_end_write;
  input [7:0]HBM_03_rburst;
  input [32:0]HBM_03_read_addr;
  output [255:0]HBM_03_read_data;
  output HBM_03_read_ready;
  input HBM_03_start_read;
  input HBM_03_start_write;
  input [7:0]HBM_03_wburst;
  input [32:0]HBM_03_write_addr;
  input [255:0]HBM_03_write_data;
  output HBM_03_write_last;
  input HBM_03_write_ready;
  output HBM_03_write_resp;
  output HBM_04_end_read;
  output [1:0]HBM_04_end_write;
  input [7:0]HBM_04_rburst;
  input [32:0]HBM_04_read_addr;
  output [255:0]HBM_04_read_data;
  output HBM_04_read_ready;
  input HBM_04_start_read;
  input HBM_04_start_write;
  input [7:0]HBM_04_wburst;
  input [32:0]HBM_04_write_addr;
  input [255:0]HBM_04_write_data;
  output HBM_04_write_last;
  input HBM_04_write_ready;
  output HBM_04_write_resp;
  output HBM_05_end_read;
  output [1:0]HBM_05_end_write;
  input [7:0]HBM_05_rburst;
  input [32:0]HBM_05_read_addr;
  output [255:0]HBM_05_read_data;
  output HBM_05_read_ready;
  input HBM_05_start_read;
  input HBM_05_start_write;
  input [7:0]HBM_05_wburst;
  input [32:0]HBM_05_write_addr;
  input [255:0]HBM_05_write_data;
  output HBM_05_write_last;
  input HBM_05_write_ready;
  output HBM_05_write_resp;
  output HBM_06_end_read;
  output [1:0]HBM_06_end_write;
  input [7:0]HBM_06_rburst;
  input [32:0]HBM_06_read_addr;
  output [255:0]HBM_06_read_data;
  output HBM_06_read_ready;
  input HBM_06_start_read;
  input HBM_06_start_write;
  input [7:0]HBM_06_wburst;
  input [32:0]HBM_06_write_addr;
  input [255:0]HBM_06_write_data;
  output HBM_06_write_last;
  input HBM_06_write_ready;
  output HBM_06_write_resp;
  output HBM_07_end_read;
  output [1:0]HBM_07_end_write;
  input [7:0]HBM_07_rburst;
  input [32:0]HBM_07_read_addr;
  output [255:0]HBM_07_read_data;
  output HBM_07_read_ready;
  input HBM_07_start_read;
  input HBM_07_start_write;
  input [7:0]HBM_07_wburst;
  input [32:0]HBM_07_write_addr;
  input [255:0]HBM_07_write_data;
  output HBM_07_write_last;
  input HBM_07_write_ready;
  output HBM_07_write_resp;
  output HBM_08_end_read;
  output [1:0]HBM_08_end_write;
  input [7:0]HBM_08_rburst;
  input [32:0]HBM_08_read_addr;
  output [255:0]HBM_08_read_data;
  output HBM_08_read_ready;
  input HBM_08_start_read;
  input HBM_08_start_write;
  input [7:0]HBM_08_wburst;
  input [32:0]HBM_08_write_addr;
  input [255:0]HBM_08_write_data;
  output HBM_08_write_last;
  input HBM_08_write_ready;
  output HBM_08_write_resp;
  output HBM_09_end_read;
  output [1:0]HBM_09_end_write;
  input [7:0]HBM_09_rburst;
  input [32:0]HBM_09_read_addr;
  output [255:0]HBM_09_read_data;
  output HBM_09_read_ready;
  input HBM_09_start_read;
  input HBM_09_start_write;
  input [7:0]HBM_09_wburst;
  input [32:0]HBM_09_write_addr;
  input [255:0]HBM_09_write_data;
  output HBM_09_write_last;
  input HBM_09_write_ready;
  output HBM_09_write_resp;
  output HBM_10_end_read;
  output [1:0]HBM_10_end_write;
  input [7:0]HBM_10_rburst;
  input [32:0]HBM_10_read_addr;
  output [255:0]HBM_10_read_data;
  output HBM_10_read_ready;
  input HBM_10_start_read;
  input HBM_10_start_write;
  input [7:0]HBM_10_wburst;
  input [32:0]HBM_10_write_addr;
  input [255:0]HBM_10_write_data;
  output HBM_10_write_last;
  input HBM_10_write_ready;
  output HBM_10_write_resp;
  output HBM_11_end_read;
  output [1:0]HBM_11_end_write;
  input [7:0]HBM_11_rburst;
  input [32:0]HBM_11_read_addr;
  output [255:0]HBM_11_read_data;
  output HBM_11_read_ready;
  input HBM_11_start_read;
  input HBM_11_start_write;
  input [7:0]HBM_11_wburst;
  input [32:0]HBM_11_write_addr;
  input [255:0]HBM_11_write_data;
  output HBM_11_write_last;
  input HBM_11_write_ready;
  output HBM_11_write_resp;
  output HBM_12_end_read;
  output [1:0]HBM_12_end_write;
  input [7:0]HBM_12_rburst;
  input [32:0]HBM_12_read_addr;
  output [255:0]HBM_12_read_data;
  output HBM_12_read_ready;
  input HBM_12_start_read;
  input HBM_12_start_write;
  input [7:0]HBM_12_wburst;
  input [32:0]HBM_12_write_addr;
  input [255:0]HBM_12_write_data;
  output HBM_12_write_last;
  input HBM_12_write_ready;
  output HBM_12_write_resp;
  output HBM_13_end_read;
  output [1:0]HBM_13_end_write;
  input [7:0]HBM_13_rburst;
  input [32:0]HBM_13_read_addr;
  output [255:0]HBM_13_read_data;
  output HBM_13_read_ready;
  input HBM_13_start_read;
  input HBM_13_start_write;
  input [7:0]HBM_13_wburst;
  input [32:0]HBM_13_write_addr;
  input [255:0]HBM_13_write_data;
  output HBM_13_write_last;
  input HBM_13_write_ready;
  output HBM_13_write_resp;
  output HBM_14_end_read;
  output [1:0]HBM_14_end_write;
  input [7:0]HBM_14_rburst;
  input [32:0]HBM_14_read_addr;
  output [255:0]HBM_14_read_data;
  output HBM_14_read_ready;
  input HBM_14_start_read;
  input HBM_14_start_write;
  input [7:0]HBM_14_wburst;
  input [32:0]HBM_14_write_addr;
  input [255:0]HBM_14_write_data;
  output HBM_14_write_last;
  input HBM_14_write_ready;
  output HBM_14_write_resp;
  output HBM_15_end_read;
  output [1:0]HBM_15_end_write;
  input [7:0]HBM_15_rburst;
  input [32:0]HBM_15_read_addr;
  output [255:0]HBM_15_read_data;
  output HBM_15_read_ready;
  input HBM_15_start_read;
  input HBM_15_start_write;
  input [7:0]HBM_15_wburst;
  input [32:0]HBM_15_write_addr;
  input [255:0]HBM_15_write_data;
  output HBM_15_write_last;
  input HBM_15_write_ready;
  output HBM_15_write_resp;
  input c0_sys_clk_i;

  wire DDR_00_end_read;
  wire [1:0]DDR_00_end_write;
  wire [7:0]DDR_00_rburst;
  wire [33:0]DDR_00_read_addr;
  wire [511:0]DDR_00_read_data;
  wire DDR_00_read_ready;
  wire DDR_00_start_read;
  wire DDR_00_start_write;
  wire [7:0]DDR_00_wburst;
  wire [33:0]DDR_00_write_addr;
  wire [511:0]DDR_00_write_data;
  wire DDR_00_write_last;
  wire DDR_00_write_ready;
  wire DDR_00_write_resp;
  wire DDR_01_end_read;
  wire [1:0]DDR_01_end_write;
  wire [7:0]DDR_01_rburst;
  wire [33:0]DDR_01_read_addr;
  wire [511:0]DDR_01_read_data;
  wire DDR_01_read_ready;
  wire DDR_01_start_read;
  wire DDR_01_start_write;
  wire [7:0]DDR_01_wburst;
  wire [33:0]DDR_01_write_addr;
  wire [511:0]DDR_01_write_data;
  wire DDR_01_write_last;
  wire DDR_01_write_ready;
  wire DDR_01_write_resp;
  wire DDR_02_end_read;
  wire [1:0]DDR_02_end_write;
  wire [7:0]DDR_02_rburst;
  wire [33:0]DDR_02_read_addr;
  wire [511:0]DDR_02_read_data;
  wire DDR_02_read_ready;
  wire DDR_02_start_read;
  wire DDR_02_start_write;
  wire [7:0]DDR_02_wburst;
  wire [33:0]DDR_02_write_addr;
  wire [511:0]DDR_02_write_data;
  wire DDR_02_write_last;
  wire DDR_02_write_ready;
  wire DDR_02_write_resp;
  wire DDR_03_end_read;
  wire [1:0]DDR_03_end_write;
  wire [7:0]DDR_03_rburst;
  wire [33:0]DDR_03_read_addr;
  wire [511:0]DDR_03_read_data;
  wire DDR_03_read_ready;
  wire DDR_03_start_read;
  wire DDR_03_start_write;
  wire [7:0]DDR_03_wburst;
  wire [33:0]DDR_03_write_addr;
  wire [511:0]DDR_03_write_data;
  wire DDR_03_write_last;
  wire DDR_03_write_ready;
  wire DDR_03_write_resp;
  wire DDR_04_end_read;
  wire [1:0]DDR_04_end_write;
  wire [7:0]DDR_04_rburst;
  wire [33:0]DDR_04_read_addr;
  wire [511:0]DDR_04_read_data;
  wire DDR_04_read_ready;
  wire DDR_04_start_read;
  wire DDR_04_start_write;
  wire [7:0]DDR_04_wburst;
  wire [33:0]DDR_04_write_addr;
  wire [511:0]DDR_04_write_data;
  wire DDR_04_write_last;
  wire DDR_04_write_ready;
  wire DDR_04_write_resp;
  wire DDR_05_end_read;
  wire [1:0]DDR_05_end_write;
  wire [7:0]DDR_05_rburst;
  wire [33:0]DDR_05_read_addr;
  wire [511:0]DDR_05_read_data;
  wire DDR_05_read_ready;
  wire DDR_05_start_read;
  wire DDR_05_start_write;
  wire [7:0]DDR_05_wburst;
  wire [33:0]DDR_05_write_addr;
  wire [511:0]DDR_05_write_data;
  wire DDR_05_write_last;
  wire DDR_05_write_ready;
  wire DDR_05_write_resp;
  wire DDR_06_end_read;
  wire [1:0]DDR_06_end_write;
  wire [7:0]DDR_06_rburst;
  wire [33:0]DDR_06_read_addr;
  wire [511:0]DDR_06_read_data;
  wire DDR_06_read_ready;
  wire DDR_06_start_read;
  wire DDR_06_start_write;
  wire [7:0]DDR_06_wburst;
  wire [33:0]DDR_06_write_addr;
  wire [511:0]DDR_06_write_data;
  wire DDR_06_write_last;
  wire DDR_06_write_ready;
  wire DDR_06_write_resp;
  wire DDR_07_end_read;
  wire [1:0]DDR_07_end_write;
  wire [7:0]DDR_07_rburst;
  wire [33:0]DDR_07_read_addr;
  wire [511:0]DDR_07_read_data;
  wire DDR_07_read_ready;
  wire DDR_07_start_read;
  wire DDR_07_start_write;
  wire [7:0]DDR_07_wburst;
  wire [33:0]DDR_07_write_addr;
  wire [511:0]DDR_07_write_data;
  wire DDR_07_write_last;
  wire DDR_07_write_ready;
  wire DDR_07_write_resp;
  wire DDR_08_end_read;
  wire [1:0]DDR_08_end_write;
  wire [7:0]DDR_08_rburst;
  wire [33:0]DDR_08_read_addr;
  wire [511:0]DDR_08_read_data;
  wire DDR_08_read_ready;
  wire DDR_08_start_read;
  wire DDR_08_start_write;
  wire [7:0]DDR_08_wburst;
  wire [33:0]DDR_08_write_addr;
  wire [511:0]DDR_08_write_data;
  wire DDR_08_write_last;
  wire DDR_08_write_ready;
  wire DDR_08_write_resp;
  wire DDR_09_end_read;
  wire [1:0]DDR_09_end_write;
  wire [7:0]DDR_09_rburst;
  wire [33:0]DDR_09_read_addr;
  wire [511:0]DDR_09_read_data;
  wire DDR_09_read_ready;
  wire DDR_09_start_read;
  wire DDR_09_start_write;
  wire [7:0]DDR_09_wburst;
  wire [33:0]DDR_09_write_addr;
  wire [511:0]DDR_09_write_data;
  wire DDR_09_write_last;
  wire DDR_09_write_ready;
  wire DDR_09_write_resp;
  wire DDR_10_end_read;
  wire [1:0]DDR_10_end_write;
  wire [7:0]DDR_10_rburst;
  wire [33:0]DDR_10_read_addr;
  wire [511:0]DDR_10_read_data;
  wire DDR_10_read_ready;
  wire DDR_10_start_read;
  wire DDR_10_start_write;
  wire [7:0]DDR_10_wburst;
  wire [33:0]DDR_10_write_addr;
  wire [511:0]DDR_10_write_data;
  wire DDR_10_write_last;
  wire DDR_10_write_ready;
  wire DDR_10_write_resp;
  wire DDR_11_end_read;
  wire [1:0]DDR_11_end_write;
  wire [7:0]DDR_11_rburst;
  wire [33:0]DDR_11_read_addr;
  wire [511:0]DDR_11_read_data;
  wire DDR_11_read_ready;
  wire DDR_11_start_read;
  wire DDR_11_start_write;
  wire [7:0]DDR_11_wburst;
  wire [33:0]DDR_11_write_addr;
  wire [511:0]DDR_11_write_data;
  wire DDR_11_write_last;
  wire DDR_11_write_ready;
  wire DDR_11_write_resp;
  wire DDR_12_end_read;
  wire [1:0]DDR_12_end_write;
  wire [7:0]DDR_12_rburst;
  wire [33:0]DDR_12_read_addr;
  wire [511:0]DDR_12_read_data;
  wire DDR_12_read_ready;
  wire DDR_12_start_read;
  wire DDR_12_start_write;
  wire [7:0]DDR_12_wburst;
  wire [33:0]DDR_12_write_addr;
  wire [511:0]DDR_12_write_data;
  wire DDR_12_write_last;
  wire DDR_12_write_ready;
  wire DDR_12_write_resp;
  wire DDR_13_end_read;
  wire [1:0]DDR_13_end_write;
  wire [7:0]DDR_13_rburst;
  wire [33:0]DDR_13_read_addr;
  wire [511:0]DDR_13_read_data;
  wire DDR_13_read_ready;
  wire DDR_13_start_read;
  wire DDR_13_start_write;
  wire [7:0]DDR_13_wburst;
  wire [33:0]DDR_13_write_addr;
  wire [511:0]DDR_13_write_data;
  wire DDR_13_write_last;
  wire DDR_13_write_ready;
  wire DDR_13_write_resp;
  wire DDR_14_end_read;
  wire [1:0]DDR_14_end_write;
  wire [7:0]DDR_14_rburst;
  wire [33:0]DDR_14_read_addr;
  wire [511:0]DDR_14_read_data;
  wire DDR_14_read_ready;
  wire DDR_14_start_read;
  wire DDR_14_start_write;
  wire [7:0]DDR_14_wburst;
  wire [33:0]DDR_14_write_addr;
  wire [511:0]DDR_14_write_data;
  wire DDR_14_write_last;
  wire DDR_14_write_ready;
  wire DDR_14_write_resp;
  wire DDR_15_end_read;
  wire [1:0]DDR_15_end_write;
  wire [7:0]DDR_15_rburst;
  wire [33:0]DDR_15_read_addr;
  wire [511:0]DDR_15_read_data;
  wire DDR_15_read_ready;
  wire DDR_15_start_read;
  wire DDR_15_start_write;
  wire [7:0]DDR_15_wburst;
  wire [33:0]DDR_15_write_addr;
  wire [511:0]DDR_15_write_data;
  wire DDR_15_write_last;
  wire DDR_15_write_ready;
  wire DDR_15_write_resp;
  wire HBM_00_ARESET_N;
  wire HBM_00_end_read;
  wire [1:0]HBM_00_end_write;
  wire [7:0]HBM_00_rburst;
  wire [32:0]HBM_00_read_addr;
  wire [255:0]HBM_00_read_data;
  wire HBM_00_read_ready;
  wire HBM_00_start_read;
  wire HBM_00_start_write;
  wire [7:0]HBM_00_wburst;
  wire [32:0]HBM_00_write_addr;
  wire [255:0]HBM_00_write_data;
  wire HBM_00_write_last;
  wire HBM_00_write_ready;
  wire HBM_00_write_resp;
  wire HBM_01_end_read;
  wire [1:0]HBM_01_end_write;
  wire [7:0]HBM_01_rburst;
  wire [32:0]HBM_01_read_addr;
  wire [255:0]HBM_01_read_data;
  wire HBM_01_read_ready;
  wire HBM_01_start_read;
  wire HBM_01_start_write;
  wire [7:0]HBM_01_wburst;
  wire [32:0]HBM_01_write_addr;
  wire [255:0]HBM_01_write_data;
  wire HBM_01_write_last;
  wire HBM_01_write_ready;
  wire HBM_01_write_resp;
  wire HBM_02_end_read;
  wire [1:0]HBM_02_end_write;
  wire [7:0]HBM_02_rburst;
  wire [32:0]HBM_02_read_addr;
  wire [255:0]HBM_02_read_data;
  wire HBM_02_read_ready;
  wire HBM_02_start_read;
  wire HBM_02_start_write;
  wire [7:0]HBM_02_wburst;
  wire [32:0]HBM_02_write_addr;
  wire [255:0]HBM_02_write_data;
  wire HBM_02_write_last;
  wire HBM_02_write_ready;
  wire HBM_02_write_resp;
  wire HBM_03_end_read;
  wire [1:0]HBM_03_end_write;
  wire [7:0]HBM_03_rburst;
  wire [32:0]HBM_03_read_addr;
  wire [255:0]HBM_03_read_data;
  wire HBM_03_read_ready;
  wire HBM_03_start_read;
  wire HBM_03_start_write;
  wire [7:0]HBM_03_wburst;
  wire [32:0]HBM_03_write_addr;
  wire [255:0]HBM_03_write_data;
  wire HBM_03_write_last;
  wire HBM_03_write_ready;
  wire HBM_03_write_resp;
  wire HBM_04_end_read;
  wire [1:0]HBM_04_end_write;
  wire [7:0]HBM_04_rburst;
  wire [32:0]HBM_04_read_addr;
  wire [255:0]HBM_04_read_data;
  wire HBM_04_read_ready;
  wire HBM_04_start_read;
  wire HBM_04_start_write;
  wire [7:0]HBM_04_wburst;
  wire [32:0]HBM_04_write_addr;
  wire [255:0]HBM_04_write_data;
  wire HBM_04_write_last;
  wire HBM_04_write_ready;
  wire HBM_04_write_resp;
  wire HBM_05_end_read;
  wire [1:0]HBM_05_end_write;
  wire [7:0]HBM_05_rburst;
  wire [32:0]HBM_05_read_addr;
  wire [255:0]HBM_05_read_data;
  wire HBM_05_read_ready;
  wire HBM_05_start_read;
  wire HBM_05_start_write;
  wire [7:0]HBM_05_wburst;
  wire [32:0]HBM_05_write_addr;
  wire [255:0]HBM_05_write_data;
  wire HBM_05_write_last;
  wire HBM_05_write_ready;
  wire HBM_05_write_resp;
  wire HBM_06_end_read;
  wire [1:0]HBM_06_end_write;
  wire [7:0]HBM_06_rburst;
  wire [32:0]HBM_06_read_addr;
  wire [255:0]HBM_06_read_data;
  wire HBM_06_read_ready;
  wire HBM_06_start_read;
  wire HBM_06_start_write;
  wire [7:0]HBM_06_wburst;
  wire [32:0]HBM_06_write_addr;
  wire [255:0]HBM_06_write_data;
  wire HBM_06_write_last;
  wire HBM_06_write_ready;
  wire HBM_06_write_resp;
  wire HBM_07_end_read;
  wire [1:0]HBM_07_end_write;
  wire [7:0]HBM_07_rburst;
  wire [32:0]HBM_07_read_addr;
  wire [255:0]HBM_07_read_data;
  wire HBM_07_read_ready;
  wire HBM_07_start_read;
  wire HBM_07_start_write;
  wire [7:0]HBM_07_wburst;
  wire [32:0]HBM_07_write_addr;
  wire [255:0]HBM_07_write_data;
  wire HBM_07_write_last;
  wire HBM_07_write_ready;
  wire HBM_07_write_resp;
  wire HBM_08_end_read;
  wire [1:0]HBM_08_end_write;
  wire [7:0]HBM_08_rburst;
  wire [32:0]HBM_08_read_addr;
  wire [255:0]HBM_08_read_data;
  wire HBM_08_read_ready;
  wire HBM_08_start_read;
  wire HBM_08_start_write;
  wire [7:0]HBM_08_wburst;
  wire [32:0]HBM_08_write_addr;
  wire [255:0]HBM_08_write_data;
  wire HBM_08_write_last;
  wire HBM_08_write_ready;
  wire HBM_08_write_resp;
  wire HBM_09_end_read;
  wire [1:0]HBM_09_end_write;
  wire [7:0]HBM_09_rburst;
  wire [32:0]HBM_09_read_addr;
  wire [255:0]HBM_09_read_data;
  wire HBM_09_read_ready;
  wire HBM_09_start_read;
  wire HBM_09_start_write;
  wire [7:0]HBM_09_wburst;
  wire [32:0]HBM_09_write_addr;
  wire [255:0]HBM_09_write_data;
  wire HBM_09_write_last;
  wire HBM_09_write_ready;
  wire HBM_09_write_resp;
  wire HBM_10_end_read;
  wire [1:0]HBM_10_end_write;
  wire [7:0]HBM_10_rburst;
  wire [32:0]HBM_10_read_addr;
  wire [255:0]HBM_10_read_data;
  wire HBM_10_read_ready;
  wire HBM_10_start_read;
  wire HBM_10_start_write;
  wire [7:0]HBM_10_wburst;
  wire [32:0]HBM_10_write_addr;
  wire [255:0]HBM_10_write_data;
  wire HBM_10_write_last;
  wire HBM_10_write_ready;
  wire HBM_10_write_resp;
  wire HBM_11_end_read;
  wire [1:0]HBM_11_end_write;
  wire [7:0]HBM_11_rburst;
  wire [32:0]HBM_11_read_addr;
  wire [255:0]HBM_11_read_data;
  wire HBM_11_read_ready;
  wire HBM_11_start_read;
  wire HBM_11_start_write;
  wire [7:0]HBM_11_wburst;
  wire [32:0]HBM_11_write_addr;
  wire [255:0]HBM_11_write_data;
  wire HBM_11_write_last;
  wire HBM_11_write_ready;
  wire HBM_11_write_resp;
  wire HBM_12_end_read;
  wire [1:0]HBM_12_end_write;
  wire [7:0]HBM_12_rburst;
  wire [32:0]HBM_12_read_addr;
  wire [255:0]HBM_12_read_data;
  wire HBM_12_read_ready;
  wire HBM_12_start_read;
  wire HBM_12_start_write;
  wire [7:0]HBM_12_wburst;
  wire [32:0]HBM_12_write_addr;
  wire [255:0]HBM_12_write_data;
  wire HBM_12_write_last;
  wire HBM_12_write_ready;
  wire HBM_12_write_resp;
  wire HBM_13_end_read;
  wire [1:0]HBM_13_end_write;
  wire [7:0]HBM_13_rburst;
  wire [32:0]HBM_13_read_addr;
  wire [255:0]HBM_13_read_data;
  wire HBM_13_read_ready;
  wire HBM_13_start_read;
  wire HBM_13_start_write;
  wire [7:0]HBM_13_wburst;
  wire [32:0]HBM_13_write_addr;
  wire [255:0]HBM_13_write_data;
  wire HBM_13_write_last;
  wire HBM_13_write_ready;
  wire HBM_13_write_resp;
  wire HBM_14_end_read;
  wire [1:0]HBM_14_end_write;
  wire [7:0]HBM_14_rburst;
  wire [32:0]HBM_14_read_addr;
  wire [255:0]HBM_14_read_data;
  wire HBM_14_read_ready;
  wire HBM_14_start_read;
  wire HBM_14_start_write;
  wire [7:0]HBM_14_wburst;
  wire [32:0]HBM_14_write_addr;
  wire [255:0]HBM_14_write_data;
  wire HBM_14_write_last;
  wire HBM_14_write_ready;
  wire HBM_14_write_resp;
  wire HBM_15_end_read;
  wire [1:0]HBM_15_end_write;
  wire [7:0]HBM_15_rburst;
  wire [32:0]HBM_15_read_addr;
  wire [255:0]HBM_15_read_data;
  wire HBM_15_read_ready;
  wire HBM_15_start_read;
  wire HBM_15_start_write;
  wire [7:0]HBM_15_wburst;
  wire [32:0]HBM_15_write_addr;
  wire [255:0]HBM_15_write_data;
  wire HBM_15_write_last;
  wire HBM_15_write_ready;
  wire HBM_15_write_resp;
  wire c0_sys_clk_i;

  MemoryInterfacesVIP MemoryInterfacesVIP_i
       (.DDR_00_end_read(DDR_00_end_read),
        .DDR_00_end_write(DDR_00_end_write),
        .DDR_00_rburst(DDR_00_rburst),
        .DDR_00_read_addr(DDR_00_read_addr),
        .DDR_00_read_data(DDR_00_read_data),
        .DDR_00_read_ready(DDR_00_read_ready),
        .DDR_00_start_read(DDR_00_start_read),
        .DDR_00_start_write(DDR_00_start_write),
        .DDR_00_wburst(DDR_00_wburst),
        .DDR_00_write_addr(DDR_00_write_addr),
        .DDR_00_write_data(DDR_00_write_data),
        .DDR_00_write_last(DDR_00_write_last),
        .DDR_00_write_ready(DDR_00_write_ready),
        .DDR_00_write_resp(DDR_00_write_resp),
        .DDR_01_end_read(DDR_01_end_read),
        .DDR_01_end_write(DDR_01_end_write),
        .DDR_01_rburst(DDR_01_rburst),
        .DDR_01_read_addr(DDR_01_read_addr),
        .DDR_01_read_data(DDR_01_read_data),
        .DDR_01_read_ready(DDR_01_read_ready),
        .DDR_01_start_read(DDR_01_start_read),
        .DDR_01_start_write(DDR_01_start_write),
        .DDR_01_wburst(DDR_01_wburst),
        .DDR_01_write_addr(DDR_01_write_addr),
        .DDR_01_write_data(DDR_01_write_data),
        .DDR_01_write_last(DDR_01_write_last),
        .DDR_01_write_ready(DDR_01_write_ready),
        .DDR_01_write_resp(DDR_01_write_resp),
        .DDR_02_end_read(DDR_02_end_read),
        .DDR_02_end_write(DDR_02_end_write),
        .DDR_02_rburst(DDR_02_rburst),
        .DDR_02_read_addr(DDR_02_read_addr),
        .DDR_02_read_data(DDR_02_read_data),
        .DDR_02_read_ready(DDR_02_read_ready),
        .DDR_02_start_read(DDR_02_start_read),
        .DDR_02_start_write(DDR_02_start_write),
        .DDR_02_wburst(DDR_02_wburst),
        .DDR_02_write_addr(DDR_02_write_addr),
        .DDR_02_write_data(DDR_02_write_data),
        .DDR_02_write_last(DDR_02_write_last),
        .DDR_02_write_ready(DDR_02_write_ready),
        .DDR_02_write_resp(DDR_02_write_resp),
        .DDR_03_end_read(DDR_03_end_read),
        .DDR_03_end_write(DDR_03_end_write),
        .DDR_03_rburst(DDR_03_rburst),
        .DDR_03_read_addr(DDR_03_read_addr),
        .DDR_03_read_data(DDR_03_read_data),
        .DDR_03_read_ready(DDR_03_read_ready),
        .DDR_03_start_read(DDR_03_start_read),
        .DDR_03_start_write(DDR_03_start_write),
        .DDR_03_wburst(DDR_03_wburst),
        .DDR_03_write_addr(DDR_03_write_addr),
        .DDR_03_write_data(DDR_03_write_data),
        .DDR_03_write_last(DDR_03_write_last),
        .DDR_03_write_ready(DDR_03_write_ready),
        .DDR_03_write_resp(DDR_03_write_resp),
        .DDR_04_end_read(DDR_04_end_read),
        .DDR_04_end_write(DDR_04_end_write),
        .DDR_04_rburst(DDR_04_rburst),
        .DDR_04_read_addr(DDR_04_read_addr),
        .DDR_04_read_data(DDR_04_read_data),
        .DDR_04_read_ready(DDR_04_read_ready),
        .DDR_04_start_read(DDR_04_start_read),
        .DDR_04_start_write(DDR_04_start_write),
        .DDR_04_wburst(DDR_04_wburst),
        .DDR_04_write_addr(DDR_04_write_addr),
        .DDR_04_write_data(DDR_04_write_data),
        .DDR_04_write_last(DDR_04_write_last),
        .DDR_04_write_ready(DDR_04_write_ready),
        .DDR_04_write_resp(DDR_04_write_resp),
        .DDR_05_end_read(DDR_05_end_read),
        .DDR_05_end_write(DDR_05_end_write),
        .DDR_05_rburst(DDR_05_rburst),
        .DDR_05_read_addr(DDR_05_read_addr),
        .DDR_05_read_data(DDR_05_read_data),
        .DDR_05_read_ready(DDR_05_read_ready),
        .DDR_05_start_read(DDR_05_start_read),
        .DDR_05_start_write(DDR_05_start_write),
        .DDR_05_wburst(DDR_05_wburst),
        .DDR_05_write_addr(DDR_05_write_addr),
        .DDR_05_write_data(DDR_05_write_data),
        .DDR_05_write_last(DDR_05_write_last),
        .DDR_05_write_ready(DDR_05_write_ready),
        .DDR_05_write_resp(DDR_05_write_resp),
        .DDR_06_end_read(DDR_06_end_read),
        .DDR_06_end_write(DDR_06_end_write),
        .DDR_06_rburst(DDR_06_rburst),
        .DDR_06_read_addr(DDR_06_read_addr),
        .DDR_06_read_data(DDR_06_read_data),
        .DDR_06_read_ready(DDR_06_read_ready),
        .DDR_06_start_read(DDR_06_start_read),
        .DDR_06_start_write(DDR_06_start_write),
        .DDR_06_wburst(DDR_06_wburst),
        .DDR_06_write_addr(DDR_06_write_addr),
        .DDR_06_write_data(DDR_06_write_data),
        .DDR_06_write_last(DDR_06_write_last),
        .DDR_06_write_ready(DDR_06_write_ready),
        .DDR_06_write_resp(DDR_06_write_resp),
        .DDR_07_end_read(DDR_07_end_read),
        .DDR_07_end_write(DDR_07_end_write),
        .DDR_07_rburst(DDR_07_rburst),
        .DDR_07_read_addr(DDR_07_read_addr),
        .DDR_07_read_data(DDR_07_read_data),
        .DDR_07_read_ready(DDR_07_read_ready),
        .DDR_07_start_read(DDR_07_start_read),
        .DDR_07_start_write(DDR_07_start_write),
        .DDR_07_wburst(DDR_07_wburst),
        .DDR_07_write_addr(DDR_07_write_addr),
        .DDR_07_write_data(DDR_07_write_data),
        .DDR_07_write_last(DDR_07_write_last),
        .DDR_07_write_ready(DDR_07_write_ready),
        .DDR_07_write_resp(DDR_07_write_resp),
        .DDR_08_end_read(DDR_08_end_read),
        .DDR_08_end_write(DDR_08_end_write),
        .DDR_08_rburst(DDR_08_rburst),
        .DDR_08_read_addr(DDR_08_read_addr),
        .DDR_08_read_data(DDR_08_read_data),
        .DDR_08_read_ready(DDR_08_read_ready),
        .DDR_08_start_read(DDR_08_start_read),
        .DDR_08_start_write(DDR_08_start_write),
        .DDR_08_wburst(DDR_08_wburst),
        .DDR_08_write_addr(DDR_08_write_addr),
        .DDR_08_write_data(DDR_08_write_data),
        .DDR_08_write_last(DDR_08_write_last),
        .DDR_08_write_ready(DDR_08_write_ready),
        .DDR_08_write_resp(DDR_08_write_resp),
        .DDR_09_end_read(DDR_09_end_read),
        .DDR_09_end_write(DDR_09_end_write),
        .DDR_09_rburst(DDR_09_rburst),
        .DDR_09_read_addr(DDR_09_read_addr),
        .DDR_09_read_data(DDR_09_read_data),
        .DDR_09_read_ready(DDR_09_read_ready),
        .DDR_09_start_read(DDR_09_start_read),
        .DDR_09_start_write(DDR_09_start_write),
        .DDR_09_wburst(DDR_09_wburst),
        .DDR_09_write_addr(DDR_09_write_addr),
        .DDR_09_write_data(DDR_09_write_data),
        .DDR_09_write_last(DDR_09_write_last),
        .DDR_09_write_ready(DDR_09_write_ready),
        .DDR_09_write_resp(DDR_09_write_resp),
        .DDR_10_end_read(DDR_10_end_read),
        .DDR_10_end_write(DDR_10_end_write),
        .DDR_10_rburst(DDR_10_rburst),
        .DDR_10_read_addr(DDR_10_read_addr),
        .DDR_10_read_data(DDR_10_read_data),
        .DDR_10_read_ready(DDR_10_read_ready),
        .DDR_10_start_read(DDR_10_start_read),
        .DDR_10_start_write(DDR_10_start_write),
        .DDR_10_wburst(DDR_10_wburst),
        .DDR_10_write_addr(DDR_10_write_addr),
        .DDR_10_write_data(DDR_10_write_data),
        .DDR_10_write_last(DDR_10_write_last),
        .DDR_10_write_ready(DDR_10_write_ready),
        .DDR_10_write_resp(DDR_10_write_resp),
        .DDR_11_end_read(DDR_11_end_read),
        .DDR_11_end_write(DDR_11_end_write),
        .DDR_11_rburst(DDR_11_rburst),
        .DDR_11_read_addr(DDR_11_read_addr),
        .DDR_11_read_data(DDR_11_read_data),
        .DDR_11_read_ready(DDR_11_read_ready),
        .DDR_11_start_read(DDR_11_start_read),
        .DDR_11_start_write(DDR_11_start_write),
        .DDR_11_wburst(DDR_11_wburst),
        .DDR_11_write_addr(DDR_11_write_addr),
        .DDR_11_write_data(DDR_11_write_data),
        .DDR_11_write_last(DDR_11_write_last),
        .DDR_11_write_ready(DDR_11_write_ready),
        .DDR_11_write_resp(DDR_11_write_resp),
        .DDR_12_end_read(DDR_12_end_read),
        .DDR_12_end_write(DDR_12_end_write),
        .DDR_12_rburst(DDR_12_rburst),
        .DDR_12_read_addr(DDR_12_read_addr),
        .DDR_12_read_data(DDR_12_read_data),
        .DDR_12_read_ready(DDR_12_read_ready),
        .DDR_12_start_read(DDR_12_start_read),
        .DDR_12_start_write(DDR_12_start_write),
        .DDR_12_wburst(DDR_12_wburst),
        .DDR_12_write_addr(DDR_12_write_addr),
        .DDR_12_write_data(DDR_12_write_data),
        .DDR_12_write_last(DDR_12_write_last),
        .DDR_12_write_ready(DDR_12_write_ready),
        .DDR_12_write_resp(DDR_12_write_resp),
        .DDR_13_end_read(DDR_13_end_read),
        .DDR_13_end_write(DDR_13_end_write),
        .DDR_13_rburst(DDR_13_rburst),
        .DDR_13_read_addr(DDR_13_read_addr),
        .DDR_13_read_data(DDR_13_read_data),
        .DDR_13_read_ready(DDR_13_read_ready),
        .DDR_13_start_read(DDR_13_start_read),
        .DDR_13_start_write(DDR_13_start_write),
        .DDR_13_wburst(DDR_13_wburst),
        .DDR_13_write_addr(DDR_13_write_addr),
        .DDR_13_write_data(DDR_13_write_data),
        .DDR_13_write_last(DDR_13_write_last),
        .DDR_13_write_ready(DDR_13_write_ready),
        .DDR_13_write_resp(DDR_13_write_resp),
        .DDR_14_end_read(DDR_14_end_read),
        .DDR_14_end_write(DDR_14_end_write),
        .DDR_14_rburst(DDR_14_rburst),
        .DDR_14_read_addr(DDR_14_read_addr),
        .DDR_14_read_data(DDR_14_read_data),
        .DDR_14_read_ready(DDR_14_read_ready),
        .DDR_14_start_read(DDR_14_start_read),
        .DDR_14_start_write(DDR_14_start_write),
        .DDR_14_wburst(DDR_14_wburst),
        .DDR_14_write_addr(DDR_14_write_addr),
        .DDR_14_write_data(DDR_14_write_data),
        .DDR_14_write_last(DDR_14_write_last),
        .DDR_14_write_ready(DDR_14_write_ready),
        .DDR_14_write_resp(DDR_14_write_resp),
        .DDR_15_end_read(DDR_15_end_read),
        .DDR_15_end_write(DDR_15_end_write),
        .DDR_15_rburst(DDR_15_rburst),
        .DDR_15_read_addr(DDR_15_read_addr),
        .DDR_15_read_data(DDR_15_read_data),
        .DDR_15_read_ready(DDR_15_read_ready),
        .DDR_15_start_read(DDR_15_start_read),
        .DDR_15_start_write(DDR_15_start_write),
        .DDR_15_wburst(DDR_15_wburst),
        .DDR_15_write_addr(DDR_15_write_addr),
        .DDR_15_write_data(DDR_15_write_data),
        .DDR_15_write_last(DDR_15_write_last),
        .DDR_15_write_ready(DDR_15_write_ready),
        .DDR_15_write_resp(DDR_15_write_resp),
        .HBM_00_ARESET_N(HBM_00_ARESET_N),
        .HBM_00_end_read(HBM_00_end_read),
        .HBM_00_end_write(HBM_00_end_write),
        .HBM_00_rburst(HBM_00_rburst),
        .HBM_00_read_addr(HBM_00_read_addr),
        .HBM_00_read_data(HBM_00_read_data),
        .HBM_00_read_ready(HBM_00_read_ready),
        .HBM_00_start_read(HBM_00_start_read),
        .HBM_00_start_write(HBM_00_start_write),
        .HBM_00_wburst(HBM_00_wburst),
        .HBM_00_write_addr(HBM_00_write_addr),
        .HBM_00_write_data(HBM_00_write_data),
        .HBM_00_write_last(HBM_00_write_last),
        .HBM_00_write_ready(HBM_00_write_ready),
        .HBM_00_write_resp(HBM_00_write_resp),
        .HBM_01_end_read(HBM_01_end_read),
        .HBM_01_end_write(HBM_01_end_write),
        .HBM_01_rburst(HBM_01_rburst),
        .HBM_01_read_addr(HBM_01_read_addr),
        .HBM_01_read_data(HBM_01_read_data),
        .HBM_01_read_ready(HBM_01_read_ready),
        .HBM_01_start_read(HBM_01_start_read),
        .HBM_01_start_write(HBM_01_start_write),
        .HBM_01_wburst(HBM_01_wburst),
        .HBM_01_write_addr(HBM_01_write_addr),
        .HBM_01_write_data(HBM_01_write_data),
        .HBM_01_write_last(HBM_01_write_last),
        .HBM_01_write_ready(HBM_01_write_ready),
        .HBM_01_write_resp(HBM_01_write_resp),
        .HBM_02_end_read(HBM_02_end_read),
        .HBM_02_end_write(HBM_02_end_write),
        .HBM_02_rburst(HBM_02_rburst),
        .HBM_02_read_addr(HBM_02_read_addr),
        .HBM_02_read_data(HBM_02_read_data),
        .HBM_02_read_ready(HBM_02_read_ready),
        .HBM_02_start_read(HBM_02_start_read),
        .HBM_02_start_write(HBM_02_start_write),
        .HBM_02_wburst(HBM_02_wburst),
        .HBM_02_write_addr(HBM_02_write_addr),
        .HBM_02_write_data(HBM_02_write_data),
        .HBM_02_write_last(HBM_02_write_last),
        .HBM_02_write_ready(HBM_02_write_ready),
        .HBM_02_write_resp(HBM_02_write_resp),
        .HBM_03_end_read(HBM_03_end_read),
        .HBM_03_end_write(HBM_03_end_write),
        .HBM_03_rburst(HBM_03_rburst),
        .HBM_03_read_addr(HBM_03_read_addr),
        .HBM_03_read_data(HBM_03_read_data),
        .HBM_03_read_ready(HBM_03_read_ready),
        .HBM_03_start_read(HBM_03_start_read),
        .HBM_03_start_write(HBM_03_start_write),
        .HBM_03_wburst(HBM_03_wburst),
        .HBM_03_write_addr(HBM_03_write_addr),
        .HBM_03_write_data(HBM_03_write_data),
        .HBM_03_write_last(HBM_03_write_last),
        .HBM_03_write_ready(HBM_03_write_ready),
        .HBM_03_write_resp(HBM_03_write_resp),
        .HBM_04_end_read(HBM_04_end_read),
        .HBM_04_end_write(HBM_04_end_write),
        .HBM_04_rburst(HBM_04_rburst),
        .HBM_04_read_addr(HBM_04_read_addr),
        .HBM_04_read_data(HBM_04_read_data),
        .HBM_04_read_ready(HBM_04_read_ready),
        .HBM_04_start_read(HBM_04_start_read),
        .HBM_04_start_write(HBM_04_start_write),
        .HBM_04_wburst(HBM_04_wburst),
        .HBM_04_write_addr(HBM_04_write_addr),
        .HBM_04_write_data(HBM_04_write_data),
        .HBM_04_write_last(HBM_04_write_last),
        .HBM_04_write_ready(HBM_04_write_ready),
        .HBM_04_write_resp(HBM_04_write_resp),
        .HBM_05_end_read(HBM_05_end_read),
        .HBM_05_end_write(HBM_05_end_write),
        .HBM_05_rburst(HBM_05_rburst),
        .HBM_05_read_addr(HBM_05_read_addr),
        .HBM_05_read_data(HBM_05_read_data),
        .HBM_05_read_ready(HBM_05_read_ready),
        .HBM_05_start_read(HBM_05_start_read),
        .HBM_05_start_write(HBM_05_start_write),
        .HBM_05_wburst(HBM_05_wburst),
        .HBM_05_write_addr(HBM_05_write_addr),
        .HBM_05_write_data(HBM_05_write_data),
        .HBM_05_write_last(HBM_05_write_last),
        .HBM_05_write_ready(HBM_05_write_ready),
        .HBM_05_write_resp(HBM_05_write_resp),
        .HBM_06_end_read(HBM_06_end_read),
        .HBM_06_end_write(HBM_06_end_write),
        .HBM_06_rburst(HBM_06_rburst),
        .HBM_06_read_addr(HBM_06_read_addr),
        .HBM_06_read_data(HBM_06_read_data),
        .HBM_06_read_ready(HBM_06_read_ready),
        .HBM_06_start_read(HBM_06_start_read),
        .HBM_06_start_write(HBM_06_start_write),
        .HBM_06_wburst(HBM_06_wburst),
        .HBM_06_write_addr(HBM_06_write_addr),
        .HBM_06_write_data(HBM_06_write_data),
        .HBM_06_write_last(HBM_06_write_last),
        .HBM_06_write_ready(HBM_06_write_ready),
        .HBM_06_write_resp(HBM_06_write_resp),
        .HBM_07_end_read(HBM_07_end_read),
        .HBM_07_end_write(HBM_07_end_write),
        .HBM_07_rburst(HBM_07_rburst),
        .HBM_07_read_addr(HBM_07_read_addr),
        .HBM_07_read_data(HBM_07_read_data),
        .HBM_07_read_ready(HBM_07_read_ready),
        .HBM_07_start_read(HBM_07_start_read),
        .HBM_07_start_write(HBM_07_start_write),
        .HBM_07_wburst(HBM_07_wburst),
        .HBM_07_write_addr(HBM_07_write_addr),
        .HBM_07_write_data(HBM_07_write_data),
        .HBM_07_write_last(HBM_07_write_last),
        .HBM_07_write_ready(HBM_07_write_ready),
        .HBM_07_write_resp(HBM_07_write_resp),
        .HBM_08_end_read(HBM_08_end_read),
        .HBM_08_end_write(HBM_08_end_write),
        .HBM_08_rburst(HBM_08_rburst),
        .HBM_08_read_addr(HBM_08_read_addr),
        .HBM_08_read_data(HBM_08_read_data),
        .HBM_08_read_ready(HBM_08_read_ready),
        .HBM_08_start_read(HBM_08_start_read),
        .HBM_08_start_write(HBM_08_start_write),
        .HBM_08_wburst(HBM_08_wburst),
        .HBM_08_write_addr(HBM_08_write_addr),
        .HBM_08_write_data(HBM_08_write_data),
        .HBM_08_write_last(HBM_08_write_last),
        .HBM_08_write_ready(HBM_08_write_ready),
        .HBM_08_write_resp(HBM_08_write_resp),
        .HBM_09_end_read(HBM_09_end_read),
        .HBM_09_end_write(HBM_09_end_write),
        .HBM_09_rburst(HBM_09_rburst),
        .HBM_09_read_addr(HBM_09_read_addr),
        .HBM_09_read_data(HBM_09_read_data),
        .HBM_09_read_ready(HBM_09_read_ready),
        .HBM_09_start_read(HBM_09_start_read),
        .HBM_09_start_write(HBM_09_start_write),
        .HBM_09_wburst(HBM_09_wburst),
        .HBM_09_write_addr(HBM_09_write_addr),
        .HBM_09_write_data(HBM_09_write_data),
        .HBM_09_write_last(HBM_09_write_last),
        .HBM_09_write_ready(HBM_09_write_ready),
        .HBM_09_write_resp(HBM_09_write_resp),
        .HBM_10_end_read(HBM_10_end_read),
        .HBM_10_end_write(HBM_10_end_write),
        .HBM_10_rburst(HBM_10_rburst),
        .HBM_10_read_addr(HBM_10_read_addr),
        .HBM_10_read_data(HBM_10_read_data),
        .HBM_10_read_ready(HBM_10_read_ready),
        .HBM_10_start_read(HBM_10_start_read),
        .HBM_10_start_write(HBM_10_start_write),
        .HBM_10_wburst(HBM_10_wburst),
        .HBM_10_write_addr(HBM_10_write_addr),
        .HBM_10_write_data(HBM_10_write_data),
        .HBM_10_write_last(HBM_10_write_last),
        .HBM_10_write_ready(HBM_10_write_ready),
        .HBM_10_write_resp(HBM_10_write_resp),
        .HBM_11_end_read(HBM_11_end_read),
        .HBM_11_end_write(HBM_11_end_write),
        .HBM_11_rburst(HBM_11_rburst),
        .HBM_11_read_addr(HBM_11_read_addr),
        .HBM_11_read_data(HBM_11_read_data),
        .HBM_11_read_ready(HBM_11_read_ready),
        .HBM_11_start_read(HBM_11_start_read),
        .HBM_11_start_write(HBM_11_start_write),
        .HBM_11_wburst(HBM_11_wburst),
        .HBM_11_write_addr(HBM_11_write_addr),
        .HBM_11_write_data(HBM_11_write_data),
        .HBM_11_write_last(HBM_11_write_last),
        .HBM_11_write_ready(HBM_11_write_ready),
        .HBM_11_write_resp(HBM_11_write_resp),
        .HBM_12_end_read(HBM_12_end_read),
        .HBM_12_end_write(HBM_12_end_write),
        .HBM_12_rburst(HBM_12_rburst),
        .HBM_12_read_addr(HBM_12_read_addr),
        .HBM_12_read_data(HBM_12_read_data),
        .HBM_12_read_ready(HBM_12_read_ready),
        .HBM_12_start_read(HBM_12_start_read),
        .HBM_12_start_write(HBM_12_start_write),
        .HBM_12_wburst(HBM_12_wburst),
        .HBM_12_write_addr(HBM_12_write_addr),
        .HBM_12_write_data(HBM_12_write_data),
        .HBM_12_write_last(HBM_12_write_last),
        .HBM_12_write_ready(HBM_12_write_ready),
        .HBM_12_write_resp(HBM_12_write_resp),
        .HBM_13_end_read(HBM_13_end_read),
        .HBM_13_end_write(HBM_13_end_write),
        .HBM_13_rburst(HBM_13_rburst),
        .HBM_13_read_addr(HBM_13_read_addr),
        .HBM_13_read_data(HBM_13_read_data),
        .HBM_13_read_ready(HBM_13_read_ready),
        .HBM_13_start_read(HBM_13_start_read),
        .HBM_13_start_write(HBM_13_start_write),
        .HBM_13_wburst(HBM_13_wburst),
        .HBM_13_write_addr(HBM_13_write_addr),
        .HBM_13_write_data(HBM_13_write_data),
        .HBM_13_write_last(HBM_13_write_last),
        .HBM_13_write_ready(HBM_13_write_ready),
        .HBM_13_write_resp(HBM_13_write_resp),
        .HBM_14_end_read(HBM_14_end_read),
        .HBM_14_end_write(HBM_14_end_write),
        .HBM_14_rburst(HBM_14_rburst),
        .HBM_14_read_addr(HBM_14_read_addr),
        .HBM_14_read_data(HBM_14_read_data),
        .HBM_14_read_ready(HBM_14_read_ready),
        .HBM_14_start_read(HBM_14_start_read),
        .HBM_14_start_write(HBM_14_start_write),
        .HBM_14_wburst(HBM_14_wburst),
        .HBM_14_write_addr(HBM_14_write_addr),
        .HBM_14_write_data(HBM_14_write_data),
        .HBM_14_write_last(HBM_14_write_last),
        .HBM_14_write_ready(HBM_14_write_ready),
        .HBM_14_write_resp(HBM_14_write_resp),
        .HBM_15_end_read(HBM_15_end_read),
        .HBM_15_end_write(HBM_15_end_write),
        .HBM_15_rburst(HBM_15_rburst),
        .HBM_15_read_addr(HBM_15_read_addr),
        .HBM_15_read_data(HBM_15_read_data),
        .HBM_15_read_ready(HBM_15_read_ready),
        .HBM_15_start_read(HBM_15_start_read),
        .HBM_15_start_write(HBM_15_start_write),
        .HBM_15_wburst(HBM_15_wburst),
        .HBM_15_write_addr(HBM_15_write_addr),
        .HBM_15_write_data(HBM_15_write_data),
        .HBM_15_write_last(HBM_15_write_last),
        .HBM_15_write_ready(HBM_15_write_ready),
        .HBM_15_write_resp(HBM_15_write_resp),
        .c0_sys_clk_i(c0_sys_clk_i));
endmodule
