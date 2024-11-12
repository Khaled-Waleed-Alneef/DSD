`timescale 1ns / 1ps


module testbench;

logic a, b, sum, carry;

half_adder dut(a, b, sum, carry);

initial begin

	a = 0; b = 0; #5
	$display("%0t\t %b\t %b\t %b\t %b", $time, a, b, sum, carry);
	a = 0; b = 1; #5
	$display("%0t\t %b\t %b\t %b\t %b", $time, a, b, sum, carry);
    a = 1; b = 0; #5
    $display("%0t\t %b\t %b\t %b\t %b", $time, a, b, sum, carry);
    a = 1; b = 1; #5
    $display("%0t\t %b\t %b\t %b\t %b", $time, a, b, sum, carry);
    #5
    $finish;
end
endmodule
