`define TimeExpire 32'd5//00000000

module sequentail_circuit(clock, reset, up_down, out);

input clock, reset, up_down;

output [6:0]out;


reg [3:0]count_out;

reg div_clk;

reg [6:0]out = 7'b1000000;

reg [31:0] count;


always@(posedge clock or negedge reset)
begin
if(!reset)
begin

count <= 32'd0;
div_clk <= 1'b0;
count_out <= 4'b0;

end
else
begin      
if(count == `TimeExpire)
begin

count <= 32'd1;

if(up_down)
begin
                   
count_out <= count_out + 4'd1;

end
else
begin
                   
count_out <= count_out - 4'd1;

end
end
else
begin

count <= count + 32'd1;

end


end
case(count_out)

4'd0: out <= 7'b1000000;
4'd1: out <= 7'b1111001;
4'd2: out <= 7'b0100100;
4'd3: out <= 7'b0110000;
4'd4: out <= 7'b0011001;
4'd5: out <= 7'b0010010;
4'd6: out <= 7'b0000010;
4'd7: out <= 7'b1111000;
4'd8: out <= 7'b0000000;
4'd9: out <= 7'b0010000;
4'd10: out <= 7'b0001000;
4'd11: out <= 7'b0000011;
4'd12: out <= 7'b1000110;
4'd13: out <= 7'b0100001;
4'd14: out <= 7'b0000110;
4'd15: out <= 7'b0001110;
default out <= 7'b1000000;
endcase
end

endmodule













/*
module sequentail_circuit (
   input            clk,
   input            clr,
   input            load,
   input            en,
   input      [3:0] data,
   output reg [3:0] q,
   output reg       cout
 );
 
  always@(posedge clk) begin
   if (clr == 1'b1)
     q <= 0;
   else if (load == 1'b1)
     q <= data;
   else if (en == 1'b1) begin
     if (q == 9)
       q <= 0;
     else
       q <= q + 1;
   end
 end
 
 always@(q) begin
   if (q == 9)
     cout = 1;
   else
     cout = 0;
 end
 
 endmodule*/

















/*

module sequentail_circuit(clk, reset,Q,Z);
input clk, reset;
output [3:0] Q;
output [3:0] z;

reg [3:0] Q;
reg [3:0] Z;

always@(posedge clk or neg edge reset)
begin

	if(!reset == 1'b1)
		begin
			Q <=3'b0000;
		end
	else
			
		begin
			Q<=Q+1'1b1;
		end
end


always @(Q) begin
	case(Q)
            4'b0000: Z = 8'b11111100; // 0 0
            4'b0001: Z = 8'b01100000; // 1 1
            4'b0010: Z = 8'b11011010; // 2 2
            4'b0011: Z = 8'b11110010; // 3 3 
            4'b0100: Z = 8'b01100110; // 4 4
            4'b0101: Z = 8'b10110110; // 5 5
            4'b0110: Z = 8'b10111110; // 6 6
            4'b0111: Z = 8'b11100000; // 7 7
            4'b1000: Z = 8'b11111110; // 8 8
            4'b1001: Z = 8'b11110110; // 9 9
				4'b1010: Z = 8'b11101110; // A A
				4'b1011: Z = 8'b11111100; // B B
				4'b1100: Z = 8'b10011100; // C C
				4'b1101: Z = 8'b01111010; // D D
				4'b1110: Z = 8'b10011110; // E E
				4'b1111: Z = 8'b10001110; // F 0
            default: Z = 8'b11111100; // 0
        endcase
    end

endmodule*/








/*
module Lab1(input [3:0] num, output [0:7] seg);
   reg [7:0] nseg;
    always @(num) begin
        case (num)
            4'b0000: nseg = 8'b11111100; // 0 0
            4'b0001: nseg = 8'b01100000; // 1 1
            4'b0010: nseg = 8'b11011010; // 2 2
            4'b0011: nseg = 8'b11110010; // 3 3 
            4'b0100: nseg = 8'b01100110; // 4 4
            4'b0101: nseg = 8'b10110110; // 5 5
            4'b0110: nseg = 8'b10111110; // 6 6
            4'b0111: nseg = 8'b11100000; // 7 7
            4'b1000: nseg = 8'b11111110; // 8 8
            4'b1001: nseg = 8'b11110110; // 9 9
				4'b1001: nseg = 8'b11101110; // A A
				4'b1001: nseg = 8'b11111100; // B B
				4'b1001: nseg = 8'b10011100; // C C
				4'b1001: nseg = 8'b01111010; // D D
				4'b1001: nseg = 8'b10011110; // E E
				4'b1001: nseg = 8'b10001110; // F 0
            default: nseg = 8'b11111100; // 0
        endcase
    end
   assign seg = nseg;
endmodule*/



















