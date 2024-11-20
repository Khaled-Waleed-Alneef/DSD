module reg_4_bit(input [3:0] D, input RESET, input CLK, output [3:0] Q);
wire w1,w2,w3,w4;
DFF dff1(D[0],RESET,CLK,Q[0],w1);
DFF dff2(D[1],RESET,CLK,Q[1],w2);
DFF dff3(D[2],RESET,CLK,Q[2],w3);
DFF dff4(D[3],RESET,CLK,Q[3],w4);
endmodule

