onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+VMU_FIFOs -L xilinx_vip -L xpm -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.VMU_FIFOs xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {VMU_FIFOs.udo}

run -all

endsim

quit -force
