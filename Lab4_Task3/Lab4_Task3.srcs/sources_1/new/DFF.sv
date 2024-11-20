module DFF(input D, input RESET, input CLK, output Q, output Q1);
wire Qm;
wire temp;
Latch l1(D,RESET,~CLK,Qm,temp);
Latch l2(Qm,RESET,CLK,Q,Q1);

endmodule