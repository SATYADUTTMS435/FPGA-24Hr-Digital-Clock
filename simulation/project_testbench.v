`timescale 1ns/1ps

module tb_clock;

    // Testbench signals
    reg clk_1Hz;
    reg rst;

    wire tick;
    wire min_tick;
    wire [5:0] seconds;
    wire [5:0] minutes;
    wire [4:0] hours;

    // --------------------------------------------------
    // Clock generation (FAST clock for simulation)
    // --------------------------------------------------
    initial begin
        clk_1Hz = 0;
        forever #1 clk_1Hz = ~clk_1Hz;   // 2 ns period
    end

    // --------------------------------------------------
    // Reset sequence
    // --------------------------------------------------
    initial begin
        rst = 1;
        #20;
        rst = 0;
    end

    // --------------------------------------------------
    // DUT instantiations
    // --------------------------------------------------
    seconds_counter U1 (
        .rst(rst),
        .clk_1Hz(clk_1Hz),
        .tick(tick),
        .seconds(seconds)
    );

    minutes_counter U2 (
        .rst(rst),
        .clk_1Hz(clk_1Hz),
        .tick(tick),
        .min_tick(min_tick),
        .minutes(minutes)
    );

    hours_counter U3 (
        .rst(rst),
        .clk_1Hz(clk_1Hz),
        .min_tick(min_tick),
        .hours(hours)
    );

endmodule
