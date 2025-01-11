`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2024 15:51:23
// Design Name: 
// Module Name: siso_shift_register_tb
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


module siso_shift_register_tb(
    );
    reg clk, reset, serial_in;
    wire serial_out;
    parameter width = 4;
    
    siso_shift_register uut(
        .clk(clk),
        .reset(reset),
        .serial_in(serial_in),
        .serial_out(serial_out)
    );
    
    always #5 clk = ~clk;
    
    initial begin
        clk = 0;
        reset = 1;
        serial_in = 0;
        
        #10 reset = 0;
        #10 serial_in = 1;
        #10 serial_in = 0;
        #10 serial_in = 1;
        #10 serial_in = 1;
        
        #50; //delay
        $finish; 
    end
    initial begin
        $monitor("Time: %0d, Reset: %b, Serial_in: %b, Serial_out: %b", $time, reset, serial_in, serial_out);
    end
endmodule
