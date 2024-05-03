// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Wed Mar 27 23:57:47 2024
// Host        : COE-CS-crystal running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ PE_IPs_blk_mem_gen_0_2_sim_netlist.v
// Design      : PE_IPs_blk_mem_gen_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PE_IPs_blk_mem_gen_0_2,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [50:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [50:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [50:0]dina;
  wire [50:0]douta;
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
  wire [50:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [50:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "51" *) 
  (* C_READ_WIDTH_B = "51" *) 
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
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "51" *) 
  (* C_WRITE_WIDTH_B = "51" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[50:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[50:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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

(* ADDR_WIDTH_A = "10" *) (* ADDR_WIDTH_B = "10" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "51" *) (* BYTE_WRITE_WIDTH_B = "51" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "3" *) (* MEMORY_SIZE = "52224" *) (* MEMORY_TYPE = "0" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "no_ecc" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "1024" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "ultra" *) (* P_MIN_WIDTH_DATA = "51" *) 
(* P_MIN_WIDTH_DATA_A = "51" *) (* P_MIN_WIDTH_DATA_B = "51" *) (* P_MIN_WIDTH_DATA_ECC = "51" *) 
(* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "51" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) 
(* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) 
(* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "10" *) (* P_WIDTH_ADDR_READ_B = "10" *) 
(* P_WIDTH_ADDR_WRITE_A = "10" *) (* P_WIDTH_ADDR_WRITE_B = "10" *) (* P_WIDTH_COL_WRITE_A = "51" *) 
(* P_WIDTH_COL_WRITE_B = "51" *) (* READ_DATA_WIDTH_A = "51" *) (* READ_DATA_WIDTH_B = "51" *) 
(* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "1" *) 
(* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "51" *) (* WRITE_DATA_WIDTH_B = "51" *) (* WRITE_MODE_A = "2" *) 
(* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* rsta_loop_iter = "52" *) (* rstb_loop_iter = "52" *) 
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
  input [9:0]addra;
  input [50:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [50:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [9:0]addrb;
  input [50:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [50:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [9:0]addra;
  wire clka;
  wire [50:0]dina;
  wire [50:0]douta;
  wire ena;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0 ;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_EN_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_EN_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDB_WR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDB_WR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_SBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_B_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_ADDR_B_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_BWE_A_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_BWE_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DIN_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DOUT_B_UNCONNECTED ;
  wire [71:51]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_B_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
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
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "50" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "52224" *) 
  (* RTL_RAM_NAME = "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_sp.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_uram_0" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "50" *) 
  URAM288 #(
    .AVG_CONS_INACTIVE_CYCLES(10),
    .BWE_MODE_A("PARITY_INDEPENDENT"),
    .BWE_MODE_B("PARITY_INDEPENDENT"),
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
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
    .NUM_UNIQUE_SELF_ADDR_A(1),
    .NUM_UNIQUE_SELF_ADDR_B(1),
    .NUM_URAM_IN_MATRIX(1),
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
    .SELF_MASK_A(11'h7FF),
    .SELF_MASK_B(11'h7FF),
    .USE_EXT_CE_A("FALSE"),
    .USE_EXT_CE_B("FALSE")) 
    \gen_wr_a.gen_word_narrow.mem_reg_uram_0 
       (.ADDR_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra}),
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
        .CAS_OUT_ADDR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_ADDR_A_UNCONNECTED [22:0]),
        .CAS_OUT_ADDR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_ADDR_B_UNCONNECTED [22:0]),
        .CAS_OUT_BWE_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_BWE_A_UNCONNECTED [8:0]),
        .CAS_OUT_BWE_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_BWE_B_UNCONNECTED [8:0]),
        .CAS_OUT_DBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DBITERR_A_UNCONNECTED ),
        .CAS_OUT_DBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DBITERR_B_UNCONNECTED ),
        .CAS_OUT_DIN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DIN_A_UNCONNECTED [71:0]),
        .CAS_OUT_DIN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DIN_B_UNCONNECTED [71:0]),
        .CAS_OUT_DOUT_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DOUT_A_UNCONNECTED [71:0]),
        .CAS_OUT_DOUT_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DOUT_B_UNCONNECTED [71:0]),
        .CAS_OUT_EN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_EN_A_UNCONNECTED ),
        .CAS_OUT_EN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_EN_B_UNCONNECTED ),
        .CAS_OUT_RDACCESS_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDACCESS_A_UNCONNECTED ),
        .CAS_OUT_RDACCESS_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDACCESS_B_UNCONNECTED ),
        .CAS_OUT_RDB_WR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDB_WR_A_UNCONNECTED ),
        .CAS_OUT_RDB_WR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDB_WR_B_UNCONNECTED ),
        .CAS_OUT_SBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_SBITERR_A_UNCONNECTED ),
        .CAS_OUT_SBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_SBITERR_B_UNCONNECTED ),
        .CLK(clka),
        .DBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_A_UNCONNECTED ),
        .DBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_B_UNCONNECTED ),
        .DIN_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIN_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DOUT_A({\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_A_UNCONNECTED [71:51],douta}),
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
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram
   (douta,
    sleep,
    clka,
    ena,
    wea,
    addra,
    dina);
  output [50:0]douta;
  input sleep;
  input clka;
  input ena;
  input [0:0]wea;
  input [9:0]addra;
  input [50:0]dina;

  wire [9:0]addra;
  wire clka;
  wire [50:0]dina;
  wire [50:0]douta;
  wire ena;
  wire sleep;
  wire [0:0]wea;
  wire NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED;
  wire [50:0]NLW_xpm_memory_base_inst_doutb_UNCONNECTED;

  (* ADDR_WIDTH_A = "10" *) 
  (* ADDR_WIDTH_B = "10" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "51" *) 
  (* BYTE_WRITE_WIDTH_B = "51" *) 
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
  (* MEMORY_SIZE = "52224" *) 
  (* MEMORY_TYPE = "0" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "1024" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "ultra" *) 
  (* P_MIN_WIDTH_DATA = "51" *) 
  (* P_MIN_WIDTH_DATA_A = "51" *) 
  (* P_MIN_WIDTH_DATA_B = "51" *) 
  (* P_MIN_WIDTH_DATA_ECC = "51" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "51" *) 
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
  (* P_WIDTH_ADDR_READ_A = "10" *) 
  (* P_WIDTH_ADDR_READ_B = "10" *) 
  (* P_WIDTH_ADDR_WRITE_A = "10" *) 
  (* P_WIDTH_ADDR_WRITE_B = "10" *) 
  (* P_WIDTH_COL_WRITE_A = "51" *) 
  (* P_WIDTH_COL_WRITE_B = "51" *) 
  (* READ_DATA_WIDTH_A = "51" *) 
  (* READ_DATA_WIDTH_B = "51" *) 
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
  (* WRITE_DATA_WIDTH_A = "51" *) 
  (* WRITE_DATA_WIDTH_B = "51" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "52" *) 
  (* rstb_loop_iter = "52" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base xpm_memory_base_inst
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterra(NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED),
        .dbiterrb(NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_xpm_memory_base_inst_doutb_UNCONNECTED[50:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11184)
`pragma protect data_block
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
92rMZq03FR4RdQl4
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
