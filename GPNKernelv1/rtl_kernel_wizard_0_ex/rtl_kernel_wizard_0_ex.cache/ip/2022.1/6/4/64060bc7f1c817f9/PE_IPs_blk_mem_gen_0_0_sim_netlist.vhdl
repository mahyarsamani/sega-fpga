-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Mon Apr  8 11:00:17 2024
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
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
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
    addrb : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 71 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 71 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 14;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 14;
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
  attribute MEMORY_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1179648;
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
  attribute P_MAX_DEPTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 16384;
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
  attribute P_WIDTH_ADDR_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 14;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 14;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 14;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 14;
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
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_7\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_8\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_9\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_AddrA_2\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_AddrB_2\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_BEWB_2\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_BWEA_2\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DinA_2\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DinB_2\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DoutA_2\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DoutB_2\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_7\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_8\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_9\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_AddrA_3\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_AddrB_3\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_BEWB_3\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_BWEA_3\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DinA_3\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DinB_3\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DoutA_3\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DoutB_3\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_EN_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_EN_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDB_WR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDB_WR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
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
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 1179648;
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
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 1179648;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_sp.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_uram_1";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is "RAM_SP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 4096;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 8191;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 0;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 71;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 8192;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 12287;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 71;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 1179648;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_sp.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_uram_2";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is "RAM_SP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 8192;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 12287;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 0;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 71;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 12288;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 16383;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 71;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 1179648;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_sp.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_uram_3";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is "RAM_SP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 12288;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 16383;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 0;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 71;
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
      NUM_UNIQUE_SELF_ADDR_A => 4,
      NUM_UNIQUE_SELF_ADDR_B => 4,
      NUM_URAM_IN_MATRIX => 4,
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
      SELF_MASK_A => B"111" & X"FC",
      SELF_MASK_B => B"111" & X"FC",
      USE_EXT_CE_A => "FALSE",
      USE_EXT_CE_B => "FALSE"
    )
        port map (
      ADDR_A(22 downto 14) => B"000000000",
      ADDR_A(13 downto 0) => addra(13 downto 0),
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
      CASCADE_ORDER_A => "MIDDLE",
      CASCADE_ORDER_B => "MIDDLE",
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
      NUM_UNIQUE_SELF_ADDR_A => 4,
      NUM_UNIQUE_SELF_ADDR_B => 4,
      NUM_URAM_IN_MATRIX => 4,
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
      SELF_MASK_A => B"111" & X"FC",
      SELF_MASK_B => B"111" & X"FC",
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
      CAS_OUT_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_AddrA_2\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_AddrB_2\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_BWEA_2\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_BEWB_2\(8 downto 0),
      CAS_OUT_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_0\,
      CAS_OUT_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_1\,
      CAS_OUT_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DinA_2\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DinB_2\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DoutA_2\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DoutB_2\(71 downto 0),
      CAS_OUT_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_2\,
      CAS_OUT_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_3\,
      CAS_OUT_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_4\,
      CAS_OUT_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_5\,
      CAS_OUT_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_6\,
      CAS_OUT_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_7\,
      CAS_OUT_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_8\,
      CAS_OUT_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_9\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DIN_A_UNCONNECTED\(71 downto 0),
      DIN_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DIN_B_UNCONNECTED\(71 downto 0),
      DOUT_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DOUT_A_UNCONNECTED\(71 downto 0),
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
\gen_wr_a.gen_word_narrow.mem_reg_uram_2\: unisim.vcomponents.URAM288
    generic map(
      AVG_CONS_INACTIVE_CYCLES => 10,
      BWE_MODE_A => "PARITY_INDEPENDENT",
      BWE_MODE_B => "PARITY_INDEPENDENT",
      CASCADE_ORDER_A => "MIDDLE",
      CASCADE_ORDER_B => "MIDDLE",
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
      NUM_UNIQUE_SELF_ADDR_A => 4,
      NUM_UNIQUE_SELF_ADDR_B => 4,
      NUM_URAM_IN_MATRIX => 4,
      OREG_A => "FALSE",
      OREG_B => "FALSE",
      OREG_ECC_A => "FALSE",
      OREG_ECC_B => "FALSE",
      REG_CAS_A => "FALSE",
      REG_CAS_B => "FALSE",
      RST_MODE_A => "SYNC",
      RST_MODE_B => "SYNC",
      SELF_ADDR_A => B"000" & X"02",
      SELF_ADDR_B => B"000" & X"02",
      SELF_MASK_A => B"111" & X"FC",
      SELF_MASK_B => B"111" & X"FC",
      USE_EXT_CE_A => "FALSE",
      USE_EXT_CE_B => "FALSE"
    )
        port map (
      ADDR_A(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_ADDR_A_UNCONNECTED\(22 downto 0),
      ADDR_B(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_ADDR_B_UNCONNECTED\(22 downto 0),
      BWE_A(8 downto 0) => B"111111111",
      BWE_B(8 downto 0) => B"111111111",
      CAS_IN_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_AddrA_2\(22 downto 0),
      CAS_IN_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_AddrB_2\(22 downto 0),
      CAS_IN_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_BWEA_2\(8 downto 0),
      CAS_IN_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_BEWB_2\(8 downto 0),
      CAS_IN_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_0\,
      CAS_IN_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_1\,
      CAS_IN_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DinA_2\(71 downto 0),
      CAS_IN_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DinB_2\(71 downto 0),
      CAS_IN_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DoutA_2\(71 downto 0),
      CAS_IN_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DoutB_2\(71 downto 0),
      CAS_IN_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_2\,
      CAS_IN_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_3\,
      CAS_IN_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_4\,
      CAS_IN_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_5\,
      CAS_IN_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_6\,
      CAS_IN_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_7\,
      CAS_IN_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_8\,
      CAS_IN_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_9\,
      CAS_OUT_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_AddrA_3\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_AddrB_3\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_BWEA_3\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_BEWB_3\(8 downto 0),
      CAS_OUT_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_0\,
      CAS_OUT_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_1\,
      CAS_OUT_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DinA_3\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DinB_3\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DoutA_3\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DoutB_3\(71 downto 0),
      CAS_OUT_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_2\,
      CAS_OUT_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_3\,
      CAS_OUT_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_4\,
      CAS_OUT_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_5\,
      CAS_OUT_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_6\,
      CAS_OUT_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_7\,
      CAS_OUT_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_8\,
      CAS_OUT_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_9\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DIN_A_UNCONNECTED\(71 downto 0),
      DIN_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DIN_B_UNCONNECTED\(71 downto 0),
      DOUT_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DOUT_A_UNCONNECTED\(71 downto 0),
      DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DOUT_B_UNCONNECTED\(71 downto 0),
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
      RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => '1',
      RDB_WR_B => '1',
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_3\: unisim.vcomponents.URAM288
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
      NUM_UNIQUE_SELF_ADDR_A => 4,
      NUM_UNIQUE_SELF_ADDR_B => 4,
      NUM_URAM_IN_MATRIX => 4,
      OREG_A => "FALSE",
      OREG_B => "FALSE",
      OREG_ECC_A => "FALSE",
      OREG_ECC_B => "FALSE",
      REG_CAS_A => "FALSE",
      REG_CAS_B => "FALSE",
      RST_MODE_A => "SYNC",
      RST_MODE_B => "SYNC",
      SELF_ADDR_A => B"000" & X"03",
      SELF_ADDR_B => B"000" & X"03",
      SELF_MASK_A => B"111" & X"FC",
      SELF_MASK_B => B"111" & X"FC",
      USE_EXT_CE_A => "FALSE",
      USE_EXT_CE_B => "FALSE"
    )
        port map (
      ADDR_A(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_ADDR_A_UNCONNECTED\(22 downto 0),
      ADDR_B(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_ADDR_B_UNCONNECTED\(22 downto 0),
      BWE_A(8 downto 0) => B"111111111",
      BWE_B(8 downto 0) => B"111111111",
      CAS_IN_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_AddrA_3\(22 downto 0),
      CAS_IN_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_AddrB_3\(22 downto 0),
      CAS_IN_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_BWEA_3\(8 downto 0),
      CAS_IN_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_BEWB_3\(8 downto 0),
      CAS_IN_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_0\,
      CAS_IN_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_1\,
      CAS_IN_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DinA_3\(71 downto 0),
      CAS_IN_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DinB_3\(71 downto 0),
      CAS_IN_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DoutA_3\(71 downto 0),
      CAS_IN_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DoutB_3\(71 downto 0),
      CAS_IN_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_2\,
      CAS_IN_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_3\,
      CAS_IN_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_4\,
      CAS_IN_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_5\,
      CAS_IN_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_6\,
      CAS_IN_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_7\,
      CAS_IN_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_8\,
      CAS_IN_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_9\,
      CAS_OUT_ADDR_A(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_A_UNCONNECTED\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_B_UNCONNECTED\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_A_UNCONNECTED\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_B_UNCONNECTED\(8 downto 0),
      CAS_OUT_DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DBITERR_A_UNCONNECTED\,
      CAS_OUT_DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DBITERR_B_UNCONNECTED\,
      CAS_OUT_DIN_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_A_UNCONNECTED\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_B_UNCONNECTED\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_A_UNCONNECTED\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_B_UNCONNECTED\(71 downto 0),
      CAS_OUT_EN_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_EN_A_UNCONNECTED\,
      CAS_OUT_EN_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_EN_B_UNCONNECTED\,
      CAS_OUT_RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDACCESS_A_UNCONNECTED\,
      CAS_OUT_RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDACCESS_B_UNCONNECTED\,
      CAS_OUT_RDB_WR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDB_WR_A_UNCONNECTED\,
      CAS_OUT_RDB_WR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDB_WR_B_UNCONNECTED\,
      CAS_OUT_SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_SBITERR_A_UNCONNECTED\,
      CAS_OUT_SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_SBITERR_B_UNCONNECTED\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DIN_A_UNCONNECTED\(71 downto 0),
      DIN_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DIN_B_UNCONNECTED\(71 downto 0),
      DOUT_A(71 downto 0) => douta(71 downto 0),
      DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DOUT_B_UNCONNECTED\(71 downto 0),
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
      RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => '1',
      RDB_WR_B => '1',
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_SBITERR_B_UNCONNECTED\,
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
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
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
  attribute ADDR_WIDTH_A of xpm_memory_base_inst : label is 14;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of xpm_memory_base_inst : label is 14;
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
  attribute MEMORY_SIZE of xpm_memory_base_inst : label is 1179648;
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
  attribute P_MAX_DEPTH_DATA of xpm_memory_base_inst : label is 16384;
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
  attribute P_WIDTH_ADDR_READ_A of xpm_memory_base_inst : label is 14;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of xpm_memory_base_inst : label is 14;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of xpm_memory_base_inst : label is 14;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of xpm_memory_base_inst : label is 14;
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
      addra(13 downto 0) => addra(13 downto 0),
      addrb(13 downto 0) => B"00000000000000",
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
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21888)
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
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
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
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 14;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 14;
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
  attribute C_COUNT_36K_BRAM of U0 : label is "32";
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
  attribute C_READ_DEPTH_A of U0 : label is 16384;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 16384;
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
  attribute C_WRITE_DEPTH_A of U0 : label is 16384;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 16384;
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
      addra(13 downto 0) => addra(13 downto 0),
      addrb(13 downto 0) => B"00000000000000",
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
      rdaddrecc(13 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(13 downto 0),
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
      s_axi_rdaddrecc(13 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(13 downto 0),
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
