`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2024 01:52:56 AM
// Design Name: 
// Module Name: FS
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


module FS(
    input A, B, Bi,
	output D, Bo
    );
	 
	assign D = A ^ B ^ Bi;
	assign Bo = (~A & Bi) | (~A & B) | (B & Bi);
endmodule
