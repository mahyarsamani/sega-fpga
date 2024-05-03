// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module rtl_kernel_wizard_0_control_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 8,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    output wire [31:0]                   GPNControl,
    output wire [63:0]                   FirstMessage,
    output wire [31:0]                   MemoryOffset0,
    output wire [31:0]                   MemoryOffset1,
    output wire [31:0]                   MemoryOffset2,
    output wire [31:0]                   MemoryOffset3,
    output wire [31:0]                   MemoryOffset4,
    output wire [31:0]                   MemoryOffset5,
    output wire [31:0]                   MemoryOffset6,
    output wire [31:0]                   MemoryOffset7,
    output wire [31:0]                   MemoryOffset8,
    output wire [31:0]                   MemoryOffset9,
    output wire [31:0]                   MemoryOffset10,
    output wire [31:0]                   MemoryOffset11,
    output wire [31:0]                   MemoryOffset12,
    output wire [31:0]                   MemoryOffset13,
    output wire [31:0]                   MemoryOffset14,
    output wire [31:0]                   MemoryOffset15,
    output wire [31:0]                   MemoryOffset16,
    output wire [31:0]                   TotalEdgeSize,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle
);
//------------------------Address Info-------------------
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
// 0x10 : Data signal of GPNControl
//        bit 31~0 - GPNControl[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of FirstMessage
//        bit 31~0 - FirstMessage[31:0] (Read/Write)
// 0x1c : Data signal of FirstMessage
//        bit 31~0 - FirstMessage[63:32] (Read/Write)
// 0x20 : reserved
// 0x24 : Data signal of MemoryOffset0
//        bit 31~0 - MemoryOffset0[31:0] (Read/Write)
// 0x28 : reserved
// 0x2c : Data signal of MemoryOffset1
//        bit 31~0 - MemoryOffset1[31:0] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of MemoryOffset2
//        bit 31~0 - MemoryOffset2[31:0] (Read/Write)
// 0x38 : reserved
// 0x3c : Data signal of MemoryOffset3
//        bit 31~0 - MemoryOffset3[31:0] (Read/Write)
// 0x40 : reserved
// 0x44 : Data signal of MemoryOffset4
//        bit 31~0 - MemoryOffset4[31:0] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of MemoryOffset5
//        bit 31~0 - MemoryOffset5[31:0] (Read/Write)
// 0x50 : reserved
// 0x54 : Data signal of MemoryOffset6
//        bit 31~0 - MemoryOffset6[31:0] (Read/Write)
// 0x58 : reserved
// 0x5c : Data signal of MemoryOffset7
//        bit 31~0 - MemoryOffset7[31:0] (Read/Write)
// 0x60 : reserved
// 0x64 : Data signal of MemoryOffset8
//        bit 31~0 - MemoryOffset8[31:0] (Read/Write)
// 0x68 : reserved
// 0x6c : Data signal of MemoryOffset9
//        bit 31~0 - MemoryOffset9[31:0] (Read/Write)
// 0x70 : reserved
// 0x74 : Data signal of MemoryOffset10
//        bit 31~0 - MemoryOffset10[31:0] (Read/Write)
// 0x78 : reserved
// 0x7c : Data signal of MemoryOffset11
//        bit 31~0 - MemoryOffset11[31:0] (Read/Write)
// 0x80 : reserved
// 0x84 : Data signal of MemoryOffset12
//        bit 31~0 - MemoryOffset12[31:0] (Read/Write)
// 0x88 : reserved
// 0x8c : Data signal of MemoryOffset13
//        bit 31~0 - MemoryOffset13[31:0] (Read/Write)
// 0x90 : reserved
// 0x94 : Data signal of MemoryOffset14
//        bit 31~0 - MemoryOffset14[31:0] (Read/Write)
// 0x98 : reserved
// 0x9c : Data signal of MemoryOffset15
//        bit 31~0 - MemoryOffset15[31:0] (Read/Write)
// 0xa0 : reserved
// 0xa4 : Data signal of MemoryOffset16
//        bit 31~0 - MemoryOffset16[31:0] (Read/Write)
// 0xa8 : reserved
// 0xac : Data signal of TotalEdgeSize
//        bit 31~0 - TotalEdgeSize[31:0] (Read/Write)
// 0xb0 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL               = 8'h00,
    ADDR_GIE                   = 8'h04,
    ADDR_IER                   = 8'h08,
    ADDR_ISR                   = 8'h0c,
    ADDR_GPNCONTROL_DATA_0     = 8'h10,
    ADDR_GPNCONTROL_CTRL       = 8'h14,
    ADDR_FIRSTMESSAGE_DATA_0   = 8'h18,
    ADDR_FIRSTMESSAGE_DATA_1   = 8'h1c,
    ADDR_FIRSTMESSAGE_CTRL     = 8'h20,
    ADDR_MEMORYOFFSET0_DATA_0  = 8'h24,
    ADDR_MEMORYOFFSET0_CTRL    = 8'h28,
    ADDR_MEMORYOFFSET1_DATA_0  = 8'h2c,
    ADDR_MEMORYOFFSET1_CTRL    = 8'h30,
    ADDR_MEMORYOFFSET2_DATA_0  = 8'h34,
    ADDR_MEMORYOFFSET2_CTRL    = 8'h38,
    ADDR_MEMORYOFFSET3_DATA_0  = 8'h3c,
    ADDR_MEMORYOFFSET3_CTRL    = 8'h40,
    ADDR_MEMORYOFFSET4_DATA_0  = 8'h44,
    ADDR_MEMORYOFFSET4_CTRL    = 8'h48,
    ADDR_MEMORYOFFSET5_DATA_0  = 8'h4c,
    ADDR_MEMORYOFFSET5_CTRL    = 8'h50,
    ADDR_MEMORYOFFSET6_DATA_0  = 8'h54,
    ADDR_MEMORYOFFSET6_CTRL    = 8'h58,
    ADDR_MEMORYOFFSET7_DATA_0  = 8'h5c,
    ADDR_MEMORYOFFSET7_CTRL    = 8'h60,
    ADDR_MEMORYOFFSET8_DATA_0  = 8'h64,
    ADDR_MEMORYOFFSET8_CTRL    = 8'h68,
    ADDR_MEMORYOFFSET9_DATA_0  = 8'h6c,
    ADDR_MEMORYOFFSET9_CTRL    = 8'h70,
    ADDR_MEMORYOFFSET10_DATA_0 = 8'h74,
    ADDR_MEMORYOFFSET10_CTRL   = 8'h78,
    ADDR_MEMORYOFFSET11_DATA_0 = 8'h7c,
    ADDR_MEMORYOFFSET11_CTRL   = 8'h80,
    ADDR_MEMORYOFFSET12_DATA_0 = 8'h84,
    ADDR_MEMORYOFFSET12_CTRL   = 8'h88,
    ADDR_MEMORYOFFSET13_DATA_0 = 8'h8c,
    ADDR_MEMORYOFFSET13_CTRL   = 8'h90,
    ADDR_MEMORYOFFSET14_DATA_0 = 8'h94,
    ADDR_MEMORYOFFSET14_CTRL   = 8'h98,
    ADDR_MEMORYOFFSET15_DATA_0 = 8'h9c,
    ADDR_MEMORYOFFSET15_CTRL   = 8'ha0,
    ADDR_MEMORYOFFSET16_DATA_0 = 8'ha4,
    ADDR_MEMORYOFFSET16_CTRL   = 8'ha8,
    ADDR_TOTALEDGESIZE_DATA_0  = 8'hac,
    ADDR_TOTALEDGESIZE_CTRL    = 8'hb0,
    WRIDLE                     = 2'd0,
    WRDATA                     = 2'd1,
    WRRESP                     = 2'd2,
    WRRESET                    = 2'd3,
    RDIDLE                     = 2'd0,
    RDDATA                     = 2'd1,
    RDRESET                    = 2'd2,
    ADDR_BITS                = 8;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle;
    reg                           int_ap_ready = 1'b0;
    wire                          task_ap_ready;
    reg                           int_ap_done = 1'b0;
    wire                          task_ap_done;
    reg                           int_task_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_interrupt = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           auto_restart_status = 1'b0;
    wire                          auto_restart_done;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg  [31:0]                   int_GPNControl = 'b0;
    reg  [63:0]                   int_FirstMessage = 'b0;
    reg  [31:0]                   int_MemoryOffset0 = 'b0;
    reg  [31:0]                   int_MemoryOffset1 = 'b0;
    reg  [31:0]                   int_MemoryOffset2 = 'b0;
    reg  [31:0]                   int_MemoryOffset3 = 'b0;
    reg  [31:0]                   int_MemoryOffset4 = 'b0;
    reg  [31:0]                   int_MemoryOffset5 = 'b0;
    reg  [31:0]                   int_MemoryOffset6 = 'b0;
    reg  [31:0]                   int_MemoryOffset7 = 'b0;
    reg  [31:0]                   int_MemoryOffset8 = 'b0;
    reg  [31:0]                   int_MemoryOffset9 = 'b0;
    reg  [31:0]                   int_MemoryOffset10 = 'b0;
    reg  [31:0]                   int_MemoryOffset11 = 'b0;
    reg  [31:0]                   int_MemoryOffset12 = 'b0;
    reg  [31:0]                   int_MemoryOffset13 = 'b0;
    reg  [31:0]                   int_MemoryOffset14 = 'b0;
    reg  [31:0]                   int_MemoryOffset15 = 'b0;
    reg  [31:0]                   int_MemoryOffset16 = 'b0;
    reg  [31:0]                   int_TotalEdgeSize = 'b0;

