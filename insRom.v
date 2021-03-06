`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:11:50 12/05/2015 
// Design Name: 
// Module Name:    insRom 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module instRom(
    input enabler,
    input wire[31:0] a,
    output reg[31:0] spo
    );

    reg[31:0] instMem[0:255];

    initial $readmemh( "instRom.data", instMem );

    always @ (*) begin
        if (enabler == 0)
            spo <= 0;
        else
            spo <= instMem[a[18:2]];
    end

endmodule
