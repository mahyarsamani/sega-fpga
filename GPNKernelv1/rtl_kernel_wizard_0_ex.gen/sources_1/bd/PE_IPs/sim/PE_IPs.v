//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
//Date        : Wed Apr 17 11:40:25 2024
//Host        : COE-CS-crystal running 64-bit Ubuntu 22.04.3 LTS
//Command     : generate_target PE_IPs.bd
//Design      : PE_IPs
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "PE_IPs,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=PE_IPs,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=2,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "PE_IPs.hwdef" *) 
module PE_IPs
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.AVM_FIFO_DIN DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.AVM_FIFO_DIN, LAYERED_METADATA undef" *) input [93:0]AVM_FIFO_din;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.AVM_FIFO_DOUT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.AVM_FIFO_DOUT, LAYERED_METADATA undef" *) output [93:0]AVM_FIFO_dout;
  output AVM_FIFO_empty;
  output AVM_FIFO_full;
  input AVM_FIFO_read;
  output AVM_FIFO_readvalid;
  input AVM_FIFO_write;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.AV_FIFO_DIN DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.AV_FIFO_DIN, LAYERED_METADATA undef" *) input [32:0]AV_FIFO_din;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.AV_FIFO_DOUT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.AV_FIFO_DOUT, LAYERED_METADATA undef" *) output [32:0]AV_FIFO_dout;
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.CACHE_DOUTA DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.CACHE_DOUTA, LAYERED_METADATA undef" *) output [287:0]Cache_doutA;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.CACHE_DOUTB DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.CACHE_DOUTB, LAYERED_METADATA undef" *) output [287:0]Cache_doutB;
  input Cache_wrenableA;
  input Cache_wrenableB;
  input [9:0]History_addr;
  input [50:0]History_din;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.HISTORY_DOUT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.HISTORY_DOUT, LAYERED_METADATA undef" *) output [50:0]History_dout;
  input History_wrenable;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.MSG_FIFO_IN_DIN DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.MSG_FIFO_IN_DIN, LAYERED_METADATA undef" *) input [63:0]Msg_FIFO_In_din;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.MSG_FIFO_IN_DOUT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.MSG_FIFO_IN_DOUT, LAYERED_METADATA undef" *) output [63:0]Msg_FIFO_In_dout;
  output Msg_FIFO_In_empty;
  output Msg_FIFO_In_full;
  input Msg_FIFO_In_read;
  output Msg_FIFO_In_readvalid;
  input Msg_FIFO_In_write;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.MSG_FIFO_OUT_DIN DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.MSG_FIFO_OUT_DIN, LAYERED_METADATA undef" *) input [63:0]Msg_FIFO_Out_din;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.MSG_FIFO_OUT_DOUT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.MSG_FIFO_OUT_DOUT, LAYERED_METADATA undef" *) output [63:0]Msg_FIFO_Out_dout;
  output Msg_FIFO_Out_empty;
  output Msg_FIFO_Out_full;
  input Msg_FIFO_Out_read;
  output Msg_FIFO_Out_readvalid;
  input Msg_FIFO_Out_write;
  input [13:0]SuperblockTracker_addr;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.SUPERBLOCKTRACKER_DIN DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.SUPERBLOCKTRACKER_DIN, LAYERED_METADATA undef" *) input [71:0]SuperblockTracker_din;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.SUPERBLOCKTRACKER_DOUT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.SUPERBLOCKTRACKER_DOUT, LAYERED_METADATA undef" *) output [71:0]SuperblockTracker_dout;
  input SuperblockTracker_wrenable;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN PE_IPs_clk, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;

  wire [93:0]AVM_FIFO_din_1;
  wire [93:0]AVM_FIFO_dout1;
  wire AVM_FIFO_empty1;
  wire AVM_FIFO_prog_full;
  wire AVM_FIFO_read_1;
  wire AVM_FIFO_valid;
  wire AVM_FIFO_write_1;
  wire [32:0]AV_FIFO_din_1;
  wire [32:0]AV_FIFO_dout1;
  wire AV_FIFO_empty1;
  wire AV_FIFO_full1;
  wire AV_FIFO_read_1;
  wire AV_FIFO_valid;
  wire AV_FIFO_write_1;
  wire BRAM_enable_1;
  wire [9:0]Cache_addrB_1;
  wire [9:0]Cache_addr_1;
  wire [287:0]Cache_dinB_1;
  wire [287:0]Cache_din_1;
  wire [287:0]Cache_douta1;
  wire [287:0]Cache_doutb1;
  wire Cache_wrenableB_1;
  wire Cache_wrenable_1;
  wire [9:0]History_addr_1;
  wire [50:0]History_din_1;
  wire [50:0]History_douta;
  wire History_wrenable_1;
  wire [63:0]Msg_FIFO_In_din_1;
  wire [63:0]Msg_FIFO_In_dout1;
  wire Msg_FIFO_In_empty1;
  wire Msg_FIFO_In_full1;
  wire Msg_FIFO_In_read_1;
  wire Msg_FIFO_In_valid;
  wire Msg_FIFO_In_write_1;
  wire [63:0]Msg_FIFO_Out_din_1;
  wire [63:0]Msg_FIFO_Out_dout1;
  wire Msg_FIFO_Out_empty1;
  wire Msg_FIFO_Out_full1;
  wire Msg_FIFO_Out_read_1;
  wire Msg_FIFO_Out_valid;
  wire Msg_FIFO_Out_write_1;
  wire [13:0]Tracker_addr_1;
  wire [71:0]Tracker_din_1;
  wire [71:0]Tracker_douta;
  wire Tracker_wrenable_1;
  wire clk_1;
  wire reset_1;

  assign AVM_FIFO_din_1 = AVM_FIFO_din[93:0];
  assign AVM_FIFO_dout[93:0] = AVM_FIFO_dout1;
  assign AVM_FIFO_empty = AVM_FIFO_empty1;
  assign AVM_FIFO_full = AVM_FIFO_prog_full;
  assign AVM_FIFO_read_1 = AVM_FIFO_read;
  assign AVM_FIFO_readvalid = AVM_FIFO_valid;
  assign AVM_FIFO_write_1 = AVM_FIFO_write;
  assign AV_FIFO_din_1 = AV_FIFO_din[32:0];
  assign AV_FIFO_dout[32:0] = AV_FIFO_dout1;
  assign AV_FIFO_empty = AV_FIFO_empty1;
  assign AV_FIFO_full = AV_FIFO_full1;
  assign AV_FIFO_read_1 = AV_FIFO_read;
  assign AV_FIFO_readvalid = AV_FIFO_valid;
  assign AV_FIFO_write_1 = AV_FIFO_write;
  assign BRAM_enable_1 = BRAM_enable;
  assign Cache_addrB_1 = Cache_addrB[9:0];
  assign Cache_addr_1 = Cache_addrA[9:0];
  assign Cache_dinB_1 = Cache_dinB[287:0];
  assign Cache_din_1 = Cache_dinA[287:0];
  assign Cache_doutA[287:0] = Cache_douta1;
  assign Cache_doutB[287:0] = Cache_doutb1;
  assign Cache_wrenableB_1 = Cache_wrenableB;
  assign Cache_wrenable_1 = Cache_wrenableA;
  assign History_addr_1 = History_addr[9:0];
  assign History_din_1 = History_din[50:0];
  assign History_dout[50:0] = History_douta;
  assign History_wrenable_1 = History_wrenable;
  assign Msg_FIFO_In_din_1 = Msg_FIFO_In_din[63:0];
  assign Msg_FIFO_In_dout[63:0] = Msg_FIFO_In_dout1;
  assign Msg_FIFO_In_empty = Msg_FIFO_In_empty1;
  assign Msg_FIFO_In_full = Msg_FIFO_In_full1;
  assign Msg_FIFO_In_read_1 = Msg_FIFO_In_read;
  assign Msg_FIFO_In_readvalid = Msg_FIFO_In_valid;
  assign Msg_FIFO_In_write_1 = Msg_FIFO_In_write;
  assign Msg_FIFO_Out_din_1 = Msg_FIFO_Out_din[63:0];
  assign Msg_FIFO_Out_dout[63:0] = Msg_FIFO_Out_dout1;
  assign Msg_FIFO_Out_empty = Msg_FIFO_Out_empty1;
  assign Msg_FIFO_Out_full = Msg_FIFO_Out_full1;
  assign Msg_FIFO_Out_read_1 = Msg_FIFO_Out_read;
  assign Msg_FIFO_Out_readvalid = Msg_FIFO_Out_valid;
  assign Msg_FIFO_Out_write_1 = Msg_FIFO_Out_write;
  assign SuperblockTracker_dout[71:0] = Tracker_douta;
  assign Tracker_addr_1 = SuperblockTracker_addr[13:0];
  assign Tracker_din_1 = SuperblockTracker_din[71:0];
  assign Tracker_wrenable_1 = SuperblockTracker_wrenable;
  assign clk_1 = clk;
  assign reset_1 = reset;
  PE_IPs_Msg_FIFO_In_1 AVM_FIFO
       (.clk(clk_1),
        .din(AVM_FIFO_din_1),
        .dout(AVM_FIFO_dout1),
        .empty(AVM_FIFO_empty1),
        .prog_full(AVM_FIFO_prog_full),
        .rd_en(AVM_FIFO_read_1),
        .srst(reset_1),
        .valid(AVM_FIFO_valid),
        .wr_en(AVM_FIFO_write_1));
  PE_IPs_Msg_FIFO_In_0 AV_FIFO
       (.clk(clk_1),
        .din(AV_FIFO_din_1),
        .dout(AV_FIFO_dout1),
        .empty(AV_FIFO_empty1),
        .full(AV_FIFO_full1),
        .rd_en(AV_FIFO_read_1),
        .srst(reset_1),
        .valid(AV_FIFO_valid),
        .wr_en(AV_FIFO_write_1));
  PE_IPs_blk_mem_gen_0_1 Cache
       (.addra(Cache_addr_1),
        .addrb(Cache_addrB_1),
        .clka(clk_1),
        .clkb(clk_1),
        .dina(Cache_din_1),
        .dinb(Cache_dinB_1),
        .douta(Cache_douta1),
        .doutb(Cache_doutb1),
        .ena(BRAM_enable_1),
        .enb(BRAM_enable_1),
        .wea(Cache_wrenable_1),
        .web(Cache_wrenableB_1));
  PE_IPs_blk_mem_gen_0_2 History
       (.addra(History_addr_1),
        .clka(clk_1),
        .dina(History_din_1),
        .douta(History_douta),
        .ena(BRAM_enable_1),
        .wea(History_wrenable_1));
  PE_IPs_Msg_FIFO_Out_0 Msg_FIFO_In
       (.clk(clk_1),
        .din(Msg_FIFO_In_din_1),
        .dout(Msg_FIFO_In_dout1),
        .empty(Msg_FIFO_In_empty1),
        .full(Msg_FIFO_In_full1),
        .rd_en(Msg_FIFO_In_read_1),
        .srst(reset_1),
        .valid(Msg_FIFO_In_valid),
        .wr_en(Msg_FIFO_In_write_1));
  PE_IPs_fifo_generator_0_0 Msg_FIFO_Out
       (.clk(clk_1),
        .din(Msg_FIFO_Out_din_1),
        .dout(Msg_FIFO_Out_dout1),
        .empty(Msg_FIFO_Out_empty1),
        .full(Msg_FIFO_Out_full1),
        .rd_en(Msg_FIFO_Out_read_1),
        .srst(reset_1),
        .valid(Msg_FIFO_Out_valid),
        .wr_en(Msg_FIFO_Out_write_1));
  PE_IPs_blk_mem_gen_0_0 Tracker
       (.addra(Tracker_addr_1),
        .clka(clk_1),
        .dina(Tracker_din_1),
        .douta(Tracker_douta),
        .ena(BRAM_enable_1),
        .wea(Tracker_wrenable_1));
endmodule
