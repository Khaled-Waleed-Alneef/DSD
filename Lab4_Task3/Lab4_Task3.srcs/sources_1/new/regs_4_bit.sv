module regs_4_bit(
    input wire CLK100MHZ,    // using the same name as pin names
    input wire CPU_RESETN,
    input wire BTNC,   
    output wire CA, CB, CC, CD, CE, CF, CG, DP,
    output wire [7:0] AN,    
    input wire [15:0] SW
);
logic [3:0] D1,D2,Qw,Q2;
logic reset,clk;
assign clk = BTNC;
assign reset = CPU_RESETN;

assign D1 = SW[3:0];
assign D2 = SW[7:4];

reg_4_bit RA0(D1,reset,clk,Qw);
B_reg_4_bit2 RA1(D2,reset,clk,Q2);



sev_seg_top ss1(
    .CLK100MHZ(CLK100MHZ),
    .CPU_RESETN(CPU_RESETN),   
    .CA(CA),
    .CB(CB),
    .CC(CC), 
    .CD(CD), 
    .CE(CE), 
    .CF(CF), 
    .CG(CG), 
    .DP(DP),
    .AN(AN),    
    .SW({Q2,Qw,D2,D1})
);
endmodule
