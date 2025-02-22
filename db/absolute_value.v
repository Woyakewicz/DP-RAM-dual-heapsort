// megafunction wizard: %ALTFP_ABS%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: ALTFP_ABS 

// ============================================================
// File Name: absolute_value.v
// Megafunction Name(s):
// 			ALTFP_ABS
//
// Simulation Library Files(s):
// 			
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 18.1.0 Build 625 09/12/2018 SJ Lite Edition
// ************************************************************


//Copyright (C) 2018  Intel Corporation. All rights reserved.
//Your use of Intel Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Intel Program License 
//Subscription Agreement, the Intel Quartus Prime License Agreement,
//the Intel FPGA IP License Agreement, or other applicable license
//agreement, including, without limitation, that your use is for
//the sole purpose of programming logic devices manufactured by
//Intel and sold by Intel or its authorized distributors.  Please
//refer to the applicable agreement for further details.


//altfp_abs CBX_AUTO_BLACKBOX="ALL" DEVICE_FAMILY="Cyclone V" PIPELINE=0 WIDTH_EXP=8 WIDTH_MAN=23 data result
//VERSION_BEGIN 18.1 cbx_altfp_abs 2018:09:12:13:04:24:SJ cbx_mgl 2018:09:12:13:10:36:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463


//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  absolute_value_altfp_abs_t0a
	( 
	data,
	result) ;
	input   [31:0]  data;
	output   [31:0]  result;

	wire  [31:0]  data_w;
	wire  gnd_w;

	assign
		data_w = {gnd_w, data[30:0]},
		gnd_w = 1'b0,
		result = data_w;
endmodule //absolute_value_altfp_abs_t0a
//VALID FILE


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module absolute_value (
	data,
	result);

	input	[31:0]  data;
	output	[31:0]  result;

	wire [31:0] sub_wire0;
	wire [31:0] result = sub_wire0[31:0];

	absolute_value_altfp_abs_t0a	absolute_value_altfp_abs_t0a_component (
				.data (data),
				.result (sub_wire0));

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV E"
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "UNUSED"
// Retrieval info: CONSTANT: LPM_HINT STRING "UNUSED"
// Retrieval info: CONSTANT: LPM_TYPE STRING "altfp_abs"
// Retrieval info: CONSTANT: PIPELINE NUMERIC "0"
// Retrieval info: CONSTANT: WIDTH_EXP NUMERIC "8"
// Retrieval info: CONSTANT: WIDTH_MAN NUMERIC "23"
// Retrieval info: USED_PORT: data 0 0 32 0 INPUT NODEFVAL "data[31..0]"
// Retrieval info: CONNECT: @data 0 0 32 0 data 0 0 32 0
// Retrieval info: USED_PORT: result 0 0 32 0 OUTPUT NODEFVAL "result[31..0]"
// Retrieval info: CONNECT: result 0 0 32 0 @result 0 0 32 0
// Retrieval info: GEN_FILE: TYPE_NORMAL absolute_value.v TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL absolute_value.qip TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL absolute_value.bsf FALSE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL absolute_value_inst.v TRUE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL absolute_value_bb.v FALSE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL absolute_value.inc FALSE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL absolute_value.cmp FALSE TRUE
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX NUMERIC "1"

