//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
//Date        : Sun Apr  7 19:07:12 2024
//Host        : COE-CS-crystal running 64-bit Ubuntu 22.04.3 LTS
//Command     : generate_target VMU_FIFOs_wrapper.bd
//Design      : VMU_FIFOs_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module VMU_FIFOs_wrapper
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
  output [255:0]WriteBuffer_ReadData;
  input WriteBuffer_Write;
  input [255:0]WriteBuffer_WriteData;
  input clk;
  input reset;
  input sleep;

  wire ReadBuffer_Empty;
  wire ReadBuffer_Read;
  wire [255:0]ReadBuffer_ReadData;
  wire ReadBuffer_Write;
  wire [255:0]ReadBuffer_WriteData;
  wire WriteBuffer_Empty;
  wire WriteBuffer_Read;
  wire [255:0]WriteBuffer_ReadData;
  wire WriteBuffer_Write;
  wire [255:0]WriteBuffer_WriteData;
  wire clk;
  wire reset;
  wire sleep;

  VMU_FIFOs VMU_FIFOs_i
       (.ReadBuffer_Empty(ReadBuffer_Empty),
        .ReadBuffer_Read(ReadBuffer_Read),
        .ReadBuffer_ReadData(ReadBuffer_ReadData),
        .ReadBuffer_Write(ReadBuffer_Write),
        .ReadBuffer_WriteData(ReadBuffer_WriteData),
        .WriteBuffer_Empty(WriteBuffer_Empty),
        .WriteBuffer_Read(WriteBuffer_Read),
        .WriteBuffer_ReadData(WriteBuffer_ReadData),
        .WriteBuffer_Write(WriteBuffer_Write),
        .WriteBuffer_WriteData(WriteBuffer_WriteData),
        .clk(clk),
        .reset(reset),
        .sleep(sleep));
endmodule
