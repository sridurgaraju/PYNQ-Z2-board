`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2024 02:01:53 PM
// Design Name: 
// Module Name: binary_to_bcd
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


module binary_to_bcd (
    input [4:0] binary,  // 5-bit binary input
    output reg [3:0] tens, // Tens digit (BCD)
    output reg [3:0] ones  // Ones digit (BCD)
);
    always @(*) begin
        tens = binary / 10;  // Integer division for tens place
        ones = binary % 10;  // Remainder for ones place
    end
endmodule

