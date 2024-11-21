module MUX_4_bit#(parameter n = 4)(
     input [n-1:0] a,
     input [n-1:0] b,
     input s, 
     output [n-1:0] f
     );

assign f = (s == 1)?a:b;

endmodule
