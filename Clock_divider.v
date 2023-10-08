module clock_divider(

input clk,
input reset,
output reg sclk
);
localparam constantNumber = 50000000;

reg [31:0] count;
 
always @ (posedge(clk), posedge(reset))
begin
    if (reset == 1'b1)
        count <= 32'b0;
    else if (count == constantNumber - 1)
        count <= 32'b0;
    else
        count <= count + 1;
end

always @ (posedge(clk), posedge(reset))
begin
    if (reset == 1'b1)
        sclk <= 1'b0;
    else if (count == constantNumber - 1)
        sclk <= ~sclk;
    else
        sclk <= sclk;
end
endmodule