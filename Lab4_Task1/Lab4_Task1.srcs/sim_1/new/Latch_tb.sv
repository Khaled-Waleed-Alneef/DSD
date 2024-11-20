`timescale 1ns / 1ps

module Latch_tb;
logic d,clk,reset,q,q1;

Latch dut(d,reset,clk,q,q1);

initial 
    begin 
    $monitor("%0t %h\t %h\t %h\t %h", $time, clk, reset, d, q, q1);
    end
    
initial 
    begin
    reset = 0; d = 0; clk = 0;#5
    reset = 0; d = 0; clk = 1;#5
    reset = 0; d = 1; clk = 0;#5
    reset = 0; d = 1; clk = 1;#5
    reset = 0; d = 0; clk = 0;#5
    reset = 0; d = 0; clk = 1;#5
    reset = 0; d = 1; clk = 0;#5
    reset = 0; d = 1; clk = 1;#5
    reset = 0; d = 0; clk = 0;#5
    reset = 0; d = 0; clk = 1;#5 
    reset = 0; d = 1; clk = 0;#5
    reset = 1; d = 1; clk = 1;#5 
     
    $finish;
    end     
endmodule
