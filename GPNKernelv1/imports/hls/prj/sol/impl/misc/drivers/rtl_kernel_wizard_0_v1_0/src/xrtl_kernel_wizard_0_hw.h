// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/COR)
//        bit 0 - ap_done (Read/COR)
//        bit 1 - ap_ready (Read/COR)
//        others - reserved
// 0x10 : Data signal of Message
//        bit 31~0 - Message[31:0] (Read/Write)
// 0x14 : Data signal of Message
//        bit 31~0 - Message[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of PEControl
//        bit 31~0 - PEControl[31:0] (Read/Write)
// 0x20 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XRTL_KERNEL_WIZARD_0_CONTROL_ADDR_AP_CTRL        0x00
#define XRTL_KERNEL_WIZARD_0_CONTROL_ADDR_GIE            0x04
#define XRTL_KERNEL_WIZARD_0_CONTROL_ADDR_IER            0x08
#define XRTL_KERNEL_WIZARD_0_CONTROL_ADDR_ISR            0x0c
#define XRTL_KERNEL_WIZARD_0_CONTROL_ADDR_MESSAGE_DATA   0x10
#define XRTL_KERNEL_WIZARD_0_CONTROL_BITS_MESSAGE_DATA   64
#define XRTL_KERNEL_WIZARD_0_CONTROL_ADDR_PECONTROL_DATA 0x1c
#define XRTL_KERNEL_WIZARD_0_CONTROL_BITS_PECONTROL_DATA 32

