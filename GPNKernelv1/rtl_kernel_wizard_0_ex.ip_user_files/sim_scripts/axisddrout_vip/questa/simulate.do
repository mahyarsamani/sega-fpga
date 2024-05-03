onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib axisddrout_vip_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {axisddrout_vip.udo}

run -all

quit -force
