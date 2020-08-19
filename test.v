`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2019 01:06:34
// Design Name: 
// Module Name: test
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


module test(

    );
    
    wire [63:0] multi;
    reg [31:0] testa;
    reg [31:0] testb;
    
    multi32 i1(testa,testb,multi);
    
    initial begin
        testa=300015900;
        testb=199004;
    end
    
    always begin
        #300 testa=testa+15900;
        #350 testb=testb+13000;
        //$display(testa,testb,multi);
     end
    
endmodule
