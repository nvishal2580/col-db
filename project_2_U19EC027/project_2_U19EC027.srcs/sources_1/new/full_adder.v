`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2022 00:43:18
// Design Name: 
// Module Name: full_adder
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


module full_adder( input A_027, B_027, Cin_027,
	         		  output S_out_027, C_out_027 );

wire a, b, c;
xor ( a, A_027, B_027 );  
and ( c, A_027, B_027 );
and ( b, a, Cin_027 );
xor ( S_out_027, a, Cin_027 );
or ( C_out_027, b, c );

endmodule
