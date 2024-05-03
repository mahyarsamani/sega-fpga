// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Mon Apr  8 11:00:16 2024
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
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
QIXNYxS8Ju/IhpVXkvTR0ui4EPom4VM2HJEVKg==
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
