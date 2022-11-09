module parent_mod;
	wire [3:0]g;
	child_mod G1(.sig_c(g[3]), .sig_d(g[2]), .sig_b(g[0]) .sig_a(g[1]);
endmodule


module child_mod(sig_a, sig_b, sig_c, sig_d);
	intput sig_c, sig_d;
	output sig_a; sig_b;
endmodule