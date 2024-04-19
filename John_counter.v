`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.01.2024 00:16:27
// Design Name: 
// Module Name: John_counter
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


module John_counter(clk,clr,count );
input clr,clk;
output reg[3:0]count;
always@(posedge clk)
begin
if(clr)
begin
count<=4'b0000;
end
else
begin
count<={count[2:0], ~count[3]};
end
end

endmodule
