
module sh_reg (
    input logic clk,
    input logic reset,
    output logic [7:0] Q,
    input logic D
    );
    
    
    always@(posedge clk or posedge reset)
    begin   
        if(~reset)
        begin   
           
            Q = 8'b00000000;
         end 
         else 
         begin
          Q[1] <= Q[0];
            Q[2] <= Q[1];
            Q[3] <= Q[2];
            Q[4] <= Q[3];
            Q[5] <= Q[4];
            Q[6] <= Q[5];
            Q[7] <= Q[6];
            Q[8] <= Q[7];
            Q[0] <= D;
         end 
   end        
endmodule
