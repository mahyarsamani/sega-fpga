-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Wed Mar 27 23:57:47 2024
-- Host        : COE-CS-crystal running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ PE_IPs_blk_mem_gen_0_1_sim_netlist.vhdl
-- Design      : PE_IPs_blk_mem_gen_0_1
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
    dina : in STD_LOGIC_VECTOR ( 215 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 215 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 215 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 215 downto 0 );
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
  attribute BYTE_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 216;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 216;
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
  attribute MEMORY_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 221184;
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
  attribute P_MIN_WIDTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 216;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 216;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 216;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 216;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 216;
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
  attribute P_WIDTH_COL_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 216;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 216;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 216;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 216;
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
  attribute WRITE_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 216;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 216;
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
  attribute rsta_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 216;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 216;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\ : STD_LOGIC;
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
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_EN_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_EN_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDB_WR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDB_WR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_BWE_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_BWE_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_EN_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_EN_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDB_WR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDB_WR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_BWE_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_BWE_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 1023;
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 71;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 221184;
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
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 71;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 1023;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 72;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 143;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 221184;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_sp.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_uram_1";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is "RAM_SP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 1023;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 72;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 143;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 1023;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 144;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 215;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 221184;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_sp.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_uram_2";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is "RAM_SP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 1023;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 144;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 215;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  doutb(215) <= \<const0>\;
  doutb(214) <= \<const0>\;
  doutb(213) <= \<const0>\;
  doutb(212) <= \<const0>\;
  doutb(211) <= \<const0>\;
  doutb(210) <= \<const0>\;
  doutb(209) <= \<const0>\;
  doutb(208) <= \<const0>\;
  doutb(207) <= \<const0>\;
  doutb(206) <= \<const0>\;
  doutb(205) <= \<const0>\;
  doutb(204) <= \<const0>\;
  doutb(203) <= \<const0>\;
  doutb(202) <= \<const0>\;
  doutb(201) <= \<const0>\;
  doutb(200) <= \<const0>\;
  doutb(199) <= \<const0>\;
  doutb(198) <= \<const0>\;
  doutb(197) <= \<const0>\;
  doutb(196) <= \<const0>\;
  doutb(195) <= \<const0>\;
  doutb(194) <= \<const0>\;
  doutb(193) <= \<const0>\;
  doutb(192) <= \<const0>\;
  doutb(191) <= \<const0>\;
  doutb(190) <= \<const0>\;
  doutb(189) <= \<const0>\;
  doutb(188) <= \<const0>\;
  doutb(187) <= \<const0>\;
  doutb(186) <= \<const0>\;
  doutb(185) <= \<const0>\;
  doutb(184) <= \<const0>\;
  doutb(183) <= \<const0>\;
  doutb(182) <= \<const0>\;
  doutb(181) <= \<const0>\;
  doutb(180) <= \<const0>\;
  doutb(179) <= \<const0>\;
  doutb(178) <= \<const0>\;
  doutb(177) <= \<const0>\;
  doutb(176) <= \<const0>\;
  doutb(175) <= \<const0>\;
  doutb(174) <= \<const0>\;
  doutb(173) <= \<const0>\;
  doutb(172) <= \<const0>\;
  doutb(171) <= \<const0>\;
  doutb(170) <= \<const0>\;
  doutb(169) <= \<const0>\;
  doutb(168) <= \<const0>\;
  doutb(167) <= \<const0>\;
  doutb(166) <= \<const0>\;
  doutb(165) <= \<const0>\;
  doutb(164) <= \<const0>\;
  doutb(163) <= \<const0>\;
  doutb(162) <= \<const0>\;
  doutb(161) <= \<const0>\;
  doutb(160) <= \<const0>\;
  doutb(159) <= \<const0>\;
  doutb(158) <= \<const0>\;
  doutb(157) <= \<const0>\;
  doutb(156) <= \<const0>\;
  doutb(155) <= \<const0>\;
  doutb(154) <= \<const0>\;
  doutb(153) <= \<const0>\;
  doutb(152) <= \<const0>\;
  doutb(151) <= \<const0>\;
  doutb(150) <= \<const0>\;
  doutb(149) <= \<const0>\;
  doutb(148) <= \<const0>\;
  doutb(147) <= \<const0>\;
  doutb(146) <= \<const0>\;
  doutb(145) <= \<const0>\;
  doutb(144) <= \<const0>\;
  doutb(143) <= \<const0>\;
  doutb(142) <= \<const0>\;
  doutb(141) <= \<const0>\;
  doutb(140) <= \<const0>\;
  doutb(139) <= \<const0>\;
  doutb(138) <= \<const0>\;
  doutb(137) <= \<const0>\;
  doutb(136) <= \<const0>\;
  doutb(135) <= \<const0>\;
  doutb(134) <= \<const0>\;
  doutb(133) <= \<const0>\;
  doutb(132) <= \<const0>\;
  doutb(131) <= \<const0>\;
  doutb(130) <= \<const0>\;
  doutb(129) <= \<const0>\;
  doutb(128) <= \<const0>\;
  doutb(127) <= \<const0>\;
  doutb(126) <= \<const0>\;
  doutb(125) <= \<const0>\;
  doutb(124) <= \<const0>\;
  doutb(123) <= \<const0>\;
  doutb(122) <= \<const0>\;
  doutb(121) <= \<const0>\;
  doutb(120) <= \<const0>\;
  doutb(119) <= \<const0>\;
  doutb(118) <= \<const0>\;
  doutb(117) <= \<const0>\;
  doutb(116) <= \<const0>\;
  doutb(115) <= \<const0>\;
  doutb(114) <= \<const0>\;
  doutb(113) <= \<const0>\;
  doutb(112) <= \<const0>\;
  doutb(111) <= \<const0>\;
  doutb(110) <= \<const0>\;
  doutb(109) <= \<const0>\;
  doutb(108) <= \<const0>\;
  doutb(107) <= \<const0>\;
  doutb(106) <= \<const0>\;
  doutb(105) <= \<const0>\;
  doutb(104) <= \<const0>\;
  doutb(103) <= \<const0>\;
  doutb(102) <= \<const0>\;
  doutb(101) <= \<const0>\;
  doutb(100) <= \<const0>\;
  doutb(99) <= \<const0>\;
  doutb(98) <= \<const0>\;
  doutb(97) <= \<const0>\;
  doutb(96) <= \<const0>\;
  doutb(95) <= \<const0>\;
  doutb(94) <= \<const0>\;
  doutb(93) <= \<const0>\;
  doutb(92) <= \<const0>\;
  doutb(91) <= \<const0>\;
  doutb(90) <= \<const0>\;
  doutb(89) <= \<const0>\;
  doutb(88) <= \<const0>\;
  doutb(87) <= \<const0>\;
  doutb(86) <= \<const0>\;
  doutb(85) <= \<const0>\;
  doutb(84) <= \<const0>\;
  doutb(83) <= \<const0>\;
  doutb(82) <= \<const0>\;
  doutb(81) <= \<const0>\;
  doutb(80) <= \<const0>\;
  doutb(79) <= \<const0>\;
  doutb(78) <= \<const0>\;
  doutb(77) <= \<const0>\;
  doutb(76) <= \<const0>\;
  doutb(75) <= \<const0>\;
  doutb(74) <= \<const0>\;
  doutb(73) <= \<const0>\;
  doutb(72) <= \<const0>\;
  doutb(71) <= \<const0>\;
  doutb(70) <= \<const0>\;
  doutb(69) <= \<const0>\;
  doutb(68) <= \<const0>\;
  doutb(67) <= \<const0>\;
  doutb(66) <= \<const0>\;
  doutb(65) <= \<const0>\;
  doutb(64) <= \<const0>\;
  doutb(63) <= \<const0>\;
  doutb(62) <= \<const0>\;
  doutb(61) <= \<const0>\;
  doutb(60) <= \<const0>\;
  doutb(59) <= \<const0>\;
  doutb(58) <= \<const0>\;
  doutb(57) <= \<const0>\;
  doutb(56) <= \<const0>\;
  doutb(55) <= \<const0>\;
  doutb(54) <= \<const0>\;
  doutb(53) <= \<const0>\;
  doutb(52) <= \<const0>\;
  doutb(51) <= \<const0>\;
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
      BWE_A(8) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(7) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(6) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(5) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(4) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(3) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(2) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(1) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
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
      DIN_A(71 downto 0) => dina(71 downto 0),
      DIN_B(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      DOUT_A(71 downto 0) => douta(71 downto 0),
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
      RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      RDB_WR_B => '0',
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_1\: unisim.vcomponents.URAM288
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
      MATRIX_ID => "gen_wr_a.gen_word_narrow.mem_reg_B3_M1",
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
      BWE_A(8) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(7) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(6) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(5) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(4) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(3) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(2) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(1) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
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
      CAS_OUT_ADDR_A(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_ADDR_A_UNCONNECTED\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_ADDR_B_UNCONNECTED\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_BWE_A_UNCONNECTED\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_BWE_B_UNCONNECTED\(8 downto 0),
      CAS_OUT_DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DBITERR_A_UNCONNECTED\,
      CAS_OUT_DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DBITERR_B_UNCONNECTED\,
      CAS_OUT_DIN_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DIN_A_UNCONNECTED\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DIN_B_UNCONNECTED\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DOUT_A_UNCONNECTED\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DOUT_B_UNCONNECTED\(71 downto 0),
      CAS_OUT_EN_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_EN_A_UNCONNECTED\,
      CAS_OUT_EN_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_EN_B_UNCONNECTED\,
      CAS_OUT_RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDACCESS_A_UNCONNECTED\,
      CAS_OUT_RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDACCESS_B_UNCONNECTED\,
      CAS_OUT_RDB_WR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDB_WR_A_UNCONNECTED\,
      CAS_OUT_RDB_WR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDB_WR_B_UNCONNECTED\,
      CAS_OUT_SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_SBITERR_A_UNCONNECTED\,
      CAS_OUT_SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_SBITERR_B_UNCONNECTED\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => dina(143 downto 72),
      DIN_B(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      DOUT_A(71 downto 0) => douta(143 downto 72),
      DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DOUT_B_UNCONNECTED\(71 downto 0),
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
      RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      RDB_WR_B => '0',
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_2\: unisim.vcomponents.URAM288
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
      MATRIX_ID => "gen_wr_a.gen_word_narrow.mem_reg_B3_M2",
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
      BWE_A(8) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(7) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(6) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(5) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(4) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(3) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(2) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(1) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
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
      CAS_OUT_ADDR_A(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_ADDR_A_UNCONNECTED\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_ADDR_B_UNCONNECTED\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_BWE_A_UNCONNECTED\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_BWE_B_UNCONNECTED\(8 downto 0),
      CAS_OUT_DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DBITERR_A_UNCONNECTED\,
      CAS_OUT_DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DBITERR_B_UNCONNECTED\,
      CAS_OUT_DIN_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DIN_A_UNCONNECTED\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DIN_B_UNCONNECTED\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DOUT_A_UNCONNECTED\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DOUT_B_UNCONNECTED\(71 downto 0),
      CAS_OUT_EN_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_EN_A_UNCONNECTED\,
      CAS_OUT_EN_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_EN_B_UNCONNECTED\,
      CAS_OUT_RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDACCESS_A_UNCONNECTED\,
      CAS_OUT_RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDACCESS_B_UNCONNECTED\,
      CAS_OUT_RDB_WR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDB_WR_A_UNCONNECTED\,
      CAS_OUT_RDB_WR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDB_WR_B_UNCONNECTED\,
      CAS_OUT_SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_SBITERR_A_UNCONNECTED\,
      CAS_OUT_SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_CAS_OUT_SBITERR_B_UNCONNECTED\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => dina(215 downto 144),
      DIN_B(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      DOUT_A(71 downto 0) => douta(215 downto 144),
      DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DOUT_B_UNCONNECTED\(71 downto 0),
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
      RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      RDB_WR_B => '0',
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ena,
      I1 => wea(0),
      O => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram is
  port (
    douta : out STD_LOGIC_VECTOR ( 215 downto 0 );
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 215 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram is
  signal NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 215 downto 0 );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of xpm_memory_base_inst : label is 10;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of xpm_memory_base_inst : label is 10;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of xpm_memory_base_inst : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of xpm_memory_base_inst : label is 216;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of xpm_memory_base_inst : label is 216;
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
  attribute MEMORY_SIZE of xpm_memory_base_inst : label is 221184;
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
  attribute P_MIN_WIDTH_DATA of xpm_memory_base_inst : label is 216;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of xpm_memory_base_inst : label is 216;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of xpm_memory_base_inst : label is 216;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of xpm_memory_base_inst : label is 216;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of xpm_memory_base_inst : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of xpm_memory_base_inst : label is 216;
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
  attribute P_WIDTH_COL_WRITE_A of xpm_memory_base_inst : label is 216;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of xpm_memory_base_inst : label is 216;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of xpm_memory_base_inst : label is 216;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of xpm_memory_base_inst : label is 216;
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
  attribute WRITE_DATA_WIDTH_A of xpm_memory_base_inst : label is 216;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of xpm_memory_base_inst : label is 216;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of xpm_memory_base_inst : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of xpm_memory_base_inst : label is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of xpm_memory_base_inst : label is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xpm_memory_base_inst : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of xpm_memory_base_inst : label is 216;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of xpm_memory_base_inst : label is 216;
begin
xpm_memory_base_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      addrb(9 downto 0) => B"0000000000",
      clka => clka,
      clkb => '0',
      dbiterra => NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED,
      dbiterrb => NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED,
      dina(215 downto 0) => dina(215 downto 0),
      dinb(215 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      douta(215 downto 0) => douta(215 downto 0),
      doutb(215 downto 0) => NLW_xpm_memory_base_inst_doutb_UNCONNECTED(215 downto 0),
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
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30496)
`protect data_block
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
RA==
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
    dina : in STD_LOGIC_VECTOR ( 215 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 215 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "PE_IPs_blk_mem_gen_0_1,blk_mem_gen_v8_4_5,{}";
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
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 215 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 215 downto 0 );
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
  attribute C_COUNT_18K_BRAM of U0 : label is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "6";
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
  attribute C_READ_WIDTH_A of U0 : label is 216;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 216;
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
  attribute C_WRITE_WIDTH_A of U0 : label is 216;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 216;
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
      dina(215 downto 0) => dina(215 downto 0),
      dinb(215 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      douta(215 downto 0) => douta(215 downto 0),
      doutb(215 downto 0) => NLW_U0_doutb_UNCONNECTED(215 downto 0),
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
      s_axi_rdata(215 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(215 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(215 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
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
