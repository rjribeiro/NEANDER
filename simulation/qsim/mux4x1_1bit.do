onerror {exit -code 1}
vlib work
vlog -work work mux4x1_1bit.vo
vlog -work work mux4x1_1bit.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.mux4x1_1bit_vlg_vec_tst -voptargs="+acc"
vcd file -direction mux4x1_1bit.msim.vcd
vcd add -internal mux4x1_1bit_vlg_vec_tst/*
vcd add -internal mux4x1_1bit_vlg_vec_tst/i1/*
run -all
quit -f
