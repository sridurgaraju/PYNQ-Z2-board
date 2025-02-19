`timescale 1ns / 1ps

module led_blinker(
    input wire clk,        // 125MHz FPGA clock
    input wire rst,        // Active-high reset
    output reg led         // LED output
);

    // Parameter for clock division
    parameter DIV_FACTOR = 125000000; // 1Hz toggle rate (125MHz / 125M = 0.5Hz LED blink)
    
    reg [26:0] counter;  // 27-bit counter (log2(125M) ? 27 bits)
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            counter <= 0;
            led <= 0;
        end else if (counter >= (DIV_FACTOR - 1)) begin
            counter <= 0;
            led <= ~led; // Toggle LED
        end else begin
            counter <= counter + 1;
        end
    end
    
endmodule

