module counter #(parameter n = 4)(
  input logic reset,
  input logic [2:0] D,
  input logic clk,
  input logic l,
  output logic [n-1:0] Q
    );
  initial
  Q = 0;

    always @(posedge clk or negedge reset) begin
    if (~reset) 
        Q <= 0; 
    else if (l == 1)
        Q <=  {n-3'b0 ,D};
    else 
        Q <=  Q + 1'b1;
end
endmodule
