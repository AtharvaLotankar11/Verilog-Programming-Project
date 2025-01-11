`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2024 21:32:56
// Design Name: 
// Module Name: fsm
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


module fsm(
        input clk, reset, sequence,
        output reg detector_out
    );
    parameter zero=3'b000, one=3'b001, onezero=3'b011, onezeroone=3'b010, onezerooneone=3'b110;
    reg[2:0] current_state, next_state;
    always@(posedge clk, posedge reset)
    begin
    if(reset==1)
        current_state <= zero;
    else
        current_state <= next_state;
    end
    always@(current_state, sequence)
    begin
    case(current_state)
    zero: begin
          if(sequence==1)
          next_state = one;
          else
          next_state=zero;
          end
     one: begin
          if(sequence==0)
          next_state=zero;
          else
          next_state=onezeroone;
          end             
     onezeroone: begin
                 if(sequence==0)
                 next_state=onezero;
                 else
                 next_state=onezerooneone;
                 end
     onezerooneone: begin
                    if(sequence==0)
                    next_state=onezero;
                    else
                    next_state=one;
                    end
      default: next_state=zero;
      endcase
      end
      always@(current_state)
      begin
      case(current_state)
        zero: detector_out=0;
        one:  detector_out=0;
        onezero:  detector_out=0;
        onezeroone:  detector_out=0;
        onezerooneone: detector_out=1;
        default: detector_out=0;
      endcase
      end                                
endmodule
