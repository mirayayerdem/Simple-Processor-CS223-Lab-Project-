`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2021 19:35:59
// Design Name: 
// Module Name: Simple_Processor
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


module Simple_Processor(input logic clk, reset,  leftBtn , rightBtn , switchEn, [11:0] switch,
                          output [6:0] seg, logic dp , output [3:0] an);
    
    logic D_wr;
    logic D_rd;
    logic isExternal;
    logic wr_en;
    logic debouncer_left_btn;
    logic debouncer_right_btn;
    logic [1:0] ALUSel;
    logic [3:0] D_addr;
    logic [3:0] Data_mem_read;
    logic [3:0] rdd1;
    logic [2:0] RF_waddr;
    logic [2:0] RF_addr1;
    logic [2:0] RF_addr2;
    
    

    debouncer debbouncer_rom( clk , leftBtn , debouncer_left_btn );
   
    debouncer debouncer_switch( clk , rightBtn , debouncer_right_btn );
     
    Control_Unit control_unit_sp( clk , reset , debouncer_left_btn , debouncer_right_btn , switchEn , switch , D_addr , D_rd , D_wr , RF_addr1 , RF_addr2 , RF_waddr , ALUSel , isExternal , wr_en );    
    
    Data_Memory data_memory_sp( D_rd , D_wr , clk , reset , D_addr , rdd1 , Data_mem_read );                                                                                            
    
    Datapath datapath_sp( Data_mem_read , RF_addr1 , RF_addr2 , RF_waddr , isExternal , clk ,  wr_en , reset , ALUSel , seg , dp , an , rdd1);
    
endmodule
