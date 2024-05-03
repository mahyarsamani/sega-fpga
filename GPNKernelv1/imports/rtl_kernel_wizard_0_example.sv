// This is a generated file. Use and modify at your own risk.
//////////////////////////////////////////////////////////////////////////////// 
// default_nettype of none prevents implicit wire declaration.
`default_nettype none
module rtl_kernel_wizard_0_example #(
  parameter integer C_AXISHBMIN_TDATA_WIDTH  = 256,
  parameter integer C_AXISDDRIN_TDATA_WIDTH  = 512,
  parameter integer C_AXISHBMOUT_TDATA_WIDTH = 256,
  parameter integer C_AXISDDROUT_TDATA_WIDTH = 512
)
(
  // System Signals
  input  wire                                  ap_clk           ,
  input  wire                                  ap_rst_n         ,
  // Pipe (AXI4-Stream host) interface axisHBMin
  input  wire                                  axisHBMin_tvalid ,
  output wire                                  axisHBMin_tready ,
  input  wire [C_AXISHBMIN_TDATA_WIDTH-1:0]    axisHBMin_tdata  ,
  input  wire [C_AXISHBMIN_TDATA_WIDTH/8-1:0]  axisHBMin_tkeep  ,
  input  wire                                  axisHBMin_tlast  ,
  // Pipe (AXI4-Stream host) interface axisDDRin
  input  wire                                  axisDDRin_tvalid ,
  output wire                                  axisDDRin_tready ,
  input  wire [C_AXISDDRIN_TDATA_WIDTH-1:0]    axisDDRin_tdata  ,
  input  wire [C_AXISDDRIN_TDATA_WIDTH/8-1:0]  axisDDRin_tkeep  ,
  input  wire                                  axisDDRin_tlast  ,
  // Pipe (AXI4-Stream host) interface axisHBMout
  output wire                                  axisHBMout_tvalid,
  input  wire                                  axisHBMout_tready,
  output wire [C_AXISHBMOUT_TDATA_WIDTH-1:0]   axisHBMout_tdata ,
  output wire [C_AXISHBMOUT_TDATA_WIDTH/8-1:0] axisHBMout_tkeep ,
  output wire                                  axisHBMout_tlast ,
  // Pipe (AXI4-Stream host) interface axisDDRout
  output wire                                  axisDDRout_tvalid,
  input  wire                                  axisDDRout_tready,
  output wire [C_AXISDDROUT_TDATA_WIDTH-1:0]   axisDDRout_tdata ,
  output wire [C_AXISDDROUT_TDATA_WIDTH/8-1:0] axisDDRout_tkeep ,
  output wire                                  axisDDRout_tlast ,
  // Control Signals
  input  wire                                  ap_start         ,
  output wire                                  ap_idle          ,
  output wire                                  ap_done          ,
  output wire                                  ap_ready         ,
  input  wire [64-1:0]                         Message          ,
  input  wire [32-1:0]                         PEControl        
);


timeunit 1ps;
timeprecision 1ps;

///////////////////////////////////////////////////////////////////////////////
// Local Parameters
///////////////////////////////////////////////////////////////////////////////
// Large enough for interesting traffic.
localparam integer  LP_DEFAULT_LENGTH_IN_BYTES = 16384;
localparam integer  LP_NUM_EXAMPLES    = 2;

///////////////////////////////////////////////////////////////////////////////
// Wires and Variables
///////////////////////////////////////////////////////////////////////////////
(* KEEP = "yes" *)
logic                                areset                         = 1'b0;
logic                                ap_start_r                     = 1'b0;
logic                                ap_idle_r                      = 1'b1;
logic                                ap_start_pulse                ;
logic [LP_NUM_EXAMPLES-1:0]          ap_done_i                     ;
logic [LP_NUM_EXAMPLES-1:0]          ap_done_r                      = {LP_NUM_EXAMPLES{1'b0}};
logic [32-1:0]                       ctrl_xfer_size_in_bytes        = LP_DEFAULT_LENGTH_IN_BYTES;
logic [32-1:0]                       ctrl_constant                  = 32'd1;

///////////////////////////////////////////////////////////////////////////////
// Begin RTL
///////////////////////////////////////////////////////////////////////////////

// Register and invert reset signal.
always @(posedge ap_clk) begin
  areset <= ~ap_rst_n;
end

// create pulse when ap_start transitions to 1
always @(posedge ap_clk) begin
  begin
    ap_start_r <= ap_start;
  end
end

assign ap_start_pulse = ap_start & ~ap_start_r;

// ap_idle is asserted when done is asserted, it is de-asserted when ap_start_pulse
// is asserted
always @(posedge ap_clk) begin
  if (areset) begin
    ap_idle_r <= 1'b1;
  end
  else begin
    ap_idle_r <= ap_done ? 1'b1 :
      ap_start_pulse ? 1'b0 : ap_idle;
  end
end

assign ap_idle = ap_idle_r;

// Done logic
always @(posedge ap_clk) begin
  if (areset) begin
    ap_done_r <= '0;
  end
  else begin
    ap_done_r <= (ap_done) ? '0 : ap_done_r | ap_done_i;
  end
end

assign ap_done = &ap_done_r;

// Ready Logic (non-pipelined case)
assign ap_ready = ap_done;

// Vadd stream example
rtl_kernel_wizard_0_example_vadd_axis #(
  .C_S_AXIS_TDATA_WIDTH ( C_AXISHBMOUT_TDATA_WIDTH   ),
  .C_M_AXIS_TDATA_WIDTH ( C_AXISHBMOUT_TDATA_WIDTH   ),
  .C_ADDER_BIT_WIDTH    ( 32                         ),
  .C_NUM_CLOCKS         ( 1                          ),
  .C_GEN_S_AXIS_DATA    ( 0                          ),
  .C_LENGTH_IN_BYTES    ( LP_DEFAULT_LENGTH_IN_BYTES )
)
inst_example_vadd__axisHBMin_to_axisHBMout (
  .aclk          ( ap_clk            ),
  .areset        ( areset            ),
  .kernel_clk    ( ap_clk            ),
  .kernel_rst    ( areset            ),
  .s_axis_tvalid ( axisHBMin_tvalid  ),
  .s_axis_tready ( axisHBMin_tready  ),
  .s_axis_tdata  ( axisHBMin_tdata   ),
  .s_axis_tkeep  ( axisHBMin_tkeep   ),
  .s_axis_tlast  ( axisHBMin_tlast   ),
  .m_axis_tvalid ( axisHBMout_tvalid ),
  .m_axis_tready ( axisHBMout_tready ),
  .m_axis_tdata  ( axisHBMout_tdata  ),
  .m_axis_tkeep  ( axisHBMout_tkeep  ),
  .m_axis_tlast  ( axisHBMout_tlast  ),
  .ctrl_constant ( 32'b1             ),
  .ap_start      ( ap_start_pulse    ),
  .ap_idle       ( ap_idle           ),
  .ap_done       ( ap_done_i[0]      )
);

// Vadd stream example
rtl_kernel_wizard_0_example_vadd_axis #(
  .C_S_AXIS_TDATA_WIDTH ( C_AXISDDROUT_TDATA_WIDTH   ),
  .C_M_AXIS_TDATA_WIDTH ( C_AXISDDROUT_TDATA_WIDTH   ),
  .C_ADDER_BIT_WIDTH    ( 32                         ),
  .C_NUM_CLOCKS         ( 1                          ),
  .C_GEN_S_AXIS_DATA    ( 0                          ),
  .C_LENGTH_IN_BYTES    ( LP_DEFAULT_LENGTH_IN_BYTES )
)
inst_example_vadd__axisDDRin_to_axisDDRout (
  .aclk          ( ap_clk            ),
  .areset        ( areset            ),
  .kernel_clk    ( ap_clk            ),
  .kernel_rst    ( areset            ),
  .s_axis_tvalid ( axisDDRin_tvalid  ),
  .s_axis_tready ( axisDDRin_tready  ),
  .s_axis_tdata  ( axisDDRin_tdata   ),
  .s_axis_tkeep  ( axisDDRin_tkeep   ),
  .s_axis_tlast  ( axisDDRin_tlast   ),
  .m_axis_tvalid ( axisDDRout_tvalid ),
  .m_axis_tready ( axisDDRout_tready ),
  .m_axis_tdata  ( axisDDRout_tdata  ),
  .m_axis_tkeep  ( axisDDRout_tkeep  ),
  .m_axis_tlast  ( axisDDRout_tlast  ),
  .ctrl_constant ( 32'b1             ),
  .ap_start      ( ap_start_pulse    ),
  .ap_idle       ( ap_idle           ),
  .ap_done       ( ap_done_i[1]      )
);

endmodule : rtl_kernel_wizard_0_example
`default_nettype wire
