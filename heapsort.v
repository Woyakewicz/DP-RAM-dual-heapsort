module heapsort #(parameter LEVEL = 10, 
						parameter WIDTH = 31,
						parameter WINDOW_LENGTH = 2047)
(
	input clk,
	input rst,
	input fs,
	input en_rec_in,
	input [WIDTH:0] data_in,
	output [WIDTH:0] data_out
);

	reg [31:0] counter = 0;
	reg [WIDTH:0] median = 0;
	
	/******* Declaração de wires e regs para memórias *******/
	
	//Declaração de fios para a primeira memória
	wire addr_U_1;
	wire wr_en_U_1;
	wire [WIDTH:0] data_U_1;
	wire [WIDTH:0] q_U_1;
	
	wire addr_L_1;
	wire wr_en_L_1;
	wire [WIDTH:0] data_L_1;
	wire [WIDTH:0] q_L_1;
	
	
	//Declaração de fios para a segunda memória 
	wire [1:0] addr_U_2;
	wire wr_en_U_2;
	wire [WIDTH:0] data_U_2;
	wire [WIDTH:0] q_U_2;
	
	wire [1:0] addr_L_2;
	wire wr_en_L_2;
	wire [WIDTH:0] data_L_2;
	wire [WIDTH:0] q_L_2;
	
	//Declaração de fios para a terceira memória
	wire [2:0] addr_U_3;
	reg [2:0] addr_U_3_reg;
	wire wr_en_U_3;
	wire [WIDTH:0] data_U_3;
	wire [WIDTH:0] q_U_3;
	
	wire [2:0] addr_L_3;
	wire wr_en_L_3;
	wire [WIDTH:0] data_L_3;
	wire [WIDTH:0] q_L_3;
	
	//Declaração de fios para a quarta memória
	wire [3:0] addr_U_4;
	reg [3:0] addr_U_4_reg;
	wire wr_en_U_4;
	wire [WIDTH:0] data_U_4;
	wire [WIDTH:0] q_U_4;
	
	wire [3:0] addr_L_4;
	wire wr_en_L_4;
	wire [WIDTH:0] data_L_4;
	wire [WIDTH:0] q_L_4;	
	
	//Declaração de fios para a quinta memória
	wire [4:0] addr_U_5;
	reg [4:0] addr_U_5_reg;
	wire wr_en_U_5;
	wire [WIDTH:0] data_U_5;
	wire [WIDTH:0] q_U_5;
	
	wire [4:0] addr_L_5;
	wire wr_en_L_5;
	wire [WIDTH:0] data_L_5;
	wire [WIDTH:0] q_L_5;
	
	//Declaração de fios para a sexta memória
	wire [5:0] addr_U_6;
	reg [5:0] addr_U_6_reg;
	wire wr_en_U_6;
	wire [WIDTH:0] data_U_6;
	wire [WIDTH:0] q_U_6;
	
	wire [5:0] addr_L_6;
	wire wr_en_L_6;
	wire [WIDTH:0] data_L_6;
	wire [WIDTH:0] q_L_6;
	
	//Declaração de fios para a setima memória
	wire [6:0] addr_U_7;
	reg [6:0] addr_U_7_reg;
	wire wr_en_U_7;
	wire [WIDTH:0] data_U_7;
	wire [WIDTH:0] q_U_7;
	
	wire [6:0] addr_L_7;
	wire wr_en_L_7;
	wire [WIDTH:0] data_L_7;
	wire [WIDTH:0] q_L_7;	
	
	//Declaração de fios para a oitava memória
	wire [7:0] addr_U_8;
	reg [7:0] addr_U_8_reg;
	wire wr_en_U_8;
	wire [WIDTH:0] data_U_8;
	wire [WIDTH:0] q_U_8;
	
	wire [7:0] addr_L_8;
	wire wr_en_L_8;
	wire [WIDTH:0] data_L_8;
	wire [WIDTH:0] q_L_8;	
	
	//Declaração de fios para a nona memória
	wire [8:0] addr_U_9;
	reg [8:0] addr_U_9_reg;
	wire wr_en_U_9;
	wire [WIDTH:0] data_U_9;
	wire [WIDTH:0] q_U_9;
	
	wire [8:0] addr_L_9;
	wire wr_en_L_9;
	wire [WIDTH:0] data_L_9;
	wire [WIDTH:0] q_L_9;	
	
	//Declaração de fios para a décima memória
	wire [9:0] addr_U_10;
	reg [9:0] addr_U_10_reg;
	wire wr_en_U_10;
	wire [WIDTH:0] data_U_10;
	wire [WIDTH:0] q_U_10;
	
	wire [9:0] addr_L_10;
	wire wr_en_L_10;
	wire [WIDTH:0] data_L_10;
	wire [WIDTH:0] q_L_10;	
	
	//Declaração de fios para a décima primeira memória
	wire [10:0] addr_U_11;
	wire wr_en_U_11;
	wire [WIDTH:0] data_U_11;
	wire [WIDTH:0] q_U_11;
	
	wire [10:0] addr_L_11;
	wire wr_en_L_11;
	wire [WIDTH:0] data_L_11;
	wire [WIDTH:0] q_L_11;	
		
	/********************************************/
	
	/******* Declaração de wire e regs para sorting nodes *******/
	
	//declaração de variaveis para o sorting node 1
	wire update_out_1;
	wire update_in_1;
	wire [1:0] addr_up_out_RAM2;
	
	//declaração de variaveis para o sorting node 2
	
	wire update_out_2;
	wire [2:0] addr_up_out_RAM3;
	
	//declaração de variaveis para o sorting node 3
	
	wire update_out_3;
	reg update_out_3_reg;
	wire [3:0] addr_up_out_RAM4;
	
	//declaração de variaveis para o sorting node 4
	
	wire update_out_4;
	reg update_out_4_reg;
	wire [4:0] addr_up_out_RAM5;
	
	//declaração de variaveis para o sorting node 5
	
	wire update_out_5;
	reg update_out_5_reg;
	wire [5:0] addr_up_out_RAM6;
	
	//declaração de variaveis para o sorting node 6
	
	wire update_out_6;
	reg update_out_6_reg;
	wire [6:0] addr_up_out_RAM7;
	
	//declaração de variaveis para o sorting node 7
	
	wire update_out_7;
	reg update_out_7_reg;
	wire [7:0] addr_up_out_RAM8;
	
	//declaração de variaveis para o sorting node 8
	
	wire update_out_8;
	reg update_out_8_reg;
	wire [8:0] addr_up_out_RAM9;
	
	//declaração de variaveis para o sorting node 9
	
	wire update_out_9;
	reg update_out_9_reg;
	wire [9:0] addr_up_out_RAM10;
	
	//declaração de variaveis para o sorting node 10
	
	wire update_out_10;
	reg update_out_10_reg;
	wire [10:0] addr_up_out_RAM11;
	
	/********************************************/
	
	
	//declaraçao de fios ou regs para bypass channel
	wire [WIDTH:0] aux_q_U_1;
	wire [WIDTH:0] aux_q_U_2;
	wire [WIDTH:0] aux_q_U_3;
	wire [WIDTH:0] aux_q_U_4;
	wire [WIDTH:0] aux_q_U_5;
	wire [WIDTH:0] aux_q_U_6;
	wire [WIDTH:0] aux_q_U_7;
	wire [WIDTH:0] aux_q_U_8;
	wire [WIDTH:0] aux_q_U_9;
	wire [WIDTH:0] aux_q_U_10;
	
	wire [WIDTH:0] aux_q_L_1;
	wire [WIDTH:0] aux_q_L_2;
	wire [WIDTH:0] aux_q_L_3;
	wire [WIDTH:0] aux_q_L_4;
	wire [WIDTH:0] aux_q_L_5;
	wire [WIDTH:0] aux_q_L_6;
	wire [WIDTH:0] aux_q_L_7;
	wire [WIDTH:0] aux_q_L_8;
	wire [WIDTH:0] aux_q_L_9;
	wire [WIDTH:0] aux_q_L_10;
	
	wire [WIDTH:0] aux_q_R_1;
	wire [WIDTH:0] aux_q_R_2;
	wire [WIDTH:0] aux_q_R_3;
	wire [WIDTH:0] aux_q_R_4;
	wire [WIDTH:0] aux_q_R_5;
	wire [WIDTH:0] aux_q_R_6;
	wire [WIDTH:0] aux_q_R_7;
	wire [WIDTH:0] aux_q_R_8;
	wire [WIDTH:0] aux_q_R_9;
	wire [WIDTH:0] aux_q_R_10;
	
	
	//inicializadores
	
	wire initialize_odd;
	wire initialize_even;
	

	
	/** Comparador de entrada **/
	
	wire alb;
	assign alb = (data_in < data_U_1) ? 1 : 0;		
	
	/***************************/
	
	/** strobe de fs relativo a clk **/
	 wire fs_in_stb;
	strobe_relative fs_stb_rise (
		.clk(clk),		
		.in_relative(fs),
		.stb_out(fs_in_stb) );
	

	
	/***************************/
	// contadores de records para (limpar a memoria)
	
	localparam [2:0] wait_buffer = 3'd0,					//declaração dos estados();
					  first_buffer_odd = 3'd1,
					  wait_odds = 3'd2,
					  first_buffer = 3'd3,
					  end_record = 3'd4,
					  clear_memory = 3'd5;	
	reg		[2:0] SM_heapsort = 3'b00; 			// Declaração do registrador de estados
		
	/******* Processo principal - Maquina de estados *******/
	always @(posedge clk)
		if (rst)	// reseta todos os registradores
		begin
			SM_heapsort <= wait_buffer;
			counter = 0;
			
			
		end else
		begin
			case (SM_heapsort)
			
				// Espera a inicialização do heapsort, ou seja vir dados do FIFO
				wait_buffer:
				begin
					if (en_rec_in)
						SM_heapsort <= first_buffer_odd;
					counter = 0;
				end	
				
				//inicializa os sorting nodes impares para não realizar as mesmas operações dos pares
				first_buffer_odd:
				begin
					SM_heapsort <= wait_odds;
				end
				
				wait_odds:
				begin
					SM_heapsort <= first_buffer;
				end
				
				first_buffer:
				begin
					if (counter == ((WINDOW_LENGTH)*6)-4)
					begin
						median <= data_out;
