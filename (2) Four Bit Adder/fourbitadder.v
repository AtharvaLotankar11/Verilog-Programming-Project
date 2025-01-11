`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2024 21:43:05
// Design Name: 
// Module Name: fourbitadder
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


module fourbitadder(
    input [3:0] a,
    input [3:0] b,
    input c,
    output [3:0] sum, 
    output carry
    );
    /*[a:b] form is no of bits where begin bit is 
    from 0 */
    
    wire [2:0]cw;
    onebitfulladder dut1(a[0], b[0], c, sum[0], cw[0]);
    onebitfulladder dut2(a[1], b[1], cw[0], sum[1], cw[1]);
    onebitfulladder dut3(a[2], b[2], cw[1], sum[2], cw[2]);
    onebitfulladder dut4(a[3], b[3], cw[2], sum[3], carry);
endmodule
