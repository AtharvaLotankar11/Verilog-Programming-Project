`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2024 15:03:20
// Design Name: 
// Module Name: latches_tb
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


module latches_tb(

    );
    reg clk, din, reset;
    wire dout;
    
    latches dut(clk, din, reset, dout);
    
    initial begin
    clk=0;
    din=0;
    reset=0;
    #100; //delay
    reset=1;
    end
    
    always #5 clk=~clk;
    always #25 din=~din;
endmodule
