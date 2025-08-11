`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2024 01:54:00 AM
// Design Name: 
// Module Name: Mux21
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


module Mux21(in0, in1, s, o);
    input in0, in1, s;
    output reg o;
    always@(*)
            case(s)
                0: o = in1;
                1: o = in0;
            endcase
endmodule
