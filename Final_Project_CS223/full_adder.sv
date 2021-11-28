`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2021 19:39:38
// Design Name: 
// Module Name: fulladder
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


module full_adder( input logic a ,  b ,  cin ,  output logic  sum ,  cout );


    assign sum = a ^ b ^ cin;
    
    assign cout = (a & cin)|(b & cin)|(a & b) ;
    
    
endmodule
