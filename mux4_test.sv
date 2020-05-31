// 4->1 multiplexer test bench template
module mux4_test;

// Put your code here
// ------------------
	logic d0,d1,d2,d3,z;
	logic [1:0] sel;

	mux4 uut(
		.z(z),
		.d0(d0),
		.d1(d1),
		.d2(d2),
		.d3(d3),
		.sel(sel)
	);

	initial begin
		sel[1]=0;
		sel[0]=0;
		d3=0;
		d2=0;
		d1=0;
		d0=0;
	
		# 80
		d0=1;
	
		#80
		d0=0;
	end

// End of your code

endmodule
