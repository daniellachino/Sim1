module mux2_test;
	logic d0, d1, sel, z;
	mux2 uut (
		.z(z),
		.d0(d0),
		.d1(d1),
		.sel(sel)
		);
		initial begin
		
			sel=0;
			d1=0;
			d0=0;
			
			#20
			sel=0;
			d1=0;
			d0=1;
			
			#20
			sel=0;
			d1=1;
			d0=0;
			
			#20
			sel=0;
			d1=1;
			d0=1;
			
			#20
			sel=1;
			d1=0;
			d0=0;
			
			#20
			sel=1;
			d1=0;
			d0=1;
			
			#20
			sel=1;
			d1=1;
			d0=0;
			
			#20
			sel=1;
			d1=1;
			d0=1;
		end
endmodule