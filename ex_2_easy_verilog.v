module easy_verilog_example() ;

  reg x = 1'b0; // 1 bit variable with value 0
  reg y = 1'b1; // 1 bit variable with value 1
  reg z; // used to store the result of operations between x and y
  
  // A procedure example
  always @(z) begin
      $display("x=%b, y=%b, z=%b", x,y,z);
  end
  
  initial begin
        #2; // wait 2 time units
		z = x ^ y; //bit-wise XOR between the 1 bit variables x and y
		#10; // wait 10 time units
		y = 0; //change the value of y
		z = x | y; //bit-wise OR between the 1 bit variables x and y
		#10; // wait 10 time units
		z = ~z; // bit wise NOT of the variable Z
		#10; // wait 10 time units
  end
  
endmodule