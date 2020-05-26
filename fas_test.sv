// Full Adder/Subtractor test bench template
module fas_test;

// Put your code here
// ------------------
logic a,b,c,d;
logic [3:0] vec;
assign {d,c,b,a} = vec;
logic sum;
logic carry_out= 1;
logic sum_error = 1;
logic carry_error = 0;
fas UUT(vec[0],vec[1],vec[2],vec[3],sum,carry_out);

int i = 0;
initial begin
    #100
    vec = i;
    for (i = 0; i<=15; i++)begin
        #100;

        if (sum != vec[0] ^ vec[1] ^ vec[2]) sum_error =1;
        else sum_error = 0;
        if (carry_out != ~(~c|~b)|~(~(b|c)|(a^d))) carry_error = 1;
        else carry_error = 0;
        vec = i;
    end
    $stop;
end

// End of your code

endmodule
