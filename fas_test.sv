// Full Adder/Subtractor test bench template
module fas_test;

// Put your code here
// ------------------
logic a,b,cin,ans;
logic sum;
logic carry_out= 1;

fas UUT(a,b,cin,ans,sum,carry_out);

initial begin
    a = 0;
    b = 0;
    cin = 0;
    ans = 1;
    #50;
    cin = 1;
    #50;
    cin= 0;
    #50;

end

// End of your code

endmodule
