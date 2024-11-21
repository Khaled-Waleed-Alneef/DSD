module reg_n_bit #(parameter n = 4)(
    input logic clk,
    input logic reset,
    input logic en,
    input logic [n-1:0] D,
    output logic [n-1:0] Q
    );
    always@(posedge clk or negedge reset)
    begin
        if(~reset)
        Q <= 0;
        else begin
        if(en == 1)
            Q <= D;
            end
    end        
endmodule
