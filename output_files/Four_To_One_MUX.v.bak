module Four_To_One_MUX(w0,w1, w2, w3, s0, s1, f);
	input w0, w1, w2, w3, s0, s1;
	output f;
	wire f1,f2;
	
	
	
	Two_To_One stage0(w0, w1, s0, f1);
	Two_To_One stage1(w2,w3, s0, f2);
	
	Two_To_One finalStage(f1, f2, s1, f);


endmodule