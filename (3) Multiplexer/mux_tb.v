`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2024 23:00:58
// Design Name: 
// Module Name: mux_tb
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


module mux_tb(
    );
    reg a,b,c,d;
    reg [1:0] select;
    wire dout;
    
    mux dut(a,b,c,d,select,dout);
    
    initial begin
    a = 1'b0;
    b = 1'b0;
    c = 1'b0;
    d = 1'b0;
    select = 2'b00;
    #100; //delay
    end
    
    always #5 a=~a;
    always #15 b=~b;
    always #40 c=~c;
    always #60 d=~d;
    always #90 select = ~select;
endmodule
