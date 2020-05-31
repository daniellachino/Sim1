// 1-bit ALU test bench template
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
logic [2:0] sub;
logic [2:0] add;
logic [2:0] out;
assign sub = a-b-cin;
assign add = a+b+cin;
assign out = {1,cout,s};

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
                k = k; // used as #200 cannot be before end.
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
                        3: if ((((int'(a)-int'(b)-int'(cin)) >=0 )&& ((2*cout+s) == (a-b-cin)))||(((int'(a)-int'(b)-int'(cin))<0)&&(sub == out))) begin
                            error = 0;
                            // $display("Check is: %b", ((((a-b-cin) >=0 )&& ((2*cout+s) == (a-b-cin)))||(((a-b-cin)<logic'(0)) && (out[0] == sub[0])&&(out[1] == sub[1])&&(out[2]== sub[2]))));

                            end else begin
                                error =1;                         // case ({cin,b,a})
                                // $display("inputs are: a= %d, b = %d, cin = %d, op = %d",a,b,cin,op);
                                // $display("outputs are: cout = %d, s= %d ",cout,s);
                                // $display("out is %d",out);
                                // $display("sub is is %d",sub);
                                // $display("Check is: %b", ((((a-b-cin) >=0 )&& ((2*cout+s) == (a-b-cin)))||(((a-b-cin)<logic'(0)) && (out[0] == sub[0])&&(out[1] == sub[1])&&(out[2]== sub[2]))));
                                // $display("check(problematic) is %b",(int'(a)-int'(b)-int'(cin))<0);
                                // $display("Check is %b",out == sub);

                            end
                        //     'b000: if (cout == 0 && s==0) error = 0; else error =1;
                        //     'b001: if (cout == 0 && s == 1) error = 0; else error =1;
                        //     'b010: if (cout == 1 && s == 1) error = 0; else error =1;
                        //     'b011: if (cout == 0 && s == 0) error = 0; else error =1;
                        //     'b001: if (cout == 0 && s == 1) error = 0; else error =1;
                             
                        // endcase
                            

                        //     if ((a-b-cin >=0) &&(2*cout+s == a-b-cin)) error =0;
                        //     else if ((a-b-cin <0) && (2*cout+s == 4+(a-b-cin))) error = 0;
                        //     else error =1;


    endcase
end
// End of your code


endmodule