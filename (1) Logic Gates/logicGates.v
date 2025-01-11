`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VESIT - Electronics
// Student: Atharva Lotankar
// 
// Create Date: 07.12.2024 21:11:46
// Module Name: logicGates
// Project Name: Logic Gates Implementation
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module logicGates(
    input a,
    input b,
    output c,
    output d,
    output e,
    output f,
    output g,
    output h
    );
    
    //c = AND;  d = OR;   e = NOT
    //f = NAND; g = NOR;  h = XOR gate
    
    assign c = a&b;
    assign d = a|b;
    assign e = ~a;
    assign f = ~(a&b);
    assign g = ~(a|b);
    assign h = a^b;
endmodule
