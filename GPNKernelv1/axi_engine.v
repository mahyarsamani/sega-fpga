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
//             AXI Engine
//=====================================
module axi_engine #(
    parameter ENGINE_ID   = 0,
    parameter ADDR_WIDTH  = 33,               // 8G-->33 bits
    parameter DATA_WIDTH  = 256,              // 256 HBM & 512 DDR4
    parameter ID_WIDTH    = 6,    
    parameter LEN_WIDTH   = 8
)(
    input                      clk,           // should be 450MHz
    input                      resetn,         // negative reset

    //-----------------Begin/Stop Read/Write-----------------//
    input                      start_write,
    input   [ADDR_WIDTH - 1:0] write_addr,
    input    [LEN_WIDTH - 1:0] wburst,
    input   [DATA_WIDTH/8-1:0] wstrobe,
    input   [DATA_WIDTH - 1:0] write_data,
    input                      write_ready,
    output                     write_resp,
    output                     write_end,

    input                      start_read,  
    input   [ADDR_WIDTH - 1:0] read_addr,
    input    [LEN_WIDTH - 1:0] rburst,
    output  [DATA_WIDTH - 1:0] read_data,
    output                     read_ready,
    output                     read_end,

    //----------------------AXI Signals----------------------//
    //Write address (output)
    output                    m_axi_AWVALID,  // wr address valid
    output [ADDR_WIDTH - 1:0] m_axi_AWADDR,   // wr byte address
    output   [ID_WIDTH - 1:0] m_axi_AWID,     // wr address id
    output  [LEN_WIDTH - 1:0] m_axi_AWLEN,    // wr burst=awlen+1,
    output              [2:0] m_axi_AWSIZE,   // wr 3'b101, 32B
    output              [1:0] m_axi_AWBURST,  // wr burst type: 01 (INC), 00 (FIXED)
    output              [1:0] m_axi_AWLOCK,   // wr no
    output              [3:0] m_axi_AWCACHE,  // wr no
    output              [2:0] m_axi_AWPROT,   // wr no
    output              [3:0] m_axi_AWQOS,    // wr no
    output              [3:0] m_axi_AWREGION, // wr no
    input                     m_axi_AWREADY,   // wr ready to accept address.

    //Write data (output)  
    output                    m_axi_WVALID,   // wr data valid
    output [DATA_WIDTH - 1:0] m_axi_WDATA,    // wr data
    output [DATA_WIDTH/8-1:0] m_axi_WSTRB,    // wr data strob
    output                    m_axi_WLAST,    // wr last beat in a burst
    output   [ID_WIDTH - 1:0] m_axi_WID,      // wr data id
    input                     m_axi_WREADY,   // wr ready to accept data

    //Write response (input)  
    input                     m_axi_BVALID,   // wr response valid
    input               [1:0] m_axi_BRESP,    // wr response status
    input    [ID_WIDTH - 1:0] m_axi_BID,      // wr response id
    output                    m_axi_BREADY,   // wr response ready

    //Read Address (Output)  
    output                    m_axi_ARVALID,  // rd address valid
    output [ADDR_WIDTH - 1:0] m_axi_ARADDR,   // rd byte address
    output   [ID_WIDTH - 1:0] m_axi_ARID,     // rd address id
    output  [LEN_WIDTH - 1:0] m_axi_ARLEN,    // rd burst=awlen+1,
    output              [2:0] m_axi_ARSIZE,   // rd 3'b101, 32B
    output              [1:0] m_axi_ARBURST,  // rd burst type: 01 (INC), 00 (FIXED)
    output              [1:0] m_axi_ARLOCK,   // rd no
    output              [3:0] m_axi_ARCACHE,  // rd no
    output              [2:0] m_axi_ARPROT,   // rd no
    output              [3:0] m_axi_ARQOS,    // rd no
    output              [3:0] m_axi_ARREGION, // rd no
    input                     m_axi_ARREADY,  // rd ready to accept address.

    //Read Data (input)
    input                     m_axi_RVALID,   // rd data valid
    input  [DATA_WIDTH - 1:0] m_axi_RDATA,    // rd data 
    input                     m_axi_RLAST,    // rd data last
    input    [ID_WIDTH - 1:0] m_axi_RID,      // rd data id
    input               [1:0] m_axi_RRESP,    // rd data status. 
    output                    m_axi_RREADY    // rd ready to accept data
);