//------------------------Instantiation------------------


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_task_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                    rdata[9] <= int_interrupt;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_GPNCONTROL_DATA_0: begin
                    rdata <= int_GPNControl[31:0];
                end
                ADDR_FIRSTMESSAGE_DATA_0: begin
                    rdata <= int_FirstMessage[31:0];
                end
                ADDR_FIRSTMESSAGE_DATA_1: begin
                    rdata <= int_FirstMessage[63:32];
                end
                ADDR_MEMORYOFFSET0_DATA_0: begin
                    rdata <= int_MemoryOffset0[31:0];
                end
                ADDR_MEMORYOFFSET1_DATA_0: begin
                    rdata <= int_MemoryOffset1[31:0];
                end
                ADDR_MEMORYOFFSET2_DATA_0: begin
                    rdata <= int_MemoryOffset2[31:0];
                end
                ADDR_MEMORYOFFSET3_DATA_0: begin
                    rdata <= int_MemoryOffset3[31:0];
                end
                ADDR_MEMORYOFFSET4_DATA_0: begin
                    rdata <= int_MemoryOffset4[31:0];
                end
                ADDR_MEMORYOFFSET5_DATA_0: begin
                    rdata <= int_MemoryOffset5[31:0];
                end
                ADDR_MEMORYOFFSET6_DATA_0: begin
                    rdata <= int_MemoryOffset6[31:0];
                end
                ADDR_MEMORYOFFSET7_DATA_0: begin
                    rdata <= int_MemoryOffset7[31:0];
                end
                ADDR_MEMORYOFFSET8_DATA_0: begin
                    rdata <= int_MemoryOffset8[31:0];
                end
                ADDR_MEMORYOFFSET9_DATA_0: begin
                    rdata <= int_MemoryOffset9[31:0];
                end
                ADDR_MEMORYOFFSET10_DATA_0: begin
                    rdata <= int_MemoryOffset10[31:0];
                end
                ADDR_MEMORYOFFSET11_DATA_0: begin
                    rdata <= int_MemoryOffset11[31:0];
                end
                ADDR_MEMORYOFFSET12_DATA_0: begin
                    rdata <= int_MemoryOffset12[31:0];
                end
                ADDR_MEMORYOFFSET13_DATA_0: begin
                    rdata <= int_MemoryOffset13[31:0];
                end
                ADDR_MEMORYOFFSET14_DATA_0: begin
                    rdata <= int_MemoryOffset14[31:0];
                end
                ADDR_MEMORYOFFSET15_DATA_0: begin
                    rdata <= int_MemoryOffset15[31:0];
                end
                ADDR_MEMORYOFFSET16_DATA_0: begin
                    rdata <= int_MemoryOffset16[31:0];
                end
                ADDR_TOTALEDGESIZE_DATA_0: begin
                    rdata <= int_TotalEdgeSize[31:0];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt         = int_interrupt;
