`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2023 03:44:53 PM
// Design Name: 
// Module Name: pwm_tb
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
module pwm_tb();
    reg [7:0] A = 45;
    reg [7:0] B = 85;
    reg [7:0] C = 128;
    wire U, V, W;
    reg clk = 0;

    pwm DUT(.dutyA(A), .dutyB(B), .dutyC(C), .U(U), .V(V), .W(W), .clk(clk));

    always #1 clk = ~clk;  // 1 ns high, 1 ns low => 2 ns period

endmodule