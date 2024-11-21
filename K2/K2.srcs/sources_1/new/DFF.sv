module DFF#(parameter n = 1)(
    input logic [n-1:0] D,
    input logic clk,
    output logic [n-1:0] Q
    );
always @(posedge clk) 
begin
 Q <= D; 
end 
endmodule
