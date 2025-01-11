`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2024 22:17:08
// Design Name: 
// Module Name: fourbitadder_tb
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


module fourbitadder_tb(

    );
    reg [3:0]a;
    reg [3:0]b;
    reg c;
    wire [3:0]sum;
    wire carry;
    
    fourbitadder dut(a,b,c,sum,carry);
    
    initial begin
    a = 4'b0;
    b = 4'b0;
    c = 1'b0;
    #100;    //delay;
    end
    
    always #5 c = ~c;
    always #10 a = ~a;
    always #160 b = ~b;
endmodule
