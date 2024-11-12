`timescale 1ns / 1ps


module testbench;

logic ci;
logic[3:0] x;
logic [3:0]y;
logic [3:0]sum; 
logic  co;

full_4_adder dut(x,y,ci,sum,co);

initial begin

    x = 4'b0010; y = 4'b0010; ci = 1; #5
	$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, x[3:0], y[3:0], ci, sum[3:0], co);
	x = 4'b0010; y = 4'b0010; ci = 1; #5
	$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, x[3:0], y[3:0], ci, sum[3:0], co);
	x = 4'b0101; y = 4'b0101; ci = 0; #5
	$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, x[3:0], y[3:0], ci, sum[3:0], co);
	x = 4'b0011; y = 4'b0011; ci = 1; #5
	$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, x[3:0], y[3:0], ci, sum[3:0], co);
	x = 4'b0111; y = 4'b0111; ci = 0; #5
	$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, x[3:0], y[3:0], ci, sum[3:0], co);
	x = 4'b1011; y = 4'b1011; ci = 1; #5
	$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, x[3:0], y[3:0], ci, sum[3:0], co);
	x = 4'b1111; y = 4'b1111; ci = 0; #5
	$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, x[3:0], y[3:0], ci, sum[3:0], co);
	x = 4'b1000; y = 4'b1000; ci = 1; #5
	$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, x[3:0], y[3:0], ci, sum[3:0], co);
    #5
    $finish;
end
endmodule
