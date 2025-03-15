vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Vivado.gen/sources_1/bd/bachelor/ipshared/3cbc" "+incdir+../../../../Vivado.gen/sources_1/bd/bachelor/ipshared/814a/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/bachelor/ipshared/1017/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/bachelor/ipshared/4506/hdl" \
"../../../bd/bachelor/ip/bachelor_MATRIX_VECTOR_0_1/sim/bachelor_MATRIX_VECTOR_0_1.v" \
"../../../bd/bachelor/ip/bachelor_vio_0_1/sim/bachelor_vio_0_1.v" \
"../../../bd/bachelor/ip/bachelor_clk_wiz_3/bachelor_clk_wiz_3_clk_wiz.v" \
"../../../bd/bachelor/ip/bachelor_clk_wiz_3/bachelor_clk_wiz_3.v" \
"../../../bd/bachelor/sim/bachelor.v" \


vlog -work xil_defaultlib \
"glbl.v"

