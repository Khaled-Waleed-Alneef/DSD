module clk #(parameter B = 50000000)(
    input logic CLK100MHZ,
    input logic reset,
    output logic clk
);

    logic [31:0] count;

    initial 
        clk = 0;

    always @(posedge CLK100MHZ or negedge reset) begin
        if (!reset) begin
            clk <= 0;
            count <= 32'b0;
        end else begin
            if (count == B-1) begin
                count <= 32'b0;
                clk <= ~clk;
            end else begin
                count <= count + 1;
            end
        end
    end
endmodule
