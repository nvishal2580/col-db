// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Aug 22 01:02:10 2022
// Host        : LAPTOP-LQCEFTQA running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Xilinx/workspace/project_2_U19EC027/project_2_U19EC027.sim/sim_1/impl/timing/xsim/full_adder_time_impl.v
// Design      : full_adder
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "41c9af59" *) 
(* NotValidForBitStream *)
module full_adder
   (A_027,
    B_027,
    Cin_027,
    S_out_027,
    C_out_027);
  input A_027;
  input B_027;
  input Cin_027;
  output S_out_027;
  output C_out_027;

  wire A_027;
  wire A_027_IBUF;
  wire B_027;
  wire B_027_IBUF;
  wire C_out_027;
  wire C_out_027_OBUF;
  wire Cin_027;
  wire Cin_027_IBUF;
  wire S_out_027;
  wire S_out_027_OBUF;

initial begin
 $sdf_annotate("full_adder_time_impl.sdf",,,,"tool_control");
end
  IBUF A_027_IBUF_inst
       (.I(A_027),
        .O(A_027_IBUF));
  IBUF B_027_IBUF_inst
       (.I(B_027),
        .O(B_027_IBUF));
  OBUF C_out_027_OBUF_inst
       (.I(C_out_027_OBUF),
        .O(C_out_027));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    C_out_027_OBUF_inst_i_1
       (.I0(Cin_027_IBUF),
        .I1(B_027_IBUF),
        .I2(A_027_IBUF),
        .O(C_out_027_OBUF));
  IBUF Cin_027_IBUF_inst
       (.I(Cin_027),
        .O(Cin_027_IBUF));
  OBUF S_out_027_OBUF_inst
       (.I(S_out_027_OBUF),
        .O(S_out_027));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    S_out_027_OBUF_inst_i_1
       (.I0(Cin_027_IBUF),
        .I1(A_027_IBUF),
        .I2(B_027_IBUF),
        .O(S_out_027_OBUF));
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
