`timescale 1ns / 1ps

module ALU_4_bit_tb();
logic [3:0] A;
logic [3:0] B;
logic S1,S2;
logic [3:0] F;

ALU_4_bit dut(A,B,S1,S2,F);

initial 
    begin
$monitor("%0t %h\t %h\t %h\t %h", $time, A, B, S1, S2, F);
end

initial 
    begin                           //AND
    A = 4'b0010; B = 4'b0001; S1 = 2'b0;S2 = 2'b0;#5
                                    //ADD
    A = 4'b0001; B = 4'b0010; S1 = 2'b0;S2 = 2'b1;#5
                                    //Shift
    A = 4'b0011; B = 4'b0010; S1 = 2'b1;S2 = 2'b0;#5
                                    //SUB 
    A = 4'b0011; B = 4'b0001; S1 = 2'b1;S2 = 2'b1;#5 
    $finish;
    end
endmodule
