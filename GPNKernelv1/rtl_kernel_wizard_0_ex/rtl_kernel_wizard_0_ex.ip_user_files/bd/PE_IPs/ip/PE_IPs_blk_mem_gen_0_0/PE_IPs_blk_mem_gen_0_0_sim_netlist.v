// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Mon Apr  8 11:00:16 2024
// Host        : COE-CS-crystal running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top PE_IPs_blk_mem_gen_0_0 -prefix
//               PE_IPs_blk_mem_gen_0_0_ PE_IPs_blk_mem_gen_0_0_sim_netlist.v
// Design      : PE_IPs_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PE_IPs_blk_mem_gen_0_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module PE_IPs_blk_mem_gen_0_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [13:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [71:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [71:0]douta;

  wire [13:0]addra;
  wire clka;
  wire [71:0]dina;
  wire [71:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [71:0]NLW_U0_doutb_UNCONNECTED;
  wire [13:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [13:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [71:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "14" *) 
  (* C_ADDRB_WIDTH = "14" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "32" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     0.0 mW" *) 
  (* C_FAMILY = "virtexuplusHBM" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "3" *) 
  (* C_READ_DEPTH_A = "16384" *) 
  (* C_READ_DEPTH_B = "16384" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "72" *) 
  (* C_READ_WIDTH_B = "72" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "1" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16384" *) 
  (* C_WRITE_DEPTH_B = "16384" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "72" *) 
  (* C_WRITE_WIDTH_B = "72" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  PE_IPs_blk_mem_gen_0_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[71:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[13:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[13:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[71:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule

(* ADDR_WIDTH_A = "14" *) (* ADDR_WIDTH_B = "14" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "72" *) (* BYTE_WRITE_WIDTH_B = "72" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "3" *) (* MEMORY_SIZE = "1179648" *) (* MEMORY_TYPE = "0" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "no_ecc" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "16384" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "ultra" *) (* P_MIN_WIDTH_DATA = "72" *) 
(* P_MIN_WIDTH_DATA_A = "72" *) (* P_MIN_WIDTH_DATA_B = "72" *) (* P_MIN_WIDTH_DATA_ECC = "72" *) 
(* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "72" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) 
(* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) 
(* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "14" *) (* P_WIDTH_ADDR_READ_B = "14" *) 
(* P_WIDTH_ADDR_WRITE_A = "14" *) (* P_WIDTH_ADDR_WRITE_B = "14" *) (* P_WIDTH_COL_WRITE_A = "72" *) 
(* P_WIDTH_COL_WRITE_B = "72" *) (* READ_DATA_WIDTH_A = "72" *) (* READ_DATA_WIDTH_B = "72" *) 
(* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "1" *) 
(* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "72" *) (* WRITE_DATA_WIDTH_B = "72" *) (* WRITE_MODE_A = "2" *) 
(* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* rsta_loop_iter = "72" *) (* rstb_loop_iter = "72" *) 
module PE_IPs_blk_mem_gen_0_0_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [13:0]addra;
  input [71:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [71:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [13:0]addrb;
  input [71:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [71:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [13:0]addra;
  wire clka;
  wire [71:0]dina;
  wire [71:0]douta;
  wire ena;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_7 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_8 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_9 ;
  wire [22:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_AddrA_1 ;
  wire [22:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_AddrB_1 ;
  wire [8:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_BEWB_1 ;
  wire [8:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_BWEA_1 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DinA_1 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DinB_1 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DoutA_1 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DoutB_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_7 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_8 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_9 ;
  wire [22:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_AddrA_2 ;
  wire [22:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_AddrB_2 ;
  wire [8:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_BEWB_2 ;
  wire [8:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_BWEA_2 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DinA_2 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DinB_2 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DoutA_2 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DoutB_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_7 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_8 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_9 ;
  wire [22:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_AddrA_3 ;
  wire [22:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_AddrB_3 ;
  wire [8:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_BEWB_3 ;
  wire [8:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_BWEA_3 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DinA_3 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DinB_3 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DoutA_3 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DoutB_3 ;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_SBITERR_B_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_ADDR_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DIN_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DOUT_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_SBITERR_B_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_ADDR_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DIN_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DOUT_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_EN_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_EN_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDB_WR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDB_WR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_SBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_SBITERR_B_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_ADDR_B_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_B_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_A_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DIN_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DOUT_B_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign doutb[71] = \<const0> ;
  assign doutb[70] = \<const0> ;
  assign doutb[69] = \<const0> ;
  assign doutb[68] = \<const0> ;
  assign doutb[67] = \<const0> ;
  assign doutb[66] = \<const0> ;
  assign doutb[65] = \<const0> ;
  assign doutb[64] = \<const0> ;
  assign doutb[63] = \<const0> ;
  assign doutb[62] = \<const0> ;
  assign doutb[61] = \<const0> ;
  assign doutb[60] = \<const0> ;
  assign doutb[59] = \<const0> ;
  assign doutb[58] = \<const0> ;
  assign doutb[57] = \<const0> ;
  assign doutb[56] = \<const0> ;
  assign doutb[55] = \<const0> ;
  assign doutb[54] = \<const0> ;
  assign doutb[53] = \<const0> ;
  assign doutb[52] = \<const0> ;
  assign doutb[51] = \<const0> ;
  assign doutb[50] = \<const0> ;
  assign doutb[49] = \<const0> ;
  assign doutb[48] = \<const0> ;
  assign doutb[47] = \<const0> ;
  assign doutb[46] = \<const0> ;
  assign doutb[45] = \<const0> ;
  assign doutb[44] = \<const0> ;
  assign doutb[43] = \<const0> ;
  assign doutb[42] = \<const0> ;
  assign doutb[41] = \<const0> ;
  assign doutb[40] = \<const0> ;
  assign doutb[39] = \<const0> ;
  assign doutb[38] = \<const0> ;
  assign doutb[37] = \<const0> ;
  assign doutb[36] = \<const0> ;
  assign doutb[35] = \<const0> ;
  assign doutb[34] = \<const0> ;
  assign doutb[33] = \<const0> ;
  assign doutb[32] = \<const0> ;
  assign doutb[31] = \<const0> ;
  assign doutb[30] = \<const0> ;
  assign doutb[29] = \<const0> ;
  assign doutb[28] = \<const0> ;
  assign doutb[27] = \<const0> ;
  assign doutb[26] = \<const0> ;
  assign doutb[25] = \<const0> ;
  assign doutb[24] = \<const0> ;
  assign doutb[23] = \<const0> ;
  assign doutb[22] = \<const0> ;
  assign doutb[21] = \<const0> ;
  assign doutb[20] = \<const0> ;
  assign doutb[19] = \<const0> ;
  assign doutb[18] = \<const0> ;
  assign doutb[17] = \<const0> ;
  assign doutb[16] = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "4095" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "71" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1179648" *) 
  (* RTL_RAM_NAME = "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_sp.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_uram_0" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "71" *) 
  URAM288 #(
    .AVG_CONS_INACTIVE_CYCLES(10),
    .BWE_MODE_A("PARITY_INDEPENDENT"),
    .BWE_MODE_B("PARITY_INDEPENDENT"),
    .CASCADE_ORDER_A("FIRST"),
    .CASCADE_ORDER_B("FIRST"),
    .EN_ECC_RD_A("FALSE"),
    .EN_ECC_RD_B("FALSE"),
    .EN_ECC_WR_A("FALSE"),
    .EN_ECC_WR_B("FALSE"),
    .IREG_PRE_A("FALSE"),
    .IREG_PRE_B("FALSE"),
    .IS_CLK_INVERTED(1'b0),
    .IS_EN_A_INVERTED(1'b0),
    .IS_EN_B_INVERTED(1'b0),
    .IS_RDB_WR_A_INVERTED(1'b0),
    .IS_RDB_WR_B_INVERTED(1'b0),
    .IS_RST_A_INVERTED(1'b0),
    .IS_RST_B_INVERTED(1'b0),
    .MATRIX_ID("gen_wr_a.gen_word_narrow.mem_reg_B3_M0"),
    .NUM_UNIQUE_SELF_ADDR_A(4),
    .NUM_UNIQUE_SELF_ADDR_B(4),
    .NUM_URAM_IN_MATRIX(4),
    .OREG_A("FALSE"),
    .OREG_B("FALSE"),
    .OREG_ECC_A("FALSE"),
    .OREG_ECC_B("FALSE"),
    .REG_CAS_A("FALSE"),
    .REG_CAS_B("FALSE"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SELF_ADDR_A(11'h000),
    .SELF_ADDR_B(11'h000),
    .SELF_MASK_A(11'h7FC),
    .SELF_MASK_B(11'h7FC),
    .USE_EXT_CE_A("FALSE"),
    .USE_EXT_CE_B("FALSE")) 
    \gen_wr_a.gen_word_narrow.mem_reg_uram_0 
       (.ADDR_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra}),
        .ADDR_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BWE_A({\gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0 }),
        .BWE_B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CAS_IN_ADDR_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_ADDR_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_BWE_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_BWE_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_DBITERR_A(1'b0),
        .CAS_IN_DBITERR_B(1'b0),
        .CAS_IN_DIN_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_DIN_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_DOUT_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_DOUT_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_EN_A(1'b0),
        .CAS_IN_EN_B(1'b0),
        .CAS_IN_RDACCESS_A(1'b0),
        .CAS_IN_RDACCESS_B(1'b0),
        .CAS_IN_RDB_WR_A(1'b0),
        .CAS_IN_RDB_WR_B(1'b0),
        .CAS_IN_SBITERR_A(1'b0),
        .CAS_IN_SBITERR_B(1'b0),
        .CAS_OUT_ADDR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_AddrA_1 ),
        .CAS_OUT_ADDR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_AddrB_1 ),
        .CAS_OUT_BWE_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_BWEA_1 ),
        .CAS_OUT_BWE_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_BEWB_1 ),
        .CAS_OUT_DBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_0 ),
        .CAS_OUT_DBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_1 ),
        .CAS_OUT_DIN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DinA_1 ),
        .CAS_OUT_DIN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DinB_1 ),
        .CAS_OUT_DOUT_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DoutA_1 ),
        .CAS_OUT_DOUT_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DoutB_1 ),
        .CAS_OUT_EN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_2 ),
        .CAS_OUT_EN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_3 ),
        .CAS_OUT_RDACCESS_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_4 ),
        .CAS_OUT_RDACCESS_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_5 ),
        .CAS_OUT_RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_6 ),
        .CAS_OUT_RDB_WR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_7 ),
        .CAS_OUT_SBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_8 ),
        .CAS_OUT_SBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_9 ),
        .CLK(clka),
        .DBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_A_UNCONNECTED ),
        .DBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_B_UNCONNECTED ),
        .DIN_A(dina),
        .DIN_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DOUT_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_A_UNCONNECTED [71:0]),
        .DOUT_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_B_UNCONNECTED [71:0]),
        .EN_A(ena),
        .EN_B(1'b0),
        .INJECT_DBITERR_A(1'b0),
        .INJECT_DBITERR_B(1'b0),
        .INJECT_SBITERR_A(1'b0),
        .INJECT_SBITERR_B(1'b0),
        .OREG_CE_A(1'b1),
        .OREG_CE_B(1'b1),
        .OREG_ECC_CE_A(1'b1),
        .OREG_ECC_CE_B(1'b1),
        .RDACCESS_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_RDACCESS_A_UNCONNECTED ),
        .RDACCESS_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_RDACCESS_B_UNCONNECTED ),
        .RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0 ),
        .RDB_WR_B(1'b0),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1 
       (.I0(ena),
        .I1(wea),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0 ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "4096" *) 
  (* \MEM.PORTA.ADDRESS_END  = "8191" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "71" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1179648" *) 
  (* RTL_RAM_NAME = "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_sp.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_uram_1" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "4096" *) 
  (* ram_addr_end = "8191" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "71" *) 
  URAM288 #(
    .AVG_CONS_INACTIVE_CYCLES(10),
    .BWE_MODE_A("PARITY_INDEPENDENT"),
    .BWE_MODE_B("PARITY_INDEPENDENT"),
    .CASCADE_ORDER_A("MIDDLE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .EN_ECC_RD_A("FALSE"),
    .EN_ECC_RD_B("FALSE"),
    .EN_ECC_WR_A("FALSE"),
    .EN_ECC_WR_B("FALSE"),
    .IREG_PRE_A("FALSE"),
    .IREG_PRE_B("FALSE"),
    .IS_CLK_INVERTED(1'b0),
    .IS_EN_A_INVERTED(1'b0),
    .IS_EN_B_INVERTED(1'b0),
    .IS_RDB_WR_A_INVERTED(1'b0),
    .IS_RDB_WR_B_INVERTED(1'b0),
    .IS_RST_A_INVERTED(1'b0),
    .IS_RST_B_INVERTED(1'b0),
    .MATRIX_ID("gen_wr_a.gen_word_narrow.mem_reg_B3_M0"),
    .NUM_UNIQUE_SELF_ADDR_A(4),
    .NUM_UNIQUE_SELF_ADDR_B(4),
    .NUM_URAM_IN_MATRIX(4),
    .OREG_A("FALSE"),
    .OREG_B("FALSE"),
    .OREG_ECC_A("FALSE"),
    .OREG_ECC_B("FALSE"),
    .REG_CAS_A("FALSE"),
    .REG_CAS_B("FALSE"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SELF_ADDR_A(11'h001),
    .SELF_ADDR_B(11'h001),
    .SELF_MASK_A(11'h7FC),
    .SELF_MASK_B(11'h7FC),
    .USE_EXT_CE_A("FALSE"),
    .USE_EXT_CE_B("FALSE")) 
    \gen_wr_a.gen_word_narrow.mem_reg_uram_1 
       (.ADDR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_ADDR_A_UNCONNECTED [22:0]),
        .ADDR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_ADDR_B_UNCONNECTED [22:0]),
        .BWE_A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BWE_B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CAS_IN_ADDR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_AddrA_1 ),
        .CAS_IN_ADDR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_AddrB_1 ),
        .CAS_IN_BWE_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_BWEA_1 ),
        .CAS_IN_BWE_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_BEWB_1 ),
        .CAS_IN_DBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_0 ),
        .CAS_IN_DBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_1 ),
        .CAS_IN_DIN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DinA_1 ),
        .CAS_IN_DIN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DinB_1 ),
        .CAS_IN_DOUT_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DoutA_1 ),
        .CAS_IN_DOUT_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DoutB_1 ),
        .CAS_IN_EN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_2 ),
        .CAS_IN_EN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_3 ),
        .CAS_IN_RDACCESS_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_4 ),
        .CAS_IN_RDACCESS_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_5 ),
        .CAS_IN_RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_6 ),
        .CAS_IN_RDB_WR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_7 ),
        .CAS_IN_SBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_8 ),
        .CAS_IN_SBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_9 ),
        .CAS_OUT_ADDR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_AddrA_2 ),
        .CAS_OUT_ADDR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_AddrB_2 ),
        .CAS_OUT_BWE_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_BWEA_2 ),
        .CAS_OUT_BWE_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_BEWB_2 ),
        .CAS_OUT_DBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_0 ),
        .CAS_OUT_DBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_1 ),
        .CAS_OUT_DIN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DinA_2 ),
        .CAS_OUT_DIN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DinB_2 ),
        .CAS_OUT_DOUT_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DoutA_2 ),
        .CAS_OUT_DOUT_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DoutB_2 ),
        .CAS_OUT_EN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_2 ),
        .CAS_OUT_EN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_3 ),
        .CAS_OUT_RDACCESS_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_4 ),
        .CAS_OUT_RDACCESS_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_5 ),
        .CAS_OUT_RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_6 ),
        .CAS_OUT_RDB_WR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_7 ),
        .CAS_OUT_SBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_8 ),
        .CAS_OUT_SBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_9 ),
        .CLK(clka),
        .DBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DBITERR_A_UNCONNECTED ),
        .DBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DBITERR_B_UNCONNECTED ),
        .DIN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DIN_A_UNCONNECTED [71:0]),
        .DIN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DIN_B_UNCONNECTED [71:0]),
        .DOUT_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DOUT_A_UNCONNECTED [71:0]),
        .DOUT_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DOUT_B_UNCONNECTED [71:0]),
        .EN_A(1'b1),
        .EN_B(1'b1),
        .INJECT_DBITERR_A(1'b0),
        .INJECT_DBITERR_B(1'b0),
        .INJECT_SBITERR_A(1'b0),
        .INJECT_SBITERR_B(1'b0),
        .OREG_CE_A(1'b1),
        .OREG_CE_B(1'b1),
        .OREG_ECC_CE_A(1'b1),
        .OREG_ECC_CE_B(1'b1),
        .RDACCESS_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_RDACCESS_A_UNCONNECTED ),
        .RDACCESS_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_RDACCESS_B_UNCONNECTED ),
        .RDB_WR_A(1'b1),
        .RDB_WR_B(1'b1),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "8192" *) 
  (* \MEM.PORTA.ADDRESS_END  = "12287" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "71" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1179648" *) 
  (* RTL_RAM_NAME = "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_sp.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_uram_2" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "8192" *) 
  (* ram_addr_end = "12287" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "71" *) 
  URAM288 #(
    .AVG_CONS_INACTIVE_CYCLES(10),
    .BWE_MODE_A("PARITY_INDEPENDENT"),
    .BWE_MODE_B("PARITY_INDEPENDENT"),
    .CASCADE_ORDER_A("MIDDLE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .EN_ECC_RD_A("FALSE"),
    .EN_ECC_RD_B("FALSE"),
    .EN_ECC_WR_A("FALSE"),
    .EN_ECC_WR_B("FALSE"),
    .IREG_PRE_A("FALSE"),
    .IREG_PRE_B("FALSE"),
    .IS_CLK_INVERTED(1'b0),
    .IS_EN_A_INVERTED(1'b0),
    .IS_EN_B_INVERTED(1'b0),
    .IS_RDB_WR_A_INVERTED(1'b0),
    .IS_RDB_WR_B_INVERTED(1'b0),
    .IS_RST_A_INVERTED(1'b0),
    .IS_RST_B_INVERTED(1'b0),
    .MATRIX_ID("gen_wr_a.gen_word_narrow.mem_reg_B3_M0"),
    .NUM_UNIQUE_SELF_ADDR_A(4),
    .NUM_UNIQUE_SELF_ADDR_B(4),
    .NUM_URAM_IN_MATRIX(4),
    .OREG_A("FALSE"),
    .OREG_B("FALSE"),
    .OREG_ECC_A("FALSE"),
    .OREG_ECC_B("FALSE"),
    .REG_CAS_A("FALSE"),
    .REG_CAS_B("FALSE"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SELF_ADDR_A(11'h002),
    .SELF_ADDR_B(11'h002),
    .SELF_MASK_A(11'h7FC),
    .SELF_MASK_B(11'h7FC),
    .USE_EXT_CE_A("FALSE"),
    .USE_EXT_CE_B("FALSE")) 
    \gen_wr_a.gen_word_narrow.mem_reg_uram_2 
       (.ADDR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_ADDR_A_UNCONNECTED [22:0]),
        .ADDR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_ADDR_B_UNCONNECTED [22:0]),
        .BWE_A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BWE_B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CAS_IN_ADDR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_AddrA_2 ),
        .CAS_IN_ADDR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_AddrB_2 ),
        .CAS_IN_BWE_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_BWEA_2 ),
        .CAS_IN_BWE_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_BEWB_2 ),
        .CAS_IN_DBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_0 ),
        .CAS_IN_DBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_1 ),
        .CAS_IN_DIN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DinA_2 ),
        .CAS_IN_DIN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DinB_2 ),
        .CAS_IN_DOUT_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DoutA_2 ),
        .CAS_IN_DOUT_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DoutB_2 ),
        .CAS_IN_EN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_2 ),
        .CAS_IN_EN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_3 ),
        .CAS_IN_RDACCESS_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_4 ),
        .CAS_IN_RDACCESS_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_5 ),
        .CAS_IN_RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_6 ),
        .CAS_IN_RDB_WR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_7 ),
        .CAS_IN_SBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_8 ),
        .CAS_IN_SBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_9 ),
        .CAS_OUT_ADDR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_AddrA_3 ),
        .CAS_OUT_ADDR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_AddrB_3 ),
        .CAS_OUT_BWE_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_BWEA_3 ),
        .CAS_OUT_BWE_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_BEWB_3 ),
        .CAS_OUT_DBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_0 ),
        .CAS_OUT_DBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_1 ),
        .CAS_OUT_DIN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DinA_3 ),
        .CAS_OUT_DIN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DinB_3 ),
        .CAS_OUT_DOUT_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DoutA_3 ),
        .CAS_OUT_DOUT_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DoutB_3 ),
        .CAS_OUT_EN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_2 ),
        .CAS_OUT_EN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_3 ),
        .CAS_OUT_RDACCESS_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_4 ),
        .CAS_OUT_RDACCESS_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_5 ),
        .CAS_OUT_RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_6 ),
        .CAS_OUT_RDB_WR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_7 ),
        .CAS_OUT_SBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_8 ),
        .CAS_OUT_SBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_9 ),
        .CLK(clka),
        .DBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DBITERR_A_UNCONNECTED ),
        .DBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DBITERR_B_UNCONNECTED ),
        .DIN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DIN_A_UNCONNECTED [71:0]),
        .DIN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DIN_B_UNCONNECTED [71:0]),
        .DOUT_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DOUT_A_UNCONNECTED [71:0]),
        .DOUT_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DOUT_B_UNCONNECTED [71:0]),
        .EN_A(1'b1),
        .EN_B(1'b1),
        .INJECT_DBITERR_A(1'b0),
        .INJECT_DBITERR_B(1'b0),
        .INJECT_SBITERR_A(1'b0),
        .INJECT_SBITERR_B(1'b0),
        .OREG_CE_A(1'b1),
        .OREG_CE_B(1'b1),
        .OREG_ECC_CE_A(1'b1),
        .OREG_ECC_CE_B(1'b1),
        .RDACCESS_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_RDACCESS_A_UNCONNECTED ),
        .RDACCESS_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_RDACCESS_B_UNCONNECTED ),
        .RDB_WR_A(1'b1),
        .RDB_WR_B(1'b1),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "12288" *) 
  (* \MEM.PORTA.ADDRESS_END  = "16383" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "71" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1179648" *) 
  (* RTL_RAM_NAME = "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_sp.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_uram_3" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "12288" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "71" *) 
  URAM288 #(
    .AVG_CONS_INACTIVE_CYCLES(10),
    .BWE_MODE_A("PARITY_INDEPENDENT"),
    .BWE_MODE_B("PARITY_INDEPENDENT"),
    .CASCADE_ORDER_A("LAST"),
    .CASCADE_ORDER_B("LAST"),
    .EN_ECC_RD_A("FALSE"),
    .EN_ECC_RD_B("FALSE"),
    .EN_ECC_WR_A("FALSE"),
    .EN_ECC_WR_B("FALSE"),
    .IREG_PRE_A("FALSE"),
    .IREG_PRE_B("FALSE"),
    .IS_CLK_INVERTED(1'b0),
    .IS_EN_A_INVERTED(1'b0),
    .IS_EN_B_INVERTED(1'b0),
    .IS_RDB_WR_A_INVERTED(1'b0),
    .IS_RDB_WR_B_INVERTED(1'b0),
    .IS_RST_A_INVERTED(1'b0),
    .IS_RST_B_INVERTED(1'b0),
    .MATRIX_ID("gen_wr_a.gen_word_narrow.mem_reg_B3_M0"),
    .NUM_UNIQUE_SELF_ADDR_A(4),
    .NUM_UNIQUE_SELF_ADDR_B(4),
    .NUM_URAM_IN_MATRIX(4),
    .OREG_A("FALSE"),
    .OREG_B("FALSE"),
    .OREG_ECC_A("FALSE"),
    .OREG_ECC_B("FALSE"),
    .REG_CAS_A("FALSE"),
    .REG_CAS_B("FALSE"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SELF_ADDR_A(11'h003),
    .SELF_ADDR_B(11'h003),
    .SELF_MASK_A(11'h7FC),
    .SELF_MASK_B(11'h7FC),
    .USE_EXT_CE_A("FALSE"),
    .USE_EXT_CE_B("FALSE")) 
    \gen_wr_a.gen_word_narrow.mem_reg_uram_3 
       (.ADDR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_ADDR_A_UNCONNECTED [22:0]),
        .ADDR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_ADDR_B_UNCONNECTED [22:0]),
        .BWE_A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BWE_B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CAS_IN_ADDR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_AddrA_3 ),
        .CAS_IN_ADDR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_AddrB_3 ),
        .CAS_IN_BWE_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_BWEA_3 ),
        .CAS_IN_BWE_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_BEWB_3 ),
        .CAS_IN_DBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_0 ),
        .CAS_IN_DBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_1 ),
        .CAS_IN_DIN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DinA_3 ),
        .CAS_IN_DIN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DinB_3 ),
        .CAS_IN_DOUT_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DoutA_3 ),
        .CAS_IN_DOUT_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DoutB_3 ),
        .CAS_IN_EN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_2 ),
        .CAS_IN_EN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_3 ),
        .CAS_IN_RDACCESS_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_4 ),
        .CAS_IN_RDACCESS_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_5 ),
        .CAS_IN_RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_6 ),
        .CAS_IN_RDB_WR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_7 ),
        .CAS_IN_SBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_8 ),
        .CAS_IN_SBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_9 ),
        .CAS_OUT_ADDR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_A_UNCONNECTED [22:0]),
        .CAS_OUT_ADDR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_B_UNCONNECTED [22:0]),
        .CAS_OUT_BWE_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_A_UNCONNECTED [8:0]),
        .CAS_OUT_BWE_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_B_UNCONNECTED [8:0]),
        .CAS_OUT_DBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DBITERR_A_UNCONNECTED ),
        .CAS_OUT_DBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DBITERR_B_UNCONNECTED ),
        .CAS_OUT_DIN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_A_UNCONNECTED [71:0]),
        .CAS_OUT_DIN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_B_UNCONNECTED [71:0]),
        .CAS_OUT_DOUT_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_A_UNCONNECTED [71:0]),
        .CAS_OUT_DOUT_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_B_UNCONNECTED [71:0]),
        .CAS_OUT_EN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_EN_A_UNCONNECTED ),
        .CAS_OUT_EN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_EN_B_UNCONNECTED ),
        .CAS_OUT_RDACCESS_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDACCESS_A_UNCONNECTED ),
        .CAS_OUT_RDACCESS_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDACCESS_B_UNCONNECTED ),
        .CAS_OUT_RDB_WR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDB_WR_A_UNCONNECTED ),
        .CAS_OUT_RDB_WR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDB_WR_B_UNCONNECTED ),
        .CAS_OUT_SBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_SBITERR_A_UNCONNECTED ),
        .CAS_OUT_SBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_SBITERR_B_UNCONNECTED ),
        .CLK(clka),
        .DBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DBITERR_A_UNCONNECTED ),
        .DBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DBITERR_B_UNCONNECTED ),
        .DIN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DIN_A_UNCONNECTED [71:0]),
        .DIN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DIN_B_UNCONNECTED [71:0]),
        .DOUT_A(douta),
        .DOUT_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DOUT_B_UNCONNECTED [71:0]),
        .EN_A(1'b1),
        .EN_B(1'b1),
        .INJECT_DBITERR_A(1'b0),
        .INJECT_DBITERR_B(1'b0),
        .INJECT_SBITERR_A(1'b0),
        .INJECT_SBITERR_B(1'b0),
        .OREG_CE_A(1'b1),
        .OREG_CE_B(1'b1),
        .OREG_ECC_CE_A(1'b1),
        .OREG_ECC_CE_B(1'b1),
        .RDACCESS_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_RDACCESS_A_UNCONNECTED ),
        .RDACCESS_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_RDACCESS_B_UNCONNECTED ),
        .RDB_WR_A(1'b1),
        .RDB_WR_B(1'b1),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
endmodule

module PE_IPs_blk_mem_gen_0_0_xpm_memory_spram
   (douta,
    sleep,
    clka,
    ena,
    wea,
    addra,
    dina);
  output [71:0]douta;
  input sleep;
  input clka;
  input ena;
  input [0:0]wea;
  input [13:0]addra;
  input [71:0]dina;

  wire [13:0]addra;
  wire clka;
  wire [71:0]dina;
  wire [71:0]douta;
  wire ena;
  wire sleep;
  wire [0:0]wea;
  wire NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED;
  wire [71:0]NLW_xpm_memory_base_inst_doutb_UNCONNECTED;

  (* ADDR_WIDTH_A = "14" *) 
  (* ADDR_WIDTH_B = "14" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "72" *) 
  (* BYTE_WRITE_WIDTH_B = "72" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_BIT_RANGE = "[7:0]" *) 
  (* ECC_MODE = "0" *) 
  (* ECC_TYPE = "NONE" *) 
  (* IGNORE_INIT_SYNTH = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "3" *) 
  (* MEMORY_SIZE = "1179648" *) 
  (* MEMORY_TYPE = "0" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "16384" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "ultra" *) 
  (* P_MIN_WIDTH_DATA = "72" *) 
  (* P_MIN_WIDTH_DATA_A = "72" *) 
  (* P_MIN_WIDTH_DATA_B = "72" *) 
  (* P_MIN_WIDTH_DATA_ECC = "72" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "72" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "14" *) 
  (* P_WIDTH_ADDR_READ_B = "14" *) 
  (* P_WIDTH_ADDR_WRITE_A = "14" *) 
  (* P_WIDTH_ADDR_WRITE_B = "14" *) 
  (* P_WIDTH_COL_WRITE_A = "72" *) 
  (* P_WIDTH_COL_WRITE_B = "72" *) 
  (* READ_DATA_WIDTH_A = "72" *) 
  (* READ_DATA_WIDTH_B = "72" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "72" *) 
  (* WRITE_DATA_WIDTH_B = "72" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "72" *) 
  (* rstb_loop_iter = "72" *) 
  PE_IPs_blk_mem_gen_0_0_xpm_memory_base xpm_memory_base_inst
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterra(NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED),
        .dbiterrb(NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_xpm_memory_base_inst_doutb_UNCONNECTED[71:0]),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b1),
        .regceb(1'b0),
        .rsta(1'b0),
        .rstb(1'b0),
        .sbiterra(NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED),
        .sbiterrb(NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED),
        .sleep(sleep),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RgPKnWr9n0dGgttm3akiFhAlfB96usOQYxnEmPhGyTGg1AbizYAjGPWLXBWl50n/d0IA71ci4aJB
wt6mtfyNADm3ZReK7D3mKu037BOgxryoEwwf1kiC6q/PllxsdAgEMfQrfHJ3E2AzSpdYjoxVYito
y0JW6CUDcWvWa4WV0EA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M0l6KpOGH3jL8eRt3NCD7e2USYnkg5H9GAnE1PKmnjiouFN3Y8kjWA2PZDAQLm9UW+TsC1HeVlzO
WjNCHkjR/6ubCsIcWfpPZWdIuAenlsyq8Y9l6b8vMj8JSbDEOiFF/GHSbKsn22MJdDJKEhHFK6GV
s8gR2vywRFwG69gIRE4qGhVB+WIg8GJrDpDMYH6lCjMkTrjXuKDUcNlJN3NPLuhJ7tsditwf1pr5
moJRmGpJnip/rGm0g4o4A6ev4CtePjoao8C1wFtzHkERX9oenhh7cGjDMejU5IrLv8NxFnLj1FpB
9MuF1beTU20NI5oAn6zLiLiOtXjf0ghU3AN4DA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hAsrUfp6Qgjm8yBjNYTEtQmVQmMxzL8TE/3oiQSxSI3+yEkXAbQCXkT9mo+LCdv+fGECOB0istHd
eLtbsiYbxjxNxYkXiUrRE5O+aSxynIray+uF9DJigTEUZu8JJXUbzxK4DDUu1Lm9tpGps4+Prz1m
0gkj13RT/Y/418s2VTw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BP/54Wm/GJmb1jy0bxWJJX4aiKyiWPVh4X3VL30BQrmX4PlEsNKzBJH3Qu8IIYERfnFP0ifAgboa
vypMQ5Ed0BrMePGkWIgT6I8hxJCMFpHdkSK7m1giSKyZzFfTOrVqoNFXE+qdzLfY1J5hBWCvouYo
jllavK4N3gF9FLScH2AUWYVMcVth2QPaTAU2NLnAUNH8kgtBjBfc8/KbPPTznD1QNVqvFstzcbTA
hGQ1ETVPvINQ0KqxxAG5PRhtQD4+pC+hr/Tvk+RSvGyBOfy9zE86OXkJiYs9dSFhNiMFmCPL9DBO
se4OxNNC0/7aBtb1mkSEA9YFDYEb9jS7Jasy2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SnzT9DVH3xlEN8nrr2YrlvTO5qj7L22d7WaBcuKyTaiHoIwwFHrC4HQbfs0TAwkdWcOgmJoATPSF
F6qm0KiddbrlERF3MfKUldeGBJtqLdX+zGw7+3JD7S+HB9dIMOFOHy+IiCZp1/Pz8epKpi238cel
rcVoJQKz406wmXDvOo8KsT+XhRLs9BVCrBErPGGXKYDk6NXAp0duOgQE9DbslzMU83M/kUC7uERV
tQW02240peKQFp2elEZC7Tetvgp0TaFTtJiKN45REi8GQUCKGa85JjNIk1qb/+k95TIIP1xrHirc
6iX7qbwnPetv8TVu2NjkZ0WDEK5RXdOXcxBwHA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
erkR82V0jX8ytva+9MzEs0c75Z7j7TsgxWRLNAUfbbU28i+U9YzuZlSfYU75M0f9jx1gvxtBrfKv
cNHVdkR+i5zfHDZsDwfMEEBhs8wzDCKqe+eex6BBEvlIOesCPXrr2RozQgaQ1PBh/os2Arfu+873
BjsVxFJkbhpzIqlddOo/XZV9Yi+eih7A7pXXEBR6IL7Poo4Ka49MiVQU0xJrDTm+ddOuMPDRRD7g
dsxS/uzdcBcO2myV6g/7YH/C2Ce9s6+UywJN/0JeXSqwA7bsBqqnfFicVAT0lckLopMLiuzK7dsN
EwhFeqoetciFrDIj9+o0xDMWBZhgNP1u68vURA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R+BI65BKLT0I9hEtsxGnDyM5XY9gzULeTPOSDXvd3KWOzZJAx6C0xlbyZcFZhAEG/QIK2yd0wAi6
IUWxyF/sx3HsqKjhVi5KxnpuXDBOZVoj811O7JukedFVmDW7OHGtBkuiJ5X5irw7mfsEKRQmF/1i
V6lj9HYHZEjxtDeZjACsLY4y1QxWalSKT4HIMOHznBLL8dLbGMlS+ZmFuFn0gcwZavVl7gTkTtkf
W0gn01A9ru7NKsf+iLX0kj4dgItPu9N2g02M1vWQ9UUQEVvfV7lUc7GY1suibrD8aEkhH9S7lZ7n
bFsT4qxyvzg8ML6v4g4v7N6VuyhEtgFgNd725Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jNUVKiwH68vHsU54idgvKwaVJcoxTUuxfgrQpbpmM/IpesWA3wHsGzYClwAxkKzw3KRnFyQqTWcZ
yj1EQ2CMBxlJ0kyNbZW8OK8pXzeigToZ0U6Aq3Gy+j7wBbhe83wE1Ygn82sK8dHTEulvaRLn/c5r
ispy1s7jMKIvYNzoUuZrgyBQyfaYmdqUia8XlQjFd+VwzhTXKwzvmaqHWyaHjfBKeCooO7+oUxMG
OJg83W54EVe9ronFQ8Wr9EOL8ia7qelCAgyQe/bC0HHCoMAm8apI7sX23iMR/wMiPP5V2bQzycy+
rBX/+SWkqSeIE1FLm+muFPvrE7iLwJaW8d1fzdFFjAZ5aIXArbWNfwbK8S0TczXc9lEzmpb69rwA
UJIrs4alo81qGQ32UFhjuMQjX75O9Od1HWHDj5PFaT/Ja5Ly+bK8Cc3gfO6dCE81m7d+B2JBZ/Hl
tBA19QuOAYwT2EIPOdpaVtCULb33cWODWu3qQFhZMmDzKTb3kwpcr0LL

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MnzcA2swaxH1LRacKDou0ZmiiMRETbWIdHgeBgyQz7ILronsXLoB/C20WuFNGEVSiL2/51EZ6MXZ
vMHI8fFcMQCJcuTBDBibUMKv6bXI9s8fTbtrBZppbF/R1icG5JYhqmX4aRnv4W/dxJRjI2L35nLN
Y48E9OfgfkD1sr+IRwx8WEKFmUhuk8dLe0VOK7ywe3XEcneYvrz+HhPj16bGmNfMwNnDgZ3gKKZD
hRnys+jzvAX3HyISrErWXhMKrhWMxXeTNFJCqNQ0LWAVHQYwyKnF5xVpyXSuGNSIrva+QXqOrZBG
3VNLirNVtMRiKLfwZeMaqvswkqBDAa53utlAAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d0xXkKtsKM8GvXhDZr16p1+oE3uBtD04BJ76eGGIEj/CFECfHVy9qsJ43oSKjas0+AJr4GFFnVb6
X7gJV6MmX/OboC9ier5joUCGz0mxVzkRZK9a+LPEDcg0K6+cLE36kr+FfxW9Uk2816EHBCMCf5mK
A4eAhSmAb5Nq74F/q0quiG416npbny7faiQ+xmPDfYYiM3UuMKaD4iE8ODlz1w5xThPllWESf3LZ
NTkw6fozyTqZ47vvE21O3dgIGAY1v+C6BwlCK24VwPJa1xs9csY+qTk31j5jjAc1ExlB6QF7t9UH
lk70qdNPWxT87OH7kFT8UvPO1D6BTC3/WkDZfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYhdzKTvo93uJrAaiP5OfCDuOnu2BSvPnxlv6I7h2n1+xHtj34LNNKzWEgOg9dUV9cYDaHYUjjEt
DKdWcz6mZ61d5qyxAhpv67fc90v7JVgtOAcT94/Yb+AuLxXFcGA6Gic7uoJtUgz6JmTnb22Dxdjc
KuIewDj4IOTfP8XGXKTaF+cNp0CFrQgTAcVSQFyLFxr0I/9h3S+GZLecA7ntEeHEOfCJzPvy0ddi
7MCdQWECLb+fXC0IAn8V95TumcpINiRAX1BHi9IGJ4QoMrb3jOCrPkFhDMTJj2aiImUWdi/l/0QE
d7wcXlgIEYVeoKYUOJ4mqy+zZPUbLNeOPADUDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12960)
`pragma protect data_block
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
qoE69sSxikGFZUsBdJFOLUPYl0WI
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
