`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2024 05:50:48 AM
// Design Name: 
// Module Name: Div_FSM
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


module Div_FSM(clk, SBC, SC, Q, R);
    input clk;
    input [7:0] SBC;
    input [7:0] SC;
    output reg [7:0] Q, R;
    
    reg [15:0] temp_SBC;
    reg [7:0] temp_SC;
    reg [3:0] counter;
    reg carry;
    reg [7:0] pre_SBC, pre_SC;
    
    reg [1:0] state, next;
    
    parameter IDLE = 2'b00, DIVISION = 2'b01, DONE = 2'b10;
    
    initial next = IDLE;
    always@(posedge clk)
        state <= next;
    
    always@( clk, state)
        case (state)
            IDLE: 
                begin
                temp_SBC = {8'b0, SBC};
                temp_SC = SC;
                pre_SBC= SBC;
                pre_SC = SC;
                Q = 0;
                R = 0;
                carry = 0;
                counter = 8;
                next = DIVISION;
                end
                
            DIVISION:
                begin
                    if (counter>0) 
                        begin
                            temp_SBC = {temp_SBC[14:0], 1'b1};
                            Q[7:1] = Q[6:0];
                            {carry, temp_SBC[15:8]} = temp_SBC[15:8] - temp_SC;
                            counter = counter -1;
                            if (carry == 1)
                                begin
                                    temp_SBC[15:8] = temp_SBC[15:8] + temp_SC;
                                    Q[0] = 0;
                                end
                            else Q[0] = 1;
                            next = DIVISION;
                        end
                    else 
                        begin
                            R= temp_SBC[15:8];
                            next = DONE;
                        end
                end
            DONE:   
                    if (SBC != pre_SBC || SC != pre_SC)
                        next = IDLE;
        endcase
endmodule
