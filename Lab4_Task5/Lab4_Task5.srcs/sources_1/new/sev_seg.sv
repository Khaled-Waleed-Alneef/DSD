module sev_seg_top(
    input wire CLK100MHZ,    // using the same name as pin names
    input wire CPU_RESETN,   
    output wire CA, CB, CC, CD, CE, CF, CG, DP,
    output wire [7:0] AN,    
    input wire [15:0] SW,
      logic [3:0] Q,
  logic [7:0] Qf   
);


logic reset_n;
logic clk;

assign reset_n = CPU_RESETN;
assign clk = CLK100MHZ;



// Seven segments Controller
wire [6:0] Seg;
wire [3:0] digits[0:7];

assign digits[0] = SW[3:0];
assign digits[1] = SW[7:4];
assign digits[2] = Q;
assign digits[3] = SW[15:12];
assign digits[4] = 0;
assign digits[5] = 0;
assign digits[6] = Qf[3:0];
assign digits[7] = Qf[7:4];


sev_seg_controller ssc(
    .clk(clk),
    .resetn(reset_n),
    .digits(digits),
    .Seg(Seg),
    .AN(AN)
);


assign CA = Seg[0];
assign CB = Seg[1];
assign CC = Seg[2];
assign CD = Seg[3];
assign CE = Seg[4];
assign CF = Seg[5];
assign CG = Seg[6];
assign DP = 1'b1; // turn off the dot point on seven segs


endmodule : sev_seg_top