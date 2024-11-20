module Top(
    input wire CLK100MHZ,    
    input wire CPU_RESETN,   
    input wire BTNC,
    output wire CA, CB, CC, CD, CE, CF, CG, DP,
    output wire [7:0] AN,    
    input wire [15:0] SW 
    );
    
    logic clk, reset, D;
    logic [7:0] Q;
    
    assign clk = BTNC;
    assign reset = CPU_RESETN;
    
    
    sh_reg sr1(clk,reset,Q,D);
    
    
    assign D = SW[0];
    
    sev_seg_top sst1(
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
    .SW({Q,7'b0000000,D})
    );
    
endmodule
