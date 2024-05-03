-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Wed Mar 27 22:43:14 2024
-- Host        : COE-CS-crystal running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/austin01/vivado/PE_Kernel/PE_Kernel.gen/sources_1/ip/rtl_kernel_wizard_0/rtl_kernel_wizard_0_stub.vhdl
-- Design      : rtl_kernel_wizard_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu280-fsvh2892-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rtl_kernel_wizard_0 is
  Port ( 
    ap_clk : in STD_LOGIC
  );

end rtl_kernel_wizard_0;

architecture stub of rtl_kernel_wizard_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "rtl_kernel_wizard_v1_0_7_dummy,Vivado 2022.1";
begin
end;
