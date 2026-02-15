`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2026 22:46:58
// Design Name: 
// Module Name: Top
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


module Top( clk, rst );
    input clk,rst;
    wire clk_1Hz,tick,min_tick;
    wire [5:0] seconds;
    wire [5:0] minutes;
    wire [4:0] hours;
    // IP Catalog for ILA
    ila_0 control(
	.clk(clk_1Hz), // input wire clk


	.probe0(seconds), // input wire [5:0]  probe0  
	.probe1(minutes), // input wire [5:0]  probe1 
	.probe2(hours) // input wire [4:0]  probe2 
	);
	
    clock_divider clk1(rst,clk,clk_1Hz);
    seconds_counter ctr1(rst,tick,clk_1Hz,seconds);
    minutes_counter ctr2(rst,clk_1Hz,tick,min_tick,minutes);
    hours_counter ctr3(rst,clk_1Hz,min_tick,hours);
endmodule
