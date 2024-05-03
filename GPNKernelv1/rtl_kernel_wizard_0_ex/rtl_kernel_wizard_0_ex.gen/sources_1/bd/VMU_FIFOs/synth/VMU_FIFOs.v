//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
//Date        : Sun Apr  7 19:07:11 2024
//Host        : COE-CS-crystal running 64-bit Ubuntu 22.04.3 LTS
//Command     : generate_target VMU_FIFOs.bd
//Design      : VMU_FIFOs
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "VMU_FIFOs,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=VMU_FIFOs,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "VMU_FIFOs.hwdef" *) 
module VMU_FIFOs
   (ReadBuffer_Empty,
    ReadBuffer_Read,
    ReadBuffer_ReadData,
    ReadBuffer_Write,
    ReadBuffer_WriteData,
    WriteBuffer_Empty,
    WriteBuffer_Read,
    WriteBuffer_ReadData,
    WriteBuffer_Write,
    WriteBuffer_WriteData,
    clk,
    reset,
    sleep);
  output ReadBuffer_Empty;
  input ReadBuffer_Read;
  output [255:0]ReadBuffer_ReadData;
  input ReadBuffer_Write;
  input [255:0]ReadBuffer_WriteData;
  output WriteBuffer_Empty;
  input WriteBuffer_Read;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.WRITEBUFFER_READDATA DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.WRITEBUFFER_READDATA, LAYERED_METADATA undef" *) output [255:0]WriteBuffer_ReadData;
  input WriteBuffer_Write;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.WRITEBUFFER_WRITEDATA DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.WRITEBUFFER_WRITEDATA, LAYERED_METADATA undef" *) input [255:0]WriteBuffer_WriteData;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET reset, CLK_DOMAIN VMU_FIFOs_clk, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;
  input sleep;

  wire ReadBuffer_Read_1;
  wire [255:0]ReadBuffer_WriteData_1;
  wire ReadBuffer_Write_1;
  wire [255:0]ReadBuffer_dout;
  wire ReadBuffer_empty1;
  wire WriteBuffer_empty1;
  wire [255:0]WriteData_FIFO_din_1;
  wire [255:0]WriteData_FIFO_dout1;
  wire WriteData_FIFO_read_1;
  wire WriteData_FIFO_write_1;
  wire clk_1;
  wire reset_1;
  wire sleep_1;

  assign ReadBuffer_Empty = ReadBuffer_empty1;
  assign ReadBuffer_ReadData[255:0] = ReadBuffer_dout;
  assign ReadBuffer_Read_1 = ReadBuffer_Read;
  assign ReadBuffer_WriteData_1 = ReadBuffer_WriteData[255:0];
  assign ReadBuffer_Write_1 = ReadBuffer_Write;
  assign WriteBuffer_Empty = WriteBuffer_empty1;
  assign WriteBuffer_ReadData[255:0] = WriteData_FIFO_dout1;
  assign WriteData_FIFO_din_1 = WriteBuffer_WriteData[255:0];
  assign WriteData_FIFO_read_1 = WriteBuffer_Read;
  assign WriteData_FIFO_write_1 = WriteBuffer_Write;
  assign clk_1 = clk;
  assign reset_1 = reset;
  assign sleep_1 = sleep;
  VMU_FIFOs_WriteBuffer_0 ReadBuffer
       (.clk(clk_1),
        .din(ReadBuffer_WriteData_1),
        .dout(ReadBuffer_dout),
        .empty(ReadBuffer_empty1),
        .rd_en(ReadBuffer_Read_1),
        .sleep(sleep_1),
        .srst(reset_1),
        .wr_en(ReadBuffer_Write_1));
  VMU_FIFOs_fifo_generator_0_0 WriteBuffer
       (.clk(clk_1),
        .din(WriteData_FIFO_din_1),
        .dout(WriteData_FIFO_dout1),
        .empty(WriteBuffer_empty1),
        .rd_en(WriteData_FIFO_read_1),
        .sleep(sleep_1),
        .srst(reset_1),
        .wr_en(WriteData_FIFO_write_1));
endmodule
