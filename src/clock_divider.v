`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2026 20:57:16
// Design Name: 
// Module Name: clock_divider
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


module clock_divider( rst,clk,clk_1Hz);
    input clk,rst;
    output wire clk_1Hz;
    reg [26:0]count;
    always@(posedge clk)
    begin
        if(rst) 
        count <= 0;
        else
         count <= count + 1'b1;
         end
         assign clk_1Hz = count[26];
endmodule
