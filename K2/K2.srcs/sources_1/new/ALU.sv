module ALU#(parameter n = 4)(
    input [n-1:0] a, 
    input [n-1:0] b, 
    input ci, 
    output logic [n:0] Q
    );
    
always @(*) begin
        case (ci)
            1'b0: Q = a + b;  
            1'b1: Q = a - b;  
            default: Q = n-1'b0; 
        endcase
        
    end
endmodule