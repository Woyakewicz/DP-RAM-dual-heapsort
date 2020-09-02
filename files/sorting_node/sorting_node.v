module sorting_node	 #(parameter LEVEL = 2,
								parameter LENGTH = 4)
(
	input clk,
	input rst,
	
	//conexão para upper records
	input [31:0] q_U,
	input [31:0] aux_q_U,
	output [31:0]data_U,
	output [LEVEL-1:0]addr_U,
	output wren_U,
	
	//conexão para lower records
	input [31:0] q_L,
	input [31:0] aux_q_L,
	input [31:0] aux_q_R,
	output [31:0] data_L,
	output [LEVEL:0]addr_L,
	output wren_L,
	
	//hand shaking
	input initialize,
	output update_out,
	input update_in,
	
	output [LEVEL:0]address_updated_out,
	input [LEVEL-1:0]address_updated_in
);


	
	localparam [2:0] Initial_State = 3'd0,					//declaração dos estados();
					  Step1 = 3'd1,
					  wait_level = 3'd2,
					  Step2_LN = 3'd3,
					  Step2_RN = 3'd4;	
	reg		[2:0] SM_sorting = 3'b000; 			// Declaração do registrador de estados
	
	//Declaração dos registradores 
	
	reg [LEVEL:0]addr_L_reg;
	reg [31:0] data_L_reg;
	
	reg [LEVEL-1:0]addr_U_reg;
	reg [31:0] data_U_reg;
	
	reg wren_L_reg = 0;
	reg wren_U_reg = 0;
	
	reg [LEVEL:0]counter_clear = 0; 
	
	reg update_out_reg = 0;
	reg address_updated_out_reg = 0;
	reg [LEVEL-1:0]address_updated_in_reg = 0;

	
	reg upper_updated = 0;
	
	reg swap_LN = 0;
	reg [31:0] left = 0;
	
	reg [2:0] swap_flag = 0;
	
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
			wren_L_reg <= 0;
			counter_clear <= 0;
			update_out_reg <=0;
		end else
		begin
			case (SM_sorting)
			
				// Espera a inicialização do heapsort e limpa as memorias caso n seja inicializado
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
						wren_L_reg <= 0;
						counter_clear <= 0;
						address_updated_out_reg <= 0;
					end
					else
					begin
						SM_sorting <= Initial_State;
						if (counter_clear < LENGTH)
						begin
							data_L_reg <= 0;
							addr_L_reg <= 0;
							wren_L_reg <= 1;
							counter_clear <= counter_clear + 1;
						end
						else
						begin
							data_U_reg <= 0;
							addr_U_reg <= 0;
							wren_U_reg <= 0;
							data_L_reg <= 0;
							addr_L_reg <= 0;
							wren_L_reg <= 0;
							counter_clear <= 0;
							address_updated_out_reg <= 0;
						end
					end
				end
				
				// esse passo pode ser otimizado
				// se n tiver update, fica nesse nivel ate ter update_in :)
				Step1:
				begin
					if (update_in)				
					begin
						SM_sorting <= wait_level ;
						addr_U_reg <= address_updated_in;
						wren_U_reg <= 0;
						addr_L_reg <= address_updated_in;
						wren_L_reg <= 0;
						upper_updated = 1;
					end
					else
						upper_updated = 0;
					wren_L_reg <= 0;
					wren_U_reg <= 0;
					SM_sorting <= wait_level;
				end
				
				//atraso para sincronizar os sorting nodes
				//enquanto um nodulo realiza o step 1 outro realiza os step 2
				wait_level:
				begin
					SM_sorting <= Step2_LN;
					addr_U_reg <= address_updated_in;
					addr_L_reg <= address_updated_in + (LENGTH/2);
				end
				
				// segundo passo, verifica o upper node com os lower nodes
				// verifica se o upper node é maior que o dado esquerdo
				Step2_LN:
				begin
					if (aux_q_L < aux_q_U)		//verifica se L < N
						swap_LN <= 1;				//uso de auxiliares por causa do atraso de leitura
					else								//e impossibilidade de leitura e escrita ao mesmo tempo
						swap_LN <= 0;
					left <= aux_q_L;				//registrador do dado esquerdo para comparação no próx nivel
					SM_sorting <= Step2_RN;
				end
				
				Step2_RN:
				begin
					if (aux_q_R < aux_q_U)		//verifica se R < N 
					begin
						if (aux_q_R < left)	//swap 3 ( R< N & R < L) 
						begin
							data_U_reg <= aux_q_R;
							data_L_reg <= aux_q_U;
							wren_L_reg <= 1;
							wren_U_reg <= 1;
							address_updated_out_reg = addr_L_reg;
							update_out_reg <= 1;
							addr_L_reg <= addr_L_reg; 
							SM_sorting <= Step1;				
							swap_flag = 1;
						end
						else					//Swap2 (L < N & L =< R)
						begin
							data_U_reg <= left;
							data_L_reg <= aux_q_U;
							wren_L_reg <= 1;
							wren_U_reg <= 1;
							addr_L_reg <= addr_L_reg - (LENGTH/2);
							address_updated_out_reg = addr_L_reg - (LENGTH/2);
							update_out_reg <= 1;
							SM_sorting <= Step1;					
							swap_flag = 2;
						end
					end	
					else
					begin
						if (swap_LN)		//Swap2 (L < N & L =< R)
						begin
							data_U_reg <= left;
							data_L_reg <= aux_q_U;
							wren_L_reg <= 1;
							wren_U_reg <= 1;
							addr_L_reg <= addr_L_reg - (LENGTH/2);
							address_updated_out_reg = addr_L_reg - (LENGTH/2);
							update_out_reg <= 1;
							SM_sorting <= Step1;					
							swap_flag = 3;
						end
						else
						begin
						SM_sorting <= Step1;
						update_out_reg <= 0;
						end
						
				SM_sorting <= Step1;
				end
				end
			endcase
		end
		
	
	
assign 	addr_L = (SM_sorting == wait_level ) ? address_updated_in :(SM_sorting == wait_level ) ? address_updated_in + (LENGTH/2) : addr_L_reg;
assign 	addr_U = addr_U_reg;

assign 	data_U = data_U_reg;
assign 	data_L = data_L_reg;

assign wren_L = wren_L_reg;
assign wren_U = wren_U_reg;

assign update_out = update_out_reg;
assign address_updated_out = (aux_q_R < aux_q_U) ? ((aux_q_R < left) ? addr_L_reg : addr_L_reg - (LENGTH/2) ) : addr_L_reg - (LENGTH/2); 



		
endmodule
				
				
				