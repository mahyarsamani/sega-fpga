onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xilinx_vip -L xpm -L axi_infrastructure_v1_1_0 -L xil_defaultlib -L axi_vip_v1_1_12 -L xlconstant_v1_1_7 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L smartconnect_v1_0 -L axi_register_slice_v2_1_26 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.MemoryInterfacesVIP xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {MemoryInterfacesVIP.udo}

run -all

quit -force
