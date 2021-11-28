`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2021 19:44:01
// Design Name: 
// Module Name: IR
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


module IR(input logic clk, ld, reset, switch_en, input logic [11:0] in1, in0,  output logic [11:0] result);

    always_ff @(posedge clk or posedge reset)
      if (reset)
        begin
        result <= 0;
        end
      else
         begin
         if (ld)
         begin
         case (switch_en)
         0: result <= in0;
         1: result <=  in1;
         endcase
         end
      end
      
endmodule
