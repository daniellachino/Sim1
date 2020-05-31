// 64-bit ALU test bench template
module alu64bit_test;

// Put your code here
// ------------------
	logic [63:0] a;
	logic [63:0] b;
	logic [63:0] cin;
	logic [1:0] op;
	logic [63:0] s;
	logic cout;
	
	alu64bit uut(
		.cout(cout),
		.s(s),
		.op(op),
		.cin(cin),
		.a(a),
		.b(b)
	);
	

	initial begin
	
		a=64'b0;
		b=64'b0;
		cin=1'b0;
		op=2'b11;
		
		#5000
		cin=1'b1;
		#5000;
	end
	
// End of your code

endmodule
