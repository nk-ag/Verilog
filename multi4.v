`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2019 00:18:17
// Design Name: 
// Module Name: multi4
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


module multi4(
    input [3:0] a,
    input [3:0] b,
    output [7:0] out
    );
    
    wire [1:0]a0;
    wire [1:0]a1;
    wire [1:0]b0;
    wire [1:0]b1;
    
   assign a0=a[1:0];
   assign a1=a[3:2];
   assign b0=b[1:0];
   assign b1=b[3:2];
   
   wire [3:0]p1;
   wire [3:0]p2;
   wire [3:0]p3;
   wire [3:0]p4;
   
   multi2 m1(a0,b0,p1);
   multi2 m2(a0,b1,p2);
   multi2 m3(a1,b0,p3);
   multi2 m4(a1,b1,p4);
   
   wire [3:0]s0;
   wire [3:0]s1;
   wire [3:0]s2;
   wire c0;
   wire c2;
   wire c1;
   
   add4 add1(p3,p2,0,s0,c0);
   add4  add2(s0,{2'b0,p1[3:2]},0,s1,c1);
   add4  add3(p4,{0,(c0|c1),s1[3:2]},0,s2,c2);
   
   assign out={s2,s1[1:0],p1[1:0]};
   
    
endmodule
