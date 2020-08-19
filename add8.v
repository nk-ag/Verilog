`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2019 09:10:26
// Design Name: 
// Module Name: sixteenbit
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


//module add8(
//    input [7:0] a,
//    input [7:0] b,
//    input cin,
//    output [7:0] out,
//    output cout
//    );
//    wire [1:0] c;
//    parameter n=8;
//    genvar i;

//    assign c[0]=cin;
    
    
//    generate
//    for(i=0;i<n;i=i+4) begin: adder_loop
//        add4 first4(.a(a[i+3:i]),.b(b[i+3:i]),.cin(c[i/4]),.cout(c[(i/4)+1]),.out(out[i+3:i]));
//        always @*
//        $display("add ",a," ",b," ",cin," ",cout," ",out);
//    end
//    endgenerate
//    assign cout=c[1];
    
        
//endmodule

module add8(
    input [7:0] a,
    input [7:0] b,
    input cin,
    output [7:0] out,
    output cout
    
    
    );
    wire c1,c2,c3,c4,c5,c6,c7;
    bitadder inst1(.a(a[0]),.b(b[0]),.cin(cin),.out(out[0]),.cout(c1));
    bitadder inst2(.a(a[1]),.b(b[1]),.cin(c1),.out(out[1]),.cout(c2));
    bitadder inst3(.a(a[2]),.b(b[2]),.cin(c2),.out(out[2]),.cout(c3));
    bitadder inst4(.a(a[3]),.b(b[3]),.cin(c3),.out(out[3]),.cout(c4));
    bitadder inst5(.a(a[4]),.b(b[4]),.cin(c4),.out(out[4]),.cout(c5));
    bitadder inst6(.a(a[5]),.b(b[5]),.cin(c5),.out(out[5]),.cout(c6));
    bitadder inst7(.a(a[6]),.b(b[6]),.cin(c6),.out(out[6]),.cout(c7));
    bitadder inst8(.a(a[7]),.b(b[7]),.cin(c7),.out(out[7]),.cout(cout));
    
    
endmodule
