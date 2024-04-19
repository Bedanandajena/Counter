`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.01.2024 00:39:36
// Design Name: 
// Module Name: ring_counter
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


module ring_counter(clk,rst,count );
input clk,rst;
output reg[3:0]count;
always@(posedge clk)
begin
if(rst)
begin
count<=4'b0001;
end
else
begin
count<={count[2:0],count[3]};
end
end
endmodule
