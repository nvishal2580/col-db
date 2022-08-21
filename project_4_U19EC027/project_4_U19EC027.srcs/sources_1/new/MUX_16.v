`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2022 03:14:45
// Design Name: 
// Module Name: MUX_16
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


module MUX_16(
    input [15:0] I_027,
    input [3:0] S_027,
    output Y_027
    );
    wire [3:0]w_027;
    MUX4x1 M1(.I_027(I_027[3:0]), .S_027(S_027[1:0]),.Y_027(w_027[0]));
    MUX4x1 M2(.I_027(I_027[7:4]), .S_027(S_027[1:0]),.Y_027(w_027[1]));
    MUX4x1 M3(.I_027(I_027[11:8]), .S_027(S_027[1:0]),.Y_027(w_027[2]));
    MUX4x1 M4(.I_027(I_027[15:12]), .S_027(S_027[1:0]),.Y_027(w_027[3]));
    MUX4x1 M5(.I_027(w_027), .S_027(S_027[3:2]),.Y_027(Y_027));
endmodule

module MUX4x1(
    input [3:0] I_027,
    input [1:0] S_027,
    output Y_027
    );
    wire [1:0]w_027;
    MUX2x1 M1(.I_027(I_027[1:0]), .S_027(S_027[0]),.Y_027(w_027[0]));
    MUX2x1 M2(.I_027(I_027[3:2]), .S_027(S_027[0]),.Y_027(w_027[1]));
    MUX2x1 M3(.I_027(w_027), .S_027(S_027[1]),.Y_027(Y_027));
endmodule

module MUX2x1(
    input [1:0] I_027,
    input S_027,
    output Y_027
    );
    assign Y_027 = S_027 ? I_027[1] : I_027[0];
endmodule
