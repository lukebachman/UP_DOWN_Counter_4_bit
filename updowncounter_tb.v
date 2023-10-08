`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2022 11:45:55 PM
// Design Name: 
// Module Name: updowncounter_tb
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


module updowncounter_tb();
    //inputs
    reg clk;
    reg reset;
    reg UP_DOWN;
    reg pause;
    
    //outputs
    wire [3:0] Q; 

    updowncounter UUT (.clk(clk), .reset(reset), .UP_DOWN(UP_DOWN), .pause(pause), .Q(Q));

    always 
    #10  clk = !clk; 
    
    initial // initial block executes only once
        begin
            clk = 0;
            reset = 1;
            UP_DOWN = 0;
            pause = 0;
            #10;
            reset = 0;
            #10;
            UP_DOWN = 1;
            #100
            UP_DOWN = 0;
            #50;
            pause = 1;
            #50;
            pause = 0;
            #50;
            UP_DOWN = 1;
            #100
            UP_DOWN = 0;
            #50;
            pause = 1;
            #50;
            pause = 0;
            #50;    
        end
endmodule