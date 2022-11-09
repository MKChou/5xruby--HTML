//Data Flow Description

module OR_AND_DATA_FLOW(IN, OUT);

	input [3:0] IN;
	output OUT;
	
	assign OUT = (IN[0]|IN[1]) & (IN[2]|IN[3]);
	
endmodule
