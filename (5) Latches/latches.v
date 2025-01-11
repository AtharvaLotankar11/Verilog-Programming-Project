`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2024 14:57:06
// Design Name: 
// Module Name: latches
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


module latches(
    input clk,
    input din,
    input reset,
    output reg dout
    );
    
    always @(clk or din or reset)
    begin
    if(!reset)
        dout = 1'b0;
    else if(clk)    
        dout = din;
    end 
endmodule