assign ap_start          = int_ap_start;
assign task_ap_done      = (ap_done && !auto_restart_status) || auto_restart_done;
assign task_ap_ready     = ap_ready && !int_auto_restart;
assign auto_restart_done = auto_restart_status && (ap_idle && !int_ap_idle);
assign GPNControl        = int_GPNControl;
assign FirstMessage      = int_FirstMessage;
assign MemoryOffset0     = int_MemoryOffset0;
assign MemoryOffset1     = int_MemoryOffset1;
assign MemoryOffset2     = int_MemoryOffset2;
assign MemoryOffset3     = int_MemoryOffset3;
assign MemoryOffset4     = int_MemoryOffset4;
assign MemoryOffset5     = int_MemoryOffset5;
assign MemoryOffset6     = int_MemoryOffset6;
assign MemoryOffset7     = int_MemoryOffset7;
assign MemoryOffset8     = int_MemoryOffset8;
assign MemoryOffset9     = int_MemoryOffset9;
assign MemoryOffset10    = int_MemoryOffset10;
assign MemoryOffset11    = int_MemoryOffset11;
assign MemoryOffset12    = int_MemoryOffset12;
assign MemoryOffset13    = int_MemoryOffset13;
assign MemoryOffset14    = int_MemoryOffset14;
assign MemoryOffset15    = int_MemoryOffset15;
assign MemoryOffset16    = int_MemoryOffset16;
assign TotalEdgeSize     = int_TotalEdgeSize;
// int_interrupt
always @(posedge ACLK) begin
    if (ARESET)
        int_interrupt <= 1'b0;
    else if (ACLK_EN) begin
        if (int_gie && (|int_isr))
            int_interrupt <= 1'b1;
        else
            int_interrupt <= 1'b0;
    end
