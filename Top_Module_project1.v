module Top_Module_project1(SW_A, SW_B, HEX_0, HEX_1, HEX_2, HEX_3);
	// GLOBALS
	
	
	//reg mode = 0; //maybe this is how we would select modes
	
	// INPUT
	input [3:0] SW_A;
	input [7:4] SW_B;
	
	// OUTPUT
	output wire[7:0]HEX_0; //connect to the seven segment, there is an output for HEX, so we can map it to pins, and we use a wire so we can drive a load!
	output wire[7:0]HEX_1;
	output wire[7:0]HEX_2;
	output wire[7:0]HEX_3;
	
	assign HEX_2 = 8'b1111_1111;
	assign HEX_3 = 8'b1111_1111;
	
////	Four_To_One_MUX(
////	.w0(),
////	.w1 (), 
////	.w2, 
////	.w3, 
////	.s0, 
////	.s1, 
////	.f);
	
	
	
	seven_segment SevenSeg0(
	.SW(SW_A), //input
	.HEX0(HEX_0) //output
	);
	
		seven_segment SevenSeg1(
	.SW(SW_B), //input
	.HEX0(HEX_1) //output
	);
	
	
	
endmodule
