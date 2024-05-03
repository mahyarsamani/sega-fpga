-makelib xcelium_lib/xilinx_vip -sv \
  "/home/austin01/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/home/austin01/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/home/austin01/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/home/austin01/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/home/austin01/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/home/austin01/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/home/austin01/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/home/austin01/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/home/austin01/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "/home/austin01/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/home/austin01/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  "/home/austin01/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/home/austin01/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_5 \
  "../../../../rtl_kernel_wizard_0_ex.gen/sources_1/bd/PE_IPs/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/PE_IPs/ip/PE_IPs_blk_mem_gen_0_0/sim/PE_IPs_blk_mem_gen_0_0.v" \
  "../../../bd/PE_IPs/ip/PE_IPs_blk_mem_gen_0_1/sim/PE_IPs_blk_mem_gen_0_1.v" \
  "../../../bd/PE_IPs/ip/PE_IPs_blk_mem_gen_0_2/sim/PE_IPs_blk_mem_gen_0_2.v" \
  "../../../bd/PE_IPs/ip/PE_IPs_fifo_generator_0_0/PE_IPs_fifo_generator_0_0_sim_netlist.v" \
  "../../../bd/PE_IPs/ip/PE_IPs_Msg_FIFO_Out_0/PE_IPs_Msg_FIFO_Out_0_sim_netlist.v" \
  "../../../bd/PE_IPs/ip/PE_IPs_Msg_FIFO_In_0/PE_IPs_Msg_FIFO_In_0_sim_netlist.v" \
  "../../../bd/PE_IPs/ip/PE_IPs_Msg_FIFO_In_1/PE_IPs_Msg_FIFO_In_1_sim_netlist.v" \
  "../../../bd/PE_IPs/sim/PE_IPs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

