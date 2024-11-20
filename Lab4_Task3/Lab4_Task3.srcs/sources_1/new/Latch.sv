module Latch(input D,input RESET,input CLK,output Q,output Q1);
wire Qt,Qt1,R1,S1;

nand(S1,D,CLK);
nand(R1,~D,CLK);

nand(Qt,S1,Qt1);
nand(Qt1,R1,Q);

and(Q,Qt,RESET);
assign Q1 = Qt1;

endmodule