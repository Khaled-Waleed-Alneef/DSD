`timescale 1ns / 1ps

module tb_K2;
   
    logic clk;
    logic reset;
    logic J;
    logic C;
    logic D1;
    logic D0;
    logic Sreg;
    logic [2:0] imm;
    logic [3:0] RAo;
    logic [3:0] RBo;
    logic [3:0] R0o;
    logic [3:0] addr;
    logic [3:0] ALUo;
    logic Co;
    logic  [7:0] ins;
    K2 dut(.*);
    
    initial 
    clk = 0;
    always
    #1 clk = ~clk;
    
    initial begin 
 
    reset = 1;#150
    $finish;
    end
endmodule
