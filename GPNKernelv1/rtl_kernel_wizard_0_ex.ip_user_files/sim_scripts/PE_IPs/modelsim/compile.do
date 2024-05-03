vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/blk_mem_gen_v8_4_5
vlib modelsim_lib/msim/xil_defaultlib

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap blk_mem_gen_v8_4_5 modelsim_lib/msim/blk_mem_gen_v8_4_5
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xilinx_vip -64 -incr -mfcu -sv -L axi4stream_vip_v1_1_12 -L axi_vip_v1_1_12 -L xilinx_vip "+incdir+/home/austin01/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"/home/austin01/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/austin01/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/austin01/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/austin01/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/austin01/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/austin01/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/austin01/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/austin01/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/austin01/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu -sv -L axi4stream_vip_v1_1_12 -L axi_vip_v1_1_12 -L xilinx_vip "+incdir+/home/austin01/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"/home/austin01/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/austin01/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"/home/austin01/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \

vcom -work xpm -64 -93 \
"/home/austin01/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_5 -64 -incr -mfcu "+incdir+/home/austin01/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../rtl_kernel_wizard_0_ex.gen/sources_1/bd/PE_IPs/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+/home/austin01/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/PE_IPs/ip/PE_IPs_blk_mem_gen_0_0/sim/PE_IPs_blk_mem_gen_0_0.v" \
"../../../bd/PE_IPs/ip/PE_IPs_blk_mem_gen_0_1/sim/PE_IPs_blk_mem_gen_0_1.v" \
"../../../bd/PE_IPs/ip/PE_IPs_blk_mem_gen_0_2/sim/PE_IPs_blk_mem_gen_0_2.v" \
"../../../bd/PE_IPs/ip/PE_IPs_fifo_generator_0_0/PE_IPs_fifo_generator_0_0_sim_netlist.v" \
"../../../bd/PE_IPs/ip/PE_IPs_Msg_FIFO_Out_0/PE_IPs_Msg_FIFO_Out_0_sim_netlist.v" \
"../../../bd/PE_IPs/ip/PE_IPs_Msg_FIFO_In_0/PE_IPs_Msg_FIFO_In_0_sim_netlist.v" \
"../../../bd/PE_IPs/ip/PE_IPs_Msg_FIFO_In_1/PE_IPs_Msg_FIFO_In_1_sim_netlist.v" \
"../../../bd/PE_IPs/sim/PE_IPs.v" \

vlog -work xil_defaultlib \
"glbl.v"

