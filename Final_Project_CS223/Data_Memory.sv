`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2021 19:41:10
// Design Name: 
// Module Name: Data_memory
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


module Data_Memory(input logic  D_rd , D_wr , clk , reset , input logic [3:0] D_addr , W_data , output logic [3:0] R_data); 
   
    logic [3:0] data_mem [15:0];
    
    always_ff @(posedge clk or posedge reset)
    
    begin
        if (reset)
        begin
          R_data <= 0;
          data_mem[0]  <=  4'h0;
          data_mem[1]  <=  4'h1;
          data_mem[2]  <=  4'h2;
          data_mem[3]  <=  4'h3;
          data_mem[4]  <=  4'h4;
          data_mem[5]  <=  4'h5;
          data_mem[6]  <=  4'h6;
          data_mem[7]  <=  4'h7;
          data_mem[8]  <=  4'h8;
          data_mem[9]  <=  4'h9;
          data_mem[10] <=  4'hA;
          data_mem[11] <=  4'hB;
          data_mem[12] <=  4'hC;
          data_mem[13] <=  4'hD;
          data_mem[14] <=  4'hE;
          data_mem[15] <=  4'hF;
        end
        
        else
        begin
           if (D_rd)
                R_data  <=  data_mem[D_addr];
                
           else if (D_wr)
                data_mem [D_addr]  <=  W_data;
                
        end
    end
     
    
endmodule
