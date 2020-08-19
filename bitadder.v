`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2019 09:24:16
// Design Name: 
// Module Name: fouradder
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


module bitadder(
    input a,
    input  b,
    input cin,
    output out,
    output cout
    );
    
    wire axorb,a_b,x_n,xxorn;
    assign  axorb=a^b;
    assign  a_b=a&b;
    assign  x_n=axorb&cin;
    assign  xxorn=axorb^cin;
    assign  cout=x_n|a_b;
    assign out=xxorn;
    
endmodule
