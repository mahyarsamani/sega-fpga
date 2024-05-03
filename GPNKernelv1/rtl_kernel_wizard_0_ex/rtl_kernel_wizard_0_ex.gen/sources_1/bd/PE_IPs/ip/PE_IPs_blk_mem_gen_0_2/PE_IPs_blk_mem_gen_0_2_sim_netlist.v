// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Wed Mar 27 23:57:47 2024
// Host        : COE-CS-crystal running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top PE_IPs_blk_mem_gen_0_2 -prefix
//               PE_IPs_blk_mem_gen_0_2_ PE_IPs_blk_mem_gen_0_2_sim_netlist.v
// Design      : PE_IPs_blk_mem_gen_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PE_IPs_blk_mem_gen_0_2,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module PE_IPs_blk_mem_gen_0_2
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
  PE_IPs_blk_mem_gen_0_2_blk_mem_gen_v8_4_5 U0
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
module PE_IPs_blk_mem_gen_0_2_xpm_memory_base
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

module PE_IPs_blk_mem_gen_0_2_xpm_memory_spram
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
  PE_IPs_blk_mem_gen_0_2_xpm_memory_base xpm_memory_base_inst
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11104)
`pragma protect data_block
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
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
