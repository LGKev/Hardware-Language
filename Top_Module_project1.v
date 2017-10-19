module Top_Module_project1(
	SW_A, 
	SW_B, 
	HEX_0, 
	HEX_1, 
	HEX_2, 
	HEX_3,
	SW_SEL0,
	SW_SEL1,
	LED
);
	// GLOBALS
	
	
	//reg mode = 0; //maybe this is how we would select modes
	
	// INPUT
	input [3:0] SW_A; 		//for bit input
	input [7:4] SW_B; 		//for bit input
	input wire SW_SEL0, SW_SEL1; //for mode selection of MUX
	
	// OUTPUT
	output wire[7:0]HEX_0; //connect to the seven segment, there is an output for HEX, so we can map it to pins, and we use a wire so we can drive a load!
	output wire[7:0]HEX_1;
	output wire[7:0]HEX_2;
	output wire[7:0]HEX_3;
	//output reg	 [9:0]LED = 7'b1111_1111; //can't assign more than once? so i made it a wire cuz its really being outputted by osmehting else? we'll see. checking pin planner. 
	output wire [9:0]LED; //the trick was making it an output wire?! checking pins now. pins are good. last commit at 1:17pm

	//initialize so it doesn't get all lame on us, aka output stuff we don't want like the ' 8. ' on the seven segment.	
	assign HEX_2 = 8'b1111_1111;
	assign HEX_3 = 8'b1111_1111;
	//assign LED = 7'b1111_111;

	 
	

	/*======================================================================*/
	/* All other modules involved */
	/*======================================================================*/

	/* simple test trying to integrate mux into the top module... so far not good.*/
	Four_To_One_MUX(
	.w0(1), 	//input 1 //maybe like addition
	.w1(0), 	//input 2 //maybe like subtraction? 
	.w2(1), 	//input 3 //maybe like multiplication
	.w3(0), 	//input 4 //maybe like division
	.s0(SW_SEL0), 	//selection bit SW_SEL0
	.s1(SW_SEL1), 	//selection bit SW_SEL1
	.f(LED[0])		//output, maybe this needs to be a type net.? or what comes in needs to be a net? or inside four to one?
	);
	
	
	
	seven_segment SevenSeg0(
	.SW(SW_A), //input
	.HEX0(HEX_0) //output
	);
	
		seven_segment SevenSeg1(
	.SW(SW_B), //input
	.HEX0(HEX_1) //output
	);
	
	
	
endmodule