end

// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_done <= ap_done;
    end
end

// int_task_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_task_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_done)
            int_task_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_task_ap_done <= 1'b0; // clear on read
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_ready)
            int_ap_ready <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_ready <= 1'b0;
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// auto_restart_status
always @(posedge ACLK) begin
    if (ARESET)
        auto_restart_status <= 1'b0;
    else if (ACLK_EN) begin
        if (int_auto_restart)
            auto_restart_status <= 1'b1;
        else if (ap_idle)
            auto_restart_status <= 1'b0;
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (ar_hs && raddr == ADDR_ISR)
            int_isr[0] <= 1'b0; // clear on read
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (ar_hs && raddr == ADDR_ISR)
            int_isr[1] <= 1'b0; // clear on read
    end
end

// int_GPNControl[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_GPNControl[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GPNCONTROL_DATA_0)
            int_GPNControl[31:0] <= (WDATA[31:0] & wmask) | (int_GPNControl[31:0] & ~wmask);
    end
end

// int_FirstMessage[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_FirstMessage[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_FIRSTMESSAGE_DATA_0)
            int_FirstMessage[31:0] <= (WDATA[31:0] & wmask) | (int_FirstMessage[31:0] & ~wmask);
    end
end

// int_FirstMessage[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_FirstMessage[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_FIRSTMESSAGE_DATA_1)
            int_FirstMessage[63:32] <= (WDATA[31:0] & wmask) | (int_FirstMessage[63:32] & ~wmask);
    end
end

// int_MemoryOffset0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_MemoryOffset0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_MEMORYOFFSET0_DATA_0)
            int_MemoryOffset0[31:0] <= (WDATA[31:0] & wmask) | (int_MemoryOffset0[31:0] & ~wmask);
    end
end

// int_MemoryOffset1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_MemoryOffset1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_MEMORYOFFSET1_DATA_0)
            int_MemoryOffset1[31:0] <= (WDATA[31:0] & wmask) | (int_MemoryOffset1[31:0] & ~wmask);
    end
end

// int_MemoryOffset2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_MemoryOffset2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_MEMORYOFFSET2_DATA_0)
            int_MemoryOffset2[31:0] <= (WDATA[31:0] & wmask) | (int_MemoryOffset2[31:0] & ~wmask);
    end
end

// int_MemoryOffset3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_MemoryOffset3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_MEMORYOFFSET3_DATA_0)
            int_MemoryOffset3[31:0] <= (WDATA[31:0] & wmask) | (int_MemoryOffset3[31:0] & ~wmask);
    end
end

