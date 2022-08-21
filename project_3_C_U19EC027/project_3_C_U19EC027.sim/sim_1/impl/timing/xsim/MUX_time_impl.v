// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Aug 22 03:10:02 2022
// Host        : LAPTOP-LQCEFTQA running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Xilinx/workspace/project_3_C_U19EC027/project_3_C_U19EC027.sim/sim_1/impl/timing/xsim/MUX_time_impl.v
// Design      : MUX
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "ca43c502" *) 
(* NotValidForBitStream *)
module MUX
   (I0_027,
    I1_027,
    s0_027,
    y_027);
  input I0_027;
  input I1_027;
  input s0_027;
  output y_027;

  wire I0_027;
  wire I0_027_IBUF;
  wire I1_027;
  wire I1_027_IBUF;
  wire s0_027;
  wire s0_027_IBUF;
  wire y_027;
  wire y_027_OBUF;

initial begin
 $sdf_annotate("MUX_time_impl.sdf",,,,"tool_control");
end
  IBUF I0_027_IBUF_inst
       (.I(I0_027),
        .O(I0_027_IBUF));
  IBUF I1_027_IBUF_inst
       (.I(I1_027),
        .O(I1_027_IBUF));
  IBUF s0_027_IBUF_inst
       (.I(s0_027),
        .O(s0_027_IBUF));
  OBUF y_027_OBUF_inst
       (.I(y_027_OBUF),
        .O(y_027));
  LUT3 #(
    .INIT(8'hAC)) 
    y_027_OBUF_inst_i_1
       (.I0(I1_027_IBUF),
        .I1(I0_027_IBUF),
        .I2(s0_027_IBUF),
        .O(y_027_OBUF));
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
