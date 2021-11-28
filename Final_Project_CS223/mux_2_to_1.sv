`timescale 1ns / 1ps



module mux_2_to_1(  input logic select, input logic [3:0] input1, input0,  output logic  [3:0]  result );
    
    assign  result  =  select  ?  input1  :  input0;
    
endmodule
