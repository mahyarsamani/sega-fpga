onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib axisddrin_vip_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {axisddrin_vip.udo}

run -all

quit -force
