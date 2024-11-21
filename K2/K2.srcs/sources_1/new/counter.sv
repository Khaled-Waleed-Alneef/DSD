module counter #(parameter n = 4)(
  input logic reset,
  input logic [n-1:0] D,
  input logic clk,
  input logic l,
  output logic [n-1:0] Q
    );
  initial
  Q = 4'b0;

    always @(posedge clk or negedge reset) begin
    if (~reset) 
        Q <= 4'b0; 
    else if (l == 1)
        Q <=  {1'b0 ,D};
    else 
        Q <=  Q + 1'b1;
end
endmodule
