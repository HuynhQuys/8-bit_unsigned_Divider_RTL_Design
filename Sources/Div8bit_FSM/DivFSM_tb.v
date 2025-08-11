`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2024 05:59:03 AM
// Design Name: 
// Module Name: DivFSM_tb
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


module DivFSM_tb;
    reg [7:0] SBC;
    reg [7:0] SC;
    reg clk;
    wire [7:0] Q;
    wire [7:0] R;
    Div_FSM uut (
        .SBC(SBC),
        .SC(SC),
        .Q(Q),
        .R(R),
        .clk(clk)
    );

    always begin
    #5;
    clk = ~clk;
    end

    initial begin
        clk = 0;
        SBC = 164;
        SC = 21;
        #100 ;
       end
endmodule
