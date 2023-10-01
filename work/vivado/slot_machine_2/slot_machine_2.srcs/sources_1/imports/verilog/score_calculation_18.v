/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module score_calculation_18 (
    input [15:0] output_a,
    input [15:0] output_b,
    input [15:0] output_c,
    output reg [3:0] output_screen_1,
    output reg [3:0] output_screen_2,
    output reg [7:0] debug
  );
  
  
  
  reg [1:0] seven_count;
  
  always @* begin
    output_screen_1 = 1'h0;
    output_screen_2 = 1'h0;
    seven_count = 1'h0;
    debug = 1'h0;
    if (output_a == 16'h0000) begin
      seven_count = seven_count + 1'h1;
    end else begin
      seven_count = seven_count + 1'h0;
    end
    if (output_b == 16'h0000) begin
      seven_count = seven_count + 1'h1;
    end else begin
      seven_count = seven_count + 1'h0;
    end
    if (output_c == 16'h0000) begin
      seven_count = seven_count + 1'h1;
    end else begin
      seven_count = seven_count + 1'h0;
    end
    
    case (seven_count)
      2'h0: begin
        output_screen_1 = 1'h0;
        output_screen_2 = 1'h0;
        debug = 4'h0;
      end
      2'h1: begin
        output_screen_1 = 1'h0;
        output_screen_2 = 1'h1;
        debug = 4'h1;
      end
      2'h2: begin
        output_screen_1 = 1'h0;
        output_screen_2 = 4'h4;
        debug = 4'h4;
      end
      2'h3: begin
        output_screen_1 = 4'h2;
        output_screen_2 = 1'h0;
        debug = 8'h20;
      end
      default: begin
        output_screen_1 = 1'h0;
        output_screen_2 = 1'h0;
        debug = 4'h0;
      end
    endcase
  end
endmodule