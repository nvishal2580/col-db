// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Aug 21 23:26:43 2022
// Host        : LAPTOP-LQCEFTQA running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Xilinx/workspace/Project_1_U19EC027/Project_1_U19EC027.sim/sim_1/synth/timing/xsim/gates_time_synth.v
// Design      : gates
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module gates
   (a_027,
    b_027,
    c_027,
    d_027,
    e_027,
    f_027,
    g_027);
  input a_027;
  input b_027;
  output c_027;
  output d_027;
  output e_027;
  output f_027;
  output g_027;

  wire a_027;
  wire a_027_IBUF;
  wire b_027;
  wire b_027_IBUF;
  wire c_027;
  wire c_027_OBUF;
  wire d_027;
  wire d_027_OBUF;
  wire e_027;
  wire e_027_OBUF;
  wire f_027;
  wire f_027_OBUF;
  wire g_027;
  wire g_027_OBUF;

initial begin
 $sdf_annotate("gates_time_synth.sdf",,,,"tool_control");
end
  IBUF a_027_IBUF_inst
       (.I(a_027),
        .O(a_027_IBUF));
  IBUF b_027_IBUF_inst
       (.I(b_027),
        .O(b_027_IBUF));
  OBUF c_027_OBUF_inst
       (.I(c_027_OBUF),
        .O(c_027));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    c_027_OBUF_inst_i_1
       (.I0(a_027_IBUF),
        .I1(b_027_IBUF),
        .O(c_027_OBUF));
  OBUF d_027_OBUF_inst
       (.I(d_027_OBUF),
        .O(d_027));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    d_027_OBUF_inst_i_1
       (.I0(b_027_IBUF),
        .I1(a_027_IBUF),
        .O(d_027_OBUF));
  OBUF e_027_OBUF_inst
       (.I(e_027_OBUF),
        .O(e_027));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    e_027_OBUF_inst_i_1
       (.I0(b_027_IBUF),
        .I1(a_027_IBUF),
        .O(e_027_OBUF));
  OBUF f_027_OBUF_inst
       (.I(f_027_OBUF),
        .O(f_027));
  LUT2 #(
    .INIT(4'hE)) 
    f_027_OBUF_inst_i_1
       (.I0(a_027_IBUF),
        .I1(b_027_IBUF),
        .O(f_027_OBUF));
  OBUF g_027_OBUF_inst
       (.I(g_027_OBUF),
        .O(g_027));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    g_027_OBUF_inst_i_1
       (.I0(b_027_IBUF),
        .I1(a_027_IBUF),
        .O(g_027_OBUF));
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
