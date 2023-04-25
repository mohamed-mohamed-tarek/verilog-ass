
module alu(
           input [7:0] A,B,  // ALU 8-bit Inputs                 
  input [2:0] ALU_Sel,// ALU Selection
           output [7:0] ALU_Out, // ALU 8-bit Output
           output CarryOut, // Carry Out Flag
           output zeroFlag
    );
    reg [7:0] ALU_Result;
    wire [8:0] tmp;
    assign ALU_Out = ALU_Result; // ALU out
    assign tmp = {1'b0,A} + {1'b0,B};
    assign CarryOut = tmp[8]; // Carryout flag
  assign zeroFlag = (ALU_Result==0`h00)  ? 1'b1  : 1'b0;
    always @(*)
    begin
        case(ALU_Sel)
        3'b000: // Addition
           ALU_Result = A + B ; 
         3'b001: // sub
           ALU_Result = A - B ;
          
           3'b010: // and
           ALU_Result = A & B ;
           3'b011: // or
           ALU_Result = A | B ;
           3'b100: // x-or
           ALU_Result = A ^ B ;
         3'b101: // >
           ALU_Result = A > B ;
           3'b110: // <<
           ALU_Result = A <<1 ;
           3'b111: // <<
           ALU_Result = B<<1 ;
          default: ALU_Result = A + B ; 
        endcase
    end

endmodule
