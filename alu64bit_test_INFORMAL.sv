// 64-bit ALU test bench template
module alu64bit_test_INFORMAL;

// Put your code here
// ------------------
logic [63:0] a;
logic [63:0] b;
logic [1:0] op;
logic cin;
logic cout;
logic [63:0] s;


alu64bit UUT(.a(a),.b(b),.cin(cin),.op(op),.cout(cout),.s(s));
logic error = 1;
longint i = 0;
int j = 0,k =0;
longint r = 0;
logic [64:0] sub;
logic [64:0] add;
logic [64:0] out;
assign sub = a-b-cin;
assign add = a+b+cin;
assign out = {1,cout,s};
longint MAX_64 = 32'd4294967295;
initial begin
    for (r = 0; r<MAX_64;r++)
    begin
        a = r;
        for (i = 0; i<MAX_64; ++i) 
        begin
            b = i;
            for (j=0;j<4;++j)
            begin
            op = j;
                for (k =0; k <=1;++k ) 
                begin
                    cin = k;
                    #2000
                    k = k;
                end
            end

        end

    end
    $stop;
end

logic clk = 0;
always begin
    #20;
    clk = ~clk;
end
always_ff @(clk) begin
    case(op)
                        0: if (s == ~(a|b)) error = 0; else error = 1;
                        1: if (s == a^b) error = 0 ; else error = 1;
                        2: if (2*cout+s ==a+b+cin) error = 0; else error = 1;
                        3: if ((((int'(a)-int'(b)-int'(cin)) >=0 )&& ((2*int'(cout)+int'(s)) == (int'(a)-int'(b)-int'(cin))))||(((int'(a)-int'(b)-int'(cin))<0)&&(sub == out))) begin
                            error = 0;
                            end else begin
                                error =1;
                               

                            end
                        


    endcase
end

//End of your code

endmodule
