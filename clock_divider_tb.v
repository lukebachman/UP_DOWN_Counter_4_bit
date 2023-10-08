`timescale 1ns / 1ps //time unit/time precision
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2022 12:12:20 PM
// Design Name: 
// Module Name: clock_divider_tb
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


module clock_divider_tb();

    //inputs
    reg clk;
    reg reset;
    
    //outputs
    wire sclk; 

    clock_divider UUT (.clk(clk), .reset(reset), .sclk(sclk));

//100Mhz Clock => f=1/T => 1/10ns = 100,000,000 = 100Mhz(clock rate)
parameter PERIOD = 10; //10ns
always #PERIOD clk=~clk;
    
    initial // initial block executes only once
        begin
            reset = 1;
            clk = 0;
            #10;
            reset = 0;
            #10;
        end
endmodule