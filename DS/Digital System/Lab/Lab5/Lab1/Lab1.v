module Lab1 (a, b, select, out, overflow);

 

 input[3:0]a, b;
 input select;
 output [3:0]out;
 output overflow;
 
 reg [3:0] out;reg overflow;
 
 always@ (a or b or select)
  
 begin 
  if (select)
   {overflow,out} = a+b;
  else
  begin
   out = a-b;
   if (a<b)
    overflow = 1;
   else
    overflow = 0;
	end
 end

endmodule



