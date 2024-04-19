`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2024 10:40:33
// Design Name: 
// Module Name: sync_test
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


module sync_test();
reg clk,rst,up;
wire [3:0]count;
sync_counter s1(clk,rst,up,count);
always #15 clk=~clk;
initial
begin
clk=0;rst=1;up=0; #50;
clk=0;rst=1;up=1; #50;

clk=1;rst=0;up=0; #600;
clk=1;rst=0;up=1; #600;


end



endmodule
