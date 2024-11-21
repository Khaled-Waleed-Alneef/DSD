
module counter #(parameter n = 4)(
  input logic reset,
  input logic [n-1:0] D,
  input logic clk,
  input logic l,
  output logic [n-1:0] Q
    );
  

    always @(posedge clk or negedge reset) begin
    if (~reset) begin
        Q <= 4'b0; 
    end else begin
        Q <= l ? {1'b0 ,D} : Q + 1'b1 ;
    end
end
endmodule
