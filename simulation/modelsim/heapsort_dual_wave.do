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
add wave -noupdate -radix unsigned /heapsort_tb/data_out
add wave -noupdate -radix unsigned /heapsort_tb/data_in
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
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/wait_odds
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/first_buffer
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/end_record
add wave -noupdate -expand -group heapsort -radix unsigned /heapsort_tb/heapsort/clear_memory
add wave -noupdate -expand -group translation_layer_2 -radix unsigned /heapsort_tb/heapsort/translation_layer_2/addr_L
add wave -noupdate -expand -group translation_layer_2 -radix unsigned /heapsort_tb/heapsort/translation_layer_2/addr_R
add wave -noupdate -expand -group translation_layer_2 -radix unsigned /heapsort_tb/heapsort/translation_layer_2/addr_U
add wave -noupdate -expand -group translation_layer_2 -radix unsigned /heapsort_tb/heapsort/translation_layer_2/wr_en_L
add wave -noupdate -expand -group translation_layer_2 -radix unsigned /heapsort_tb/heapsort/translation_layer_2/wr_en_R
add wave -noupdate -expand -group translation_layer_2 -radix unsigned /heapsort_tb/heapsort/translation_layer_2/wr_en_U
add wave -noupdate -expand -group translation_layer_2 -radix unsigned /heapsort_tb/heapsort/translation_layer_2/data_L
add wave -noupdate -expand -group translation_layer_2 -radix unsigned /heapsort_tb/heapsort/translation_layer_2/data_R
add wave -noupdate -expand -group translation_layer_2 -radix unsigned /heapsort_tb/heapsort/translation_layer_2/data_U
add wave -noupdate -expand -group translation_layer_2 -radix unsigned /heapsort_tb/heapsort/translation_layer_2/q_L
add wave -noupdate -expand -group translation_layer_2 -radix unsigned /heapsort_tb/heapsort/translation_layer_2/q_R
add wave -noupdate -expand -group translation_layer_2 -radix unsigned /heapsort_tb/heapsort/translation_layer_2/q_U
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/clk
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/rst
add wave -noupdate -expand -group sorting_node_1 -divider {Upper Records}
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/q_U
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/aux_q_U
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/data_U
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/addr_U
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/wren_U
add wave -noupdate -expand -group sorting_node_1 -divider {Lower Records}
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/q_L
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/aux_q_L
add wave -noupdate -expand -group sorting_node_1 /heapsort_tb/heapsort/addr_U_2
add wave -noupdate -expand -group sorting_node_1 /heapsort_tb/heapsort/update_out_2
add wave -noupdate -expand -group sorting_node_1 /heapsort_tb/heapsort/data_U_2
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/data_L
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/addr_L
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/wren_L
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/q_R
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/aux_q_R
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/data_R
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/addr_R
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/wren_R
add wave -noupdate -expand -group sorting_node_1 -divider <NULL>
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/initialize
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/update_out
add wave -noupdate -expand -group sorting_node_1 -radix unsigned /heapsort_tb/heapsort/sorting_node_1/update_in
add wave -noupdate -expand -group sorting_node_1 -radix unsigned -childformat {{{/heapsort_tb/heapsort/sorting_node_1/address_updated_out[0]} -radix unsigned}} -subitemconfig {{/heapsort_tb/heapsort/sorting_node_1/address_updated_out[0]} {-height 15 -radix unsigned}} /heapsort_tb/heapsort/sorting_node_1/address_updated_out
add wave -noupdate -expand -group sorting_node_1 -radix unsigned -childformat {{{/heapsort_tb/heapsort/sorting_node_1/address_updated_in[0]} -radix unsigned}} -subitemconfig {{/heapsort_tb/heapsort/sorting_node_1/address_updated_in[0]} {-height 15 -radix unsigned}} /heapsort_tb/heapsort/sorting_node_1/address_updated_in
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
add wave -noupdate -expand -group sorting_node_2 -divider {Upper Records}
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/q_U
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/aux_q_U
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/data_U
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/addr_U
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/wren_U
add wave -noupdate -expand -group sorting_node_2 -divider {Lower Records}
add wave -noupdate -expand -group sorting_node_2 -radix unsigned -childformat {{{/heapsort_tb/heapsort/sorting_node_2/q_L[15]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_2/q_L[14]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_2/q_L[13]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_2/q_L[12]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_2/q_L[11]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_2/q_L[10]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_2/q_L[9]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_2/q_L[8]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_2/q_L[7]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_2/q_L[6]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_2/q_L[5]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_2/q_L[4]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_2/q_L[3]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_2/q_L[2]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_2/q_L[1]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_2/q_L[0]} -radix unsigned}} -subitemconfig {{/heapsort_tb/heapsort/sorting_node_2/q_L[15]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_2/q_L[14]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_2/q_L[13]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_2/q_L[12]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_2/q_L[11]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_2/q_L[10]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_2/q_L[9]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_2/q_L[8]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_2/q_L[7]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_2/q_L[6]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_2/q_L[5]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_2/q_L[4]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_2/q_L[3]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_2/q_L[2]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_2/q_L[1]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_2/q_L[0]} {-height 15 -radix unsigned}} /heapsort_tb/heapsort/sorting_node_2/q_L
add wave -noupdate -expand -group sorting_node_2 -radix unsigned -childformat {{{/heapsort_tb/heapsort/sorting_node_2/aux_q_L[15]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_2/aux_q_L[14]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_2/aux_q_L[13]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_2/aux_q_L[12]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_2/aux_q_L[11]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_2/aux_q_L[10]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_2/aux_q_L[9]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_2/aux_q_L[8]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_2/aux_q_L[7]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_2/aux_q_L[6]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_2/aux_q_L[5]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_2/aux_q_L[4]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_2/aux_q_L[3]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_2/aux_q_L[2]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_2/aux_q_L[1]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_2/aux_q_L[0]} -radix unsigned}} -subitemconfig {{/heapsort_tb/heapsort/sorting_node_2/aux_q_L[15]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_2/aux_q_L[14]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_2/aux_q_L[13]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_2/aux_q_L[12]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_2/aux_q_L[11]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_2/aux_q_L[10]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_2/aux_q_L[9]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_2/aux_q_L[8]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_2/aux_q_L[7]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_2/aux_q_L[6]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_2/aux_q_L[5]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_2/aux_q_L[4]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_2/aux_q_L[3]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_2/aux_q_L[2]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_2/aux_q_L[1]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_2/aux_q_L[0]} {-height 15 -radix unsigned}} /heapsort_tb/heapsort/sorting_node_2/aux_q_L
add wave -noupdate -expand -group sorting_node_2 /heapsort_tb/heapsort/addr_U_3
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/data_L
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/addr_L
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/wren_L
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/q_R
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/aux_q_R
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/data_R
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/addr_R
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/wren_R
add wave -noupdate -expand -group sorting_node_2 -divider <NULL>
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/initialize
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/update_out
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/update_in
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/address_updated_out
add wave -noupdate -expand -group sorting_node_2 -radix unsigned /heapsort_tb/heapsort/sorting_node_2/address_updated_in
add wave -noupdate -expand -group sorting_node_2 -divider {SM sorting}
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
add wave -noupdate -expand -group sorting_node_3 -divider {Upper Records}
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/q_U
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/aux_q_U
add wave -noupdate -expand -group sorting_node_3 -radix unsigned -childformat {{{/heapsort_tb/heapsort/sorting_node_3/data_U[15]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_3/data_U[14]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_3/data_U[13]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_3/data_U[12]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_3/data_U[11]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_3/data_U[10]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_3/data_U[9]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_3/data_U[8]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_3/data_U[7]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_3/data_U[6]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_3/data_U[5]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_3/data_U[4]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_3/data_U[3]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_3/data_U[2]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_3/data_U[1]} -radix unsigned} {{/heapsort_tb/heapsort/sorting_node_3/data_U[0]} -radix unsigned}} -subitemconfig {{/heapsort_tb/heapsort/sorting_node_3/data_U[15]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_3/data_U[14]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_3/data_U[13]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_3/data_U[12]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_3/data_U[11]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_3/data_U[10]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_3/data_U[9]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_3/data_U[8]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_3/data_U[7]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_3/data_U[6]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_3/data_U[5]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_3/data_U[4]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_3/data_U[3]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_3/data_U[2]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_3/data_U[1]} {-height 15 -radix unsigned} {/heapsort_tb/heapsort/sorting_node_3/data_U[0]} {-height 15 -radix unsigned}} /heapsort_tb/heapsort/sorting_node_3/data_U
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/addr_U
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/wren_U
add wave -noupdate -expand -group sorting_node_3 -divider {Lower Records}
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
add wave -noupdate -expand -group sorting_node_3 -divider <NULL>
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/initialize
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/update_out
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/update_in
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/address_updated_out
add wave -noupdate -expand -group sorting_node_3 -radix unsigned /heapsort_tb/heapsort/sorting_node_3/address_updated_in
add wave -noupdate -expand -group sorting_node_3 -divider {SM sorting}
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
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/clk
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/rst
add wave -noupdate -expand -group sorting_node_4 -divider {Upper Records}
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/q_U
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/aux_q_U
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/data_U
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/addr_U
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/wren_U
add wave -noupdate -expand -group sorting_node_4 -divider {Lower Records}
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/q_L
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/aux_q_L
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/data_L
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/addr_L
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/wren_L
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/q_R
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/aux_q_R
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/data_R
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/addr_R
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/wren_R
add wave -noupdate -expand -group sorting_node_4 -divider <NULL>
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/initialize
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/update_out
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/update_in
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/address_updated_out
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/address_updated_in
add wave -noupdate -expand -group sorting_node_4 -divider {SM sorting}
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/SM_sorting
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/addr_L_reg
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/addr_R_reg
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/data_L_reg
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/data_R_reg
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/addr_U_reg
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/data_U_reg
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/wren_L_reg
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/wren_R_reg
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/wren_U_reg
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/update_out_reg
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/address_updated_out_reg
add wave -noupdate -expand -group sorting_node_4 -radix unsigned /heapsort_tb/heapsort/sorting_node_4/address_updated_in_reg
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/clk
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/rst
add wave -noupdate -expand -group sorting_node_5 -divider {Upper Records}
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/q_U
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/aux_q_U
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/data_U
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/addr_U
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/wren_U
add wave -noupdate -expand -group sorting_node_5 -divider {Lower Records}
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/q_L
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/aux_q_L
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/data_L
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/addr_L
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/wren_L
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/q_R
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/aux_q_R
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/data_R
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/addr_R
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/wren_R
add wave -noupdate -expand -group sorting_node_5 -divider <NULL>
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/initialize
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/update_out
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/update_in
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/address_updated_out
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/address_updated_in
add wave -noupdate -expand -group sorting_node_5 -divider {SM Sorting}
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/SM_sorting
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/addr_L_reg
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/addr_R_reg
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/data_L_reg
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/data_R_reg
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/addr_U_reg
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/data_U_reg
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/wren_L_reg
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/wren_R_reg
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/wren_U_reg
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/update_out_reg
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/address_updated_out_reg
add wave -noupdate -expand -group sorting_node_5 -radix unsigned /heapsort_tb/heapsort/sorting_node_5/address_updated_in_reg
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/clk
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/rst
add wave -noupdate -expand -group sorting_node_6 -divider {Upper Records}
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/q_U
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/aux_q_U
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/data_U
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/addr_U
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/wren_U
add wave -noupdate -expand -group sorting_node_6 -divider {Lower Records}
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/q_L
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/aux_q_L
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/data_L
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/addr_L
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/wren_L
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/q_R
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/aux_q_R
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/data_R
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/addr_R
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/wren_R
add wave -noupdate -expand -group sorting_node_6 -divider <NULL>
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/initialize
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/update_out
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/update_in
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/address_updated_out
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/address_updated_in
add wave -noupdate -expand -group sorting_node_6 -divider {SM sorting}
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/SM_sorting
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/addr_L_reg
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/addr_R_reg
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/data_L_reg
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/data_R_reg
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/addr_U_reg
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/data_U_reg
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/wren_L_reg
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/wren_R_reg
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/wren_U_reg
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/update_out_reg
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/address_updated_out_reg
add wave -noupdate -expand -group sorting_node_6 -radix unsigned /heapsort_tb/heapsort/sorting_node_6/address_updated_in_reg
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/clk
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/rst
add wave -noupdate -expand -group sorting_node_7 -divider {Upper Records}
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/q_U
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/aux_q_U
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/data_U
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/addr_U
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/wren_U
add wave -noupdate -expand -group sorting_node_7 -divider {Lower Records}
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/q_L
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/aux_q_L
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/data_L
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/addr_L
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/wren_L
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/q_R
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/aux_q_R
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/data_R
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/addr_R
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/wren_R
add wave -noupdate -expand -group sorting_node_7 -divider <NULL>
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/initialize
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/update_out
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/update_in
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/address_updated_out
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/address_updated_in
add wave -noupdate -expand -group sorting_node_7 -divider {SM sorting}
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/SM_sorting
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/addr_L_reg
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/addr_R_reg
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/data_L_reg
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/data_R_reg
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/addr_U_reg
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/data_U_reg
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/wren_L_reg
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/wren_R_reg
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/wren_U_reg
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/update_out_reg
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/address_updated_out_reg
add wave -noupdate -expand -group sorting_node_7 -radix unsigned /heapsort_tb/heapsort/sorting_node_7/address_updated_in_reg
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/clk
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/rst
add wave -noupdate -expand -group sorting_node_8 -divider {Upper Records}
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/q_U
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/aux_q_U
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/data_U
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/addr_U
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/wren_U
add wave -noupdate -expand -group sorting_node_8 -divider {Lower Records}
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/q_L
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/aux_q_L
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/data_L
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/addr_L
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/wren_L
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/q_R
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/aux_q_R
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/data_R
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/addr_R
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/wren_R
add wave -noupdate -expand -group sorting_node_8 -divider <NULL>
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/initialize
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/update_out
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/update_in
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/address_updated_out
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/address_updated_in
add wave -noupdate -expand -group sorting_node_8 -divider {SM Sorting}
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/SM_sorting
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/addr_L_reg
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/addr_R_reg
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/data_L_reg
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/data_R_reg
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/addr_U_reg
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/data_U_reg
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/wren_L_reg
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/wren_R_reg
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/wren_U_reg
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/update_out_reg
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/address_updated_out_reg
add wave -noupdate -expand -group sorting_node_8 -radix unsigned /heapsort_tb/heapsort/sorting_node_8/address_updated_in_reg
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/clk
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/rst
add wave -noupdate -expand -group sorting_node_9 -divider {Upper Records}
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/q_U
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/aux_q_U
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/data_U
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/addr_U
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/wren_U
add wave -noupdate -expand -group sorting_node_9 -divider {Lower Records}
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/q_L
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/aux_q_L
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/data_L
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/addr_L
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/wren_L
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/q_R
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/aux_q_R
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/data_R
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/addr_R
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/wren_R
add wave -noupdate -expand -group sorting_node_9 -divider <NULL>
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/initialize
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/update_out
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/update_in
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/address_updated_out
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/address_updated_in
add wave -noupdate -expand -group sorting_node_9 -divider {SM sorting}
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/SM_sorting
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/addr_L_reg
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/addr_R_reg
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/data_L_reg
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/data_R_reg
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/addr_U_reg
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/data_U_reg
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/wren_L_reg
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/wren_R_reg
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/wren_U_reg
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/update_out_reg
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/address_updated_out_reg
add wave -noupdate -expand -group sorting_node_9 -radix unsigned /heapsort_tb/heapsort/sorting_node_9/address_updated_in_reg
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/clk
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/rst
add wave -noupdate -expand -group sorting_node_10 -divider {Upper Records}
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/q_U
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/aux_q_U
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/data_U
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/addr_U
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/wren_U
add wave -noupdate -expand -group sorting_node_10 -divider {Lower Records}
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/q_L
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/aux_q_L
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/data_L
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/addr_L
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/wren_L
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/q_R
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/aux_q_R
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/data_R
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/addr_R
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/wren_R
add wave -noupdate -expand -group sorting_node_10 -divider <NULL>
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/initialize
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/update_out
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/update_in
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/address_updated_out
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/address_updated_in
add wave -noupdate -expand -group sorting_node_10 -divider {SM Sorting}
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/SM_sorting
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/addr_L_reg
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/addr_R_reg
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/data_L_reg
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/data_R_reg
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/addr_U_reg
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/data_U_reg
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/wren_L_reg
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/wren_R_reg
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/wren_U_reg
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/update_out_reg
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/address_updated_out_reg
add wave -noupdate -expand -group sorting_node_10 -radix unsigned /heapsort_tb/heapsort/sorting_node_10/address_updated_in_reg
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
add wave -noupdate -group RAM_LEVEL_2_L -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2_L/address_a
add wave -noupdate -group RAM_LEVEL_2_L -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2_L/address_b
add wave -noupdate -group RAM_LEVEL_2_L -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2_L/clock
add wave -noupdate -group RAM_LEVEL_2_L -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2_L/data_a
add wave -noupdate -group RAM_LEVEL_2_L -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2_L/data_b
add wave -noupdate -group RAM_LEVEL_2_L -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2_L/wren_a
add wave -noupdate -group RAM_LEVEL_2_L -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2_L/wren_b
add wave -noupdate -group RAM_LEVEL_2_L -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2_L/q_a
add wave -noupdate -group RAM_LEVEL_2_L -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2_L/q_b
add wave -noupdate -group RAM_LEVEL_2_L -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2_L/sub_wire0
add wave -noupdate -group RAM_LEVEL_2_L -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2_L/sub_wire1
add wave -noupdate -group RAM_LEVEL_2_R -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2_R/address_a
add wave -noupdate -group RAM_LEVEL_2_R -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2_R/address_b
add wave -noupdate -group RAM_LEVEL_2_R -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2_R/clock
add wave -noupdate -group RAM_LEVEL_2_R -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2_R/data_a
add wave -noupdate -group RAM_LEVEL_2_R -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2_R/data_b
add wave -noupdate -group RAM_LEVEL_2_R -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2_R/wren_a
add wave -noupdate -group RAM_LEVEL_2_R -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2_R/wren_b
add wave -noupdate -group RAM_LEVEL_2_R -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2_R/q_a
add wave -noupdate -group RAM_LEVEL_2_R -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2_R/q_b
add wave -noupdate -group RAM_LEVEL_2_R -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2_R/sub_wire0
add wave -noupdate -group RAM_LEVEL_2_R -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_2_R/sub_wire1
add wave -noupdate -group RAM_LEVEL_3_L -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_3_L/address_a
add wave -noupdate -group RAM_LEVEL_3_L -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_3_L/address_b
add wave -noupdate -group RAM_LEVEL_3_L -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_3_L/clock
add wave -noupdate -group RAM_LEVEL_3_L -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_3_L/data_a
add wave -noupdate -group RAM_LEVEL_3_L -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_3_L/data_b
add wave -noupdate -group RAM_LEVEL_3_L -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_3_L/wren_a
add wave -noupdate -group RAM_LEVEL_3_L -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_3_L/wren_b
add wave -noupdate -group RAM_LEVEL_3_L -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_3_L/q_a
add wave -noupdate -group RAM_LEVEL_3_L -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_3_L/q_b
add wave -noupdate -group RAM_LEVEL_3_R -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_3_R/address_a
add wave -noupdate -group RAM_LEVEL_3_R -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_3_R/address_b
add wave -noupdate -group RAM_LEVEL_3_R -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_3_R/clock
add wave -noupdate -group RAM_LEVEL_3_R -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_3_R/data_a
add wave -noupdate -group RAM_LEVEL_3_R -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_3_R/data_b
add wave -noupdate -group RAM_LEVEL_3_R -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_3_R/wren_a
add wave -noupdate -group RAM_LEVEL_3_R -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_3_R/wren_b
add wave -noupdate -group RAM_LEVEL_3_R -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_3_R/q_a
add wave -noupdate -group RAM_LEVEL_3_R -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_3_R/q_b
add wave -noupdate -group RAM_LEVEL_4_L -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_4_L/address_a
add wave -noupdate -group RAM_LEVEL_4_L -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_4_L/address_b
add wave -noupdate -group RAM_LEVEL_4_L -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_4_L/clock
add wave -noupdate -group RAM_LEVEL_4_L -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_4_L/data_a
add wave -noupdate -group RAM_LEVEL_4_L -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_4_L/data_b
add wave -noupdate -group RAM_LEVEL_4_L -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_4_L/wren_a
add wave -noupdate -group RAM_LEVEL_4_L -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_4_L/wren_b
add wave -noupdate -group RAM_LEVEL_4_L -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_4_L/q_a
add wave -noupdate -group RAM_LEVEL_4_L -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_4_L/q_b
add wave -noupdate -group RAM_LEVEL_4_R -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_4_R/address_a
add wave -noupdate -group RAM_LEVEL_4_R -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_4_R/address_b
add wave -noupdate -group RAM_LEVEL_4_R -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_4_R/clock
add wave -noupdate -group RAM_LEVEL_4_R -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_4_R/data_a
add wave -noupdate -group RAM_LEVEL_4_R -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_4_R/data_b
add wave -noupdate -group RAM_LEVEL_4_R -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_4_R/wren_a
add wave -noupdate -group RAM_LEVEL_4_R -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_4_R/wren_b
add wave -noupdate -group RAM_LEVEL_4_R -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_4_R/q_a
add wave -noupdate -group RAM_LEVEL_4_R -radix unsigned /heapsort_tb/heapsort/RAM_LEVEL_4_R/q_b
add wave -noupdate -expand -group translation_layer_3 -radix unsigned /heapsort_tb/heapsort/translation_layer_3/addr_L
add wave -noupdate -expand -group translation_layer_3 -radix unsigned /heapsort_tb/heapsort/translation_layer_3/wr_en_L
add wave -noupdate -expand -group translation_layer_3 -radix unsigned /heapsort_tb/heapsort/translation_layer_3/data_L
add wave -noupdate -expand -group translation_layer_3 -radix unsigned /heapsort_tb/heapsort/translation_layer_3/q_L
add wave -noupdate -expand -group translation_layer_3 -radix unsigned /heapsort_tb/heapsort/translation_layer_3/addr_R
add wave -noupdate -expand -group translation_layer_3 -radix unsigned /heapsort_tb/heapsort/translation_layer_3/wr_en_R
add wave -noupdate -expand -group translation_layer_3 -radix unsigned /heapsort_tb/heapsort/translation_layer_3/data_R
add wave -noupdate -expand -group translation_layer_3 -radix unsigned /heapsort_tb/heapsort/translation_layer_3/q_R
add wave -noupdate -expand -group translation_layer_3 -radix unsigned /heapsort_tb/heapsort/translation_layer_3/addr_U
add wave -noupdate -expand -group translation_layer_3 -radix unsigned /heapsort_tb/heapsort/translation_layer_3/wr_en_U
add wave -noupdate -expand -group translation_layer_3 -radix unsigned /heapsort_tb/heapsort/translation_layer_3/data_U
add wave -noupdate -expand -group translation_layer_3 -radix unsigned /heapsort_tb/heapsort/translation_layer_3/q_U
add wave -noupdate -expand -group translation_layer_4 -radix unsigned /heapsort_tb/heapsort/translation_layer_4/addr_L
add wave -noupdate -expand -group translation_layer_4 -radix unsigned /heapsort_tb/heapsort/translation_layer_4/wr_en_L
add wave -noupdate -expand -group translation_layer_4 -radix unsigned /heapsort_tb/heapsort/translation_layer_4/data_L
add wave -noupdate -expand -group translation_layer_4 -radix unsigned /heapsort_tb/heapsort/translation_layer_4/q_L
add wave -noupdate -expand -group translation_layer_4 -radix unsigned /heapsort_tb/heapsort/translation_layer_4/addr_R
add wave -noupdate -expand -group translation_layer_4 -radix unsigned /heapsort_tb/heapsort/translation_layer_4/wr_en_R
add wave -noupdate -expand -group translation_layer_4 -radix unsigned /heapsort_tb/heapsort/translation_layer_4/data_R
add wave -noupdate -expand -group translation_layer_4 -radix unsigned /heapsort_tb/heapsort/translation_layer_4/q_R
add wave -noupdate -expand -group translation_layer_4 -radix unsigned /heapsort_tb/heapsort/translation_layer_4/addr_U
add wave -noupdate -expand -group translation_layer_4 -radix unsigned /heapsort_tb/heapsort/translation_layer_4/wr_en_U
add wave -noupdate -expand -group translation_layer_4 -radix unsigned /heapsort_tb/heapsort/translation_layer_4/data_U
add wave -noupdate -expand -group translation_layer_4 -radix unsigned /heapsort_tb/heapsort/translation_layer_4/q_U
add wave -noupdate -expand -group translation_layer_5 -radix unsigned /heapsort_tb/heapsort/translation_layer_5/addr_L
add wave -noupdate -expand -group translation_layer_5 -radix unsigned /heapsort_tb/heapsort/translation_layer_5/wr_en_L
add wave -noupdate -expand -group translation_layer_5 -radix unsigned /heapsort_tb/heapsort/translation_layer_5/data_L
add wave -noupdate -expand -group translation_layer_5 -radix unsigned /heapsort_tb/heapsort/translation_layer_5/q_L
add wave -noupdate -expand -group translation_layer_5 -radix unsigned /heapsort_tb/heapsort/translation_layer_5/addr_R
add wave -noupdate -expand -group translation_layer_5 -radix unsigned /heapsort_tb/heapsort/translation_layer_5/wr_en_R
add wave -noupdate -expand -group translation_layer_5 -radix unsigned /heapsort_tb/heapsort/translation_layer_5/data_R
add wave -noupdate -expand -group translation_layer_5 -radix unsigned /heapsort_tb/heapsort/translation_layer_5/q_R
add wave -noupdate -expand -group translation_layer_5 -radix unsigned /heapsort_tb/heapsort/translation_layer_5/addr_U
add wave -noupdate -expand -group translation_layer_5 -radix unsigned /heapsort_tb/heapsort/translation_layer_5/wr_en_U
add wave -noupdate -expand -group translation_layer_5 -radix unsigned /heapsort_tb/heapsort/translation_layer_5/data_U
add wave -noupdate -expand -group translation_layer_5 -radix unsigned /heapsort_tb/heapsort/translation_layer_5/q_U
add wave -noupdate -expand -group translation_layer_6 -radix unsigned /heapsort_tb/heapsort/translation_layer_6/addr_L
add wave -noupdate -expand -group translation_layer_6 -radix unsigned /heapsort_tb/heapsort/translation_layer_6/wr_en_L
add wave -noupdate -expand -group translation_layer_6 -radix unsigned /heapsort_tb/heapsort/translation_layer_6/data_L
add wave -noupdate -expand -group translation_layer_6 -radix unsigned /heapsort_tb/heapsort/translation_layer_6/q_L
add wave -noupdate -expand -group translation_layer_6 -radix unsigned /heapsort_tb/heapsort/translation_layer_6/addr_R
add wave -noupdate -expand -group translation_layer_6 -radix unsigned /heapsort_tb/heapsort/translation_layer_6/wr_en_R
add wave -noupdate -expand -group translation_layer_6 -radix unsigned /heapsort_tb/heapsort/translation_layer_6/data_R
add wave -noupdate -expand -group translation_layer_6 -radix unsigned /heapsort_tb/heapsort/translation_layer_6/q_R
add wave -noupdate -expand -group translation_layer_6 -radix unsigned /heapsort_tb/heapsort/translation_layer_6/addr_U
add wave -noupdate -expand -group translation_layer_6 -radix unsigned /heapsort_tb/heapsort/translation_layer_6/wr_en_U
add wave -noupdate -expand -group translation_layer_6 -radix unsigned /heapsort_tb/heapsort/translation_layer_6/data_U
add wave -noupdate -expand -group translation_layer_6 -radix unsigned /heapsort_tb/heapsort/translation_layer_6/q_U
add wave -noupdate -expand -group translation_layer_7 -radix unsigned /heapsort_tb/heapsort/translation_layer_7/addr_L
add wave -noupdate -expand -group translation_layer_7 -radix unsigned /heapsort_tb/heapsort/translation_layer_7/wr_en_L
add wave -noupdate -expand -group translation_layer_7 -radix unsigned /heapsort_tb/heapsort/translation_layer_7/data_L
add wave -noupdate -expand -group translation_layer_7 -radix unsigned /heapsort_tb/heapsort/translation_layer_7/q_L
add wave -noupdate -expand -group translation_layer_7 -radix unsigned /heapsort_tb/heapsort/translation_layer_7/addr_R
add wave -noupdate -expand -group translation_layer_7 -radix unsigned /heapsort_tb/heapsort/translation_layer_7/wr_en_R
add wave -noupdate -expand -group translation_layer_7 -radix unsigned /heapsort_tb/heapsort/translation_layer_7/data_R
add wave -noupdate -expand -group translation_layer_7 -radix unsigned /heapsort_tb/heapsort/translation_layer_7/q_R
add wave -noupdate -expand -group translation_layer_7 -radix unsigned /heapsort_tb/heapsort/translation_layer_7/addr_U
add wave -noupdate -expand -group translation_layer_7 -radix unsigned /heapsort_tb/heapsort/translation_layer_7/wr_en_U
add wave -noupdate -expand -group translation_layer_7 -radix unsigned /heapsort_tb/heapsort/translation_layer_7/data_U
add wave -noupdate -expand -group translation_layer_7 -radix unsigned /heapsort_tb/heapsort/translation_layer_7/q_U
add wave -noupdate -expand -group translation_layer_8 -radix unsigned /heapsort_tb/heapsort/translation_layer_8/addr_L
add wave -noupdate -expand -group translation_layer_8 -radix unsigned /heapsort_tb/heapsort/translation_layer_8/wr_en_L
add wave -noupdate -expand -group translation_layer_8 -radix unsigned /heapsort_tb/heapsort/translation_layer_8/data_L
add wave -noupdate -expand -group translation_layer_8 -radix unsigned /heapsort_tb/heapsort/translation_layer_8/q_L
add wave -noupdate -expand -group translation_layer_8 -radix unsigned /heapsort_tb/heapsort/translation_layer_8/addr_R
add wave -noupdate -expand -group translation_layer_8 -radix unsigned /heapsort_tb/heapsort/translation_layer_8/wr_en_R
add wave -noupdate -expand -group translation_layer_8 -radix unsigned /heapsort_tb/heapsort/translation_layer_8/data_R
add wave -noupdate -expand -group translation_layer_8 -radix unsigned /heapsort_tb/heapsort/translation_layer_8/q_R
add wave -noupdate -expand -group translation_layer_8 -radix unsigned /heapsort_tb/heapsort/translation_layer_8/addr_U
add wave -noupdate -expand -group translation_layer_8 -radix unsigned /heapsort_tb/heapsort/translation_layer_8/wr_en_U
add wave -noupdate -expand -group translation_layer_8 -radix unsigned /heapsort_tb/heapsort/translation_layer_8/data_U
add wave -noupdate -expand -group translation_layer_8 -radix unsigned /heapsort_tb/heapsort/translation_layer_8/q_U
add wave -noupdate -expand -group translation_layer_9 -radix unsigned /heapsort_tb/heapsort/translation_layer_9/addr_L
add wave -noupdate -expand -group translation_layer_9 -radix unsigned /heapsort_tb/heapsort/translation_layer_9/wr_en_L
add wave -noupdate -expand -group translation_layer_9 -radix unsigned /heapsort_tb/heapsort/translation_layer_9/data_L
add wave -noupdate -expand -group translation_layer_9 -radix unsigned /heapsort_tb/heapsort/translation_layer_9/q_L
add wave -noupdate -expand -group translation_layer_9 -radix unsigned /heapsort_tb/heapsort/translation_layer_9/addr_R
add wave -noupdate -expand -group translation_layer_9 -radix unsigned /heapsort_tb/heapsort/translation_layer_9/wr_en_R
add wave -noupdate -expand -group translation_layer_9 -radix unsigned /heapsort_tb/heapsort/translation_layer_9/data_R
add wave -noupdate -expand -group translation_layer_9 -radix unsigned /heapsort_tb/heapsort/translation_layer_9/q_R
add wave -noupdate -expand -group translation_layer_9 -radix unsigned /heapsort_tb/heapsort/translation_layer_9/addr_U
add wave -noupdate -expand -group translation_layer_9 -radix unsigned /heapsort_tb/heapsort/translation_layer_9/wr_en_U
add wave -noupdate -expand -group translation_layer_9 -radix unsigned /heapsort_tb/heapsort/translation_layer_9/data_U
add wave -noupdate -expand -group translation_layer_9 -radix unsigned /heapsort_tb/heapsort/translation_layer_9/q_U
add wave -noupdate -expand -group translation_layer_10 -radix unsigned /heapsort_tb/heapsort/translation_layer_10/addr_L
add wave -noupdate -expand -group translation_layer_10 -radix unsigned /heapsort_tb/heapsort/translation_layer_10/wr_en_L
add wave -noupdate -expand -group translation_layer_10 -radix unsigned /heapsort_tb/heapsort/translation_layer_10/data_L
add wave -noupdate -expand -group translation_layer_10 -radix unsigned /heapsort_tb/heapsort/translation_layer_10/q_L
add wave -noupdate -expand -group translation_layer_10 -radix unsigned /heapsort_tb/heapsort/translation_layer_10/addr_R
add wave -noupdate -expand -group translation_layer_10 -radix unsigned /heapsort_tb/heapsort/translation_layer_10/wr_en_R
add wave -noupdate -expand -group translation_layer_10 -radix unsigned /heapsort_tb/heapsort/translation_layer_10/data_R
add wave -noupdate -expand -group translation_layer_10 -radix unsigned /heapsort_tb/heapsort/translation_layer_10/q_R
add wave -noupdate -expand -group translation_layer_10 -radix unsigned /heapsort_tb/heapsort/translation_layer_10/addr_U
add wave -noupdate -expand -group translation_layer_10 -radix unsigned /heapsort_tb/heapsort/translation_layer_10/wr_en_U
add wave -noupdate -expand -group translation_layer_10 -radix unsigned /heapsort_tb/heapsort/translation_layer_10/data_U
add wave -noupdate -expand -group translation_layer_10 -radix unsigned /heapsort_tb/heapsort/translation_layer_10/q_U
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {600000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 162
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
WaveRestoreZoom {299880 ps} {1799304 ps}
