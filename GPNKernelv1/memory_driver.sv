`timescale 1ns / 10ps

module memory_driver#(
    parameter ADDR_WIDTH = 33, // 8 GB 
    parameter DATA_WIDTH = 256, // 256 For Vertex, 512 For Edge
    parameter MEM_WIDTH = 128, // 128 For Vertex, 64 For Edge
    parameter OFFSET = 4 // 4 For Vertex, 3 For Edge
)(
input clk,
input reset,
input logic StartWrite,
input logic [(ADDR_WIDTH-1):0] WriteAddress,
input logic [7:0] WriteBurst,
input logic [(DATA_WIDTH/8)-1:0] WriteStrobe,
input logic [(DATA_WIDTH-1):0] WriteData,
input logic WriteReady,
output logic WriteResp,
output logic [1:0] EndWrite,

input logic StartRead,
input logic [(ADDR_WIDTH-1):0] ReadAddress,
input logic [7:0] ReadBurst,
output logic [(DATA_WIDTH-1):0] ReadData,
output logic ReadReady,
output logic EndRead
);
logic [7:0] WriteCount;
logic [7:0] ReadCount;
wire [31:0] vertex_addr_r;
wire [31:0] edge_addr_r;
wire [31:0] vertex_addr_w;
wire [31:0] edge_addr_w;
assign vertex_addr_r = (ReadAddress[23:0]>>OFFSET)+(ReadCount*2);
assign edge_addr_r = (ReadAddress[27:0]>>OFFSET)+(ReadCount*8);
assign vertex_addr_w = (WriteAddress[23:0]>>OFFSET)+(WriteCount*2);
assign edge_addr_w = (WriteAddress[27:0]>>OFFSET)+(WriteCount*8);
// Write 
always @(posedge clk) begin
    if(reset)
        WriteResp <= 1'b0;
    else if(WriteReady || StartWrite)
        WriteResp <= 1'b1;
    else
        WriteResp <= 1'b0;

    if(WriteReady) begin
        if(DATA_WIDTH == 256) begin
            tb_top.v_mem_b[vertex_addr_w+1] <= WriteData[255:128];
            tb_top.v_mem_b[vertex_addr_w] <= WriteData[127:0];
        end
        else if(DATA_WIDTH == 512) begin
            tb_top.e_mem_b[edge_addr_w+7] <= WriteData[511:448];
            tb_top.e_mem_b[edge_addr_w+6] <= WriteData[447:384];
            tb_top.e_mem_b[edge_addr_w+5] <= WriteData[383:320];
            tb_top.e_mem_b[edge_addr_w+4] <= WriteData[319:256];
            tb_top.e_mem_b[edge_addr_w+3] <= WriteData[255:192];
            tb_top.e_mem_b[edge_addr_w+2] <= WriteData[191:128];
            tb_top.e_mem_b[edge_addr_w+1] <= WriteData[127:64];
            tb_top.e_mem_b[edge_addr_w] <= WriteData[63:0];
        end
    end 
    
    if(reset)
        WriteCount <= 8'd0;
    else if(EndWrite[0])
        WriteCount <= 8'd0;
    else if(WriteReady)
        WriteCount <= WriteCount + 1'b1;
    else 
        WriteCount <= WriteCount;

    if(reset)
        EndWrite <= 2'b00;
    else if(EndWrite[0])
        EndWrite <= 2'b00;
    else if(WriteReady && WriteCount==WriteBurst)
        EndWrite <= 2'b01;
    else 
        EndWrite <= EndWrite;
end

// Read
always @(posedge clk) begin
    if(reset)
        ReadReady <= 1'b0;
    else if(StartRead)
        ReadReady <= 1'b1;
    else if(EndRead)
        ReadReady <= 1'b0;
    else 
        ReadReady <= ReadReady;

    if (reset) ReadData <= {DATA_WIDTH{1'b0}};
    else if((ReadReady || StartRead) && ~EndRead) begin
        if(DATA_WIDTH == 256) ReadData <= {tb_top.v_mem_b[vertex_addr_r+1],tb_top.v_mem_b[vertex_addr_r]};
        else if(DATA_WIDTH == 512) ReadData <= {tb_top.e_mem_b[edge_addr_r+7], tb_top.e_mem_b[edge_addr_r+6],
                                                tb_top.e_mem_b[edge_addr_r+5], tb_top.e_mem_b[edge_addr_r+4],
                                                tb_top.e_mem_b[edge_addr_r+3], tb_top.e_mem_b[edge_addr_r+2],
                                                tb_top.e_mem_b[edge_addr_r+1], tb_top.e_mem_b[edge_addr_r]};
    end
    else ReadData <= ReadData;
    
    
    if(reset)
        ReadCount <= 8'd0;
    else if(EndRead)
        ReadCount <= 8'd0;
    else if(StartRead || (ReadReady && ReadCount!=ReadBurst))
        ReadCount <= ReadCount + 1'b1;
    else
        ReadCount <= ReadCount;

    if(reset)
        EndRead <= 1'b0;
    else if((~EndRead && ReadReady && ReadCount==ReadBurst) || (StartRead && ReadBurst==0 && ~EndRead))
        EndRead <= 1'b1;
    else
        EndRead <= 1'b0;
end

endmodule