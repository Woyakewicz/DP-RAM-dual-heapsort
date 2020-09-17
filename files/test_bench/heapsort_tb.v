`timescale 1ns / 1ps
// tetstbench para teste do algoritmo heapsort
module heapsort_tb (
);

	reg clk, rst, fs;
	reg n_first;
	reg en_rec_in;
	integer f1, f2, f3, f4;
	initial 
	begin
		clk = 1;
		fs = 0; // frequencia de entrada de amsotras
		en_rec_in = 0;
		rst = 1;
		n_first = 0;
		f3 =   $fopen("../../files/data/rand_lvl_10.hex","rb");
//		f4 =   $fopen("../Signal_declipper_1ch_top_out.hex","wb");

		#220;
		rst = 0;
		en_rec_in = 1;
	end
	
	always #10 clk = ~clk;
	always #20 fs = ~fs;

	
	//wire en_rec_in;
	wire [15:0] data_out;
	reg [15:0] data_in;
//	reg [31:0] signal_1;
	always @(posedge fs)
		if ((en_rec_in) && ~rst)
			$fscanf(f3,   "%h\n", data_in);

	heapsort heapsort
	(
		.clk(clk),
		.fs(fs),
		.rst(rst),
		.data_in(data_in),
		.en_rec_in(en_rec_in),
		.data_out(data_out)
	);
	
endmodule 