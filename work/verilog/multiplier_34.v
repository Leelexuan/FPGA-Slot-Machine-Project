/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module multiplier_34 (
    input [15:0] a,
    input [15:0] b,
    output reg [15:0] out
  );
  
  
  
  always @* begin
    out = $signed(a) * $signed(b);
  end
endmodule
