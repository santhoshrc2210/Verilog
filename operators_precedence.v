
module operators_precedence();

   reg [7:0] a = 0;
   reg [7:0] b = 0;
   reg [7:0] result = 0;
   
   initial begin
   
     a = 8'hXA;
     b = 8'hBX;
     
	 #1; result = ~a << 4 | b >> 2**3-4; //unary executed before bit_wise
	 // ~4'b1110 = 4'b0001, |4'b1000 = 1'b1, 4'b0001 & 1'b1 = 4'b0001
	 $display("result = %x", result);
	 
	end
	
endmodule