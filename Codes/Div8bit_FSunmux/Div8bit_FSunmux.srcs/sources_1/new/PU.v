`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2024 02:15:52 AM
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


module PU(a, b, bi, bo, sel, out);
    input a, b, bi, sel;
    output bo, out;
    
    wire d;
    FS sub (a, b, bi, d, bo);
    Mux21 mux (a, d, sel, out);
endmodule

