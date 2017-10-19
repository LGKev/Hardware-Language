module Two_To_One_MUX(w0, w1, s0, f);
	input w0, w1, s0;
	output f;
	wire f;
	
	assign f = (!s0 & w0)|(s0 & w1);


endmodule