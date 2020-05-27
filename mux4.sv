// 4->1 multiplexer template
module mux4 (
    input logic d0,          // Data input 0
    input logic d1,          // Data input 1
    input logic d2,          // Data input 2
    input logic d3,          // Data input 3
    input logic [1:0] sel,   // Select input
    output logic z           // Output
);

// Put your code here
// ------------------
logic M1_out,M2_out;

mux2 M1(
	.z(M1_out),
	.d0(d0),
	.d1(d1),
	.sel(sel[0])
);
mux2 M2(
	.z(M2_out),
	.d0(d2),
	.d1(d3),
	.sel(sel[0])
);
mux2 M3(
	.z(z),
	.d0(M1_out),
	.d1(M2_out),
	.sel(sel[1])
);

// End of your code

endmodule
