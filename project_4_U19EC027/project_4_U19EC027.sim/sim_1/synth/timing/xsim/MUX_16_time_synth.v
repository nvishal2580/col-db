// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Aug 22 03:31:32 2022
// Host        : LAPTOP-LQCEFTQA running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Xilinx/workspace/project_4_U19EC027/project_4_U19EC027.sim/sim_1/synth/timing/xsim/MUX_16_time_synth.v
// Design      : MUX_16
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module MUX_16
   (I_027,
    S_027,
    Y_027);
  input [15:0]I_027;
  input [3:0]S_027;
  output Y_027;

  wire [15:0]I_027;
  wire [15:0]I_027_IBUF;
  wire [1:0]\M5/w_027 ;
  wire [3:0]S_027;
  wire [3:0]S_027_IBUF;
  wire Y_027;
  wire Y_027_OBUF;
  wire [3:0]w_027;

initial begin
 $sdf_annotate("MUX_16_time_synth.sdf",,,,"tool_control");
end
  IBUF \I_027_IBUF[0]_inst 
       (.I(I_027[0]),
        .O(I_027_IBUF[0]));
  IBUF \I_027_IBUF[10]_inst 
       (.I(I_027[10]),
        .O(I_027_IBUF[10]));
  IBUF \I_027_IBUF[11]_inst 
       (.I(I_027[11]),
        .O(I_027_IBUF[11]));
  IBUF \I_027_IBUF[12]_inst 
       (.I(I_027[12]),
        .O(I_027_IBUF[12]));
  IBUF \I_027_IBUF[13]_inst 
       (.I(I_027[13]),
        .O(I_027_IBUF[13]));
  IBUF \I_027_IBUF[14]_inst 
       (.I(I_027[14]),
        .O(I_027_IBUF[14]));
  IBUF \I_027_IBUF[15]_inst 
       (.I(I_027[15]),
        .O(I_027_IBUF[15]));
  IBUF \I_027_IBUF[1]_inst 
       (.I(I_027[1]),
        .O(I_027_IBUF[1]));
  IBUF \I_027_IBUF[2]_inst 
       (.I(I_027[2]),
        .O(I_027_IBUF[2]));
  IBUF \I_027_IBUF[3]_inst 
       (.I(I_027[3]),
        .O(I_027_IBUF[3]));
  IBUF \I_027_IBUF[4]_inst 
       (.I(I_027[4]),
        .O(I_027_IBUF[4]));
  IBUF \I_027_IBUF[5]_inst 
       (.I(I_027[5]),
        .O(I_027_IBUF[5]));
  IBUF \I_027_IBUF[6]_inst 
       (.I(I_027[6]),
        .O(I_027_IBUF[6]));
  IBUF \I_027_IBUF[7]_inst 
       (.I(I_027[7]),
        .O(I_027_IBUF[7]));
  IBUF \I_027_IBUF[8]_inst 
       (.I(I_027[8]),
        .O(I_027_IBUF[8]));
  IBUF \I_027_IBUF[9]_inst 
       (.I(I_027[9]),
        .O(I_027_IBUF[9]));
  IBUF \S_027_IBUF[0]_inst 
       (.I(S_027[0]),
        .O(S_027_IBUF[0]));
  IBUF \S_027_IBUF[1]_inst 
       (.I(S_027[1]),
        .O(S_027_IBUF[1]));
  IBUF \S_027_IBUF[2]_inst 
       (.I(S_027[2]),
        .O(S_027_IBUF[2]));
  IBUF \S_027_IBUF[3]_inst 
       (.I(S_027[3]),
        .O(S_027_IBUF[3]));
  OBUF Y_027_OBUF_inst
       (.I(Y_027_OBUF),
        .O(Y_027));
  MUXF8 Y_027_OBUF_inst_i_1
       (.I0(\M5/w_027 [0]),
        .I1(\M5/w_027 [1]),
        .O(Y_027_OBUF),
        .S(S_027_IBUF[3]));
  MUXF7 Y_027_OBUF_inst_i_2
       (.I0(w_027[0]),
        .I1(w_027[1]),
        .O(\M5/w_027 [0]),
        .S(S_027_IBUF[2]));
  MUXF7 Y_027_OBUF_inst_i_3
       (.I0(w_027[2]),
        .I1(w_027[3]),
        .O(\M5/w_027 [1]),
        .S(S_027_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Y_027_OBUF_inst_i_4
       (.I0(I_027_IBUF[3]),
        .I1(I_027_IBUF[2]),
        .I2(S_027_IBUF[1]),
        .I3(I_027_IBUF[1]),
        .I4(S_027_IBUF[0]),
        .I5(I_027_IBUF[0]),
        .O(w_027[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Y_027_OBUF_inst_i_5
       (.I0(I_027_IBUF[7]),
        .I1(I_027_IBUF[6]),
        .I2(S_027_IBUF[1]),
        .I3(I_027_IBUF[5]),
        .I4(S_027_IBUF[0]),
        .I5(I_027_IBUF[4]),
        .O(w_027[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Y_027_OBUF_inst_i_6
       (.I0(I_027_IBUF[11]),
        .I1(I_027_IBUF[10]),
        .I2(S_027_IBUF[1]),
        .I3(I_027_IBUF[9]),
        .I4(S_027_IBUF[0]),
        .I5(I_027_IBUF[8]),
        .O(w_027[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Y_027_OBUF_inst_i_7
       (.I0(I_027_IBUF[15]),
        .I1(I_027_IBUF[14]),
        .I2(S_027_IBUF[1]),
        .I3(I_027_IBUF[13]),
        .I4(S_027_IBUF[0]),
        .I5(I_027_IBUF[12]),
        .O(w_027[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
