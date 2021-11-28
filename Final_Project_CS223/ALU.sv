`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2021 19:39:03
// Design Name: 
// Module Name: ALU
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


module ALU( input logic [3:0] in1,  in2,  input logic [1:0]  select,  output logic [3:0]  Rel );
     
    logic [3:0] sum;
    logic [3:0]  sum2;
    logic [3:0]  cout;
    logic [3:0]  cout2;
    
    full_adder addbit0( in1[0],  in2[0],  0, sum[0],  cout[0] );
    full_adder addbit1( in1[1],  in2[1],  cout[0],  sum[1],  cout[1] );
    full_adder addbit2( in1[2],  in2[2],  cout[1],  sum[2],  cout[2] );
    full_adder addbit3( in1[3],  in2[3],  cout[2],  sum[3],  cout[3] );
        
    full_adder subtractbit0( in1[0],  ~in2[0],  1,  sum2[0],  cout2[0] );
    full_adder subtractbit1( in1[1],  ~in2[1],  cout2[0],  sum2[1],  cout2[1] );
    full_adder subtractbit2( in1[2],  ~in2[2],  cout2[1],  sum2[2],  cout2[2] );
    full_adder subtractbit3( in1[3],  ~in2[3],  cout2[2],  sum2[3],  cout2[3] );
    

    always_comb
        begin
            case( select )
            0: Rel = 0;
            1: Rel = sum;
            2: Rel = sum2;
            3: Rel = 0;
            endcase
        end
endmodule
