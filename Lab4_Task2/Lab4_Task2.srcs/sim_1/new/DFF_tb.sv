`timescale 1ns / 1ps

module DFF_tb;
logic d,clk,reset,q,q1;


initial
clk = 0;

always
#5 clk = ~clk;

DFF dut(d,reset,clk,q,q1);

initial 
    begin 
    $monitor("%0t %b\t %b\t %b\t %b\t %b", $time, clk, reset, d, q, q1);
    end
    
initial 
    begin
    reset = 1; d = 0; #5
    reset = 0; d = 0; #5
    reset = 1; d = 1; #5
    reset = 0; d = 1; #5
    reset = 1; d = 0; #5
    reset = 1; d = 0; #5
    reset = 0; d = 1; #5
    reset = 1; d = 1; #5 
    $finish;
    end     
endmodule
