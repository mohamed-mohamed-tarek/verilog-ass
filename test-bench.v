
 `timescale 1ns / 1ps  

module tb_alu;
//Inputs
 reg[7:0] A,B;
  reg[2:0] ALU_Sel;

//Outputs
 wire[7:0] ALU_Out;
 wire CarryOut;
 // Verilog code for ALU
 integer i;
 alu test_unit(
            A,B,  // ALU 8-bit Inputs                 
            ALU_Sel,// ALU Selection
            ALU_Out, // ALU 8-bit Output
            CarryOut, // Carry Out Flag
            zeroFlag
     );
    initial begin
      A = 8'h04;
      B = 8'h02;
      
    ALU_Sel = 3'b000;
   $monitor("out = %d  - carry = %d  - Zero Flag %d",ALU_Out,CarryOut,zeroFlag);
      #10;
     ALU_Sel = 3'b001;
   $monitor("out = %d  - carry = %d  - Zero Flag %d",ALU_Out,CarryOut,zeroFlag);
      #10;
         ALU_Sel = 3'b010;
   $monitor("out = %d  - carry = %d  - Zero Flag %d",ALU_Out,CarryOut,zeroFlag);
      #10;
         ALU_Sel = 3'b011;
   $monitor("out = %d  - carry = %d  - Zero Flag %d",ALU_Out,CarryOut,zeroFlag);
      #10;
         ALU_Sel = 3'b100;
   $monitor("out = %d  - carry = %d  - Zero Flag %d",ALU_Out,CarryOut,zeroFlag);
      #10;
         ALU_Sel = 3'b101;
   $monitor("out = %d  - carry = %d  - Zero Flag %d",ALU_Out,CarryOut,zeroFlag);
      #10;
    ALU_Sel = 3'b111;
   $monitor("out = %d  - carry = %d  - Zero Flag %d",ALU_Out,CarryOut,zeroFlag);
      #10;
       
      
       
     
      
    end
endmodule