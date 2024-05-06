`timescale 1ns / 10ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of California, Davis
// Engineer: Austin York
// 
// Create Date: 10/27/2023 12:49:19 PM
// Design Name: Message Generation Unit
// Module Name: MGU
// Project Name: SEGA Architecture
// Target Devices: Xilinx AU280
// Tool Versions: Vivado 2022.1
// Description: Take Active vertices and associated edges to Propertyogate new update messages to neighboring vertices
// 
// Dependencies: AXI Engine, Vertex Management Unit, Associated Memory (DDR4)
// 
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


//===============================================================
//                   Message Generation Unit
//===============================================================
module MGU #(
    parameter BASE_ADDR    = 33'h000000000,
	parameter VPropWidth   = 32,  // Vertex Prop Width (value that gets changed)
	parameter EIndexWidth  = 32,  // Edge Address Width 32 = 4GB
	parameter EDegreeWidth = 30,  // Edge Degree Width
	parameter DataWidth    = 512, // DDR4 data width
	parameter MsgWidth     = 64,  // output message width (also known as update)
	parameter VMUDataWidth = 94   // Vertex Property and edge information from MPU/VMU
)(
    input 						 clk,            // should be 450 MHz
	input 						 reset,         // negative reset
	output                       InActive,
//---------------------Message FIFO Signals--------------------//
	output reg  [(MsgWidth-1):0] MSGFIFO_WriteData,  // FIFO output message
	output reg                   MSGFIFO_Write, // Write FIFO
    input                        MSGFIFO_Full, // FIFO empty
	
//-----------------------VMU FIFO Signals----------------------//
	input   [(VMUDataWidth-1):0] AVMFIFO_ReadData,  // FIFO Data VMU
	output reg                   AVMFIFO_Read,  // Read FIFO
	input                        AVMFIFO_Empty, // FIFO empty
	input                        AVMFIFO_ReadValid,

//-----------------------Begin/Stop Read-----------------------//
    output reg                   UsingAXI,
	output reg            [32:0] ReadAddress,      // old vertex address
	output                 [7:0] ReadBurst,
	input	   [(DataWidth-1):0] ReadData,      // old vertex data
	output reg	   			     StartRead,       // start read
	input                        EndRead,         // finished read
	
	output reg             [9:0] History_Address,
	output reg                   History_WriteEn,
	input                 [50:0] History_ReadData,
	output reg            [50:0] History_WriteData
);

//----------------------Registers and Wires--------------------//
reg   [(DataWidth-1):0] store_ReadData; // Store read from DDR4
reg               [2:0] CurrentEdge;    // Current Edge
wire              [3:0] nextEdge;       // Edge + 1
reg  [(EDegreeWidth-1):0] CompletedEdges;
wire [(EDegreeWidth-1):0] CompletedEdges_plusone;
reg  [(EDegreeWidth-1):0] TotalEdges;
reg  [(VPropWidth-1):0] NewValue;       // Updated value
reg  [(VPropWidth-1):0] Property;            // active Property
wire             [15:0] Weight[7:0];    // edge Weight
wire             [47:0] Neighbor[7:0];  // edge Neighbor vertex
reg              [15:0] Active_Weight;
reg              [47:0] Active_Neighbor;
wire             [32:0] nextReadAddress;       // next 8 edge read, byte address
reg              [18:0] HistoryTag;
wire                    Valid;
wire             [30:0] PrevValue; 
wire             [18:0] Tag;

genvar i;


//--------------------Actively Assigned Values-----------------//
assign ReadBurst = 8'd0;
assign nextEdge               = CurrentEdge + 1'b1;
assign CompletedEdges_plusone = CompletedEdges + 1'b1;
assign nextReadAddress         = {ReadAddress[32:29], (ReadAddress[28:6] + 1'b1), 6'b000000};
assign PrevValue = History_ReadData[30:0];
assign Tag = History_ReadData[49:31];
assign Valid = History_ReadData[50];
generate 
for (i=0; i < 8; i=i+1) begin
assign Weight[i] = {store_ReadData[55+(64*i):48+(64*i)], store_ReadData[63+(64*i):56+(64*i)]}; // Left 16 bits (convert to big endian)
assign Neighbor[i] = {store_ReadData[7+(64*i):0+(64*i)], store_ReadData[15+(64*i):8+(64*i)], store_ReadData[23+(64*i):16+(64*i)],
                      store_ReadData[31+(64*i):24+(64*i)], store_ReadData[39+(64*i):32+(64*i)], store_ReadData[47+(64*i):40+(64*i)]}; // Right 48 bits (convert to big endian) + offset
end
endgenerate
//-------------------------FSM States--------------------------//
reg [3:0] state;
localparam [3:0]
    IDLE        = 4'd0,
    READ        = 4'd1,
    READ_WAIT   = 4'd2,
    STORE_READ  = 4'd3,
    CHECK_EDGES = 4'd4,
    COMPUTE     = 4'd5,
    WAIT        = 4'd6,
    CHECK_CACHE = 4'd7;
assign InActive = (state==IDLE);
//-------------------------Edge Reads--------------------------//
localparam [2:0]
    ONE         = 3'd0,
    TWO         = 3'd1,
    THREE       = 3'd2,
    FOUR        = 3'd3,
    FIVE        = 3'd4,
    SIX         = 3'd5,
    SEVEN       = 3'd6,
    EIGHT       = 3'd7;
    
//===============================================================
//                       FSM (Main Logic)
//===============================================================
always @(posedge clk)
begin
if (reset) // Reset 
begin
    AVMFIFO_Read <= 1'b0;
    MSGFIFO_Write  <= 1'b0;
    MSGFIFO_WriteData   <= {MsgWidth{1'b0}};
    History_Address   <= 10'd0;
    History_WriteData <= 51'd0;
    History_WriteEn  <= 1'b0;
    ReadAddress       <= BASE_ADDR;
    UsingAXI   <= 1'b0;
    StartRead        <= 1'b0;
    state <= IDLE;
end
else
begin

    case(state)
    IDLE:         // Wait for data
	begin
	    MSGFIFO_Write <= 1'b0;
	    MSGFIFO_WriteData  <= {MsgWidth{1'b0}};
	    History_WriteEn <= 1'b0;
		if(~AVMFIFO_Empty) // data in fifo
		begin
		    AVMFIFO_Read <= 1'b1;
		    UsingAXI   <= 1'b1;
		    state <= READ;
		end
		else UsingAXI   <= 1'b0;
	end
	READ:         // Read Edges from DDR4 (1A)
	begin
	   AVMFIFO_Read  <= 1'b0;
	   if (AVMFIFO_ReadValid) begin
            StartRead        <= 1'b1;
            Property            <= AVMFIFO_ReadData[93:62];
            ReadAddress       <= {AVMFIFO_ReadData[59:33], 6'b000000}; // Edge group of 8
            CurrentEdge    <= AVMFIFO_ReadData[32:30]; // Edge Offset (starting edge value)
            TotalEdges     <= AVMFIFO_ReadData[29:0];
            CompletedEdges <= {EDegreeWidth{1'b0}};
            state <= READ_WAIT;
		end
	end
	READ_WAIT:    // Wait for read to complete (1B)
	begin
	    MSGFIFO_Write <= 1'b0;
	    MSGFIFO_WriteData  <= {MsgWidth{1'b0}};
	    History_WriteEn <= 1'b0;
		StartRead       <= 1'b0;
		if (EndRead) begin store_ReadData <= ReadData; state <= CHECK_EDGES; end
	end
	STORE_READ: // (1C)
	begin
	    store_ReadData <= ReadData;
		state           <= CHECK_EDGES;
	end
    CHECK_EDGES: // (2A)
    begin
            MSGFIFO_Write <= 1'b0;
            MSGFIFO_WriteData  <= {MsgWidth{1'b0}};
            History_WriteEn <= 1'b0;
            state <= COMPUTE;
            case(CurrentEdge[2:0])
            ONE:
            begin
                Active_Weight   <= Weight[0];
                Active_Neighbor <= Neighbor[0];
            end
            TWO:
            begin
                Active_Weight   <= Weight[1];
                Active_Neighbor <= Neighbor[1];
            end 
            THREE:
            begin
                Active_Weight   <= Weight[2];
                Active_Neighbor <= Neighbor[2];
            end 
            FOUR:
            begin
                Active_Weight   <= Weight[3];
                Active_Neighbor <= Neighbor[3];
            end 
            FIVE:
            begin
                Active_Weight   <= Weight[4];
                Active_Neighbor <= Neighbor[4];
            end 
            SIX:
            begin
                Active_Weight   <= Weight[5];
                Active_Neighbor <= Neighbor[5];
            end 
            SEVEN:
            begin
                Active_Weight   <= Weight[6];
                Active_Neighbor <= Neighbor[6];
            end 
            EIGHT:
            begin
                Active_Weight   <= Weight[7];
                Active_Neighbor <= Neighbor[7];
            end
            endcase
    end
    COMPUTE: // (2B)
    begin
        History_Address <= Active_Neighbor[13:4];
        HistoryTag     <= Active_Neighbor[32:14];
        NewValue     <= Property + 1'b1; //Active_Weight;
        state <= WAIT;
        //state <= CHECK_CACHE;
    end
    WAIT: begin state <= CHECK_CACHE; end
    CHECK_CACHE: // (3A)
    begin
        if(~MSGFIFO_Full) begin
//                MSGFIFO_WriteData   <= {Active_Neighbor[32:0], NewValue[30:0]};
//                MSGFIFO_Write  <= 1'b1;
//                History_WriteEn  <= 1'b1;
//                History_WriteData <= {1'b1, HistoryTag, NewValue[30:0]};
            if (Valid && (HistoryTag == Tag) && (NewValue[30:0] < PrevValue)) begin // Larger value sent, new min
                MSGFIFO_WriteData <= {Active_Neighbor[32:0], NewValue[30:0]};
                MSGFIFO_Write     <= 1'b1;
                History_WriteEn   <= 1'b1;
                History_WriteData <= {1'b1, HistoryTag, NewValue[30:0]};
            end
            else if (Valid && (HistoryTag != Tag)) begin // History Miss
                MSGFIFO_WriteData <= {Active_Neighbor[32:0], NewValue[30:0]};
                MSGFIFO_Write     <= 1'b1;
                History_WriteEn   <= 1'b1;
                History_WriteData <= {1'b1, HistoryTag, NewValue[30:0]};
            end
            else if (~Valid) begin
                MSGFIFO_WriteData <= {Active_Neighbor[32:0], NewValue[30:0]};
                MSGFIFO_Write     <= 1'b1;
                History_WriteEn   <= 1'b1;
                History_WriteData <= {1'b1, HistoryTag, NewValue[30:0]};
            end
            
            if (CompletedEdges_plusone == TotalEdges) begin
                state <= IDLE; //PROPOGATE_END;
            end
            else if (nextEdge[3] == 1'b1) begin
                StartRead        <= 1'b1;
                ReadAddress       <= nextReadAddress; 
                CurrentEdge    <= 3'b000;
                CompletedEdges <= CompletedEdges_plusone;
                state <= READ_WAIT;
            end
            else begin 
                CurrentEdge    <= nextEdge;
                CompletedEdges <= CompletedEdges_plusone;
                state <= CHECK_EDGES;
            end
            
        end
    end
    default: state <= IDLE;
    endcase
end
end
    
endmodule
