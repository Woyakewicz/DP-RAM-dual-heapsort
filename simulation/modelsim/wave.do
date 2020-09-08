onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /heapsort_tb/clk
add wave -noupdate /heapsort_tb/rst
add wave -noupdate /heapsort_tb/heapsort/fs
add wave -noupdate /heapsort_tb/f3
add wave -noupdate /heapsort_tb/f4
add wave -noupdate /heapsort_tb/en_rec_in
add wave -noupdate -radix unsigned /heapsort_tb/data_out
add wave -noupdate -radix unsigned /heapsort_tb/data_in
add wave -noupdate -expand -group heapsort /heapsort_tb/heapsort/clk
add wave -noupdate -expand -group heapsort /heapsort_tb/heapsort/rst
add wave -noupdate -expand -group heapsort /heapsort_tb/heapsort/fs
add wave -noupdate -expand -group heapsort /heapsort_tb/heapsort/fs_in_stb
add wave -noupdate -expand -group heapsort /heapsort_tb/heapsort/en_rec_in
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/data_in
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/data_out
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/median
add wave -noupdate -expand -group heapsort /heapsort_tb/heapsort/counter
add wave -noupdate -expand -group heapsort -group RAM1 /heapsort_tb/heapsort/addr_U_1
add wave -noupdate -expand -group heapsort -group RAM1 /heapsort_tb/heapsort/wr_en_U_1
add wave -noupdate -expand -group heapsort -group RAM1 /heapsort_tb/heapsort/data_U_1
add wave -noupdate -expand -group heapsort -group RAM1 /heapsort_tb/heapsort/q_U_1
add wave -noupdate -expand -group heapsort -group RAM1 /heapsort_tb/heapsort/addr_L_1
add wave -noupdate -expand -group heapsort -group RAM1 /heapsort_tb/heapsort/wr_en_L_1
add wave -noupdate -expand -group heapsort -group RAM1 /heapsort_tb/heapsort/data_L_1
add wave -noupdate -expand -group heapsort -group RAM1 /heapsort_tb/heapsort/q_L_1
add wave -noupdate -expand -group heapsort -group RAM2 /heapsort_tb/heapsort/addr_U_2
add wave -noupdate -expand -group heapsort -group RAM2 /heapsort_tb/heapsort/wr_en_U_2
add wave -noupdate -expand -group heapsort -group RAM2 /heapsort_tb/heapsort/data_U_2
add wave -noupdate -expand -group heapsort -group RAM2 /heapsort_tb/heapsort/q_U_2
add wave -noupdate -expand -group heapsort -group RAM2 /heapsort_tb/heapsort/addr_L_2
add wave -noupdate -expand -group heapsort -group RAM2 /heapsort_tb/heapsort/wr_en_L_2
add wave -noupdate -expand -group heapsort -group RAM2 /heapsort_tb/heapsort/data_L_2
add wave -noupdate -expand -group heapsort -group RAM2 /heapsort_tb/heapsort/q_L_2
add wave -noupdate -expand -group heapsort -group RAM3 /heapsort_tb/heapsort/addr_U_3
add wave -noupdate -expand -group heapsort -group RAM3 /heapsort_tb/heapsort/wr_en_U_3
add wave -noupdate -expand -group heapsort -group RAM3 /heapsort_tb/heapsort/data_U_3
add wave -noupdate -expand -group heapsort -group RAM3 /heapsort_tb/heapsort/q_U_3
add wave -noupdate -expand -group heapsort -group RAM3 /heapsort_tb/heapsort/addr_L_3
add wave -noupdate -expand -group heapsort -group RAM3 /heapsort_tb/heapsort/wr_en_L_3
add wave -noupdate -expand -group heapsort -group RAM3 /heapsort_tb/heapsort/data_L_3
add wave -noupdate -expand -group heapsort -group RAM3 /heapsort_tb/heapsort/q_L_3
add wave -noupdate -expand -group heapsort /heapsort_tb/heapsort/initialize_odd
add wave -noupdate -expand -group heapsort /heapsort_tb/heapsort/initialize_even
add wave -noupdate -expand -group heapsort -divider {Comparador da entrada}
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/data_in
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/data_U_1
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/q_L_1
add wave -noupdate -expand -group heapsort /heapsort_tb/heapsort/alb
add wave -noupdate -expand -group heapsort -divider {maquina de estados}
add wave -noupdate -expand -group heapsort -radix decimal /heapsort_tb/heapsort/SM_heapsort
add wave -noupdate -expand -group heapsort -radix decimal /heapsort_tb/heapsort/wait_buffer
add wave -noupdate -expand -group heapsort -radix decimal /heapsort_tb/heapsort/first_buffer_odd
add wave -noupdate -expand -group heapsort -radix decimal /heapsort_tb/heapsort/wait_odds
add wave -noupdate -expand -group heapsort -radix decimal /heapsort_tb/heapsort/first_buffer
add wave -noupdate -expand -group heapsort -radix decimal /heapsort_tb/heapsort/end_record
add wave -noupdate -expand -group heapsort -radix decimal /heapsort_tb/heapsort/clear_memory
add wave -noupdate -expand -group heapsort -divider <NULL>
add wave -noupdate -expand -group heapsort /heapsort_tb/heapsort/wr_en_L_1_reg
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/data_L_1_reg
add wave -noupdate -expand -group heapsort /heapsort_tb/heapsort/update_out_1
add wave -noupdate -expand -group heapsort /heapsort_tb/heapsort/update_in_1
add wave -noupdate -expand -group heapsort /heapsort_tb/heapsort/update_in_1_reg
add wave -noupdate -expand -group heapsort /heapsort_tb/heapsort/addr_up_out_RAM2
add wave -noupdate -expand -group heapsort /heapsort_tb/heapsort/update_out_2
add wave -noupdate -expand -group heapsort /heapsort_tb/heapsort/addr_up_out_RAM3
add wave -noupdate -expand -group sorting_node_1 /heapsort_tb/heapsort/sorting_node_1/clk
add wave -noupdate -expand -group sorting_node_1 /heapsort_tb/heapsort/sorting_node_1/rst
add wave -noupdate -expand -group sorting_node_1 -divider {Upper Records}
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/q_U
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/aux_q_U
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/data_U
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/addr_U
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/wren_U
add wave -noupdate -expand -group sorting_node_1 -divider {Lower Records}
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/q_L
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/aux_q_L
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/aux_q_R
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/data_L
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/addr_L
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/wren_L
add wave -noupdate -expand -group sorting_node_1 -divider <NULL>
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/initialize
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/update_out
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/update_in
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/address_updated_out
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/address_updated_in
add wave -noupdate -expand -group sorting_node_1 -divider SM_sorting
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/SM_sorting
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/Initial_State
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/Step1
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/wait_level
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/Step2_LN
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/Step2_RN
add wave -noupdate -expand -group sorting_node_1 -divider <NULL>
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/addr_L_reg
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/data_L_reg
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/addr_U_reg
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/data_U_reg
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/wren_L_reg
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/wren_U_reg
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/update_out_reg
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/swap_LN
add wave -noupdate -expand -group sorting_node_1 /heapsort_tb/heapsort/sorting_node_1/counter_clear
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/left
add wave -noupdate -radix unsigned /heapsort_tb/heapsort/sorting_node_1/swap_flag
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/clk
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/rst
add wave -noupdate -expand -group sorting_node_2 -divider {Upper Records}
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/q_U
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/aux_q_U
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/data_U
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/addr_U
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/wren_U
add wave -noupdate -expand -group sorting_node_2 -divider {Lower records}
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/q_L
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/aux_q_L
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/aux_q_R
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/data_L
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/addr_L
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/wren_L
add wave -noupdate -expand -group sorting_node_2 -divider <NULL>
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/initialize
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/update_out
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/update_in
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/address_updated_out
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/address_updated_in
add wave -noupdate -expand -group sorting_node_2 -divider {SM Sorting}
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/SM_sorting
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/addr_L_reg
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/data_L_reg
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/addr_U_reg
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/data_U_reg
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/wren_L_reg
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/wren_U_reg
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/update_out_reg
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/swap_LN
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/left
add wave -noupdate -radix unsigned /heapsort_tb/heapsort/sorting_node_2/swap_flag
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/clk
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/rst
add wave -noupdate -expand -group sorting_node_3 -divider {Upper Records}
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/q_U
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/aux_q_U
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/data_U
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/addr_U
add wave -noupdate -expand -group sorting_node_3 /heapsort_tb/heapsort/addr_U_3_reg
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/wren_U
add wave -noupdate -expand -group sorting_node_3 -divider {Lower Records}
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/q_L
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/aux_q_L
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/aux_q_R
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/data_L
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/addr_L
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/wren_L
add wave -noupdate -expand -group sorting_node_3 -divider <NULL>
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/initialize
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/update_out
add wave -noupdate -expand -group sorting_node_3 /heapsort_tb/heapsort/update_out_3_reg
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/update_in
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/address_updated_out
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/address_updated_in
add wave -noupdate -expand -group sorting_node_3 -divider {SM Sorting}
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/SM_sorting
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/addr_L_reg
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/data_L_reg
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/addr_U_reg
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/data_U_reg
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/wren_L_reg
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/wren_U_reg
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/counter_clear
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/update_out_reg
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/address_updated_out_reg
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/address_updated_in_reg
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/upper_updated
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/swap_LN
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/left
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/swap_flag
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/clk
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/rst
add wave -noupdate -expand -group sorting_node_4 -divider {Upper Records}
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/q_U
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/aux_q_U
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/data_U
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/addr_U
add wave -noupdate -expand -group sorting_node_4 /heapsort_tb/heapsort/addr_U_4_reg
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/wren_U
add wave -noupdate -expand -group sorting_node_4 -divider {Lower Records}
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/q_L
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/aux_q_L
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/aux_q_R
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/data_L
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/addr_L
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/wren_L
add wave -noupdate -expand -group sorting_node_4 -divider <NULL>
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/initialize
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/update_out
add wave -noupdate -expand -group sorting_node_4 /heapsort_tb/heapsort/update_out_4_reg
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/update_in
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/address_updated_out
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/address_updated_in
add wave -noupdate -expand -group sorting_node_4 -divider {SM Sorting}
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/SM_sorting
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/addr_L_reg
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/data_L_reg
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/addr_U_reg
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/data_U_reg
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/wren_L_reg
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/wren_U_reg
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/counter_clear
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/update_out_reg
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/address_updated_out_reg
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/address_updated_in_reg
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/upper_updated
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/swap_LN
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/left
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/swap_flag
add wave -noupdate -group RAM_LEVEL_1 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_1/address_a
add wave -noupdate -group RAM_LEVEL_1 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_1/address_b
add wave -noupdate -group RAM_LEVEL_1 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_1/clock
add wave -noupdate -group RAM_LEVEL_1 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_1/data_a
add wave -noupdate -group RAM_LEVEL_1 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_1/data_b
add wave -noupdate -group RAM_LEVEL_1 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_1/wren_a
add wave -noupdate -group RAM_LEVEL_1 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_1/wren_b
add wave -noupdate -group RAM_LEVEL_1 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_1/q_a
add wave -noupdate -group RAM_LEVEL_1 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_1/q_b
add wave -noupdate -group RAM_LEVEL_1 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_1/sub_wire0
add wave -noupdate -group RAM_LEVEL_1 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_1/sub_wire1
add wave -noupdate -group RAM_LEVEL_2 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2/address_a
add wave -noupdate -group RAM_LEVEL_2 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2/address_b
add wave -noupdate -group RAM_LEVEL_2 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2/clock
add wave -noupdate -group RAM_LEVEL_2 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2/data_a
add wave -noupdate -group RAM_LEVEL_2 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2/data_b
add wave -noupdate -group RAM_LEVEL_2 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2/wren_a
add wave -noupdate -group RAM_LEVEL_2 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2/wren_b
add wave -noupdate -group RAM_LEVEL_2 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2/q_a
add wave -noupdate -group RAM_LEVEL_2 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2/q_b
add wave -noupdate -group RAM_LEVEL_2 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2/sub_wire0
add wave -noupdate -group RAM_LEVEL_2 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2/sub_wire1
add wave -noupdate -group RAM_LEVEL_3 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_3/address_a
add wave -noupdate -group RAM_LEVEL_3 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_3/address_b
add wave -noupdate -group RAM_LEVEL_3 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_3/clock
add wave -noupdate -group RAM_LEVEL_3 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_3/data_a
add wave -noupdate -group RAM_LEVEL_3 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_3/data_b
add wave -noupdate -group RAM_LEVEL_3 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_3/wren_a
add wave -noupdate -group RAM_LEVEL_3 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_3/wren_b
add wave -noupdate -group RAM_LEVEL_3 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_3/q_a
add wave -noupdate -group RAM_LEVEL_3 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_3/q_b
add wave -noupdate -group RAM_LEVEL_3 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_3/sub_wire0
add wave -noupdate -group RAM_LEVEL_3 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_3/sub_wire1
add wave -noupdate -group RAM_LEVEL_4 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_4/address_a
add wave -noupdate -group RAM_LEVEL_4 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_4/address_b
add wave -noupdate -group RAM_LEVEL_4 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_4/clock
add wave -noupdate -group RAM_LEVEL_4 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_4/data_a
add wave -noupdate -group RAM_LEVEL_4 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_4/data_b
add wave -noupdate -group RAM_LEVEL_4 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_4/wren_a
add wave -noupdate -group RAM_LEVEL_4 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_4/wren_b
add wave -noupdate -group RAM_LEVEL_4 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_4/q_a
add wave -noupdate -group RAM_LEVEL_4 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_4/q_b
add wave -noupdate -group RAM_LEVEL_4 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_4/sub_wire0
add wave -noupdate -group RAM_LEVEL_4 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_4/sub_wire1
add wave -noupdate -group RAM_LEVEL_5 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_5/address_a
add wave -noupdate -group RAM_LEVEL_5 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_5/address_b
add wave -noupdate -group RAM_LEVEL_5 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_5/clock
add wave -noupdate -group RAM_LEVEL_5 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_5/data_a
add wave -noupdate -group RAM_LEVEL_5 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_5/data_b
add wave -noupdate -group RAM_LEVEL_5 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_5/wren_a
add wave -noupdate -group RAM_LEVEL_5 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_5/wren_b
add wave -noupdate -group RAM_LEVEL_5 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_5/q_a
add wave -noupdate -group RAM_LEVEL_5 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_5/q_b
add wave -noupdate -group RAM_LEVEL_5 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_5/sub_wire0
add wave -noupdate -group RAM_LEVEL_5 -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_5/sub_wire1
add wave -noupdate -group fs_stb_rise /heapsort_tb/heapsort/fs_stb_rise/clk
add wave -noupdate -group fs_stb_rise /heapsort_tb/heapsort/fs_stb_rise/in_relative
add wave -noupdate -group fs_stb_rise /heapsort_tb/heapsort/fs_stb_rise/stb_out
add wave -noupdate -group fs_stb_rise /heapsort_tb/heapsort/fs_stb_rise/stb_reg
add wave -noupdate -group fs_stb_rise /heapsort_tb/heapsort/fs_stb_rise/stb_in_reg
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {253013 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 172
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {3954784 ps}
