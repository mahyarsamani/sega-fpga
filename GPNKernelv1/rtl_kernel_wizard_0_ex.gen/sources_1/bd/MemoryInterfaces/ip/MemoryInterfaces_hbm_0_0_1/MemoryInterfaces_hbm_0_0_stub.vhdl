-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Wed Apr 17 16:30:07 2024
-- Host        : COE-CS-crystal running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/austin01/vivado/rtl_kernel_wizard_0_ex/rtl_kernel_wizard_0_ex.gen/sources_1/bd/MemoryInterfaces/ip/MemoryInterfaces_hbm_0_0_1/MemoryInterfaces_hbm_0_0_stub.vhdl
-- Design      : MemoryInterfaces_hbm_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu280-fsvh2892-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MemoryInterfaces_hbm_0_0 is
  Port ( 
    HBM_REF_CLK_0 : in STD_LOGIC;
    AXI_00_ACLK : in STD_LOGIC;
    AXI_00_ARESET_N : in STD_LOGIC;
    AXI_00_ARADDR : in STD_LOGIC_VECTOR ( 32 downto 0 );
    AXI_00_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_00_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_00_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_00_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_00_ARVALID : in STD_LOGIC;
    AXI_00_AWADDR : in STD_LOGIC_VECTOR ( 32 downto 0 );
    AXI_00_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_00_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_00_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_00_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_00_AWVALID : in STD_LOGIC;
    AXI_00_RREADY : in STD_LOGIC;
    AXI_00_BREADY : in STD_LOGIC;
    AXI_00_WDATA : in STD_LOGIC_VECTOR ( 255 downto 0 );
    AXI_00_WLAST : in STD_LOGIC;
    AXI_00_WSTRB : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_00_WDATA_PARITY : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_00_WVALID : in STD_LOGIC;
    APB_0_PWDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    APB_0_PADDR : in STD_LOGIC_VECTOR ( 21 downto 0 );
    APB_0_PCLK : in STD_LOGIC;
    APB_0_PENABLE : in STD_LOGIC;
    APB_0_PRESET_N : in STD_LOGIC;
    APB_0_PSEL : in STD_LOGIC;
    APB_0_PWRITE : in STD_LOGIC;
    AXI_00_ARREADY : out STD_LOGIC;
    AXI_00_AWREADY : out STD_LOGIC;
    AXI_00_RDATA_PARITY : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_00_RDATA : out STD_LOGIC_VECTOR ( 255 downto 0 );
    AXI_00_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_00_RLAST : out STD_LOGIC;
    AXI_00_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_00_RVALID : out STD_LOGIC;
    AXI_00_WREADY : out STD_LOGIC;
    AXI_00_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_00_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_00_BVALID : out STD_LOGIC;
    APB_0_PRDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    APB_0_PREADY : out STD_LOGIC;
    APB_0_PSLVERR : out STD_LOGIC;
    apb_complete_0 : out STD_LOGIC;
    DRAM_0_STAT_CATTRIP : out STD_LOGIC;
    DRAM_0_STAT_TEMP : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );

end MemoryInterfaces_hbm_0_0;

architecture stub of MemoryInterfaces_hbm_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "HBM_REF_CLK_0,AXI_00_ACLK,AXI_00_ARESET_N,AXI_00_ARADDR[32:0],AXI_00_ARBURST[1:0],AXI_00_ARID[5:0],AXI_00_ARLEN[3:0],AXI_00_ARSIZE[2:0],AXI_00_ARVALID,AXI_00_AWADDR[32:0],AXI_00_AWBURST[1:0],AXI_00_AWID[5:0],AXI_00_AWLEN[3:0],AXI_00_AWSIZE[2:0],AXI_00_AWVALID,AXI_00_RREADY,AXI_00_BREADY,AXI_00_WDATA[255:0],AXI_00_WLAST,AXI_00_WSTRB[31:0],AXI_00_WDATA_PARITY[31:0],AXI_00_WVALID,APB_0_PWDATA[31:0],APB_0_PADDR[21:0],APB_0_PCLK,APB_0_PENABLE,APB_0_PRESET_N,APB_0_PSEL,APB_0_PWRITE,AXI_00_ARREADY,AXI_00_AWREADY,AXI_00_RDATA_PARITY[31:0],AXI_00_RDATA[255:0],AXI_00_RID[5:0],AXI_00_RLAST,AXI_00_RRESP[1:0],AXI_00_RVALID,AXI_00_WREADY,AXI_00_BID[5:0],AXI_00_BRESP[1:0],AXI_00_BVALID,APB_0_PRDATA[31:0],APB_0_PREADY,APB_0_PSLVERR,apb_complete_0,DRAM_0_STAT_CATTRIP,DRAM_0_STAT_TEMP[6:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "hbm_v1_0_12,Vivado 2022.1";
begin
end;
