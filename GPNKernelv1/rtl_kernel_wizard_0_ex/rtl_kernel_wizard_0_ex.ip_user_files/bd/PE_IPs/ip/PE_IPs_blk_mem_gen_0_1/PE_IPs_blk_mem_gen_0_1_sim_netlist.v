// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Wed Apr 10 16:31:45 2024
// Host        : COE-CS-crystal running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/austin01/vivado/rtl_kernel_wizard_0_ex/rtl_kernel_wizard_0_ex.gen/sources_1/bd/PE_IPs/ip/PE_IPs_blk_mem_gen_0_1/PE_IPs_blk_mem_gen_0_1_sim_netlist.v
// Design      : PE_IPs_blk_mem_gen_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PE_IPs_blk_mem_gen_0_1,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module PE_IPs_blk_mem_gen_0_1
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
  PE_IPs_blk_mem_gen_0_1_blk_mem_gen_v8_4_5 U0
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
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "1024" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "ultra" *) 
(* P_MIN_WIDTH_DATA = "288" *) (* P_MIN_WIDTH_DATA_A = "288" *) (* P_MIN_WIDTH_DATA_B = "288" *) 
(* P_MIN_WIDTH_DATA_ECC = "288" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "288" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "10" *) 
(* P_WIDTH_ADDR_READ_B = "10" *) (* P_WIDTH_ADDR_WRITE_A = "10" *) (* P_WIDTH_ADDR_WRITE_B = "10" *) 
(* P_WIDTH_COL_WRITE_A = "288" *) (* P_WIDTH_COL_WRITE_B = "288" *) (* READ_DATA_WIDTH_A = "288" *) 
(* READ_DATA_WIDTH_B = "288" *) (* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "1" *) (* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "288" *) (* WRITE_DATA_WIDTH_B = "288" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* rsta_loop_iter = "288" *) 
(* rstb_loop_iter = "288" *) 
module PE_IPs_blk_mem_gen_0_1_xpm_memory_base
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
(* MEMORY_SIZE = "294912" *) (* MESSAGE_CONTROL = "0" *) (* ORIG_REF_NAME = "xpm_memory_tdpram" *) 
(* P_CLOCKING_MODE = "0" *) (* P_ECC_MODE = "0" *) (* P_MEMORY_OPTIMIZATION = "1" *) 
(* P_MEMORY_PRIMITIVE = "3" *) (* P_WAKEUP_TIME = "0" *) (* P_WRITE_MODE_A = "2" *) 
(* P_WRITE_MODE_B = "2" *) (* READ_DATA_WIDTH_A = "288" *) (* READ_DATA_WIDTH_B = "288" *) 
(* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "1" *) 
(* USE_MEM_INIT_MMI = "0" *) (* WAKEUP_TIME = "disable_sleep" *) (* WRITE_DATA_WIDTH_A = "288" *) 
(* WRITE_DATA_WIDTH_B = "288" *) (* WRITE_MODE_A = "no_change" *) (* WRITE_MODE_B = "no_change" *) 
(* WRITE_PROTECT = "1" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
module PE_IPs_blk_mem_gen_0_1_xpm_memory_tdpram
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
  PE_IPs_blk_mem_gen_0_1_xpm_memory_base xpm_memory_base_inst
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21984)
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
