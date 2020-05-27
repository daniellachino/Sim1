// 2->1 multiplexer template
module mux2 (
    input logic d0,          // Data input 0
    input logic d1,          // Data input 1
    input logic sel,         // Select input
    output logic z           // Output
);

// Put your code here
// ------------------
logic a,b,c,d,e,f,h;

NOT #(
	.Tpdlh(1),
	.Tpdhl(4)
) g1(
	.Z(a),
	.A(sel)
);
NOT #(
	.Tpdlh(1),
	.Tpdhl(4)
) g2(
	.Z(b),
	.A(d1)
);
OR2 #(
	.Tpdlh(9),
	.Tpdhl(6)
) g3(
	.Z(f),
	.A(sel),
	.B(h)
);
NOT #(
	.Tpdlh(1),
	.Tpdhl(4)
) g4(
	.Z(h),
	.A(d0)
);
OR2 #(
	.Tpdlh(9),
	.Tpdhl(6)
) g5(
	.Z(c),
	.A(a),
	.B(b)
);
NOT #(
	.Tpdlh(1),
	.Tpdhl(4)
) g6(
	.Z(d),
	.A(c)
);
NOT #(
	.Tpdlh(1),
	.Tpdhl(4)
) g7(
	.Z(e),
	.A(f)
);
OR2 #(
	.Tpdlh(9),
	.Tpdhl(6)
) g8(
	.Z(z),
	.A(d),
	.B(e)
);
// End of your code

endmodule
