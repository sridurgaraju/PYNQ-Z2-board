`timescale 1ns / 1ps

module ledcontroller(
    input [3:0] BTN,
    output [3:0] LD
    );
    assign LD = BTN;
endmodule
