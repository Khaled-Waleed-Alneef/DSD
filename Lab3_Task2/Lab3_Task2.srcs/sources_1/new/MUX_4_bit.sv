`timescale 1ns / 1ps


module MUX_4_bit(input [3:0] a, input [3:0] b,input s, output [3:0] f);

assign f = (s == 1)?a:b;

endmodule
