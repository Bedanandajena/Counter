`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2024 10:34:02
// Design Name: 
// Module Name: sync_counter
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


module sync_counter(clk,rst,up,count );
input clk,rst,up;
output reg [3:0]count;
always@(posedge clk)
begin
if(rst)
begin
count<=0;
end
else
if(up)
begin
count<=count+1;
end
else
begin
count<=count-1;
end
end

endmodule
