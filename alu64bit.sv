// 64-bit ALU template
module alu64bit (
    input logic [63:0] a,    // Input bit a
    input logic [63:0] b,    // Input bit b
    input logic cin,         // Carry in
    input logic [1:0] op,    // Operation
    output logic [63:0] s,   // Output S
    output logic cout        // Carry out
);

// Put your code here
// ------------------
	logic [62:0] C_out;
	
	alu1bit ALU0(
		.s(s[0]),
		.cout(C_out[0]),
		.op(op),
		.cin(cin),
		.a(a[0]),
		.b(b[0])
	);
	alu1bit ALU63(
		.s(s[63]),
		.cout(cout),
		.op(op),
		.cin(C_out[62]),
		.a(a[63]),
		.b(b[63])
	);
		
	genvar i;
	generate
		for(i=1;i<63;i++)
		begin
		alu1bit ALU(
			.s(s[i]),
			.cout(C_out[i]),
			.op(op),
			.cin(C_out[i-1]),
			.a(a[i]),
			.b(b[i])
		);
		end
	endgenerate

// End of your code

endmodule
