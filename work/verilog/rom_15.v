/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module rom_15 (
    input [7:0] address_a,
    input [7:0] address_b,
    input [7:0] address_c,
    input [7:0] timer,
    input [7:0] scoreboard1,
    input [7:0] scoreboard2,
    output reg [15:0] led_light_a,
    output reg [15:0] led_light_b,
    output reg [15:0] led_light_c,
    output reg [15:0] timer_display,
    output reg [15:0] scoreboard1_display,
    output reg [15:0] scoreboard2_display,
    output reg [0:0] led_light_b_test,
    output reg [0:0] led_light_c_test
  );
  
  
  
  localparam TEST = 32'hff00ccaa;
  
  localparam SYMBOLS = 512'h80ff40d720a710f708e304c102e301ff80ff40db20811000088104c302e701ff80ff40f720e710c3088104f702ff01ff80ff408120fd10fb08f704ef02ef01ff;
  
  localparam NUMBERS = 1280'h80ff40c320bd10bd08c304fd02c301ff80ff40c320bd10bd08c304bd02c301ff80ff408120fd10fb08f704ef02ef01ff80ff40c320bf10bf08c304bd02c301ff80ff40c320bf10bf08c304fd02c301ff80ff40f320eb10db088104fb02fb01ff80ff40c720fd10fd08e304fd02c301ff80ff40c320fd10fd08f704ef02c101ff80ff40fd20fd10fd08fd04fd02fd01ff80ff40e320dd10dd08dd04dd02e301ff;
  
  always @* begin
    led_light_a = SYMBOLS[(address_a)*16+15-:16];
    led_light_b = SYMBOLS[(address_b)*16+15-:16];
    led_light_c = SYMBOLS[(address_c)*16+15-:16];
    timer_display = NUMBERS[(timer)*16+15-:16];
    scoreboard1_display = NUMBERS[(scoreboard1)*16+15-:16];
    scoreboard2_display = NUMBERS[(scoreboard2)*16+15-:16];
    led_light_b_test = TEST[(address_b)*1+0-:1];
    led_light_c_test = TEST[(address_c)*1+0-:1];
  end
endmodule