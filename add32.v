`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2019 00:29:51
// Design Name: 
// Module Name: add32
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


module add32(
input [31:0] a,
    input [31:0] b,
    input cin,
    output [31:0] out,
    output cout
    );
    
    wire [7:0] c;
    parameter n=32;
    genvar i;

    assign c[0]=cin;
    
    
    generate
    for(i=0;i<n;i=i+4) begin: adder_loop
        add4 first4(.a(a[i+3:i]),.b(b[i+3:i]),.cin(c[i/4]),.cout(c[(i/4)+1]),.out(out[i+3:i]));
    end
    endgenerate
    assign cout=c[7];
endmodule
