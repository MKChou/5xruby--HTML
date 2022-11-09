module parent_mod;

	wire [3:0]g;
	child_mod G1(g[3], g[1], g[0], g[2]);
endmodule

module child_mod(sig_a, sig_b, sig_c, sig_d); //g[3]>sig_a  g[1]>sig_b  g[0]>sig_c  g[2]>sig_d
	input sig_c, sig_d;
	output sig_a, sig_b;
endmodule
