-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Thu Mar 28 19:56:39 2024
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
  attribute MEMORY_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1023984;
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
  attribute P_MAX_DEPTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 14222;
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
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 1023984;
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
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 1023984;
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
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 1023984;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_sp.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_uram_2";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is "RAM_SP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 8192;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 12287;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 0;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 71;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 12288;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 14221;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 71;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 1023984;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_sp.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_uram_3";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is "RAM_SP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 12288;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 14221;
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
  attribute MEMORY_SIZE of xpm_memory_base_inst : label is 1023984;
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
  attribute P_MAX_DEPTH_DATA of xpm_memory_base_inst : label is 14222;
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
  attribute C_COUNT_36K_BRAM of U0 : label is "28";
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
  attribute C_READ_DEPTH_A of U0 : label is 14222;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 14222;
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
  attribute C_WRITE_DEPTH_A of U0 : label is 14222;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 14222;
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