//						SM_heapsort <= wait_buffer;
					end
					else
					begin
						counter <= counter + 1;
					end
				end
				

			endcase
		end
		/********************************************/
		
		/******* Controlador da primeira memória *******/
		reg update_in_1_reg =0;
		reg wr_en_L_1_reg = 0;
		reg [WIDTH:0] data_L_1_reg =0;
		always @(posedge clk)
		if	(fs_in_stb)
			begin
				if (~alb && en_rec_in)
				begin
					wr_en_L_1_reg <= 1;
					data_L_1_reg <= data_in;
					update_in_1_reg <= 1;
				end
				else
				begin
					wr_en_L_1_reg <= 0;
					update_in_1_reg <= 0;
				end
			
			end
		else
			begin
				wr_en_L_1_reg <= 0;
				update_in_1_reg <= 0;
			end
		/********************************************/
			
	assign wr_en_L_1 = wr_en_L_1_reg;
	assign data_L_1 = data_L_1_reg;
	assign update_in_1 = (~alb) ? 1 : 0;
	
	
	/******* Inicializador dos sorting nodes *******/
	//obs: enquanto um node está realizando o step1,
	// outro node deve realizar o step2 para não ocorrer conflito de escrita
	assign initialize_even = (SM_heapsort ==  wait_odds) ? 1 : 0;
	assign initialize_odd = (SM_heapsort ==  wait_buffer && en_rec_in) ? 1 : 0;
	/********************************************/
	
	/******* Bypass channels *******/
	
	//Quando um sorting node é ativado devido ao update dos U records,
	//não lê da DPRAM(q_U), recebendo ele do bypass channel(data_L)
	assign aux_q_U_1 = update_in_1 ? data_L_1 : q_U_1;
	assign aux_q_U_2 = update_out_1 ?  data_L_2 : q_U_2;
	assign aux_q_U_3 = update_out_2 ?  data_L_3 : q_U_3;
	assign aux_q_U_4 = update_out_3 ?  data_L_4 : q_U_4;
	assign aux_q_U_5 = update_out_4 ?  data_L_5 : q_U_5;
	assign aux_q_U_6 = update_out_5 ?  data_L_6 : q_U_6;
	assign aux_q_U_7 = update_out_6 ?  data_L_7 : q_U_7;
	assign aux_q_U_8 = update_out_7 ?  data_L_8 : q_U_8;
	assign aux_q_U_9 = update_out_8 ?  data_L_9 : q_U_9;
	assign aux_q_U_10 = update_out_9 ?  data_L_10 : q_U_10;

	//Quando um sorting node lê os R e L records ve se os endereços a serem lidos são
	//iguais aos endereços do record atualizado do sorting node abaixo.
	//Se sim, o valor apropriado é lida ao invés de L ou R.
	assign aux_q_L_1 = (( 0 == addr_U_2) && update_out_2) ? data_U_2 : q_L_2;
	assign aux_q_L_2 = (( (addr_L_3-2) == addr_U_3)&& update_out_3) ? data_U_3 : q_L_3; 
	assign aux_q_L_3 = (( (addr_L_4-4) == addr_U_4)&& update_out_4) ? data_U_4 : q_L_4;
	assign aux_q_L_4 = (( (addr_L_5-8) == addr_U_5)&& update_out_5) ? data_U_5 : q_L_5;
	assign aux_q_L_5 = (( (addr_L_6-16) == addr_U_6)&& update_out_6) ? data_U_6 : q_L_6;
	assign aux_q_L_6 = (( (addr_L_7-32) == addr_U_7)&& update_out_7) ? data_U_7 : q_L_7;
	assign aux_q_L_7 = (( (addr_L_8-64) == addr_U_8)&& update_out_8) ? data_U_8 : q_L_8;
	assign aux_q_L_8 = (( (addr_L_9-128) == addr_U_9)&& update_out_9) ? data_U_9 : q_L_9;
	assign aux_q_L_9 = (( (addr_L_10-256) == addr_U_10)&& update_out_10) ? data_U_10 : q_L_10;
	assign aux_q_L_10 = q_L_11;
	
	assign aux_q_R_1 = (( 1 == addr_U_2) && update_out_2) ? data_U_2 : q_L_2;
	assign aux_q_R_2 = (( addr_L_3 == addr_U_3_reg)&& update_out_3_reg) ? data_U_3 : q_L_3; 
	assign aux_q_R_3 = (( addr_L_4 == addr_U_4_reg)&& update_out_4_reg) ? data_U_4 : q_L_4; 
	assign aux_q_R_4 = (( addr_L_5 == addr_U_5_reg)&& update_out_5_reg) ? data_U_5 : q_L_5; 
	assign aux_q_R_5 = (( addr_L_6 == addr_U_6_reg)&& update_out_6_reg) ? data_U_6 : q_L_6; 
	assign aux_q_R_6 = (( addr_L_7 == addr_U_7_reg)&& update_out_7_reg) ? data_U_7 : q_L_7; 
	assign aux_q_R_7 = (( addr_L_8 == addr_U_8_reg)&& update_out_8_reg) ? data_U_8 : q_L_8; 
	assign aux_q_R_8 = (( addr_L_9 == addr_U_9_reg)&& update_out_9_reg) ? data_U_9 : q_L_9; 
	assign aux_q_R_9 = (( addr_L_10 == addr_U_10_reg)&& update_out_10_reg) ? data_U_10 : q_L_10; 
	assign aux_q_R_10 = q_L_11;
	
	//atraso para os dados na direita
	always @(posedge clk)
	begin
		addr_U_3_reg <= addr_U_3;
		addr_U_4_reg <= addr_U_4;
		addr_U_5_reg <= addr_U_5;
		addr_U_6_reg <= addr_U_6;
		addr_U_7_reg <= addr_U_7;
		addr_U_8_reg <= addr_U_8;
		addr_U_9_reg <= addr_U_9;
		addr_U_10_reg <= addr_U_10;
		
		update_out_3_reg <= update_out_3;
		update_out_4_reg <= update_out_4;
		update_out_5_reg <= update_out_5;
		update_out_6_reg <= update_out_6;
		update_out_7_reg <= update_out_7;
		update_out_8_reg <= update_out_8;
		update_out_9_reg <= update_out_9;
		update_out_10_reg <= update_out_10;
	end
	
	/********************************************/
	
	//Primeira memória 
	RAM_2_port_gen #( .WIDTH(WIDTH+1),
                    .LENGHT(1), .LENGHT_EXP(1) ) 
	RAM_LEVEL_1 (
		.clock(clk),

		.address_a(addr_U_1),
		.wren_a(wr_en_U_1),
		.data_a(data_U_1),
		.q_a(q_U_1),

		.address_b(0),
		.wren_b(wr_en_L_1),
		.data_b(data_L_1),
		.q_b(q_L_1) 
	);
	

	
	/******* Declaração das memórias e sorting nodes em ordem *******/

	sorting_node #(.LEVEL(1), .LENGTH(2))
	sorting_node_1(
		.clk(clk),
		.rst(rst),
		.q_U(q_U_1),
		.aux_q_U(aux_q_U_1),
		.data_U(data_U_1),
		.addr_U(addr_U_1),
		.wren_U(wr_en_U_1),
		.q_L(q_L_2),
		.aux_q_L(aux_q_L_1),
		.aux_q_R(aux_q_R_1),
		.data_L(data_L_2),
		.addr_L(addr_L_2),
		.wren_L(wr_en_L_2),
		.initialize(initialize_odd),
		.update_out(update_out_1),
		.update_in(update_in_1),
		.address_updated_out(addr_up_out_RAM2),
		.address_updated_in(0)
	);
	

	RAM_2_port_gen #( .WIDTH(WIDTH+1),
                    .LENGHT(2), .LENGHT_EXP(2) ) 
	RAM_LEVEL_2 (
		.clock(clk),

		.address_a(addr_U_2),
		.wren_a(wr_en_U_2),
		.data_a(data_U_2),
		.q_a(q_U_2),

		.address_b(addr_L_2),
		.wren_b(wr_en_L_2),
		.data_b(data_L_2),
		.q_b(q_L_2) 
	);
	

	
	sorting_node #(.LEVEL(2), .LENGTH(4))
	sorting_node_2(
		.clk(clk),
		.rst(rst),
		.q_U(q_U_2),
		.aux_q_U(aux_q_U_2),
		.data_U(data_U_2),
		.addr_U(addr_U_2),
		.wren_U(wr_en_U_2),
		.q_L(q_L_3),
		.aux_q_L(aux_q_L_2),
		.aux_q_R(aux_q_R_2),
		.data_L(data_L_3),
		.addr_L(addr_L_3),
		.wren_L(wr_en_L_3),
		.initialize(initialize_even),
		.update_out(update_out_2),
		.update_in(update_out_1),
		.address_updated_out(addr_up_out_RAM3),
		.address_updated_in(addr_up_out_RAM2)
	);	
	

	RAM_2_port_gen #( .WIDTH(WIDTH+1),
                    .LENGHT(3), .LENGHT_EXP(4) ) 
	RAM_LEVEL_3 (
		.clock(clk),

		.address_a(addr_U_3),
		.wren_a(wr_en_U_3),
		.data_a(data_U_3),
		.q_a(q_U_3),

		.address_b(addr_L_3),
		.wren_b(wr_en_L_3),
		.data_b(data_L_3),
		.q_b(q_L_3) 
	);
	
	sorting_node #(.LEVEL(3), .LENGTH(8))				
	sorting_node_3(
		.clk(clk),
		.rst(rst),
		.q_U(q_U_3),
		.aux_q_U(aux_q_U_3),
		.data_U(data_U_3),
		.addr_U(addr_U_3),
		.wren_U(wr_en_U_3),
		.q_L(q_L_4),
		.aux_q_L(aux_q_L_3),
		.aux_q_R(aux_q_R_3),
		.data_L(data_L_4),
		.addr_L(addr_L_4),
		.wren_L(wr_en_L_4),
		.initialize(initialize_odd),
		.update_out(update_out_3),
		.update_in(update_out_2),
		.address_updated_out(addr_up_out_RAM4),
		.address_updated_in(addr_up_out_RAM3)
	);	
		
	RAM_2_port_gen #( .WIDTH(WIDTH+1),					
                    .LENGHT(4), .LENGHT_EXP(8) ) 
	RAM_LEVEL_4 (
		.clock(clk),

		.address_a(addr_U_4),
		.wren_a(wr_en_U_4),
		.data_a(data_U_4),
		.q_a(q_U_4),

		.address_b(addr_L_4),
		.wren_b(wr_en_L_4),
		.data_b(data_L_4),
		.q_b(q_L_4) 
	);

	sorting_node #(.LEVEL(4), .LENGTH(16))				
	sorting_node_4(
		.clk(clk),
		.rst(rst),
		.q_U(q_U_4),
		.aux_q_U(aux_q_U_4),
		.data_U(data_U_4),
		.addr_U(addr_U_4),
		.wren_U(wr_en_U_4),
		.q_L(q_L_5),
		.aux_q_L(aux_q_L_4),
		.aux_q_R(aux_q_R_4),
		.data_L(data_L_5),
		.addr_L(addr_L_5),
		.wren_L(wr_en_L_5),
		.initialize(initialize_even),
		.update_out(update_out_4),
		.update_in(update_out_3),
		.address_updated_out(addr_up_out_RAM5),
		.address_updated_in(addr_up_out_RAM4)
	);	
	
	RAM_2_port_gen #( .WIDTH(WIDTH+1),					
                    .LENGHT(5), .LENGHT_EXP(16) ) 
	RAM_LEVEL_5 (
		.clock(clk),

		.address_a(addr_U_5),
		.wren_a(wr_en_U_5),
		.data_a(data_U_5),
		.q_a(q_U_5),

		.address_b(addr_L_5),
		.wren_b(wr_en_L_5),
		.data_b(data_L_5),
		.q_b(q_L_5) 
	);
	
	sorting_node #(.LEVEL(5), .LENGTH(32))				
	sorting_node_5(
		.clk(clk),
		.rst(rst),
		.q_U(q_U_5),
		.aux_q_U(aux_q_U_5),
		.data_U(data_U_5),
		.addr_U(addr_U_5),
		.wren_U(wr_en_U_5),
		.q_L(q_L_6),
		.aux_q_L(aux_q_L_5),
		.aux_q_R(aux_q_R_5),
		.data_L(data_L_6),
		.addr_L(addr_L_6),
		.wren_L(wr_en_L_6),
		.initialize(initialize_odd),
		.update_out(update_out_5),
		.update_in(update_out_4),
		.address_updated_out(addr_up_out_RAM6),
		.address_updated_in(addr_up_out_RAM5)
	);		
	
	RAM_2_port_gen #( .WIDTH(WIDTH+1),					
                    .LENGHT(6), .LENGHT_EXP(32) ) 
	RAM_LEVEL_6 (
		.clock(clk),

		.address_a(addr_U_6),
		.wren_a(wr_en_U_6),
		.data_a(data_U_6),
		.q_a(q_U_6),

		.address_b(addr_L_6),
		.wren_b(wr_en_L_6),
		.data_b(data_L_6),
		.q_b(q_L_6) 
	);
		
	sorting_node #(.LEVEL(6), .LENGTH(64))				
	sorting_node_6(
		.clk(clk),
		.rst(rst),
		.q_U(q_U_6),
		.aux_q_U(aux_q_U_6),
		.data_U(data_U_6),
		.addr_U(addr_U_6),
		.wren_U(wr_en_U_6),
		.q_L(q_L_7),
		.aux_q_L(aux_q_L_6),
		.aux_q_R(aux_q_R_6),
		.data_L(data_L_7),
		.addr_L(addr_L_7),
		.wren_L(wr_en_L_7),
		.initialize(initialize_even),
		.update_out(update_out_6),
		.update_in(update_out_5),
		.address_updated_out(addr_up_out_RAM7),
		.address_updated_in(addr_up_out_RAM6)
	);			
	
	RAM_2_port_gen #( .WIDTH(WIDTH+1),					
                    .LENGHT(7), .LENGHT_EXP(64) ) 
	RAM_LEVEL_7 (
		.clock(clk),

		.address_a(addr_U_7),
		.wren_a(wr_en_U_7),
		.data_a(data_U_7),
		.q_a(q_U_7),

		.address_b(addr_L_7),
		.wren_b(wr_en_L_7),
		.data_b(data_L_7),
		.q_b(q_L_7) 	
	);
	
	sorting_node #(.LEVEL(7), .LENGTH(128))				
	sorting_node_7(
		.clk(clk),
		.rst(rst),
		.q_U(q_U_7),
		.aux_q_U(aux_q_U_7),
		.data_U(data_U_7),
		.addr_U(addr_U_7),
		.wren_U(wr_en_U_7),
		.q_L(q_L_8),
		.aux_q_L(aux_q_L_7),
		.aux_q_R(aux_q_R_7),
		.data_L(data_L_8),
		.addr_L(addr_L_8),
		.wren_L(wr_en_L_8),
		.initialize(initialize_odd),
		.update_out(update_out_7),
		.update_in(update_out_6),
		.address_updated_out(addr_up_out_RAM8),
		.address_updated_in(addr_up_out_RAM7)
	);		
	
	RAM_2_port_gen #( .WIDTH(WIDTH+1),					
                    .LENGHT(8), .LENGHT_EXP(128) ) 
	RAM_LEVEL_8 (
		.clock(clk),

		.address_a(addr_U_8),
		.wren_a(wr_en_U_8),
		.data_a(data_U_8),
		.q_a(q_U_8),

		.address_b(addr_L_8),
		.wren_b(wr_en_L_8),
		.data_b(data_L_8),
		.q_b(q_L_8) 
	);
		
	sorting_node #(.LEVEL(8), .LENGTH(256))				
	sorting_node_8(
		.clk(clk),
		.rst(rst),
		.q_U(q_U_8),
		.aux_q_U(aux_q_U_8),
		.data_U(data_U_8),
		.addr_U(addr_U_8),
		.wren_U(wr_en_U_8),
		.q_L(q_L_9),
		.aux_q_L(aux_q_L_8),
		.aux_q_R(aux_q_R_8),
		.data_L(data_L_9),
		.addr_L(addr_L_9),
		.wren_L(wr_en_L_9),
		.initialize(initialize_even),
		.update_out(update_out_8),
		.update_in(update_out_7),
		.address_updated_out(addr_up_out_RAM9),
		.address_updated_in(addr_up_out_RAM8)
	);		
	
	RAM_2_port_gen #( .WIDTH(WIDTH+1),					
                    .LENGHT(9), .LENGHT_EXP(256) ) 
	RAM_LEVEL_9 (
		.clock(clk),

		.address_a(addr_U_9),
		.wren_a(wr_en_U_9),
		.data_a(data_U_9),
		.q_a(q_U_9),

		.address_b(addr_L_9),
		.wren_b(wr_en_L_9),
		.data_b(data_L_9),
		.q_b(q_L_9)
	);
	
	sorting_node #(.LEVEL(9), .LENGTH(512))				
	sorting_node_9(
		.clk(clk),
		.rst(rst),
		.q_U(q_U_9),
		.aux_q_U(aux_q_U_9),
		.data_U(data_U_9),
		.addr_U(addr_U_9),
		.wren_U(wr_en_U_9),
		.q_L(q_L_10),
		.aux_q_L(aux_q_L_9),
		.aux_q_R(aux_q_R_9),
		.data_L(data_L_10),
		.addr_L(addr_L_10),
		.wren_L(wr_en_L_10),
		.initialize(initialize_odd),
		.update_out(update_out_9),
		.update_in(update_out_8),
		.address_updated_out(addr_up_out_RAM10),
		.address_updated_in(addr_up_out_RAM9)
	);

	RAM_2_port_gen #( .WIDTH(WIDTH+1),					
                    .LENGHT(10), .LENGHT_EXP(512) ) 
	RAM_LEVEL_10 (
		.clock(clk),

		.address_a(addr_U_10),
		.wren_a(wr_en_U_10),
		.data_a(data_U_10),
		.q_a(q_U_10),

		.address_b(addr_L_10),
		.wren_b(wr_en_L_10),
		.data_b(data_L_10),
		.q_b(q_L_10)	
	);
		
	sorting_node #(.LEVEL(10), .LENGTH(1024))				
	sorting_node_10(
		.clk(clk),
		.rst(rst),
		.q_U(q_U_10),
		.aux_q_U(aux_q_U_10),
		.data_U(data_U_10),
		.addr_U(addr_U_10),
		.wren_U(wr_en_U_10),
		.q_L(q_L_11),
		.aux_q_L(aux_q_L_10),
		.aux_q_R(aux_q_R_10),
		.data_L(data_L_11),
		.addr_L(addr_L_11),
		.wren_L(wr_en_L_11),
		.initialize(initialize_even),
		.update_out(update_out_10),
		.update_in(update_out_9),
		.address_updated_out(addr_up_out_RAM11),
		.address_updated_in(addr_up_out_RAM10)
	);		
	
	RAM_2_port_gen #( .WIDTH(WIDTH+1),					
                    .LENGHT(11), .LENGHT_EXP(1024) ) 
	RAM_LEVEL_11 (
		.clock(clk),

		.address_a(addr_U_11),
		.wren_a(0),
		.data_a(0),
		.q_a(q_U_11),

		.address_b(addr_L_11),
		.wren_b(wr_en_L_11),
		.data_b(data_L_11),
		.q_b(q_L_11) 
	);
	
	/********************************************/
	
	//atribui a saida
	assign data_out = alb ? data_in : data_U_1;
	
	
endmodule 
	