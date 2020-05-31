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
logic carry_error = 1;
fas UUT(vec[0],vec[1],vec[2],vec[3],sum,carry_out);
int i = 0;
logic [0:15] cout_truth_table  = 16'b0010101100010111;
logic [0:15] sum_truth_table  = 16'b0110100101101001;
logic carry_test;
logic sum_test;
initial begin
    for (i = 0; i<=15; i++)begin
        carry_test = cout_truth_table[i];
        sum_test = sum_truth_table[i];
        #50
        vec = i;
        #50;
        if (sum != sum_test) sum_error =1;
        else sum_error = 0;


        if (carry_out != carry_test) carry_error =1;
        else carry_error = 0;
        
        
    end
    $stop;
end

// End of your code

endmodule
