`timescale 1ns / 1ps

module sh_reg_tb;
logic [7:0] Q;
logic D;
logic clk, reset;

sh_reg dut(clk,reset,Q,D); 

initial
clk = 0;
always
#5 clk = ~clk;

initial begin
$monitor("%0t %b\t %b\t %b\t %b", $time, clk, reset,D, Q);
end

initial begin 


reset = 1;D = 1;
#6
D = 0;
#90
$finish;

end 
endmodule
