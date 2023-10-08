`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2022 07:27:39 PM
// Design Name: 
// Module Name: top_level_module
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_level_module(
input clk, rst, UP_DOWN, pause,
output [6:0] Seven_segment_out
);

wire w2; //clk_slow
wire [3:0] w3; //count

clock_divider cd (.clk (clk), .reset (rst), .sclk (w2));
updowncounter udc (.clk (w2), .reset (rst), .UP_DOWN (UP_DOWN), .pause(pause), .Q (w3));
seven_segment_decoder ssd (.bin_in (w3), .hex_out (Seven_segment_out));

endmodule
