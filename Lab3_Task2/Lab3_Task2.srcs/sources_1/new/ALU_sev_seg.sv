`timescale 1ns / 1ps

module ALU_sev_seg(
    input wire CLK100MHZ,    // using the same name as pin names
    input wire CPU_RESETN,   
    output wire CA, CB, CC, CD, CE, CF, CG, DP,
    output wire [7:0] AN,    
    input wire [15:0] SW   

    );
    wire [3:0] q;
    wire [15:0] q1;
    
    ALU_4_bit a1(SW[3:0],SW[7:4],SW[13],SW[12],q);
    
    assign q1 = {2'b0,SW[13:12],q,SW[7:0]};
    
    sev_seg_top s1(CLK100MHZ,CPU_RESETN,CA, CB, CC, CD, CE, CF, CG, DP,AN,q1);
    
endmodule
