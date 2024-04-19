`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.01.2024 23:37:08
// Design Name: 
// Module Name: ring_test
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


module ring_test();
reg clk,rst;
wire [3:0]count;
ring_counter R1(clk,rst,count);
always  #20
clk= ~clk;

initial
begin
clk=0;rst=1;
#40;
clk=1;rst=0;
#40;
end



endmodule
