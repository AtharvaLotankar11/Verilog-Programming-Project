`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2024 15:24:33
// Design Name: 
// Module Name: counter_tb
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


module counter_tb(

    );
    reg clk, updown, reset;
    wire [3:0] count;
    
    counter dut(clk, updown, reset, count);
    
    initial begin
    clk=0;
    updown=0;
    reset=1;
    #100; //delay
    reset=0;
    end
    
    always #5 clk=~clk;
    always #17 updown=~updown;
endmodule
