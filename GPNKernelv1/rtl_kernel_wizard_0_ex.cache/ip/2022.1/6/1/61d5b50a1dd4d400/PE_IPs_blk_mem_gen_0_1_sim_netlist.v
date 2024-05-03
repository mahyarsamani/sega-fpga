// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sat Apr  6 15:18:27 2024
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [215:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [215:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [215:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [215:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [215:0]dina;
  wire [215:0]dinb;
  wire [215:0]douta;
  wire [215:0]doutb;
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
  (* C_WRITE_MODE_B = "NO_CHANGE" *) 
  (* C_WRITE_WIDTH_A = "216" *) 
  (* C_WRITE_WIDTH_B = "216" *) 
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
        .web(web));
endmodule

(* ADDR_WIDTH_A = "10" *) (* ADDR_WIDTH_B = "10" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "216" *) (* BYTE_WRITE_WIDTH_B = "216" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "3" *) (* MEMORY_SIZE = "221184" *) (* MEMORY_TYPE = "2" *) 
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
  wire [9:0]addrb;
  wire clka;
  wire [215:0]dina;
  wire [215:0]dinb;
  wire [215:0]douta;
  wire [215:0]doutb;
  wire ena;
  wire enb;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 ;
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
  (* RTL_RAM_BITS = "221184" *) 
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
        .BWE_A({\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 }),
        .BWE_B({\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 }),
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
        .RDB_WR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ),
        .RDB_WR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 ),
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
  (* RTL_RAM_BITS = "221184" *) 
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
        .BWE_A({\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 }),
        .BWE_B({\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 }),
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
        .RDB_WR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ),
        .RDB_WR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 ),
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
  (* RTL_RAM_BITS = "221184" *) 
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
        .BWE_A({\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 }),
        .BWE_B({\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 }),
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
        .RDB_WR_A(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ),
        .RDB_WR_B(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 ),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1 
       (.I0(wea),
        .I1(ena),
        .O(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2 
       (.I0(web),
        .I1(enb),
        .O(\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0 ));
endmodule

(* ADDR_WIDTH_A = "10" *) (* ADDR_WIDTH_B = "10" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "216" *) (* BYTE_WRITE_WIDTH_B = "216" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "common_clock" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "no_ecc" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MEMORY_INIT_FILE = "none" *) 
(* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) (* MEMORY_PRIMITIVE = "ultraram" *) 
(* MEMORY_SIZE = "221184" *) (* MESSAGE_CONTROL = "0" *) (* P_CLOCKING_MODE = "0" *) 
(* P_ECC_MODE = "0" *) (* P_MEMORY_OPTIMIZATION = "1" *) (* P_MEMORY_PRIMITIVE = "3" *) 
(* P_WAKEUP_TIME = "0" *) (* P_WRITE_MODE_A = "2" *) (* P_WRITE_MODE_B = "2" *) 
(* READ_DATA_WIDTH_A = "216" *) (* READ_DATA_WIDTH_B = "216" *) (* READ_LATENCY_A = "1" *) 
(* READ_LATENCY_B = "1" *) (* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) 
(* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "1" *) (* USE_MEM_INIT_MMI = "0" *) 
(* WAKEUP_TIME = "disable_sleep" *) (* WRITE_DATA_WIDTH_A = "216" *) (* WRITE_DATA_WIDTH_B = "216" *) 
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
  wire [9:0]addrb;
  wire clka;
  wire [215:0]dina;
  wire [215:0]dinb;
  wire [215:0]douta;
  wire [215:0]doutb;
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
  (* MEMORY_TYPE = "2" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19088)
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
