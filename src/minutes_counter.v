`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2026 21:01:47
// Design Name: 
// Module Name: minutes_counter
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


module minutes_counter(rst,clk_1Hz,tick,min_tick,minutes);
    input rst,clk_1Hz,tick;
    output reg min_tick;
    output reg [5:0] minutes;
    always@(posedge clk_1Hz)
        begin
            if(rst)
            begin
                 min_tick <= 1'b0;
                 minutes <= 6'd0;
            end
        
            else
                begin
                    min_tick <= 1'b0;
                    if(tick == 1'b1)
                        begin
                            if(minutes == 6'd59)
                            begin
                                minutes <= 6'd0;
                                min_tick <= 1'b1;
                            end
                            else 
                                begin
                                minutes <= minutes + 1'b1;
                            end
                       end
                  end
            end
endmodule
