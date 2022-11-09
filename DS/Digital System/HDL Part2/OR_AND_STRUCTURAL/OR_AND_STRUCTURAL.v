//Structural Description

module OR_AND_STRUCTURAL(IN,OUT);

	input [3:0] IN;
	output OUT;
	wire [1:0] TEMP;

	or u1(TEMP[0], IN[0], IN[1]);
	or U2(TEMP[1], IN[2], IN[3]);
	and (OUT, TEMP[0], TEMP[1]);

endmodule
