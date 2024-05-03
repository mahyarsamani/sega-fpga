-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Wed Mar 27 23:57:47 2024
-- Host        : COE-CS-crystal running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top PE_IPs_blk_mem_gen_0_2 -prefix
--               PE_IPs_blk_mem_gen_0_2_ PE_IPs_blk_mem_gen_0_2_sim_netlist.vhdl
-- Design      : PE_IPs_blk_mem_gen_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu280-fsvh2892-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PE_IPs_blk_mem_gen_0_2_xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 50 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 50 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 50 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 50 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 10;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 10;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 51;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 51;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 0;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is "[7:0]";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 3;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 52224;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 0;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 1024;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is "ultra";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 51;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 51;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 51;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 51;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 51;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 10;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 10;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 10;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 10;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 51;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 51;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 51;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 51;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 1;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 1;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 1;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 51;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 51;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 52;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of PE_IPs_blk_mem_gen_0_2_xpm_memory_base : entity is 52;
end PE_IPs_blk_mem_gen_0_2_xpm_memory_base;

architecture STRUCTURE of PE_IPs_blk_mem_gen_0_2_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_EN_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_EN_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDB_WR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDB_WR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_BWE_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_BWE_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 51 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 1023;
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 50;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 52224;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_sp.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_uram_0";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 1023;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 50;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  doutb(50) <= \<const0>\;
  doutb(49) <= \<const0>\;
  doutb(48) <= \<const0>\;
  doutb(47) <= \<const0>\;
  doutb(46) <= \<const0>\;
  doutb(45) <= \<const0>\;
  doutb(44) <= \<const0>\;
  doutb(43) <= \<const0>\;
  doutb(42) <= \<const0>\;
  doutb(41) <= \<const0>\;
  doutb(40) <= \<const0>\;
  doutb(39) <= \<const0>\;
  doutb(38) <= \<const0>\;
  doutb(37) <= \<const0>\;
  doutb(36) <= \<const0>\;
  doutb(35) <= \<const0>\;
  doutb(34) <= \<const0>\;
  doutb(33) <= \<const0>\;
  doutb(32) <= \<const0>\;
  doutb(31) <= \<const0>\;
  doutb(30) <= \<const0>\;
  doutb(29) <= \<const0>\;
  doutb(28) <= \<const0>\;
  doutb(27) <= \<const0>\;
  doutb(26) <= \<const0>\;
  doutb(25) <= \<const0>\;
  doutb(24) <= \<const0>\;
  doutb(23) <= \<const0>\;
  doutb(22) <= \<const0>\;
  doutb(21) <= \<const0>\;
  doutb(20) <= \<const0>\;
  doutb(19) <= \<const0>\;
  doutb(18) <= \<const0>\;
  doutb(17) <= \<const0>\;
  doutb(16) <= \<const0>\;
  doutb(15) <= \<const0>\;
  doutb(14) <= \<const0>\;
  doutb(13) <= \<const0>\;
  doutb(12) <= \<const0>\;
  doutb(11) <= \<const0>\;
  doutb(10) <= \<const0>\;
  doutb(9) <= \<const0>\;
  doutb(8) <= \<const0>\;
  doutb(7) <= \<const0>\;
  doutb(6) <= \<const0>\;
  doutb(5) <= \<const0>\;
  doutb(4) <= \<const0>\;
  doutb(3) <= \<const0>\;
  doutb(2) <= \<const0>\;
  doutb(1) <= \<const0>\;
  doutb(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_0\: unisim.vcomponents.URAM288
    generic map(
      AVG_CONS_INACTIVE_CYCLES => 10,
      BWE_MODE_A => "PARITY_INDEPENDENT",
      BWE_MODE_B => "PARITY_INDEPENDENT",
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      EN_ECC_RD_A => "FALSE",
      EN_ECC_RD_B => "FALSE",
      EN_ECC_WR_A => "FALSE",
      EN_ECC_WR_B => "FALSE",
      IREG_PRE_A => "FALSE",
      IREG_PRE_B => "FALSE",
      IS_CLK_INVERTED => '0',
      IS_EN_A_INVERTED => '0',
      IS_EN_B_INVERTED => '0',
      IS_RDB_WR_A_INVERTED => '0',
      IS_RDB_WR_B_INVERTED => '0',
      IS_RST_A_INVERTED => '0',
      IS_RST_B_INVERTED => '0',
      MATRIX_ID => "gen_wr_a.gen_word_narrow.mem_reg_B3_M0",
      NUM_UNIQUE_SELF_ADDR_A => 1,
      NUM_UNIQUE_SELF_ADDR_B => 1,
      NUM_URAM_IN_MATRIX => 1,
      OREG_A => "FALSE",
      OREG_B => "FALSE",
      OREG_ECC_A => "FALSE",
      OREG_ECC_B => "FALSE",
      REG_CAS_A => "FALSE",
      REG_CAS_B => "FALSE",
      RST_MODE_A => "SYNC",
      RST_MODE_B => "SYNC",
      SELF_ADDR_A => B"000" & X"00",
      SELF_ADDR_B => B"000" & X"00",
      SELF_MASK_A => B"111" & X"FF",
      SELF_MASK_B => B"111" & X"FF",
      USE_EXT_CE_A => "FALSE",
      USE_EXT_CE_B => "FALSE"
    )
        port map (
      ADDR_A(22 downto 10) => B"0000000000000",
      ADDR_A(9 downto 0) => addra(9 downto 0),
      ADDR_B(22 downto 0) => B"00000000000000000000000",
      BWE_A(8) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0\,
      BWE_A(7) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0\,
      BWE_A(6) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0\,
      BWE_A(5) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0\,
      BWE_A(4) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0\,
      BWE_A(3) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0\,
      BWE_A(2) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0\,
      BWE_A(1) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0\,
      BWE_A(0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0\,
      BWE_B(8 downto 0) => B"111111111",
      CAS_IN_ADDR_A(22 downto 0) => B"00000000000000000000000",
      CAS_IN_ADDR_B(22 downto 0) => B"00000000000000000000000",
      CAS_IN_BWE_A(8 downto 0) => B"000000000",
      CAS_IN_BWE_B(8 downto 0) => B"000000000",
      CAS_IN_DBITERR_A => '0',
      CAS_IN_DBITERR_B => '0',
      CAS_IN_DIN_A(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      CAS_IN_DIN_B(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      CAS_IN_DOUT_A(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      CAS_IN_DOUT_B(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      CAS_IN_EN_A => '0',
      CAS_IN_EN_B => '0',
      CAS_IN_RDACCESS_A => '0',
      CAS_IN_RDACCESS_B => '0',
      CAS_IN_RDB_WR_A => '0',
      CAS_IN_RDB_WR_B => '0',
      CAS_IN_SBITERR_A => '0',
      CAS_IN_SBITERR_B => '0',
      CAS_OUT_ADDR_A(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_ADDR_A_UNCONNECTED\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_ADDR_B_UNCONNECTED\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_BWE_A_UNCONNECTED\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_BWE_B_UNCONNECTED\(8 downto 0),
      CAS_OUT_DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DBITERR_A_UNCONNECTED\,
      CAS_OUT_DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DBITERR_B_UNCONNECTED\,
      CAS_OUT_DIN_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DIN_A_UNCONNECTED\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DIN_B_UNCONNECTED\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DOUT_A_UNCONNECTED\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DOUT_B_UNCONNECTED\(71 downto 0),
      CAS_OUT_EN_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_EN_A_UNCONNECTED\,
      CAS_OUT_EN_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_EN_B_UNCONNECTED\,
      CAS_OUT_RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDACCESS_A_UNCONNECTED\,
      CAS_OUT_RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDACCESS_B_UNCONNECTED\,
      CAS_OUT_RDB_WR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDB_WR_A_UNCONNECTED\,
      CAS_OUT_RDB_WR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDB_WR_B_UNCONNECTED\,
      CAS_OUT_SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_SBITERR_A_UNCONNECTED\,
      CAS_OUT_SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_SBITERR_B_UNCONNECTED\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 51) => B"000000000000000000000",
      DIN_A(50 downto 0) => dina(50 downto 0),
      DIN_B(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      DOUT_A(71 downto 51) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_A_UNCONNECTED\(71 downto 51),
      DOUT_A(50 downto 0) => douta(50 downto 0),
      DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_B_UNCONNECTED\(71 downto 0),
      EN_A => ena,
      EN_B => '0',
      INJECT_DBITERR_A => '0',
      INJECT_DBITERR_B => '0',
      INJECT_SBITERR_A => '0',
      INJECT_SBITERR_B => '0',
      OREG_CE_A => '1',
      OREG_CE_B => '1',
      OREG_ECC_CE_A => '1',
      OREG_ECC_CE_B => '1',
      RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0\,
      RDB_WR_B => '0',
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ena,
      I1 => wea(0),
      O => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PE_IPs_blk_mem_gen_0_2_xpm_memory_spram is
  port (
    douta : out STD_LOGIC_VECTOR ( 50 downto 0 );
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 50 downto 0 )
  );
end PE_IPs_blk_mem_gen_0_2_xpm_memory_spram;

architecture STRUCTURE of PE_IPs_blk_mem_gen_0_2_xpm_memory_spram is
  signal NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 50 downto 0 );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of xpm_memory_base_inst : label is 10;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of xpm_memory_base_inst : label is 10;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of xpm_memory_base_inst : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of xpm_memory_base_inst : label is 51;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of xpm_memory_base_inst : label is 51;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of xpm_memory_base_inst : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of xpm_memory_base_inst : label is 0;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of xpm_memory_base_inst : label is "[7:0]";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of xpm_memory_base_inst : label is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of xpm_memory_base_inst : label is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of xpm_memory_base_inst : label is 0;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of xpm_memory_base_inst : label is "soft";
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of xpm_memory_base_inst : label is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of xpm_memory_base_inst : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of xpm_memory_base_inst : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of xpm_memory_base_inst : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of xpm_memory_base_inst : label is 3;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of xpm_memory_base_inst : label is 52224;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of xpm_memory_base_inst : label is 0;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of xpm_memory_base_inst : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of xpm_memory_base_inst : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of xpm_memory_base_inst : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of xpm_memory_base_inst : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of xpm_memory_base_inst : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of xpm_memory_base_inst : label is 1024;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of xpm_memory_base_inst : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of xpm_memory_base_inst : label is "ultra";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of xpm_memory_base_inst : label is 51;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of xpm_memory_base_inst : label is 51;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of xpm_memory_base_inst : label is 51;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of xpm_memory_base_inst : label is 51;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of xpm_memory_base_inst : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of xpm_memory_base_inst : label is 51;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of xpm_memory_base_inst : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of xpm_memory_base_inst : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of xpm_memory_base_inst : label is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of xpm_memory_base_inst : label is 10;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of xpm_memory_base_inst : label is 10;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of xpm_memory_base_inst : label is 10;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of xpm_memory_base_inst : label is 10;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of xpm_memory_base_inst : label is 51;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of xpm_memory_base_inst : label is 51;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of xpm_memory_base_inst : label is 51;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of xpm_memory_base_inst : label is 51;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of xpm_memory_base_inst : label is 1;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of xpm_memory_base_inst : label is 1;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of xpm_memory_base_inst : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of xpm_memory_base_inst : label is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of xpm_memory_base_inst : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of xpm_memory_base_inst : label is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of xpm_memory_base_inst : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of xpm_memory_base_inst : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of xpm_memory_base_inst : label is 1;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of xpm_memory_base_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of xpm_memory_base_inst : label is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of xpm_memory_base_inst : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of xpm_memory_base_inst : label is 51;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of xpm_memory_base_inst : label is 51;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of xpm_memory_base_inst : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of xpm_memory_base_inst : label is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of xpm_memory_base_inst : label is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xpm_memory_base_inst : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of xpm_memory_base_inst : label is 52;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of xpm_memory_base_inst : label is 52;
begin
xpm_memory_base_inst: entity work.PE_IPs_blk_mem_gen_0_2_xpm_memory_base
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      addrb(9 downto 0) => B"0000000000",
      clka => clka,
      clkb => '0',
      dbiterra => NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED,
      dbiterrb => NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED,
      dina(50 downto 0) => dina(50 downto 0),
      dinb(50 downto 0) => B"000000000000000000000000000000000000000000000000000",
      douta(50 downto 0) => douta(50 downto 0),
      doutb(50 downto 0) => NLW_xpm_memory_base_inst_doutb_UNCONNECTED(50 downto 0),
      ena => ena,
      enb => '0',
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '1',
      regceb => '0',
      rsta => '0',
      rstb => '0',
      sbiterra => NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED,
      sbiterrb => NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED,
      sleep => sleep,
      wea(0) => wea(0),
      web(0) => '0'
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
RgPKnWr9n0dGgttm3akiFhAlfB96usOQYxnEmPhGyTGg1AbizYAjGPWLXBWl50n/d0IA71ci4aJB
wt6mtfyNADm3ZReK7D3mKu037BOgxryoEwwf1kiC6q/PllxsdAgEMfQrfHJ3E2AzSpdYjoxVYito
y0JW6CUDcWvWa4WV0EA=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
M0l6KpOGH3jL8eRt3NCD7e2USYnkg5H9GAnE1PKmnjiouFN3Y8kjWA2PZDAQLm9UW+TsC1HeVlzO
WjNCHkjR/6ubCsIcWfpPZWdIuAenlsyq8Y9l6b8vMj8JSbDEOiFF/GHSbKsn22MJdDJKEhHFK6GV
s8gR2vywRFwG69gIRE4qGhVB+WIg8GJrDpDMYH6lCjMkTrjXuKDUcNlJN3NPLuhJ7tsditwf1pr5
moJRmGpJnip/rGm0g4o4A6ev4CtePjoao8C1wFtzHkERX9oenhh7cGjDMejU5IrLv8NxFnLj1FpB
9MuF1beTU20NI5oAn6zLiLiOtXjf0ghU3AN4DA==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
hAsrUfp6Qgjm8yBjNYTEtQmVQmMxzL8TE/3oiQSxSI3+yEkXAbQCXkT9mo+LCdv+fGECOB0istHd
eLtbsiYbxjxNxYkXiUrRE5O+aSxynIray+uF9DJigTEUZu8JJXUbzxK4DDUu1Lm9tpGps4+Prz1m
0gkj13RT/Y/418s2VTw=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
BP/54Wm/GJmb1jy0bxWJJX4aiKyiWPVh4X3VL30BQrmX4PlEsNKzBJH3Qu8IIYERfnFP0ifAgboa
vypMQ5Ed0BrMePGkWIgT6I8hxJCMFpHdkSK7m1giSKyZzFfTOrVqoNFXE+qdzLfY1J5hBWCvouYo
jllavK4N3gF9FLScH2AUWYVMcVth2QPaTAU2NLnAUNH8kgtBjBfc8/KbPPTznD1QNVqvFstzcbTA
hGQ1ETVPvINQ0KqxxAG5PRhtQD4+pC+hr/Tvk+RSvGyBOfy9zE86OXkJiYs9dSFhNiMFmCPL9DBO
se4OxNNC0/7aBtb1mkSEA9YFDYEb9jS7Jasy2A==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
SnzT9DVH3xlEN8nrr2YrlvTO5qj7L22d7WaBcuKyTaiHoIwwFHrC4HQbfs0TAwkdWcOgmJoATPSF
F6qm0KiddbrlERF3MfKUldeGBJtqLdX+zGw7+3JD7S+HB9dIMOFOHy+IiCZp1/Pz8epKpi238cel
rcVoJQKz406wmXDvOo8KsT+XhRLs9BVCrBErPGGXKYDk6NXAp0duOgQE9DbslzMU83M/kUC7uERV
tQW02240peKQFp2elEZC7Tetvgp0TaFTtJiKN45REi8GQUCKGa85JjNIk1qb/+k95TIIP1xrHirc
6iX7qbwnPetv8TVu2NjkZ0WDEK5RXdOXcxBwHA==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
erkR82V0jX8ytva+9MzEs0c75Z7j7TsgxWRLNAUfbbU28i+U9YzuZlSfYU75M0f9jx1gvxtBrfKv
cNHVdkR+i5zfHDZsDwfMEEBhs8wzDCKqe+eex6BBEvlIOesCPXrr2RozQgaQ1PBh/os2Arfu+873
BjsVxFJkbhpzIqlddOo/XZV9Yi+eih7A7pXXEBR6IL7Poo4Ka49MiVQU0xJrDTm+ddOuMPDRRD7g
dsxS/uzdcBcO2myV6g/7YH/C2Ce9s6+UywJN/0JeXSqwA7bsBqqnfFicVAT0lckLopMLiuzK7dsN
EwhFeqoetciFrDIj9+o0xDMWBZhgNP1u68vURA==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
R+BI65BKLT0I9hEtsxGnDyM5XY9gzULeTPOSDXvd3KWOzZJAx6C0xlbyZcFZhAEG/QIK2yd0wAi6
IUWxyF/sx3HsqKjhVi5KxnpuXDBOZVoj811O7JukedFVmDW7OHGtBkuiJ5X5irw7mfsEKRQmF/1i
V6lj9HYHZEjxtDeZjACsLY4y1QxWalSKT4HIMOHznBLL8dLbGMlS+ZmFuFn0gcwZavVl7gTkTtkf
W0gn01A9ru7NKsf+iLX0kj4dgItPu9N2g02M1vWQ9UUQEVvfV7lUc7GY1suibrD8aEkhH9S7lZ7n
bFsT4qxyvzg8ML6v4g4v7N6VuyhEtgFgNd725Q==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
jNUVKiwH68vHsU54idgvKwaVJcoxTUuxfgrQpbpmM/IpesWA3wHsGzYClwAxkKzw3KRnFyQqTWcZ
yj1EQ2CMBxlJ0kyNbZW8OK8pXzeigToZ0U6Aq3Gy+j7wBbhe83wE1Ygn82sK8dHTEulvaRLn/c5r
ispy1s7jMKIvYNzoUuZrgyBQyfaYmdqUia8XlQjFd+VwzhTXKwzvmaqHWyaHjfBKeCooO7+oUxMG
OJg83W54EVe9ronFQ8Wr9EOL8ia7qelCAgyQe/bC0HHCoMAm8apI7sX23iMR/wMiPP5V2bQzycy+
rBX/+SWkqSeIE1FLm+muFPvrE7iLwJaW8d1fzdFFjAZ5aIXArbWNfwbK8S0TczXc9lEzmpb69rwA
UJIrs4alo81qGQ32UFhjuMQjX75O9Od1HWHDj5PFaT/Ja5Ly+bK8Cc3gfO6dCE81m7d+B2JBZ/Hl
tBA19QuOAYwT2EIPOdpaVtCULb33cWODWu3qQFhZMmDzKTb3kwpcr0LL

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
MnzcA2swaxH1LRacKDou0ZmiiMRETbWIdHgeBgyQz7ILronsXLoB/C20WuFNGEVSiL2/51EZ6MXZ
vMHI8fFcMQCJcuTBDBibUMKv6bXI9s8fTbtrBZppbF/R1icG5JYhqmX4aRnv4W/dxJRjI2L35nLN
Y48E9OfgfkD1sr+IRwx8WEKFmUhuk8dLe0VOK7ywe3XEcneYvrz+HhPj16bGmNfMwNnDgZ3gKKZD
hRnys+jzvAX3HyISrErWXhMKrhWMxXeTNFJCqNQ0LWAVHQYwyKnF5xVpyXSuGNSIrva+QXqOrZBG
3VNLirNVtMRiKLfwZeMaqvswkqBDAa53utlAAA==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
d0xXkKtsKM8GvXhDZr16p1+oE3uBtD04BJ76eGGIEj/CFECfHVy9qsJ43oSKjas0+AJr4GFFnVb6
X7gJV6MmX/OboC9ier5joUCGz0mxVzkRZK9a+LPEDcg0K6+cLE36kr+FfxW9Uk2816EHBCMCf5mK
A4eAhSmAb5Nq74F/q0quiG416npbny7faiQ+xmPDfYYiM3UuMKaD4iE8ODlz1w5xThPllWESf3LZ
NTkw6fozyTqZ47vvE21O3dgIGAY1v+C6BwlCK24VwPJa1xs9csY+qTk31j5jjAc1ExlB6QF7t9UH
lk70qdNPWxT87OH7kFT8UvPO1D6BTC3/WkDZfA==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
LYhdzKTvo93uJrAaiP5OfCDuOnu2BSvPnxlv6I7h2n1+xHtj34LNNKzWEgOg9dUV9cYDaHYUjjEt
DKdWcz6mZ61d5qyxAhpv67fc90v7JVgtOAcT94/Yb+AuLxXFcGA6Gic7uoJtUgz6JmTnb22Dxdjc
KuIewDj4IOTfP8XGXKTaF+cNp0CFrQgTAcVSQFyLFxr0I/9h3S+GZLecA7ntEeHEOfCJzPvy0ddi
7MCdQWECLb+fXC0IAn8V95TumcpINiRAX1BHi9IGJ4QoMrb3jOCrPkFhDMTJj2aiImUWdi/l/0QE
d7wcXlgIEYVeoKYUOJ4mqy+zZPUbLNeOPADUDQ==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18704)
`protect data_block
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
M56ORP04eAY=
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PE_IPs_blk_mem_gen_0_2 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 50 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 50 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of PE_IPs_blk_mem_gen_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of PE_IPs_blk_mem_gen_0_2 : entity is "PE_IPs_blk_mem_gen_0_2,blk_mem_gen_v8_4_5,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of PE_IPs_blk_mem_gen_0_2 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of PE_IPs_blk_mem_gen_0_2 : entity is "blk_mem_gen_v8_4_5,Vivado 2022.1";
end PE_IPs_blk_mem_gen_0_2;

architecture STRUCTURE of PE_IPs_blk_mem_gen_0_2 is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 50 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 50 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 10;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 10;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 1;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "1";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     0.0 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "virtexuplusHBM";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "NONE";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "no_coe_file_loaded";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 0;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 1024;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 1024;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of U0 : label is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of U0 : label is 1;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 51;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 51;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 1;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 1024;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 1024;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "NO_CHANGE";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 51;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 51;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "virtexuplusHBM";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of U0 : label is "true";
  attribute x_interface_info : string;
  attribute x_interface_info of clka : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clka : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1";
  attribute x_interface_info of ena : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA EN";
  attribute x_interface_info of addra : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute x_interface_info of dina : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN";
  attribute x_interface_info of douta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
  attribute x_interface_info of wea : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA WE";
begin
U0: entity work.PE_IPs_blk_mem_gen_0_2_blk_mem_gen_v8_4_5
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      addrb(9 downto 0) => B"0000000000",
      clka => clka,
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(50 downto 0) => dina(50 downto 0),
      dinb(50 downto 0) => B"000000000000000000000000000000000000000000000000000",
      douta(50 downto 0) => douta(50 downto 0),
      doutb(50 downto 0) => NLW_U0_doutb_UNCONNECTED(50 downto 0),
      eccpipece => '0',
      ena => ena,
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(9 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(9 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(9 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(9 downto 0),
      s_axi_rdata(50 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(50 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(50 downto 0) => B"000000000000000000000000000000000000000000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => wea(0),
      web(0) => '0'
    );
end STRUCTURE;
