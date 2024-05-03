// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Thu Mar 28 19:56:39 2024
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [215:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [215:0]douta;

  wire [10:0]addra;
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
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [215:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "9" *) 
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
  (* C_READ_DEPTH_A = "1125" *) 
  (* C_READ_DEPTH_B = "1125" *) 
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
  (* C_WRITE_DEPTH_A = "1125" *) 
  (* C_WRITE_DEPTH_B = "1125" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "216" *) 
  (* C_WRITE_WIDTH_B = "216" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
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

(* ADDR_WIDTH_A = "11" *) (* ADDR_WIDTH_B = "11" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "216" *) (* BYTE_WRITE_WIDTH_B = "216" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "3" *) (* MEMORY_SIZE = "243000" *) (* MEMORY_TYPE = "0" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "no_ecc" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "1125" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "ultra" *) (* P_MIN_WIDTH_DATA = "216" *) 
(* P_MIN_WIDTH_DATA_A = "216" *) (* P_MIN_WIDTH_DATA_B = "216" *) (* P_MIN_WIDTH_DATA_ECC = "216" *) 
(* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "216" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) 
(* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) 
(* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "11" *) (* P_WIDTH_ADDR_READ_B = "11" *) 
(* P_WIDTH_ADDR_WRITE_A = "11" *) (* P_WIDTH_ADDR_WRITE_B = "11" *) (* P_WIDTH_COL_WRITE_A = "216" *) 
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
  input [10:0]addra;
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
  input [10:0]addrb;
  input [215:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [215:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [10:0]addra;
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
  (* \MEM.PORTA.ADDRESS_END  = "1124" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "71" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "243000" *) 
  (* RTL_RAM_NAME = "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_sp.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_uram_0" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1124" *) 
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
       (.ADDR_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra}),
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
  (* \MEM.PORTA.ADDRESS_END  = "1124" *) 
  (* \MEM.PORTA.DATA_LSB  = "72" *) 
  (* \MEM.PORTA.DATA_MSB  = "143" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "243000" *) 
  (* RTL_RAM_NAME = "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_sp.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_uram_1" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1124" *) 
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
       (.ADDR_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra}),
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
  (* \MEM.PORTA.ADDRESS_END  = "1124" *) 
  (* \MEM.PORTA.DATA_LSB  = "144" *) 
  (* \MEM.PORTA.DATA_MSB  = "215" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "243000" *) 
  (* RTL_RAM_NAME = "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_sp.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_uram_2" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1124" *) 
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
       (.ADDR_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra}),
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
  input [10:0]addra;
  input [215:0]dina;

  wire [10:0]addra;
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

  (* ADDR_WIDTH_A = "11" *) 
  (* ADDR_WIDTH_B = "11" *) 
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
  (* MEMORY_SIZE = "243000" *) 
  (* MEMORY_TYPE = "0" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "1125" *) 
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
  (* P_WIDTH_ADDR_READ_A = "11" *) 
  (* P_WIDTH_ADDR_READ_B = "11" *) 
  (* P_WIDTH_ADDR_WRITE_A = "11" *) 
  (* P_WIDTH_ADDR_WRITE_B = "11" *) 
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
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23408)
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
