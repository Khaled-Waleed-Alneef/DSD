`timescale 1ns / 1ps
module ROM(
    input logic [3:0] addr,
    output logic [7:0] ins,
    input logic clk
    );
    
    always@(*)
    begin
    
    case(addr)        //J,C,D1,D0,Sreg,S
    4'b0000: ins = 8'b00001000;
    4'b0001: ins = 8'b00011001;
    4'b0010: ins = 8'b00100000;
    4'b0011: ins = 8'b00010000;
    4'b0100: ins = 8'b01110000;
    4'b0101: ins = 8'b00000000;
    4'b0110: ins = 8'b00010100;
    4'b0111: ins = 8'b00000100;
    4'b1000: ins = 8'b10110010;
    
    
    default: ins = 8'bxxxxxxxx;
    endcase
    end
    
endmodule
