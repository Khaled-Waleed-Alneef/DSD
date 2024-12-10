module decoder #(
    parameter n = 2
) (
    input  logic [1:0] in,
    output logic [3:0] out
);

  always @(*) begin
    case (in)
      0: out = 0001;
      1: out = 0010;
      2: out = 0100;
      3: out = 1000;

      default: out = 0;
    endcase
  end

endmodule
