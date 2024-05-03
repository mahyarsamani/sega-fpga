// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Wed Mar 27 23:57:47 2024
// Host        : COE-CS-crystal running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ PE_IPs_blk_mem_gen_0_1_sim_netlist.v
// Design      : PE_IPs_blk_mem_gen_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PE_IPs_blk_mem_gen_0_1,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [215:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [215:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [215:0]dina;
  wire [215:0]douta;
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
  wire [215:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [215:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "6" *) 
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
  (* C_READ_WIDTH_A = "216" *) 
  (* C_READ_WIDTH_B = "216" *) 
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
  (* C_WRITE_WIDTH_A = "216" *) 
  (* C_WRITE_WIDTH_B = "216" *) 
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
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[215:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[215:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
(* BYTE_WRITE_WIDTH_A = "216" *) (* BYTE_WRITE_WIDTH_B = "216" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "3" *) (* MEMORY_SIZE = "221184" *) (* MEMORY_TYPE = "0" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "no_ecc" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "1024" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "ultra" *) (* P_MIN_WIDTH_DATA = "216" *) 
(* P_MIN_WIDTH_DATA_A = "216" *) (* P_MIN_WIDTH_DATA_B = "216" *) (* P_MIN_WIDTH_DATA_ECC = "216" *) 
(* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "216" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) 
(* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) 
(* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "10" *) (* P_WIDTH_ADDR_READ_B = "10" *) 
(* P_WIDTH_ADDR_WRITE_A = "10" *) (* P_WIDTH_ADDR_WRITE_B = "10" *) (* P_WIDTH_COL_WRITE_A = "216" *) 
(* P_WIDTH_COL_WRITE_B = "216" *) (* READ_DATA_WIDTH_A = "216" *) (* READ_DATA_WIDTH_B = "216" *) 
(* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "1" *) 
(* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "216" *) (* WRITE_DATA_WIDTH_B = "216" *) (* WRITE_MODE_A = "2" *) 
(* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* rsta_loop_iter = "216" *) (* rstb_loop_iter = "216" *) 
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
  input [215:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [215:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [9:0]addrb;
  input [215:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [215:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [9:0]addra;
  wire clka;
  wire [215:0]dina;
  wire [215:0]douta;
  wire ena;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ;
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
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_ADDR_B_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_BWE_A_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_BWE_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DIN_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DOUT_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DOUT_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_EN_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_EN_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDB_WR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDB_WR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_SBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_SBITERR_B_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_ADDR_B_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_BWE_A_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_BWE_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DIN_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DOUT_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DOUT_B_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign doutb[215] = \<const0> ;
  assign doutb[214] = \<const0> ;
  assign doutb[213] = \<const0> ;
  assign doutb[212] = \<const0> ;
  assign doutb[211] = \<const0> ;
  assign doutb[210] = \<const0> ;
  assign doutb[209] = \<const0> ;
  assign doutb[208] = \<const0> ;
  assign doutb[207] = \<const0> ;
  assign doutb[206] = \<const0> ;
  assign doutb[205] = \<const0> ;
  assign doutb[204] = \<const0> ;
  assign doutb[203] = \<const0> ;
  assign doutb[202] = \<const0> ;
  assign doutb[201] = \<const0> ;
  assign doutb[200] = \<const0> ;
  assign doutb[199] = \<const0> ;
  assign doutb[198] = \<const0> ;
  assign doutb[197] = \<const0> ;
  assign doutb[196] = \<const0> ;
  assign doutb[195] = \<const0> ;
  assign doutb[194] = \<const0> ;
  assign doutb[193] = \<const0> ;
  assign doutb[192] = \<const0> ;
  assign doutb[191] = \<const0> ;
  assign doutb[190] = \<const0> ;
  assign doutb[189] = \<const0> ;
  assign doutb[188] = \<const0> ;
  assign doutb[187] = \<const0> ;
  assign doutb[186] = \<const0> ;
  assign doutb[185] = \<const0> ;
  assign doutb[184] = \<const0> ;
  assign doutb[183] = \<const0> ;
  assign doutb[182] = \<const0> ;
  assign doutb[181] = \<const0> ;
  assign doutb[180] = \<const0> ;
  assign doutb[179] = \<const0> ;
  assign doutb[178] = \<const0> ;
  assign doutb[177] = \<const0> ;
  assign doutb[176] = \<const0> ;
  assign doutb[175] = \<const0> ;
  assign doutb[174] = \<const0> ;
  assign doutb[173] = \<const0> ;
  assign doutb[172] = \<const0> ;
  assign doutb[171] = \<const0> ;
  assign doutb[170] = \<const0> ;
  assign doutb[169] = \<const0> ;
  assign doutb[168] = \<const0> ;
  assign doutb[167] = \<const0> ;
  assign doutb[166] = \<const0> ;
  assign doutb[165] = \<const0> ;
  assign doutb[164] = \<const0> ;
  assign doutb[163] = \<const0> ;
  assign doutb[162] = \<const0> ;
  assign doutb[161] = \<const0> ;
  assign doutb[160] = \<const0> ;
  assign doutb[159] = \<const0> ;
  assign doutb[158] = \<const0> ;
  assign doutb[157] = \<const0> ;
  assign doutb[156] = \<const0> ;
  assign doutb[155] = \<const0> ;
  assign doutb[154] = \<const0> ;
  assign doutb[153] = \<const0> ;
  assign doutb[152] = \<const0> ;
  assign doutb[151] = \<const0> ;
  assign doutb[150] = \<const0> ;
  assign doutb[149] = \<const0> ;
  assign doutb[148] = \<const0> ;
  assign doutb[147] = \<const0> ;
  assign doutb[146] = \<const0> ;
  assign doutb[145] = \<const0> ;
  assign doutb[144] = \<const0> ;
  assign doutb[143] = \<const0> ;
  assign doutb[142] = \<const0> ;
  assign doutb[141] = \<const0> ;
  assign doutb[140] = \<const0> ;
  assign doutb[139] = \<const0> ;
  assign doutb[138] = \<const0> ;
  assign doutb[137] = \<const0> ;
  assign doutb[136] = \<const0> ;
  assign doutb[135] = \<const0> ;
  assign doutb[134] = \<const0> ;
  assign doutb[133] = \<const0> ;
  assign doutb[132] = \<const0> ;
  assign doutb[131] = \<const0> ;
  assign doutb[130] = \<const0> ;
  assign doutb[129] = \<const0> ;
  assign doutb[128] = \<const0> ;
  assign doutb[127] = \<const0> ;
  assign doutb[126] = \<const0> ;
  assign doutb[125] = \<const0> ;
  assign doutb[124] = \<const0> ;
  assign doutb[123] = \<const0> ;
  assign doutb[122] = \<const0> ;
  assign doutb[121] = \<const0> ;
  assign doutb[120] = \<const0> ;
  assign doutb[119] = \<const0> ;
  assign doutb[118] = \<const0> ;
  assign doutb[117] = \<const0> ;
  assign doutb[116] = \<const0> ;
  assign doutb[115] = \<const0> ;
  assign doutb[114] = \<const0> ;
  assign doutb[113] = \<const0> ;
  assign doutb[112] = \<const0> ;
  assign doutb[111] = \<const0> ;
  assign doutb[110] = \<const0> ;
  assign doutb[109] = \<const0> ;
  assign doutb[108] = \<const0> ;
  assign doutb[107] = \<const0> ;
  assign doutb[106] = \<const0> ;
  assign doutb[105] = \<const0> ;
  assign doutb[104] = \<const0> ;
  assign doutb[103] = \<const0> ;
  assign doutb[102] = \<const0> ;
  assign doutb[101] = \<const0> ;
  assign doutb[100] = \<const0> ;
  assign doutb[99] = \<const0> ;
  assign doutb[98] = \<const0> ;
  assign doutb[97] = \<const0> ;
  assign doutb[96] = \<const0> ;
  assign doutb[95] = \<const0> ;
  assign doutb[94] = \<const0> ;
  assign doutb[93] = \<const0> ;
  assign doutb[92] = \<const0> ;
  assign doutb[91] = \<const0> ;
  assign doutb[90] = \<const0> ;
  assign doutb[89] = \<const0> ;
  assign doutb[88] = \<const0> ;
  assign doutb[87] = \<const0> ;
  assign doutb[86] = \<const0> ;
  assign doutb[85] = \<const0> ;
  assign doutb[84] = \<const0> ;
  assign doutb[83] = \<const0> ;
  assign doutb[82] = \<const0> ;
  assign doutb[81] = \<const0> ;
  assign doutb[80] = \<const0> ;
  assign doutb[79] = \<const0> ;
  assign doutb[78] = \<const0> ;
  assign doutb[77] = \<const0> ;
  assign doutb[76] = \<const0> ;
  assign doutb[75] = \<const0> ;
  assign doutb[74] = \<const0> ;
  assign doutb[73] = \<const0> ;
  assign doutb[72] = \<const0> ;
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
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "71" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "221184" *) 
  (* RTL_RAM_NAME = "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_sp.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_uram_0" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "71" *) 
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
        .BWE_A({\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 }),
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
        .DIN_A(dina[71:0]),
        .DIN_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DOUT_A(douta[71:0]),
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
        .RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ),
        .RDB_WR_B(1'b0),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_LSB  = "72" *) 
  (* \MEM.PORTA.DATA_MSB  = "143" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "221184" *) 
  (* RTL_RAM_NAME = "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_sp.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_uram_1" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "72" *) 
  (* ram_slice_end = "143" *) 
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
    .MATRIX_ID("gen_wr_a.gen_word_narrow.mem_reg_B3_M1"),
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
    \gen_wr_a.gen_word_narrow.mem_reg_uram_1 
       (.ADDR_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra}),
        .ADDR_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BWE_A({\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 }),
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
        .DIN_A(dina[143:72]),
        .DIN_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DOUT_A(douta[143:72]),
        .DOUT_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DOUT_B_UNCONNECTED [71:0]),
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
        .RDACCESS_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_RDACCESS_A_UNCONNECTED ),
        .RDACCESS_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_RDACCESS_B_UNCONNECTED ),
        .RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ),
        .RDB_WR_B(1'b0),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_LSB  = "144" *) 
  (* \MEM.PORTA.DATA_MSB  = "215" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "221184" *) 
  (* RTL_RAM_NAME = "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_sp.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_uram_2" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "144" *) 
  (* ram_slice_end = "215" *) 
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
    .MATRIX_ID("gen_wr_a.gen_word_narrow.mem_reg_B3_M2"),
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
    \gen_wr_a.gen_word_narrow.mem_reg_uram_2 
       (.ADDR_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra}),
        .ADDR_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BWE_A({\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 }),
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
        .CAS_OUT_ADDR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_ADDR_A_UNCONNECTED [22:0]),
        .CAS_OUT_ADDR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_ADDR_B_UNCONNECTED [22:0]),
        .CAS_OUT_BWE_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_BWE_A_UNCONNECTED [8:0]),
        .CAS_OUT_BWE_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_BWE_B_UNCONNECTED [8:0]),
        .CAS_OUT_DBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DBITERR_A_UNCONNECTED ),
        .CAS_OUT_DBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DBITERR_B_UNCONNECTED ),
        .CAS_OUT_DIN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DIN_A_UNCONNECTED [71:0]),
        .CAS_OUT_DIN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DIN_B_UNCONNECTED [71:0]),
        .CAS_OUT_DOUT_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DOUT_A_UNCONNECTED [71:0]),
        .CAS_OUT_DOUT_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DOUT_B_UNCONNECTED [71:0]),
        .CAS_OUT_EN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_EN_A_UNCONNECTED ),
        .CAS_OUT_EN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_EN_B_UNCONNECTED ),
        .CAS_OUT_RDACCESS_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDACCESS_A_UNCONNECTED ),
        .CAS_OUT_RDACCESS_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDACCESS_B_UNCONNECTED ),
        .CAS_OUT_RDB_WR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDB_WR_A_UNCONNECTED ),
        .CAS_OUT_RDB_WR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDB_WR_B_UNCONNECTED ),
        .CAS_OUT_SBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_SBITERR_A_UNCONNECTED ),
        .CAS_OUT_SBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_SBITERR_B_UNCONNECTED ),
        .CLK(clka),
        .DBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DBITERR_A_UNCONNECTED ),
        .DBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DBITERR_B_UNCONNECTED ),
        .DIN_A(dina[215:144]),
        .DIN_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DOUT_A(douta[215:144]),
        .DOUT_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DOUT_B_UNCONNECTED [71:0]),
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
        .RDACCESS_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_RDACCESS_A_UNCONNECTED ),
        .RDACCESS_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_RDACCESS_B_UNCONNECTED ),
        .RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ),
        .RDB_WR_B(1'b0),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1 
       (.I0(ena),
        .I1(wea),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram
   (douta,
    sleep,
    clka,
    ena,
    wea,
    addra,
    dina);
  output [215:0]douta;
  input sleep;
  input clka;
  input ena;
  input [0:0]wea;
  input [9:0]addra;
  input [215:0]dina;

  wire [9:0]addra;
  wire clka;
  wire [215:0]dina;
  wire [215:0]douta;
  wire ena;
  wire sleep;
  wire [0:0]wea;
  wire NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED;
  wire [215:0]NLW_xpm_memory_base_inst_doutb_UNCONNECTED;

  (* ADDR_WIDTH_A = "10" *) 
  (* ADDR_WIDTH_B = "10" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "216" *) 
  (* BYTE_WRITE_WIDTH_B = "216" *) 
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
  (* MEMORY_SIZE = "221184" *) 
  (* MEMORY_TYPE = "0" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "1024" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "ultra" *) 
  (* P_MIN_WIDTH_DATA = "216" *) 
  (* P_MIN_WIDTH_DATA_A = "216" *) 
  (* P_MIN_WIDTH_DATA_B = "216" *) 
  (* P_MIN_WIDTH_DATA_ECC = "216" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "216" *) 
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
  (* P_WIDTH_COL_WRITE_A = "216" *) 
  (* P_WIDTH_COL_WRITE_B = "216" *) 
  (* READ_DATA_WIDTH_A = "216" *) 
  (* READ_DATA_WIDTH_B = "216" *) 
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
  (* WRITE_DATA_WIDTH_A = "216" *) 
  (* WRITE_DATA_WIDTH_B = "216" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "216" *) 
  (* rstb_loop_iter = "216" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base xpm_memory_base_inst
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterra(NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED),
        .dbiterrb(NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_xpm_memory_base_inst_doutb_UNCONNECTED[215:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23312)
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
