module K2 #(parameter n = 4)(
    input logic clk,
    input logic reset,
    output logic Co,
    output logic J,
    output logic C,
    output logic D0,
    output logic D1,
    output logic Sreg,
    output logic [2:0] imm,
    output logic [n-1:0] RAo,
    output logic [n-1:0] RBo,
    output logic [n-1:0] R0o,
    output logic [n-1:0] addr,
    output logic [n-1:0] ALUo,
    output logic  [7:0] ins
    );
    
    logic [n-1:0] MUXo;
    logic enA,enB,en0;
    logic DFFo,ANDo,ORo;
    
    
    assign imm = ins[2:0];
    assign Sreg = ins[3];
    assign D0 = ins[4];
    assign D1 = ins[5];
    assign C = ins[6];
    assign J = ins[7];
    
    counter c1(reset,imm,clk,ORo,addr);
    
    ROM rom1(addr,ins,clk);
    
    MUX_4_bit mux1 (imm,ALUo,Sreg,MUXo);
    
    decoder dec1({D1,D0},{en0,enB,enA});
    
    reg_n_bit RA(clk,reset,enA,MUXo,RAo);
    reg_n_bit RB(clk,reset,enB,MUXo,RBo);
    reg_n_bit R0(clk,reset,en0,RAo,R0o);
    
    ALU alu1(RAo,RBo,imm[2],{Co,ALUo});
    
    DFF dff1(Co,clk,DFFo);
    
    and(ANDo,DFFo,C);
    or(ORo,ANDo,J);
    
endmodule
