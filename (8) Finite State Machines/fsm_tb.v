`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2024 21:49:07
// Design Name: 
// Module Name: fsm_tb
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


module fsm_tb(
    );
    reg clk, reset, sequence;
    wire detector_out;
    
    fsm dut(clk, reset, sequence, detector_out);
    
    initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
    end
    
    initial begin
    sequence=1'b0;
    reset=1'b1;
    #30; //delay1
    reset=1'b0;
    #40; //delay2
    sequence=1'b0;
    #10; //delay3
    sequence=1'b0;
    #10; //delay4
    sequence=1'b1;
    #20; //delay5
    sequence=1'b0;
    #20; //delay6
    sequence=1'b1;
    #20; //delay7
    sequence=1'b1;
    end
endmodule
