// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Thu Mar 28 19:56:39 2024
// Host        : COE-CS-crystal running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ PE_IPs_blk_mem_gen_0_0_sim_netlist.v
// Design      : PE_IPs_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PE_IPs_blk_mem_gen_0_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  (* C_COUNT_36K_BRAM = "28" *) 
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
  (* C_READ_DEPTH_A = "14222" *) 
  (* C_READ_DEPTH_B = "14222" *) 
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
  (* C_WRITE_DEPTH_A = "14222" *) 
  (* C_WRITE_DEPTH_B = "14222" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "72" *) 
  (* C_WRITE_WIDTH_B = "72" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
(* MEMORY_PRIMITIVE = "3" *) (* MEMORY_SIZE = "1023984" *) (* MEMORY_TYPE = "0" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "no_ecc" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "14222" *) 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
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
  (* RTL_RAM_BITS = "1023984" *) 
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
  (* RTL_RAM_BITS = "1023984" *) 
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
  (* RTL_RAM_BITS = "1023984" *) 
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
  (* \MEM.PORTA.ADDRESS_END  = "14221" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "71" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1023984" *) 
  (* RTL_RAM_NAME = "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_sp.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_uram_3" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "12288" *) 
  (* ram_addr_end = "14221" *) 
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram
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
  (* MEMORY_SIZE = "1023984" *) 
  (* MEMORY_TYPE = "0" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "14222" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base xpm_memory_base_inst
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13024)
`pragma protect data_block
1iD460p3/hjbe0kQkxot/g8OvW//bEzo6bNf77dX9d2l5HcV1qOdz9mb7WAr0XM4AvLmPBT8ODvE
ulBxMGkqdiEroO2hOCpcmEEHp0Ol9ly13iWDizuAkIkJpxXs6TV+LAGqsXT39+qPQPXqmghxQHcv
I3AbsU1Y+GcK4hW8tLakL2MO9kzsV5NMgCP4ZxJ63AptUzXXyHUKdl5vjiNneIHij5VVPr95OgPH
OWXrjADDr7hNNJ4ZLHQPWvLmOkVUdyJgeNRMu/xGZFG70rwctPBUKo4de9jbsfi1I6RGMZcgudYA
FmkyXC/BXKtjPQZQ/X8i0IgOsYkwq8+Cm6ssEGPaA7Bbw2CWZO9qVAeXBdJ9L6KEZDc3E3dPHpS3
Xb9NcXCw2p8W66Xvy+3keMSErRk6kc5Gkmo4ZHNoedD8R6WR8bcr80WJXYAvNl8OjyIAD5guH5xz
dykRY9rg8Kq0Kj7Yz+W+eRw4rFI+ACGRdDuTxwFoELpDxF7cnPbyGFY2+QZ1k8Xqe0IUAW2+WRD9
dvfMYB0zPAb8xa8n4dhuIZCj5c+9fa8WLU6pOC3/VdHfr2903uWb3vVXCaWyVDcUrukdJslPmyKD
uNyvHMysn+GkzDah+Kf2sQlN1KqD8aCGgpTd+sCXLpukodLcszWCCTmIrIKkzw/ZALnW1NVba3QF
5uOpd6jsDcGzCAuB0gUs2IdfiwIe8Vp7Zz9x75epyZjzaLbaqCtdzeWIUd18VTfgBUcJZsBpeqVq
P2ASlPCnNTI3SrPEwoP1gcBVXZ9J81ukOBduehZrHkTWJjtwyvfOI6xjwJrSiM64ZwlwKY5nW16o
W91yndY8F7qVEsvbuSSvWPXKiy15NL6bKg7G9VpwmQm4miUv3i5MLeX4bvaZUbozzJ5BM8OVyAMJ
Yyn4Zv8HaXPdDfb8kv7O3Aat9iqQh2ffM5EiNf4aBpZUCUsrh4W25WnwB/dzYweLNWWM8L+Z/8QL
eaYuj/Om0zQhESrZptRwKm89A5PmUdfOGoJYTgReKLkHoET6wQSVxfb6oVqkJ5TN6UB0nOgl99HP
PakEjaY5JPhnRmxZ+5rAzkw9RlGP/bnXrlPtJj3yX653ujfRBQk4alEukZi5Yl3v3RESvo/O3qEJ
CSlfpEW+KbV7jn3YY1wwreca1vekkCswRxG/rAjlTUPS2MnMGf/ftSk3pDffoIQ4XV+J5kZ0Vzoo
/H9yNAaA6WotYYtqkpROgUKlWjuDiuBxmuWzV+0pQ1J57l+PA8SJP3rmP3WQ5KVMvV880BtLA1AO
WhoHWPs1qDos7ZfexSiO7WfrM5+iw6Qitcm9ae6xlzCyGxZ62alpvZeq3o7DG5sLQigVrLWMYbxS
6A2sU6ntg47JoxsZNtrywTNgYhGTApMX8qQn+UnRfgTmqBLtYh/RPTpGNMtbYZYTIG21Oflyybir
ol8kYGliy3uZBQOiL3Sdd2aPqcKSJTZePyfizKD1pakPPhaMQydNtAu2OrlOcDrNdwDWSMGB3mId
I+aWzMiSpXNWlGffl2G2AGBnKBznHwuV4N7UITuHiQRp5isM6HRagO4unhXUgqtPDdRErfUiRWTf
MS1WPWzB17PSca0quv/UDVVT1E7YhrGBIs4tmD0zBIIsSdBL6Kp5xDuD23MjdhWRIcr6Xqko8ehI
7nDzAmAMczhxSNQKF1AGPdlLvPxhl5qUd3BkDMhxEtTjwrUPXFnptJF6v6DhYD5fT4/UBZ/X5zoE
u78Gur7TD1FS9ILUt9PxBgZOQnjtFdSHTCFtY7zJkdFg97TiTdgVDqoqLcpb7o54wYfk4PgSBQ30
05Iw459LN9BwLzbbYXWfqTfCCxOVpSXNwlRjwi39tN2pGBCCBmQj4/7P19B0nO+6FeuyXzbUYahu
7Tr7xeFm9Tfib0DklivUunoyK4t0eYb45+BHg4IzSKSaXQEkt0GS7KuU83Q8FmOCmxegjazjxHY7
5VdiTea1ewanezSyGCeauDB0vt9Vn1O5RsUcMwBM55idHTMyH0IiFvhXXPZyRfRUJmTEVpJAuW7L
rIAoMf2E25miTC77dEnKQCURVbM4GYFzRETTWdyFRAbCJTIJVFPFZV47L0enMgyc8OYexMBaG/Jj
EwcZi+bM/zso+sl1QZSaPHpC5oK3zNgDEX8QIaMqVtvwtN4yUdUu/BszuOjbOrVvJ7xzTQ+d8YI+
FcJ4OHcKPLeiyoaldxS+o2h4q52khXpMdNbHFwyNvAbG1P5GiPo0Gl7OTc8Qeug28iGf9+cwq9Zq
KKiv5gGAuLrL/mT9IGeTg0KaTFrq03n+OQV6m8Su1xGkeQxitFnlStEh4nYvnsevE7j4On11Mprc
XtH0WoOCR5hnXgyz5jbFjwFK3txv7cvQwdZ8a2QMOpuVsONTZORl0L6M9XH/npq28fy/l5dTGBOT
1pO5IA57BzkV/Q53ft8CMxT3fVu7IxR0+qf/Z3IEujB+Ot+o0imZx8pmn75wYPv5MlUJaxBa7CK0
I/zPSuVbLXgY95KJ1ZD0slP3FKPU1kW8AzFYpr/bAy7GX5hc0gACPghcMAWjeY5TM7waMShIcaKe
eTjaQ13g2ombxcb20FUCbl4gvQQoF5If+q48nUWg/bcYqr8oMc8UL4sehNhOaLctT2OrkRKaHsXE
Nx2PzLuV2UT3nsDmdlwigm2YfjjOEny7jkMk+vv49cw4wtwyKL2DoYoHQ9Kbv4yU4X9bDzxVbmFZ
V2hUqF3njRfPdwwm2asPnD4/aYioNhDMSVCZXQ733h20aJ+jkBYZRKZ+0tYANH+eB7FPrfjX8KDw
kzNqFO5pOI8szw+6A+FCSCas3518HZh9ykM2f7kEhIwOrbcLOZrTJs96Ffty6nR6psH/kZak9Wn5
K7CDrEBj7xrtRmWcEw6YB4+O3Y8pvOay7jJB1uRaxnamxkpyU3Mcc47HixgYo8Tr3yX+VDoCy70S
9xUAtmkD/+G8MGXdEx40SKC+pCojFKAigztDJhcrvfM1ok6AEllDzJ85fU+o4+8dCGcYDNnOrd3j
o0WzhQWdrOXDdy6ZhxD8iZIe/1v5PwbmOO4Sbd0kfVp02j6xGgwk32zZ2jsK3qv0y/apkZop2baA
aMbZhaV9CShj4ahykPrjBmdtbyyAHYRKW62nnaUxd+w+ZpuEvD2KvIn/vD9AtVifUkldkl4/BBt2
9RwR+QoPT64mypE+aTgl8WWhr4zCku+G58bjVCojng5AMFv4nIc783PK7QcQwaS4jLp6glT/waTs
Y7I1Hf7f9LoyLE9rKseJM9KougeOPeh3CDDz+xBz9SYKjz36SpivL8XrgjvJdOmaIoUDBJ5ktFDF
mQOpI2fwehBVErI6dxTSFZsT68g0FnQHgkGFzi/9PSduk9wN/3oikB6dmXLnt2VSpGzTSYzA2UJW
dR/aBTpXkjRMkgCN9E2OdeNNpamP6sOZKifivCY7Dk7PpW+Dpe4XrKB9Rvbnrw/UQWmNEpSILLSJ
wqZFOQx+MxMT0eli+UmRn65TYBH01+Huvx1e6iPa7uBKmg4WkUcqhkC6IjMw/fSO9OlR47/8f3sG
GiStgCOwxXZ8ZHQZmC4hHfQHzEerpuLdOKyKpSWnx6FOR/AYi/VKoGNx3vtQ2hYBHTzXxHjN2iJO
05Y8jAzB5DwDO6oRkCxwSrlmLe7h7X0P33+UnAQUIJlHejX3qLjfaQoI7rS8y0W0U0RH5h7eQUkc
Chtz7XwTx08Mx8zVu6/+w/roaZr+miFZR9p14YRznWcWd9IJtxh0CYdchO0tc+WPJ/jmrn6Ao8Hj
yQqno7hZ+KdfurVboLQmHiggeE/lwRKjseVkQeDcoKtdOF+UiNE54CyJwzoKBoRTVg5+2C/CnL2d
xlbQBUtj1+c1KHI5FVLK21OkcqUZDyFTm4klGd7M2aUwM8MlnhPySphQoscM4pz10k5UQMF+3tAv
aGw8tvDCVF7X/q5pEj0Am7qu6o5Btts29pT00obfKx+JdYKWPrHvAM2QIPLRnYtPlUkLirK959G/
Mm5juWSF3mq6c6RrVbJTZlFYD1zUXf+SAYDaDOJEV/r6yThUmDDiCiEeW6qI5jK+PwGtwo8+Fyu9
p0Ct1az9qd2ihXjV7jKk1iDNAyZLV0U8rxBlMZD8IE5gydqjWQEVOsujhFVb6Gew62iI4tWL5mJT
/AkNDlcfeB2lFHMj6CroWoXiPBd5GsvQvpUPqwj65Mnd4CEnWKU2h9GYKgZVI2jGxLT8fH9MTskv
fnH4zT9mPBWsA8xbXN6LLlCN8B+mynu5f/YhK02ixI2LmWlGMMw5rY4Ll3BmOjXTEqsci6ZSruJU
TOwJnQ0/Dany3iL9kQKPmGemYc4LPe1FxnwVJ2pBlKhoUewFexYchOpjw/lMnjBW2XA1yNw1mLmI
GZpGbGWkJEHmwoktww9a8gjtSVz6ynl27ghtiCjWlwRAZzJXiMGigPLwUihmosghLDqIb2a9P6Td
onaiMvb6jlVu6ntCvuI/jiEAwz67uEY+dD7zi+wntAa2q1z7O358Mvj+IAryU6bjkheD7RVVfCy7
5jSI4po2m1SMl9G/VZp4+XF7hVFbWrO2ngX1lV0AtWWTCjPPg4dfLI1B0ZelT9Zh0E9Xwhri+EME
Unl/hPkefd/n3H6AE03MsMfIN8bzqgrG2bEVJTvqnvva5TwrC/rSIGWvsUqa94JOOxjuILd/3/2N
Yd+UY8Ekox8F4qaGBWdmpra2Qik1AnZQhzo0l1geKpUL4GDOcHYi6kgEv41y7GCTXTaa2k+YA0n6
dGT8GS/SQJ7LnvE9w7jSU9V6RTBHeHP2evA++nM0LwFquQhVmFMAa/yH+1kfbUETtOtPMxAIkTYe
LukY/p4R0Edfdh+LD+Oyn+iZYQNFoAsCtD5zn3nl2e/Fi+U0pyLPCDm+pDwv1SUsyYTaTsoSvtW5
9wuxRddJtMXEpiWjkQE+Mi4RvWkNiiCACp3KEq7BLtI1OUJEBkg7PJC6RgPhBdqzCHuF/4AYxzSh
HmihyloIPlmDib5BW7tpWgoN2Vkl626XnthrFgXg/Vp6pQ1TwdvUaxZWa9QSwI4NkmcWfwesuAU8
UupSyuyD94/Nj4U+1wiDYeydwm3GHFXUO8XHQGsug5Jx+OJS74lFW2ERt4JylTmTwP4pR5oKxbPG
6Ifyj1dNsW2YMdhoX9S171Mx68cgz7UZNb+nFTeSZIZPueYufM8yebLtHYIO2FajbysM+FDRVZuU
dj7C7dRZivHJFcDvilMYX5p3MJe2nQRoIAaeMgxFismm5jvL3UIrj5/gMQrrFL7UyLxGyc2PrHrA
l+ZgkNJIQiVDCRBEUexsiNiJuPd4klfEjohIMRy0oiSVt40Vqul8t4yEgVOX/H7qoWicRyK3ZMCK
Yq5RUCe+9AQvI69lOlQyPa/UxiyISNLxpzqYOxdg587u4qPXss6lxoDj7jNOtgsdt99P6CCtMcuX
LIHVkyu60srglrSwv3bV9p2mY2+xIb0V23yPhLEL2E3rmh4fatCLNN1Tc1KqaeRUvAeIbEH42jzt
LtunDMW7ej08VANoHZjC8yAn9hlvTw4IlAJp8xnu2BM3VMsB6pHco1F80tbsDZPD5VkNa+SQheXp
iY7foNbAFhdAyyoOMC9TXJEQuaEdRw3NCig+OPbGgAj9cCCTO+ZVCvid9n7NOYv+ibMuTWhMUGQQ
Ygz6K2Y6y+gqtF98nICrmYZVn7GLrPQ3Z90DNM/DgFnNxuokC4FCCmaraJzRnIPn9ncrBPZXLNY5
OWlx02uPcfNY6LBfMauXwUQGA21vU2b5Eg2QEjPXt9ua1pC4fvpUJ0UGriPcKUeO9npKs6sdbCSb
wPgA4ZV5YUsGGQd2oWpxWlnd91mz15Gv14m1meR+kfBh8JhqwcXbazHYAd7snqW8RK7962tWzlbq
K0eaFyDCsPilKUlrcSVcaMbj8vMGDjLpu/4d8UtaTxQP7rYwqyefMe8YWTB+W6VqECFf5IGMnyWY
AapIxiYNv7GFAWJdIa/JU4lImM7cRKi13eC5fouH+pwR9thgoduib/kLj77WrKLk23yBTpAgHq2I
FVSa33zFkNv2GcW+/lR38w1LoAd8nStsp2PPddnhoEgkJqTgQ6JWJJciKTxV/BtnXlbt9/oPTCNX
0Jw6R45zMdG5xmPh8l2rOvnNANSjX06AOAFAfnMfwoB5Npd0jdQ/s8brgchMsgW1ZplxaqNMHBKz
tfMYn7423WC4ARt966ywKhxGcjYMAgSKYsXECIYD7PMDo3XtAwF2hAz/+d6GEQvx7ktQuGggs6jJ
aRs4bjxcFtLim0L/3BzT93DOK5/TxLKfJbg6ZrmqBkxkS+TDrXutvtOFDHmjVsSrBeSY43ztivNN
l+9jmLJFJG4OBMDmbUE27PaljvWHioNyT4Rl171HOyPK81Y8Jlxa6qOkwLL51MvfWxiTDRTteQzg
d4LwtX5uThx7AnWX+V3zdQVQ4fFYhMi2BjhSTGk6tL5lFkmSiD44ae/GJjlprK+3eBsCvLXJbDmu
UlRLrZ64JKDUhuOQ7GVXAMfPSaYejZQp8ipYnG0s6MTADNOlZaNMzR04CcTQei6qXL6UfamtNVLD
xLvlQp64mA3asNziVtI4cfS2oHV5Syh5DxB30vA/Ztwy6tVNMtRzumyu67aazky3IWycYq5k/P3Y
vrRz0QV1APgo6cS91OG1jIFwMe8gHEHbvW6yetL+kBol/Xr3JmdwwhITaLW1E73aHpFKmVsUDXl3
63IskkkvkR7N2GKvG02UEbeT9iJVOld/9UMTsLDex5praKzVfUj/xS/9T1xrV48/jy0HF+ZpM7Il
9j6ZdeVS0I/ZjszOhEEsMUFf9+BROj26/Zn2UhD3o4mBWv9jwtq73uT399m607BgY4xNTe1IsK6D
alEZWLDtH1zNkjSHsIU3N9gsCdlFIgxNlVgzwwMSbghOSv7yYmisLuoSTF1+iZ03sg81GmYPifph
XWtAselYrsuxUX40/uBMDxKiWKPMd8VJiN18JjSkbQ5Z08V9H89qK/nd5tWWBR/M45GcnwUDZ/Fr
Yvveouab+a1xLapWxHxhyrDbxKIT4PAqBCYgHIFcgqwPK82ltCB6Z7dOPyUVNfKKvAMxk/iFtvBB
RCcAcbRLZPd2vAxaGqSFIkwTAvRx33/Ix0Dty+MC1NQDIuERfzu4jWBrhaApFe8SxhfOfXlgzh05
WXX9CMz+J0be4kkhK5BuQgXRTMKsr+POiB3gI67/DQceJuoG+zN21Zk7/8Ka1J/jKhJ73KAvG2Mr
Xflr/qrkik6g0quHF6SjE1NIj+M4fTj8Lw2SoNKnxEhNJAdcjCwIqfYbwvZ3+9RwhsJZLnGPsujZ
d/8AWMrhTzPkSMnEpW8T4wJ3t5Rfr43jiZHkJ4sgM9ShOJWna/jKex8e+v5zoybDV3zCma/n1Ymm
0C9LdGzlq7/5fhWfy5uLC6beAwNP35i3lIm3qvydSbYbXAWSC982+0YmEEIWBvooGimTzi+uiMbg
d9VIydpZ/IASi3Z5cR2w1SKmzwimGHbu1xwqfsKRwoS0yMcLw8oncZg+Nc66rurN2WvAuk7WzRMQ
smFMfKyxI/GBNrwRR6stm5WDThBtzQEienTmHQwF0mSVcsbg+cbCRv3FkjDB1vyHQ/v7UmlP70Fu
R4v1glWWSm3Opmk7eRGn3zt3tx+oA6iYl3spegOMKWEgwnZNtSFHnXLFBwZFC5QtOovbu9ds7Iyu
Eqq2m8e0QtFRn4ZR3YICPicn7mWnY2xn+be4MtzdmIzr09FECkyPt3KsTMtNAPYjiwVfesEvi3It
rbKTB7Qa37N0i+9Gur6fYDrtf+jZYzYB3xAiqzjaPdedifSEUjKYj8XzJFOZy72uvGXXl1dWoC5v
SW2p1JJYfqUdCGfKA0MWErtJGzFuh2DvTfVkMlYmQG7o2w6FJKY7kSxwp23mvOd5mzHO/CpLDC2g
tNPR2grOYdxrMo4hF7fV5j2CDLazlvbr0cfKzXtvUFSmyfRL2UBa4q/hTd2eF1ShThKaAT9t46S1
2JnJsVo3+EmGJa7nh04mSArEwKdnl6tNI6NgmpUkrIk0igSTkZ/FLr21S0SUVdRZCE6Bgx/IG2Hm
HWkxoIFHFCO9ruYtxJqJoqUdGCvS2oUudOxg7mQZBaMDphLbQE69r/dAlLZc9qJ9YcHBTpbpCJL4
13aeX4s0bZnzqljbmzxfhQf+LKTXJbASwJaVNWPB6OwBEDEXrKnpt7FXpHIK5HOTIU7JZQ8/HPbn
VZ/y3Rog5NHp9Pp9pZOtZ78odx5PZvnRYQlaqtp6Z98yGWbiPF9HU8aNXOyUeUCq04vdx+tx5cOq
fbbfBhQL8d4vXC8VRoGQBRzwf6DtARvlcoKXJY/y4s3G6Utpcea+fzYq6xiVHjJ/hJ0CYP7JKhv4
b0Vf1QpY4VyB2BBuojPb6zCkPtcsRnK7NykZqo6f00LepHepNpN8A0DtYxXYwor4BGIRvomI4dm2
iCcYRBPHxBK0BtVpyBmr5BHRu2VAjU4cjrpGrdAGg2b459zlpROCSUc4Evt44+CFEgN8sVqZeL9O
Ukq/GIW6DVo9dYe3v+PtNdMoBo+AvB5q1c1tfrZ95A3Zbkr1DtiUTjfshqb4Vm3ifVPqwyRsVKy3
bM1qXXAmz2JDp3YbOpGK9lsRvGc0GQnt8U/dttCWHraUCkhnscpb1hbIrPLV2ovqgWr/JIZSifb3
hz+cTYwWyjNUWWctCxXudfoRbvyUg+NZSza00IlXVoslFpZqL1p+bwL/Fy/KTcTr2haqbNR/wZG5
bPlYGYGRPBocu1yBB+e46aEBoXkUQzKoe1/CU+3e0w/pxOQwmk71ycuoMAdVaE8eyAllOWroAGFy
uwynB2RqtpctA54rd5i5dA18TN+53TgeAJ8eMPLMq0voafTLIxb9s14d850gjOQd4W7Z39USX6IV
i8Yb+nc7foAW0VkxaQmmZSAiwMXAclu9OAOcf4vnFVLJLdEh2Z64S7Ts6bfTIa4HB8TD2fi6KQ6i
RYUsuQt049oBJ2TCgOWEk/7cAyGvNvCUUydczpGo03huxzvDTLKFYHG2hynStw7ZZQm6n7YoktoG
+BTh2hY80jqK3foDlFEIIJpsoGJEC4baCPHZNvO8+rH9lw9lnHsAM/61vswjxDQY8ABkxukJNQkZ
HyKsNusq+aKJnzhWpV5tatlRYa37Q0PqaFLImRD8MnXsaZKDgCCy2epI5Bk6z1tojxDaVtGq77q3
EIXsDBla6U1eMEkZzDKcpcHsR25/XPl4HoMOgsc7srzdLAIs75yDNrSqB2jO6PdHAKUstUDAy2T2
MGsz4uRF4jVU+hPIC++rFV81hEGLZ9TBTxkNdguK0uKTUAX07cnXoyFPCA7su+p8d45KWuqGhRhi
4iEfAmXPmBZlEd8UYWnx4eVEwLT+1OayAdWoip6n/cVlqkpTTNco07VdcmR5IoYOrxeBi0e5UW27
QeQj5jtGSlO/zZSqgQmmePC2Q1hJtuc/0CyYljJyduSftNumnpWmEFdlGCBcaOxjqhwCRnGVYZR2
F0d+GUwA8Z0BNrGFS2s/3inraLbs91QFyJ00744oop/MHHL+e39u7G8yMep3GqPs196r5Ro68fO9
wXYN/Rr/j3HCRS3eztVFrwXBOutbt6Ns7bGxu813pT0ay8NGGFjk5ENWcslm1BQcedVYY0cmP6Tg
qLGDTBlQpE24NoGI7W85ezFcrEKBmw5truWbGlLkinKrwsLXu/ChjSCin4W/J5cRgRDohQyNuU2l
lemo29mLmeKZXBJwwoUNPyCEL9nm9Z0tmDGn0BIf2c1CADAbLeRxHjqIJ6UPQhugkL97Nq8m+sIZ
bVssJtpJ7wys8KVeKnyfWEbTd8yDCwEzN1tuLbzvVOwKtRVwXxrXzVqpCKcETaevqwhnA/QIUauc
8vbuN4unH1QqCxJnx0noWz1XRT0q5Vew/YQUXs4hxSBdwMb9ysimmq3rJOJGzV2RPGaYQx+0gfF2
O11b3c31QfpYEk6W/n8H1t+BLJbvUn/I2jVEhOZgnCTAsFZJLl84HH8TzCqpr1yR5wIVtSmRD2ok
jq6RE6aldN3mkwVw7euc/naHiplwBpC9m8oKtU6kW+GkhdBvBQUCzhEX1jcWUefGztcEesROdsOA
sSXPQRffVqX6jih0p5J8tWefE2TBKUIB8S9UK+e9tzRBnXItcyr+yA14heYoIKtdr7YOwsqvchX2
vgt3B3iR/Sow3Kx9WZvUMlbpIze5Xp0JN00rYEDyPC47W+6LIO48kUC7NP0UPAESZc4nDPDOUlL5
jBmnQbq8My63yxPSpZ9dsnuGNJLP6ZwWMLdVWVsDMuPu+RnZTFDvAvgeup946HbB6QyY0dZQNPBL
d7Zg7B71fcfCslkfRCrEKXoWnXuKHOQ+uWmE17I/jkjVcOGzB3R3R5PxB5ZZNj3wmuBa/7XwwRd4
rHGd8cpYnC4CWqjWn+5yFCTpaaiTT2SXE/bBfXblkQqt/BMY19C+Bs2w3ceifiGQYn5iL1UY0VRn
C6p9kafL5mB9qhD7oOX4pR3/QX5oN3CujRmjOUJqDY2Vxs+DjHGUQ8BcrslcLSeBgC0GPSW0xEzH
Uys37YJaVz4cK1Aqir6FASIWcAa2zJwDWH/u1TeNEzPM986AktNNIiYvZqsQrx5UjR++3/KT7cSY
XQmgvXRUrUw4I/9j6EYZZONmSPmEDtXomO/Bg48j3nOpW4x0tHyK5cuNoEDlFKt1ldvaNr9RCc8u
lX3pzcDZbn46o7B7hfK4Iy61GNH+o5Ws6ucDrJxtAGiG50dl8kB5p+tHwcUEydBfdQXrdfmkM+sm
oGJHfG9u7FCjgnHe5Kr9WD6AMfpS7XOyISDTBVR5FugEh+FoBtEo9jvDGiyhIc6MXnSauw+3xGDI
KRa626V3nPRKZzriygLcmzv4PkfV0Tr3QlPieEGMs1S7nQlC/P5jurKoUdj/wrRfDNUYKEYHcHfE
0ALvJp5i6GLprpE1PVdcHD+nXgP7Kq+KNHwvjc+TqwUde/uT2Cojg5ASkwMap48rTKig5edUU+NX
MEmKu7i7GlkQ/WMnNjkn1nAFUH16iAyYVX2AlMeZZ2s2wKGjJV6V3EzYTSGfPH2wZD3cZLrGMNrU
6QXRW7mK13TMVgfcDb495jYjAqDqN0R/QOuPaChVWUwYI3Ld+B/Vo5KwCWDdh9s7JZNXIvJ+j4f1
n2OyATOf967dq8TZkFjo19UaduZ0mEXy9k7R6UZ0RxhTcW+AaUQuiD2Owv3rVTJPc0pi4kny+aUI
j7FCIzKJ64oBMQf8Wqqg8Xlc7MkKWLZdyouKv9oqZ7snLv7L1TKIJsJv3dIdJIc4dX4GvJp9eHD0
kagVm08cQtFvfM8eLFwFqvcpr2xCt8JMKAkm+iIwbc9nBBjMIfQqPxEwgidkxuonaF+OObcF+xou
X5jhGk5fqYpd2dgiLNlQLwVnqVo6tF+hRGpdped5spOuWblWq7PBxgcrUxHRB/hZDB1QWLO2iTlf
QCkqIiTZvaKBNROplPULfEN6Vm8IM4uyLKlXVKTLCXH2tpSU7ITwKj8cgcgwc4hvVgBkqOFpkVIH
1ZzKm+FwOmVvQlPHepDCX3yza4AO5S8plQEhgrRnaSo3vyE6d4xTA6nKqp43AxpPzFKAUt+lNPZl
S/l2UMigM/HJMg5Bous+p8Jg0fdnVfavLJWEiI2RGbO1gnHWJZl3stq80tH6AjlEQpYcrhxl2Sx7
+Ri5YeaWbfduEolgB/d4uXao+AmjcKjzEeLbQBTT9L+k0EBOS1QvtICLgyGZOZjaSufKY+zosr1r
s+e/ABf274JmhAsxLx62cDFc/6WnLZl4makH/NHj9vWOqtpKHsvKl+i9eGY6ikUT/N9PRuEVEOAl
X5SPg8Qatv1DKtWSxpPSPTRWIiVzrruxiRd1iXPLILd5xS+loU+7KZ3OhvGOYX9s9RMCa1+j0w6C
/JK/drH+l/jaVGTj9V/jZHptsE+Fbe+aKShEwvckNy1dP2lNXntbR2c3q5/FbUtTM1L6MRViuQCE
XtTR39TAwrqoNIhyMfc009jTghdzEjbYPVnY9GbI2DoozHJWfb6GKNph1sOxwzUoS6zjdkqQo/Y5
OWgQYmzKch75rp34vIYJqkOLN0ocBbN0jiVZf9qyP9bYFBM9IWkQNt6VBOgq3BgKeOYVLElmS+Jk
8+jG3huj5xwoT+UBvLk13V07590Sa6mliIQyW3E8HnyRAwFLrPXZvWrCOosocSmHCVgO9+OqRxar
D1/SF0heXd9K+k/wjbCPZjFey69iBEUy29QH9hdJnzDfnsezdaf7+ocCSoxVm2Sb9W8nnahQqMZ0
kq16d2gjHL3c7HygME3WO/illoTQ3zvnXnTgxZdxTUxieh/aBMt9K/y83tHuDa3UIb3mlIxtBsUr
G+jihKMnkLMNOq1/7tBxVn/yw6xeq7WSDLAdP6Y5zpBMKjUcwPeRNYRRvC2vAb2iNPvkcV/XqGy1
PjFTc1POfh1BLkZAlK08QT8oyuebuag5NyduFyyHpquil63q+o5cPxRAWSjBlxYxROmQCQ+lVDth
TNX89Cmdzt5OaxK/1raGyr8zm/wsgIkGfIWhfNO8keKrhwQA0Cg5Dgnr1kSmWu8VKAVslDKgEKUz
1lh7E39sl4eUk0YDK6URNQ+hnQySPxzUy3qw+t2GDBIKapYXj8wPcIa1EFTStRqivs/HYefLH4dG
7UGkLBrP49ymHHowYzSeDJ2mK6F6d/Tu1S6QvRtG3KL/CSnAijfYYycSmOrOKm7hxOX1Qv1VPxe+
/u+aSMqFAt/NGultAY/1Eg7Uq1GKskl21PQ72wTmV0UwxVLLWzIPSEAzsulH1NqmC+J3V3SdhotV
P6YIXnmTIJzhzPzqgw00RpaKkIXAchM2wUQTrMgd58OdAN65h/oDTTkL9pEjnvSXgWq9sgluiz8x
ZVYuH0m9muIqvGqDCgjhXuqEgy6rsBgrhTg+KiwOhj8e0Om7PrS7owiLCMdTxf1FOBYI11zMTwOu
SdlwD+h0frHzl3OWQYiVGiYPu7aS2SlPBkTh0jYtjecA1CePkEdZ4vmvwro653FDU68U/6UgE2sF
Z2jnhhwSUxk+bw3EL5vMw5jGTGNy55/qxH12dbzP82gakN7kdUbsHpsBgponKi0zDNEF38GPN2A/
tWzIfQwC4c2qUSYhYQ+oCuCavGOHsSvHJoOtpgEOnGjQgFcTxwDxn4j6IXw7Au10risQThzfqhmP
TpYfOXZiQND1x3IbefADN3QDD9x5Ip9gLFCzgZrpFWuDp5x6DLixG7k5FUcVKU2/VrvLbrBUXvB/
/I8KYTJXfPg2zkWJiwwLGv5CqxV1GsxoKhiSNa+QcYJwGdjI3Rrg3oQxkgT4WsJVLcr9mG0+g4Ah
hw23p50yy++Qo5YsA/qM88XawRUnv1Q33GCs2ApJjRl3E7xahHS+4TxfOaMtrDhKNv1DdKOViiKE
GJYXKAdIr/ODDomBZPknpw+I1LBFSs4kc5UIAfKaIO/lYhFmPKnbXLm0NOTaSz6KXXYJyC79tQ4F
ReUIFyp4uEHcwgW95l2LFU0j0vdcK9uls/0cpdbIRfs+46ZOnWY2QXtzY5nmZedzySNlv4dyd8oK
tNPctY4N5CEJTfUUTomwKxEVWUGSQcg/PvtnXYvAYmg78guWRckxOrOjfZsz9EM0+pWPTdORl6se
fEqvMOkbU53nspoRQkvhdGe40fBuC4LtFlc2t4Xp5day+S6531sYZHZAYXv/jFrFk6BIL1GPSFkM
SDn+Qd7TXacrJg31VvG93SNIJmxhlwutzrMIMfNJpKZnAROW9cTLcb8n48VVA25BWXaHUoNguVzk
kEy77mN4GQyfNZpB0K4oAlBu8tSUJUBCdE/P9x9RP2hV228DmMQKwN7J80fvqb0Qg/OuZ5BgO5b9
VotPDO9xI+7d151RtwkWzDzHOulPEw4dpZWeVkPeUD64oBL45fbj4enhAdclmdMSfg6cZbnF8EOC
9KrxoLY6PFO4+Qbg8lB95M7EgVHXYBe6hHGOQQ8RZxAuZ+eU6VjOIIV09UP5Y3cxv6e34FA5hXiv
IaUTjJfbB3UbjLqiZNBN0OGfPR1UJhd8N9LxWdEKo8nBjTZNinKOPKSqgMPtQxrEw/BP3PcbwQPZ
FBZNabPutobFpCyIV/tzcaMhSdBcHTMnHvN0IXn3VdWAKq7afeT97gIV8eogVbgH5khaiJZhTvgV
gUUHEYO63WRAUPL7kXarwWYH3s0iPSZwnFUovDdgkxSEfbDGjZ2lm1Lq4k8YTkya4mpCFPxVTaA4
MLfdJ9lkNF+yqh6QaR3fumG1fUbX24vFoUW8iN4+e1vvCIs+hLBWyXLbVIRIqIIgA9r916PCs3n7
a7I6ozyYVClm87480tc/DfEU4KFJeFo8Sl4vUuyPN7/0wuR3WP4fTmE9tbPjcfud273XWg4L7YEX
RIdT8W06DulisVeWvboaXiBHL+GJC4SuqdfyjDbK8f/VngRN8I+RkKVfEdRNtsxIKKt4MKZQvHbc
bTKuKk2mLe6AMiW1X6e84t3jK7s3cm2yaJBoC29WtGSMWpuBoXDw8bwU/Tka+oXrx8QdXdZTIS7e
02TiZCJpWNheiTb+CTe0OiqcdTUAX/y9a05jqt8VFFDjpaOJdwHgAsBd0f0KN4/L+fzJlikPQpmd
2qqcsnlaBEOKJF3p1VzFCszYD2jU3sfrvrfUzrJpGM6JyzWHzsyXL2ROy9b9yGmV/xUP92kn7x1o
tEpZLs5rXlaMTY8hCr+53K5+rFBGLjDpMakL4T6KyfRGLNBGB76h/PbLEst9VX1kiGqGBPgEMwvY
LCYKo9Wd4N/23S1qWAWfzep0SCwYQfTZkeA7AppSZjM8wExckeM//xDM4AIpcuNgtQ+w6tR9H/QJ
LCBWTqN4CSg9tohL9DKM4ctUzDVMXAOd3V49T+CPFINh5T86vMUK+fJHU93dih0hUrTvsgnRgiZf
FX+wpVYmtn36nBPbwOjA34vK0+hiH89k5IOEh8R8SFQPsjR/+Oe6S3U6xF4XMmEZoIB2F+15/9T1
ZHlg/D8VIPOPsrJQjQlcwf5+bVxk++ScvOM7vHS9lRPiog+iEQsDfLRWpPkxXvCFw8H8VZrYgCzb
vF7g6/n430TTTtp4TkjoEkt67YB4qt0DEqvMRoCHeYKlbznOtjP16ruRMKpvMe/eNneppDvbV5Qm
srfHdAqrVou7xiNLBiYRUkbuOTBerb0AhyAiIA/EB9/woq7bk6BZTdkDtGKhZiVvcyXfj6diEx03
wMeionMo3WEngzb8wnOYn2x3cLYRNHjuA1Sa7KWhKFIuUnbAPAo25jJb7iRfwJc8hfieMhVikXtC
YLWKrmKXYew45kPZoocHAhjen1GUKdjbfCpgOyJ/syHmhR1QkhH1Tk3TAm9U+2eiqjK20cj3hXCw
Uve5U+rQmX1Ny5mab0I5qIz+zNpKh5iQtNeyAFV14T8fqTQZ1Nb/W9UAsigvnba7KUxtHmiLtJxK
J0mbXgs5vT6QCGitPekedS78tSDL2GEcR0iatx7bzylvK8S3ictX/vmoX1pPxJHAzsJrZOi+36iJ
p7sKIY0sDHUJUmXzejldQ9cfH2W+VXeUc6da2TY5BZOG08cPBIF5Y9398I1/Yz6qDQMKVCOWE7mk
09+2A+8pxH8II/RFey03r0Cqoc4OI/KcE0TPYGEZpM8Uvnn6qeYb16uLgKojZ5rolG9IOT14liha
T79stq3AeGmFTVDoMkg5sRnKlxybSHJ0NZuuHS81EFmAZeSSwBZDAe513Uk06ny3GcGDg2dOvYdh
7rTSo4twVQbykq0weYhFn5nde0ggPvznCMoHE1rleDpfohnEXkspMxW4XpqiGiKZSAdj3CL/KR8U
gcj4BZU6cIllaMQBJRffzuduGoCIcK0vKmF12/culxVsLFo+wdMCHH8RbUrcipW9BfmaMpu25aOW
jDBUi4eptmdmFNLM5s59Z8JkKr3k55YdnKE5tc+y/QCNemUVlBe+kig5oKZWUb+8pUSzrZbxlN3r
NLqZM6RS5fmotobqvZXTmfD9BjDitzBCWLkZ4xCxE6W2ftUYRX2oC8axsC0f1xSpYnBkWTgH9d7+
NNtWpUA5waYOsDoczBio3uQrUCaKhGlbgJS/FPixSfwBFcmnBqjdTQZ9gXPAdIKOgMzQxAXCw3ly
mUazJtQaXCNoF9G1ABeFlhtO2rWSPK9RO4/apVRbMVtXBHMhDOndfS7UaUWhafXg/r+zPr87GM1K
rSXTHPeN6OqMoX/ItmMv7sZ8grktNv06XO4GreomI2q8sbwiCmSx6oXak9T61KYI+yl36OkR0UJb
bWq6W3UwSK9xRpmImxknQ4vHRKjrUPNEcpzLhhSg2/P5s8m7BGCjyumGuWo4rxnxAXfQu5le6xJr
tmiw3vDLlwZv1d5Svo9R1fbbQvDdUv78R6wHCEUp4G2uSR0ajqif2JJHBotW/lBWExjBwXBKzoHd
/9lNRwfPuMbM9MkhrvVVIE1U0pcrkRmvddR4TUkDOPRTJHUNT+o7etjb+ujLVcfrTCiTz31oaJo+
LSGwH94O1k0fwpTiejeAEmvv1gkTtM76a4gJ6v7Nh9rPmk3eqiQCd/iFn7jX90ewhsi/9o4aKSM9
t6zf6Rkd+Jagc/jqod/3pwbi3KL+qGYQVQ9QkEaMir1mJizw8C/CgH19paA8DjwKWDG8wuovFyqj
CEAjfaGKWR3Z4odIHdpWZqgQ+lORiaSKyHpSyEcsJPZEIna06F3Qwm26/pfcXrHTrUa/bNI99VUJ
vaj3rHmiD31BMwQMg9RkpEgL8uS+YcV+Ew/rTBZLAYvI0A574Oinaq7xkOh/regQ2xrk2x+OjsXI
9ykiSNzN+qkjObQCuQvcBFjpbGSFO9Jev0wbFC7H38rP782CWLWnS2O/WocvW75n/LFtHdsDfjws
SA2nQhuRyZNl3veMSmqo5fVPXAjVu6iWWW0kfn5vLKQ67CXArNrYfNzViurrPEkfBBjNBfqLDiG3
5Ce/46gQMmrXao0HLf7b9KmftPXeba9/6GgEw8RAQbJkhIXqwiYFHO3Q6LSIxa9QyffoOjp10xMM
d9TCu92oDQGgE5DIdAkZVt/BFx8vqSRjW0XUScGSL7o8jbpTfDnynSVZXKw3zfbRkny3iL5J3QpR
mQIZCEHKNT4C5mbhgJBM0DOrzk+HzHhERWoH+7gNIhy8XMZGgOaun8abATU81oMvDyRvvLo9wsqA
KAN4kTnJoVtL5yzo3j8SyNB5hKVH6vzpE30XwQ==
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
