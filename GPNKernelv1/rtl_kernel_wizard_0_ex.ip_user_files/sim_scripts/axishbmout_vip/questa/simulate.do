onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib axishbmout_vip_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {axishbmout_vip.udo}

run -all

quit -force
