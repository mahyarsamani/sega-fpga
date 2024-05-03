-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Wed Apr 10 16:31:43 2024
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
    dina : in STD_LOGIC_VECTOR ( 287 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 287 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 287 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 287 downto 0 );
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
  attribute BYTE_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 288;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 288;
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
  attribute MEMORY_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 294912;
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
  attribute P_MIN_WIDTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 288;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 288;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 288;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 288;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 288;
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
  attribute P_WIDTH_COL_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 288;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 288;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 288;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 288;
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
  attribute WRITE_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 288;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 288;
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
  attribute rsta_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 288;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 288;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\ : STD_LOGIC;
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
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_EN_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_EN_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDB_WR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDB_WR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
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
  attribute RTL_RAM_BITS of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is 294912;
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
  attribute RTL_RAM_BITS of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is 294912;
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
  attribute RTL_RAM_BITS of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is 294912;
  attribute RTL_RAM_NAME of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_tdp.xpm_memory_tdpram_inst/xpm_memory_base_inst/gen_wr_b.gen_word_narrow.mem_reg_uram_2";
  attribute RTL_RAM_TYPE of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is "RAM_TDP";
  attribute ram_addr_begin of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is 0;
  attribute ram_addr_end of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is 1023;
  attribute ram_slice_begin of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is 144;
  attribute ram_slice_end of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is 215;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is 1023;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is 216;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is 287;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is 1023;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is 216;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is 287;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is 294912;
  attribute RTL_RAM_NAME of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_tdp.xpm_memory_tdpram_inst/xpm_memory_base_inst/gen_wr_b.gen_word_narrow.mem_reg_uram_3";
  attribute RTL_RAM_TYPE of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is "RAM_TDP";
  attribute ram_addr_begin of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is 0;
  attribute ram_addr_end of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is 1023;
  attribute ram_slice_begin of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is 216;
  attribute ram_slice_end of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is 287;
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
      BWE_A(8) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(7) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(6) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(5) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(4) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(3) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(2) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(1) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_B(8) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(7) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(6) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(5) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(4) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(3) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(2) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(1) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
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
      RDB_WR_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      RDB_WR_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
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
      BWE_A(8) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(7) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(6) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(5) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(4) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(3) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(2) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(1) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_B(8) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(7) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(6) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(5) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(4) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(3) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(2) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(1) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
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
      RDB_WR_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      RDB_WR_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
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
      BWE_A(8) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(7) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(6) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(5) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(4) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(3) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(2) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(1) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_B(8) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(7) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(6) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(5) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(4) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(3) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(2) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(1) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
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
      RDB_WR_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      RDB_WR_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
