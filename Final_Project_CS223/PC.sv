`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2021 19:42:53
// Design Name: 
// Module Name: PC
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


module PC(input logic clk , ld , reset , output logic [2:0] result);
    
    always_ff @( posedge clk , posedge reset )
    if ( reset )
    begin
        result  <= 0;
    end      
    else if ( ld )
    begin
        result  <=  result + 1;
    end
        
endmodule