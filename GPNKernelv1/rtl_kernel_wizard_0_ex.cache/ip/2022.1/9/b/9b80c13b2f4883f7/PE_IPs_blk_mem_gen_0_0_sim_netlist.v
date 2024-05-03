// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Wed Mar 27 23:57:47 2024
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [71:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [71:0]douta;

  wire [12:0]addra;
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
  wire [12:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [12:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [71:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "13" *) 
  (* C_ADDRB_WIDTH = "13" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "16" *) 
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
  (* C_READ_DEPTH_A = "8192" *) 
  (* C_READ_DEPTH_B = "8192" *) 
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
  (* C_WRITE_DEPTH_A = "8192" *) 
  (* C_WRITE_DEPTH_B = "8192" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "72" *) 
  (* C_WRITE_WIDTH_B = "72" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[12:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[12:0]),
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

(* ADDR_WIDTH_A = "13" *) (* ADDR_WIDTH_B = "13" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "72" *) (* BYTE_WRITE_WIDTH_B = "72" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "3" *) (* MEMORY_SIZE = "589824" *) (* MEMORY_TYPE = "0" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "no_ecc" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "8192" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "ultra" *) (* P_MIN_WIDTH_DATA = "72" *) 
(* P_MIN_WIDTH_DATA_A = "72" *) (* P_MIN_WIDTH_DATA_B = "72" *) (* P_MIN_WIDTH_DATA_ECC = "72" *) 
(* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "72" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) 
(* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) 
(* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "13" *) (* P_WIDTH_ADDR_READ_B = "13" *) 
(* P_WIDTH_ADDR_WRITE_A = "13" *) (* P_WIDTH_ADDR_WRITE_B = "13" *) (* P_WIDTH_COL_WRITE_A = "72" *) 
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
  input [12:0]addra;
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
  input [12:0]addrb;
  input [71:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [71:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [12:0]addra;
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
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_EN_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_EN_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDB_WR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDB_WR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_SBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_SBITERR_B_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_ADDR_B_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_ADDR_B_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_BWE_A_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_BWE_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DIN_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DOUT_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DIN_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DOUT_B_UNCONNECTED ;

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
  (* RTL_RAM_BITS = "589824" *) 
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
    .NUM_UNIQUE_SELF_ADDR_A(2),
    .NUM_UNIQUE_SELF_ADDR_B(2),
    .NUM_URAM_IN_MATRIX(2),
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
    .SELF_MASK_A(11'h7FE),
    .SELF_MASK_B(11'h7FE),
    .USE_EXT_CE_A("FALSE"),
    .USE_EXT_CE_B("FALSE")) 
    \gen_wr_a.gen_word_narrow.mem_reg_uram_0 
       (.ADDR_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra}),
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
  (* RTL_RAM_BITS = "589824" *) 
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
    .NUM_UNIQUE_SELF_ADDR_A(2),
    .NUM_UNIQUE_SELF_ADDR_B(2),
    .NUM_URAM_IN_MATRIX(2),
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
    .SELF_MASK_A(11'h7FE),
    .SELF_MASK_B(11'h7FE),
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
        .CAS_OUT_ADDR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_ADDR_A_UNCONNECTED [22:0]),
        .CAS_OUT_ADDR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_ADDR_B_UNCONNECTED [22:0]),
        .CAS_OUT_BWE_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_BWE_A_UNCONNECTED [8:0]),
        .CAS_OUT_BWE_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_BWE_B_UNCONNECTED [8:0]),
        .CAS_OUT_DBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DBITERR_A_UNCONNECTED ),
        .CAS_OUT_DBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DBITERR_B_UNCONNECTED ),
        .CAS_OUT_DIN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DIN_A_UNCONNECTED [71:0]),
        .CAS_OUT_DIN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DIN_B_UNCONNECTED [71:0]),
        .CAS_OUT_DOUT_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DOUT_A_UNCONNECTED [71:0]),
        .CAS_OUT_DOUT_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DOUT_B_UNCONNECTED [71:0]),
        .CAS_OUT_EN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_EN_A_UNCONNECTED ),
        .CAS_OUT_EN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_EN_B_UNCONNECTED ),
        .CAS_OUT_RDACCESS_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDACCESS_A_UNCONNECTED ),
        .CAS_OUT_RDACCESS_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDACCESS_B_UNCONNECTED ),
        .CAS_OUT_RDB_WR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDB_WR_A_UNCONNECTED ),
        .CAS_OUT_RDB_WR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDB_WR_B_UNCONNECTED ),
        .CAS_OUT_SBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_SBITERR_A_UNCONNECTED ),
        .CAS_OUT_SBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_SBITERR_B_UNCONNECTED ),
        .CLK(clka),
        .DBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DBITERR_A_UNCONNECTED ),
        .DBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DBITERR_B_UNCONNECTED ),
        .DIN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DIN_A_UNCONNECTED [71:0]),
        .DIN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DIN_B_UNCONNECTED [71:0]),
        .DOUT_A(douta),
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
  input [12:0]addra;
  input [71:0]dina;

  wire [12:0]addra;
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

  (* ADDR_WIDTH_A = "13" *) 
  (* ADDR_WIDTH_B = "13" *) 
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
  (* MEMORY_SIZE = "589824" *) 
  (* MEMORY_TYPE = "0" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "8192" *) 
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
  (* P_WIDTH_ADDR_READ_A = "13" *) 
  (* P_WIDTH_ADDR_READ_B = "13" *) 
  (* P_WIDTH_ADDR_WRITE_A = "13" *) 
  (* P_WIDTH_ADDR_WRITE_B = "13" *) 
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
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12944)
`pragma protect data_block
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
BSRa/cE=
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
