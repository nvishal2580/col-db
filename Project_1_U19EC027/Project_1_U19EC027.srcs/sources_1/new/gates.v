`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2022 22:29:46
// Design Name: 
// Module Name: gates
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


module gates(
    input a_027, b_027,
	output c_027, d_027, e_027, f_027, g_027
    );
    and(c_027, a_027, b_027);
	nand(d_027, a_027, b_027);
	xor(e_027, a_027, b_027);
	or(f_027, a_027, b_027);
	nor(g_027, a_027, b_027);
endmodule