write_engine #(
    .ENGINE_ID        (ENGINE_ID ),
    .ADDR_WIDTH       (ADDR_WIDTH),    // 8G-->33 bits
    .DATA_WIDTH       (DATA_WIDTH),    // 512-bit for DDR4
    .ID_WIDTH         (ID_WIDTH  ),  
    .LEN_WIDTH        (LEN_WIDTH )
)inst_write_engine(
    .clk              (clk           ), // should be 450MHz,
    .resetn           (resetn        ), // negative reset

    //----------------------Begin/Stop----------------------//
    .start            (start_wr      ),
    .write_addr       (write_addr    ),
    .burst            (wburst        ),
    .strobe           (wstrobe       ),
    .write_data       (write_data    ),
    .write_ready      (write_ready   ),
    .write_resp       (write_resp    ),
    .write_end        (write_end     ),

    //----------------------AXI Signals----------------------//
    //Write Address (Output)
    .m_axi_AWVALID    (m_axi_AWVALID ), // wr address valid
    .m_axi_AWADDR     (m_axi_AWADDR  ), // wr byte address
    .m_axi_AWID       (m_axi_AWID    ), // wr address id
    .m_axi_AWLEN      (m_axi_AWLEN   ), // wr burst=awlen+1
    .m_axi_AWSIZE     (m_axi_AWSIZE  ), // wr 3'b101, 32B
    .m_axi_AWBURST    (m_axi_AWBURST ), // wr burst type: 01 (INC), 00 (FIXED)
    .m_axi_AWLOCK     (m_axi_AWLOCK  ), // wr no
    .m_axi_AWCACHE    (m_axi_AWCACHE ), // wr no
    .m_axi_AWPROT     (m_axi_AWPROT  ), // wr no
    .m_axi_AWQOS      (m_axi_AWQOS   ), // wr no
    .m_axi_AWREGION   (m_axi_AWREGION), // wr no
    .m_axi_AWREADY    (m_axi_AWREADY ), // wr ready to accept address.

    //Write Data (Output)  
    .m_axi_WVALID     (m_axi_WVALID  ), // wr data valid
    .m_axi_WDATA      (m_axi_WDATA   ), // wr data
    .m_axi_WSTRB      (m_axi_WSTRB   ), // wr data strob
    .m_axi_WLAST      (m_axi_WLAST   ), // wr last beat in a burst
    .m_axi_WID        (m_axi_WID     ), // wr data id
    .m_axi_WREADY     (m_axi_WREADY  ), // wr ready to accept data

    //Write Response (input)  
    .m_axi_BVALID     (m_axi_BVALID  ), 
    .m_axi_BRESP      (m_axi_BRESP   ),
    .m_axi_BID        (m_axi_BID     ),
    .m_axi_BREADY     (m_axi_BREADY  )
);

read_engine #(
    .ENGINE_ID        (ENGINE_ID ),
    .ADDR_WIDTH       (ADDR_WIDTH),    // 8G-->33 bits
    .DATA_WIDTH       (DATA_WIDTH),    // 512-bit for DDR4
    .ID_WIDTH         (ID_WIDTH  ),  
    .LEN_WIDTH        (LEN_WIDTH )
)inst_read_engine(
    .clk              (clk           ), // should be 450MHz, 
    .resetn           (resetn        ), // negative reset,

    //----------------------Begin/Stop----------------------//
    .start            (start_rd      ),
    .read_addr        (read_addr     ),
    .burst            (rburst        ),
    .read_data        (read_data     ),
    .read_ready       (read_ready    ),
    .read_end         (read_end      ),

    //----------------------AXI Signals----------------------//
    //Read Address (Output)  
    .m_axi_ARVALID    (m_axi_ARVALID ), // rd address valid
    .m_axi_ARADDR     (m_axi_ARADDR  ), // rd byte address
    .m_axi_ARID       (m_axi_ARID    ), // rd address id
    .m_axi_ARLEN      (m_axi_ARLEN   ), // rd burst=awlen+1,
    .m_axi_ARSIZE     (m_axi_ARSIZE  ), // rd 3'b101, 32B
    .m_axi_ARBURST    (m_axi_ARBURST ), // rd burst type: 01 (INC), 00 (FIXED)
    .m_axi_ARLOCK     (m_axi_ARLOCK  ), // rd no
    .m_axi_ARCACHE    (m_axi_ARCACHE ), // rd no
    .m_axi_ARPROT     (m_axi_ARPROT  ), // rd no
    .m_axi_ARQOS      (m_axi_ARQOS   ), // rd no
    .m_axi_ARREGION   (m_axi_ARREGION), // rd no
    .m_axi_ARREADY    (m_axi_ARREADY ), // rd ready to accept address.

    //Read Data (input)
    .m_axi_RVALID     (m_axi_RVALID  ), // rd data valid
    .m_axi_RDATA      (m_axi_RDATA   ), // rd data 
    .m_axi_RLAST      (m_axi_RLAST   ), // rd data last
    .m_axi_RID        (m_axi_RID     ), // rd data id
    .m_axi_RRESP      (m_axi_RRESP   ), // rd data status. 
    .m_axi_RREADY     (m_axi_RREADY  )  // rd ready to accept data
);
endmodule
