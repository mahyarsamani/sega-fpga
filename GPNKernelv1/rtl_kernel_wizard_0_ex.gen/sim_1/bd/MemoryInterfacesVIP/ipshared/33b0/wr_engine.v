`timescale 1ns / 10ps
/*
 * Original Source: Copyright 2019 - 2020, RC4ML, Zhejiang University, https://github.com/RC4ML/Shuhai
 * Modifications: Austin York, University of California, Davis
 *
 * This hardware operator is free software: you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

//=====================================
//             Write Engine
//=====================================
module wr_engine #(
    parameter ENGINE_ID   = 0,
    parameter ADDR_WIDTH  = 33,                   // 8G-->33 bits
    parameter DATA_WIDTH  = 256,                  // 256 HBM & 512 DDR4
    parameter ID_WIDTH    = 6,
    parameter LEN_WIDTH   = 8
)(
    input                         clk,            // should be 450MHz
    input                         resetn,          // negative reset

    //-------------------Begin/Stop Write--------------------//
    input                         start,
    input      [ADDR_WIDTH - 1:0] write_addr,
    input       [LEN_WIDTH - 1:0] burst,
    input      [DATA_WIDTH - 1:0] write_data,
    input                         write_ready,
    output reg                    write_resp,
    output                        write_last,
    output reg              [1:0] write_end,

    //----------------------AXI Signals----------------------//
    // Write Address (Output) 
    output                        m_axi_AWVALID,  // wr address valid
    output reg [ADDR_WIDTH - 1:0] m_axi_AWADDR,   // wr byte address
    output       [ID_WIDTH - 1:0] m_axi_AWID,     // wr address id
    output reg  [LEN_WIDTH - 1:0] m_axi_AWLEN,    // wr burst = awlen+1
    output                  [2:0] m_axi_AWSIZE,   // wr 3'b101, 32B
    output                  [1:0] m_axi_AWBURST,  // wr burst type: 01 (INC), 00 (FIXED)
    output                        m_axi_AWLOCK,   // wr no
    output                  [3:0] m_axi_AWCACHE,  // wr no
    output                  [2:0] m_axi_AWPROT,   // wr no
    output                  [3:0] m_axi_AWQOS,    // wr no
    output                  [3:0] m_axi_AWREGION, // wr no
    input                         m_axi_AWREADY,  // wr ready to accept address.

    // Write Data (Output)
    output                        m_axi_WVALID,   // wr data valid
    output reg [DATA_WIDTH - 1:0] m_axi_WDATA,    // wr data
    output     [DATA_WIDTH/8-1:0] m_axi_WSTRB,    // wr data strob
    output                        m_axi_WLAST,    // wr last beat in a burst
    output       [ID_WIDTH - 1:0] m_axi_WID,      // wr data id
    input                         m_axi_WREADY,   // wr ready to accept data

    // Write Response (Input)
    input                         m_axi_BVALID,   // wr response valid
    input                   [1:0] m_axi_BRESP,    // wr response status
    input        [ID_WIDTH - 1:0] m_axi_BID,      // wr response id
    output                        m_axi_BREADY    // wr response ready
);

reg started;
reg [1:0] write_end_r;
wire resp;
reg guard_AWVALID, guard_WVALID, guard_BREADY, guard_WLAST;
reg [DATA_WIDTH-1:0] stored_write_data;
reg [7:0] burst_count;
wire [7:0] next_burst_count;

//----------------------Parameters----------------------//
assign m_axi_AWID     = ENGINE_ID;
assign m_axi_AWBURST  = 2'b01; // Inc (01), Fixed (00)
assign m_axi_AWSIZE   = (DATA_WIDTH == 64)? 3'b011: ((DATA_WIDTH == 128)? 3'b100: ((DATA_WIDTH == 256)? 3'b101: 3'b110)); // 64, 128, 256, or 512 bits. Default == 512.
assign m_axi_AWLOCK   = 1'b0;   // Normal memory operation
assign m_axi_AWCACHE  = 4'b0011; // 4'b0011; // Normal, non-cacheable, modifiable, bufferable (Xilinx recommends)
assign m_axi_AWPROT   = 3'b010;  // 3'b000;  // Normal, secure, data
assign m_axi_AWQOS    = 4'b0000; // Not participating in any Qos schem, a higher value indicates a higher priority transaction
assign m_axi_AWREGION = 4'b0000; // Region indicator, default to 0
assign m_axi_WSTRB    = {(DATA_WIDTH/8){1'b1}}; // wr select by byte
assign m_axi_WID      = ENGINE_ID; // wr id

assign m_axi_BREADY  = guard_BREADY;  // Always ready
assign m_axi_AWVALID = guard_AWVALID; // wr address valid
assign m_axi_WLAST   = guard_WLAST;   // wlast is 1 for the last beat.
assign m_axi_WVALID  = guard_WVALID;  // wr data valid
assign resp          = (m_axi_BRESP==2'b00 || m_axi_BRESP==2'b01) ? 1'b1:1'b0; // 00/01 OKAY, 10/11 ERRORS
assign write_last    = guard_WLAST;
assign next_burst_count = burst_count + 1'b1;
//----------------------FSM For Addr & Data----------------------//
// Start
always @(posedge clk) begin
    if(~resetn) 
        started <= 1'b0;
    else if(start && ~started)
        started <= 1'b1;
    else 
        started <= 1'b0;
end
// Burst  
always @(posedge clk) begin
    // Counter
    if(~resetn) 
        burst_count <= 8'b00000000;
    else if(write_end[0])
        burst_count <= 8'b00000000;
    else if(m_axi_WREADY && m_axi_WVALID) 
        burst_count  <= next_burst_count;
    else 
        burst_count <= burst_count;
    // LENGTH
    if(~resetn) 
        m_axi_AWLEN <= {LEN_WIDTH{1'b0}};
    else 
        m_axi_AWLEN <= burst;
end
// Address Channels
always @(posedge clk) begin
    // Write Address
    if(~resetn) 
        m_axi_AWADDR <= {ADDR_WIDTH{1'b0}};
    else if(started || (~m_axi_AWREADY && m_axi_AWVALID)) 
        m_axi_AWADDR <= write_addr;
    else 
        m_axi_AWADDR <= {ADDR_WIDTH{1'b0}};
    // Address Valid
    if(~resetn)
        guard_AWVALID <= 1'b0;
    else if(started || (~m_axi_AWREADY && m_axi_AWVALID)) 
        guard_AWVALID <= 1'b1;
    else 
        guard_AWVALID <= 1'b0;
end
// Data Channels
always @(posedge clk) begin
    // Write Data
    if(~resetn) begin
        m_axi_WDATA <= {DATA_WIDTH{1'b0}};
        stored_write_data <= {DATA_WIDTH{1'b0}};
    end
    else if(write_ready && ~m_axi_WVALID) begin
        m_axi_WDATA <= write_data;
        stored_write_data <= write_data;
    end
    else 
        m_axi_WDATA <= stored_write_data;
    // Write Ready (Controller Side)
    if(~resetn)
        write_resp <= 1'b0;
    else if(m_axi_AWVALID && m_axi_AWREADY)
        write_resp <= 1'b1;
    else if(m_axi_WREADY && m_axi_WVALID)
        write_resp <= 1'b1;
    else
        write_resp <= 1'b0;
    // Write Valid
    if(~resetn) 
        guard_WVALID <= 1'b0;
    else if(m_axi_WREADY && m_axi_WVALID)
        guard_WVALID <= 1'b0;
    else if(write_ready || m_axi_WVALID) 
        guard_WVALID <= 1'b1;
    else 
        guard_WVALID <= 1'b0;
    // WLAST
    if(~resetn) 
        guard_WLAST <= 1'b0;
    else if(write_ready && burst_count==burst && ~m_axi_WLAST) 
        guard_WLAST <= 1'b1;
    else if(m_axi_WLAST && ~m_axi_WREADY && ~m_axi_WVALID) 
        guard_WLAST <= 1'b1;
    else 
        guard_WLAST <= 1'b0;
end
// Response & End
always @(posedge clk) begin
    // Response Ready
    if(~resetn) 
        guard_BREADY <= 1'b0;
    else if(m_axi_BVALID) 
        guard_BREADY <= 1'b1;
    else 
        guard_BREADY <= 1'b0;
    // Write End
    if(~resetn) begin
        write_end <= 2'b00;
        write_end_r <= 2'b00;
    end
    else if(m_axi_BVALID && m_axi_BREADY && resp) begin
        write_end <= 2'b01;
        write_end_r <= 2'b01;
    end
    else if(m_axi_BVALID && m_axi_BREADY && ~resp) begin
        write_end <= 2'b11;
        write_end_r <= 2'b11;
    end
    else begin
        write_end <= write_end_r;
        write_end_r <= 2'b00;
    end
end

endmodule
