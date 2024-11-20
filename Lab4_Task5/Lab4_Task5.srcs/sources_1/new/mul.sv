module mul(
   input wire CLK100MHZ,    // using the same name as pin names
    input wire CPU_RESETN,
    input wire BTNC,   
    output wire CA, CB, CC, CD, CE, CF, CG, DP,
    output wire [7:0] AN,    
    input wire [15:0] SW 
    );
  logic reset;
  logic [3:0] b;
  logic [3:0] a;
  logic clk = BTNC;
  logic [3:0] Q;
  logic [7:0] Qf;
  
  assign reset = CPU_RESETN;
  assign a = SW[3:0];
  assign b = SW[7:4];
  
  wire [3:0] w1;
    
    assign w1 = a;
    
    always @(posedge clk or negedge reset) begin
    if (~reset) begin
        Q <= 4'b0000; 
         Qf <= 8'b0;
    end
    else
    begin
        if(Q != b)
        begin
        Q <= Q + 1;
        Qf = Qf + a;
        end    
    end
    
end   

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
    .SW ({b,a}),
    .Q(Q),
    .Qf(Qf)    
);
endmodule
