transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+bachelor  -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.bachelor xil_defaultlib.glbl

do {bachelor.udo}

run 1000ns

endsim

quit -force
