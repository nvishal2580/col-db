// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Aug 22 01:28:11 2022
// Host        : LAPTOP-LQCEFTQA running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Xilinx/workspace/project_3/project_3.sim/sim_1/synth/timing/xsim/FA_HA_time_synth.v
// Design      : FA_HA
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module FA_HA
   (a_027,
    b_027,
    cin_027,
    s_027,
    cout_027,
    y1,
    y2,
    y3);
  input a_027;
  input b_027;
  input cin_027;
  output s_027;
  output cout_027;
  output y1;
  output y2;
  output y3;

  wire a_027;
  wire a_027_IBUF;
  wire b_027;
  wire b_027_IBUF;
  wire cin_027;
  wire cin_027_IBUF;
  wire cout_027;
  wire cout_027_OBUF;
  wire s_027;
  wire s_027_OBUF;
  wire y1;
  wire y1_OBUF;
  wire y2;
  wire y2_OBUF;
  wire y3;
  wire y3_OBUF;

initial begin
 $sdf_annotate("FA_HA_time_synth.sdf",,,,"tool_control");
end
  IBUF a_027_IBUF_inst
       (.I(a_027),
        .O(a_027_IBUF));
  IBUF b_027_IBUF_inst
       (.I(b_027),
        .O(b_027_IBUF));
  IBUF cin_027_IBUF_inst
       (.I(cin_027),
        .O(cin_027_IBUF));
  OBUF cout_027_OBUF_inst
       (.I(cout_027_OBUF),
        .O(cout_027));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    cout_027_OBUF_inst_i_1
       (.I0(cin_027_IBUF),
        .I1(b_027_IBUF),
        .I2(a_027_IBUF),
        .O(cout_027_OBUF));
  OBUF s_027_OBUF_inst
       (.I(s_027_OBUF),
        .O(s_027));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    s_027_OBUF_inst_i_1
       (.I0(cin_027_IBUF),
        .I1(a_027_IBUF),
        .I2(b_027_IBUF),
        .O(s_027_OBUF));
  OBUF y1_OBUF_inst
       (.I(y1_OBUF),
        .O(y1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    y1_OBUF_inst_i_1
       (.I0(b_027_IBUF),
        .I1(a_027_IBUF),
        .O(y1_OBUF));
  OBUF y2_OBUF_inst
       (.I(y2_OBUF),
        .O(y2));
  LUT2 #(
    .INIT(4'h8)) 
    y2_OBUF_inst_i_1
       (.I0(a_027_IBUF),
        .I1(b_027_IBUF),
        .O(y2_OBUF));
  OBUF y3_OBUF_inst
       (.I(y3_OBUF),
        .O(y3));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h60)) 
    y3_OBUF_inst_i_1
       (.I0(a_027_IBUF),
        .I1(b_027_IBUF),
        .I2(cin_027_IBUF),
        .O(y3_OBUF));
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
