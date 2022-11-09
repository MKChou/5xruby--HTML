module Lab2(in, out, valid);

 input[7:0]in;
 output [2:0]out;
 output valid;
 
 reg [2:0]out; 
 reg valid;
 
 always@(in)
 begin
  case(in)
   1:
   begin 
   out = 3'b000;
   valid = 1;
   end
   
   2:
   begin
   out = 3'b001;
   valid = 1;
   end
   
   4:
   begin
   out = 3'b010;
   valid = 1;
   end
   
   8:
   begin 
   out = 3'b011;
   valid = 1;
   end
   
   16:
   begin
   out = 3'b100;
   valid = 1;
   end
   
   32:
   begin
   out = 3'b101;
   valid = 1;
   end
   
   64:
   begin
   out = 3'b110;
   valid = 1;
   end 
   
   128:
   begin 
   out = 3'b111;
   valid = 1;
   end
   
   default:
    begin 
     out = 3'b000;
     valid = 0;
    end
  endcase 
 end
 
endmodule