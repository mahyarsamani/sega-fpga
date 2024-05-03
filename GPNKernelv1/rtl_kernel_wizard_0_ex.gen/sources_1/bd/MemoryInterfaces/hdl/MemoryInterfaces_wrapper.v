//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
//Date        : Wed Apr 17 16:28:12 2024
//Host        : COE-CS-crystal running 64-bit Ubuntu 22.04.3 LTS
//Command     : generate_target MemoryInterfaces_wrapper.bd
//Design      : MemoryInterfaces_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MemoryInterfaces_wrapper
   (APB_0_PADDR,
    APB_0_PCLK,
    APB_0_PENABLE,
    APB_0_PRESET_N,
    APB_0_PSEL,
    APB_0_PWDATA,
    APB_0_PWRITE,
    AXI_00_ACLK,
    AXI_00_ARESET_N,
    AXI_00_WDATA_PARITY,
    HBM_00_end_read,
    HBM_00_end_write,
    HBM_00_rburst,
    HBM_00_read_addr,
    HBM_00_read_data,
    HBM_00_read_ready,
    HBM_00_start_read,
    HBM_00_start_write,
    HBM_00_wburst,
    HBM_00_write_addr,
    HBM_00_write_data,
    HBM_00_write_ready,
    HBM_00_write_resp,
    HBM_AXI_00_araddr,
    HBM_AXI_00_arburst,
    HBM_AXI_00_arcache,
    HBM_AXI_00_arlen,
    HBM_AXI_00_arlock,
    HBM_AXI_00_arprot,
    HBM_AXI_00_arqos,
    HBM_AXI_00_arready,
    HBM_AXI_00_arsize,
    HBM_AXI_00_arvalid,
    HBM_AXI_00_awaddr,
    HBM_AXI_00_awburst,
    HBM_AXI_00_awcache,
    HBM_AXI_00_awlen,
    HBM_AXI_00_awlock,
    HBM_AXI_00_awprot,
    HBM_AXI_00_awqos,
    HBM_AXI_00_awready,
    HBM_AXI_00_awsize,
    HBM_AXI_00_awvalid,
    HBM_AXI_00_bready,
    HBM_AXI_00_bresp,
    HBM_AXI_00_bvalid,
    HBM_AXI_00_rdata,
    HBM_AXI_00_rlast,
    HBM_AXI_00_rready,
    HBM_AXI_00_rresp,
    HBM_AXI_00_rvalid,
    HBM_AXI_00_wdata,
    HBM_AXI_00_wlast,
    HBM_AXI_00_wready,
    HBM_AXI_00_wstrb,
    HBM_AXI_00_wvalid,
    HBM_REF_CLK_0);
  input [21:0]APB_0_PADDR;
  input APB_0_PCLK;
  input APB_0_PENABLE;
  input APB_0_PRESET_N;
  input APB_0_PSEL;
  input [31:0]APB_0_PWDATA;
  input APB_0_PWRITE;
  input AXI_00_ACLK;
  input AXI_00_ARESET_N;
  input [31:0]AXI_00_WDATA_PARITY;
  output HBM_00_end_read;
  output [1:0]HBM_00_end_write;
  input [7:0]HBM_00_rburst;
  input [32:0]HBM_00_read_addr;
  output [255:0]HBM_00_read_data;
  output HBM_00_read_ready;
  input HBM_00_start_read;
  input HBM_00_start_write;
  input [7:0]HBM_00_wburst;
  input [32:0]HBM_00_write_addr;
  input [255:0]HBM_00_write_data;
  input HBM_00_write_ready;
  output HBM_00_write_resp;
  input [31:0]HBM_AXI_00_araddr;
  input [1:0]HBM_AXI_00_arburst;
  input [3:0]HBM_AXI_00_arcache;
  input [7:0]HBM_AXI_00_arlen;
  input [0:0]HBM_AXI_00_arlock;
  input [2:0]HBM_AXI_00_arprot;
  input [3:0]HBM_AXI_00_arqos;
  output HBM_AXI_00_arready;
  input [2:0]HBM_AXI_00_arsize;
  input HBM_AXI_00_arvalid;
  input [31:0]HBM_AXI_00_awaddr;
  input [1:0]HBM_AXI_00_awburst;
  input [3:0]HBM_AXI_00_awcache;
  input [7:0]HBM_AXI_00_awlen;
  input [0:0]HBM_AXI_00_awlock;
  input [2:0]HBM_AXI_00_awprot;
  input [3:0]HBM_AXI_00_awqos;
  output HBM_AXI_00_awready;
  input [2:0]HBM_AXI_00_awsize;
  input HBM_AXI_00_awvalid;
  input HBM_AXI_00_bready;
  output [1:0]HBM_AXI_00_bresp;
  output HBM_AXI_00_bvalid;
  output [31:0]HBM_AXI_00_rdata;
  output HBM_AXI_00_rlast;
  input HBM_AXI_00_rready;
  output [1:0]HBM_AXI_00_rresp;
  output HBM_AXI_00_rvalid;
  input [31:0]HBM_AXI_00_wdata;
  input HBM_AXI_00_wlast;
  output HBM_AXI_00_wready;
  input [3:0]HBM_AXI_00_wstrb;
  input HBM_AXI_00_wvalid;
  input HBM_REF_CLK_0;

  wire [21:0]APB_0_PADDR;
  wire APB_0_PCLK;
  wire APB_0_PENABLE;
  wire APB_0_PRESET_N;
  wire APB_0_PSEL;
  wire [31:0]APB_0_PWDATA;
  wire APB_0_PWRITE;
  wire AXI_00_ACLK;
  wire AXI_00_ARESET_N;
  wire [31:0]AXI_00_WDATA_PARITY;
  wire HBM_00_end_read;
  wire [1:0]HBM_00_end_write;
  wire [7:0]HBM_00_rburst;
  wire [32:0]HBM_00_read_addr;
  wire [255:0]HBM_00_read_data;
  wire HBM_00_read_ready;
  wire HBM_00_start_read;
  wire HBM_00_start_write;
  wire [7:0]HBM_00_wburst;
  wire [32:0]HBM_00_write_addr;
  wire [255:0]HBM_00_write_data;
  wire HBM_00_write_ready;
  wire HBM_00_write_resp;
  wire [31:0]HBM_AXI_00_araddr;
  wire [1:0]HBM_AXI_00_arburst;
  wire [3:0]HBM_AXI_00_arcache;
  wire [7:0]HBM_AXI_00_arlen;
  wire [0:0]HBM_AXI_00_arlock;
  wire [2:0]HBM_AXI_00_arprot;
  wire [3:0]HBM_AXI_00_arqos;
  wire HBM_AXI_00_arready;
  wire [2:0]HBM_AXI_00_arsize;
  wire HBM_AXI_00_arvalid;
  wire [31:0]HBM_AXI_00_awaddr;
  wire [1:0]HBM_AXI_00_awburst;
  wire [3:0]HBM_AXI_00_awcache;
  wire [7:0]HBM_AXI_00_awlen;
  wire [0:0]HBM_AXI_00_awlock;
  wire [2:0]HBM_AXI_00_awprot;
  wire [3:0]HBM_AXI_00_awqos;
  wire HBM_AXI_00_awready;
  wire [2:0]HBM_AXI_00_awsize;
  wire HBM_AXI_00_awvalid;
  wire HBM_AXI_00_bready;
  wire [1:0]HBM_AXI_00_bresp;
  wire HBM_AXI_00_bvalid;
  wire [31:0]HBM_AXI_00_rdata;
  wire HBM_AXI_00_rlast;
  wire HBM_AXI_00_rready;
  wire [1:0]HBM_AXI_00_rresp;
  wire HBM_AXI_00_rvalid;
  wire [31:0]HBM_AXI_00_wdata;
  wire HBM_AXI_00_wlast;
  wire HBM_AXI_00_wready;
  wire [3:0]HBM_AXI_00_wstrb;
  wire HBM_AXI_00_wvalid;
  wire HBM_REF_CLK_0;

  MemoryInterfaces MemoryInterfaces_i
       (.APB_0_PADDR(APB_0_PADDR),
        .APB_0_PCLK(APB_0_PCLK),
        .APB_0_PENABLE(APB_0_PENABLE),
        .APB_0_PRESET_N(APB_0_PRESET_N),
        .APB_0_PSEL(APB_0_PSEL),
        .APB_0_PWDATA(APB_0_PWDATA),
        .APB_0_PWRITE(APB_0_PWRITE),
        .AXI_00_ACLK(AXI_00_ACLK),
        .AXI_00_ARESET_N(AXI_00_ARESET_N),
        .AXI_00_WDATA_PARITY(AXI_00_WDATA_PARITY),
        .HBM_00_end_read(HBM_00_end_read),
        .HBM_00_end_write(HBM_00_end_write),
        .HBM_00_rburst(HBM_00_rburst),
        .HBM_00_read_addr(HBM_00_read_addr),
        .HBM_00_read_data(HBM_00_read_data),
        .HBM_00_read_ready(HBM_00_read_ready),
        .HBM_00_start_read(HBM_00_start_read),
        .HBM_00_start_write(HBM_00_start_write),
        .HBM_00_wburst(HBM_00_wburst),
        .HBM_00_write_addr(HBM_00_write_addr),
        .HBM_00_write_data(HBM_00_write_data),
        .HBM_00_write_ready(HBM_00_write_ready),
        .HBM_00_write_resp(HBM_00_write_resp),
        .HBM_AXI_00_araddr(HBM_AXI_00_araddr),
        .HBM_AXI_00_arburst(HBM_AXI_00_arburst),
        .HBM_AXI_00_arcache(HBM_AXI_00_arcache),
        .HBM_AXI_00_arlen(HBM_AXI_00_arlen),
        .HBM_AXI_00_arlock(HBM_AXI_00_arlock),
        .HBM_AXI_00_arprot(HBM_AXI_00_arprot),
        .HBM_AXI_00_arqos(HBM_AXI_00_arqos),
        .HBM_AXI_00_arready(HBM_AXI_00_arready),
        .HBM_AXI_00_arsize(HBM_AXI_00_arsize),
        .HBM_AXI_00_arvalid(HBM_AXI_00_arvalid),
        .HBM_AXI_00_awaddr(HBM_AXI_00_awaddr),
        .HBM_AXI_00_awburst(HBM_AXI_00_awburst),
        .HBM_AXI_00_awcache(HBM_AXI_00_awcache),
        .HBM_AXI_00_awlen(HBM_AXI_00_awlen),
        .HBM_AXI_00_awlock(HBM_AXI_00_awlock),
        .HBM_AXI_00_awprot(HBM_AXI_00_awprot),
        .HBM_AXI_00_awqos(HBM_AXI_00_awqos),
        .HBM_AXI_00_awready(HBM_AXI_00_awready),
        .HBM_AXI_00_awsize(HBM_AXI_00_awsize),
        .HBM_AXI_00_awvalid(HBM_AXI_00_awvalid),
        .HBM_AXI_00_bready(HBM_AXI_00_bready),
        .HBM_AXI_00_bresp(HBM_AXI_00_bresp),
        .HBM_AXI_00_bvalid(HBM_AXI_00_bvalid),
        .HBM_AXI_00_rdata(HBM_AXI_00_rdata),
        .HBM_AXI_00_rlast(HBM_AXI_00_rlast),
        .HBM_AXI_00_rready(HBM_AXI_00_rready),
        .HBM_AXI_00_rresp(HBM_AXI_00_rresp),
        .HBM_AXI_00_rvalid(HBM_AXI_00_rvalid),
        .HBM_AXI_00_wdata(HBM_AXI_00_wdata),
        .HBM_AXI_00_wlast(HBM_AXI_00_wlast),
        .HBM_AXI_00_wready(HBM_AXI_00_wready),
        .HBM_AXI_00_wstrb(HBM_AXI_00_wstrb),
        .HBM_AXI_00_wvalid(HBM_AXI_00_wvalid),
        .HBM_REF_CLK_0(HBM_REF_CLK_0));
endmodule
