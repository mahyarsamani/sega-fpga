// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Wed Apr 10 16:31:43 2024
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [287:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [287:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [287:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [287:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [287:0]dina;
  wire [287:0]dinb;
  wire [287:0]douta;
  wire [287:0]doutb;
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
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [287:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_COUNT_36K_BRAM = "8" *) 
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
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "288" *) 
  (* C_READ_WIDTH_B = "288" *) 
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
  (* C_WRITE_MODE_B = "NO_CHANGE" *) 
  (* C_WRITE_WIDTH_A = "288" *) 
  (* C_WRITE_WIDTH_B = "288" *) 
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[287:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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

(* ADDR_WIDTH_A = "10" *) (* ADDR_WIDTH_B = "10" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "288" *) (* BYTE_WRITE_WIDTH_B = "288" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "3" *) (* MEMORY_SIZE = "294912" *) (* MEMORY_TYPE = "2" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "no_ecc" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "1024" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "ultra" *) (* P_MIN_WIDTH_DATA = "288" *) 
(* P_MIN_WIDTH_DATA_A = "288" *) (* P_MIN_WIDTH_DATA_B = "288" *) (* P_MIN_WIDTH_DATA_ECC = "288" *) 
(* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "288" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) 
(* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) 
(* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "10" *) (* P_WIDTH_ADDR_READ_B = "10" *) 
(* P_WIDTH_ADDR_WRITE_A = "10" *) (* P_WIDTH_ADDR_WRITE_B = "10" *) (* P_WIDTH_COL_WRITE_A = "288" *) 
(* P_WIDTH_COL_WRITE_B = "288" *) (* READ_DATA_WIDTH_A = "288" *) (* READ_DATA_WIDTH_B = "288" *) 
(* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "1" *) 
(* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "288" *) (* WRITE_DATA_WIDTH_B = "288" *) (* WRITE_MODE_A = "2" *) 
(* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* rsta_loop_iter = "288" *) (* rstb_loop_iter = "288" *) 
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
  input [287:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [287:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [9:0]addrb;
  input [287:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [287:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [287:0]dina;
  wire [287:0]dinb;
  wire [287:0]douta;
  wire [287:0]doutb;
  wire ena;
  wire enb;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_EN_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_EN_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDB_WR_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDB_WR_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_SBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_SBITERR_B_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_ADDR_B_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_BWE_A_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_BWE_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DIN_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DOUT_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_EN_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_EN_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDB_WR_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDB_WR_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_SBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_SBITERR_B_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_ADDR_B_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_BWE_A_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_BWE_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DIN_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DOUT_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_EN_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_EN_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDB_WR_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDB_WR_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_SBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_SBITERR_B_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_ADDR_B_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_BWE_A_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_BWE_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DIN_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DOUT_B_UNCONNECTED ;
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
  wire [22:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_B_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_A_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_B_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "71" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "71" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "294912" *) 
  (* RTL_RAM_NAME = "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_tdp.xpm_memory_tdpram_inst/xpm_memory_base_inst/gen_wr_b.gen_word_narrow.mem_reg_uram_0" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
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
    \gen_wr_b.gen_word_narrow.mem_reg_uram_0 
       (.ADDR_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra}),
        .ADDR_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb}),
        .BWE_A({\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 }),
        .BWE_B({\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 }),
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
        .CAS_OUT_ADDR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_ADDR_A_UNCONNECTED [22:0]),
        .CAS_OUT_ADDR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_ADDR_B_UNCONNECTED [22:0]),
        .CAS_OUT_BWE_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_BWE_A_UNCONNECTED [8:0]),
        .CAS_OUT_BWE_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_BWE_B_UNCONNECTED [8:0]),
        .CAS_OUT_DBITERR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DBITERR_A_UNCONNECTED ),
        .CAS_OUT_DBITERR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DBITERR_B_UNCONNECTED ),
        .CAS_OUT_DIN_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DIN_A_UNCONNECTED [71:0]),
        .CAS_OUT_DIN_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DIN_B_UNCONNECTED [71:0]),
        .CAS_OUT_DOUT_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DOUT_A_UNCONNECTED [71:0]),
        .CAS_OUT_DOUT_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DOUT_B_UNCONNECTED [71:0]),
        .CAS_OUT_EN_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_EN_A_UNCONNECTED ),
        .CAS_OUT_EN_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_EN_B_UNCONNECTED ),
        .CAS_OUT_RDACCESS_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDACCESS_A_UNCONNECTED ),
        .CAS_OUT_RDACCESS_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDACCESS_B_UNCONNECTED ),
        .CAS_OUT_RDB_WR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDB_WR_A_UNCONNECTED ),
        .CAS_OUT_RDB_WR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDB_WR_B_UNCONNECTED ),
        .CAS_OUT_SBITERR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_SBITERR_A_UNCONNECTED ),
        .CAS_OUT_SBITERR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_SBITERR_B_UNCONNECTED ),
        .CLK(clka),
        .DBITERR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_DBITERR_A_UNCONNECTED ),
        .DBITERR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_DBITERR_B_UNCONNECTED ),
        .DIN_A(dina[71:0]),
        .DIN_B(dinb[71:0]),
        .DOUT_A(douta[71:0]),
        .DOUT_B(doutb[71:0]),
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
        .RDB_WR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ),
        .RDB_WR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_LSB  = "72" *) 
  (* \MEM.PORTA.DATA_MSB  = "143" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_LSB  = "72" *) 
  (* \MEM.PORTB.DATA_MSB  = "143" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "294912" *) 
  (* RTL_RAM_NAME = "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_tdp.xpm_memory_tdpram_inst/xpm_memory_base_inst/gen_wr_b.gen_word_narrow.mem_reg_uram_1" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
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
    \gen_wr_b.gen_word_narrow.mem_reg_uram_1 
       (.ADDR_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra}),
        .ADDR_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb}),
        .BWE_A({\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 }),
        .BWE_B({\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 }),
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
        .CAS_OUT_ADDR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_ADDR_A_UNCONNECTED [22:0]),
        .CAS_OUT_ADDR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_ADDR_B_UNCONNECTED [22:0]),
        .CAS_OUT_BWE_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_BWE_A_UNCONNECTED [8:0]),
        .CAS_OUT_BWE_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_BWE_B_UNCONNECTED [8:0]),
        .CAS_OUT_DBITERR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DBITERR_A_UNCONNECTED ),
        .CAS_OUT_DBITERR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DBITERR_B_UNCONNECTED ),
        .CAS_OUT_DIN_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DIN_A_UNCONNECTED [71:0]),
        .CAS_OUT_DIN_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DIN_B_UNCONNECTED [71:0]),
        .CAS_OUT_DOUT_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DOUT_A_UNCONNECTED [71:0]),
        .CAS_OUT_DOUT_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DOUT_B_UNCONNECTED [71:0]),
        .CAS_OUT_EN_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_EN_A_UNCONNECTED ),
        .CAS_OUT_EN_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_EN_B_UNCONNECTED ),
        .CAS_OUT_RDACCESS_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDACCESS_A_UNCONNECTED ),
        .CAS_OUT_RDACCESS_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDACCESS_B_UNCONNECTED ),
        .CAS_OUT_RDB_WR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDB_WR_A_UNCONNECTED ),
        .CAS_OUT_RDB_WR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDB_WR_B_UNCONNECTED ),
        .CAS_OUT_SBITERR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_SBITERR_A_UNCONNECTED ),
        .CAS_OUT_SBITERR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_SBITERR_B_UNCONNECTED ),
        .CLK(clka),
        .DBITERR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DBITERR_A_UNCONNECTED ),
        .DBITERR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DBITERR_B_UNCONNECTED ),
        .DIN_A(dina[143:72]),
        .DIN_B(dinb[143:72]),
        .DOUT_A(douta[143:72]),
        .DOUT_B(doutb[143:72]),
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
        .RDACCESS_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_RDACCESS_A_UNCONNECTED ),
        .RDACCESS_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_RDACCESS_B_UNCONNECTED ),
        .RDB_WR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ),
        .RDB_WR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_LSB  = "144" *) 
  (* \MEM.PORTA.DATA_MSB  = "215" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_LSB  = "144" *) 
  (* \MEM.PORTB.DATA_MSB  = "215" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "294912" *) 
  (* RTL_RAM_NAME = "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_tdp.xpm_memory_tdpram_inst/xpm_memory_base_inst/gen_wr_b.gen_word_narrow.mem_reg_uram_2" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
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
    \gen_wr_b.gen_word_narrow.mem_reg_uram_2 
       (.ADDR_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra}),
        .ADDR_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb}),
        .BWE_A({\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 }),
        .BWE_B({\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 }),
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
        .CAS_OUT_ADDR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_ADDR_A_UNCONNECTED [22:0]),
        .CAS_OUT_ADDR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_ADDR_B_UNCONNECTED [22:0]),
        .CAS_OUT_BWE_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_BWE_A_UNCONNECTED [8:0]),
        .CAS_OUT_BWE_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_BWE_B_UNCONNECTED [8:0]),
        .CAS_OUT_DBITERR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DBITERR_A_UNCONNECTED ),
        .CAS_OUT_DBITERR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DBITERR_B_UNCONNECTED ),
        .CAS_OUT_DIN_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DIN_A_UNCONNECTED [71:0]),
        .CAS_OUT_DIN_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DIN_B_UNCONNECTED [71:0]),
        .CAS_OUT_DOUT_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DOUT_A_UNCONNECTED [71:0]),
        .CAS_OUT_DOUT_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DOUT_B_UNCONNECTED [71:0]),
        .CAS_OUT_EN_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_EN_A_UNCONNECTED ),
        .CAS_OUT_EN_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_EN_B_UNCONNECTED ),
        .CAS_OUT_RDACCESS_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDACCESS_A_UNCONNECTED ),
        .CAS_OUT_RDACCESS_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDACCESS_B_UNCONNECTED ),
        .CAS_OUT_RDB_WR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDB_WR_A_UNCONNECTED ),
        .CAS_OUT_RDB_WR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDB_WR_B_UNCONNECTED ),
        .CAS_OUT_SBITERR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_SBITERR_A_UNCONNECTED ),
        .CAS_OUT_SBITERR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_SBITERR_B_UNCONNECTED ),
        .CLK(clka),
        .DBITERR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DBITERR_A_UNCONNECTED ),
        .DBITERR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DBITERR_B_UNCONNECTED ),
        .DIN_A(dina[215:144]),
        .DIN_B(dinb[215:144]),
        .DOUT_A(douta[215:144]),
        .DOUT_B(doutb[215:144]),
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
        .RDACCESS_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_RDACCESS_A_UNCONNECTED ),
        .RDACCESS_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_RDACCESS_B_UNCONNECTED ),
        .RDB_WR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ),
        .RDB_WR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_LSB  = "216" *) 
  (* \MEM.PORTA.DATA_MSB  = "287" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_LSB  = "216" *) 
  (* \MEM.PORTB.DATA_MSB  = "287" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "294912" *) 
  (* RTL_RAM_NAME = "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_tdp.xpm_memory_tdpram_inst/xpm_memory_base_inst/gen_wr_b.gen_word_narrow.mem_reg_uram_3" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "216" *) 
  (* ram_slice_end = "287" *) 
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
    .MATRIX_ID("gen_wr_a.gen_word_narrow.mem_reg_B3_M3"),
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
    \gen_wr_b.gen_word_narrow.mem_reg_uram_3 
       (.ADDR_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra}),
        .ADDR_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb}),
        .BWE_A({\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 }),
        .BWE_B({\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 }),
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
        .DIN_A(dina[287:216]),
        .DIN_B(dinb[287:216]),
        .DOUT_A(douta[287:216]),
        .DOUT_B(doutb[287:216]),
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
        .RDACCESS_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_RDACCESS_A_UNCONNECTED ),
        .RDACCESS_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_RDACCESS_B_UNCONNECTED ),
        .RDB_WR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ),
        .RDB_WR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1 
       (.I0(wea),
        .I1(ena),
        .O(\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2 
       (.I0(web),
        .I1(enb),
        .O(\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0 ));
endmodule

(* ADDR_WIDTH_A = "10" *) (* ADDR_WIDTH_B = "10" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "288" *) (* BYTE_WRITE_WIDTH_B = "288" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "common_clock" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "no_ecc" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MEMORY_INIT_FILE = "none" *) 
(* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) (* MEMORY_PRIMITIVE = "ultraram" *) 
(* MEMORY_SIZE = "294912" *) (* MESSAGE_CONTROL = "0" *) (* P_CLOCKING_MODE = "0" *) 
(* P_ECC_MODE = "0" *) (* P_MEMORY_OPTIMIZATION = "1" *) (* P_MEMORY_PRIMITIVE = "3" *) 
(* P_WAKEUP_TIME = "0" *) (* P_WRITE_MODE_A = "2" *) (* P_WRITE_MODE_B = "2" *) 
(* READ_DATA_WIDTH_A = "288" *) (* READ_DATA_WIDTH_B = "288" *) (* READ_LATENCY_A = "1" *) 
(* READ_LATENCY_B = "1" *) (* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) 
(* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "1" *) (* USE_MEM_INIT_MMI = "0" *) 
(* WAKEUP_TIME = "disable_sleep" *) (* WRITE_DATA_WIDTH_A = "288" *) (* WRITE_DATA_WIDTH_B = "288" *) 
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
  input [9:0]addra;
  input [287:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [287:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [9:0]addrb;
  input [287:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [287:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [287:0]dina;
  wire [287:0]dinb;
  wire [287:0]douta;
  wire [287:0]doutb;
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
  (* ADDR_WIDTH_A = "10" *) 
  (* ADDR_WIDTH_B = "10" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "288" *) 
  (* BYTE_WRITE_WIDTH_B = "288" *) 
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
  (* MEMORY_SIZE = "294912" *) 
  (* MEMORY_TYPE = "2" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "1024" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "ultra" *) 
  (* P_MIN_WIDTH_DATA = "288" *) 
  (* P_MIN_WIDTH_DATA_A = "288" *) 
  (* P_MIN_WIDTH_DATA_B = "288" *) 
  (* P_MIN_WIDTH_DATA_ECC = "288" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "288" *) 
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
  (* P_WIDTH_COL_WRITE_A = "288" *) 
  (* P_WIDTH_COL_WRITE_B = "288" *) 
  (* READ_DATA_WIDTH_A = "288" *) 
  (* READ_DATA_WIDTH_B = "288" *) 
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
  (* WRITE_DATA_WIDTH_A = "288" *) 
  (* WRITE_DATA_WIDTH_B = "288" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "288" *) 
  (* rstb_loop_iter = "288" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21968)
`pragma protect data_block
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
/wwVARKDufGEwLmbSgOUQlctCVyZaeY=
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
