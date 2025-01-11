`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2024 21:28:27
// Design Name: 
// Module Name: logicGates_tb
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


module logicGates_tb(

    );
    reg a, b;
    wire c, d, e, f, g, h;
    
    //function call
    logicGates dut(a,b,c,d,e,f,g,h);
    
    initial begin
    a = 1'b0; //1 bit with value 0;
    b = 1'b0; 
    end
    
    //clock synchronise
    always #5 a = ~a;
    always #10 b = ~b;
endmodule
