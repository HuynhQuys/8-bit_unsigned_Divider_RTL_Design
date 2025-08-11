`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2024 12:40:41 AM
// Design Name: 
// Module Name: DivFA
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


module DivFA(SBC, SC, Q, R);
    input [7:0] SBC;
    input [7:0] SC;
    output [7:0] Q;
    output [7:0] R;
    
    //line 0
    wire co00, co01, co02, co03, co04, co05, co06, co07;
    wire r00, r01, r02, r03, r04, r05, r06, r07;
    PU pu07 (1'b0, SC[7], co06, co07, co07, r07);
    PU pu06 (1'b0, SC[6], co05, co06, co07, r06);
    PU pu05 (1'b0, SC[5], co04, co05, co07, r05);
    PU pu04 (1'b0, SC[4], co03, co04, co07, r04);
    PU pu03 (1'b0, SC[3], co02, co03, co07, r03);
    PU pu02 (1'b0, SC[2], co01, co02, co07, r02);
    PU pu01 (1'b0, SC[1], co00, co01, co07, r01);
    PU pu00 (SBC[7], SC[0], 1'b1, co00, co07, r00);
      
    
    //line 1
    wire co10, co11, co12, co13, co14, co15, co16, co17;
    wire r10, r11, r12, r13, r14, r15, r16, r17;
    PU pu17 (r06, SC[7], co16, co17, co17, r17);
    PU pu16 (r05, SC[6], co15, co16, co17, r16);
    PU pu15 (r04, SC[5], co14, co15, co17, r15);
    PU pu14 (r03, SC[4], co13, co14, co17, r14);
    PU pu13 (r02, SC[3], co12, co13, co17, r13);
    PU pu12 (r01, SC[2], co11, co12, co17, r12);
    PU pu11 (r00, SC[1], co10, co11, co17, r11);
    PU pu10 (SBC[6], SC[0], 1'b1, co10, co17, r10);
        
    
    //line 2
    wire co20, co21, co22, co23, co24, co25, co26, co27;
    wire r20, r21, r22, r23, r24, r25, r26, r27;
    PU pu27 (r16, SC[7], co26, co27, co27, r27);
    PU pu26 (r15, SC[6], co25, co26, co27, r26);
    PU pu25 (r14, SC[5], co24, co25, co27, r25);
    PU pu24 (r13, SC[4], co23, co24, co27, r24);
    PU pu23 (r12, SC[3], co22, co23, co27, r23);
    PU pu22 (r11, SC[2], co21, co22, co27, r22);
    PU pu21 (r10, SC[1], co20, co21, co27, r21);
    PU pu20 (SBC[5], SC[0], 1'b1, co20, co27, r20);
        
    //line 3
    wire co30, co31, co32, co33, co34, co35, co36, co37;
    wire r30, r31, r32, r33, r34, r35, r36, r37;
    PU pu37 (r26, SC[7], co36, co37, co37, r37);
    PU pu36 (r25, SC[6], co35, co36, co37, r36);
    PU pu35 (r24, SC[5], co34, co35, co37, r35);
    PU pu34 (r23, SC[4], co33, co34, co37, r34);
    PU pu33 (r22, SC[3], co32, co33, co37, r33);
    PU pu32 (r21, SC[2], co31, co32, co37, r32);
    PU pu31 (r20, SC[1], co30, co31, co37, r31);
    PU pu30 (SBC[4], SC[0], 1'b1, co30, co37, r30);
       
    //line 4
    wire co40, co41, co42, co43, co44, co45, co46, co47;
    wire r40, r41, r42, r43, r44, r45, r46, r47;
    PU pu47 (r36, SC[7], co46, co47, co47, r47);
    PU pu46 (r35, SC[6], co45, co46, co47, r46);
    PU pu45 (r34, SC[5], co44, co45, co47, r45);
    PU pu44 (r33, SC[4], co43, co44, co47, r44);
    PU pu43 (r32, SC[3], co42, co43, co47, r43);
    PU pu42 (r31, SC[2], co41, co42, co47, r42);
    PU pu41 (r30, SC[1], co40, co41, co47, r41);
    PU pu40 (SBC[3], SC[0], 1'b1, co40, co47, r40);
    
    //line 5
    wire co50, co51, co52, co53, co54, co55, co56, co57;
    wire r50, r51, r52, r53, r54, r55, r56, r57;
    PU pu57 (r46, SC[7], co56, co57, co57, r57);
    PU pu56 (r45, SC[6], co55, co56, co57, r56);
    PU pu55 (r44, SC[5], co54, co55, co57, r55);
    PU pu54 (r43, SC[4], co53, co54, co57, r54);
    PU pu53 (r42, SC[3], co52, co53, co57, r53);
    PU pu52 (r41, SC[2], co51, co52, co57, r52);
    PU pu51 (r40, SC[1], co50, co51, co57, r51);
    PU pu50 (SBC[2], SC[0], 1'b1, co50, co57, r50);

    //line 6
    wire co60, co61, co62, co63, co64, co65, co66, co67;
    wire r60, r61, r62, r63, r64, r65, r66, r67;
    PU pu67 (r56, SC[7], co66, co67, co67, r67);
    PU pu66 (r55, SC[6], co65, co66, co67, r66);
    PU pu65 (r54, SC[5], co64, co65, co67, r65);
    PU pu64 (r53, SC[4], co63, co64, co67, r64);
    PU pu63 (r52, SC[3], co62, co63, co67, r63);
    PU pu62 (r51, SC[2], co61, co62, co67, r62);
    PU pu61 (r50, SC[1], co60, co61, co67, r61);
    PU pu60 (SBC[1], SC[0], 1'b1, co60, co67, r60);

    //line 7
    wire co70, co71, co72, co73, co74, co75, co76, c77;
    wire r70, r71, r72, r73, r74, r75, r76, r77;
    PU pu77 (r66, SC[7], co76, co77, co77, r77);
    PU pu76 (r65, SC[6], co75, co76, co77, r76);
    PU pu75 (r64, SC[5], co74, co75, co77, r75);
    PU pu74 (r63, SC[4], co73, co74, co77, r74);
    PU pu73 (r62, SC[3], co72, co73, co77, r73);
    PU pu72 (r61, SC[2], co71, co72, co77, r72);
    PU pu71 (r60, SC[1], co70, co71, co77, r71);
    PU pu70 (SBC[0], SC[0], 1'b1, co70, co77, r70);
    
    assign R = {r77, r76, r75, r74, r73, r72, r71, r70};
    assign Q = {co07, co17, co27, co37, co47, co57, co67, co77};
endmodule
