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
//             Read Engine
//=====================================
module rd_engine #(
    parameter ENGINE_ID   = 0,
    parameter ADDR_WIDTH  = 33,                   // 8G-->33 bits
    parameter DATA_WIDTH  = 256,                  // 256 HBM & 512 DDR4
    parameter ID_WIDTH    = 6,    
    parameter LEN_WIDTH   = 8
)(
    input                         clk,            // should be 450MHz
    input                         resetn,          // negative reset 

    //-------------------Begin/Stop Read----------------------//
    input                         start,
    input      [ADDR_WIDTH - 1:0] read_addr,
    input       [LEN_WIDTH - 1:0] burst,
    output reg [DATA_WIDTH - 1:0] read_data,
    output reg                    read_ready,
    output reg                    read_end,

    //----------------------AXI Signals----------------------//
    // Read Address (Output)  
    output                        m_axi_ARVALID,  // rd address valid
    output reg [ADDR_WIDTH - 1:0] m_axi_ARADDR,   // rd byte address
    output       [ID_WIDTH - 1:0] m_axi_ARID,     // rd address id
    output reg  [LEN_WIDTH - 1:0] m_axi_ARLEN,    // rd burst=awlen+1
    output                  [2:0] m_axi_ARSIZE,   // rd 3'b101, 32B
    output                  [1:0] m_axi_ARBURST,  // rd burst type: 01 (INC), 00 (FIXED)
    output                        m_axi_ARLOCK,   // rd no
    output                  [3:0] m_axi_ARCACHE,  // rd no
    output                  [2:0] m_axi_ARPROT,   // rd no
    output                  [3:0] m_axi_ARQOS,    // rd no
    output                  [3:0] m_axi_ARREGION, // rd no
    input                         m_axi_ARREADY,  // rd ready to accept address.

    // Read Data (input)
    input                         m_axi_RVALID,   // rd data valid
    input      [DATA_WIDTH - 1:0] m_axi_RDATA,    // rd data // NEED TO STORE THIS VALUE
    input                         m_axi_RLAST,    // rd data last
    input        [ID_WIDTH - 1:0] m_axi_RID,      // rd data id
    input                   [1:0] m_axi_RRESP,    // rd data status
    output                        m_axi_RREADY    // rd ready to accept data
);

reg started, read_end_r;
wire resp;
reg guard_ARVALID, guard_RREADY;

//----------------------Parameters----------------------//
assign m_axi_ARID     = ENGINE_ID;
assign m_axi_ARSIZE   = (DATA_WIDTH == 64)? 3'b011: ((DATA_WIDTH == 128)? 3'b100: ((DATA_WIDTH == 256)? 3'b101: 3'b110)); // 64, 128, 256, or 512 bits. Default == 512.
assign m_axi_ARBURST  = 2'b01;   // INC, not FIXED (00)
assign m_axi_ARLOCK   = 1'b0;   // Normal memory operation
assign m_axi_ARCACHE  = 4'b0011; // 4'b0011: Normal, non-cacheable, modifiable, bufferable (Xilinx recommends)
assign m_axi_ARPROT   = 3'b010;  // 3'b000: Normal, secure, data
assign m_axi_ARQOS    = 4'b0000; // Not participating in any Qos schem, a higher value indicates a higher priority transaction
assign m_axi_ARREGION = 4'b0000; // Region indicator, default to 0

assign m_axi_RREADY  = guard_RREADY;  // Ready for data
assign m_axi_ARVALID = guard_ARVALID; // Address valid
assign resp          = (m_axi_RRESP==2'b00 || m_axi_RRESP==2'b01) ? 1'b1:1'b0; // 00/01 OKAY, 10/11 ERRORS

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
    if(~resetn)
        m_axi_ARLEN <= {LEN_WIDTH{1'b0}};
    else
        m_axi_ARLEN <= burst;
end
// Address Channels
always @(posedge clk) begin
    // Read Address
    if(~resetn) 
        m_axi_ARADDR  <= {ADDR_WIDTH{1'b0}};
    else if(started || (~m_axi_ARREADY && m_axi_ARVALID)) 
        m_axi_ARADDR  <= read_addr;
    else 
        m_axi_ARADDR  <= {ADDR_WIDTH{1'b0}};
    // Address Valid
    if(~resetn) 
        guard_ARVALID <= 1'b0;
    else if(started || (~m_axi_ARREADY && m_axi_ARVALID)) 
        guard_ARVALID <= 1'b1;
    else 
        guard_ARVALID <= 1'b0;
end
// Data Channels
always @(posedge clk) begin
    // Read Data
    if(~resetn) 
        read_data <= {DATA_WIDTH{1'b0}};
    else if(m_axi_RVALID && m_axi_RREADY && resp) 
        read_data <= m_axi_RDATA;
    else 
        read_data <= {DATA_WIDTH{1'b0}};
    // RREADY (Ready to receive data)
    if(~resetn) 
        guard_RREADY <= 1'b0;
    else if(m_axi_RLAST && m_axi_RVALID && m_axi_RREADY && resp) 
        guard_RREADY <= 1'b0;
    else if(m_axi_RVALID && m_axi_RREADY && resp) 
        guard_RREADY <= 1'b1;
    else if(m_axi_ARREADY && m_axi_ARVALID || m_axi_RREADY)  
        guard_RREADY <= 1'b1;
    else 
        guard_RREADY <= 1'b0;
    // Read Ready (Controller Side)
    if(~resetn) 
        read_ready <= 1'b0;
    else if(m_axi_RVALID && m_axi_RREADY && resp) 
        read_ready <= 1'b1;
    else 
        read_ready <= 1'b0;
end
// End
always @(posedge clk) begin
    if(~resetn) begin
        read_end <= 1'b0;
        read_end_r <= 1'b0;
    end
    else if(m_axi_RLAST && m_axi_RVALID && m_axi_RREADY && resp) begin
        read_end <= 1'b1;
        read_end_r <= 1'b1;
    end
    else begin
        read_end <= read_end_r;
        read_end_r <= 1'b0;
    end
end
endmodule
