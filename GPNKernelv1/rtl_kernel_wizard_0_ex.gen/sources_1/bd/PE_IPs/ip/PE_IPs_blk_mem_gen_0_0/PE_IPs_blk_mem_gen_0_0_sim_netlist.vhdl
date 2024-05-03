-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Mon Apr  8 11:00:17 2024
-- Host        : COE-CS-crystal running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top PE_IPs_blk_mem_gen_0_0 -prefix
--               PE_IPs_blk_mem_gen_0_0_ PE_IPs_blk_mem_gen_0_0_sim_netlist.vhdl
-- Design      : PE_IPs_blk_mem_gen_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu280-fsvh2892-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PE_IPs_blk_mem_gen_0_0_xpm_memory_base is
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
  attribute ADDR_WIDTH_A of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 14;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 14;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 72;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 72;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 0;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is "[7:0]";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 3;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 1179648;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 0;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 16384;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is "ultra";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 72;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 72;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 72;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 72;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 72;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 14;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 14;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 14;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 14;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 72;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 72;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 72;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 72;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 1;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 1;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 1;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 72;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 72;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 72;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of PE_IPs_blk_mem_gen_0_0_xpm_memory_base : entity is 72;
end PE_IPs_blk_mem_gen_0_0_xpm_memory_base;

architecture STRUCTURE of PE_IPs_blk_mem_gen_0_0_xpm_memory_base is
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
entity PE_IPs_blk_mem_gen_0_0_xpm_memory_spram is
  port (
    douta : out STD_LOGIC_VECTOR ( 71 downto 0 );
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 71 downto 0 )
  );
end PE_IPs_blk_mem_gen_0_0_xpm_memory_spram;

architecture STRUCTURE of PE_IPs_blk_mem_gen_0_0_xpm_memory_spram is
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
xpm_memory_base_inst: entity work.PE_IPs_blk_mem_gen_0_0_xpm_memory_base
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
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20256)
`protect data_block
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
0ZgwxSlzkYN5j9EMpVKReoAOqBxP
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PE_IPs_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 71 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 71 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of PE_IPs_blk_mem_gen_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of PE_IPs_blk_mem_gen_0_0 : entity is "PE_IPs_blk_mem_gen_0_0,blk_mem_gen_v8_4_5,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of PE_IPs_blk_mem_gen_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of PE_IPs_blk_mem_gen_0_0 : entity is "blk_mem_gen_v8_4_5,Vivado 2022.1";
end PE_IPs_blk_mem_gen_0_0;

architecture STRUCTURE of PE_IPs_blk_mem_gen_0_0 is
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
U0: entity work.PE_IPs_blk_mem_gen_0_0_blk_mem_gen_v8_4_5
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
