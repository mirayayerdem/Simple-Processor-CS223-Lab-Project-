`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2021 19:38:19
// Design Name: 
// Module Name: RF
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

module Register_File(input logic  clk ,  wr_en , reset , input logic [2:0] rda1 , rda2 , wra , input logic  [3:0] wrd , output logic [3:0] rdd1 , rdd2);
    
    logic cntr_load;
    logic [3:0] data [7:0];
   
    
    
    
    always_ff @( posedge clk or posedge reset )
    
    begin
        if ( reset )
        begin
          data[0]  <= 0;
          data[1]  <= 0;
          data[2]  <= 0;
          data[3]  <= 0;
          data[4]  <= 0;
          data[5]  <= 0;
          data[6]  <= 0;
          data[7]  <= 0;
          cntr_load <= 0;
        end
        
        else
        begin
            if (wr_en)
                data[wra]  <=  wrd;
                
            rdd1  <=  data[rda1];
            
            rdd2  <=  data[rda2]; 
        end
        
    end
    
endmodule