\gen_wr_b.gen_word_narrow.mem_reg_uram_3\: unisim.vcomponents.URAM288
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
      MATRIX_ID => "gen_wr_a.gen_word_narrow.mem_reg_B3_M3",
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
      BWE_A(8) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(7) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(6) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(5) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(4) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(3) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(2) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(1) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_A(0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      BWE_B(8) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(7) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(6) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(5) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(4) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(3) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(2) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(1) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      BWE_B(0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
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
      CAS_OUT_ADDR_A(22 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_A_UNCONNECTED\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_B_UNCONNECTED\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_A_UNCONNECTED\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_B_UNCONNECTED\(8 downto 0),
      CAS_OUT_DBITERR_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DBITERR_A_UNCONNECTED\,
      CAS_OUT_DBITERR_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DBITERR_B_UNCONNECTED\,
      CAS_OUT_DIN_A(71 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_A_UNCONNECTED\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_B_UNCONNECTED\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_A_UNCONNECTED\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_B_UNCONNECTED\(71 downto 0),
      CAS_OUT_EN_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_EN_A_UNCONNECTED\,
      CAS_OUT_EN_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_EN_B_UNCONNECTED\,
      CAS_OUT_RDACCESS_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDACCESS_A_UNCONNECTED\,
      CAS_OUT_RDACCESS_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDACCESS_B_UNCONNECTED\,
      CAS_OUT_RDB_WR_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDB_WR_A_UNCONNECTED\,
      CAS_OUT_RDB_WR_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDB_WR_B_UNCONNECTED\,
      CAS_OUT_SBITERR_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_SBITERR_A_UNCONNECTED\,
      CAS_OUT_SBITERR_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_SBITERR_B_UNCONNECTED\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => dina(287 downto 216),
      DIN_B(71 downto 0) => dinb(287 downto 216),
      DOUT_A(71 downto 0) => douta(287 downto 216),
      DOUT_B(71 downto 0) => doutb(287 downto 216),
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
      RDACCESS_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\,
      RDB_WR_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\,
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wea(0),
      I1 => ena,
      O => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_1_n_0\
    );
\gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => web(0),
      I1 => enb,
      O => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_i_2_n_0\
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
    dina : in STD_LOGIC_VECTOR ( 287 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 287 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 287 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 287 downto 0 );
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
  attribute BYTE_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 288;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 288;
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
  attribute MEMORY_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 294912;
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
  attribute READ_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 288;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 288;
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
  attribute WRITE_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 288;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 288;
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
  attribute BYTE_WRITE_WIDTH_A of xpm_memory_base_inst : label is 288;
  attribute BYTE_WRITE_WIDTH_B of xpm_memory_base_inst : label is 288;
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
  attribute MEMORY_SIZE of xpm_memory_base_inst : label is 294912;
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
  attribute P_MIN_WIDTH_DATA of xpm_memory_base_inst : label is 288;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of xpm_memory_base_inst : label is 288;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of xpm_memory_base_inst : label is 288;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of xpm_memory_base_inst : label is 288;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of xpm_memory_base_inst : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of xpm_memory_base_inst : label is 288;
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
  attribute P_WIDTH_COL_WRITE_A of xpm_memory_base_inst : label is 288;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of xpm_memory_base_inst : label is 288;
  attribute READ_DATA_WIDTH_A of xpm_memory_base_inst : label is 288;
  attribute READ_DATA_WIDTH_B of xpm_memory_base_inst : label is 288;
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
  attribute WRITE_DATA_WIDTH_A of xpm_memory_base_inst : label is 288;
  attribute WRITE_DATA_WIDTH_B of xpm_memory_base_inst : label is 288;
  attribute WRITE_MODE_A_integer : integer;
  attribute WRITE_MODE_A_integer of xpm_memory_base_inst : label is 2;
  attribute WRITE_MODE_B_integer : integer;
  attribute WRITE_MODE_B_integer of xpm_memory_base_inst : label is 2;
  attribute WRITE_PROTECT of xpm_memory_base_inst : label is 1;
  attribute XPM_MODULE of xpm_memory_base_inst : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of xpm_memory_base_inst : label is 288;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of xpm_memory_base_inst : label is 288;
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
      dina(287 downto 0) => dina(287 downto 0),
      dinb(287 downto 0) => dinb(287 downto 0),
      douta(287 downto 0) => douta(287 downto 0),
      doutb(287 downto 0) => doutb(287 downto 0),
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
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 35072)
`protect data_block
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
1bWZN8qx5FyAbjzB+Kgu4+Y=
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
    dina : in STD_LOGIC_VECTOR ( 287 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 287 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 287 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 287 downto 0 )
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
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 287 downto 0 );
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
  attribute C_COUNT_36K_BRAM of U0 : label is "8";
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
  attribute C_READ_WIDTH_A of U0 : label is 288;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 288;
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
  attribute C_WRITE_WIDTH_A of U0 : label is 288;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 288;
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
      dina(287 downto 0) => dina(287 downto 0),
      dinb(287 downto 0) => dinb(287 downto 0),
      douta(287 downto 0) => douta(287 downto 0),
      doutb(287 downto 0) => doutb(287 downto 0),
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
      s_axi_rdata(287 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(287 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(287 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
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
