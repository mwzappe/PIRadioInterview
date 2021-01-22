onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib RootDesign_opt

do {wave.do}

view wave
view structure
view signals

do {RootDesign.udo}

run -all

quit -force
