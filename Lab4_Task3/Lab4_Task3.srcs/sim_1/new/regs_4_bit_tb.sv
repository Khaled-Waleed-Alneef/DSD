`timescale 1ns / 1ps

module regs_4_bit_tb;
logic [3:0] d1;
logic [3:0] q1;
logic [3:0] q2;
logic reset,clk;

logic clk_en  = 1;

initial
clk = 0;

always #5 clk = ~clk & clk_en;

reg_4_bit dut1(d1,reset,clk,q1);
B_reg_4_bit2 dut2(d1, reset, clk, q2);

initial 
    begin 
    $monitor("%0t %b\t %b\t %b\t %b\t ", $time, clk, reset, d1,q1);
    end
    
initial 
    begin
    reset = 1; #8
    reset = 0; #8
    reset = 1; d1 = 4'b0010; #8
    reset = 1; d1 = 4'b0100; #8
    reset = 1; d1 = 4'b0001; #8
    reset = 1; d1 = 4'b0011; #8
    reset = 1; d1 = 4'b1100; #8
    reset = 1; d1 = 4'b0110; #8
    reset = 1; d1 = 4'b0011; #2
    reset = 1; d1 = 4'b0100; #8 
    clk_en = 0;
    reset = 1; d1 = 4'b1100; #8
    reset = 1; d1 = 4'b0110; #8
    reset = 1; d1 = 4'b0011; #2
    reset = 1; d1 = 4'b0100; #8
    
    $finish;
    end 

endmodule
