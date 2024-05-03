//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
//Date        : Wed Apr 17 11:40:26 2024
//Host        : COE-CS-crystal running 64-bit Ubuntu 22.04.3 LTS
//Command     : generate_target PE_IPs_wrapper.bd
//Design      : PE_IPs_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module PE_IPs_wrapper
   (AVM_FIFO_din,
    AVM_FIFO_dout,
    AVM_FIFO_empty,
    AVM_FIFO_full,
    AVM_FIFO_read,
    AVM_FIFO_readvalid,
    AVM_FIFO_write,
    AV_FIFO_din,
    AV_FIFO_dout,
    AV_FIFO_empty,
    AV_FIFO_full,
    AV_FIFO_read,
    AV_FIFO_readvalid,
    AV_FIFO_write,
    BRAM_enable,
    Cache_addrA,
    Cache_addrB,
    Cache_dinA,
    Cache_dinB,
    Cache_doutA,
    Cache_doutB,
    Cache_wrenableA,
    Cache_wrenableB,
    History_addr,
    History_din,
    History_dout,
    History_wrenable,
    Msg_FIFO_In_din,
    Msg_FIFO_In_dout,
    Msg_FIFO_In_empty,
    Msg_FIFO_In_full,
    Msg_FIFO_In_read,
    Msg_FIFO_In_readvalid,
    Msg_FIFO_In_write,
    Msg_FIFO_Out_din,
    Msg_FIFO_Out_dout,
    Msg_FIFO_Out_empty,
    Msg_FIFO_Out_full,
    Msg_FIFO_Out_read,
    Msg_FIFO_Out_readvalid,
    Msg_FIFO_Out_write,
    SuperblockTracker_addr,
    SuperblockTracker_din,
    SuperblockTracker_dout,
    SuperblockTracker_wrenable,
    clk,
    reset);
  input [93:0]AVM_FIFO_din;
  output [93:0]AVM_FIFO_dout;
  output AVM_FIFO_empty;
  output AVM_FIFO_full;
  input AVM_FIFO_read;
  output AVM_FIFO_readvalid;
  input AVM_FIFO_write;
  input [32:0]AV_FIFO_din;
  output [32:0]AV_FIFO_dout;
  output AV_FIFO_empty;
  output AV_FIFO_full;
  input AV_FIFO_read;
  output AV_FIFO_readvalid;
  input AV_FIFO_write;
  input BRAM_enable;
  input [9:0]Cache_addrA;
  input [9:0]Cache_addrB;
  input [287:0]Cache_dinA;
  input [287:0]Cache_dinB;
  output [287:0]Cache_doutA;
  output [287:0]Cache_doutB;
  input Cache_wrenableA;
  input Cache_wrenableB;
  input [9:0]History_addr;
  input [50:0]History_din;
  output [50:0]History_dout;
  input History_wrenable;
  input [63:0]Msg_FIFO_In_din;
  output [63:0]Msg_FIFO_In_dout;
  output Msg_FIFO_In_empty;
  output Msg_FIFO_In_full;
  input Msg_FIFO_In_read;
  output Msg_FIFO_In_readvalid;
  input Msg_FIFO_In_write;
  input [63:0]Msg_FIFO_Out_din;
  output [63:0]Msg_FIFO_Out_dout;
  output Msg_FIFO_Out_empty;
  output Msg_FIFO_Out_full;
  input Msg_FIFO_Out_read;
  output Msg_FIFO_Out_readvalid;
  input Msg_FIFO_Out_write;
  input [13:0]SuperblockTracker_addr;
  input [71:0]SuperblockTracker_din;
  output [71:0]SuperblockTracker_dout;
  input SuperblockTracker_wrenable;
  input clk;
  input reset;

  wire [93:0]AVM_FIFO_din;
  wire [93:0]AVM_FIFO_dout;
  wire AVM_FIFO_empty;
  wire AVM_FIFO_full;
  wire AVM_FIFO_read;
  wire AVM_FIFO_readvalid;
  wire AVM_FIFO_write;
  wire [32:0]AV_FIFO_din;
  wire [32:0]AV_FIFO_dout;
  wire AV_FIFO_empty;
  wire AV_FIFO_full;
  wire AV_FIFO_read;
  wire AV_FIFO_readvalid;
  wire AV_FIFO_write;
  wire BRAM_enable;
  wire [9:0]Cache_addrA;
  wire [9:0]Cache_addrB;
  wire [287:0]Cache_dinA;
  wire [287:0]Cache_dinB;
  wire [287:0]Cache_doutA;
  wire [287:0]Cache_doutB;
  wire Cache_wrenableA;
  wire Cache_wrenableB;
  wire [9:0]History_addr;
  wire [50:0]History_din;
  wire [50:0]History_dout;
  wire History_wrenable;
  wire [63:0]Msg_FIFO_In_din;
  wire [63:0]Msg_FIFO_In_dout;
  wire Msg_FIFO_In_empty;
  wire Msg_FIFO_In_full;
  wire Msg_FIFO_In_read;
  wire Msg_FIFO_In_readvalid;
  wire Msg_FIFO_In_write;
  wire [63:0]Msg_FIFO_Out_din;
  wire [63:0]Msg_FIFO_Out_dout;
  wire Msg_FIFO_Out_empty;
  wire Msg_FIFO_Out_full;
  wire Msg_FIFO_Out_read;
  wire Msg_FIFO_Out_readvalid;
  wire Msg_FIFO_Out_write;
  wire [13:0]SuperblockTracker_addr;
  wire [71:0]SuperblockTracker_din;
  wire [71:0]SuperblockTracker_dout;
  wire SuperblockTracker_wrenable;
  wire clk;
  wire reset;

  PE_IPs PE_IPs_i
       (.AVM_FIFO_din(AVM_FIFO_din),
        .AVM_FIFO_dout(AVM_FIFO_dout),
        .AVM_FIFO_empty(AVM_FIFO_empty),
        .AVM_FIFO_full(AVM_FIFO_full),
        .AVM_FIFO_read(AVM_FIFO_read),
        .AVM_FIFO_readvalid(AVM_FIFO_readvalid),
        .AVM_FIFO_write(AVM_FIFO_write),
        .AV_FIFO_din(AV_FIFO_din),
        .AV_FIFO_dout(AV_FIFO_dout),
        .AV_FIFO_empty(AV_FIFO_empty),
        .AV_FIFO_full(AV_FIFO_full),
        .AV_FIFO_read(AV_FIFO_read),
        .AV_FIFO_readvalid(AV_FIFO_readvalid),
        .AV_FIFO_write(AV_FIFO_write),
        .BRAM_enable(BRAM_enable),
        .Cache_addrA(Cache_addrA),
        .Cache_addrB(Cache_addrB),
        .Cache_dinA(Cache_dinA),
        .Cache_dinB(Cache_dinB),
        .Cache_doutA(Cache_doutA),
        .Cache_doutB(Cache_doutB),
        .Cache_wrenableA(Cache_wrenableA),
        .Cache_wrenableB(Cache_wrenableB),
        .History_addr(History_addr),
        .History_din(History_din),
        .History_dout(History_dout),
        .History_wrenable(History_wrenable),
        .Msg_FIFO_In_din(Msg_FIFO_In_din),
        .Msg_FIFO_In_dout(Msg_FIFO_In_dout),
        .Msg_FIFO_In_empty(Msg_FIFO_In_empty),
        .Msg_FIFO_In_full(Msg_FIFO_In_full),
        .Msg_FIFO_In_read(Msg_FIFO_In_read),
        .Msg_FIFO_In_readvalid(Msg_FIFO_In_readvalid),
        .Msg_FIFO_In_write(Msg_FIFO_In_write),
        .Msg_FIFO_Out_din(Msg_FIFO_Out_din),
        .Msg_FIFO_Out_dout(Msg_FIFO_Out_dout),
        .Msg_FIFO_Out_empty(Msg_FIFO_Out_empty),
        .Msg_FIFO_Out_full(Msg_FIFO_Out_full),
        .Msg_FIFO_Out_read(Msg_FIFO_Out_read),
        .Msg_FIFO_Out_readvalid(Msg_FIFO_Out_readvalid),
        .Msg_FIFO_Out_write(Msg_FIFO_Out_write),
        .SuperblockTracker_addr(SuperblockTracker_addr),
        .SuperblockTracker_din(SuperblockTracker_din),
        .SuperblockTracker_dout(SuperblockTracker_dout),
        .SuperblockTracker_wrenable(SuperblockTracker_wrenable),
        .clk(clk),
        .reset(reset));
endmodule
