-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Wed Mar 27 23:57:47 2024
-- Host        : COE-CS-crystal running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ PE_IPs_blk_mem_gen_0_2_sim_netlist.vhdl
-- Design      : PE_IPs_blk_mem_gen_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu280-fsvh2892-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
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
  attribute ADDR_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 10;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 10;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 51;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 51;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "[7:0]";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 3;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 52224;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1024;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "ultra";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 51;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 51;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 51;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 51;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 51;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 10;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 10;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 10;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 10;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 51;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 51;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 51;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 51;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 51;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 51;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 52;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 52;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram is
  port (
    douta : out STD_LOGIC_VECTOR ( 50 downto 0 );
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 50 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram is
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
xpm_memory_base_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
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
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20352)
`protect data_block
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
UuZ9
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 50 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 50 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "PE_IPs_blk_mem_gen_0_2,blk_mem_gen_v8_4_5,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "blk_mem_gen_v8_4_5,Vivado 2022.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5
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
