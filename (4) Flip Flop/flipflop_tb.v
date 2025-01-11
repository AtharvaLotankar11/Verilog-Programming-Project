`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2024 23:34:09
// Design Name: 
// Module Name: flipflop_tb
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


module flipflop_tb(
    );
    reg clk, reset, en, din;
    wire dout;
    
    flipflop dut(clk, reset, en, din, dout);
    
    initial begin
    clk = 0;
    reset = 0;
    en = 0;
    din = 0;
    #100; //delay
    end
    
    always #5 clk=~clk;
    always #17 en=~en;
    always #23 din=~din;
endmodule
