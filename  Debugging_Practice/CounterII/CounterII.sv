module counterII_4bit #(
    parameter n = 4
) (

    input logic clk,
    input logic reset_n,
    input logic load,
    input logic [3:0] load_data,
    output logic [3:0] count
);

  logic [3:0] next_count;  //Diff size
  assign next_count = load ? load_data : (count + 1);  //inversed logic 


  always @(posedge clk, negedge reset_n) begin
    if (~reset_n) count <= 0;  // inversed reset
    else count <= next_count;
  end

endmodule
