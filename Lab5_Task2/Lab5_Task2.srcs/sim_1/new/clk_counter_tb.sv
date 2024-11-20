`timescale 1ns / 1ps


module clk_counter_tb;
logic clk100;
logic reset,clko;

clk #(10) dut(clk100,reset,clko);

initial 
clk100 = 0;
always 
#1 clk100 = ~clk100;

initial begin
reset = 0;
#1
reset = 1;
#100
$finish;
end

endmodule
