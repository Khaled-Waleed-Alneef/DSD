module Top#(parameter N = 100, WIDTH = $clog2(N))(
    input wire CLK100MHZ,    // using the same name as pin names
    input wire CPU_RESETN,   
    output wire CA, CB, CC, CD, CE, CF, CG, DP,
    output wire [7:0] AN,    
    input wire [15:0] SW 
    );

 
logic en,reset,clk;
logic [WIDTH-1:0] Q;
assign reset  =  CPU_RESETN;
assign en = SW[0];


clk clk1(CLK100MHZ,reset,clk);

counter_ins c1(en,1'b0,reset,clk,Q);

sev_seg_top sst12(
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
    .SW ({en,1'b0,Q})    
); 
endmodule
