`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2024 02:00:59 AM
// Design Name: 
// Module Name: DivFS
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


module DivFS(
    input [7:0] SBC,
    input [7:0] SC,
    output [7:0] Q,
    output [7:0] R
    );
	 
	 //line 0
    wire bo00, bo01, bo02, bo03, bo04, bo05, bo06, bo07;
    wire r00, r01, r02, r03, r04, r05, r06, r07;
    PU pu07 (1'b0, SC[7], bo06, bo07, bo07, r07);
    PU pu06 (1'b0, SC[6], bo05, bo06, bo07, r06);
    PU pu05 (1'b0, SC[5], bo04, bo05, bo07, r05);
    PU pu04 (1'b0, SC[4], bo03, bo04, bo07, r04);
	PU pu03 (1'b0, SC[3], bo02, bo03, bo07, r03);
    PU pu02 (1'b0, SC[2], bo01, bo02, bo07, r02);
    PU pu01 (1'b0, SC[1], bo00, bo01, bo07, r01);
    PU pu00 (SBC[7], SC[0], 1'b0, bo00, bo07, r00);
	 
	 //line 1
    wire bo10, bo11, bo12, bo13, bo14, bo15, bo16, bo17;
    wire r10, r11, r12, r13, r14, r15, r16, r17;
    PU pu17 (r06, SC[7], bo16, bo17, bo17, r17);
    PU pu16 (r05, SC[6], bo15, bo16, bo17, r16);
    PU pu15 (r04, SC[5], bo14, bo15, bo17, r15);
    PU pu14 (r03, SC[4], bo13, bo14, bo17, r14);
	PU pu13 (r02, SC[3], bo12, bo13, bo17, r13);
    PU pu12 (r01, SC[2], bo11, bo12, bo17, r12);
    PU pu11 (r00, SC[1], bo10, bo11, bo17, r11);
    PU pu10 (SBC[6], SC[0], 1'b0, bo10, bo17, r10);
	 
	 //line 2
    wire bo20, bo21, bo22, bo23, bo24, bo25, bo26, bo27;
    wire r20, r21, r22, r23, r24, r25, r26, r27;
    PU pu27 (r16, SC[7], bo26, bo27, bo27, r27);
    PU pu26 (r15, SC[6], bo25, bo26, bo27, r26);
    PU pu25 (r14, SC[5], bo24, bo25, bo27, r25);
    PU pu24 (r13, SC[4], bo23, bo24, bo27, r24);
	PU pu23 (r12, SC[3], bo22, bo23, bo27, r23);
    PU pu22 (r11, SC[2], bo21, bo22, bo27, r22);
    PU pu21 (r10, SC[1], bo20, bo21, bo27, r21);
    PU pu20 (SBC[5], SC[0], 1'b0, bo20, bo27, r20);
	 
	 //line 3
    wire bo30, bo31, bo32, bo33, bo34, bo35, bo36, bo37;
    wire r30, r31, r32, r33, r34, r35, r36, r37;
    PU pu37 (r26, SC[7], bo36, bo37, bo37, r37);
    PU pu36 (r25, SC[6], bo35, bo36, bo37, r36);
    PU pu35 (r24, SC[5], bo34, bo35, bo37, r35);
    PU pu34 (r23, SC[4], bo33, bo34, bo37, r34);
	PU pu33 (r22, SC[3], bo32, bo33, bo37, r33);
    PU pu32 (r21, SC[2], bo31, bo32, bo37, r32);
    PU pu31 (r20, SC[1], bo30, bo31, bo37, r31);
    PU pu30 (SBC[4], SC[0], 1'b0, bo30, bo37, r30);
	 
	 //line 4
    wire bo40, bo41, bo42, bo43, bo44, bo45, bo46, bo47;
    wire r40, r41, r42, r43, r44, r45, r46, r47;
    PU pu47 (r36, SC[7], bo46, bo47, bo47, r47);
    PU pu46 (r35, SC[6], bo45, bo46, bo47, r46);
    PU pu45 (r34, SC[5], bo44, bo45, bo47, r45);
    PU pu44 (r33, SC[4], bo43, bo44, bo47, r44);
	PU pu43 (r32, SC[3], bo42, bo43, bo47, r43);
    PU pu42 (r31, SC[2], bo41, bo42, bo47, r42);
    PU pu41 (r30, SC[1], bo40, bo41, bo47, r41);
    PU pu40 (SBC[3], SC[0], 1'b0, bo40, bo47, r40);
	 
	 //line 5
    wire bo50, bo51, bo52, bo53, bo54, bo55, bo56, bo57;
    wire r50, r51, r52, r53, r54, r55, r56, r57;
    PU pu57 (r46, SC[7], bo56, bo57, bo57, r57);
    PU pu56 (r45, SC[6], bo55, bo56, bo57, r56);
    PU pu55 (r44, SC[5], bo54, bo55, bo57, r55);
    PU pu54 (r43, SC[4], bo53, bo54, bo57, r54);
	PU pu53 (r42, SC[3], bo52, bo53, bo57, r53);
    PU pu52 (r41, SC[2], bo51, bo52, bo57, r52);
    PU pu51 (r40, SC[1], bo50, bo51, bo57, r51);
    PU pu50 (SBC[2], SC[0], 1'b0, bo50, bo57, r50);
	 
	 //line 6
    wire bo60, bo61, bo62, bo63, bo64, bo65, bo66, bo67;
    wire r60, r61, r62, r63, r64, r65, r66, r67;
    PU pu67 (r56, SC[7], bo66, bo67, bo67, r67);
    PU pu66 (r55, SC[6], bo65, bo66, bo67, r66);
    PU pu65 (r54, SC[5], bo64, bo65, bo67, r65);
    PU pu64 (r53, SC[4], bo63, bo64, bo67, r64);
	PU pu63 (r52, SC[3], bo62, bo63, bo67, r63);
    PU pu62 (r51, SC[2], bo61, bo62, bo67, r62);
    PU pu61 (r50, SC[1], bo60, bo61, bo67, r61);
    PU pu60 (SBC[1], SC[0], 1'b0, bo60, bo67, r60);
	 
	 //line 7
    wire bo70, bo71, bo72, bo73, bo74, bo75, bo76, c77;
    wire r70, r71, r72, r73, r74, r75, r76, r77;
    PU pu77 (r66, SC[7], bo76, bo77, bo77, r77);
    PU pu76 (r65, SC[6], bo75, bo76, bo77, r76);
    PU pu75 (r64, SC[5], bo74, bo75, bo77, r75);
    PU pu74 (r63, SC[4], bo73, bo74, bo77, r74);
	PU pu73 (r62, SC[3], bo72, bo73, bo77, r73);
    PU pu72 (r61, SC[2], bo71, bo72, bo77, r72);
    PU pu71 (r60, SC[1], bo70, bo71, bo77, r71);
    PU pu70 (SBC[0], SC[0], 1'b0, bo70, bo77, r70);
	 
	assign R = {r77, r76, r75, r74, r73, r72, r71, r70};
    assign Q = {~bo07, ~bo17, ~bo27, ~bo37, ~bo47, ~bo57, ~bo67, ~bo77};
endmodule
