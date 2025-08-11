`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2024 12:36:17 AM
// Design Name: 
// Module Name: FA
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


module FA(A, B, Cin, S, Co);
    input A, B, Cin;
    output S, Co;

    assign S = A ^ B ^ Cin;
    assign Co = (A&Cin) | (A&B) | (B&Cin);
endmodule
