`timescale 1ns / 1ps


module debouncer(input logic clk, input logic btnL,output logic pulse);
    logic [24:0] timer;
    typedef enum logic [1:0]{S0,S1,S2,S3} states;
    states state, nextState;
    logic gotInput;
    
    always_ff@(posedge clk)
        begin    
            state <= nextState;
            if(gotInput)
                timer <= 25000000;
            else
                timer <= timer - 1;
        end
    always_comb
        case(state)
            S0: if(btnL) 
                begin //startTimer
                    nextState = S1;    
                    gotInput = 1;
                end
                else begin nextState = S0; gotInput = 0; end
            S1: begin nextState = S2; gotInput = 0; end
            S2: begin nextState = S3; gotInput = 0; end
            S3: begin if(timer == 0) nextState = S0; else nextState = S3; gotInput = 0; end
            default: begin nextState = S0; gotInput = 0; end
            endcase
    
    assign pulse = ( state == S1 );
endmodule


module Datapath ( input logic [3:0] Ext_Data, input logic [2:0]  Addr_Src1,  Addr_Src2,  Addr_Dest, input logic  isExternal,  clk,  push_Button,  reset , input logic [1:0] ALUSel, output [6:0]seg, 
  logic dp ,  output  [3:0] an ,   output logic  [3:0] rdd1);
    
    logic pulse_for_btn;
    logic [3:0] data;
    logic [3:0] Rel;
    logic [3:0] rdd2;
   
    
    
    mux_2_to_1 select_for_data( isExternal, Ext_Data, Rel, data );
    
    debouncer debounce( clk, push_Button, pulse_for_btn );
    
    Register_File register_file ( clk,  pulse_for_btn,  reset ,  Addr_Src1 ,  Addr_Src2 , Addr_Dest , data , rdd1 , rdd2 );
    
    ALU alu_operation ( rdd1 , rdd2 , ALUSel , Rel ); 
    
    SevenSegmentDisplay sevenSegment( clk , rdd1 , rdd2 , 0 , Rel , seg , dp , an );    
    
endmodule
