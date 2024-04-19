`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2024 19:49:08
// Design Name: 
// Module Name: async_test
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


module async_test( );
reg clk,clr;
wire [3:0]count;
async_counter f1(clk,clr,count);
always #15 clk=~clk;
initial
begin
clk=0;clr=0; #40;
clk=0;clr=1; #150;
end


endmodule
