module DFF(input D, input RESET, input CLK, output Q, output Q1);
logic Qm, Qs;

Latch l1(D,~RESET,~CLK,Qm);
Latch l2(Qm,~RESET,CLK,Q,Q1);

endmodule
