
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2019 09:28:44
// Design Name: 
// Module Name: adder4
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


module add4(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] out,
    output cout
    
    
    );
    wire c1,c2,c3;
    bitadder inst1(.a(a[0]),.b(b[0]),.cin(cin),.out(out[0]),.cout(c1));
    bitadder inst2(.a(a[1]),.b(b[1]),.cin(c1),.out(out[1]),.cout(c2));
    bitadder inst3(.a(a[2]),.b(b[2]),.cin(c2),.out(out[2]),.cout(c3));
    bitadder inst4(.a(a[3]),.b(b[3]),.cin(c3),.out(out[3]),.cout(cout));
    
    
endmodule