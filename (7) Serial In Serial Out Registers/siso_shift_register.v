`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2024 15:40:04
// Design Name: 
// Module Name: siso_shift_register
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


module siso_shift_register(
        input clk, reset, serial_in,
        output reg serial_out
    );
    parameter width=4; //const
    reg [width-1:0]shift_reg;
    always @(posedge clk or posedge reset)
    begin
    if(reset) begin
        shift_reg <= 0;
        serial_out <= 0;
     end else begin
        shift_reg <= {shift_reg[width-2:0],serial_in};
        serial_out <= shift_reg[width-1];
      end   
    end
    /*This Verilog code implements a 4-bit SISO shift 
    register. It declares a 4-bit register to store the 
    shifted data. On the positive edge of the clock or 
    reset, the register is cleared if reset is active. 
    Otherwise, the data is shifted one bit to the right, 
    and the new input bit is shifted into the leftmost bit.
    The rightmost bit of the register is assigned to the 
    serial output.*/
endmodule
