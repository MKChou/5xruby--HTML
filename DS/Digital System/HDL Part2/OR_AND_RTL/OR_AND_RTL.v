module OR_AND_RTL(IN, OUT);
	input [3:0] IN;
	output OUT;
	reg OUT;
	
	always@(IN)
		begin
			case(IN)
				4'b0000: OUT = 0; 
				4'b0001: OUT = 0;
				4'b0010: OUT = 0; 
				4'b0011: OUT = 0;
				4'b0100: OUT = 0; 
				4'b0101: OUT = 1;
				4'b0110: OUT = 0; 
				4'b0111: OUT = 1;
				4'b1000: OUT = 0; 
				4'b1001: OUT = 1;
				4'b1010: OUT = 0; 
				4'b1011: OUT = 1;
				4'b1100: OUT = 0; 
				4'b1101: OUT = 1;
				4'b1110: OUT = 0; 
				default: OUT = 1;
			endcase
		end
endmodule
				
				