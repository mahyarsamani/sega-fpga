-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Thu Mar 28 19:56:39 2024
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
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
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
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 215 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 215 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
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
  attribute MEMORY_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 243000;
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
  attribute P_MAX_DEPTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1125;
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
  attribute P_WIDTH_ADDR_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
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
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 1124;
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 71;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 243000;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_sp.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_uram_0";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 1124;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 71;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 1124;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 72;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 143;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 243000;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_sp.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_uram_1";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is "RAM_SP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 1124;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 72;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 143;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 1124;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 144;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 215;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 243000;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_sp.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_uram_2";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is "RAM_SP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 1124;
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
      ADDR_A(22 downto 11) => B"000000000000",
      ADDR_A(10 downto 0) => addra(10 downto 0),
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
      ADDR_A(22 downto 11) => B"000000000000",
      ADDR_A(10 downto 0) => addra(10 downto 0),
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
      ADDR_A(22 downto 11) => B"000000000000",
      ADDR_A(10 downto 0) => addra(10 downto 0),
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
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
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
  attribute ADDR_WIDTH_A of xpm_memory_base_inst : label is 11;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of xpm_memory_base_inst : label is 11;
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
  attribute MEMORY_SIZE of xpm_memory_base_inst : label is 243000;
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
  attribute P_MAX_DEPTH_DATA of xpm_memory_base_inst : label is 1125;
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
  attribute P_WIDTH_ADDR_READ_A of xpm_memory_base_inst : label is 11;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of xpm_memory_base_inst : label is 11;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of xpm_memory_base_inst : label is 11;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of xpm_memory_base_inst : label is 11;
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
      addra(10 downto 0) => addra(10 downto 0),
      addrb(10 downto 0) => B"00000000000",
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
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30576)
`protect data_block
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
paXnKbru2jyjUDyk2bwSjf8k1ijB2rjZ
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
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
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
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 215 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 11;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 11;
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
  attribute C_COUNT_36K_BRAM of U0 : label is "9";
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
  attribute C_READ_DEPTH_A of U0 : label is 1125;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 1125;
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
  attribute C_WRITE_DEPTH_A of U0 : label is 1125;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 1125;
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
      addra(10 downto 0) => addra(10 downto 0),
      addrb(10 downto 0) => B"00000000000",
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
      rdaddrecc(10 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(10 downto 0),
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
      s_axi_rdaddrecc(10 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(10 downto 0),
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
