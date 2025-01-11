`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2024 23:25:55
// Design Name: 
// Module Name: flipflop
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


module flipflop(
    input clk,
    input reset,
    input en,
    input din,
    output reg dout
    );
    
    always @(posedge clk or negedge reset)
    begin
    if(!reset)
        dout = 1'b0;
    else if(en)    
        dout = din;
    end 
    /*The circuit resets to 0 when the reset signal is 
    active.
    
    When the reset is inactive and the enable signal is 
    high, the input data is captured and stored in the 
    output on the rising edge of the clock.
    
    The output remains unchanged until the next positive 
    clock edge or the next reset.*/  
endmodule
