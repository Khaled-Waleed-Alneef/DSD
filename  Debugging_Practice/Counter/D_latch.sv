module d_latch_asyn_rstn (
    input  logic clk,
    input  logic D,
    input  logic reset_n,
    output logic Q,
    output logic Qn
);
  logic S, R;

  assign S = D;
  assign R = ~D;  // should be ~D

  logic nand1_o, nand2_o;
  //and (Q, ~reset_n, Q1);
  nand (Qn, nand2_o, Q);
  nand (nand1_o, S, clk);
  nand (nand2_o, R, clk);
  nand (Q, nand1_o, Qn);  // Q1--> Q


endmodule
