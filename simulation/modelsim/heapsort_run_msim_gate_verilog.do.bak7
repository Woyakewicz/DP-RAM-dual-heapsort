transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {heapsort_7_1200mv_85c_slow.vo}

vlog -vlog01compat -work work +incdir+D:/VITOR/UFSC/Linse/Wavelet/FPGA/heapsort/files/test_bench {D:/VITOR/UFSC/Linse/Wavelet/FPGA/heapsort/files/test_bench/heapsort_tb.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  heapsort_tb

do D:/VITOR/UFSC/Linse/Wavelet/FPGA/heapsort/simulation/modelsim/wave.do
