`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2023 03:17:01 PM
// Design Name: 
// Module Name: pwm
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
// pwm module
module pwm(
    input [7:0] dutyA,
    input [7:0] dutyB,
    input [7:0] dutyC,
    output reg U = 0,
    output reg V = 0,
    output reg W = 0,
    input clk
);

    integer counter = -128;
    
    always @(posedge clk) begin
        counter <= counter + 1;
        if (counter >= 127) begin
            counter <= -128;
        end
        U <= (counter >= ($signed({8'b0,dutyA})/-2) && counter < ($signed({8'b0,dutyA})/2)) ? 1 : 0;
        V <= (counter >= ($signed({8'b0,dutyB})/-2) && counter < ($signed({8'b0,dutyB})/2)) ? 1 : 0;
        W <= (counter >= ($signed({8'b0,dutyC})/-2) && counter < ($signed({8'b0,dutyC})/2)) ? 1 : 0;
    
        
        // Debug messages
        $display("Time: %t, Counter: %d, U: %b, V: %b, W: %b: dutyA: %d: dutyB: %d :dutyC: %d", $time, counter, U, V, W,dutyA,dutyB,dutyC);
    end
endmodule
