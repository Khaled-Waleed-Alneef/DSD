module full_4_adder(input [3:0] a, input [3:0] b, input ci, output [3:0] s, output co);

wire c0, c1, c2;

full_adder fa1(ci, a[0], b[0], s[0], c0);
full_adder fa2(c0, a[1], b[1], s[1], c1);
full_adder fa3(c1, a[2], b[2], s[2], c2);
full_adder fa4(c2, a[3], b[3], s[3], co);

endmodule