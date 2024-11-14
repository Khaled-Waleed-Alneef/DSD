`timescale 1ns / 1ps

module ALU_4_bit(input [3:0] a, input [3:0] b,input s1,input s2, output [3:0] f);
wire [3:0] o1; 
wire [3:0] o2;

full_4_adder_sub fas(a,b,s1,o1);

MUX_4_bit m1(a<<b,a&b,s1,o2);
MUX_4_bit m2(o1,o2,s2,f);

endmodule
