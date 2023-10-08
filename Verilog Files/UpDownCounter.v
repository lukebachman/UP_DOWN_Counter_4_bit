`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2022 07:15:50 PM
// Design Name: 
// Module Name: updowncounter
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


module updowncounter(clk, reset, UP_DOWN, pause, Q);
input clk, reset, UP_DOWN, pause;
output [3:0] Q;
reg    [3:0] tmp;

    always @(posedge clk or posedge reset)
        begin
            if (reset)
                tmp = 4'b0000; 
            else if (pause)
                tmp = tmp;
            else
                if (UP_DOWN)
                    tmp = tmp + 1'b1;
                else
                    tmp = tmp - 1'b1;
     end
assign Q = tmp;
endmodule
