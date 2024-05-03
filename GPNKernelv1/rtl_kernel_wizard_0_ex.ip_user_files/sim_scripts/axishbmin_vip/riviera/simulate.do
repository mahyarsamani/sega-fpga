onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+axishbmin_vip -L xilinx_vip -L xpm -L axis_infrastructure_v1_1_0 -L xil_defaultlib -L axi4stream_vip_v1_1_12 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.axishbmin_vip xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {axishbmin_vip.udo}

run -all

endsim

quit -force
