// 64-bit ALU test bench template
module alu1bit_test;

// Put your code here
// ------------------
logic a,b;
logic [1:0] op;
logic cin;
logic cout;
logic s;



alu1bit UUT(.a(a),.b(b),.cin(cin),.op(op),.cout(cout),.s(s));
logic error = 1;
int i = 0, j = 0,k =0;
initial begin
    for (i = 0; i<4; ++i) 
    begin
        {a,b} = i;
        for (j=0;j<4;++j)
        begin
        op = j;
            for (k =0; k <=1;++k ) 
            begin

                cin = k;
                #200
                case(op)
                    0: if (s == ~(a|b)) error = 0; else error = 1;
                    1: if (s == a^b) error = 0 ; else error = 1;
                    2: if (2*cout+s == a+b+cin); else error = 1;
                    3: if (2*cout + s == a-b-cin) ; else error = 1;
                endcase
                
            end
        end



    end
end
// End of your code

endmodule
