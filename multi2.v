`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2019 00:18:17
// Design Name: 
// Module Name: multi2
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


module multi2(
    input [1:0] a,
    input [1:0] b,
    input [3:0] out
    );
    wire p1,p2,p3;
    wire c1,c2;
    
    halfadder ha1(a[0]&b[1],a[1]&b[0],p1,c1);
    halfadder ha2(a[1]&b[1],c1,p2,p3);
    assign out={p3,p2,p1,a[0]&b[0]};
endmodule
