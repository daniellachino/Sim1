// Full Adder/Subtractor template
module fas (
    input logic a,           // Input bit a
    input logic b,           // Input bit b
    input logic cin,         // Carry in
    input logic a_ns,        // A_nS (add/not subtract) control
    output logic s,          // Output S
    output logic cout        // Carry out
);

// Put your code here
// ------------------
// genvar A,B,C,D,E,F,G,H,I = {3,1,4,9,6,8,7,4,4};
logic aXb;
XOR2 #(8,7) xor_inst (a,b,aXb);
XOR2 #(8,7) xor_inst2 (aXb,cin,s);

// End of your code

endmodule
