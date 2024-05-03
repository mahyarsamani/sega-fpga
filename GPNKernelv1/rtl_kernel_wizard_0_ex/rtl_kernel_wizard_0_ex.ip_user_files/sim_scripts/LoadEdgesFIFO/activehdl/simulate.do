onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+LoadEdgesFIFO -L xilinx_vip -L xpm -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.LoadEdgesFIFO xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {LoadEdgesFIFO.udo}

run -all

endsim

quit -force
