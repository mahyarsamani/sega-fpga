// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sat Apr  6 15:18:27 2024
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
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [13:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [71:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [71:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [13:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [71:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [71:0]doutb;

  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire [71:0]dina;
  wire [71:0]dinb;
  wire [71:0]douta;
  wire [71:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
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
  (* C_HAS_ENB = "1" *) 
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
  (* C_MEM_TYPE = "2" *) 
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
  (* C_WRITE_MODE_B = "NO_CHANGE" *) 
  (* C_WRITE_WIDTH_A = "72" *) 
  (* C_WRITE_WIDTH_B = "72" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
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
        .web(web));
endmodule

(* ADDR_WIDTH_A = "14" *) (* ADDR_WIDTH_B = "14" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "72" *) (* BYTE_WRITE_WIDTH_B = "72" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "3" *) (* MEMORY_SIZE = "1179648" *) (* MEMORY_TYPE = "2" *) 
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
  wire [13:0]addrb;
  wire clka;
  wire [71:0]dina;
  wire [71:0]dinb;
  wire [71:0]douta;
  wire [71:0]doutb;
  wire ena;
  wire enb;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_1_n_0 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_2_n_0 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_0 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_1 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_2 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_3 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_4 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_5 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_6 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_7 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_8 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_9 ;
  wire [22:0]\gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_AddrA_1 ;
  wire [22:0]\gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_AddrB_1 ;
  wire [8:0]\gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_BEWB_1 ;
  wire [8:0]\gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_BWEA_1 ;
  wire [71:0]\gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_DinA_1 ;
  wire [71:0]\gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_DinB_1 ;
  wire [71:0]\gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_DoutA_1 ;
  wire [71:0]\gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_DoutB_1 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_0 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_1 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_2 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_3 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_4 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_5 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_6 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_7 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_8 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_9 ;
  wire [22:0]\gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_AddrA_2 ;
  wire [22:0]\gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_AddrB_2 ;
  wire [8:0]\gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_BEWB_2 ;
  wire [8:0]\gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_BWEA_2 ;
  wire [71:0]\gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_DinA_2 ;
  wire [71:0]\gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_DinB_2 ;
  wire [71:0]\gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_DoutA_2 ;
  wire [71:0]\gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_DoutB_2 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_0 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_1 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_2 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_3 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_4 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_5 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_6 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_7 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_8 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_9 ;
  wire [22:0]\gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_AddrA_3 ;
  wire [22:0]\gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_AddrB_3 ;
  wire [8:0]\gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_BEWB_3 ;
  wire [8:0]\gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_BWEA_3 ;
  wire [71:0]\gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_DinA_3 ;
  wire [71:0]\gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_DinB_3 ;
  wire [71:0]\gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_DoutA_3 ;
  wire [71:0]\gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_DoutB_3 ;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_SBITERR_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_DOUT_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_SBITERR_B_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_ADDR_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DIN_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DOUT_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_SBITERR_B_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_ADDR_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DIN_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DOUT_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_EN_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_EN_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDB_WR_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDB_WR_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_SBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_SBITERR_B_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_ADDR_B_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_B_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_A_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_DIN_B_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "4095" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "71" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "4095" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "71" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1179648" *) 
  (* RTL_RAM_NAME = "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_tdp.xpm_memory_tdpram_inst/xpm_memory_base_inst/gen_wr_b.gen_word_narrow.mem_reg_uram_0" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
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
    \gen_wr_b.gen_word_narrow.mem_reg_uram_0 
       (.ADDR_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra}),
        .ADDR_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb}),
        .BWE_A({\gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_1_n_0 }),
        .BWE_B({\gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_2_n_0 }),
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
        .CAS_OUT_ADDR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_AddrA_1 ),
        .CAS_OUT_ADDR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_AddrB_1 ),
        .CAS_OUT_BWE_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_BWEA_1 ),
        .CAS_OUT_BWE_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_BEWB_1 ),
        .CAS_OUT_DBITERR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_0 ),
        .CAS_OUT_DBITERR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_1 ),
        .CAS_OUT_DIN_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_DinA_1 ),
        .CAS_OUT_DIN_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_DinB_1 ),
        .CAS_OUT_DOUT_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_DoutA_1 ),
        .CAS_OUT_DOUT_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_DoutB_1 ),
        .CAS_OUT_EN_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_2 ),
        .CAS_OUT_EN_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_3 ),
        .CAS_OUT_RDACCESS_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_4 ),
        .CAS_OUT_RDACCESS_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_5 ),
        .CAS_OUT_RDB_WR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_6 ),
        .CAS_OUT_RDB_WR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_7 ),
        .CAS_OUT_SBITERR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_8 ),
        .CAS_OUT_SBITERR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_9 ),
        .CLK(clka),
        .DBITERR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_DBITERR_A_UNCONNECTED ),
        .DBITERR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_DBITERR_B_UNCONNECTED ),
        .DIN_A(dina),
        .DIN_B(dinb),
        .DOUT_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_DOUT_A_UNCONNECTED [71:0]),
        .DOUT_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_DOUT_B_UNCONNECTED [71:0]),
        .EN_A(ena),
        .EN_B(enb),
        .INJECT_DBITERR_A(1'b0),
        .INJECT_DBITERR_B(1'b0),
        .INJECT_SBITERR_A(1'b0),
        .INJECT_SBITERR_B(1'b0),
        .OREG_CE_A(1'b1),
        .OREG_CE_B(1'b1),
        .OREG_ECC_CE_A(1'b1),
        .OREG_ECC_CE_B(1'b1),
        .RDACCESS_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_RDACCESS_A_UNCONNECTED ),
        .RDACCESS_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_RDACCESS_B_UNCONNECTED ),
        .RDB_WR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_1_n_0 ),
        .RDB_WR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_2_n_0 ),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_1 
       (.I0(wea),
        .I1(ena),
        .O(\gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_2 
       (.I0(web),
        .I1(enb),
        .O(\gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_2_n_0 ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "4096" *) 
  (* \MEM.PORTA.ADDRESS_END  = "8191" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "71" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "4096" *) 
  (* \MEM.PORTB.ADDRESS_END  = "8191" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "71" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1179648" *) 
  (* RTL_RAM_NAME = "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_tdp.xpm_memory_tdpram_inst/xpm_memory_base_inst/gen_wr_b.gen_word_narrow.mem_reg_uram_1" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
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
    \gen_wr_b.gen_word_narrow.mem_reg_uram_1 
       (.ADDR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_ADDR_A_UNCONNECTED [22:0]),
        .ADDR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_ADDR_B_UNCONNECTED [22:0]),
        .BWE_A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BWE_B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CAS_IN_ADDR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_AddrA_1 ),
        .CAS_IN_ADDR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_AddrB_1 ),
        .CAS_IN_BWE_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_BWEA_1 ),
        .CAS_IN_BWE_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_BEWB_1 ),
        .CAS_IN_DBITERR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_0 ),
        .CAS_IN_DBITERR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_1 ),
        .CAS_IN_DIN_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_DinA_1 ),
        .CAS_IN_DIN_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_DinB_1 ),
        .CAS_IN_DOUT_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_DoutA_1 ),
        .CAS_IN_DOUT_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_DoutB_1 ),
        .CAS_IN_EN_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_2 ),
        .CAS_IN_EN_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_3 ),
        .CAS_IN_RDACCESS_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_4 ),
        .CAS_IN_RDACCESS_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_5 ),
        .CAS_IN_RDB_WR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_6 ),
        .CAS_IN_RDB_WR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_7 ),
        .CAS_IN_SBITERR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_8 ),
        .CAS_IN_SBITERR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_9 ),
        .CAS_OUT_ADDR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_AddrA_2 ),
        .CAS_OUT_ADDR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_AddrB_2 ),
        .CAS_OUT_BWE_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_BWEA_2 ),
        .CAS_OUT_BWE_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_BEWB_2 ),
        .CAS_OUT_DBITERR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_0 ),
        .CAS_OUT_DBITERR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_1 ),
        .CAS_OUT_DIN_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_DinA_2 ),
        .CAS_OUT_DIN_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_DinB_2 ),
        .CAS_OUT_DOUT_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_DoutA_2 ),
        .CAS_OUT_DOUT_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_DoutB_2 ),
        .CAS_OUT_EN_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_2 ),
        .CAS_OUT_EN_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_3 ),
        .CAS_OUT_RDACCESS_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_4 ),
        .CAS_OUT_RDACCESS_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_5 ),
        .CAS_OUT_RDB_WR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_6 ),
        .CAS_OUT_RDB_WR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_7 ),
        .CAS_OUT_SBITERR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_8 ),
        .CAS_OUT_SBITERR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_9 ),
        .CLK(clka),
        .DBITERR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DBITERR_A_UNCONNECTED ),
        .DBITERR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DBITERR_B_UNCONNECTED ),
        .DIN_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DIN_A_UNCONNECTED [71:0]),
        .DIN_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DIN_B_UNCONNECTED [71:0]),
        .DOUT_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DOUT_A_UNCONNECTED [71:0]),
        .DOUT_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DOUT_B_UNCONNECTED [71:0]),
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
        .RDACCESS_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_RDACCESS_A_UNCONNECTED ),
        .RDACCESS_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_RDACCESS_B_UNCONNECTED ),
        .RDB_WR_A(1'b1),
        .RDB_WR_B(1'b1),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "8192" *) 
  (* \MEM.PORTA.ADDRESS_END  = "12287" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "71" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "8192" *) 
  (* \MEM.PORTB.ADDRESS_END  = "12287" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "71" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1179648" *) 
  (* RTL_RAM_NAME = "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_tdp.xpm_memory_tdpram_inst/xpm_memory_base_inst/gen_wr_b.gen_word_narrow.mem_reg_uram_2" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
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
    \gen_wr_b.gen_word_narrow.mem_reg_uram_2 
       (.ADDR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_ADDR_A_UNCONNECTED [22:0]),
        .ADDR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_ADDR_B_UNCONNECTED [22:0]),
        .BWE_A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BWE_B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CAS_IN_ADDR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_AddrA_2 ),
        .CAS_IN_ADDR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_AddrB_2 ),
        .CAS_IN_BWE_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_BWEA_2 ),
        .CAS_IN_BWE_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_BEWB_2 ),
        .CAS_IN_DBITERR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_0 ),
        .CAS_IN_DBITERR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_1 ),
        .CAS_IN_DIN_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_DinA_2 ),
        .CAS_IN_DIN_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_DinB_2 ),
        .CAS_IN_DOUT_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_DoutA_2 ),
        .CAS_IN_DOUT_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_DoutB_2 ),
        .CAS_IN_EN_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_2 ),
        .CAS_IN_EN_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_3 ),
        .CAS_IN_RDACCESS_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_4 ),
        .CAS_IN_RDACCESS_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_5 ),
        .CAS_IN_RDB_WR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_6 ),
        .CAS_IN_RDB_WR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_7 ),
        .CAS_IN_SBITERR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_8 ),
        .CAS_IN_SBITERR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_9 ),
        .CAS_OUT_ADDR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_AddrA_3 ),
        .CAS_OUT_ADDR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_AddrB_3 ),
        .CAS_OUT_BWE_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_BWEA_3 ),
        .CAS_OUT_BWE_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_BEWB_3 ),
        .CAS_OUT_DBITERR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_0 ),
        .CAS_OUT_DBITERR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_1 ),
        .CAS_OUT_DIN_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_DinA_3 ),
        .CAS_OUT_DIN_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_DinB_3 ),
        .CAS_OUT_DOUT_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_DoutA_3 ),
        .CAS_OUT_DOUT_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_DoutB_3 ),
        .CAS_OUT_EN_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_2 ),
        .CAS_OUT_EN_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_3 ),
        .CAS_OUT_RDACCESS_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_4 ),
        .CAS_OUT_RDACCESS_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_5 ),
        .CAS_OUT_RDB_WR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_6 ),
        .CAS_OUT_RDB_WR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_7 ),
        .CAS_OUT_SBITERR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_8 ),
        .CAS_OUT_SBITERR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_9 ),
        .CLK(clka),
        .DBITERR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DBITERR_A_UNCONNECTED ),
        .DBITERR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DBITERR_B_UNCONNECTED ),
        .DIN_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DIN_A_UNCONNECTED [71:0]),
        .DIN_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DIN_B_UNCONNECTED [71:0]),
        .DOUT_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DOUT_A_UNCONNECTED [71:0]),
        .DOUT_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DOUT_B_UNCONNECTED [71:0]),
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
        .RDACCESS_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_RDACCESS_A_UNCONNECTED ),
        .RDACCESS_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_RDACCESS_B_UNCONNECTED ),
        .RDB_WR_A(1'b1),
        .RDB_WR_B(1'b1),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "12288" *) 
  (* \MEM.PORTA.ADDRESS_END  = "16383" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "71" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "12288" *) 
  (* \MEM.PORTB.ADDRESS_END  = "16383" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "71" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1179648" *) 
  (* RTL_RAM_NAME = "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_tdp.xpm_memory_tdpram_inst/xpm_memory_base_inst/gen_wr_b.gen_word_narrow.mem_reg_uram_3" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
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
    \gen_wr_b.gen_word_narrow.mem_reg_uram_3 
       (.ADDR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_ADDR_A_UNCONNECTED [22:0]),
        .ADDR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_ADDR_B_UNCONNECTED [22:0]),
        .BWE_A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BWE_B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CAS_IN_ADDR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_AddrA_3 ),
        .CAS_IN_ADDR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_AddrB_3 ),
        .CAS_IN_BWE_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_BWEA_3 ),
        .CAS_IN_BWE_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_BEWB_3 ),
        .CAS_IN_DBITERR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_0 ),
        .CAS_IN_DBITERR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_1 ),
        .CAS_IN_DIN_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_DinA_3 ),
        .CAS_IN_DIN_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_DinB_3 ),
        .CAS_IN_DOUT_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_DoutA_3 ),
        .CAS_IN_DOUT_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_DoutB_3 ),
        .CAS_IN_EN_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_2 ),
        .CAS_IN_EN_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_3 ),
        .CAS_IN_RDACCESS_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_4 ),
        .CAS_IN_RDACCESS_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_5 ),
        .CAS_IN_RDB_WR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_6 ),
        .CAS_IN_RDB_WR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_7 ),
        .CAS_IN_SBITERR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_8 ),
        .CAS_IN_SBITERR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_9 ),
        .CAS_OUT_ADDR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_A_UNCONNECTED [22:0]),
        .CAS_OUT_ADDR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_B_UNCONNECTED [22:0]),
        .CAS_OUT_BWE_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_A_UNCONNECTED [8:0]),
        .CAS_OUT_BWE_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_B_UNCONNECTED [8:0]),
        .CAS_OUT_DBITERR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DBITERR_A_UNCONNECTED ),
        .CAS_OUT_DBITERR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DBITERR_B_UNCONNECTED ),
        .CAS_OUT_DIN_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_A_UNCONNECTED [71:0]),
        .CAS_OUT_DIN_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_B_UNCONNECTED [71:0]),
        .CAS_OUT_DOUT_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_A_UNCONNECTED [71:0]),
        .CAS_OUT_DOUT_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_B_UNCONNECTED [71:0]),
        .CAS_OUT_EN_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_EN_A_UNCONNECTED ),
        .CAS_OUT_EN_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_EN_B_UNCONNECTED ),
        .CAS_OUT_RDACCESS_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDACCESS_A_UNCONNECTED ),
        .CAS_OUT_RDACCESS_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDACCESS_B_UNCONNECTED ),
        .CAS_OUT_RDB_WR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDB_WR_A_UNCONNECTED ),
        .CAS_OUT_RDB_WR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDB_WR_B_UNCONNECTED ),
        .CAS_OUT_SBITERR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_SBITERR_A_UNCONNECTED ),
        .CAS_OUT_SBITERR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_SBITERR_B_UNCONNECTED ),
        .CLK(clka),
        .DBITERR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_DBITERR_A_UNCONNECTED ),
        .DBITERR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_DBITERR_B_UNCONNECTED ),
        .DIN_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_DIN_A_UNCONNECTED [71:0]),
        .DIN_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_DIN_B_UNCONNECTED [71:0]),
        .DOUT_A(douta),
        .DOUT_B(doutb),
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
        .RDACCESS_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_RDACCESS_A_UNCONNECTED ),
        .RDACCESS_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_RDACCESS_B_UNCONNECTED ),
        .RDB_WR_A(1'b1),
        .RDB_WR_B(1'b1),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
endmodule

(* ADDR_WIDTH_A = "14" *) (* ADDR_WIDTH_B = "14" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "72" *) (* BYTE_WRITE_WIDTH_B = "72" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "common_clock" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "no_ecc" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MEMORY_INIT_FILE = "none" *) 
(* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) (* MEMORY_PRIMITIVE = "ultraram" *) 
(* MEMORY_SIZE = "1179648" *) (* MESSAGE_CONTROL = "0" *) (* P_CLOCKING_MODE = "0" *) 
(* P_ECC_MODE = "0" *) (* P_MEMORY_OPTIMIZATION = "1" *) (* P_MEMORY_PRIMITIVE = "3" *) 
(* P_WAKEUP_TIME = "0" *) (* P_WRITE_MODE_A = "2" *) (* P_WRITE_MODE_B = "2" *) 
(* READ_DATA_WIDTH_A = "72" *) (* READ_DATA_WIDTH_B = "72" *) (* READ_LATENCY_A = "1" *) 
(* READ_LATENCY_B = "1" *) (* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) 
(* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "1" *) (* USE_MEM_INIT_MMI = "0" *) 
(* WAKEUP_TIME = "disable_sleep" *) (* WRITE_DATA_WIDTH_A = "72" *) (* WRITE_DATA_WIDTH_B = "72" *) 
(* WRITE_MODE_A = "no_change" *) (* WRITE_MODE_B = "no_change" *) (* WRITE_PROTECT = "1" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram
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
  wire [13:0]addrb;
  wire clka;
  wire [71:0]dina;
  wire [71:0]dinb;
  wire [71:0]douta;
  wire [71:0]doutb;
  wire ena;
  wire enb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
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
  (* MEMORY_TYPE = "2" *) 
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
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterra(NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED),
        .dbiterrb(NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rstb(1'b0),
        .sbiterra(NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED),
        .sbiterrb(NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED),
        .sleep(sleep),
        .wea(wea),
        .web(web));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13664)
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
