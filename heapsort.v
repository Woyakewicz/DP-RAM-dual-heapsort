module heapsort #(parameter LEVEL = 4, 
						parameter WIDTH = 31,
						parameter WINDOW_LENGTH = 31)
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
	wire wr_en_U_5;
	wire [WIDTH:0] data_U_5;
	wire [WIDTH:0] q_U_5;
	
	wire [4:0] addr_L_5;
	wire wr_en_L_5;
	wire [WIDTH:0] data_L_5;
	wire [WIDTH:0] q_L_5;
	
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
	
	/********************************************/
	
	
	//declaraçao de fios ou regs para bypass channel
	wire [WIDTH:0] aux_q_U_1;
	wire [WIDTH:0] aux_q_U_2;
	wire [WIDTH:0] aux_q_U_3;
	wire [WIDTH:0] aux_q_U_4;
	
	wire [WIDTH:0] aux_q_L_1;
	wire [WIDTH:0] aux_q_L_2;
	wire [WIDTH:0] aux_q_L_3;
	wire [WIDTH:0] aux_q_L_4;
	
	wire [WIDTH:0] aux_q_R_1;
	wire [WIDTH:0] aux_q_R_2;
	wire [WIDTH:0] aux_q_R_3;
	wire [WIDTH:0] aux_q_R_4;
	
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
	
	assign initialize_even = (SM_heapsort ==  wait_odds) ? 1 : 0;
	assign initialize_odd = (SM_heapsort ==  wait_buffer && en_rec_in) ? 1 : 0;
	
	/******* Bypass channels *******/
	
	//Quando um sorting node é ativado devido ao update dos U records,
	//não lê da DPRAM(q_U), recebendo ele do bypass channel(data_L)
	assign aux_q_U_1 = update_in_1 ? data_L_1 : q_U_1;
	assign aux_q_U_2 = update_out_1 ?  data_L_2 : q_U_2;
	assign aux_q_U_3 = update_out_2 ?  data_L_3 : q_U_3;
	assign aux_q_U_4 = update_out_3 ?  data_L_4 : q_U_4;

	//Quando um sorting node lê os R e L records ve se os endereços a serem lidos são
	//iguais aos endereços do record atualizado do sorting node abaixo.
	//Se sim, o valor apropriado é lida ao invés de L ou R.
	assign aux_q_L_1 = (( 0 == addr_U_2) && update_out_2) ? data_U_2 : q_L_2;
	assign aux_q_L_2 = (( (addr_L_3-2) == addr_U_3)&& update_out_3) ? data_U_3 : q_L_3; 
	assign aux_q_L_3 = (( (addr_L_4-4) == addr_U_4)&& update_out_4) ? data_U_4 : q_L_4;
	assign aux_q_L_4 = q_L_5;
	
	assign aux_q_R_1 = (( 1 == addr_U_2) && update_out_2) ? data_U_2 : q_L_2;
	assign aux_q_R_2 = (( addr_L_3 == addr_U_3_reg)&& update_out_3_reg) ? data_U_3 : q_L_3; 
	assign aux_q_R_3 = (( addr_L_4 == addr_U_4_reg)&& update_out_4_reg) ? data_U_4 : q_L_4; 
	assign aux_q_R_4 = q_L_5;
	
	//atraso para os dados na direita
	always @(posedge clk)
	begin
		addr_U_3_reg <= addr_U_3;
		addr_U_4_reg <= addr_U_4;
		update_out_3_reg <= update_out_3;
		update_out_4_reg <= update_out_4;
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
                    .LENGHT(5), .LENGHT_EXP(32) ) 
	RAM_LEVEL_5 (
		.clock(clk),

		.address_a(addr_U_5),
		.wren_a(0),
		.data_a(0),
		.q_a(q_U_5),

		.address_b(addr_L_5),
		.wren_b(wr_en_L_5),
		.data_b(data_L_5),
		.q_b(q_L_5) 
	);
	
	/********************************************/
	
	//atribui a saida
	assign data_out = alb ? data_in : data_U_1;
	
	
endmodule 
	