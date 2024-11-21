module decoder(
    input logic [1:0] i,
    output logic [3:0] y
    );
    
always@(*)
begin 
    case(i)
        2'b00: y= 4'b0001;
        2'b01: y= 4'b0010;
        2'b10: y= 4'b0100;
        
  default:  y = 4'bxxxx;
    endcase
end
endmodule
