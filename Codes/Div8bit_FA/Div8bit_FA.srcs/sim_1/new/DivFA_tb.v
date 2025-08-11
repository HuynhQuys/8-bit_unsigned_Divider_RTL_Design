`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2024 12:51:10 AM
// Design Name: 
// Module Name: DivFA_tb
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


module DivFA_tb;
    // Inputs
    reg [7:0] SBC;
	reg [7:0] SC;

	// Outputs
	wire [7:0] Q;
	wire [7:0] R;

	// Instantiate the Unit Under Test (UUT)
	DivFA uut (
		.SBC(SBC), 
		.SC(SC), 
		.Q(Q), 
		.R(R)
	);

	initial begin
		// Initialize Inputs
		SBC = 243;
		SC = 3;
		#100;
		
		SBC = 100;
		SC = 26;
		#100;
		
		SBC = 255;
		SC = 9;
		#100;
		
		SBC = 255;
		SC = 255;
		#100;
		
		SBC = 50;
		SC = 91;
		#100;
		
		SBC = 8'b11100111;
		SC = 8'b00000110;
	end
endmodule
