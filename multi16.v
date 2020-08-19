`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2019 00:29:51
// Design Name: 
// Module Name: multi16
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


module multi16(
    input [15:0] a,
    input [15:0] b,
    output [31:0] out
    );
    
    wire [7:0]a0;
    wire [7:0]a1;
    wire [7:0]b0;
    wire [7:0]b1;
    
   assign a0=a[7:0];
   assign a1=a[15:8];
   assign b0=b[7:0];
   assign b1=b[15:8];
   
   wire [15:0]p1;
   wire [15:0]p2;
   wire [15:0]p3;
   wire [15:0]p4;
   
   multi8 m1(a0,b0,p1);
   multi8 m2(a0,b1,p3);
   multi8 m3(a1,b0,p2);
   multi8 m4(a1,b1,p4);
   
   wire [15:0]s0;
   wire [15:0]s1;
   wire [15:0]s2;
   wire c0;
   wire c2;
   wire c1;
   
   add16 add1(p3,p2,0,s0,c0);
   add16  add2(s0,{8'b0,p1[15:8]},0,s1,c1);
   add16 add3(p4,{7'b0,(c0|c1),s1[15:8]},0,s2,c2);
   
   assign out={s2,s1[7:0],p1[7:0]};
    
endmodule
