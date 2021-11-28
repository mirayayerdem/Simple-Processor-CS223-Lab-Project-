`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2021 19:43:34
// Design Name: 
// Module Name: Instruction_Memory
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


module Instruction_Memory( input logic [2:0] rda, output logic [11:0] rdd);

        
        always_comb
        case ( rda )
        0: rdd = 12'b000_00_001_0011; //load rf[1} =  3
        1: rdd = 12'b000_00_000_0111; //load rf[0] = 7
        2: rdd = 12'b101_011_000_001; //rf[0] + rf[1] -> rf[3] = 10
        3: rdd = 12'b101_111_001_011; //rf[3] + rf[1] -> rf[7] = 13
        4: rdd = 12'b110_100_000_011; // rf[3] - rf[0] -> rf[4] = 3
        5: rdd = 12'b001_00_100_0101; //store d[5] = 3
        6: rdd = 12'b000_00_000_0101; //load rf[0] as d[5](3)
        7: rdd = 12'b101_111_001_000; //rf[7] = rf[0] + rf[1] = 6
        endcase
             
endmodule 
