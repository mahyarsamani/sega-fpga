-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Wed Mar 27 23:57:47 2024
-- Host        : COE-CS-crystal running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ PE_IPs_blk_mem_gen_0_0_sim_netlist.vhdl
-- Design      : PE_IPs_blk_mem_gen_0_0
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
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 71 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 71 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 71 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 71 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 13;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 13;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 72;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 72;
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
  attribute MEMORY_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 589824;
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
  attribute P_MAX_DEPTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 8192;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "ultra";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 72;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 72;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 72;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 72;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 72;
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
  attribute P_WIDTH_ADDR_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 13;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 13;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 13;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 13;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 72;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 72;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 72;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 72;
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
  attribute WRITE_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 72;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 72;
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
  attribute rsta_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 72;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 72;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_7\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_8\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_9\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_AddrA_1\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_AddrB_1\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_BEWB_1\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_BWEA_1\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DinA_1\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DinB_1\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DoutA_1\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DoutB_1\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
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
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_BWE_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_BWE_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_CAS_OUT_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 4095;
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 71;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 589824;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_sp.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_uram_0";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 4095;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 71;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 4096;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 8191;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 71;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 589824;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_sp.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_uram_1";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is "RAM_SP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 4096;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 8191;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 0;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 71;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
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
      CASCADE_ORDER_A => "FIRST",
      CASCADE_ORDER_B => "FIRST",
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
      NUM_UNIQUE_SELF_ADDR_A => 2,
      NUM_UNIQUE_SELF_ADDR_B => 2,
      NUM_URAM_IN_MATRIX => 2,
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
      SELF_MASK_A => B"111" & X"FE",
      SELF_MASK_B => B"111" & X"FE",
      USE_EXT_CE_A => "FALSE",
      USE_EXT_CE_B => "FALSE"
    )
        port map (
      ADDR_A(22 downto 13) => B"0000000000",
      ADDR_A(12 downto 0) => addra(12 downto 0),
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
      CAS_OUT_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_AddrA_1\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_AddrB_1\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_BWEA_1\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_BEWB_1\(8 downto 0),
      CAS_OUT_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_0\,
      CAS_OUT_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_1\,
      CAS_OUT_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DinA_1\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DinB_1\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DoutA_1\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DoutB_1\(71 downto 0),
      CAS_OUT_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_2\,
      CAS_OUT_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_3\,
      CAS_OUT_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_4\,
      CAS_OUT_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_5\,
      CAS_OUT_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_6\,
      CAS_OUT_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_7\,
      CAS_OUT_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_8\,
      CAS_OUT_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_9\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => dina(71 downto 0),
      DIN_B(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      DOUT_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_A_UNCONNECTED\(71 downto 0),
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
\gen_wr_a.gen_word_narrow.mem_reg_uram_1\: unisim.vcomponents.URAM288
    generic map(
      AVG_CONS_INACTIVE_CYCLES => 10,
      BWE_MODE_A => "PARITY_INDEPENDENT",
      BWE_MODE_B => "PARITY_INDEPENDENT",
      CASCADE_ORDER_A => "LAST",
      CASCADE_ORDER_B => "LAST",
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
      NUM_UNIQUE_SELF_ADDR_A => 2,
      NUM_UNIQUE_SELF_ADDR_B => 2,
      NUM_URAM_IN_MATRIX => 2,
      OREG_A => "FALSE",
      OREG_B => "FALSE",
      OREG_ECC_A => "FALSE",
      OREG_ECC_B => "FALSE",
      REG_CAS_A => "FALSE",
      REG_CAS_B => "FALSE",
      RST_MODE_A => "SYNC",
      RST_MODE_B => "SYNC",
      SELF_ADDR_A => B"000" & X"01",
      SELF_ADDR_B => B"000" & X"01",
      SELF_MASK_A => B"111" & X"FE",
      SELF_MASK_B => B"111" & X"FE",
      USE_EXT_CE_A => "FALSE",
      USE_EXT_CE_B => "FALSE"
    )
        port map (
      ADDR_A(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_ADDR_A_UNCONNECTED\(22 downto 0),
      ADDR_B(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_ADDR_B_UNCONNECTED\(22 downto 0),
      BWE_A(8 downto 0) => B"111111111",
      BWE_B(8 downto 0) => B"111111111",
      CAS_IN_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_AddrA_1\(22 downto 0),
      CAS_IN_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_AddrB_1\(22 downto 0),
      CAS_IN_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_BWEA_1\(8 downto 0),
      CAS_IN_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_BEWB_1\(8 downto 0),
      CAS_IN_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_0\,
      CAS_IN_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_1\,
      CAS_IN_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DinA_1\(71 downto 0),
      CAS_IN_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DinB_1\(71 downto 0),
      CAS_IN_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DoutA_1\(71 downto 0),
      CAS_IN_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DoutB_1\(71 downto 0),
      CAS_IN_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_2\,
      CAS_IN_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_3\,
      CAS_IN_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_4\,
      CAS_IN_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_5\,
      CAS_IN_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_6\,
      CAS_IN_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_7\,
      CAS_IN_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_8\,
      CAS_IN_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_9\,
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
      DIN_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DIN_A_UNCONNECTED\(71 downto 0),
      DIN_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DIN_B_UNCONNECTED\(71 downto 0),
      DOUT_A(71 downto 0) => douta(71 downto 0),
      DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DOUT_B_UNCONNECTED\(71 downto 0),
      EN_A => '1',
      EN_B => '1',
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
      RDB_WR_A => '1',
      RDB_WR_B => '1',
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram is
  port (
    douta : out STD_LOGIC_VECTOR ( 71 downto 0 );
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 71 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram is
  signal NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 71 downto 0 );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of xpm_memory_base_inst : label is 13;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of xpm_memory_base_inst : label is 13;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of xpm_memory_base_inst : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of xpm_memory_base_inst : label is 72;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of xpm_memory_base_inst : label is 72;
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
  attribute MEMORY_SIZE of xpm_memory_base_inst : label is 589824;
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
  attribute P_MAX_DEPTH_DATA of xpm_memory_base_inst : label is 8192;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of xpm_memory_base_inst : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of xpm_memory_base_inst : label is "ultra";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of xpm_memory_base_inst : label is 72;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of xpm_memory_base_inst : label is 72;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of xpm_memory_base_inst : label is 72;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of xpm_memory_base_inst : label is 72;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of xpm_memory_base_inst : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of xpm_memory_base_inst : label is 72;
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
  attribute P_WIDTH_ADDR_READ_A of xpm_memory_base_inst : label is 13;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of xpm_memory_base_inst : label is 13;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of xpm_memory_base_inst : label is 13;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of xpm_memory_base_inst : label is 13;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of xpm_memory_base_inst : label is 72;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of xpm_memory_base_inst : label is 72;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of xpm_memory_base_inst : label is 72;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of xpm_memory_base_inst : label is 72;
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
  attribute WRITE_DATA_WIDTH_A of xpm_memory_base_inst : label is 72;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of xpm_memory_base_inst : label is 72;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of xpm_memory_base_inst : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of xpm_memory_base_inst : label is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of xpm_memory_base_inst : label is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xpm_memory_base_inst : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of xpm_memory_base_inst : label is 72;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of xpm_memory_base_inst : label is 72;
begin
xpm_memory_base_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
     port map (
      addra(12 downto 0) => addra(12 downto 0),
      addrb(12 downto 0) => B"0000000000000",
      clka => clka,
      clkb => '0',
      dbiterra => NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED,
      dbiterrb => NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED,
      dina(71 downto 0) => dina(71 downto 0),
      dinb(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      douta(71 downto 0) => douta(71 downto 0),
      doutb(71 downto 0) => NLW_xpm_memory_base_inst_doutb_UNCONNECTED(71 downto 0),
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
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21824)
`protect data_block
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
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
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 71 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 71 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "PE_IPs_blk_mem_gen_0_0,blk_mem_gen_v8_4_5,{}";
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
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 13;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 13;
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
  attribute C_COUNT_36K_BRAM of U0 : label is "16";
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
  attribute C_PRIM_TYPE of U0 : label is 3;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 8192;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 8192;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of U0 : label is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of U0 : label is 1;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 72;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 72;
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
  attribute C_WRITE_DEPTH_A of U0 : label is 8192;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 8192;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "NO_CHANGE";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 72;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 72;
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
      addra(12 downto 0) => addra(12 downto 0),
      addrb(12 downto 0) => B"0000000000000",
      clka => clka,
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(71 downto 0) => dina(71 downto 0),
      dinb(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      douta(71 downto 0) => douta(71 downto 0),
      doutb(71 downto 0) => NLW_U0_doutb_UNCONNECTED(71 downto 0),
      eccpipece => '0',
      ena => ena,
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(12 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(12 downto 0),
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
      s_axi_rdaddrecc(12 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(12 downto 0),
      s_axi_rdata(71 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(71 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
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
