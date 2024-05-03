-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Wed Apr 17 16:29:32 2024
-- Host        : COE-CS-crystal running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ MemoryInterfaces_AXI_Engine_0_0_stub.vhdl
-- Design      : MemoryInterfaces_AXI_Engine_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu280-fsvh2892-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    start_wr : in STD_LOGIC;
    start_rd : in STD_LOGIC;
    end_wr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    end_rd : out STD_LOGIC;
    write_addr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    wburst : in STD_LOGIC_VECTOR ( 7 downto 0 );
    read_addr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    rburst : in STD_LOGIC_VECTOR ( 7 downto 0 );
    write_data : in STD_LOGIC_VECTOR ( 255 downto 0 );
    write_ready : in STD_LOGIC;
    read_data : out STD_LOGIC_VECTOR ( 255 downto 0 );
    write_resp : out STD_LOGIC;
    read_ready : out STD_LOGIC;
    m_axi_AWVALID : out STD_LOGIC;
    m_axi_AWADDR : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_AWID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_AWREADY : in STD_LOGIC;
    m_axi_WVALID : out STD_LOGIC;
    m_axi_WDATA : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_WSTRB : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_WLAST : out STD_LOGIC;
    m_axi_WID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_WREADY : in STD_LOGIC;
    m_axi_BVALID : in STD_LOGIC;
    m_axi_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_BID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_BREADY : out STD_LOGIC;
    m_axi_ARVALID : out STD_LOGIC;
    m_axi_ARADDR : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_ARID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ARREADY : in STD_LOGIC;
    m_axi_RVALID : in STD_LOGIC;
    m_axi_RDATA : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_RLAST : in STD_LOGIC;
    m_axi_RID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_RREADY : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,resetn,start_wr,start_rd,end_wr[1:0],end_rd,write_addr[32:0],wburst[7:0],read_addr[32:0],rburst[7:0],write_data[255:0],write_ready,read_data[255:0],write_resp,read_ready,m_axi_AWVALID,m_axi_AWADDR[32:0],m_axi_AWID[5:0],m_axi_AWLEN[7:0],m_axi_AWSIZE[2:0],m_axi_AWBURST[1:0],m_axi_AWLOCK[1:0],m_axi_AWCACHE[3:0],m_axi_AWPROT[2:0],m_axi_AWQOS[3:0],m_axi_AWREGION[3:0],m_axi_AWREADY,m_axi_WVALID,m_axi_WDATA[255:0],m_axi_WSTRB[31:0],m_axi_WLAST,m_axi_WID[5:0],m_axi_WREADY,m_axi_BVALID,m_axi_BRESP[1:0],m_axi_BID[5:0],m_axi_BREADY,m_axi_ARVALID,m_axi_ARADDR[32:0],m_axi_ARID[5:0],m_axi_ARLEN[7:0],m_axi_ARSIZE[2:0],m_axi_ARBURST[1:0],m_axi_ARLOCK[1:0],m_axi_ARCACHE[3:0],m_axi_ARPROT[2:0],m_axi_ARQOS[3:0],m_axi_ARREGION[3:0],m_axi_ARREADY,m_axi_RVALID,m_axi_RDATA[255:0],m_axi_RLAST,m_axi_RID[5:0],m_axi_RRESP[1:0],m_axi_RREADY";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi_engine,Vivado 2022.1";
begin
end;
