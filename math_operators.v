module math_operators();

    integer a = 2; //32 bit signed value
	integer b = 3;
	integer result;
	
	
	// Procedure used to continously monitor 'a', 'b', and 'result'
	initial begin
	  $monitor("MON a = %0d, b = %0d, result = %0d", a, b, result);
	end
	
	// Procedure used to generate stimulus
	initial begin
	    result = a ** b; //exponentiation
		#1;              // wait some time between examples
		result = b ** a; //exponentiation
		
		#1; a = 177; b = 12;
		result = a * b; // multiplication
		
		#1; a = 199; b = 19;
		result = a / b; //divison
		#1;
		result = a % b; //remainder
		
		#1; a = 199; b = -19;
		result = a % b; // remainder negative 
		
		#1; a = 4199; b = -2319;
		result = a + b;
		
		#1; a = 19234; b = -16;
		result = a - b;
		
		// Always use paranthesys when complex operations are performed
		#1; a = 919234; b = 13;
		result = a - (b*(2**15));
		
	end

endmodule