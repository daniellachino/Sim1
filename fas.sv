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
logic aXb,aXd,cnot,bnot,cnotORbnot,cANDb,cORb,cNORb,aXdORcNORb,aXdNORcNORb;
// sum:
XOR2 #(8,7) xor_inst1 (a,b,aXb);
XOR2 #(8,7) xor_inst2 (aXb,cin,s);
// carry_out:
XOR2 #(8,7) xor_inst3 (a,a_ns,aXd);
NOT #(1,4) not_ins1 (cin,cnot);
NOT #(1,4) not_ins2 (b,bnot);
OR2 #(9,6) or_ins1 (cin,b,cORb);
NOT #(1,4) not_ins3 (cORb,cNORb);
OR2 #(9,6) or_ins2 (cNORb,aXd,aXdORcNORb);
NOT #(1,4) not_ins4 (aXdORcNORb,aXdNORcNORb);
OR2 #(9,6) or_ins3 (cnot,bnot,cnotORbnot);
NOT #(1,4) not_ins5 (cnotORbnot,cANDb);
OR2 #(9,6) final_or (cANDb,aXdNORcNORb,cout);
// End of your code

endmodule
