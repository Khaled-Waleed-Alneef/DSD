`timescale 1ns / 1ps


module testbench;

logic ci, x, y, sum, co;

full_adder dut(ci,x,y,sum,co);

initial begin

	x = 0; y = 0; ci = 0; #5
	$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, x, y, ci, sum, co);
	x = 0; y = 0; ci = 1; #5
	$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, x, y, ci, sum, co);
	x = 0; y = 1; ci = 0; #5
	$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, x, y, ci, sum, co);
	x = 0; y = 1; ci = 1; #5
	$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, x, y, ci, sum, co);
	x = 1; y = 0; ci = 0; #5
	$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, x, y, ci, sum, co);
	x = 1; y = 0; ci = 1; #5
	$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, x, y, ci, sum, co);
	x = 1; y = 1; ci = 0; #5
	$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, x, y, ci, sum, co);
	x = 1; y = 1; ci = 1; #5
	$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, x, y, ci, sum, co);
    #5
    $finish;
end
endmodule
