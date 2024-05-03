-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Sat Apr  6 15:18:27 2024
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
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_2_n_0\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_0\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_1\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_2\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_3\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_4\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_5\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_6\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_7\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_8\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_9\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_AddrA_1\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_AddrB_1\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_BEWB_1\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_BWEA_1\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_DinA_1\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_DinB_1\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_DoutA_1\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_DoutB_1\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_0\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_1\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_2\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_3\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_4\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_5\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_6\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_7\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_8\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_9\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_AddrA_2\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_AddrB_2\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_BEWB_2\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_BWEA_2\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_DinA_2\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_DinB_2\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_DoutA_2\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_DoutB_2\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_0\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_1\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_2\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_3\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_4\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_5\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_6\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_7\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_8\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_9\ : STD_LOGIC;
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_AddrA_3\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_AddrB_3\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_BEWB_3\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_BWEA_3\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_DinA_3\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_DinB_3\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_DoutA_3\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_DoutB_3\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
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
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is 4095;
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is 71;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ : integer;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is 4095;
  attribute \MEM.PORTB.DATA_LSB\ : integer;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ : integer;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is 71;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is "{SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is 1179648;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_tdp.xpm_memory_tdpram_inst/xpm_memory_base_inst/gen_wr_b.gen_word_narrow.mem_reg_uram_0";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is "RAM_TDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is 4095;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_b.gen_word_narrow.mem_reg_uram_0\ : label is 71;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is 4096;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is 8191;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is 71;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is 4096;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is 8191;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is 71;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is "{SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is 1179648;
  attribute RTL_RAM_NAME of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_tdp.xpm_memory_tdpram_inst/xpm_memory_base_inst/gen_wr_b.gen_word_narrow.mem_reg_uram_1";
  attribute RTL_RAM_TYPE of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is "RAM_TDP";
  attribute ram_addr_begin of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is 4096;
  attribute ram_addr_end of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is 8191;
  attribute ram_slice_begin of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is 0;
  attribute ram_slice_end of \gen_wr_b.gen_word_narrow.mem_reg_uram_1\ : label is 71;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is 8192;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is 12287;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is 71;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is 8192;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is 12287;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is 71;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is "{SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is 1179648;
  attribute RTL_RAM_NAME of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_tdp.xpm_memory_tdpram_inst/xpm_memory_base_inst/gen_wr_b.gen_word_narrow.mem_reg_uram_2";
  attribute RTL_RAM_TYPE of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is "RAM_TDP";
  attribute ram_addr_begin of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is 8192;
  attribute ram_addr_end of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is 12287;
  attribute ram_slice_begin of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is 0;
  attribute ram_slice_end of \gen_wr_b.gen_word_narrow.mem_reg_uram_2\ : label is 71;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is 12288;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is 16383;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is 71;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is 12288;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is 16383;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is 71;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is "{SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is 1179648;
  attribute RTL_RAM_NAME of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_tdp.xpm_memory_tdpram_inst/xpm_memory_base_inst/gen_wr_b.gen_word_narrow.mem_reg_uram_3";
  attribute RTL_RAM_TYPE of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is "RAM_TDP";
  attribute ram_addr_begin of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is 12288;
  attribute ram_addr_end of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is 16383;
  attribute ram_slice_begin of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is 0;
  attribute ram_slice_end of \gen_wr_b.gen_word_narrow.mem_reg_uram_3\ : label is 71;
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
      ADDR_B(22 downto 14) => B"000000000",
      ADDR_B(13 downto 0) => addrb(13 downto 0),
      BWE_A(8) => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_1_n_0\,
      BWE_A(7) => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_1_n_0\,
      BWE_A(6) => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_1_n_0\,
      BWE_A(5) => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_1_n_0\,
      BWE_A(4) => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_1_n_0\,
      BWE_A(3) => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_1_n_0\,
      BWE_A(2) => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_1_n_0\,
      BWE_A(1) => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_1_n_0\,
      BWE_A(0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_1_n_0\,
      BWE_B(8) => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_2_n_0\,
      BWE_B(7) => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_2_n_0\,
      BWE_B(6) => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_2_n_0\,
      BWE_B(5) => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_2_n_0\,
      BWE_B(4) => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_2_n_0\,
      BWE_B(3) => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_2_n_0\,
      BWE_B(2) => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_2_n_0\,
      BWE_B(1) => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_2_n_0\,
      BWE_B(0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_2_n_0\,
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
      CAS_OUT_ADDR_A(22 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_AddrA_1\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_AddrB_1\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_BWEA_1\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_BEWB_1\(8 downto 0),
      CAS_OUT_DBITERR_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_0\,
      CAS_OUT_DBITERR_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_1\,
      CAS_OUT_DIN_A(71 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_DinA_1\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_DinB_1\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_DoutA_1\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_DoutB_1\(71 downto 0),
      CAS_OUT_EN_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_2\,
      CAS_OUT_EN_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_3\,
      CAS_OUT_RDACCESS_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_4\,
      CAS_OUT_RDACCESS_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_5\,
      CAS_OUT_RDB_WR_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_6\,
      CAS_OUT_RDB_WR_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_7\,
      CAS_OUT_SBITERR_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_8\,
      CAS_OUT_SBITERR_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_9\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => dina(71 downto 0),
      DIN_B(71 downto 0) => dinb(71 downto 0),
      DOUT_A(71 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_DOUT_A_UNCONNECTED\(71 downto 0),
      DOUT_B(71 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_DOUT_B_UNCONNECTED\(71 downto 0),
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
      RDB_WR_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_1_n_0\,
      RDB_WR_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_2_n_0\,
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_0_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
\gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wea(0),
      I1 => ena,
      O => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_1_n_0\
    );
\gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => web(0),
      I1 => enb,
      O => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_i_2_n_0\
    );
\gen_wr_b.gen_word_narrow.mem_reg_uram_1\: unisim.vcomponents.URAM288
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
      ADDR_A(22 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_ADDR_A_UNCONNECTED\(22 downto 0),
      ADDR_B(22 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_ADDR_B_UNCONNECTED\(22 downto 0),
      BWE_A(8 downto 0) => B"111111111",
      BWE_B(8 downto 0) => B"111111111",
      CAS_IN_ADDR_A(22 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_AddrA_1\(22 downto 0),
      CAS_IN_ADDR_B(22 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_AddrB_1\(22 downto 0),
      CAS_IN_BWE_A(8 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_BWEA_1\(8 downto 0),
      CAS_IN_BWE_B(8 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_BEWB_1\(8 downto 0),
      CAS_IN_DBITERR_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_0\,
      CAS_IN_DBITERR_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_1\,
      CAS_IN_DIN_A(71 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_DinA_1\(71 downto 0),
      CAS_IN_DIN_B(71 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_DinB_1\(71 downto 0),
      CAS_IN_DOUT_A(71 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_DoutA_1\(71 downto 0),
      CAS_IN_DOUT_B(71 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_Cas_DoutB_1\(71 downto 0),
      CAS_IN_EN_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_2\,
      CAS_IN_EN_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_3\,
      CAS_IN_RDACCESS_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_4\,
      CAS_IN_RDACCESS_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_5\,
      CAS_IN_RDB_WR_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_6\,
      CAS_IN_RDB_WR_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_7\,
      CAS_IN_SBITERR_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_8\,
      CAS_IN_SBITERR_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_0_n_9\,
      CAS_OUT_ADDR_A(22 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_AddrA_2\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_AddrB_2\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_BWEA_2\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_BEWB_2\(8 downto 0),
      CAS_OUT_DBITERR_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_0\,
      CAS_OUT_DBITERR_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_1\,
      CAS_OUT_DIN_A(71 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_DinA_2\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_DinB_2\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_DoutA_2\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_DoutB_2\(71 downto 0),
      CAS_OUT_EN_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_2\,
      CAS_OUT_EN_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_3\,
      CAS_OUT_RDACCESS_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_4\,
      CAS_OUT_RDACCESS_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_5\,
      CAS_OUT_RDB_WR_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_6\,
      CAS_OUT_RDB_WR_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_7\,
      CAS_OUT_SBITERR_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_8\,
      CAS_OUT_SBITERR_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_9\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DIN_A_UNCONNECTED\(71 downto 0),
      DIN_B(71 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DIN_B_UNCONNECTED\(71 downto 0),
      DOUT_A(71 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DOUT_A_UNCONNECTED\(71 downto 0),
      DOUT_B(71 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_DOUT_B_UNCONNECTED\(71 downto 0),
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
      RDACCESS_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_1_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => '1',
      RDB_WR_B => '1',
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
      ADDR_A(22 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_ADDR_A_UNCONNECTED\(22 downto 0),
      ADDR_B(22 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_ADDR_B_UNCONNECTED\(22 downto 0),
      BWE_A(8 downto 0) => B"111111111",
      BWE_B(8 downto 0) => B"111111111",
      CAS_IN_ADDR_A(22 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_AddrA_2\(22 downto 0),
      CAS_IN_ADDR_B(22 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_AddrB_2\(22 downto 0),
      CAS_IN_BWE_A(8 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_BWEA_2\(8 downto 0),
      CAS_IN_BWE_B(8 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_BEWB_2\(8 downto 0),
      CAS_IN_DBITERR_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_0\,
      CAS_IN_DBITERR_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_1\,
      CAS_IN_DIN_A(71 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_DinA_2\(71 downto 0),
      CAS_IN_DIN_B(71 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_DinB_2\(71 downto 0),
      CAS_IN_DOUT_A(71 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_DoutA_2\(71 downto 0),
      CAS_IN_DOUT_B(71 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_Cas_DoutB_2\(71 downto 0),
      CAS_IN_EN_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_2\,
      CAS_IN_EN_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_3\,
      CAS_IN_RDACCESS_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_4\,
      CAS_IN_RDACCESS_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_5\,
      CAS_IN_RDB_WR_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_6\,
      CAS_IN_RDB_WR_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_7\,
      CAS_IN_SBITERR_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_8\,
      CAS_IN_SBITERR_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_1_n_9\,
      CAS_OUT_ADDR_A(22 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_AddrA_3\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_AddrB_3\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_BWEA_3\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_BEWB_3\(8 downto 0),
      CAS_OUT_DBITERR_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_0\,
      CAS_OUT_DBITERR_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_1\,
      CAS_OUT_DIN_A(71 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_DinA_3\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_DinB_3\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_DoutA_3\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_DoutB_3\(71 downto 0),
      CAS_OUT_EN_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_2\,
      CAS_OUT_EN_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_3\,
      CAS_OUT_RDACCESS_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_4\,
      CAS_OUT_RDACCESS_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_5\,
      CAS_OUT_RDB_WR_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_6\,
      CAS_OUT_RDB_WR_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_7\,
      CAS_OUT_SBITERR_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_8\,
      CAS_OUT_SBITERR_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_9\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DIN_A_UNCONNECTED\(71 downto 0),
      DIN_B(71 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DIN_B_UNCONNECTED\(71 downto 0),
      DOUT_A(71 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DOUT_A_UNCONNECTED\(71 downto 0),
      DOUT_B(71 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_DOUT_B_UNCONNECTED\(71 downto 0),
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
      RDACCESS_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_2_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => '1',
      RDB_WR_B => '1',
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
      ADDR_A(22 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_ADDR_A_UNCONNECTED\(22 downto 0),
      ADDR_B(22 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_ADDR_B_UNCONNECTED\(22 downto 0),
      BWE_A(8 downto 0) => B"111111111",
      BWE_B(8 downto 0) => B"111111111",
      CAS_IN_ADDR_A(22 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_AddrA_3\(22 downto 0),
      CAS_IN_ADDR_B(22 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_AddrB_3\(22 downto 0),
      CAS_IN_BWE_A(8 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_BWEA_3\(8 downto 0),
      CAS_IN_BWE_B(8 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_BEWB_3\(8 downto 0),
      CAS_IN_DBITERR_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_0\,
      CAS_IN_DBITERR_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_1\,
      CAS_IN_DIN_A(71 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_DinA_3\(71 downto 0),
      CAS_IN_DIN_B(71 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_DinB_3\(71 downto 0),
      CAS_IN_DOUT_A(71 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_DoutA_3\(71 downto 0),
      CAS_IN_DOUT_B(71 downto 0) => \gen_wr_b.gen_word_narrow.mem_reg_uram_3_Cas_DoutB_3\(71 downto 0),
      CAS_IN_EN_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_2\,
      CAS_IN_EN_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_3\,
      CAS_IN_RDACCESS_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_4\,
      CAS_IN_RDACCESS_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_5\,
      CAS_IN_RDB_WR_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_6\,
      CAS_IN_RDB_WR_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_7\,
      CAS_IN_SBITERR_A => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_8\,
      CAS_IN_SBITERR_B => \gen_wr_b.gen_word_narrow.mem_reg_uram_2_n_9\,
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
      DIN_A(71 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_DIN_A_UNCONNECTED\(71 downto 0),
      DIN_B(71 downto 0) => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_DIN_B_UNCONNECTED\(71 downto 0),
      DOUT_A(71 downto 0) => douta(71 downto 0),
      DOUT_B(71 downto 0) => doutb(71 downto 0),
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
      RDACCESS_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => '1',
      RDB_WR_B => '1',
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_b.gen_word_narrow.mem_reg_uram_3_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
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
  attribute ADDR_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 14;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 14;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 72;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 72;
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
  attribute MEMORY_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 1179648;
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
  attribute READ_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 72;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 72;
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
  attribute WRITE_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 72;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 72;
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
  attribute ADDR_WIDTH_A of xpm_memory_base_inst : label is 14;
  attribute ADDR_WIDTH_B of xpm_memory_base_inst : label is 14;
  attribute AUTO_SLEEP_TIME of xpm_memory_base_inst : label is 0;
  attribute BYTE_WRITE_WIDTH_A of xpm_memory_base_inst : label is 72;
  attribute BYTE_WRITE_WIDTH_B of xpm_memory_base_inst : label is 72;
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
  attribute MEMORY_SIZE of xpm_memory_base_inst : label is 1179648;
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
  attribute P_MAX_DEPTH_DATA of xpm_memory_base_inst : label is 16384;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of xpm_memory_base_inst : label is "yes";
  attribute P_MEMORY_PRIMITIVE_string : string;
  attribute P_MEMORY_PRIMITIVE_string of xpm_memory_base_inst : label is "ultra";
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
  attribute READ_DATA_WIDTH_A of xpm_memory_base_inst : label is 72;
  attribute READ_DATA_WIDTH_B of xpm_memory_base_inst : label is 72;
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
  attribute WRITE_DATA_WIDTH_A of xpm_memory_base_inst : label is 72;
  attribute WRITE_DATA_WIDTH_B of xpm_memory_base_inst : label is 72;
  attribute WRITE_MODE_A_integer : integer;
  attribute WRITE_MODE_A_integer of xpm_memory_base_inst : label is 2;
  attribute WRITE_MODE_B_integer : integer;
  attribute WRITE_MODE_B_integer of xpm_memory_base_inst : label is 2;
  attribute WRITE_PROTECT of xpm_memory_base_inst : label is 1;
  attribute XPM_MODULE of xpm_memory_base_inst : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of xpm_memory_base_inst : label is 72;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of xpm_memory_base_inst : label is 72;
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
      addra(13 downto 0) => addra(13 downto 0),
      addrb(13 downto 0) => addrb(13 downto 0),
      clka => clka,
      clkb => '0',
      dbiterra => NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED,
      dbiterrb => NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED,
      dina(71 downto 0) => dina(71 downto 0),
      dinb(71 downto 0) => dinb(71 downto 0),
      douta(71 downto 0) => douta(71 downto 0),
      doutb(71 downto 0) => doutb(71 downto 0),
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
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28016)
`protect data_block
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
q2MRFv0hjgYqQxunvX3BqfHIUduAUIu211SXrpw=
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
    douta : out STD_LOGIC_VECTOR ( 71 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 71 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 71 downto 0 )
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
  attribute C_WRITE_MODE_B of U0 : label is "NO_CHANGE";
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
      addra(13 downto 0) => addra(13 downto 0),
      addrb(13 downto 0) => addrb(13 downto 0),
      clka => clka,
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(71 downto 0) => dina(71 downto 0),
      dinb(71 downto 0) => dinb(71 downto 0),
      douta(71 downto 0) => douta(71 downto 0),
      doutb(71 downto 0) => doutb(71 downto 0),
      eccpipece => '0',
      ena => ena,
      enb => enb,
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
      web(0) => web(0)
    );
end STRUCTURE;
