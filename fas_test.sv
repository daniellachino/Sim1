// Full Adder/Subtractor test bench template
module fas_test;

// Put your code here
// ------------------
	logic a,b,cin,a_ns;
	logic sum;
	logic carry_out;
	logic error = 0;
	fas uut(.a(a),.b(b),.cin(cin),.a_ns(a_ns),.s(sum),.cout(carry_out));
	int i = 0;
	initial begin
		a=0;
		b=0;
		a_ns=0;
		cin=0;
		#50
		cin=1;
		#50
		cin=0;
		#50;
	end


// End of your code

endmodule
