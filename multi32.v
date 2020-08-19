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


module multi32(
    input [31:0] a,
    input [31:0] b,
    output [63:0] out
    );
    
    wire [15:0]a0;
    wire [15:0]a1;
    wire [15:0]b0;
    wire [15:0]b1;
    
   assign a0=a[15:0];
   assign a1=a[31:16];
   assign b0=b[15:0];
   assign b1=b[31:16];
   
   wire [31:0]p1;
   wire [31:0]p2;
   wire [31:0]p3;
   wire [31:0]p4;
   
   multi16 m1(a0,b0,p1);
   multi16 m2(a0,b1,p3);
   multi16 m3(a1,b0,p2);
   multi16 m4(a1,b1,p4);
   
   wire [31:0]s0;
   wire [31:0]s1;
   wire [31:0]s2;
   wire c0;
   wire c2;
   wire c1;
   
   add32 add1(p3,p2,0,s0,c0);
   add32  add2(s0,{16'b0,p1[31:16]},0,s1,c1);
   add32 add3(p4,{15'b0,(c0|c1),s1[31:16]},0,s2,c2);
   
   assign out={s2,s1[15:0],p1[15:0]};
   
    
endmodule
