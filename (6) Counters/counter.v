`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2024 15:19:59
// Design Name: 
// Module Name: counter
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


module counter(
    input clk,
    input updown,
    input reset,
    output reg [3:0] count
    );
    always @(posedge clk or posedge reset)
    begin
    if(reset)
        count <= 4'b0000;
    else if(updown)
        count <= count+1;
    end        
endmodule
