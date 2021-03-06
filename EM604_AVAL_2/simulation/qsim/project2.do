onerror {quit -f}
vlib work
vlog -work work project2.vo
vlog -work work project2.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.project2_vlg_vec_tst
vcd file -direction project2.msim.vcd
vcd add -internal project2_vlg_vec_tst/*
vcd add -internal project2_vlg_vec_tst/i1/*
add wave /*
run -all
