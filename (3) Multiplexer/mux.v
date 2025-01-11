`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2024 22:53:41
// Design Name: 
// Module Name: mux
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


module mux(
    input a,
    input b,
    input c,
    input d,
    input [1:0] select, //2 bit
    output reg dout
    );
    
    always @(a,b,c,d,select[1:0])
    case (select)
    2'b00:dout=a;
    2'b01:dout=b;
    2'b10:dout=c;
    2'b11:dout=d;
    endcase
    /*This Verilog code implements a 4-to-1 multiplexer. 
    It selects one of four input signals (a,b,c,d) 
    based on the value of the 2-bit select signal 
    (select[1:0]). The selected input is assigned 
    to the output signal (dout).*/
endmodule
