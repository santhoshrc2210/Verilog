module easy_vectors_example () ;

	reg [7:0] a = 0; //8bit register (MSB_position=7, LSB_position-0)
	reg [6:0] b = 0; //7bit register
	reg [7:0] d = 0; //8bit register
	
	wire [1:0] c; //2 bit net
	
	// continoius assignment between a net and a register
	// c[1] = a[3];
	// c[0] = a[2];
	assign c[1:0] = a[3:2]; // this is also called 'bit slicing'
	
	// Procedure used to continously monitor 'a', 'b', 'c' and 'd'
	initial begin
	  $monitor("PROC2 a=%b, b=%b, c=%b, d=%b", a, b, c, d);
	end

    //Another procedure example
    initial begin
        // change only the value of 'a' to see the effect on 'c'
        #1 a = 1;
        #1 a = 8'b1111_0101;
        #1 a = 8'b1111_1000;
        #1 a = 8'b0000_1000;
        #1 a = 8'b0;

        #1 b = 7'b111_1111; // change the value of b
        #1 d[3:0] = a[3:0];
        #1 d[7:4] = b[6:3];

        #1 a = 8'b0000_1110; //change the value of a 
        #1 d ={a[3:0], b[3:0]}; //concatenation
        #1 d = {b[3:0], a[7:4]}; //concatenation	
    end

endmodule	