onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /heapsort_tb/clk
add wave -noupdate /heapsort_tb/rst
add wave -noupdate /heapsort_tb/fs
add wave -noupdate /heapsort_tb/n_first
add wave -noupdate /heapsort_tb/en_rec_in
add wave -noupdate /heapsort_tb/f1
add wave -noupdate /heapsort_tb/f2
add wave -noupdate /heapsort_tb/f3
add wave -noupdate /heapsort_tb/f4
add wave -noupdate /heapsort_tb/data_out
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/clk
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/rst
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/fs
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/en_rec_in
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/data_in
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/data_out
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/counter
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/median
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/initialize_odd
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/initialize_even
add wave -noupdate -expand -group heapsort -divider {Comparador de entrada}
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/data_in
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/data_U_1
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/data_in
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/q_L_1
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/alb
add wave -noupdate -expand -group heapsort -divider {maquina de estados}
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/SM_heapsort
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/wait_buffer
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/first_buffer_odd
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/wait_odds
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/first_buffer
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/end_record
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/clear_memory
add wave -noupdate -expand -group translation_layer_2 -radix unsigned /heapsort_tb/heapsort/translation_layer_2/addr_L
add wave -noupdate -expand -group translation_layer_2 -radix unsigned /heapsort_tb/heapsort/translation_layer_2/wr_en_L
add wave -noupdate -expand -group translation_layer_2 -radix unsigned /heapsort_tb/heapsort/translation_layer_2/data_L
add wave -noupdate -expand -group translation_layer_2 -radix unsigned /heapsort_tb/heapsort/translation_layer_2/q_L
add wave -noupdate -expand -group translation_layer_2 -radix unsigned /heapsort_tb/heapsort/translation_layer_2/addr_R
add wave -noupdate -expand -group translation_layer_2 -radix unsigned /heapsort_tb/heapsort/translation_layer_2/wr_en_R
add wave -noupdate -expand -group translation_layer_2 -radix unsigned /heapsort_tb/heapsort/translation_layer_2/data_R
add wave -noupdate -expand -group translation_layer_2 -radix unsigned /heapsort_tb/heapsort/translation_layer_2/q_R
add wave -noupdate -expand -group translation_layer_2 -radix unsigned /heapsort_tb/heapsort/translation_layer_2/addr_U
add wave -noupdate -expand -group translation_layer_2 -radix unsigned /heapsort_tb/heapsort/translation_layer_2/wr_en_U
add wave -noupdate -expand -group translation_layer_2 -radix unsigned /heapsort_tb/heapsort/translation_layer_2/data_U
add wave -noupdate -expand -group translation_layer_2 -radix unsigned /heapsort_tb/heapsort/translation_layer_2/q_U
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/clk
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/rst
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/q_U
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/aux_q_U
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/data_U
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/addr_U
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/wren_U
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/q_L
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/aux_q_L
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/data_L
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/addr_L
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/wren_L
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/q_R
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/aux_q_R
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/data_R
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/addr_R
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/wren_R
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/initialize
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/update_out
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/update_in
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/address_updated_out
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/address_updated_in
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/SM_sorting
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/addr_L_reg
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/addr_R_reg
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/data_L_reg
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/data_R_reg
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/addr_U_reg
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/data_U_reg
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/wren_L_reg
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/wren_R_reg
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/wren_U_reg
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/update_out_reg
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/address_updated_out_reg
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/address_updated_in_reg
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/clk
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/rst
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/q_U
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/aux_q_U
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/data_U
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/addr_U
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/wren_U
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/q_L
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/aux_q_L
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/data_L
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/addr_L
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/wren_L
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/q_R
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/aux_q_R
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/data_R
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/addr_R
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/wren_R
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/initialize
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/update_out
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/update_in
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/address_updated_out
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/address_updated_in
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/SM_sorting
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/addr_L_reg
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/addr_R_reg
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/data_L_reg
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/data_R_reg
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/addr_U_reg
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/data_U_reg
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/wren_L_reg
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/wren_R_reg
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/wren_U_reg
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/update_out_reg
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/address_updated_out_reg
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/address_updated_in_reg
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/clk
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/rst
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/q_U
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/aux_q_U
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/data_U
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/addr_U
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/wren_U
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/q_L
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/aux_q_L
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/data_L
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/addr_L
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/wren_L
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/q_R
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/aux_q_R
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/data_R
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/addr_R
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/wren_R
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/initialize
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/update_out
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/update_in
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/address_updated_out
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/address_updated_in
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/SM_sorting
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/addr_L_reg
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/addr_R_reg
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/data_L_reg
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/data_R_reg
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/addr_U_reg
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/data_U_reg
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/wren_L_reg
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/wren_R_reg
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/wren_U_reg
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/update_out_reg
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/address_updated_out_reg
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/address_updated_in_reg
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6452059074 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {6452058958 ps} {6452060055 ps}
