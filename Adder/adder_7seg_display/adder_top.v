`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2024 02:05:56 PM
// Design Name: 
// Module Name: adder_top
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


module adder_top (
    input [3:0] a,         // Input A
    input [3:0] b,         // Input B
    output [6:0] seg_tens, // Seven-segment outputs for tens digit
    output [6:0] seg_ones  // Seven-segment outputs for ones digit
);
    wire [4:0] sum;        // 5-bit sum from adder
    wire [3:0] tens, ones; // BCD digits

    // Instantiate the adder
    adder u_adder (
        .a(a),
        .b(b),
        .sum(sum)
    );

    // Instantiate the binary-to-BCD converter
    binary_to_bcd u_bcd (
        .binary(sum),
        .tens(tens),
        .ones(ones)
    );

    // Instantiate the seven-segment decoders
    seven_segment_decoder u_decoder_tens (
        .digit(tens),
        .seg(seg_tens)
    );

    seven_segment_decoder u_decoder_ones (
        .digit(ones),
        .seg(seg_ones)
    );
endmodule
