`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:18:06 12/05/2015 
// Design Name: 
// Module Name:    cpu 
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
module cpu(
    input rst,
    input clk
    );

    wire[31:0] instAddr;
    wire[31:0] inst;
    wire enabler;

    wire[31:0] ram_data_input;
    wire[31:0] ram_addr_output;
    wire[31:0] ram_data_output;
    wire[3:0] ram_select_output;
    wire ram_write_enabler;
    wire ram_enabler;

    /* mips mips0(
        .rst(rst), .clk(clk),
        .ins_input(inst),
        .addr_output(instAddr),
        .enabler_output(enabler),

        .ram_data(ram_data_input),
        .ram_addr_output(ram_addr_output),
        .ram_data_output(ram_data_output),
        .ram_write_enabler_output(ram_write_enabler),
        .ram_select_output(ram_select_output),
        .ram_enabler(ram_enabler)
    );

    instRom instRom0(
        .enabler(enabler),
        .addr(instAddr),
        .inst(inst)
    );

    ram ram0(
        .clk(clk),
        .enabler(ram_enabler),
        .write_enabler(ram_write_enabler),
        .addr(ram_addr_output),
        .select(ram_select_output),
        .data_input(ram_data_output),
        .data_output(ram_data_input)
    );
    */
endmodule

