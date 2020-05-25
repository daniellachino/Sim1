// Full Adder/Subtractor test bench template
module fas_test;

// Put your code here
// ------------------
logic [3:0] vec;
logic sum;
logic carry_out;
logic error = 0;
fas UUT(vec[0],vec[1],vec[2],vec[3],sum,carry_out);
int i = 0;
initial begin
    #50
    vec = i;
    for (i = 0; i<=15; i++)begin
        #50;
        if (sum != vec[0] ^ vec[1] ^ vec[2]) error =1;
        else error = 0;
        vec = i;
    end
    $stop;
end

// End of your code

endmodule
