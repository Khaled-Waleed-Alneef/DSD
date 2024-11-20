`timescale 1ns / 1ps

module mul_tb;

logic [7:0] Qf;
logic [3:0] a,b,Q;
logic reset,clk;

mul dut(.*);

initial
clk = 0;

always #5 clk = ~clk;
initial 
    begin
$monitor("%0t %h\t %h\t %h\t %h\t %h\t %h", $time, clk, reset, a, b, Q,Qf);
end
initial begin
     reset = 0;
    #1
     a = 4'b0010; b = 4'b0011;
    
    reset = 1;
    #80
    $finish;
    end
endmodule
