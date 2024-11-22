module ROM(
    input logic [3:0] addr,
    output logic [7:0] ins
    );
    
    always@(*)
    begin
    
    case(addr)        //J,C,D1,D0,Sreg,imm[2:0]
    4'b0000: ins <= 8'b00001100; //RA = 4
    4'b0001: ins <= 8'b00011001; //RB = 1
    4'b0010: ins <= 8'b00100000; //R0 = RA
    4'b0011: ins <= 8'b00000100; //RA = RA - RB
    4'b0100: ins <= 8'b00110000; //JZ = 0
    4'b0101: ins <= 8'b10110010; //J = 2
    
    
    default: ins = 8'bxxxxxxxx;
    endcase
    end
    
endmodule
