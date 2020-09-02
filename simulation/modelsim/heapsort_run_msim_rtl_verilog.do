transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/VITOR/UFSC/Linse/Wavelet/FPGA/heapsort/files/utils/RAM_2_port_gen {D:/VITOR/UFSC/Linse/Wavelet/FPGA/heapsort/files/utils/RAM_2_port_gen/RAM_2_port_gen.v}
vlog -vlog01compat -work work +incdir+D:/VITOR/UFSC/Linse/Wavelet/FPGA/heapsort/files/utils {D:/VITOR/UFSC/Linse/Wavelet/FPGA/heapsort/files/utils/strobe_relative.v}
vlog -vlog01compat -work work +incdir+D:/VITOR/UFSC/Linse/Wavelet/FPGA/heapsort {D:/VITOR/UFSC/Linse/Wavelet/FPGA/heapsort/heapsort.v}
vlog -vlog01compat -work work +incdir+D:/VITOR/UFSC/Linse/Wavelet/FPGA/heapsort/files/sorting_node {D:/VITOR/UFSC/Linse/Wavelet/FPGA/heapsort/files/sorting_node/sorting_node.v}

vlog -vlog01compat -work work +incdir+D:/VITOR/UFSC/Linse/Wavelet/FPGA/heapsort/files/test_bench {D:/VITOR/UFSC/Linse/Wavelet/FPGA/heapsort/files/test_bench/heapsort_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  heapsort_tb

do D:/VITOR/UFSC/Linse/Wavelet/FPGA/heapsort/simulation/modelsim/wave.do
