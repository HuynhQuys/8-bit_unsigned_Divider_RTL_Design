`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2024 12:37:37 AM
// Design Name: 
// Module Name: PU
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


module PU(a, b, ci, co, sel, out);
    input a, b, ci, sel;
    output co, out;
    wire s;
    FA add (a, ~b, ci, s, co);
    Mux21 mux (a, s, sel, out);
endmodule
