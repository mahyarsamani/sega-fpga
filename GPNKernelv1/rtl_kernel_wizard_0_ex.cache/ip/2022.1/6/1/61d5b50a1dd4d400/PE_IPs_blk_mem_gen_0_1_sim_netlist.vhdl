-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Sat Apr  6 15:18:27 2024
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
  attribute MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
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
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_EN_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_EN_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDB_WR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDB_WR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_BWE_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_BWE_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_EN_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_EN_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDB_WR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDB_WR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_BWE_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_BWE_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_EN_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_EN_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDB_WR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDB_WR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_BWE_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_BWE_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is 1023;
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is 71;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ : integer;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is 1023;
  attribute \MEM.PORTB.DATA_LSB\ : integer;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ : integer;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is 71;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is 221184;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_tdp.xpm_memory_tdpram_inst/xpm_memory_base_inst/gen_wr_b.gen_word_narrow.mem_reg_uram_0";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is "RAM_TDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is 1023;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is 71;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is 1023;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is 72;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is 143;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is 1023;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is 72;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is 143;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is 221184;
  attribute RTL_RAM_NAME of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_tdp.xpm_memory_tdpram_inst/xpm_memory_base_inst/gen_wr_b.gen_word_narrow.mem_reg_uram_1";
  attribute RTL_RAM_TYPE of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is "RAM_TDP";
  attribute ram_addr_begin of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is 0;
  attribute ram_addr_end of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is 1023;
  attribute ram_slice_begin of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is 72;
  attribute ram_slice_end of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is 143;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is 1023;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is 144;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is 215;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is 1023;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is 144;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is 215;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is 221184;
  attribute RTL_RAM_NAME of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_tdp.xpm_memory_tdpram_inst/xpm_memory_base_inst/gen_wr_b.gen_word_narrow.mem_reg_uram_2";
  attribute RTL_RAM_TYPE of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is "RAM_TDP";
  attribute ram_addr_begin of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is 0;
  attribute ram_addr_end of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is 1023;
  attribute ram_slice_begin of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is 144;
  attribute ram_slice_end of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is 215;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_wr_b.gen_word_narrow.mem_reg_uram_0\: unisim.vcomponents.URAM288
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
      ADDR_B(22 downto 10) => B"0000000000000",
      ADDR_B(9 downto 0) => addrb(9 downto 0),
      BWE_A(8) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(7) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(6) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(5) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(4) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(3) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(2) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(1) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_B(8) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\,
      BWE_B(7) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\,
      BWE_B(6) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\,
      BWE_B(5) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\,
      BWE_B(4) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\,
      BWE_B(3) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\,
      BWE_B(2) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\,
      BWE_B(1) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\,
      BWE_B(0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\,
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
      CAS_OUT_ADDR_A(22 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_ADDR_A_UNCONNECTED\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_ADDR_B_UNCONNECTED\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_BWE_A_UNCONNECTED\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_BWE_B_UNCONNECTED\(8 downto 0),
      CAS_OUT_DBITERR_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DBITERR_A_UNCONNECTED\,
      CAS_OUT_DBITERR_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DBITERR_B_UNCONNECTED\,
      CAS_OUT_DIN_A(71 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DIN_A_UNCONNECTED\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DIN_B_UNCONNECTED\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DOUT_A_UNCONNECTED\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DOUT_B_UNCONNECTED\(71 downto 0),
      CAS_OUT_EN_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_EN_A_UNCONNECTED\,
      CAS_OUT_EN_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_EN_B_UNCONNECTED\,
      CAS_OUT_RDACCESS_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDACCESS_A_UNCONNECTED\,
      CAS_OUT_RDACCESS_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDACCESS_B_UNCONNECTED\,
      CAS_OUT_RDB_WR_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDB_WR_A_UNCONNECTED\,
      CAS_OUT_RDB_WR_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDB_WR_B_UNCONNECTED\,
      CAS_OUT_SBITERR_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_SBITERR_A_UNCONNECTED\,
      CAS_OUT_SBITERR_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_CAS_OUT_SBITERR_B_UNCONNECTED\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => dina(71 downto 0),
      DIN_B(71 downto 0) => dinb(71 downto 0),
      DOUT_A(71 downto 0) => douta(71 downto 0),
      DOUT_B(71 downto 0) => doutb(71 downto 0),
      EN_A => ena,
      EN_B => enb,
      INJECT_DBITERR_A => '0',
      INJECT_DBITERR_B => '0',
      INJECT_SBITERR_A => '0',
      INJECT_SBITERR_B => '0',
      OREG_CE_A => '1',
      OREG_CE_B => '1',
      OREG_ECC_CE_A => '1',
      OREG_ECC_CE_B => '1',
      RDACCESS_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      RDB_WR_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\,
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
\gen_wr_b.gen_word_narrow.mem_reg_uram_1\: unisim.vcomponents.URAM288
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
      ADDR_B(22 downto 10) => B"0000000000000",
      ADDR_B(9 downto 0) => addrb(9 downto 0),
      BWE_A(8) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(7) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(6) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(5) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(4) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(3) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(2) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(1) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_B(8) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\,
      BWE_B(7) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\,
      BWE_B(6) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\,
      BWE_B(5) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\,
      BWE_B(4) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\,
      BWE_B(3) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\,
      BWE_B(2) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\,
      BWE_B(1) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\,
      BWE_B(0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\,
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
      CAS_OUT_ADDR_A(22 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_ADDR_A_UNCONNECTED\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_ADDR_B_UNCONNECTED\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_BWE_A_UNCONNECTED\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_BWE_B_UNCONNECTED\(8 downto 0),
      CAS_OUT_DBITERR_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DBITERR_A_UNCONNECTED\,
      CAS_OUT_DBITERR_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DBITERR_B_UNCONNECTED\,
      CAS_OUT_DIN_A(71 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DIN_A_UNCONNECTED\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DIN_B_UNCONNECTED\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DOUT_A_UNCONNECTED\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DOUT_B_UNCONNECTED\(71 downto 0),
      CAS_OUT_EN_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_EN_A_UNCONNECTED\,
      CAS_OUT_EN_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_EN_B_UNCONNECTED\,
      CAS_OUT_RDACCESS_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDACCESS_A_UNCONNECTED\,
      CAS_OUT_RDACCESS_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDACCESS_B_UNCONNECTED\,
      CAS_OUT_RDB_WR_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDB_WR_A_UNCONNECTED\,
      CAS_OUT_RDB_WR_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_RDB_WR_B_UNCONNECTED\,
      CAS_OUT_SBITERR_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_SBITERR_A_UNCONNECTED\,
      CAS_OUT_SBITERR_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_CAS_OUT_SBITERR_B_UNCONNECTED\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => dina(143 downto 72),
      DIN_B(71 downto 0) => dinb(143 downto 72),
      DOUT_A(71 downto 0) => douta(143 downto 72),
      DOUT_B(71 downto 0) => doutb(143 downto 72),
      EN_A => ena,
      EN_B => enb,
      INJECT_DBITERR_A => '0',
      INJECT_DBITERR_B => '0',
      INJECT_SBITERR_A => '0',
      INJECT_SBITERR_B => '0',
      OREG_CE_A => '1',
      OREG_CE_B => '1',
      OREG_ECC_CE_A => '1',
      OREG_ECC_CE_B => '1',
      RDACCESS_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      RDB_WR_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\,
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
\gen_wr_b.gen_word_narrow.mem_reg_uram_2\: unisim.vcomponents.URAM288
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
      ADDR_B(22 downto 10) => B"0000000000000",
      ADDR_B(9 downto 0) => addrb(9 downto 0),
      BWE_A(8) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(7) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(6) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(5) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(4) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(3) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(2) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(1) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_A(0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      BWE_B(8) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\,
      BWE_B(7) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\,
      BWE_B(6) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\,
      BWE_B(5) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\,
      BWE_B(4) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\,
      BWE_B(3) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\,
      BWE_B(2) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\,
      BWE_B(1) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\,
      BWE_B(0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\,
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
      CAS_OUT_ADDR_A(22 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_ADDR_A_UNCONNECTED\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_ADDR_B_UNCONNECTED\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_BWE_A_UNCONNECTED\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_BWE_B_UNCONNECTED\(8 downto 0),
      CAS_OUT_DBITERR_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DBITERR_A_UNCONNECTED\,
      CAS_OUT_DBITERR_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DBITERR_B_UNCONNECTED\,
      CAS_OUT_DIN_A(71 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DIN_A_UNCONNECTED\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DIN_B_UNCONNECTED\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DOUT_A_UNCONNECTED\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_DOUT_B_UNCONNECTED\(71 downto 0),
      CAS_OUT_EN_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_EN_A_UNCONNECTED\,
      CAS_OUT_EN_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_EN_B_UNCONNECTED\,
      CAS_OUT_RDACCESS_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDACCESS_A_UNCONNECTED\,
      CAS_OUT_RDACCESS_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDACCESS_B_UNCONNECTED\,
      CAS_OUT_RDB_WR_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDB_WR_A_UNCONNECTED\,
      CAS_OUT_RDB_WR_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_RDB_WR_B_UNCONNECTED\,
      CAS_OUT_SBITERR_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_SBITERR_A_UNCONNECTED\,
      CAS_OUT_SBITERR_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_CAS_OUT_SBITERR_B_UNCONNECTED\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => dina(215 downto 144),
      DIN_B(71 downto 0) => dinb(215 downto 144),
      DOUT_A(71 downto 0) => douta(215 downto 144),
      DOUT_B(71 downto 0) => doutb(215 downto 144),
      EN_A => ena,
      EN_B => enb,
      INJECT_DBITERR_A => '0',
      INJECT_DBITERR_B => '0',
      INJECT_SBITERR_A => '0',
      INJECT_SBITERR_B => '0',
      OREG_CE_A => '1',
      OREG_CE_B => '1',
      OREG_ECC_CE_A => '1',
      OREG_ECC_CE_B => '1',
      RDACCESS_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\,
      RDB_WR_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\,
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wea(0),
      I1 => ena,
      O => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_1_n_0\
    );
\gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => web(0),
      I1 => enb,
      O => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram is
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
  attribute ADDR_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 10;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 10;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 216;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 216;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 0;
  attribute CLOCKING_MODE : string;
  attribute CLOCKING_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is "common_clock";
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is "[7:0]";
  attribute ECC_MODE : string;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is "no_ecc";
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is "true";
  attribute MEMORY_PRIMITIVE : string;
  attribute MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is "ultraram";
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 221184;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 0;
  attribute P_CLOCKING_MODE : integer;
  attribute P_CLOCKING_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 0;
  attribute P_MEMORY_OPTIMIZATION : integer;
  attribute P_MEMORY_OPTIMIZATION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 1;
  attribute P_MEMORY_PRIMITIVE : integer;
  attribute P_MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 3;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 0;
  attribute P_WRITE_MODE_A : integer;
  attribute P_WRITE_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 2;
  attribute P_WRITE_MODE_B : integer;
  attribute P_WRITE_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 2;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 216;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 216;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 1;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 1;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 1;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 0;
  attribute WAKEUP_TIME : string;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is "disable_sleep";
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 216;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 216;
  attribute WRITE_MODE_A : string;
  attribute WRITE_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is "no_change";
  attribute WRITE_MODE_B : string;
  attribute WRITE_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is "no_change";
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is "true";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED : STD_LOGIC;
  attribute ADDR_WIDTH_A of xpm_memory_base_inst : label is 10;
  attribute ADDR_WIDTH_B of xpm_memory_base_inst : label is 10;
  attribute AUTO_SLEEP_TIME of xpm_memory_base_inst : label is 0;
  attribute BYTE_WRITE_WIDTH_A of xpm_memory_base_inst : label is 216;
  attribute BYTE_WRITE_WIDTH_B of xpm_memory_base_inst : label is 216;
  attribute CASCADE_HEIGHT of xpm_memory_base_inst : label is 0;
  attribute CLOCKING_MODE_integer : integer;
  attribute CLOCKING_MODE_integer of xpm_memory_base_inst : label is 0;
  attribute ECC_BIT_RANGE of xpm_memory_base_inst : label is "[7:0]";
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of xpm_memory_base_inst : label is 0;
  attribute ECC_TYPE of xpm_memory_base_inst : label is "NONE";
  attribute IGNORE_INIT_SYNTH of xpm_memory_base_inst : label is 0;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of xpm_memory_base_inst : label is "soft";
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of xpm_memory_base_inst : label is 0;
  attribute MEMORY_INIT_FILE of xpm_memory_base_inst : label is "none";
  attribute MEMORY_INIT_PARAM of xpm_memory_base_inst : label is "";
  attribute MEMORY_OPTIMIZATION of xpm_memory_base_inst : label is "true";
  attribute MEMORY_PRIMITIVE_integer : integer;
  attribute MEMORY_PRIMITIVE_integer of xpm_memory_base_inst : label is 3;
  attribute MEMORY_SIZE of xpm_memory_base_inst : label is 221184;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of xpm_memory_base_inst : label is 2;
  attribute MESSAGE_CONTROL of xpm_memory_base_inst : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of xpm_memory_base_inst : label is 0;
  attribute P_ECC_MODE_string : string;
  attribute P_ECC_MODE_string of xpm_memory_base_inst : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of xpm_memory_base_inst : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of xpm_memory_base_inst : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of xpm_memory_base_inst : label is 1024;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of xpm_memory_base_inst : label is "yes";
  attribute P_MEMORY_PRIMITIVE_string : string;
  attribute P_MEMORY_PRIMITIVE_string of xpm_memory_base_inst : label is "ultra";
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
  attribute READ_DATA_WIDTH_A of xpm_memory_base_inst : label is 216;
  attribute READ_DATA_WIDTH_B of xpm_memory_base_inst : label is 216;
  attribute READ_LATENCY_A of xpm_memory_base_inst : label is 1;
  attribute READ_LATENCY_B of xpm_memory_base_inst : label is 1;
  attribute READ_RESET_VALUE_A of xpm_memory_base_inst : label is "0";
  attribute READ_RESET_VALUE_B of xpm_memory_base_inst : label is "0";
  attribute RST_MODE_A of xpm_memory_base_inst : label is "SYNC";
  attribute RST_MODE_B of xpm_memory_base_inst : label is "SYNC";
  attribute SIM_ASSERT_CHK of xpm_memory_base_inst : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT of xpm_memory_base_inst : label is 0;
  attribute USE_MEM_INIT of xpm_memory_base_inst : label is 1;
  attribute USE_MEM_INIT_MMI of xpm_memory_base_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of xpm_memory_base_inst : label is 0;
  attribute WAKEUP_TIME_integer : integer;
  attribute WAKEUP_TIME_integer of xpm_memory_base_inst : label is 0;
  attribute WRITE_DATA_WIDTH_A of xpm_memory_base_inst : label is 216;
  attribute WRITE_DATA_WIDTH_B of xpm_memory_base_inst : label is 216;
  attribute WRITE_MODE_A_integer : integer;
  attribute WRITE_MODE_A_integer of xpm_memory_base_inst : label is 2;
  attribute WRITE_MODE_B_integer : integer;
  attribute WRITE_MODE_B_integer of xpm_memory_base_inst : label is 2;
  attribute WRITE_PROTECT of xpm_memory_base_inst : label is 1;
  attribute XPM_MODULE of xpm_memory_base_inst : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of xpm_memory_base_inst : label is 216;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of xpm_memory_base_inst : label is 216;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
xpm_memory_base_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      addrb(9 downto 0) => addrb(9 downto 0),
      clka => clka,
      clkb => '0',
      dbiterra => NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED,
      dbiterrb => NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED,
      dina(215 downto 0) => dina(215 downto 0),
      dinb(215 downto 0) => dinb(215 downto 0),
      douta(215 downto 0) => douta(215 downto 0),
      doutb(215 downto 0) => doutb(215 downto 0),
      ena => ena,
      enb => enb,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rstb => '0',
      sbiterra => NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED,
      sbiterrb => NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED,
      sleep => sleep,
      wea(0) => wea(0),
      web(0) => web(0)
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
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 32624)
`protect data_block
+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
euU7gJUl8GKkzuOkfGFa9g+FgSs=
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
    douta : out STD_LOGIC_VECTOR ( 215 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 215 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 215 downto 0 )
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
  attribute C_HAS_ENB of U0 : label is 1;
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
  attribute C_MEM_TYPE of U0 : label is 2;
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
  attribute C_WRITE_MODE_B of U0 : label is "NO_CHANGE";
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
  attribute x_interface_info of clkb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK";
  attribute x_interface_parameter of clkb : signal is "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1";
  attribute x_interface_info of ena : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA EN";
  attribute x_interface_info of enb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB EN";
  attribute x_interface_info of addra : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute x_interface_info of addrb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR";
  attribute x_interface_info of dina : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN";
  attribute x_interface_info of dinb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN";
  attribute x_interface_info of douta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
  attribute x_interface_info of doutb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT";
  attribute x_interface_info of wea : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA WE";
  attribute x_interface_info of web : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB WE";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      addrb(9 downto 0) => addrb(9 downto 0),
      clka => clka,
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(215 downto 0) => dina(215 downto 0),
      dinb(215 downto 0) => dinb(215 downto 0),
      douta(215 downto 0) => douta(215 downto 0),
      doutb(215 downto 0) => doutb(215 downto 0),
      eccpipece => '0',
      ena => ena,
      enb => enb,
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
      web(0) => web(0)
    );
end STRUCTURE;
