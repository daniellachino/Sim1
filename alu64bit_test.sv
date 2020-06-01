// 64-bit ALU test bench template
module alu64bit_test;

// Put your code here
// ------------------
logic [63:0] a = 0;//{32{4'b1111}};
logic [63:0] b = 0;//{32{4'b1111}};
logic [1:0] op = 3;
logic cin = 0;
logic cout;
logic [63:0] s;


alu64bit UUT(.a(a),.b(b),.cin(cin),.op(op),.cout(cout),.s(s));

initial begin
    cin = 0;
    #2000;
    cin = 1;
    #2000;
end

//End of your code

endmodule
