module Lab1(input [3:0] num, output [0:7] seg);
   reg [7:0] nseg;
    always @(num) begin
        case (num)
            4'b0000: nseg = 8'b11111100; // 0 0
            4'b0001: nseg = 8'b01100000; // 1 1
            4'b0010: nseg = 8'b11011010; // 2 2
            4'b0011: nseg = 8'b11100000; // 3 7 
            4'b0100: nseg = 8'b11111110; // 4 8
            4'b0101: nseg = 8'b11101110; // 5 10 A
            4'b0110: nseg = 8'b10011100; // 6 11 B
            4'b0111: nseg = 8'b01111010; // 7 13 D
            4'b1000: nseg = 8'b10001110; // 8 15 F
            4'b1001: nseg = 8'b11111100; // 9 0
            default: nseg = 8'b11111100; // 0
        endcase
    end
   assign seg = nseg;
endmodule

