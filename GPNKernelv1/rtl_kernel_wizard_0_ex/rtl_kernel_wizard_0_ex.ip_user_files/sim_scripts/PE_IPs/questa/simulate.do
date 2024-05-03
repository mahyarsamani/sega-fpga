onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib PE_IPs_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {PE_IPs.udo}

run -all

quit -force
