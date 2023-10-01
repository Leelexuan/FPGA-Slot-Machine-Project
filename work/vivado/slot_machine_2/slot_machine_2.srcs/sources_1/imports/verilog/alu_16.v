/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module alu_16 (
    input [15:0] a,
    input [15:0] b,
    input [5:0] alufn_signal,
    output reg [15:0] out,
    output reg [2:0] zvn
  );
  
  
  
  wire [16-1:0] M_adder_out;
  wire [3-1:0] M_adder_zvn;
  reg [16-1:0] M_adder_a;
  reg [16-1:0] M_adder_b;
  reg [6-1:0] M_adder_alufn_signal;
  adder_30 adder (
    .a(M_adder_a),
    .b(M_adder_b),
    .alufn_signal(M_adder_alufn_signal),
    .out(M_adder_out),
    .zvn(M_adder_zvn)
  );
  
  wire [16-1:0] M_boolean_out;
  reg [16-1:0] M_boolean_a;
  reg [16-1:0] M_boolean_b;
  reg [6-1:0] M_boolean_alufn_signal;
  boolean_31 boolean (
    .a(M_boolean_a),
    .b(M_boolean_b),
    .alufn_signal(M_boolean_alufn_signal),
    .out(M_boolean_out)
  );
  
  wire [16-1:0] M_shifter_out;
  reg [16-1:0] M_shifter_a;
  reg [5-1:0] M_shifter_b;
  reg [6-1:0] M_shifter_alufn_signal;
  shifter_32 shifter (
    .a(M_shifter_a),
    .b(M_shifter_b),
    .alufn_signal(M_shifter_alufn_signal),
    .out(M_shifter_out)
  );
  
  wire [1-1:0] M_comparator_out;
  reg [3-1:0] M_comparator_zvn;
  reg [6-1:0] M_comparator_alufn_signal;
  comparator_33 comparator (
    .zvn(M_comparator_zvn),
    .alufn_signal(M_comparator_alufn_signal),
    .out(M_comparator_out)
  );
  
  wire [16-1:0] M_multiplier_out;
  reg [16-1:0] M_multiplier_a;
  reg [16-1:0] M_multiplier_b;
  multiplier_34 multiplier (
    .a(M_multiplier_a),
    .b(M_multiplier_b),
    .out(M_multiplier_out)
  );
  
  wire [16-1:0] M_modulus_out;
  reg [16-1:0] M_modulus_a;
  reg [16-1:0] M_modulus_b;
  modulus_24 modulus (
    .a(M_modulus_a),
    .b(M_modulus_b),
    .out(M_modulus_out)
  );
  
  wire [16-1:0] M_floor_division_out;
  reg [16-1:0] M_floor_division_a;
  reg [16-1:0] M_floor_division_b;
  floor_division_35 floor_division (
    .a(M_floor_division_a),
    .b(M_floor_division_b),
    .out(M_floor_division_out)
  );
  
  reg [2:0] zvn1;
  
  reg [15:0] out1;
  
  always @* begin
    M_adder_a = a;
    M_adder_b = b;
    M_adder_alufn_signal = alufn_signal;
    zvn = M_adder_zvn;
    zvn1 = M_adder_zvn;
    M_multiplier_a = a;
    M_multiplier_b = b;
    M_modulus_a = a;
    M_modulus_b = b;
    M_floor_division_a = a;
    M_floor_division_b = b;
    M_boolean_a = a;
    M_boolean_b = b;
    M_boolean_alufn_signal = alufn_signal;
    M_shifter_a = a;
    M_shifter_b = b;
    M_shifter_alufn_signal = alufn_signal;
    M_comparator_zvn = zvn1;
    M_comparator_alufn_signal = alufn_signal;
    
    case (alufn_signal[4+1-:2])
      2'h0: begin
        out1 = M_adder_out;
        zvn = M_adder_zvn;
        if (alufn_signal == 6'h08) begin
          out1 = M_modulus_out;
          zvn = 1'h0;
        end
        if (alufn_signal == 6'h0c) begin
          out1 = M_floor_division_out;
          zvn = 1'h0;
        end
      end
      2'h1: begin
        out1 = M_boolean_out;
        zvn = 1'h0;
      end
      2'h2: begin
        out1 = M_shifter_out;
        zvn = 1'h0;
      end
      2'h3: begin
        out1 = M_comparator_out;
        zvn = 1'h0;
      end
      default: begin
        out1 = 16'h0000;
        zvn = 1'h0;
      end
    endcase
    out = out1;
  end
endmodule