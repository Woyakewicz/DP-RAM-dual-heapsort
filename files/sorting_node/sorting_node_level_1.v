module sorting_node_level_1	 #(parameter LEVEL = 2,
										parameter WIDTH = 15,
										parameter LENGTH = 4)
(
	input clk,
	input rst,
	
	//conexão para upper records
	input [WIDTH:0] q_U,
	input [WIDTH:0] aux_q_U,
	output [WIDTH:0]data_U,
	output [LEVEL-1:0]addr_U,
	output wren_U,
	
	//conexão para left records
	input [WIDTH:0] q_L,
	input [WIDTH:0] aux_q_L,
	output [WIDTH:0] data_L,
	output [LEVEL-1:0]addr_L,
	output wren_L,
	
	//conexão para right records
	input [WIDTH:0] q_R,
	input [WIDTH:0] aux_q_R,
	output [WIDTH:0] data_R,
	output [LEVEL-1:0]addr_R,
	output wren_R,
	
	
	//hand shaking
	input initialize,
	output update_out,
	input update_in,
	
	output [LEVEL:0]address_updated_out,
	input [LEVEL-1:0]address_updated_in
);

	//parei nas conexões

	
	localparam [2:0] Initial_State = 3'd0,					//declaração dos estados();
					  Step1 = 3'd1,
					  Step2 = 3'd2;
	reg		[1:0] SM_sorting = 3'b00; 			// Declaração do registrador de estados
	
	//Declaração dos registradores 
	
	reg [LEVEL-1:0]addr_L_reg;							//alterado para duas memórias
	reg [LEVEL-1:0]addr_R_reg;	
	reg [WIDTH:0] data_L_reg;
	reg [WIDTH:0] data_R_reg;
	
	reg [LEVEL-1:0]addr_U_reg;
	reg [WIDTH:0] data_U_reg;
	
	reg wren_L_reg = 0;
	reg wren_R_reg = 0;
	reg wren_U_reg = 0;
	
	reg update_out_reg = 0;
	reg [LEVEL:0] address_updated_out_reg = 0;
	reg [LEVEL-1:0]address_updated_in_reg = 0;

	
//	reg swap_LN = 0;
//	reg [WIDTH:0] left = 0;
//	
	
	/******* Processo principal - Maquina de estados *******/
	always @(posedge clk)
		if (rst)	// reseta todos os registradores
		begin
			SM_sorting <= Initial_State;
			data_U_reg <= 0;
			addr_U_reg <= 0;
			wren_U_reg <= 0;
			data_L_reg <= 0;
			addr_L_reg <= 0;
			addr_R_reg <= 0;
			wren_L_reg <= 0;
			update_out_reg <=0;
		end else
		begin
			case (SM_sorting)
			
				// Espera a inicialização do heapsort e (limpa as memorias caso n seja inicializado)arrumar
				Initial_State:
				begin
					if (initialize)
					begin
						SM_sorting <= Step1;
						data_U_reg <= 0;
						addr_U_reg <= 0;
						wren_U_reg <= 0;
						data_L_reg <= 0;
						addr_L_reg <= 0;
						addr_R_reg <= 0;
						wren_L_reg <= 0;
						address_updated_out_reg <= 0;
					end
					else
					begin
						SM_sorting <= Initial_State;
						data_L_reg <= 0;
						addr_L_reg <= 0;
						addr_R_reg <= 0;
//						wren_L_reg <= 1;
//						wren_R_reg <= 1;
					end
				end
				
				// esse passo pode ser otimizado
				// se n tiver update, fica nesse nivel ate ter update_in :)
				Step1:
				begin
					if (update_in)				
					begin
						SM_sorting <= Step2 ;
						addr_U_reg <= address_updated_in;
						wren_U_reg <= 0;
						addr_L_reg <= address_updated_in;
						addr_R_reg <= address_updated_in;
						wren_L_reg <= 0;
						wren_R_reg <= 0;
					end
					else
					wren_L_reg <= 0;
					wren_R_reg <= 0;
					wren_U_reg <= 0;
					SM_sorting <= Step2;
				end
				
				// segundo passo, verifica o upper node com os lower nodes
				// verifica se o upper node é maior que o dado esquerdo e direito
				Step2:
				begin
					if ((aux_q_U < aux_q_L)&&(aux_q_U < aux_q_R)) // no swap
					begin
						SM_sorting <= Step1;
						update_out_reg <= 0;
					end
					else
					begin
						if(aux_q_L <= aux_q_R) //Swap2 (L < N & L =< R)
						begin
							data_U_reg <= aux_q_L;
							data_L_reg <= aux_q_U;
							data_R_reg <= aux_q_U;
							wren_L_reg <= 1;
							wren_R_reg <= 0;
							wren_U_reg <= 1;
//							addr_L_reg <= addr_L_reg - (LENGTH/2);
//							addr_R_reg <= 
							address_updated_out_reg = addr_L_reg ;
							update_out_reg <= 1;
							SM_sorting <= Step1;
						end
						else						//swap 3 ( R< N & R < L)
						begin
							data_U_reg <= aux_q_R;
							data_L_reg <= aux_q_U;
							data_R_reg <= aux_q_U;
							wren_L_reg <= 0;
							wren_R_reg <= 1;
							wren_U_reg <= 1;
//							addr_L_reg <= addr_L_reg - (LENGTH/2);
//							addr_R_reg <= 
							address_updated_out_reg = addr_L_reg ;
							update_out_reg <= 1;
							SM_sorting <= Step1;
						end
					end
				end
			endcase
		end
		
	
	
assign 	addr_L = addr_L_reg;
assign	addr_R = addr_R_reg;
assign 	addr_U = addr_U_reg;

assign 	data_U = data_U_reg;
assign 	data_L = data_L_reg;
assign	data_R = data_R_reg;

assign wren_L = wren_L_reg;
assign wren_R = wren_R_reg;
assign wren_U = wren_U_reg;

assign update_out = update_out_reg;
assign address_updated_out =  addr_L_reg;  



		
endmodule
				
				
				