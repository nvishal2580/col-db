`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2022 01:12:15
// Design Name: 
// Module Name: FA_HA
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

module FA_HA(
	input a_027, b_027, cin_027,
	output s_027, cout_027,
	wire y1, y2, y3
);
	HA i1(a_027, b_027, y1, y2);
	HA i2(y1, cin_027, s_027, y3);
	or(cout_027, y2, y3);
endmodule

module HA(
	input a_027, b_027,
	output s_027, c
);
	xor(s_027, a_027, b_027);
	and(c, a_027, b_027);
endmodule

