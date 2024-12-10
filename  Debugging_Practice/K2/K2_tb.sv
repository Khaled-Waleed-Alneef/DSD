module K2_tb();

logic resetn, clk;

core DUT(.*);

initial begin
    clk = 0;
end

always
#5 clk = ~clk;

initial begin
    resetn = 1;
    #1
    resetn = 0;
    #1
    resetn = 1;
    #9000
    $finish;
    
end

endmodule