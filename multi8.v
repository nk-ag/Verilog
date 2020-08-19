`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2019 00:18:17
// Design Name: 
// Module Name: multi8
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


module multi8(
    input [7:0] a,
    input [7:0] b,
    output [15:0] out
    );
    wire [3:0]a0;
    wire [3:0]a1;
    wire [3:0]b0;
    wire [3:0]b1;
    
   assign a0=a[3:0];
   assign a1=a[7:4];
   assign b0=b[3:0];
   assign b1=b[7:4];
   
   wire [7:0]p1;
   wire [7:0]p2;
   wire [7:0]p3;
   wire [7:0]p4;
   
   multi4 m1(a0,b0,p1);
   multi4 m2(a0,b1,p3);
   multi4 m3(a1,b0,p2);
   multi4 m4(a1,b1,p4);
   
   wire [7:0]s0;
   wire [7:0]s1;
   wire [7:0]s2;
   wire c0;
   wire c2;
   wire c1;
   
   add8 add1(p3,p2,0,s0,c0);
   add8  add2(s0,{4'b0,p1[7:4]},0,s1,c1);
   add8  add3(p4,{3'b0,(c0|c1),s1[7:4]},0,s2,c2);
   
   
   assign out={s2,s1[3:0],p1[3:0]};
//   always @*
//   $monitor(a,b,s0,s1,s2,p1,p2,p3,p4,out);
     //$display(a," ",b," ",s1," ",s2," ","%b",{4'b0,p1[7:4]},p1," ",p3," ",c0," ",out);
    
endmodule
