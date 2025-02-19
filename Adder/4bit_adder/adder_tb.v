`timescale 1ns / 1ps

module adder_tb;
    reg [3:0] a, b;
    wire [4:0] sum;
    
    adder dut (
        .a(a),
        .b(b),
        .sum(sum)
    );
    
    initial begin
        a = 4'b0011; b = 4'b0101; #10; // 3 + 5 = 8
        a = 4'b1111; b = 4'b0001; #10; // 15 + 1 = 16
        a = 4'b1010; b = 4'b1010; #10; // 10 + 10 = 20
        $stop;
    end
endmodule

