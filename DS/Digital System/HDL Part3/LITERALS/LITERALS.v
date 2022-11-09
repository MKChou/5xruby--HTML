module LITERALS(A1, A2, B1, B2, Y1, Y2);
		input A1, A2, B1, B2;
		output [7:0] Y1;
		output [5:0] Y2;
		parameter CST = 4'b1010, TF=25;
		reg [7:0] Y1;
		reg [5:0] Y2;
	
	always @(A1 or A2 or B1 or B2)
	begin	
		if(A1==1)
			Y1 = {CST, 4'b 0000};
		else if (A2 == 1)
			Y1 = {CST, 4'b 0101};
		
		if(B1==0) 
			Y2 = 10;
		else if(B2==1)
			Y2 = 15;
		else
			Y2 = TF+10+15;
	end
endmodule

			