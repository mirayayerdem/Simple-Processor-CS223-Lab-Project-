`timescale 1ns / 1ps



module Control_Unit( input logic clk, reset, leftBtnDebounce, rightBtnDebounce, switch_Enable, input logic[11:0] switch,
output logic [3:0] D_addr, 
output logic D_rd , D_wr, 
output logic [2:0] RF_addr1 , RF_addr2 , RF_waddr, 
output logic [1:0] ALUSel,
 output logic isExternal , wr_en);
    
    logic cntr_load, IR_ld;
    logic [2:0] PC_out;
    logic [2:0] PC_index;
    logic [11:0] instructions;
    logic [11:0] IM_ins;
    logic [11:0] IR_ins;
    assign IR_ld = 1;
    
    PC pc_counter( clk, leftBtnDebounce, reset, PC_index );        
    Instruction_Memory rom( PC_index , IM_ins );
    IR insforim( clk, IR_ld , reset, switch_Enable , switch, IM_ins, instructions );
    

   
         
    Controller_sp  controller( switch_Enable , clk , reset , leftBtnDebounce , rightBtnDebounce , instructions ,
    D_rd , D_wr , isExternal , ALUSel , wr_en , D_addr , RF_addr1 , RF_addr2 , RF_waddr );
        
endmodule
