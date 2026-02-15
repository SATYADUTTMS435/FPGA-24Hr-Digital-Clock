`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2026 19:49:56
// Design Name: 
// Module Name: seconds_counter
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


module seconds_counter(rst,tick,clk_1Hz,seconds);
    input rst,clk_1Hz;
    output reg [5:0] seconds;
    output reg tick;
    always@(posedge clk_1Hz)
    begin
    if(rst)
       begin
         seconds <= 0;
         tick <= 1'b0;
       end
    else 
        begin
         tick <= 1'b0;
        if(seconds == 6'd59)
            begin
                tick <=  1'b1;
                seconds <= 6'd0;
            end
        else 
            begin
                seconds <= seconds + 1'b1;
            end
         end
    end
endmodule
