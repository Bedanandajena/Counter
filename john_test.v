`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.01.2024 00:23:46
// Design Name: 
// Module Name: john_test
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


module john_test( );
reg clk,clr;
wire [3:0]count;
John_counter j1(clk,clr,count);
always #20 clk=~clk;
initial
begin
clk=0;clr=0;#50;
clr=1;#50;
end

endmodule
