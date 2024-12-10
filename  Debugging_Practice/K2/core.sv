module core (
    input logic clk,
    input logic resetn
);

  // Instruction Fetching
  logic [2:0] imm;
  logic [3:0] pc;

  // jump logic 
  logic pc_load = J | (C & dffo);

  counter_n_bit pc_inst (
      .clk(clk),
      .resetn(resetn),
      .load_data({'b0, imm}),
      .load(pc_load),
      .en(1'b1),
      .count(pc)
  );


  // Instruction memory
  logic [7:0] inst;
  imem imem_inst (
      .addr(pc),
      .inst(inst)
  );

  // Decoding instruction 
  logic J;
  logic C;
  logic [1:0] D;
  logic Sreg;
  logic S;

  assign J    = inst[7];
  assign C    = inst[6];
  assign D    = inst[5];
  assign Sreg = inst[4];
  assign S    = inst[3];
  assign imm  = inst[2:0];


  // Generating enables for register O, A and B
  logic enA, enB, enO;
  decoder decoder_inst (
      .in (D),
      .out({enA, enB, enO})
  );

  // registers 
  logic [3:0] regIn;
  logic [3:0] regA, regB, regO;

  logic AluOut;

  // Mux for selecting inputs for register (regIn)
  mux2x1 mux1 (
      .in1(AluOut),
      .in2({'b0, imm}),
      .sel(Sreg),
      .out(regIn)
  );

  // Register RA (regA)
  register reg_A (
      .clk(clk),
      .resetn(resetn),
      .wen(enA),
      .D({'b0,regIn}),
      .Q(regA)
  );

  // Register RB (regB)
  register reg_B (
      .clk(clk),
      .resetn(resetn),
      .wen(enB),
      .D({'b0,regIn}),
      .Q(regB)
  );

  // Register RO (regO)
  register reg_O (
      .clk(clk),
      .resetn(resetn),
      .wen(enO),
      .D(regA),
      .Q(regO)
  );

  // ALU
  logic carry;

  alu alu_inst (
      .clk(coreclk),
      .opcode(S),
      .a(regA),
      .b(regB),
      .out(AluOut),
      .carry(carry)
  );
  logic dffo;
  always @(posedge clk or negedge resetn) begin
    if (~resetn) dffo <= 0;
    else dffo <= carry;


  end

endmodule : core