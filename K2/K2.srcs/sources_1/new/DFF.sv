module DFF(
    input logic D,
    input logic clk,
    input logic reset,
    output logic Q
    );
always @(posedge clk or negedge reset) 
begin
    if(~reset)
        Q <= 0; 
    else
        Q <= D;

end 
endmodule
