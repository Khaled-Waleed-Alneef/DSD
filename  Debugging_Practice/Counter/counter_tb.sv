module counter_4bit_tb2 ();

  logic load, reset_n, clk;
  logic [3:0] count, load_data;

  counter_4bit DUT (.*);

  initial begin
    clk = 0;
  end
  always #5 clk = ~clk;
  initial begin
    load = 0;
    reset_n = 1;
    #1 reset_n = 0;
    #1 reset_n = 1;
    #800 load = 1;
    load_data = 4;
    #20
    load = 0;
    #40
     $finish;

  end
endmodule
