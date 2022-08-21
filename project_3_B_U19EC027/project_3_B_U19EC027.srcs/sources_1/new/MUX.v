`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2022 02:16:38
// Design Name: 
// Module Name: MUX
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



module MUX(
	input I0_027, I1_027, I2_027, I3_027, s1_027, s0_027,
	output y_027
);
	assign y_027 = s1_027 ? (s0_027 ? I3_027 : I2_027) : (s0_027 ? I1_027 : I0_027);
endmodule

