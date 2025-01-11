`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2024 22:09:13
// Design Name: 
// Module Name: onebitfulladder
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


module onebitfulladder(
    input a1,
    input b1,
    input c1,
    output sum,
    output carry
    );
    
    assign sum = a1^b1^c1;
    assign carry = (a1&b1) | (b1&c1) | (a1&c1);
endmodule
