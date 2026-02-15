`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2026 22:58:12
// Design Name: 
// Module Name: hours_counter
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


module hours_counter(rst,clk_1Hz,min_tick,hours);
    input rst,clk_1Hz,min_tick;
    output reg [4:0] hours;
    always@(posedge clk_1Hz)
    begin
        if(rst)
        begin
            hours <= 5'd0;
        end
        else
        begin
            if(min_tick == 1'b1)
              begin
                if(hours == 5'd23)
                begin
                    hours <= 5'd0;
                end
                else
                begin
                hours <= hours + 1'b1;
                end
              end
        end
    end
endmodule
