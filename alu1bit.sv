// 1-bit ALU template
module alu1bit (
    input logic a,           // Input bit a
    input logic b,           // Input bit b
    input logic cin,         // Carry in
    input logic [1:0] op,    // Operation
    output logic s,          // Output S
    output logic cout        // Carry out
);

// Put your code here
// ------------------
logic aORb,aNORb,aXORb,fas_S,a_ns;
// NOR:
OR2 #(9,6) or_inst1 (a,b,aORb);
NOT #(1,4) not_inst1 (aORb,aNORb);
// XOR:
XOR2 #(8,7) xor_inst3 (a,b,aXORb);
//Fas:
NOT #(1,4) not_inst2 (op[0],a_ns);
fas fas_inst (.a(a),.b(b),.cin(cin),.a_ns(a_ns),.s(fas_S),.cout(cout));
//Mux:
mux4 mux_inst(aNORb,aXORb,fas_S,fas_S,op,s);
// End of your code

endmodule
