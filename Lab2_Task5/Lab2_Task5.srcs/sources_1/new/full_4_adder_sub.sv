module full_4_adder_sub(input [3:0] a, input [3:0] b, input ci, output [3:0] s, output co);

wire c0, c1, c2, b0, b1, b2, b3;

xor(b0,ci,b[0]);
xor(b1,ci,b[1]);
xor(b2,ci,b[2]);
xor(b3,ci,b[3]);

full_adder fa1(ci, a[0], b0, s[0], c0);
full_adder fa2(c0, a[1], b1, s[1], c1);
full_adder fa3(c1, a[2], b2, s[2], c2);
full_adder fa4(c2, a[3], b3, s[3], co);

endmodule