// int_MemoryOffset4[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_MemoryOffset4[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_MEMORYOFFSET4_DATA_0)
            int_MemoryOffset4[31:0] <= (WDATA[31:0] & wmask) | (int_MemoryOffset4[31:0] & ~wmask);
    end
end

// int_MemoryOffset5[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_MemoryOffset5[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_MEMORYOFFSET5_DATA_0)
            int_MemoryOffset5[31:0] <= (WDATA[31:0] & wmask) | (int_MemoryOffset5[31:0] & ~wmask);
    end
end

// int_MemoryOffset6[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_MemoryOffset6[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_MEMORYOFFSET6_DATA_0)
            int_MemoryOffset6[31:0] <= (WDATA[31:0] & wmask) | (int_MemoryOffset6[31:0] & ~wmask);
    end
end

// int_MemoryOffset7[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_MemoryOffset7[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_MEMORYOFFSET7_DATA_0)
            int_MemoryOffset7[31:0] <= (WDATA[31:0] & wmask) | (int_MemoryOffset7[31:0] & ~wmask);
    end
end

// int_MemoryOffset8[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_MemoryOffset8[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_MEMORYOFFSET8_DATA_0)
            int_MemoryOffset8[31:0] <= (WDATA[31:0] & wmask) | (int_MemoryOffset8[31:0] & ~wmask);
    end
end

// int_MemoryOffset9[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_MemoryOffset9[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_MEMORYOFFSET9_DATA_0)
            int_MemoryOffset9[31:0] <= (WDATA[31:0] & wmask) | (int_MemoryOffset9[31:0] & ~wmask);
    end
end

// int_MemoryOffset10[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_MemoryOffset10[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_MEMORYOFFSET10_DATA_0)
            int_MemoryOffset10[31:0] <= (WDATA[31:0] & wmask) | (int_MemoryOffset10[31:0] & ~wmask);
    end
end

// int_MemoryOffset11[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_MemoryOffset11[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_MEMORYOFFSET11_DATA_0)
            int_MemoryOffset11[31:0] <= (WDATA[31:0] & wmask) | (int_MemoryOffset11[31:0] & ~wmask);
    end
end

// int_MemoryOffset12[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_MemoryOffset12[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_MEMORYOFFSET12_DATA_0)
            int_MemoryOffset12[31:0] <= (WDATA[31:0] & wmask) | (int_MemoryOffset12[31:0] & ~wmask);
    end
end

// int_MemoryOffset13[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_MemoryOffset13[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_MEMORYOFFSET13_DATA_0)
            int_MemoryOffset13[31:0] <= (WDATA[31:0] & wmask) | (int_MemoryOffset13[31:0] & ~wmask);
    end
end

// int_MemoryOffset14[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_MemoryOffset14[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_MEMORYOFFSET14_DATA_0)
            int_MemoryOffset14[31:0] <= (WDATA[31:0] & wmask) | (int_MemoryOffset14[31:0] & ~wmask);
    end
end

// int_MemoryOffset15[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_MemoryOffset15[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_MEMORYOFFSET15_DATA_0)
            int_MemoryOffset15[31:0] <= (WDATA[31:0] & wmask) | (int_MemoryOffset15[31:0] & ~wmask);
    end
end

// int_MemoryOffset16[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_MemoryOffset16[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_MEMORYOFFSET16_DATA_0)
            int_MemoryOffset16[31:0] <= (WDATA[31:0] & wmask) | (int_MemoryOffset16[31:0] & ~wmask);
    end
end

// int_TotalEdgeSize[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_TotalEdgeSize[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TOTALEDGESIZE_DATA_0)
            int_TotalEdgeSize[31:0] <= (WDATA[31:0] & wmask) | (int_TotalEdgeSize[31:0] & ~wmask);
    end
end

//synthesis translate_off
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (int_gie & ~int_isr[0] & int_ier[0] & ap_done)
            $display ("// Interrupt Monitor : interrupt for ap_done detected @ \"%0t\"", $time);
        if (int_gie & ~int_isr[1] & int_ier[1] & ap_ready)
            $display ("// Interrupt Monitor : interrupt for ap_ready detected @ \"%0t\"", $time);
    end
end
//synthesis translate_on

//------------------------Memory logic-------------------

endmodule
