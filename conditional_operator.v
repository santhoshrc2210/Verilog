module conditional_operator();

    int result;
	int a = 9;
	int b = 31;
	reg c = 0;
	
	
	// Procedure used to generate stimulus
	initial begin 
	  #1; result = (a == 9)? 1 : 0;
	  $display("result = %0d", result);
	
	  #1; result = ((a+b) == 40)? 1 : 0;
	  $display("result = %0d", result);
	
	  #1; result = (b == 30)? 678 : -99;
	  $display("result = %0d", result);
	
	  #1; c = (b == 31)? 1'bz : 1'b0;
	  $display("c = %b", c);
	
	end
	
endmodule