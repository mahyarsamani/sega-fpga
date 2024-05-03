`timescale 1ns / 10ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2024 01:24:32 PM
// Design Name: 
// Module Name: data_results
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module data_results_kernel #(parameter num_vertices = 1, parameter num_edges = 1, parameter MEM_OFFSET = 256)(
    input clk,
    input GraphDone,
    input Done
    );
int cycles;
int updated_vertex;
int i;


int MPU_StartWrite[15:0];
int MPU_StartRead[15:0];
int VMU_StartRead[15:0];
int VMU_StartWrite[15:0];
int MGU_StartRead[15:0];
int MPU_acycles[15:0];
int VMU_acycles[15:0];
int MGU_acycles[15:0];
int message_writes[15:0];
int active_vertex_writes[15:0];
int active_vertex_mgu_writes[15:0];
int MSGFIFO_Full[15:0];
int AVFIFO_Full[15:0];
int AVMFIFO_Full[15:0];
int Edges_Traversed[15:0];
int first_message[15:0];
int last_message[15:0];

int insert_i[15:0];
int extract_i[15:0];
int size_i[15:0];
int agg_size_i[15:0];
int insert_o[15:0];
int extract_o[15:0];
int size_o[15:0];
int agg_size_o[15:0];

int total_messages;
int total_vertex_reads;
int total_vertex_writes;
int total_edge_reads;
int activated_count;
int num_reads;

int cache_MissA[15:0];
int cache_HitA[15:0];
bit prev_cache_MissA[15:0];
bit prev_cache_HitA[15:0];
int cache_MissB[15:0];
int cache_HitB[15:0];
bit prev_cache_MissB[15:0];
bit prev_cache_HitB[15:0];

int Frontier0;
int Frontier1;
int Frontier2;
int Frontier3;
int Frontier4;
int Frontier5;
int FrontierNU;

initial begin
cycles = 0;
updated_vertex = 0;
total_messages = 0;
total_vertex_reads = 0;
total_vertex_writes = 0;
total_edge_reads = 0;
activated_count = 0;
num_reads = 0;

for(int i=0;i<16;i=i+1) begin
MPU_StartWrite[i] = 0;
MPU_StartRead[i] = 0;
VMU_StartRead[i] = 0;
VMU_StartWrite[i] = 0;
MGU_StartRead[i] = 0;
MPU_acycles[i] = 0;
VMU_acycles[i] = 0;
MGU_acycles[i] = 0;
message_writes[i] = 0;
active_vertex_writes[i] = 0;
active_vertex_mgu_writes[i] = 0;
MSGFIFO_Full[i] = 0;
AVFIFO_Full[i] = 0;
AVMFIFO_Full[i] = 0;
Edges_Traversed[i] = 0;
first_message[i] = 0;
last_message[i] = 0;
insert_i[i] = 0;
extract_i[i] = 0;
size_i[i] = 0;
agg_size_i[i] = 0;
insert_o[i] = 0;
extract_o[i] = 0;
size_o[i] = 0;
agg_size_o[i] = 0;
cache_MissA[i] = 0;
cache_HitA[i] = 0;
prev_cache_MissA[i] = 0;
prev_cache_HitA[i] = 0;
cache_MissB[i] = 0;
cache_HitB[i] = 0;
prev_cache_MissB[i] = 0;
prev_cache_HitB[i] = 0;
end
end

always @(posedge clk) begin
if((~GraphDone || Done) && tb_top_kernel.ap_rst_n==1'b1) begin
    cycles = cycles + 1;
    
    if((kernel.HBM_00_ReadAddr > 33'h000010000) && kernel.HBM_00_StartRead_Host) $stop;
    if((kernel.DDR_00_ReadAddr > 33'h000100000)) $stop;
    //if(kernel.GPN.Processing_Element_0.uMPU.StartWrite) begin num_reads = num_reads + 1; $display("Write #%0d", num_reads); end
    if(kernel.GPN.Processing_Element_0.uVMU.SuperblockCount>128) begin $display("OVERFLOW"); $stop; end
    //if(kernel.GPN.Processing_Element_0.uVMU.Block_AddressA==0 && kernel.GPN.Processing_Element_0.uVMU.BlockA==2 &&
    //kernel.GPN.Processing_Element_0.uVMU.Block_WriteEnA) $display("AVFIFOData = %h", kernel.GPN.Processing_Element_0.uVMU.AVFIFO_ReadData);
    
    if(kernel.GPN.Processing_Element_0.uVMU.ActiveCount > 32) $stop;
//    if(kernel.GPN.Processing_Element_0.uVMU.StartCheck) begin
//    activated_count = 0;
//    for(i=0;i<num_vertices;i=i+1) begin
//    if(tb_top_kernel.v_mem_b[i][0]) begin activated_count = activated_count + 1; end
//    end
//    $display("Active In Memory = %0d", activated_count);
//    //if(activated_count!=1) $stop;
//    end
    // Cache Hit / Miss 
    if(kernel.GPN.Processing_Element_0.uMPU.HitA && kernel.GPN.Processing_Element_0.uMPU.state_A==16'h0080) cache_HitA[0] = cache_HitA[0] + 1;
    if(kernel.GPN.Processing_Element_0.uMPU.MissA && kernel.GPN.Processing_Element_0.uMPU.state_A==16'h0080) cache_MissA[0] = cache_MissA[0] + 1;
    if(kernel.GPN.Processing_Element_0.uMPU.HitB && kernel.GPN.Processing_Element_0.uMPU.state_B==16'h0080) cache_HitB[0] = cache_HitB[0] + 1;
    if(kernel.GPN.Processing_Element_0.uMPU.MissB && kernel.GPN.Processing_Element_0.uMPU.state_B==16'h0080) cache_MissB[0] = cache_MissB[0] + 1;
    prev_cache_HitA[0] = kernel.GPN.Processing_Element_0.uMPU.HitA;
    prev_cache_MissA[0] = kernel.GPN.Processing_Element_0.uMPU.MissA;
    prev_cache_HitB[0] = kernel.GPN.Processing_Element_0.uMPU.HitB;
    prev_cache_MissB[0] = kernel.GPN.Processing_Element_0.uMPU.MissB;
    
    // FIFO Information
    if(kernel.GPN.Processing_Element_0.MSGFIFO_Write_i) insert_i[0] = insert_i[0] + 1;
    if(kernel.GPN.Processing_Element_0.MSGFIFO_Read_i) extract_i[0] = extract_i[0] + 1;
    size_i[0] = insert_i[0] - extract_i[0];
    if(kernel.GPN.Processing_Element_0.MSGFIFO_Write_i) agg_size_i[0] = agg_size_i[0] + size_i[0];

    if(kernel.GPN.Processing_Element_0.MSGFIFO_Write_o) insert_o[0] = insert_o[0] + 1;
    if(kernel.GPN.Processing_Element_0.MSGFIFO_Read_o) extract_o[0] = extract_o[0] + 1;
    size_o[0] = insert_o[0] - extract_o[0];
    if(kernel.GPN.Processing_Element_0.MSGFIFO_Write_o) agg_size_o[0] = agg_size_o[0] + size_o[0];

    // =============PE 0==============
    if((kernel.GPN.Processing_Element_0.uMPU.InActive == 0) && (MPU_acycles[0] == 0)) first_message[0] = cycles;
    if(kernel.GPN.Processing_Element_0.uMPU.InActive == 0) last_message[0] = cycles;
    if(kernel.GPN.Processing_Element_0.MPU_StartWrite) MPU_StartWrite[0] = MPU_StartWrite[0] + 1;
    if(kernel.GPN.Processing_Element_0.MPU_StartRead) MPU_StartRead[0] = MPU_StartRead[0] + 1;
    if(kernel.GPN.Processing_Element_0.VMU_StartRead) VMU_StartRead[0] = VMU_StartRead[0] + 1;
    if(kernel.GPN.Processing_Element_0.DDR_StartRead) MGU_StartRead[0] = MGU_StartRead[0] + 1;
    if(kernel.GPN.Processing_Element_0.AVMFIFO_Full) AVMFIFO_Full[0] = 1;
    if(kernel.GPN.Processing_Element_0.MSGFIFO_Full_o) MSGFIFO_Full[0] = 1;
    if(kernel.GPN.Processing_Element_0.AVFIFO_Full) AVFIFO_Full[0] = 1;
    if(kernel.GPN.Processing_Element_0.MSGFIFO_Write_o) message_writes[0] = message_writes[0] + 1;
    if(kernel.GPN.Processing_Element_0.AVFIFO_Write) active_vertex_writes[0] = active_vertex_writes[0] + 1;
    if(kernel.GPN.Processing_Element_0.AVMFIFO_Write) active_vertex_mgu_writes[0] = active_vertex_mgu_writes[0] + 1;
    if(kernel.GPN.Processing_Element_0.uMPU.InActive == 0) MPU_acycles[0] = MPU_acycles[0] + 1;
    if(kernel.GPN.Processing_Element_0.uVMU.InActive == 0) VMU_acycles[0] = VMU_acycles[0] + 1;
    if(kernel.GPN.Processing_Element_0.uMGU.state != 0) MGU_acycles[0] = MGU_acycles[0] + 1;
    if(kernel.GPN.Processing_Element_0.uMGU.state == 4) Edges_Traversed[0] = Edges_Traversed[0] + 1;
    
//    if (Done || ((cycles % 10000) == 0)) begin
//        Frontier0 = 0;
//        Frontier1 = 0;
//        Frontier2 = 0;
//        Frontier3 = 0;
//        Frontier4 = 0;
//        Frontier5 = 0;
//        FrontierNU = 0;
        
//        for(int j=0;j<num_vertices;j=j+1) begin
//            if(tb_top_kernel.v_mem_gf[j] == 8'h00) begin
//                if(tb_top_kernel.v_mem_b[j][127:120] == 8'h00) Frontier0 = Frontier0 + 1;
//                //else $display("Vertex Fail/No Update @ Vertex=%0d | Test=%h | GF=0", j, tb_top_kernel.v_mem_b[j]);
//            end
//            else if(tb_top_kernel.v_mem_gf[j] == 8'h01) begin
//                if(tb_top_kernel.v_mem_b[j][127:120] == 8'h01) Frontier1 = Frontier1 + 1;
//                else $display("Vertex Fail/No Update @ Vertex=%0d | Test=%h | GF=1", j, tb_top_kernel.v_mem_b[j]);
//            end
//            else if(tb_top_kernel.v_mem_gf[j] == 8'h02) begin
//                if(tb_top_kernel.v_mem_b[j][127:120] == 8'h02) Frontier2 = Frontier2 + 1;
//                else $display("Vertex Fail/No Update @ Vertex=%0d | Test=%h | GF=2", j, tb_top_kernel.v_mem_b[j]);
//            end
//            else if(tb_top_kernel.v_mem_gf[j] == 8'h03) begin
//                if(tb_top_kernel.v_mem_b[j][127:120] == 8'h03) Frontier3 = Frontier3 + 1;
//                else $display("Vertex Fail/No Update @ Vertex=%0d | Test=%h | GF=3", j, tb_top_kernel.v_mem_b[j]);
//            end
//            else if(tb_top_kernel.v_mem_gf[j] == 8'h04) begin
//                if(tb_top_kernel.v_mem_b[j][127:120] == 8'h04) Frontier4 = Frontier4 + 1;
//                //else $display("Vertex Fail/No Update @ Vertex=%0d | Test=%h | GF=4", j, tb_top_kernel.v_mem_b[j]);
//            end
//            else if(tb_top_kernel.v_mem_gf[j] == 8'h05) begin
//                if(tb_top_kernel.v_mem_b[j][127:120] == 8'h05) Frontier5 = Frontier5 + 1;
//                else $display("Vertex Fail/No Update @ Vertex=%0d | Test=%h | GF=5", j, tb_top_kernel.v_mem_b[j]);
//            end 
//            else if(tb_top_kernel.v_mem_gf[j] == 8'hFF) begin
//                if(tb_top_kernel.v_mem_b[j][127:120] == 8'hFF) FrontierNU = FrontierNU + 1;
//                //else $display("Vertex Fail/No Update @ Vertex=%0d | Test=%h | GF=FF", j, tb_top_kernel.v_mem_b[j]);
//            end
//            if(tb_top_kernel.v_mem_b[j][0] != 1'b0) $display("Vertex Not Propogated @ Vertex=%0d | Test=%h", j, tb_top_kernel.v_mem_b[j]);
//        end
//        $display("Amount of Frontier Completed/Total Frontier @ Cycles = %0d", cycles);
//        $display("Frontier0 = %0d/%0d | Frontier1 = %0d/%0d | Frontier2 = %0d/%0d | Frontier3 = %0d/%0d", Frontier0, tb_top_kernel.Frontier0, Frontier1, tb_top_kernel.Frontier1, Frontier2, tb_top_kernel.Frontier2, Frontier3, tb_top_kernel.Frontier3);
//        $display("Frontier4 = %0d/%0d | Frontier5 = %0d/%0d | FrontierNU = %0d/%0d", Frontier4, tb_top_kernel.Frontier4, Frontier5, tb_top_kernel.Frontier5, FrontierNU, tb_top_kernel.FrontierNU);

        //$stop;
//    end
    if(Done) begin
        for(int i=0;i<1;i=i+1) begin
            $display("PE %0d", i);
            $display("Timestamp: First Message=%0d, Last Message=%0d", first_message[i], last_message[i]);
            $display("MPU_Vertex_Reads=%0d, VMU_Vertex_Reads=%0d, MPU_Vertex_Writes=%0d, MPU_Edges_Reads=%0d", MPU_StartRead[i], VMU_StartRead[i], MPU_StartWrite[i], MGU_StartRead[i]);
            $display("Message Writes=%0d, MPU_VMU Writes = %0d, VMU_MGU Writes = %0d", message_writes[i], active_vertex_writes[i], active_vertex_mgu_writes[i]);
            $display("Message FIFO Full=%0d, MPU_VMU FIFO Full=%0d, VMU_MGU FIFO Full=%0d", MSGFIFO_Full[i], AVFIFO_Full[i], AVMFIFO_Full[i]);
            $display("Avg Message(MPU) FIFO Size=%0d", agg_size_i[i]/insert_i[i]);
            $display("Avg Message(MGU) FIFO Size=%0d", agg_size_o[i]/insert_o[i]);
            $display("PortA Cache Hit =%0d, Cache Miss = %0d", cache_HitA[i], cache_MissA[i]);
            $display("PortB Cache Hit =%0d, Cache Miss = %0d", cache_HitB[i], cache_MissB[i]);
            $display("MPU Active Cycles=%0d, VMU Active Cycles=%0d, MGU Active Cycles=%0d", MPU_acycles[i], VMU_acycles[i], MGU_acycles[i]);
            $display("MPU Idle Cycles=%0d, VMU Idle Cycles=%0d, MGU Idle Cycles=%0d", cycles-MPU_acycles[i], cycles-VMU_acycles[i], cycles-MGU_acycles[i]);
            $display("Edges Traversed=%0d", Edges_Traversed[i]);
        end
        $display("Total Results");
        //$display("Updated Vertices=%0d", updated_vertex);
        $display("Cycles To Completion=%0d", cycles);
        $display("Edges Traversed=%0d", Edges_Traversed[0]+Edges_Traversed[1]+Edges_Traversed[2]+Edges_Traversed[3]+Edges_Traversed[4]+Edges_Traversed[5]
                                              +Edges_Traversed[6]+Edges_Traversed[7]+Edges_Traversed[8]+Edges_Traversed[9]+Edges_Traversed[10]+Edges_Traversed[11]
                                              +Edges_Traversed[12]+Edges_Traversed[13]+Edges_Traversed[14]+Edges_Traversed[15]);
        for(int i=0;i<16;i=i+1) begin
            total_messages = total_messages + message_writes[i];
            total_vertex_reads = total_vertex_reads + MPU_StartRead[i] + VMU_StartRead[i];
            total_vertex_writes = total_vertex_writes + MPU_StartWrite[i] + VMU_StartRead[i];
            total_edge_reads = total_edge_reads + MGU_StartRead[i];
        end
        $display("Messages=%0d", total_messages);
        $display("Vertex Reads=%0d", total_vertex_reads);
        $display("Vertex Writes=%0d", total_vertex_writes);
        $display("Edge Reads=%0d", total_edge_reads);
        $finish;
     end
end
end
endmodule