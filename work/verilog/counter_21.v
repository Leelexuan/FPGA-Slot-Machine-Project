/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     SIZE = 6
     DIV = 26
     TOP = 32
     UP = 1
*/
module counter_21 (
    input clk,
    input rst,
    output reg [5:0] value
  );
  
  localparam SIZE = 3'h6;
  localparam DIV = 5'h1a;
  localparam TOP = 6'h20;
  localparam UP = 1'h1;
  
  
  reg [31:0] M_ctr_d, M_ctr_q = 1'h0;
  
  localparam MAX_VALUE = 32'h83ffffff;
  
  always @* begin
    M_ctr_d = M_ctr_q;
    
    value = M_ctr_q[26+5-:6];
    if (1'h1) begin
      M_ctr_d = M_ctr_q + 1'h1;
      if (1'h1 && M_ctr_q == 32'h83ffffff) begin
        M_ctr_d = 1'h0;
      end
    end else begin
      M_ctr_d = M_ctr_q - 1'h1;
      if (1'h1 && M_ctr_q == 1'h0) begin
        M_ctr_d = 32'h83ffffff;
      end
    end
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_ctr_q <= 1'h0;
    end else begin
      M_ctr_q <= M_ctr_d;
    end
  end
  
endmodule
