module translation_layer #(parameter LEVEL = 3,
									parameter WIDTH = 15,
									parameter LENGTH = 8)
(
	//Left side records
	output [LEVEL-3:0]addr_L,
	output wr_en_L,
	output [WIDTH:0]data_L,
	input  [WIDTH:0]q_L,
	
	
	//right side records
	output [LEVEL-3:0]addr_R,
	output wr_en_R,
	output [WIDTH:0]data_R,
	input  [WIDTH:0]q_R,
	
	//Upper records translated
	input [LEVEL-2:0]addr_U,
	input wr_en_U,
	input [WIDTH:0]data_U,
	output  [WIDTH:0]q_U
);
	// 
	assign addr_L = addr_U[LEVEL-3:0];
	assign addr_R = addr_U[LEVEL-3:0];
	
	assign wr_en_L = addr_U[LEVEL-2] ? 0 : wr_en_U;
	assign wr_en_R = addr_U[LEVEL-2] ? wr_en_U : 0;
	
	assign data_L = addr_U[LEVEL-2] ? 0 : data_U;
	assign data_R = addr_U[LEVEL-2] ? data_U : 0;
	
	assign q_U = addr_U[LEVEL-2] ? q_R : q_L;
	
	
	
endmodule 
	