
module counter_ins#(parameter N = 100, WIDTH = $clog2(N))(
    input logic en,
  input logic s,
  input logic reset,
  input logic clk,
  output logic [WIDTH-1:0] Q
    );
    always @(posedge clk or negedge reset) begin
    if (~reset) begin
        Q <= 0; 
    end 
    else if(en == 1)
    begin
        if(Q == N)
        Q <= 0;
        else Q<=Q+1;
    end
end
endmodule
