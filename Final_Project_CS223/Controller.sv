`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2021 19:44:34
// Design Name: 
// Module Name: Controller
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


module Controller_sp(input logic switch_Enable , clk , reset , debouncer_left_btn , debouncer_right_btn , input logic [11:0] instructions, 
output logic D_rd , D_wr , isExternal,
output logic [1:0] ALUSel , 
output logic wr_en , 
output logic [3:0] D_addr , 
output logic [2:0] RF_addr1 , RF_addr2 , RF_waddr );

    logic cntr_load;


    always_ff @( posedge clk, posedge reset )
    if ( reset )
    begin
        ALUSel <= 0;
        D_rd <= 0;
        D_wr <= 0;
        isExternal <= 0; 
        wr_en <= 0; 
        D_addr <= 0;
        RF_addr1 <= 0;
        RF_addr2 <= 0;
        RF_waddr <= 0;
        cntr_load <= 0;   
    end
    
    else 
    begin
        if((debouncer_right_btn & switch_Enable) | (debouncer_left_btn & ~switch_Enable))
        begin           
            case( instructions[11:9] )
            
            3'b000:
            begin    
                       
                isExternal <= 1;
                D_rd <=  1;
                D_wr <=  0;
                wr_en <=  1;
                ALUSel <= 0;
                RF_waddr <= instructions[6:4];
                D_addr <=  instructions[3:0];
                
                case ( cntr_load )
                0:
                begin
                cntr_load <= 1;
                RF_addr1  <= instructions[6:4];
                end
                1:
                begin
                cntr_load <= 0;
                RF_addr2  <= instructions[6:4];
                end
                endcase                 
            end
            
            3'b001:
            begin       
                cntr_load <= 1;      
                isExternal <= 0;   
                D_rd <= 0;
                D_wr <= 1;
                ALUSel <= 0;
                wr_en <= 0; 
                D_addr <= instructions[3:0];
                RF_addr1 <= instructions[6:4];
                
                case ( cntr_load )
                0:
                begin
                cntr_load <= 1;
                RF_addr1 <= instructions[6:4];
                end
                
                1:
                begin
                cntr_load <= 0;
                RF_addr2 <= instructions[6:4];
                end
                endcase 
            end
            
            3'b101:
            begin
                isExternal <= 0;
                D_rd <= 0;
                D_wr <= 0;
                ALUSel <= 2'b01;
                wr_en <= 1;
                RF_waddr <= instructions[8:6];
                RF_addr1 <= instructions[2:0];
                RF_addr2 <= instructions[5:3];
            end    
            
            3'b110:
            begin
                isExternal <= 0; 
                D_rd <= 0;
                D_wr <= 0;
                ALUSel <= 2'b10;
                wr_en <= 1;
                RF_waddr <= instructions[8:6];
                RF_addr1 <= instructions[2:0];
                RF_addr2 <= instructions[5:3];     
            end
            endcase 
         end   
    end
                
endmodule 
