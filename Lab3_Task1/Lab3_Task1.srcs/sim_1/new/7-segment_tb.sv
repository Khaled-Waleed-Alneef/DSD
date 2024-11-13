`timescale 1ns / 1ps
module svn_seg_tb;
  logic [0:3] bin;
  logic [6:0] seg;
    
    seven_seg_decoder dut(bin,seg);
    initial 
        begin
        $monitor("%b\t%b",bin,seg);
    end    
    initial 
        begin
        bin[0] = 0; bin[1] = 0; bin[2] = 0; bin[3] = 0;#5
        bin[0] = 0; bin[1] = 0; bin[2] = 0; bin[3] = 1;#5
        bin[0] = 0; bin[1] = 0; bin[2] = 1; bin[3] = 0;#5
        bin[0] = 0; bin[1] = 0; bin[2] = 1; bin[3] = 1;#5
        bin[0] = 0; bin[1] = 1; bin[2] = 0; bin[3] = 0;#5
        bin[0] = 0; bin[1] = 1; bin[2] = 0; bin[3] = 1;#5
        bin[0] = 0; bin[1] = 1; bin[2] = 1; bin[3] = 0;#5
        bin[0] = 0; bin[1] = 1; bin[2] = 1; bin[3] = 1;#5
        bin[0] = 1; bin[1] = 0; bin[2] = 0; bin[3] = 0;#5
        bin[0] = 1; bin[1] = 0; bin[2] = 0; bin[3] = 1;#5
        bin[0] = 1; bin[1] = 0; bin[2] = 1; bin[3] = 0;#5
        bin[0] = 1; bin[1] = 0; bin[2] = 1; bin[3] = 1;#5
        bin[0] = 1; bin[1] = 1; bin[2] = 0; bin[3] = 0;#5
        bin[0] = 1; bin[1] = 1; bin[2] = 0; bin[3] = 1;#5
        bin[0] = 1; bin[1] = 1; bin[2] = 1; bin[3] = 0;#5
        bin[0] = 1; bin[1] = 1; bin[2] = 1; bin[3] = 1;#5
        $finish;
        end
        
endmodule
