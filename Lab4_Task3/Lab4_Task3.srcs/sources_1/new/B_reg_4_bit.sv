module B_reg_4_bit2(
input logic [3:0]D1, 
input logic RESET,
input logic CLK,
output logic [3:0]Q2);


always @(posedge CLK or negedge RESET) 
begin
    if (!RESET)
        Q2 <= 0; 
    else
        
        Q2 <= D1; 
    
end

endmodule

