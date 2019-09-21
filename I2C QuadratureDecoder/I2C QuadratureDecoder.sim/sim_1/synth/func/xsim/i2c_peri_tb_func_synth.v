// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat Sep 21 02:52:48 2019
// Host        : Urithiru running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Repos/External test Repo/I2C QuadratureDecoder/I2C
//               QuadratureDecoder.sim/sim_1/synth/func/xsim/i2c_peri_tb_func_synth.v}
// Design      : i2c_quad_decode
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module QuadratureDecoder
   (XRESET_IBUF_BUFG_inst,
    calibrated,
    Q,
    quadB1_IBUF,
    sclk_IBUF_BUFG,
    quadA1_IBUF,
    index1_IBUF,
    AR,
    XRESET_IBUF);
  output XRESET_IBUF_BUFG_inst;
  output calibrated;
  output [6:0]Q;
  input quadB1_IBUF;
  input sclk_IBUF_BUFG;
  input quadA1_IBUF;
  input index1_IBUF;
  input [0:0]AR;
  input XRESET_IBUF;

  wire [0:0]AR;
  wire Ap;
  wire Bp;
  wire [6:0]Q;
  wire XRESET_IBUF;
  wire XRESET_IBUF_BUFG_inst;
  wire calibrated;
  wire calibrated_i_1_n_0;
  wire count1;
  wire \count[0]_i_1__2_n_0 ;
  wire \count[1]_i_1__2_n_0 ;
  wire \count[2]_i_1__2_n_0 ;
  wire \count[3]_i_1__2_n_0 ;
  wire \count[3]_i_2__2_n_0 ;
  wire \count[3]_i_3__2_n_0 ;
  wire \count[4]_i_1__2_n_0 ;
  wire \count[4]_i_2__2_n_0 ;
  wire \count[4]_i_4__1_n_0 ;
  wire \count[4]_i_6__2_n_0 ;
  wire \count[4]_i_7__2_n_0 ;
  wire \count[5]_i_1__2_n_0 ;
  wire \count[6]_i_1__2_n_0 ;
  wire \count[6]_i_2__1_n_0 ;
  wire \count[6]_i_3__2_n_0 ;
  wire \count[6]_i_4__2_n_0 ;
  wire dirError;
  wire dirError1_out;
  wire dirError_reg_i_2_n_0;
  wire direction;
  wire direction_reg_C_n_0;
  wire direction_reg_LDC_i_1_n_0;
  wire direction_reg_LDC_i_2_n_0;
  wire direction_reg_LDC_n_0;
  wire direction_reg_P_n_0;
  wire fQuad;
  wire index1_IBUF;
  wire index_dly;
  wire quadA1_IBUF;
  wire [2:0]quadA_delayed;
  wire quadB1_IBUF;
  wire [2:0]quadB_delayed;
  wire sclk_IBUF_BUFG;

  LUT3 #(
    .INIT(8'hF8)) 
    calibrated_i_1
       (.I0(index1_IBUF),
        .I1(index_dly),
        .I2(calibrated),
        .O(calibrated_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    calibrated_reg
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(calibrated_i_1_n_0),
        .Q(calibrated));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00070707)) 
    \count[0]_i_1__2 
       (.I0(index_dly),
        .I1(index1_IBUF),
        .I2(Q[0]),
        .I3(\count[4]_i_6__2_n_0 ),
        .I4(\count[6]_i_3__2_n_0 ),
        .O(\count[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000355335533553)) 
    \count[1]_i_1__2 
       (.I0(\count[4]_i_6__2_n_0 ),
        .I1(direction),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(index_dly),
        .I5(index1_IBUF),
        .O(\count[1]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000444100007CCD)) 
    \count[2]_i_1__2 
       (.I0(direction),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(count1),
        .I5(\count[4]_i_6__2_n_0 ),
        .O(\count[2]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000212100002FF1)) 
    \count[3]_i_1__2 
       (.I0(\count[3]_i_2__2_n_0 ),
        .I1(direction),
        .I2(Q[3]),
        .I3(\count[3]_i_3__2_n_0 ),
        .I4(count1),
        .I5(\count[4]_i_6__2_n_0 ),
        .O(\count[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \count[3]_i_2__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\count[3]_i_2__2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \count[3]_i_3__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\count[3]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'h00000909000009FF)) 
    \count[4]_i_1__2 
       (.I0(Q[4]),
        .I1(\count[4]_i_2__2_n_0 ),
        .I2(direction),
        .I3(\count[4]_i_4__1_n_0 ),
        .I4(count1),
        .I5(\count[4]_i_6__2_n_0 ),
        .O(\count[4]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[4]_i_2__2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\count[4]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[4]_i_3__2 
       (.I0(direction_reg_P_n_0),
        .I1(direction_reg_LDC_n_0),
        .I2(direction_reg_C_n_0),
        .O(direction));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h15555555)) 
    \count[4]_i_4__1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count[4]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[4]_i_5 
       (.I0(index_dly),
        .I1(index1_IBUF),
        .O(count1));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \count[4]_i_6__2 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\count[4]_i_7__2_n_0 ),
        .O(\count[4]_i_6__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hEEEFFFEF)) 
    \count[4]_i_7__2 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(direction_reg_C_n_0),
        .I3(direction_reg_LDC_n_0),
        .I4(direction_reg_P_n_0),
        .O(\count[4]_i_7__2_n_0 ));
  LUT5 #(
    .INIT(32'h00151500)) 
    \count[5]_i_1__2 
       (.I0(\count[6]_i_3__2_n_0 ),
        .I1(index_dly),
        .I2(index1_IBUF),
        .I3(\count[6]_i_2__1_n_0 ),
        .I4(Q[5]),
        .O(\count[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h000000D200D200D2)) 
    \count[6]_i_1__2 
       (.I0(\count[6]_i_2__1_n_0 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(\count[6]_i_3__2_n_0 ),
        .I4(index_dly),
        .I5(index1_IBUF),
        .O(\count[6]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \count[6]_i_2__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\count[6]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hE2E2E2FF)) 
    \count[6]_i_3__2 
       (.I0(direction_reg_C_n_0),
        .I1(direction_reg_LDC_n_0),
        .I2(direction_reg_P_n_0),
        .I3(\count[6]_i_4__2_n_0 ),
        .I4(Q[0]),
        .O(\count[6]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count[6]_i_4__2 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\count[6]_i_4__2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[0]_i_1__2_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[1]_i_1__2_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[2]_i_1__2_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[3]_i_1__2_n_0 ),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[4]_i_1__2_n_0 ),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[5]_i_1__2_n_0 ),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[6]_i_1__2_n_0 ),
        .Q(Q[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    dirError_reg
       (.CLR(1'b0),
        .D(dirError1_out),
        .G(dirError_reg_i_2_n_0),
        .GE(1'b1),
        .Q(dirError));
  LUT6 #(
    .INIT(64'h004F0007000E002F)) 
    dirError_reg_i_1
       (.I0(quadA1_IBUF),
        .I1(quadA_delayed[0]),
        .I2(dirError),
        .I3(XRESET_IBUF),
        .I4(quadB1_IBUF),
        .I5(quadB_delayed[0]),
        .O(dirError1_out));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFFFF0BD0)) 
    dirError_reg_i_2
       (.I0(quadA_delayed[0]),
        .I1(quadB_delayed[0]),
        .I2(quadA1_IBUF),
        .I3(quadB1_IBUF),
        .I4(XRESET_IBUF),
        .O(dirError_reg_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    direction_reg_C
       (.C(sclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(direction_reg_LDC_i_2_n_0),
        .D(dirError),
        .Q(direction_reg_C_n_0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    direction_reg_LDC
       (.CLR(direction_reg_LDC_i_2_n_0),
        .D(1'b1),
        .G(direction_reg_LDC_i_1_n_0),
        .GE(1'b1),
        .Q(direction_reg_LDC_n_0));
  LUT6 #(
    .INIT(64'h1111100010001000)) 
    direction_reg_LDC_i_1
       (.I0(dirError),
        .I1(XRESET_IBUF),
        .I2(quadA_delayed[2]),
        .I3(quadA_delayed[1]),
        .I4(quadB_delayed[2]),
        .I5(quadB_delayed[1]),
        .O(direction_reg_LDC_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    direction_reg_LDC_i_2
       (.I0(XRESET_IBUF),
        .I1(quadB_delayed[1]),
        .I2(quadB_delayed[2]),
        .I3(quadA_delayed[1]),
        .I4(quadA_delayed[2]),
        .I5(dirError),
        .O(direction_reg_LDC_i_2_n_0));
  FDPE #(
    .INIT(1'b1)) 
    direction_reg_P
       (.C(sclk_IBUF_BUFG),
        .CE(1'b1),
        .D(dirError),
        .PRE(direction_reg_LDC_i_1_n_0),
        .Q(direction_reg_P_n_0));
  FDCE #(
    .INIT(1'b0)) 
    index_dly_reg
       (.C(sclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(index1_IBUF),
        .Q(index_dly));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \quadA_delayed[1]_i_1 
       (.I0(quadA_delayed[0]),
        .I1(quadA1_IBUF),
        .O(Ap));
  FDRE #(
    .INIT(1'b0)) 
    \quadA_delayed_reg[0] 
       (.C(sclk_IBUF_BUFG),
        .CE(XRESET_IBUF_BUFG_inst),
        .D(quadA1_IBUF),
        .Q(quadA_delayed[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadA_delayed_reg[1] 
       (.C(fQuad),
        .CE(XRESET_IBUF_BUFG_inst),
        .D(Ap),
        .Q(quadA_delayed[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadA_delayed_reg[2] 
       (.C(fQuad),
        .CE(XRESET_IBUF_BUFG_inst),
        .D(quadA_delayed[1]),
        .Q(quadA_delayed[2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \quadB_delayed[1]_i_1 
       (.I0(quadB_delayed[0]),
        .I1(quadB1_IBUF),
        .O(Bp));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \quadB_delayed[2]_i_1 
       (.I0(quadB1_IBUF),
        .I1(quadB_delayed[0]),
        .I2(quadA1_IBUF),
        .I3(quadA_delayed[0]),
        .O(fQuad));
  FDRE #(
    .INIT(1'b0)) 
    \quadB_delayed_reg[0] 
       (.C(sclk_IBUF_BUFG),
        .CE(XRESET_IBUF_BUFG_inst),
        .D(quadB1_IBUF),
        .Q(quadB_delayed[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadB_delayed_reg[1] 
       (.C(fQuad),
        .CE(XRESET_IBUF_BUFG_inst),
        .D(Bp),
        .Q(quadB_delayed[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadB_delayed_reg[2] 
       (.C(fQuad),
        .CE(XRESET_IBUF_BUFG_inst),
        .D(quadB_delayed[1]),
        .Q(quadB_delayed[2]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    sda_f_reg_i_1
       (.I0(AR),
        .O(XRESET_IBUF_BUFG_inst));
endmodule

(* ORIG_REF_NAME = "QuadratureDecoder" *) 
module QuadratureDecoder_0
   (calibrated_reg_0,
    Q,
    \quadA_delayed_reg[1]_0 ,
    quadB2_IBUF,
    sclk_IBUF_BUFG,
    quadA2_IBUF,
    index2_IBUF,
    AR,
    XRESET_IBUF);
  output calibrated_reg_0;
  output [6:0]Q;
  input \quadA_delayed_reg[1]_0 ;
  input quadB2_IBUF;
  input sclk_IBUF_BUFG;
  input quadA2_IBUF;
  input index2_IBUF;
  input [0:0]AR;
  input XRESET_IBUF;

  wire [0:0]AR;
  wire Ap;
  wire Bp;
  wire [6:0]Q;
  wire XRESET_IBUF;
  wire calibrated_i_1__0_n_0;
  wire calibrated_reg_0;
  wire count1;
  wire \count[0]_i_1__1_n_0 ;
  wire \count[1]_i_1__1_n_0 ;
  wire \count[2]_i_1__1_n_0 ;
  wire \count[3]_i_1__1_n_0 ;
  wire \count[3]_i_2__1_n_0 ;
  wire \count[3]_i_3__1_n_0 ;
  wire \count[4]_i_1__1_n_0 ;
  wire \count[4]_i_2__1_n_0 ;
  wire \count[4]_i_3__1_n_0 ;
  wire \count[4]_i_4__0_n_0 ;
  wire \count[4]_i_6__1_n_0 ;
  wire \count[4]_i_7__1_n_0 ;
  wire \count[5]_i_1__1_n_0 ;
  wire \count[6]_i_1__1_n_0 ;
  wire \count[6]_i_2__0_n_0 ;
  wire \count[6]_i_3__1_n_0 ;
  wire \count[6]_i_4__1_n_0 ;
  wire dirError;
  wire dirError1_out;
  wire dirError_reg_i_2__0_n_0;
  wire direction_reg_C_n_0;
  wire direction_reg_LDC_i_1__0_n_0;
  wire direction_reg_LDC_i_2__0_n_0;
  wire direction_reg_LDC_n_0;
  wire direction_reg_P_n_0;
  wire fQuad;
  wire index2_IBUF;
  wire index_dly;
  wire quadA2_IBUF;
  wire [2:0]quadA_delayed;
  wire \quadA_delayed_reg[1]_0 ;
  wire quadB2_IBUF;
  wire [2:0]quadB_delayed;
  wire sclk_IBUF_BUFG;

  LUT3 #(
    .INIT(8'hF8)) 
    calibrated_i_1__0
       (.I0(index2_IBUF),
        .I1(index_dly),
        .I2(calibrated_reg_0),
        .O(calibrated_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    calibrated_reg
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(calibrated_i_1__0_n_0),
        .Q(calibrated_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00070707)) 
    \count[0]_i_1__1 
       (.I0(index_dly),
        .I1(index2_IBUF),
        .I2(Q[0]),
        .I3(\count[4]_i_6__1_n_0 ),
        .I4(\count[6]_i_3__1_n_0 ),
        .O(\count[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000355335533553)) 
    \count[1]_i_1__1 
       (.I0(\count[4]_i_6__1_n_0 ),
        .I1(\count[4]_i_3__1_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(index_dly),
        .I5(index2_IBUF),
        .O(\count[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000444100007CCD)) 
    \count[2]_i_1__1 
       (.I0(\count[4]_i_3__1_n_0 ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(count1),
        .I5(\count[4]_i_6__1_n_0 ),
        .O(\count[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000212100002FF1)) 
    \count[3]_i_1__1 
       (.I0(\count[3]_i_2__1_n_0 ),
        .I1(\count[4]_i_3__1_n_0 ),
        .I2(Q[3]),
        .I3(\count[3]_i_3__1_n_0 ),
        .I4(count1),
        .I5(\count[4]_i_6__1_n_0 ),
        .O(\count[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \count[3]_i_2__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\count[3]_i_2__1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \count[3]_i_3__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\count[3]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h00000909000009FF)) 
    \count[4]_i_1__1 
       (.I0(Q[4]),
        .I1(\count[4]_i_2__1_n_0 ),
        .I2(\count[4]_i_3__1_n_0 ),
        .I3(\count[4]_i_4__0_n_0 ),
        .I4(count1),
        .I5(\count[4]_i_6__1_n_0 ),
        .O(\count[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[4]_i_2__1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\count[4]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[4]_i_3__1 
       (.I0(direction_reg_P_n_0),
        .I1(direction_reg_LDC_n_0),
        .I2(direction_reg_C_n_0),
        .O(\count[4]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h15555555)) 
    \count[4]_i_4__0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count[4]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[4]_i_5__0 
       (.I0(index_dly),
        .I1(index2_IBUF),
        .O(count1));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \count[4]_i_6__1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\count[4]_i_7__1_n_0 ),
        .O(\count[4]_i_6__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hEEEFFFEF)) 
    \count[4]_i_7__1 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(direction_reg_C_n_0),
        .I3(direction_reg_LDC_n_0),
        .I4(direction_reg_P_n_0),
        .O(\count[4]_i_7__1_n_0 ));
  LUT5 #(
    .INIT(32'h00151500)) 
    \count[5]_i_1__1 
       (.I0(\count[6]_i_3__1_n_0 ),
        .I1(index_dly),
        .I2(index2_IBUF),
        .I3(\count[6]_i_2__0_n_0 ),
        .I4(Q[5]),
        .O(\count[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h000000D200D200D2)) 
    \count[6]_i_1__1 
       (.I0(\count[6]_i_2__0_n_0 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(\count[6]_i_3__1_n_0 ),
        .I4(index_dly),
        .I5(index2_IBUF),
        .O(\count[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \count[6]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\count[6]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hE2E2E2FF)) 
    \count[6]_i_3__1 
       (.I0(direction_reg_C_n_0),
        .I1(direction_reg_LDC_n_0),
        .I2(direction_reg_P_n_0),
        .I3(\count[6]_i_4__1_n_0 ),
        .I4(Q[0]),
        .O(\count[6]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count[6]_i_4__1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\count[6]_i_4__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[0]_i_1__1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[1]_i_1__1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[2]_i_1__1_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[3]_i_1__1_n_0 ),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[4]_i_1__1_n_0 ),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[5]_i_1__1_n_0 ),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[6]_i_1__1_n_0 ),
        .Q(Q[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    dirError_reg
       (.CLR(1'b0),
        .D(dirError1_out),
        .G(dirError_reg_i_2__0_n_0),
        .GE(1'b1),
        .Q(dirError));
  LUT6 #(
    .INIT(64'h004F0007000E002F)) 
    dirError_reg_i_1__0
       (.I0(quadA2_IBUF),
        .I1(quadA_delayed[0]),
        .I2(dirError),
        .I3(XRESET_IBUF),
        .I4(quadB2_IBUF),
        .I5(quadB_delayed[0]),
        .O(dirError1_out));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hFFFF0BD0)) 
    dirError_reg_i_2__0
       (.I0(quadA_delayed[0]),
        .I1(quadB_delayed[0]),
        .I2(quadA2_IBUF),
        .I3(quadB2_IBUF),
        .I4(XRESET_IBUF),
        .O(dirError_reg_i_2__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    direction_reg_C
       (.C(sclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(direction_reg_LDC_i_2__0_n_0),
        .D(dirError),
        .Q(direction_reg_C_n_0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    direction_reg_LDC
       (.CLR(direction_reg_LDC_i_2__0_n_0),
        .D(1'b1),
        .G(direction_reg_LDC_i_1__0_n_0),
        .GE(1'b1),
        .Q(direction_reg_LDC_n_0));
  LUT6 #(
    .INIT(64'h1111100010001000)) 
    direction_reg_LDC_i_1__0
       (.I0(dirError),
        .I1(XRESET_IBUF),
        .I2(quadA_delayed[2]),
        .I3(quadA_delayed[1]),
        .I4(quadB_delayed[2]),
        .I5(quadB_delayed[1]),
        .O(direction_reg_LDC_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    direction_reg_LDC_i_2__0
       (.I0(XRESET_IBUF),
        .I1(quadB_delayed[1]),
        .I2(quadB_delayed[2]),
        .I3(quadA_delayed[1]),
        .I4(quadA_delayed[2]),
        .I5(dirError),
        .O(direction_reg_LDC_i_2__0_n_0));
  FDPE #(
    .INIT(1'b1)) 
    direction_reg_P
       (.C(sclk_IBUF_BUFG),
        .CE(1'b1),
        .D(dirError),
        .PRE(direction_reg_LDC_i_1__0_n_0),
        .Q(direction_reg_P_n_0));
  FDCE #(
    .INIT(1'b0)) 
    index_dly_reg
       (.C(sclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(index2_IBUF),
        .Q(index_dly));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \quadA_delayed[1]_i_1__0 
       (.I0(quadA_delayed[0]),
        .I1(quadA2_IBUF),
        .O(Ap));
  FDRE #(
    .INIT(1'b0)) 
    \quadA_delayed_reg[0] 
       (.C(sclk_IBUF_BUFG),
        .CE(\quadA_delayed_reg[1]_0 ),
        .D(quadA2_IBUF),
        .Q(quadA_delayed[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadA_delayed_reg[1] 
       (.C(fQuad),
        .CE(\quadA_delayed_reg[1]_0 ),
        .D(Ap),
        .Q(quadA_delayed[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadA_delayed_reg[2] 
       (.C(fQuad),
        .CE(\quadA_delayed_reg[1]_0 ),
        .D(quadA_delayed[1]),
        .Q(quadA_delayed[2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \quadB_delayed[1]_i_1__0 
       (.I0(quadB_delayed[0]),
        .I1(quadB2_IBUF),
        .O(Bp));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \quadB_delayed[2]_i_1__0 
       (.I0(quadB2_IBUF),
        .I1(quadB_delayed[0]),
        .I2(quadA2_IBUF),
        .I3(quadA_delayed[0]),
        .O(fQuad));
  FDRE #(
    .INIT(1'b0)) 
    \quadB_delayed_reg[0] 
       (.C(sclk_IBUF_BUFG),
        .CE(\quadA_delayed_reg[1]_0 ),
        .D(quadB2_IBUF),
        .Q(quadB_delayed[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadB_delayed_reg[1] 
       (.C(fQuad),
        .CE(\quadA_delayed_reg[1]_0 ),
        .D(Bp),
        .Q(quadB_delayed[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadB_delayed_reg[2] 
       (.C(fQuad),
        .CE(\quadA_delayed_reg[1]_0 ),
        .D(quadB_delayed[1]),
        .Q(quadB_delayed[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "QuadratureDecoder" *) 
module QuadratureDecoder_1
   (calibrated_reg_0,
    Q,
    \quadA_delayed_reg[1]_0 ,
    quadB3_IBUF,
    sclk_IBUF_BUFG,
    quadA3_IBUF,
    index3_IBUF,
    AR,
    XRESET_IBUF);
  output calibrated_reg_0;
  output [6:0]Q;
  input \quadA_delayed_reg[1]_0 ;
  input quadB3_IBUF;
  input sclk_IBUF_BUFG;
  input quadA3_IBUF;
  input index3_IBUF;
  input [0:0]AR;
  input XRESET_IBUF;

  wire [0:0]AR;
  wire Ap;
  wire Bp;
  wire [6:0]Q;
  wire XRESET_IBUF;
  wire calibrated_i_1__1_n_0;
  wire calibrated_reg_0;
  wire count1;
  wire \count[0]_i_1__0_n_0 ;
  wire \count[1]_i_1__0_n_0 ;
  wire \count[2]_i_1__0_n_0 ;
  wire \count[3]_i_1__0_n_0 ;
  wire \count[3]_i_2__0_n_0 ;
  wire \count[3]_i_3__0_n_0 ;
  wire \count[4]_i_1__0_n_0 ;
  wire \count[4]_i_2__0_n_0 ;
  wire \count[4]_i_3__0_n_0 ;
  wire \count[4]_i_4__2_n_0 ;
  wire \count[4]_i_6__0_n_0 ;
  wire \count[4]_i_7__0_n_0 ;
  wire \count[5]_i_1__0_n_0 ;
  wire \count[6]_i_1__0_n_0 ;
  wire \count[6]_i_2__2_n_0 ;
  wire \count[6]_i_3__0_n_0 ;
  wire \count[6]_i_4__0_n_0 ;
  wire dirError;
  wire dirError1_out;
  wire dirError_reg_i_2__1_n_0;
  wire direction_reg_C_n_0;
  wire direction_reg_LDC_i_1__1_n_0;
  wire direction_reg_LDC_i_2__1_n_0;
  wire direction_reg_LDC_n_0;
  wire direction_reg_P_n_0;
  wire fQuad;
  wire index3_IBUF;
  wire index_dly;
  wire quadA3_IBUF;
  wire [2:0]quadA_delayed;
  wire \quadA_delayed_reg[1]_0 ;
  wire quadB3_IBUF;
  wire [2:0]quadB_delayed;
  wire sclk_IBUF_BUFG;

  LUT3 #(
    .INIT(8'hF8)) 
    calibrated_i_1__1
       (.I0(index3_IBUF),
        .I1(index_dly),
        .I2(calibrated_reg_0),
        .O(calibrated_i_1__1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    calibrated_reg
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(calibrated_i_1__1_n_0),
        .Q(calibrated_reg_0));
  LUT5 #(
    .INIT(32'h00070707)) 
    \count[0]_i_1__0 
       (.I0(index_dly),
        .I1(index3_IBUF),
        .I2(Q[0]),
        .I3(\count[4]_i_6__0_n_0 ),
        .I4(\count[6]_i_3__0_n_0 ),
        .O(\count[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000355335533553)) 
    \count[1]_i_1__0 
       (.I0(\count[4]_i_6__0_n_0 ),
        .I1(\count[4]_i_3__0_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(index_dly),
        .I5(index3_IBUF),
        .O(\count[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000444100007CCD)) 
    \count[2]_i_1__0 
       (.I0(\count[4]_i_3__0_n_0 ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(count1),
        .I5(\count[4]_i_6__0_n_0 ),
        .O(\count[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000212100002FF1)) 
    \count[3]_i_1__0 
       (.I0(\count[3]_i_2__0_n_0 ),
        .I1(\count[4]_i_3__0_n_0 ),
        .I2(Q[3]),
        .I3(\count[3]_i_3__0_n_0 ),
        .I4(count1),
        .I5(\count[4]_i_6__0_n_0 ),
        .O(\count[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \count[3]_i_2__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\count[3]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \count[3]_i_3__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\count[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000909000009FF)) 
    \count[4]_i_1__0 
       (.I0(Q[4]),
        .I1(\count[4]_i_2__0_n_0 ),
        .I2(\count[4]_i_3__0_n_0 ),
        .I3(\count[4]_i_4__2_n_0 ),
        .I4(count1),
        .I5(\count[4]_i_6__0_n_0 ),
        .O(\count[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[4]_i_2__0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\count[4]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[4]_i_3__0 
       (.I0(direction_reg_P_n_0),
        .I1(direction_reg_LDC_n_0),
        .I2(direction_reg_C_n_0),
        .O(\count[4]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h15555555)) 
    \count[4]_i_4__2 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count[4]_i_4__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[4]_i_5__1 
       (.I0(index_dly),
        .I1(index3_IBUF),
        .O(count1));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \count[4]_i_6__0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\count[4]_i_7__0_n_0 ),
        .O(\count[4]_i_6__0_n_0 ));
  LUT5 #(
    .INIT(32'hEEEFFFEF)) 
    \count[4]_i_7__0 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(direction_reg_C_n_0),
        .I3(direction_reg_LDC_n_0),
        .I4(direction_reg_P_n_0),
        .O(\count[4]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h00151500)) 
    \count[5]_i_1__0 
       (.I0(\count[6]_i_3__0_n_0 ),
        .I1(index_dly),
        .I2(index3_IBUF),
        .I3(\count[6]_i_2__2_n_0 ),
        .I4(Q[5]),
        .O(\count[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h000000D200D200D2)) 
    \count[6]_i_1__0 
       (.I0(\count[6]_i_2__2_n_0 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(\count[6]_i_3__0_n_0 ),
        .I4(index_dly),
        .I5(index3_IBUF),
        .O(\count[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \count[6]_i_2__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\count[6]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hE2E2E2FF)) 
    \count[6]_i_3__0 
       (.I0(direction_reg_C_n_0),
        .I1(direction_reg_LDC_n_0),
        .I2(direction_reg_P_n_0),
        .I3(\count[6]_i_4__0_n_0 ),
        .I4(Q[0]),
        .O(\count[6]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count[6]_i_4__0 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\count[6]_i_4__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[0]_i_1__0_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[1]_i_1__0_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[2]_i_1__0_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[3]_i_1__0_n_0 ),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[4]_i_1__0_n_0 ),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[5]_i_1__0_n_0 ),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[6]_i_1__0_n_0 ),
        .Q(Q[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    dirError_reg
       (.CLR(1'b0),
        .D(dirError1_out),
        .G(dirError_reg_i_2__1_n_0),
        .GE(1'b1),
        .Q(dirError));
  LUT6 #(
    .INIT(64'h004F0007000E002F)) 
    dirError_reg_i_1__1
       (.I0(quadA3_IBUF),
        .I1(quadA_delayed[0]),
        .I2(dirError),
        .I3(XRESET_IBUF),
        .I4(quadB3_IBUF),
        .I5(quadB_delayed[0]),
        .O(dirError1_out));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hFFFF0BD0)) 
    dirError_reg_i_2__1
       (.I0(quadA_delayed[0]),
        .I1(quadB_delayed[0]),
        .I2(quadA3_IBUF),
        .I3(quadB3_IBUF),
        .I4(XRESET_IBUF),
        .O(dirError_reg_i_2__1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    direction_reg_C
       (.C(sclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(direction_reg_LDC_i_2__1_n_0),
        .D(dirError),
        .Q(direction_reg_C_n_0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    direction_reg_LDC
       (.CLR(direction_reg_LDC_i_2__1_n_0),
        .D(1'b1),
        .G(direction_reg_LDC_i_1__1_n_0),
        .GE(1'b1),
        .Q(direction_reg_LDC_n_0));
  LUT6 #(
    .INIT(64'h1111100010001000)) 
    direction_reg_LDC_i_1__1
       (.I0(dirError),
        .I1(XRESET_IBUF),
        .I2(quadA_delayed[2]),
        .I3(quadA_delayed[1]),
        .I4(quadB_delayed[2]),
        .I5(quadB_delayed[1]),
        .O(direction_reg_LDC_i_1__1_n_0));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    direction_reg_LDC_i_2__1
       (.I0(XRESET_IBUF),
        .I1(quadB_delayed[1]),
        .I2(quadB_delayed[2]),
        .I3(quadA_delayed[1]),
        .I4(quadA_delayed[2]),
        .I5(dirError),
        .O(direction_reg_LDC_i_2__1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    direction_reg_P
       (.C(sclk_IBUF_BUFG),
        .CE(1'b1),
        .D(dirError),
        .PRE(direction_reg_LDC_i_1__1_n_0),
        .Q(direction_reg_P_n_0));
  FDCE #(
    .INIT(1'b0)) 
    index_dly_reg
       (.C(sclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(index3_IBUF),
        .Q(index_dly));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \quadA_delayed[1]_i_1__1 
       (.I0(quadA_delayed[0]),
        .I1(quadA3_IBUF),
        .O(Ap));
  FDRE #(
    .INIT(1'b0)) 
    \quadA_delayed_reg[0] 
       (.C(sclk_IBUF_BUFG),
        .CE(\quadA_delayed_reg[1]_0 ),
        .D(quadA3_IBUF),
        .Q(quadA_delayed[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadA_delayed_reg[1] 
       (.C(fQuad),
        .CE(\quadA_delayed_reg[1]_0 ),
        .D(Ap),
        .Q(quadA_delayed[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadA_delayed_reg[2] 
       (.C(fQuad),
        .CE(\quadA_delayed_reg[1]_0 ),
        .D(quadA_delayed[1]),
        .Q(quadA_delayed[2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \quadB_delayed[1]_i_1__1 
       (.I0(quadB_delayed[0]),
        .I1(quadB3_IBUF),
        .O(Bp));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \quadB_delayed[2]_i_1__1 
       (.I0(quadB3_IBUF),
        .I1(quadB_delayed[0]),
        .I2(quadA3_IBUF),
        .I3(quadA_delayed[0]),
        .O(fQuad));
  FDRE #(
    .INIT(1'b0)) 
    \quadB_delayed_reg[0] 
       (.C(sclk_IBUF_BUFG),
        .CE(\quadA_delayed_reg[1]_0 ),
        .D(quadB3_IBUF),
        .Q(quadB_delayed[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadB_delayed_reg[1] 
       (.C(fQuad),
        .CE(\quadA_delayed_reg[1]_0 ),
        .D(Bp),
        .Q(quadB_delayed[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadB_delayed_reg[2] 
       (.C(fQuad),
        .CE(\quadA_delayed_reg[1]_0 ),
        .D(quadB_delayed[1]),
        .Q(quadB_delayed[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "QuadratureDecoder" *) 
module QuadratureDecoder_2
   (calibrated_reg_0,
    Q,
    \quadA_delayed_reg[1]_0 ,
    quadB4_IBUF,
    sclk_IBUF_BUFG,
    quadA4_IBUF,
    index4_IBUF,
    AR,
    XRESET_IBUF);
  output calibrated_reg_0;
  output [6:0]Q;
  input \quadA_delayed_reg[1]_0 ;
  input quadB4_IBUF;
  input sclk_IBUF_BUFG;
  input quadA4_IBUF;
  input index4_IBUF;
  input [0:0]AR;
  input XRESET_IBUF;

  wire [0:0]AR;
  wire Ap;
  wire Bp;
  wire [6:0]Q;
  wire XRESET_IBUF;
  wire calibrated_i_1__2_n_0;
  wire calibrated_reg_0;
  wire count1;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[3]_i_2_n_0 ;
  wire \count[3]_i_3_n_0 ;
  wire \count[4]_i_1_n_0 ;
  wire \count[4]_i_2_n_0 ;
  wire \count[4]_i_3_n_0 ;
  wire \count[4]_i_4_n_0 ;
  wire \count[4]_i_6_n_0 ;
  wire \count[4]_i_7_n_0 ;
  wire \count[5]_i_1_n_0 ;
  wire \count[6]_i_1_n_0 ;
  wire \count[6]_i_2_n_0 ;
  wire \count[6]_i_3_n_0 ;
  wire \count[6]_i_4_n_0 ;
  wire dirError;
  wire dirError1_out;
  wire dirError_reg_i_2__2_n_0;
  wire direction_reg_C_n_0;
  wire direction_reg_LDC_i_1__2_n_0;
  wire direction_reg_LDC_i_2__2_n_0;
  wire direction_reg_LDC_n_0;
  wire direction_reg_P_n_0;
  wire fQuad;
  wire index4_IBUF;
  wire index_dly;
  wire quadA4_IBUF;
  wire [2:0]quadA_delayed;
  wire \quadA_delayed_reg[1]_0 ;
  wire quadB4_IBUF;
  wire [2:0]quadB_delayed;
  wire sclk_IBUF_BUFG;

  LUT3 #(
    .INIT(8'hF8)) 
    calibrated_i_1__2
       (.I0(index4_IBUF),
        .I1(index_dly),
        .I2(calibrated_reg_0),
        .O(calibrated_i_1__2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    calibrated_reg
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(calibrated_i_1__2_n_0),
        .Q(calibrated_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h00070707)) 
    \count[0]_i_1 
       (.I0(index_dly),
        .I1(index4_IBUF),
        .I2(Q[0]),
        .I3(\count[4]_i_6_n_0 ),
        .I4(\count[6]_i_3_n_0 ),
        .O(\count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000355335533553)) 
    \count[1]_i_1 
       (.I0(\count[4]_i_6_n_0 ),
        .I1(\count[4]_i_3_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(index_dly),
        .I5(index4_IBUF),
        .O(\count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000444100007CCD)) 
    \count[2]_i_1 
       (.I0(\count[4]_i_3_n_0 ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(count1),
        .I5(\count[4]_i_6_n_0 ),
        .O(\count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000212100002FF1)) 
    \count[3]_i_1 
       (.I0(\count[3]_i_2_n_0 ),
        .I1(\count[4]_i_3_n_0 ),
        .I2(Q[3]),
        .I3(\count[3]_i_3_n_0 ),
        .I4(count1),
        .I5(\count[4]_i_6_n_0 ),
        .O(\count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \count[3]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\count[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \count[3]_i_3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\count[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000909000009FF)) 
    \count[4]_i_1 
       (.I0(Q[4]),
        .I1(\count[4]_i_2_n_0 ),
        .I2(\count[4]_i_3_n_0 ),
        .I3(\count[4]_i_4_n_0 ),
        .I4(count1),
        .I5(\count[4]_i_6_n_0 ),
        .O(\count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[4]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\count[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[4]_i_3 
       (.I0(direction_reg_P_n_0),
        .I1(direction_reg_LDC_n_0),
        .I2(direction_reg_C_n_0),
        .O(\count[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h15555555)) 
    \count[4]_i_4 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[4]_i_5__2 
       (.I0(index_dly),
        .I1(index4_IBUF),
        .O(count1));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \count[4]_i_6 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\count[4]_i_7_n_0 ),
        .O(\count[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hEEEFFFEF)) 
    \count[4]_i_7 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(direction_reg_C_n_0),
        .I3(direction_reg_LDC_n_0),
        .I4(direction_reg_P_n_0),
        .O(\count[4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00151500)) 
    \count[5]_i_1 
       (.I0(\count[6]_i_3_n_0 ),
        .I1(index_dly),
        .I2(index4_IBUF),
        .I3(\count[6]_i_2_n_0 ),
        .I4(Q[5]),
        .O(\count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000D200D200D2)) 
    \count[6]_i_1 
       (.I0(\count[6]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(\count[6]_i_3_n_0 ),
        .I4(index_dly),
        .I5(index4_IBUF),
        .O(\count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \count[6]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\count[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE2E2E2FF)) 
    \count[6]_i_3 
       (.I0(direction_reg_C_n_0),
        .I1(direction_reg_LDC_n_0),
        .I2(direction_reg_P_n_0),
        .I3(\count[6]_i_4_n_0 ),
        .I4(Q[0]),
        .O(\count[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count[6]_i_4 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\count[6]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[3]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[4]_i_1_n_0 ),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[5]_i_1_n_0 ),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(fQuad),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[6]_i_1_n_0 ),
        .Q(Q[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    dirError_reg
       (.CLR(1'b0),
        .D(dirError1_out),
        .G(dirError_reg_i_2__2_n_0),
        .GE(1'b1),
        .Q(dirError));
  LUT6 #(
    .INIT(64'h004F0007000E002F)) 
    dirError_reg_i_1__2
       (.I0(quadA4_IBUF),
        .I1(quadA_delayed[0]),
        .I2(dirError),
        .I3(XRESET_IBUF),
        .I4(quadB4_IBUF),
        .I5(quadB_delayed[0]),
        .O(dirError1_out));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hFFFF0BD0)) 
    dirError_reg_i_2__2
       (.I0(quadA_delayed[0]),
        .I1(quadB_delayed[0]),
        .I2(quadA4_IBUF),
        .I3(quadB4_IBUF),
        .I4(XRESET_IBUF),
        .O(dirError_reg_i_2__2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    direction_reg_C
       (.C(sclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(direction_reg_LDC_i_2__2_n_0),
        .D(dirError),
        .Q(direction_reg_C_n_0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    direction_reg_LDC
       (.CLR(direction_reg_LDC_i_2__2_n_0),
        .D(1'b1),
        .G(direction_reg_LDC_i_1__2_n_0),
        .GE(1'b1),
        .Q(direction_reg_LDC_n_0));
  LUT6 #(
    .INIT(64'h1111100010001000)) 
    direction_reg_LDC_i_1__2
       (.I0(dirError),
        .I1(XRESET_IBUF),
        .I2(quadA_delayed[2]),
        .I3(quadA_delayed[1]),
        .I4(quadB_delayed[2]),
        .I5(quadB_delayed[1]),
        .O(direction_reg_LDC_i_1__2_n_0));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    direction_reg_LDC_i_2__2
       (.I0(XRESET_IBUF),
        .I1(quadB_delayed[1]),
        .I2(quadB_delayed[2]),
        .I3(quadA_delayed[1]),
        .I4(quadA_delayed[2]),
        .I5(dirError),
        .O(direction_reg_LDC_i_2__2_n_0));
  FDPE #(
    .INIT(1'b1)) 
    direction_reg_P
       (.C(sclk_IBUF_BUFG),
        .CE(1'b1),
        .D(dirError),
        .PRE(direction_reg_LDC_i_1__2_n_0),
        .Q(direction_reg_P_n_0));
  FDCE #(
    .INIT(1'b0)) 
    index_dly_reg
       (.C(sclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(index4_IBUF),
        .Q(index_dly));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \quadA_delayed[1]_i_1__2 
       (.I0(quadA_delayed[0]),
        .I1(quadA4_IBUF),
        .O(Ap));
  FDRE #(
    .INIT(1'b0)) 
    \quadA_delayed_reg[0] 
       (.C(sclk_IBUF_BUFG),
        .CE(\quadA_delayed_reg[1]_0 ),
        .D(quadA4_IBUF),
        .Q(quadA_delayed[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadA_delayed_reg[1] 
       (.C(fQuad),
        .CE(\quadA_delayed_reg[1]_0 ),
        .D(Ap),
        .Q(quadA_delayed[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadA_delayed_reg[2] 
       (.C(fQuad),
        .CE(\quadA_delayed_reg[1]_0 ),
        .D(quadA_delayed[1]),
        .Q(quadA_delayed[2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \quadB_delayed[1]_i_1__2 
       (.I0(quadB_delayed[0]),
        .I1(quadB4_IBUF),
        .O(Bp));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \quadB_delayed[2]_i_1__2 
       (.I0(quadB4_IBUF),
        .I1(quadB_delayed[0]),
        .I2(quadA4_IBUF),
        .I3(quadA_delayed[0]),
        .O(fQuad));
  FDRE #(
    .INIT(1'b0)) 
    \quadB_delayed_reg[0] 
       (.C(sclk_IBUF_BUFG),
        .CE(\quadA_delayed_reg[1]_0 ),
        .D(quadB4_IBUF),
        .Q(quadB_delayed[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadB_delayed_reg[1] 
       (.C(fQuad),
        .CE(\quadA_delayed_reg[1]_0 ),
        .D(Bp),
        .Q(quadB_delayed[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadB_delayed_reg[2] 
       (.C(fQuad),
        .CE(\quadA_delayed_reg[1]_0 ),
        .D(quadB_delayed[1]),
        .Q(quadB_delayed[2]),
        .R(1'b0));
endmodule

(* data_width = "8" *) (* num_data = "8" *) 
(* NotValidForBitStream *)
module i2c_quad_decode
   (XRESET,
    sclk,
    sda,
    scl,
    quadA1,
    quadB1,
    index1,
    quadA2,
    quadB2,
    index2,
    quadA3,
    quadB3,
    index3,
    quadA4,
    quadB4,
    index4);
  input XRESET;
  input sclk;
  inout sda;
  inout scl;
  input quadA1;
  input quadB1;
  input index1;
  input quadA2;
  input quadB2;
  input index2;
  input quadA3;
  input quadB3;
  input index3;
  input quadA4;
  input quadB4;
  input index4;

  wire XRESET;
  wire XRESET_IBUF;
  wire XRESET_IBUF_BUFG;
  wire byte_cnt;
  wire \byte_cnt[7]_i_3_n_0 ;
  wire \byte_cnt[7]_i_4_n_0 ;
  wire [7:0]byte_cnt_reg;
  wire calibrated;
  wire [6:0]count;
  wire [7:0]data_out;
  wire [3:0]i2c_addr;
  wire \i2c_addr[1]_i_2_n_0 ;
  wire \i2c_addr[3]_i_4_n_0 ;
  wire \i2c_addr[3]_i_6_n_0 ;
  wire i2c_n_0;
  wire i2c_n_1;
  wire i2c_n_15;
  wire i2c_n_16;
  wire i2c_n_17;
  wire i2c_n_18;
  wire i2c_n_19;
  wire i2c_n_2;
  wire i2c_n_20;
  wire i2c_n_21;
  wire i2c_n_23;
  wire i2c_n_29;
  wire i2c_n_3;
  wire i2c_n_31;
  wire i2c_n_32;
  wire i2c_n_33;
  wire i2c_n_34;
  wire i2c_n_35;
  wire i2c_n_36;
  wire i2c_n_37;
  wire i2c_n_38;
  wire i2c_n_39;
  wire i2c_n_4;
  wire i2c_n_40;
  wire i2c_n_41;
  wire i2c_n_42;
  wire i2c_n_43;
  wire i2c_n_44;
  wire i2c_n_45;
  wire i2c_n_46;
  wire i2c_n_47;
  wire i2c_n_48;
  wire i2c_n_49;
  wire i2c_n_5;
  wire i2c_n_50;
  wire i2c_n_51;
  wire i2c_n_52;
  wire i2c_n_53;
  wire i2c_n_54;
  wire i2c_n_55;
  wire i2c_n_56;
  wire i2c_n_57;
  wire i2c_n_58;
  wire i2c_n_59;
  wire i2c_n_6;
  wire i2c_n_60;
  wire i2c_n_61;
  wire i2c_n_62;
  wire i2c_n_63;
  wire i2c_n_64;
  wire i2c_n_65;
  wire i2c_n_66;
  wire i2c_n_67;
  wire i2c_n_68;
  wire i2c_n_69;
  wire i2c_n_70;
  wire index1;
  wire index1_IBUF;
  wire index2;
  wire index2_IBUF;
  wire index3;
  wire index3_IBUF;
  wire index4;
  wire index4_IBUF;
  wire \mem_reg_n_0_[0][0] ;
  wire \mem_reg_n_0_[0][1] ;
  wire \mem_reg_n_0_[0][2] ;
  wire \mem_reg_n_0_[0][3] ;
  wire \mem_reg_n_0_[0][4] ;
  wire \mem_reg_n_0_[0][5] ;
  wire \mem_reg_n_0_[0][6] ;
  wire \mem_reg_n_0_[0][7] ;
  wire \mem_reg_n_0_[1][0] ;
  wire \mem_reg_n_0_[1][1] ;
  wire \mem_reg_n_0_[1][2] ;
  wire \mem_reg_n_0_[1][3] ;
  wire \mem_reg_n_0_[1][4] ;
  wire \mem_reg_n_0_[1][5] ;
  wire \mem_reg_n_0_[1][6] ;
  wire \mem_reg_n_0_[1][7] ;
  wire \mem_reg_n_0_[2][0] ;
  wire \mem_reg_n_0_[2][1] ;
  wire \mem_reg_n_0_[2][2] ;
  wire \mem_reg_n_0_[2][3] ;
  wire \mem_reg_n_0_[2][4] ;
  wire \mem_reg_n_0_[2][5] ;
  wire \mem_reg_n_0_[2][6] ;
  wire \mem_reg_n_0_[2][7] ;
  wire \mem_reg_n_0_[3][0] ;
  wire \mem_reg_n_0_[3][1] ;
  wire \mem_reg_n_0_[3][2] ;
  wire \mem_reg_n_0_[3][3] ;
  wire \mem_reg_n_0_[3][4] ;
  wire \mem_reg_n_0_[3][5] ;
  wire \mem_reg_n_0_[3][6] ;
  wire \mem_reg_n_0_[3][7] ;
  wire \mem_reg_n_0_[4][0] ;
  wire \mem_reg_n_0_[4][1] ;
  wire \mem_reg_n_0_[4][2] ;
  wire \mem_reg_n_0_[4][3] ;
  wire \mem_reg_n_0_[4][4] ;
  wire \mem_reg_n_0_[4][5] ;
  wire \mem_reg_n_0_[4][6] ;
  wire \mem_reg_n_0_[4][7] ;
  wire \mem_reg_n_0_[5][0] ;
  wire \mem_reg_n_0_[5][1] ;
  wire \mem_reg_n_0_[5][2] ;
  wire \mem_reg_n_0_[5][3] ;
  wire \mem_reg_n_0_[5][4] ;
  wire \mem_reg_n_0_[5][5] ;
  wire \mem_reg_n_0_[5][6] ;
  wire \mem_reg_n_0_[5][7] ;
  wire \mem_reg_n_0_[6][0] ;
  wire \mem_reg_n_0_[6][1] ;
  wire \mem_reg_n_0_[6][2] ;
  wire \mem_reg_n_0_[6][3] ;
  wire \mem_reg_n_0_[6][4] ;
  wire \mem_reg_n_0_[6][5] ;
  wire \mem_reg_n_0_[6][6] ;
  wire \mem_reg_n_0_[6][7] ;
  wire \mem_reg_n_0_[7][0] ;
  wire \mem_reg_n_0_[7][1] ;
  wire \mem_reg_n_0_[7][2] ;
  wire \mem_reg_n_0_[7][3] ;
  wire \mem_reg_n_0_[7][4] ;
  wire \mem_reg_n_0_[7][5] ;
  wire \mem_reg_n_0_[7][6] ;
  wire \mem_reg_n_0_[7][7] ;
  wire \mem_reg_n_0_[8][0] ;
  wire \mem_reg_n_0_[8][1] ;
  wire \mem_reg_n_0_[8][2] ;
  wire \mem_reg_n_0_[8][3] ;
  wire \mem_reg_n_0_[8][4] ;
  wire \mem_reg_n_0_[8][5] ;
  wire \mem_reg_n_0_[8][6] ;
  wire \mem_reg_n_0_[8][7] ;
  wire [6:0]p_0_in;
  wire q1_n_0;
  wire q2_n_0;
  wire q2_n_1;
  wire q2_n_2;
  wire q2_n_3;
  wire q2_n_4;
  wire q2_n_5;
  wire q2_n_6;
  wire q2_n_7;
  wire q3_n_0;
  wire q3_n_1;
  wire q3_n_2;
  wire q3_n_3;
  wire q3_n_4;
  wire q3_n_5;
  wire q3_n_6;
  wire q3_n_7;
  wire q4_n_0;
  wire q4_n_1;
  wire q4_n_2;
  wire q4_n_3;
  wire q4_n_4;
  wire q4_n_5;
  wire q4_n_6;
  wire q4_n_7;
  wire quadA1;
  wire quadA1_IBUF;
  wire quadA2;
  wire quadA2_IBUF;
  wire quadA3;
  wire quadA3_IBUF;
  wire quadA4;
  wire quadA4_IBUF;
  wire quadB1;
  wire quadB1_IBUF;
  wire quadB2;
  wire quadB2_IBUF;
  wire quadB3;
  wire quadB3_IBUF;
  wire quadB4;
  wire quadB4_IBUF;
  (* PULL = "PULLUP" *) wire scl;
  wire scl_IBUF;
  wire scl_IBUF_BUFG;
  wire sclk;
  wire sclk_IBUF;
  wire sclk_IBUF_BUFG;
  (* PULL = "PULLUP" *) wire sda;
  wire sda_IBUF;
  wire sda_TRI;

  BUFG XRESET_IBUF_BUFG_inst
       (.I(XRESET_IBUF),
        .O(XRESET_IBUF_BUFG));
  IBUF XRESET_IBUF_inst
       (.I(XRESET),
        .O(XRESET_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \byte_cnt[7]_i_3 
       (.I0(byte_cnt_reg[2]),
        .I1(byte_cnt_reg[0]),
        .I2(byte_cnt_reg[1]),
        .I3(byte_cnt_reg[3]),
        .O(\byte_cnt[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \byte_cnt[7]_i_4 
       (.I0(byte_cnt_reg[7]),
        .I1(byte_cnt_reg[4]),
        .I2(byte_cnt_reg[6]),
        .I3(byte_cnt_reg[5]),
        .O(\byte_cnt[7]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[0] 
       (.C(scl_IBUF_BUFG),
        .CE(byte_cnt),
        .CLR(XRESET_IBUF_BUFG),
        .D(p_0_in[0]),
        .Q(byte_cnt_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[1] 
       (.C(scl_IBUF_BUFG),
        .CE(byte_cnt),
        .CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_29),
        .Q(byte_cnt_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[2] 
       (.C(scl_IBUF_BUFG),
        .CE(byte_cnt),
        .CLR(XRESET_IBUF_BUFG),
        .D(p_0_in[2]),
        .Q(byte_cnt_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[3] 
       (.C(scl_IBUF_BUFG),
        .CE(byte_cnt),
        .CLR(XRESET_IBUF_BUFG),
        .D(p_0_in[3]),
        .Q(byte_cnt_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[4] 
       (.C(scl_IBUF_BUFG),
        .CE(byte_cnt),
        .CLR(XRESET_IBUF_BUFG),
        .D(p_0_in[4]),
        .Q(byte_cnt_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[5] 
       (.C(scl_IBUF_BUFG),
        .CE(byte_cnt),
        .CLR(XRESET_IBUF_BUFG),
        .D(p_0_in[5]),
        .Q(byte_cnt_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[6] 
       (.C(scl_IBUF_BUFG),
        .CE(byte_cnt),
        .CLR(XRESET_IBUF_BUFG),
        .D(p_0_in[6]),
        .Q(byte_cnt_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[7] 
       (.C(scl_IBUF_BUFG),
        .CE(byte_cnt),
        .CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_23),
        .Q(byte_cnt_reg[7]));
  i2c_slave i2c
       (.AR(XRESET_IBUF_BUFG),
        .CLK(scl_IBUF_BUFG),
        .D({i2c_n_1,i2c_n_2,i2c_n_3,i2c_n_4}),
        .E(i2c_n_5),
        .Q({\mem_reg_n_0_[8][7] ,\mem_reg_n_0_[8][6] ,\mem_reg_n_0_[8][5] ,\mem_reg_n_0_[8][4] ,\mem_reg_n_0_[8][3] ,\mem_reg_n_0_[8][2] ,\mem_reg_n_0_[8][1] ,\mem_reg_n_0_[8][0] }),
        .XRESET_IBUF(XRESET_IBUF),
        .\byte_cnt_reg[0] (\byte_cnt[7]_i_4_n_0 ),
        .\byte_cnt_reg[0]_0 (\byte_cnt[7]_i_3_n_0 ),
        .\byte_cnt_reg[4] ({i2c_n_23,p_0_in[6:2],i2c_n_29,p_0_in[0]}),
        .\byte_cnt_reg[7] (byte_cnt_reg),
        .calibrated(calibrated),
        .calibrated_reg(i2c_n_39),
        .calibrated_reg_0(i2c_n_40),
        .calibrated_reg_1(i2c_n_41),
        .\count_reg[6] ({i2c_n_42,i2c_n_43,i2c_n_44,i2c_n_45,i2c_n_46,i2c_n_47,i2c_n_48}),
        .\count_reg[6]_0 ({i2c_n_49,i2c_n_50,i2c_n_51,i2c_n_52,i2c_n_53,i2c_n_54,i2c_n_55}),
        .\count_reg[6]_1 ({i2c_n_56,i2c_n_57,i2c_n_58,i2c_n_59,i2c_n_60,i2c_n_61,i2c_n_62}),
        .\count_reg[6]_2 ({i2c_n_63,i2c_n_64,i2c_n_65,i2c_n_66,i2c_n_67,i2c_n_68,i2c_n_69}),
        .\data_int_reg[7]_0 (data_out),
        .\data_int_reg[7]_1 ({i2c_n_31,i2c_n_32,i2c_n_33,i2c_n_34,i2c_n_35,i2c_n_36,i2c_n_37,i2c_n_38}),
        .\i2c_addr_reg[0] (\i2c_addr[3]_i_6_n_0 ),
        .\i2c_addr_reg[1] (\i2c_addr[1]_i_2_n_0 ),
        .\i2c_addr_reg[2] (i2c_n_18),
        .\i2c_addr_reg[2]_0 (\i2c_addr[3]_i_4_n_0 ),
        .\mem_reg[0][6] (count),
        .\mem_reg[1][6] ({q2_n_1,q2_n_2,q2_n_3,q2_n_4,q2_n_5,q2_n_6,q2_n_7}),
        .\mem_reg[2][6] ({q3_n_1,q3_n_2,q3_n_3,q3_n_4,q3_n_5,q3_n_6,q3_n_7}),
        .\mem_reg[3][6] ({q4_n_1,q4_n_2,q4_n_3,q4_n_4,q4_n_5,q4_n_6,q4_n_7}),
        .\mem_reg[5][0] (q2_n_0),
        .\mem_reg[6][0] (q3_n_0),
        .\mem_reg[7][0] (q4_n_0),
        .sda_IBUF(sda_IBUF),
        .sda_TRI(sda_TRI),
        .\shift[7]_i_4_0 ({\mem_reg_n_0_[3][7] ,\mem_reg_n_0_[3][6] ,\mem_reg_n_0_[3][5] ,\mem_reg_n_0_[3][4] ,\mem_reg_n_0_[3][3] ,\mem_reg_n_0_[3][2] ,\mem_reg_n_0_[3][1] ,\mem_reg_n_0_[3][0] }),
        .\shift[7]_i_4_1 ({\mem_reg_n_0_[2][7] ,\mem_reg_n_0_[2][6] ,\mem_reg_n_0_[2][5] ,\mem_reg_n_0_[2][4] ,\mem_reg_n_0_[2][3] ,\mem_reg_n_0_[2][2] ,\mem_reg_n_0_[2][1] ,\mem_reg_n_0_[2][0] }),
        .\shift[7]_i_4_2 ({\mem_reg_n_0_[1][7] ,\mem_reg_n_0_[1][6] ,\mem_reg_n_0_[1][5] ,\mem_reg_n_0_[1][4] ,\mem_reg_n_0_[1][3] ,\mem_reg_n_0_[1][2] ,\mem_reg_n_0_[1][1] ,\mem_reg_n_0_[1][0] }),
        .\shift[7]_i_4_3 ({\mem_reg_n_0_[0][7] ,\mem_reg_n_0_[0][6] ,\mem_reg_n_0_[0][5] ,\mem_reg_n_0_[0][4] ,\mem_reg_n_0_[0][3] ,\mem_reg_n_0_[0][2] ,\mem_reg_n_0_[0][1] ,\mem_reg_n_0_[0][0] }),
        .\shift[7]_i_4_4 ({\mem_reg_n_0_[7][7] ,\mem_reg_n_0_[7][6] ,\mem_reg_n_0_[7][5] ,\mem_reg_n_0_[7][4] ,\mem_reg_n_0_[7][3] ,\mem_reg_n_0_[7][2] ,\mem_reg_n_0_[7][1] ,\mem_reg_n_0_[7][0] }),
        .\shift[7]_i_4_5 ({\mem_reg_n_0_[6][7] ,\mem_reg_n_0_[6][6] ,\mem_reg_n_0_[6][5] ,\mem_reg_n_0_[6][4] ,\mem_reg_n_0_[6][3] ,\mem_reg_n_0_[6][2] ,\mem_reg_n_0_[6][1] ,\mem_reg_n_0_[6][0] }),
        .\shift[7]_i_4_6 ({\mem_reg_n_0_[5][7] ,\mem_reg_n_0_[5][6] ,\mem_reg_n_0_[5][5] ,\mem_reg_n_0_[5][4] ,\mem_reg_n_0_[5][3] ,\mem_reg_n_0_[5][2] ,\mem_reg_n_0_[5][1] ,\mem_reg_n_0_[5][0] }),
        .\shift[7]_i_4_7 ({\mem_reg_n_0_[4][7] ,\mem_reg_n_0_[4][6] ,\mem_reg_n_0_[4][5] ,\mem_reg_n_0_[4][4] ,\mem_reg_n_0_[4][3] ,\mem_reg_n_0_[4][2] ,\mem_reg_n_0_[4][1] ,\mem_reg_n_0_[4][0] }),
        .\shift_reg[1]_0 (i2c_addr),
        .start_reg_0(i2c_n_0),
        .start_reg_1(i2c_n_6),
        .start_reg_2(i2c_n_15),
        .start_reg_3(i2c_n_16),
        .start_reg_4(i2c_n_17),
        .start_reg_5(i2c_n_19),
        .start_reg_6(i2c_n_20),
        .start_reg_7(i2c_n_21),
        .start_reg_8(q1_n_0),
        .vld_plse_reg_0(byte_cnt),
        .vld_plse_reg_1(i2c_n_70));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h1555)) 
    \i2c_addr[1]_i_2 
       (.I0(i2c_addr[3]),
        .I1(i2c_addr[0]),
        .I2(i2c_addr[1]),
        .I3(i2c_addr[2]),
        .O(\i2c_addr[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \i2c_addr[3]_i_4 
       (.I0(i2c_addr[0]),
        .I1(i2c_addr[1]),
        .O(\i2c_addr[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \i2c_addr[3]_i_6 
       (.I0(byte_cnt_reg[2]),
        .I1(byte_cnt_reg[3]),
        .O(\i2c_addr[3]_i_6_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \i2c_addr_reg[0] 
       (.C(scl_IBUF_BUFG),
        .CE(i2c_n_70),
        .CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_4),
        .Q(i2c_addr[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i2c_addr_reg[1] 
       (.C(scl_IBUF_BUFG),
        .CE(i2c_n_70),
        .CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_3),
        .Q(i2c_addr[1]));
  FDCE #(
    .INIT(1'b0)) 
    \i2c_addr_reg[2] 
       (.C(scl_IBUF_BUFG),
        .CE(i2c_n_70),
        .CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_2),
        .Q(i2c_addr[2]));
  FDCE #(
    .INIT(1'b0)) 
    \i2c_addr_reg[3] 
       (.C(scl_IBUF_BUFG),
        .CE(i2c_n_70),
        .CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_1),
        .Q(i2c_addr[3]));
  IBUF index1_IBUF_inst
       (.I(index1),
        .O(index1_IBUF));
  IBUF index2_IBUF_inst
       (.I(index2),
        .O(index2_IBUF));
  IBUF index3_IBUF_inst
       (.I(index3),
        .O(index3_IBUF));
  IBUF index4_IBUF_inst
       (.I(index4),
        .O(index4_IBUF));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][0] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_69),
        .G(i2c_n_21),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[0][0] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][1] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_68),
        .G(i2c_n_21),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[0][1] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][2] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_67),
        .G(i2c_n_21),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[0][2] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][3] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_66),
        .G(i2c_n_21),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[0][3] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][4] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_65),
        .G(i2c_n_21),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[0][4] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][5] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_64),
        .G(i2c_n_21),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[0][5] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][6] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_63),
        .G(i2c_n_21),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[0][6] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][7] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_31),
        .G(i2c_n_21),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[0][7] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][0] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_62),
        .G(i2c_n_20),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[1][0] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][1] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_61),
        .G(i2c_n_20),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[1][1] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][2] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_60),
        .G(i2c_n_20),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[1][2] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][3] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_59),
        .G(i2c_n_20),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[1][3] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][4] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_58),
        .G(i2c_n_20),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[1][4] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][5] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_57),
        .G(i2c_n_20),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[1][5] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][6] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_56),
        .G(i2c_n_20),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[1][6] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][7] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_31),
        .G(i2c_n_20),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[1][7] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][0] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_55),
        .G(i2c_n_19),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[2][0] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][1] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_54),
        .G(i2c_n_19),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[2][1] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][2] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_53),
        .G(i2c_n_19),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[2][2] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][3] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_52),
        .G(i2c_n_19),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[2][3] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][4] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_51),
        .G(i2c_n_19),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[2][4] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][5] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_50),
        .G(i2c_n_19),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[2][5] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][6] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_49),
        .G(i2c_n_19),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[2][6] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][7] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_31),
        .G(i2c_n_19),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[2][7] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][0] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_48),
        .G(i2c_n_5),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[3][0] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][1] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_47),
        .G(i2c_n_5),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[3][1] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][2] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_46),
        .G(i2c_n_5),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[3][2] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][3] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_45),
        .G(i2c_n_5),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[3][3] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][4] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_44),
        .G(i2c_n_5),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[3][4] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][5] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_43),
        .G(i2c_n_5),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[3][5] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][6] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_42),
        .G(i2c_n_5),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[3][6] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][7] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_31),
        .G(i2c_n_5),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[3][7] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][0] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_38),
        .G(i2c_n_17),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[4][0] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][1] 
       (.CLR(i2c_n_0),
        .D(i2c_n_37),
        .G(i2c_n_17),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[4][1] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][2] 
       (.CLR(i2c_n_0),
        .D(i2c_n_36),
        .G(i2c_n_17),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[4][2] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][3] 
       (.CLR(i2c_n_0),
        .D(i2c_n_35),
        .G(i2c_n_17),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[4][3] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][4] 
       (.CLR(i2c_n_0),
        .D(i2c_n_34),
        .G(i2c_n_17),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[4][4] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][5] 
       (.CLR(i2c_n_0),
        .D(i2c_n_33),
        .G(i2c_n_17),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[4][5] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][6] 
       (.CLR(i2c_n_0),
        .D(i2c_n_32),
        .G(i2c_n_17),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[4][6] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][7] 
       (.CLR(i2c_n_0),
        .D(i2c_n_31),
        .G(i2c_n_17),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[4][7] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][0] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_41),
        .G(i2c_n_16),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[5][0] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][1] 
       (.CLR(i2c_n_0),
        .D(i2c_n_37),
        .G(i2c_n_16),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[5][1] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][2] 
       (.CLR(i2c_n_0),
        .D(i2c_n_36),
        .G(i2c_n_16),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[5][2] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][3] 
       (.CLR(i2c_n_0),
        .D(i2c_n_35),
        .G(i2c_n_16),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[5][3] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][4] 
       (.CLR(i2c_n_0),
        .D(i2c_n_34),
        .G(i2c_n_16),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[5][4] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][5] 
       (.CLR(i2c_n_0),
        .D(i2c_n_33),
        .G(i2c_n_16),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[5][5] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][6] 
       (.CLR(i2c_n_0),
        .D(i2c_n_32),
        .G(i2c_n_16),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[5][6] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][7] 
       (.CLR(i2c_n_0),
        .D(i2c_n_31),
        .G(i2c_n_16),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[5][7] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][0] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_40),
        .G(i2c_n_15),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[6][0] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][1] 
       (.CLR(i2c_n_0),
        .D(i2c_n_37),
        .G(i2c_n_15),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[6][1] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][2] 
       (.CLR(i2c_n_0),
        .D(i2c_n_36),
        .G(i2c_n_15),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[6][2] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][3] 
       (.CLR(i2c_n_0),
        .D(i2c_n_35),
        .G(i2c_n_15),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[6][3] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][4] 
       (.CLR(i2c_n_0),
        .D(i2c_n_34),
        .G(i2c_n_15),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[6][4] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][5] 
       (.CLR(i2c_n_0),
        .D(i2c_n_33),
        .G(i2c_n_15),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[6][5] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][6] 
       (.CLR(i2c_n_0),
        .D(i2c_n_32),
        .G(i2c_n_15),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[6][6] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][7] 
       (.CLR(i2c_n_0),
        .D(i2c_n_31),
        .G(i2c_n_15),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[6][7] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][0] 
       (.CLR(XRESET_IBUF_BUFG),
        .D(i2c_n_39),
        .G(i2c_n_6),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[7][0] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][1] 
       (.CLR(i2c_n_0),
        .D(i2c_n_37),
        .G(i2c_n_6),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[7][1] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][2] 
       (.CLR(i2c_n_0),
        .D(i2c_n_36),
        .G(i2c_n_6),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[7][2] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][3] 
       (.CLR(i2c_n_0),
        .D(i2c_n_35),
        .G(i2c_n_6),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[7][3] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][4] 
       (.CLR(i2c_n_0),
        .D(i2c_n_34),
        .G(i2c_n_6),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[7][4] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][5] 
       (.CLR(i2c_n_0),
        .D(i2c_n_33),
        .G(i2c_n_6),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[7][5] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][6] 
       (.CLR(i2c_n_0),
        .D(i2c_n_32),
        .G(i2c_n_6),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[7][6] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][7] 
       (.CLR(i2c_n_0),
        .D(i2c_n_31),
        .G(i2c_n_6),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[7][7] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][0] 
       (.CLR(1'b0),
        .D(data_out[0]),
        .G(i2c_n_18),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[8][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][1] 
       (.CLR(1'b0),
        .D(data_out[1]),
        .G(i2c_n_18),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[8][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][2] 
       (.CLR(1'b0),
        .D(data_out[2]),
        .G(i2c_n_18),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[8][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][3] 
       (.CLR(1'b0),
        .D(data_out[3]),
        .G(i2c_n_18),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[8][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][4] 
       (.CLR(1'b0),
        .D(data_out[4]),
        .G(i2c_n_18),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[8][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][5] 
       (.CLR(1'b0),
        .D(data_out[5]),
        .G(i2c_n_18),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[8][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][6] 
       (.CLR(1'b0),
        .D(data_out[6]),
        .G(i2c_n_18),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[8][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][7] 
       (.CLR(1'b0),
        .D(data_out[7]),
        .G(i2c_n_18),
        .GE(1'b1),
        .Q(\mem_reg_n_0_[8][7] ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  PULLUP p1
       (.O(sda));
  (* BOX_TYPE = "PRIMITIVE" *) 
  PULLUP p2
       (.O(scl));
  QuadratureDecoder q1
       (.AR(XRESET_IBUF_BUFG),
        .Q(count),
        .XRESET_IBUF(XRESET_IBUF),
        .XRESET_IBUF_BUFG_inst(q1_n_0),
        .calibrated(calibrated),
        .index1_IBUF(index1_IBUF),
        .quadA1_IBUF(quadA1_IBUF),
        .quadB1_IBUF(quadB1_IBUF),
        .sclk_IBUF_BUFG(sclk_IBUF_BUFG));
  QuadratureDecoder_0 q2
       (.AR(XRESET_IBUF_BUFG),
        .Q({q2_n_1,q2_n_2,q2_n_3,q2_n_4,q2_n_5,q2_n_6,q2_n_7}),
        .XRESET_IBUF(XRESET_IBUF),
        .calibrated_reg_0(q2_n_0),
        .index2_IBUF(index2_IBUF),
        .quadA2_IBUF(quadA2_IBUF),
        .\quadA_delayed_reg[1]_0 (q1_n_0),
        .quadB2_IBUF(quadB2_IBUF),
        .sclk_IBUF_BUFG(sclk_IBUF_BUFG));
  QuadratureDecoder_1 q3
       (.AR(XRESET_IBUF_BUFG),
        .Q({q3_n_1,q3_n_2,q3_n_3,q3_n_4,q3_n_5,q3_n_6,q3_n_7}),
        .XRESET_IBUF(XRESET_IBUF),
        .calibrated_reg_0(q3_n_0),
        .index3_IBUF(index3_IBUF),
        .quadA3_IBUF(quadA3_IBUF),
        .\quadA_delayed_reg[1]_0 (q1_n_0),
        .quadB3_IBUF(quadB3_IBUF),
        .sclk_IBUF_BUFG(sclk_IBUF_BUFG));
  QuadratureDecoder_2 q4
       (.AR(XRESET_IBUF_BUFG),
        .Q({q4_n_1,q4_n_2,q4_n_3,q4_n_4,q4_n_5,q4_n_6,q4_n_7}),
        .XRESET_IBUF(XRESET_IBUF),
        .calibrated_reg_0(q4_n_0),
        .index4_IBUF(index4_IBUF),
        .quadA4_IBUF(quadA4_IBUF),
        .\quadA_delayed_reg[1]_0 (q1_n_0),
        .quadB4_IBUF(quadB4_IBUF),
        .sclk_IBUF_BUFG(sclk_IBUF_BUFG));
  IBUF quadA1_IBUF_inst
       (.I(quadA1),
        .O(quadA1_IBUF));
  IBUF quadA2_IBUF_inst
       (.I(quadA2),
        .O(quadA2_IBUF));
  IBUF quadA3_IBUF_inst
       (.I(quadA3),
        .O(quadA3_IBUF));
  IBUF quadA4_IBUF_inst
       (.I(quadA4),
        .O(quadA4_IBUF));
  IBUF quadB1_IBUF_inst
       (.I(quadB1),
        .O(quadB1_IBUF));
  IBUF quadB2_IBUF_inst
       (.I(quadB2),
        .O(quadB2_IBUF));
  IBUF quadB3_IBUF_inst
       (.I(quadB3),
        .O(quadB3_IBUF));
  IBUF quadB4_IBUF_inst
       (.I(quadB4),
        .O(quadB4_IBUF));
  BUFG scl_IBUF_BUFG_inst
       (.I(scl_IBUF),
        .O(scl_IBUF_BUFG));
  IBUF scl_IBUF_inst
       (.I(scl),
        .O(scl_IBUF));
  BUFG sclk_IBUF_BUFG_inst
       (.I(sclk_IBUF),
        .O(sclk_IBUF_BUFG));
  IBUF sclk_IBUF_inst
       (.I(sclk),
        .O(sclk_IBUF));
  IOBUF sda_IOBUF_inst
       (.I(1'b0),
        .IO(sda),
        .O(sda_IBUF),
        .T(sda_TRI));
endmodule

module i2c_slave
   (start_reg_0,
    D,
    E,
    start_reg_1,
    \data_int_reg[7]_0 ,
    start_reg_2,
    start_reg_3,
    start_reg_4,
    \i2c_addr_reg[2] ,
    start_reg_5,
    start_reg_6,
    start_reg_7,
    vld_plse_reg_0,
    \byte_cnt_reg[4] ,
    \data_int_reg[7]_1 ,
    calibrated_reg,
    calibrated_reg_0,
    calibrated_reg_1,
    \count_reg[6] ,
    \count_reg[6]_0 ,
    \count_reg[6]_1 ,
    \count_reg[6]_2 ,
    vld_plse_reg_1,
    sda_TRI,
    sda_IBUF,
    start_reg_8,
    AR,
    CLK,
    XRESET_IBUF,
    Q,
    \shift_reg[1]_0 ,
    \i2c_addr_reg[2]_0 ,
    \i2c_addr_reg[1] ,
    \i2c_addr_reg[0] ,
    \byte_cnt_reg[7] ,
    \byte_cnt_reg[0] ,
    \byte_cnt_reg[0]_0 ,
    \shift[7]_i_4_0 ,
    \shift[7]_i_4_1 ,
    \shift[7]_i_4_2 ,
    \shift[7]_i_4_3 ,
    \shift[7]_i_4_4 ,
    \shift[7]_i_4_5 ,
    \shift[7]_i_4_6 ,
    \shift[7]_i_4_7 ,
    calibrated,
    \mem_reg[7][0] ,
    \mem_reg[6][0] ,
    \mem_reg[5][0] ,
    \mem_reg[3][6] ,
    \mem_reg[2][6] ,
    \mem_reg[1][6] ,
    \mem_reg[0][6] );
  output [0:0]start_reg_0;
  output [3:0]D;
  output [0:0]E;
  output [0:0]start_reg_1;
  output [7:0]\data_int_reg[7]_0 ;
  output [0:0]start_reg_2;
  output [0:0]start_reg_3;
  output [0:0]start_reg_4;
  output [0:0]\i2c_addr_reg[2] ;
  output [0:0]start_reg_5;
  output [0:0]start_reg_6;
  output [0:0]start_reg_7;
  output [0:0]vld_plse_reg_0;
  output [7:0]\byte_cnt_reg[4] ;
  output [7:0]\data_int_reg[7]_1 ;
  output [0:0]calibrated_reg;
  output [0:0]calibrated_reg_0;
  output [0:0]calibrated_reg_1;
  output [6:0]\count_reg[6] ;
  output [6:0]\count_reg[6]_0 ;
  output [6:0]\count_reg[6]_1 ;
  output [6:0]\count_reg[6]_2 ;
  output [0:0]vld_plse_reg_1;
  output sda_TRI;
  input sda_IBUF;
  input start_reg_8;
  input [0:0]AR;
  input CLK;
  input XRESET_IBUF;
  input [7:0]Q;
  input [3:0]\shift_reg[1]_0 ;
  input \i2c_addr_reg[2]_0 ;
  input \i2c_addr_reg[1] ;
  input \i2c_addr_reg[0] ;
  input [7:0]\byte_cnt_reg[7] ;
  input \byte_cnt_reg[0] ;
  input \byte_cnt_reg[0]_0 ;
  input [7:0]\shift[7]_i_4_0 ;
  input [7:0]\shift[7]_i_4_1 ;
  input [7:0]\shift[7]_i_4_2 ;
  input [7:0]\shift[7]_i_4_3 ;
  input [7:0]\shift[7]_i_4_4 ;
  input [7:0]\shift[7]_i_4_5 ;
  input [7:0]\shift[7]_i_4_6 ;
  input [7:0]\shift[7]_i_4_7 ;
  input calibrated;
  input \mem_reg[7][0] ;
  input \mem_reg[6][0] ;
  input \mem_reg[5][0] ;
  input [6:0]\mem_reg[3][6] ;
  input [6:0]\mem_reg[2][6] ;
  input [6:0]\mem_reg[1][6] ;
  input [6:0]\mem_reg[0][6] ;

  wire [0:0]AR;
  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire XRESET_IBUF;
  wire ack_out_i_1_n_0;
  wire ack_out_i_2_n_0;
  wire ack_out_reg_n_0;
  wire \byte_cnt_reg[0] ;
  wire \byte_cnt_reg[0]_0 ;
  wire [7:0]\byte_cnt_reg[4] ;
  wire [7:0]\byte_cnt_reg[7] ;
  wire calibrated;
  wire [0:0]calibrated_reg;
  wire [0:0]calibrated_reg_0;
  wire [0:0]calibrated_reg_1;
  wire [6:0]\count_reg[6] ;
  wire [6:0]\count_reg[6]_0 ;
  wire [6:0]\count_reg[6]_1 ;
  wire [6:0]\count_reg[6]_2 ;
  wire data_int0;
  wire [7:0]\data_int_reg[7]_0 ;
  wire [7:0]\data_int_reg[7]_1 ;
  wire data_vld;
  wire \i2c_addr[1]_i_3_n_0 ;
  wire \i2c_addr[2]_i_2_n_0 ;
  wire \i2c_addr[3]_i_3_n_0 ;
  wire \i2c_addr[3]_i_5_n_0 ;
  wire \i2c_addr_reg[0] ;
  wire \i2c_addr_reg[1] ;
  wire [0:0]\i2c_addr_reg[2] ;
  wire \i2c_addr_reg[2]_0 ;
  wire [6:0]\mem_reg[0][6] ;
  wire [6:0]\mem_reg[1][6] ;
  wire [6:0]\mem_reg[2][6] ;
  wire [6:0]\mem_reg[3][6] ;
  wire \mem_reg[5][0] ;
  wire \mem_reg[6][0] ;
  wire \mem_reg[7][0] ;
  wire \mem_reg[8][7]_i_2_n_0 ;
  wire p_0_in;
  wire r_w;
  wire r_w_i_1_n_0;
  wire sda_IBUF;
  wire sda_TRI;
  wire sda_en;
  wire sda_en_i_1_n_0;
  wire sda_en_i_2_n_0;
  wire sda_f;
  wire sda_oe;
  wire \shift[0]_i_1_n_0 ;
  wire \shift[0]_i_2_n_0 ;
  wire \shift[0]_i_3_n_0 ;
  wire \shift[0]_i_4_n_0 ;
  wire \shift[0]_i_5_n_0 ;
  wire \shift[0]_i_6_n_0 ;
  wire \shift[1]_i_1_n_0 ;
  wire \shift[1]_i_3_n_0 ;
  wire \shift[1]_i_4_n_0 ;
  wire \shift[2]_i_1_n_0 ;
  wire \shift[2]_i_3_n_0 ;
  wire \shift[2]_i_4_n_0 ;
  wire \shift[3]_i_1_n_0 ;
  wire \shift[3]_i_3_n_0 ;
  wire \shift[3]_i_4_n_0 ;
  wire \shift[4]_i_1_n_0 ;
  wire \shift[4]_i_3_n_0 ;
  wire \shift[4]_i_4_n_0 ;
  wire \shift[5]_i_1_n_0 ;
  wire \shift[5]_i_3_n_0 ;
  wire \shift[5]_i_4_n_0 ;
  wire \shift[6]_i_1_n_0 ;
  wire \shift[6]_i_3_n_0 ;
  wire \shift[6]_i_4_n_0 ;
  wire \shift[7]_i_1_n_0 ;
  wire \shift[7]_i_2_n_0 ;
  wire \shift[7]_i_3_n_0 ;
  wire [7:0]\shift[7]_i_4_0 ;
  wire [7:0]\shift[7]_i_4_1 ;
  wire [7:0]\shift[7]_i_4_2 ;
  wire [7:0]\shift[7]_i_4_3 ;
  wire [7:0]\shift[7]_i_4_4 ;
  wire [7:0]\shift[7]_i_4_5 ;
  wire [7:0]\shift[7]_i_4_6 ;
  wire [7:0]\shift[7]_i_4_7 ;
  wire \shift[7]_i_4_n_0 ;
  wire \shift[7]_i_5_n_0 ;
  wire \shift[7]_i_6_n_0 ;
  wire [3:0]\shift_reg[1]_0 ;
  wire \shift_reg[1]_i_2_n_0 ;
  wire \shift_reg[2]_i_2_n_0 ;
  wire \shift_reg[3]_i_2_n_0 ;
  wire \shift_reg[4]_i_2_n_0 ;
  wire \shift_reg[5]_i_2_n_0 ;
  wire \shift_reg[6]_i_2_n_0 ;
  wire \shift_reg_n_0_[1] ;
  wire \shift_reg_n_0_[2] ;
  wire \shift_reg_n_0_[3] ;
  wire \shift_reg_n_0_[4] ;
  wire \shift_reg_n_0_[5] ;
  wire \shift_reg_n_0_[6] ;
  wire \shift_reg_n_0_[7] ;
  wire [4:0]sm_state;
  wire \sm_state[0]_i_2_n_0 ;
  wire \sm_state[0]_i_3_n_0 ;
  wire \sm_state[0]_i_4_n_0 ;
  wire \sm_state[0]_i_5_n_0 ;
  wire \sm_state[1]_i_2_n_0 ;
  wire \sm_state[1]_i_3_n_0 ;
  wire \sm_state[3]_i_2_n_0 ;
  wire \sm_state[3]_i_3_n_0 ;
  wire \sm_state[3]_i_4_n_0 ;
  wire \sm_state[3]_i_5_n_0 ;
  wire \sm_state_reg_n_0_[0] ;
  wire \sm_state_reg_n_0_[1] ;
  wire \sm_state_reg_n_0_[2] ;
  wire \sm_state_reg_n_0_[3] ;
  wire \sm_state_reg_n_0_[4] ;
  wire start;
  wire start_async_rst;
  wire [0:0]start_reg_0;
  wire [0:0]start_reg_1;
  wire [0:0]start_reg_2;
  wire [0:0]start_reg_3;
  wire [0:0]start_reg_4;
  wire [0:0]start_reg_5;
  wire [0:0]start_reg_6;
  wire [0:0]start_reg_7;
  wire start_reg_8;
  wire stop;
  wire vld_plse_i_1_n_0;
  wire [0:0]vld_plse_reg_0;
  wire [0:0]vld_plse_reg_1;

  LUT6 #(
    .INIT(64'h0000000000000430)) 
    ack_out_i_1
       (.I0(r_w),
        .I1(\sm_state_reg_n_0_[4] ),
        .I2(\sm_state_reg_n_0_[3] ),
        .I3(\sm_state_reg_n_0_[0] ),
        .I4(ack_out_i_2_n_0),
        .I5(XRESET_IBUF),
        .O(ack_out_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ack_out_i_2
       (.I0(\sm_state_reg_n_0_[2] ),
        .I1(\sm_state_reg_n_0_[1] ),
        .O(ack_out_i_2_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    ack_out_reg
       (.C(CLK),
        .CE(1'b1),
        .D(ack_out_i_1_n_0),
        .Q(ack_out_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \byte_cnt[0]_i_1 
       (.I0(data_vld),
        .I1(\byte_cnt_reg[7] [0]),
        .O(\byte_cnt_reg[4] [0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \byte_cnt[1]_i_1 
       (.I0(\byte_cnt_reg[7] [1]),
        .I1(\byte_cnt_reg[7] [0]),
        .I2(data_vld),
        .O(\byte_cnt_reg[4] [1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \byte_cnt[2]_i_1 
       (.I0(data_vld),
        .I1(\byte_cnt_reg[7] [0]),
        .I2(\byte_cnt_reg[7] [1]),
        .I3(\byte_cnt_reg[7] [2]),
        .O(\byte_cnt_reg[4] [2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \byte_cnt[3]_i_1 
       (.I0(data_vld),
        .I1(\byte_cnt_reg[7] [1]),
        .I2(\byte_cnt_reg[7] [0]),
        .I3(\byte_cnt_reg[7] [2]),
        .I4(\byte_cnt_reg[7] [3]),
        .O(\byte_cnt_reg[4] [3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \byte_cnt[4]_i_1 
       (.I0(data_vld),
        .I1(\byte_cnt_reg[7] [2]),
        .I2(\byte_cnt_reg[7] [0]),
        .I3(\byte_cnt_reg[7] [1]),
        .I4(\byte_cnt_reg[7] [3]),
        .I5(\byte_cnt_reg[7] [4]),
        .O(\byte_cnt_reg[4] [4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8A20)) 
    \byte_cnt[5]_i_1 
       (.I0(data_vld),
        .I1(\byte_cnt_reg[0]_0 ),
        .I2(\byte_cnt_reg[7] [4]),
        .I3(\byte_cnt_reg[7] [5]),
        .O(\byte_cnt_reg[4] [5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAA2A0080)) 
    \byte_cnt[6]_i_1 
       (.I0(data_vld),
        .I1(\byte_cnt_reg[7] [5]),
        .I2(\byte_cnt_reg[7] [4]),
        .I3(\byte_cnt_reg[0]_0 ),
        .I4(\byte_cnt_reg[7] [6]),
        .O(\byte_cnt_reg[4] [6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFF8C)) 
    \byte_cnt[7]_i_1 
       (.I0(\byte_cnt_reg[0]_0 ),
        .I1(data_vld),
        .I2(\byte_cnt_reg[0] ),
        .I3(start),
        .O(vld_plse_reg_0));
  LUT6 #(
    .INIT(64'hBFFF400000000000)) 
    \byte_cnt[7]_i_2 
       (.I0(\byte_cnt_reg[0]_0 ),
        .I1(\byte_cnt_reg[7] [4]),
        .I2(\byte_cnt_reg[7] [5]),
        .I3(\byte_cnt_reg[7] [6]),
        .I4(\byte_cnt_reg[7] [7]),
        .I5(data_vld),
        .O(\byte_cnt_reg[4] [7]));
  LUT3 #(
    .INIT(8'h20)) 
    \data_int[7]_i_1 
       (.I0(ack_out_reg_n_0),
        .I1(r_w),
        .I2(data_vld),
        .O(data_int0));
  FDRE #(
    .INIT(1'b0)) 
    \data_int_reg[0] 
       (.C(CLK),
        .CE(data_int0),
        .D(p_0_in),
        .Q(\data_int_reg[7]_0 [0]),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    \data_int_reg[1] 
       (.C(CLK),
        .CE(data_int0),
        .D(\shift_reg_n_0_[1] ),
        .Q(\data_int_reg[7]_0 [1]),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    \data_int_reg[2] 
       (.C(CLK),
        .CE(data_int0),
        .D(\shift_reg_n_0_[2] ),
        .Q(\data_int_reg[7]_0 [2]),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    \data_int_reg[3] 
       (.C(CLK),
        .CE(data_int0),
        .D(\shift_reg_n_0_[3] ),
        .Q(\data_int_reg[7]_0 [3]),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    \data_int_reg[4] 
       (.C(CLK),
        .CE(data_int0),
        .D(\shift_reg_n_0_[4] ),
        .Q(\data_int_reg[7]_0 [4]),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    \data_int_reg[5] 
       (.C(CLK),
        .CE(data_int0),
        .D(\shift_reg_n_0_[5] ),
        .Q(\data_int_reg[7]_0 [5]),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    \data_int_reg[6] 
       (.C(CLK),
        .CE(data_int0),
        .D(\shift_reg_n_0_[6] ),
        .Q(\data_int_reg[7]_0 [6]),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    \data_int_reg[7] 
       (.C(CLK),
        .CE(data_int0),
        .D(\shift_reg_n_0_[7] ),
        .Q(\data_int_reg[7]_0 [7]),
        .R(AR));
  LUT6 #(
    .INIT(64'h44444444000F4444)) 
    \i2c_addr[0]_i_1 
       (.I0(\i2c_addr[3]_i_3_n_0 ),
        .I1(\data_int_reg[7]_0 [0]),
        .I2(\shift_reg[1]_0 [0]),
        .I3(\shift_reg[1]_0 [3]),
        .I4(data_vld),
        .I5(\i2c_addr[3]_i_5_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAEEAFFFF04400000)) 
    \i2c_addr[1]_i_1 
       (.I0(\i2c_addr[3]_i_5_n_0 ),
        .I1(\i2c_addr_reg[1] ),
        .I2(\shift_reg[1]_0 [1]),
        .I3(\shift_reg[1]_0 [0]),
        .I4(data_vld),
        .I5(\i2c_addr[1]_i_3_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \i2c_addr[1]_i_3 
       (.I0(\data_int_reg[7]_0 [1]),
        .I1(\data_int_reg[7]_0 [4]),
        .I2(\data_int_reg[7]_0 [5]),
        .I3(\data_int_reg[7]_0 [6]),
        .I4(\data_int_reg[7]_0 [7]),
        .I5(\data_int_reg[7]_0 [3]),
        .O(\i2c_addr[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBAABFFFF10010000)) 
    \i2c_addr[2]_i_1 
       (.I0(\i2c_addr[3]_i_5_n_0 ),
        .I1(\shift_reg[1]_0 [3]),
        .I2(\i2c_addr_reg[2]_0 ),
        .I3(\shift_reg[1]_0 [2]),
        .I4(data_vld),
        .I5(\i2c_addr[2]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \i2c_addr[2]_i_2 
       (.I0(\data_int_reg[7]_0 [2]),
        .I1(\data_int_reg[7]_0 [4]),
        .I2(\data_int_reg[7]_0 [5]),
        .I3(\data_int_reg[7]_0 [6]),
        .I4(\data_int_reg[7]_0 [7]),
        .I5(\data_int_reg[7]_0 [3]),
        .O(\i2c_addr[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \i2c_addr[3]_i_1 
       (.I0(data_vld),
        .I1(stop),
        .I2(start),
        .O(vld_plse_reg_1));
  LUT6 #(
    .INIT(64'hAAAAAAAAFF0CAAAA)) 
    \i2c_addr[3]_i_2 
       (.I0(\i2c_addr[3]_i_3_n_0 ),
        .I1(\shift_reg[1]_0 [2]),
        .I2(\i2c_addr_reg[2]_0 ),
        .I3(\shift_reg[1]_0 [3]),
        .I4(data_vld),
        .I5(\i2c_addr[3]_i_5_n_0 ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \i2c_addr[3]_i_3 
       (.I0(\data_int_reg[7]_0 [3]),
        .I1(\data_int_reg[7]_0 [7]),
        .I2(\data_int_reg[7]_0 [6]),
        .I3(\data_int_reg[7]_0 [5]),
        .I4(\data_int_reg[7]_0 [4]),
        .O(\i2c_addr[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \i2c_addr[3]_i_5 
       (.I0(r_w),
        .I1(data_vld),
        .I2(\i2c_addr_reg[0] ),
        .I3(\byte_cnt_reg[7] [0]),
        .I4(\byte_cnt_reg[7] [1]),
        .I5(\byte_cnt_reg[0] ),
        .O(\i2c_addr[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[0][0]_i_1 
       (.I0(\mem_reg[0][6] [0]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [0]),
        .O(\count_reg[6]_2 [0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[0][1]_i_1 
       (.I0(\mem_reg[0][6] [1]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [1]),
        .O(\count_reg[6]_2 [1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[0][2]_i_1 
       (.I0(\mem_reg[0][6] [2]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [2]),
        .O(\count_reg[6]_2 [2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[0][3]_i_1 
       (.I0(\mem_reg[0][6] [3]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [3]),
        .O(\count_reg[6]_2 [3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[0][4]_i_1 
       (.I0(\mem_reg[0][6] [4]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [4]),
        .O(\count_reg[6]_2 [4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[0][5]_i_1 
       (.I0(\mem_reg[0][6] [5]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [5]),
        .O(\count_reg[6]_2 [5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[0][6]_i_1 
       (.I0(\mem_reg[0][6] [6]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [6]),
        .O(\count_reg[6]_2 [6]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \mem_reg[0][7]_i_1 
       (.I0(start),
        .I1(\shift_reg[1]_0 [1]),
        .I2(\shift_reg[1]_0 [0]),
        .I3(\shift_reg[1]_0 [3]),
        .I4(\shift_reg[1]_0 [2]),
        .I5(\mem_reg[8][7]_i_2_n_0 ),
        .O(start_reg_7));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[1][0]_i_1 
       (.I0(\mem_reg[1][6] [0]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [0]),
        .O(\count_reg[6]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[1][1]_i_1 
       (.I0(\mem_reg[1][6] [1]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [1]),
        .O(\count_reg[6]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[1][2]_i_1 
       (.I0(\mem_reg[1][6] [2]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [2]),
        .O(\count_reg[6]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[1][3]_i_1 
       (.I0(\mem_reg[1][6] [3]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [3]),
        .O(\count_reg[6]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[1][4]_i_1 
       (.I0(\mem_reg[1][6] [4]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [4]),
        .O(\count_reg[6]_1 [4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[1][5]_i_1 
       (.I0(\mem_reg[1][6] [5]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [5]),
        .O(\count_reg[6]_1 [5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[1][6]_i_1 
       (.I0(\mem_reg[1][6] [6]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [6]),
        .O(\count_reg[6]_1 [6]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAAA)) 
    \mem_reg[1][7]_i_1 
       (.I0(start),
        .I1(\shift_reg[1]_0 [0]),
        .I2(\shift_reg[1]_0 [1]),
        .I3(\shift_reg[1]_0 [3]),
        .I4(\shift_reg[1]_0 [2]),
        .I5(\mem_reg[8][7]_i_2_n_0 ),
        .O(start_reg_6));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[2][0]_i_1 
       (.I0(\mem_reg[2][6] [0]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [0]),
        .O(\count_reg[6]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[2][1]_i_1 
       (.I0(\mem_reg[2][6] [1]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [1]),
        .O(\count_reg[6]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[2][2]_i_1 
       (.I0(\mem_reg[2][6] [2]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [2]),
        .O(\count_reg[6]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[2][3]_i_1 
       (.I0(\mem_reg[2][6] [3]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [3]),
        .O(\count_reg[6]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[2][4]_i_1 
       (.I0(\mem_reg[2][6] [4]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [4]),
        .O(\count_reg[6]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[2][5]_i_1 
       (.I0(\mem_reg[2][6] [5]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [5]),
        .O(\count_reg[6]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[2][6]_i_1 
       (.I0(\mem_reg[2][6] [6]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [6]),
        .O(\count_reg[6]_0 [6]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAAA)) 
    \mem_reg[2][7]_i_1 
       (.I0(start),
        .I1(\shift_reg[1]_0 [1]),
        .I2(\shift_reg[1]_0 [0]),
        .I3(\shift_reg[1]_0 [3]),
        .I4(\shift_reg[1]_0 [2]),
        .I5(\mem_reg[8][7]_i_2_n_0 ),
        .O(start_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[3][0]_i_1 
       (.I0(\mem_reg[3][6] [0]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [0]),
        .O(\count_reg[6] [0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[3][1]_i_1 
       (.I0(\mem_reg[3][6] [1]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [1]),
        .O(\count_reg[6] [1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[3][2]_i_1 
       (.I0(\mem_reg[3][6] [2]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [2]),
        .O(\count_reg[6] [2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[3][3]_i_1 
       (.I0(\mem_reg[3][6] [3]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [3]),
        .O(\count_reg[6] [3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[3][4]_i_1 
       (.I0(\mem_reg[3][6] [4]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [4]),
        .O(\count_reg[6] [4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[3][5]_i_1 
       (.I0(\mem_reg[3][6] [5]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [5]),
        .O(\count_reg[6] [5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[3][6]_i_1 
       (.I0(\mem_reg[3][6] [6]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [6]),
        .O(\count_reg[6] [6]));
  LUT6 #(
    .INIT(64'hAAAAAAEAAAAAAAAA)) 
    \mem_reg[3][7]_i_1 
       (.I0(start),
        .I1(\shift_reg[1]_0 [1]),
        .I2(\shift_reg[1]_0 [0]),
        .I3(\shift_reg[1]_0 [3]),
        .I4(\shift_reg[1]_0 [2]),
        .I5(\mem_reg[8][7]_i_2_n_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[4][0]_i_1 
       (.I0(calibrated),
        .I1(start),
        .I2(\data_int_reg[7]_0 [0]),
        .O(\data_int_reg[7]_1 [0]));
  LUT6 #(
    .INIT(64'hAAABAAAAAAAAAAAA)) 
    \mem_reg[4][7]_i_1 
       (.I0(start),
        .I1(\shift_reg[1]_0 [0]),
        .I2(\shift_reg[1]_0 [1]),
        .I3(\shift_reg[1]_0 [3]),
        .I4(\shift_reg[1]_0 [2]),
        .I5(\mem_reg[8][7]_i_2_n_0 ),
        .O(start_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[5][0]_i_1 
       (.I0(\mem_reg[5][0] ),
        .I1(start),
        .I2(\data_int_reg[7]_0 [0]),
        .O(calibrated_reg_1));
  LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
    \mem_reg[5][7]_i_1 
       (.I0(start),
        .I1(\shift_reg[1]_0 [1]),
        .I2(\shift_reg[1]_0 [0]),
        .I3(\shift_reg[1]_0 [3]),
        .I4(\shift_reg[1]_0 [2]),
        .I5(\mem_reg[8][7]_i_2_n_0 ),
        .O(start_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[6][0]_i_1 
       (.I0(\mem_reg[6][0] ),
        .I1(start),
        .I2(\data_int_reg[7]_0 [0]),
        .O(calibrated_reg_0));
  LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
    \mem_reg[6][7]_i_1 
       (.I0(start),
        .I1(\shift_reg[1]_0 [0]),
        .I2(\shift_reg[1]_0 [1]),
        .I3(\shift_reg[1]_0 [3]),
        .I4(\shift_reg[1]_0 [2]),
        .I5(\mem_reg[8][7]_i_2_n_0 ),
        .O(start_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_reg[7][0]_i_1 
       (.I0(\mem_reg[7][0] ),
        .I1(start),
        .I2(\data_int_reg[7]_0 [0]),
        .O(calibrated_reg));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \mem_reg[7][1]_i_1 
       (.I0(\data_int_reg[7]_0 [1]),
        .I1(start),
        .O(\data_int_reg[7]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \mem_reg[7][2]_i_1 
       (.I0(\data_int_reg[7]_0 [2]),
        .I1(start),
        .O(\data_int_reg[7]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \mem_reg[7][3]_i_1 
       (.I0(\data_int_reg[7]_0 [3]),
        .I1(start),
        .O(\data_int_reg[7]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \mem_reg[7][4]_i_1 
       (.I0(\data_int_reg[7]_0 [4]),
        .I1(start),
        .O(\data_int_reg[7]_1 [4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \mem_reg[7][5]_i_1 
       (.I0(\data_int_reg[7]_0 [5]),
        .I1(start),
        .O(\data_int_reg[7]_1 [5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \mem_reg[7][6]_i_1 
       (.I0(\data_int_reg[7]_0 [6]),
        .I1(start),
        .O(\data_int_reg[7]_1 [6]));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_reg[7][7]_i_1 
       (.I0(\data_int_reg[7]_0 [7]),
        .I1(start),
        .O(\data_int_reg[7]_1 [7]));
  LUT6 #(
    .INIT(64'hAAEAAAAAAAAAAAAA)) 
    \mem_reg[7][7]_i_2 
       (.I0(start),
        .I1(\shift_reg[1]_0 [0]),
        .I2(\shift_reg[1]_0 [1]),
        .I3(\shift_reg[1]_0 [3]),
        .I4(\shift_reg[1]_0 [2]),
        .I5(\mem_reg[8][7]_i_2_n_0 ),
        .O(start_reg_1));
  LUT2 #(
    .INIT(4'hE)) 
    \mem_reg[7][7]_i_3 
       (.I0(start),
        .I1(XRESET_IBUF),
        .O(start_reg_0));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \mem_reg[8][7]_i_1 
       (.I0(\shift_reg[1]_0 [2]),
        .I1(\mem_reg[8][7]_i_2_n_0 ),
        .I2(start_reg_0),
        .I3(\shift_reg[1]_0 [3]),
        .I4(\shift_reg[1]_0 [0]),
        .I5(\shift_reg[1]_0 [1]),
        .O(\i2c_addr_reg[2] ));
  LUT5 #(
    .INIT(32'h55545555)) 
    \mem_reg[8][7]_i_2 
       (.I0(r_w),
        .I1(\byte_cnt_reg[7] [1]),
        .I2(\byte_cnt_reg[7] [3]),
        .I3(\byte_cnt_reg[7] [2]),
        .I4(\byte_cnt_reg[0] ),
        .O(\mem_reg[8][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    r_w_i_1
       (.I0(\sm_state[3]_i_4_n_0 ),
        .I1(r_w),
        .I2(sda_IBUF),
        .O(r_w_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    r_w_reg
       (.C(CLK),
        .CE(1'b1),
        .D(r_w_i_1_n_0),
        .Q(r_w),
        .S(AR));
  LUT1 #(
    .INIT(2'h1)) 
    sda_IOBUF_inst_i_1
       (.I0(sda_oe),
        .O(sda_TRI));
  LUT2 #(
    .INIT(4'hE)) 
    sda_IOBUF_inst_i_2
       (.I0(sda_en),
        .I1(ack_out_reg_n_0),
        .O(sda_oe));
  LUT5 #(
    .INIT(32'h10101110)) 
    sda_en_i_1
       (.I0(sda_en_i_2_n_0),
        .I1(XRESET_IBUF),
        .I2(\shift[7]_i_4_n_0 ),
        .I3(\shift[7]_i_3_n_0 ),
        .I4(\shift_reg_n_0_[6] ),
        .O(sda_en_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFF0FFFFFEF1FFF)) 
    sda_en_i_2
       (.I0(\sm_state_reg_n_0_[2] ),
        .I1(\sm_state_reg_n_0_[1] ),
        .I2(r_w),
        .I3(\sm_state_reg_n_0_[3] ),
        .I4(\sm_state_reg_n_0_[4] ),
        .I5(\sm_state_reg_n_0_[0] ),
        .O(sda_en_i_2_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    sda_en_reg
       (.C(CLK),
        .CE(1'b1),
        .D(sda_en_i_1_n_0),
        .Q(sda_en),
        .R(1'b0));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    sda_f_reg
       (.CLR(AR),
        .D(sda_IBUF),
        .G(AR),
        .GE(1'b1),
        .Q(sda_f));
  LUT5 #(
    .INIT(32'h0000FE02)) 
    \shift[0]_i_1 
       (.I0(p_0_in),
        .I1(\shift[0]_i_2_n_0 ),
        .I2(\shift[7]_i_1_n_0 ),
        .I3(\shift[0]_i_3_n_0 ),
        .I4(XRESET_IBUF),
        .O(\shift[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000FF00FE)) 
    \shift[0]_i_2 
       (.I0(\sm_state_reg_n_0_[1] ),
        .I1(\sm_state_reg_n_0_[2] ),
        .I2(\sm_state_reg_n_0_[0] ),
        .I3(\sm_state_reg_n_0_[3] ),
        .I4(start),
        .I5(\sm_state_reg_n_0_[4] ),
        .O(\shift[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \shift[0]_i_3 
       (.I0(\shift[7]_i_3_n_0 ),
        .I1(\shift[0]_i_4_n_0 ),
        .I2(sda_IBUF),
        .O(\shift[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shift[0]_i_4 
       (.I0(Q[0]),
        .I1(\shift_reg[1]_0 [3]),
        .I2(\shift[0]_i_5_n_0 ),
        .I3(\shift_reg[1]_0 [2]),
        .I4(\shift[0]_i_6_n_0 ),
        .O(\shift[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[0]_i_5 
       (.I0(\shift[7]_i_4_4 [0]),
        .I1(\shift[7]_i_4_5 [0]),
        .I2(\shift_reg[1]_0 [1]),
        .I3(\shift[7]_i_4_6 [0]),
        .I4(\shift_reg[1]_0 [0]),
        .I5(\shift[7]_i_4_7 [0]),
        .O(\shift[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[0]_i_6 
       (.I0(\shift[7]_i_4_0 [0]),
        .I1(\shift[7]_i_4_1 [0]),
        .I2(\shift_reg[1]_0 [1]),
        .I3(\shift[7]_i_4_2 [0]),
        .I4(\shift_reg[1]_0 [0]),
        .I5(\shift[7]_i_4_3 [0]),
        .O(\shift[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shift[1]_i_1 
       (.I0(p_0_in),
        .I1(\shift[7]_i_3_n_0 ),
        .I2(Q[1]),
        .I3(\shift_reg[1]_0 [3]),
        .I4(\shift_reg[1]_i_2_n_0 ),
        .O(\shift[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[1]_i_3 
       (.I0(\shift[7]_i_4_0 [1]),
        .I1(\shift[7]_i_4_1 [1]),
        .I2(\shift_reg[1]_0 [1]),
        .I3(\shift[7]_i_4_2 [1]),
        .I4(\shift_reg[1]_0 [0]),
        .I5(\shift[7]_i_4_3 [1]),
        .O(\shift[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[1]_i_4 
       (.I0(\shift[7]_i_4_4 [1]),
        .I1(\shift[7]_i_4_5 [1]),
        .I2(\shift_reg[1]_0 [1]),
        .I3(\shift[7]_i_4_6 [1]),
        .I4(\shift_reg[1]_0 [0]),
        .I5(\shift[7]_i_4_7 [1]),
        .O(\shift[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shift[2]_i_1 
       (.I0(\shift_reg_n_0_[1] ),
        .I1(\shift[7]_i_3_n_0 ),
        .I2(Q[2]),
        .I3(\shift_reg[1]_0 [3]),
        .I4(\shift_reg[2]_i_2_n_0 ),
        .O(\shift[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[2]_i_3 
       (.I0(\shift[7]_i_4_0 [2]),
        .I1(\shift[7]_i_4_1 [2]),
        .I2(\shift_reg[1]_0 [1]),
        .I3(\shift[7]_i_4_2 [2]),
        .I4(\shift_reg[1]_0 [0]),
        .I5(\shift[7]_i_4_3 [2]),
        .O(\shift[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[2]_i_4 
       (.I0(\shift[7]_i_4_4 [2]),
        .I1(\shift[7]_i_4_5 [2]),
        .I2(\shift_reg[1]_0 [1]),
        .I3(\shift[7]_i_4_6 [2]),
        .I4(\shift_reg[1]_0 [0]),
        .I5(\shift[7]_i_4_7 [2]),
        .O(\shift[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shift[3]_i_1 
       (.I0(\shift_reg_n_0_[2] ),
        .I1(\shift[7]_i_3_n_0 ),
        .I2(Q[3]),
        .I3(\shift_reg[1]_0 [3]),
        .I4(\shift_reg[3]_i_2_n_0 ),
        .O(\shift[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[3]_i_3 
       (.I0(\shift[7]_i_4_0 [3]),
        .I1(\shift[7]_i_4_1 [3]),
        .I2(\shift_reg[1]_0 [1]),
        .I3(\shift[7]_i_4_2 [3]),
        .I4(\shift_reg[1]_0 [0]),
        .I5(\shift[7]_i_4_3 [3]),
        .O(\shift[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[3]_i_4 
       (.I0(\shift[7]_i_4_4 [3]),
        .I1(\shift[7]_i_4_5 [3]),
        .I2(\shift_reg[1]_0 [1]),
        .I3(\shift[7]_i_4_6 [3]),
        .I4(\shift_reg[1]_0 [0]),
        .I5(\shift[7]_i_4_7 [3]),
        .O(\shift[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shift[4]_i_1 
       (.I0(\shift_reg_n_0_[3] ),
        .I1(\shift[7]_i_3_n_0 ),
        .I2(Q[4]),
        .I3(\shift_reg[1]_0 [3]),
        .I4(\shift_reg[4]_i_2_n_0 ),
        .O(\shift[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[4]_i_3 
       (.I0(\shift[7]_i_4_0 [4]),
        .I1(\shift[7]_i_4_1 [4]),
        .I2(\shift_reg[1]_0 [1]),
        .I3(\shift[7]_i_4_2 [4]),
        .I4(\shift_reg[1]_0 [0]),
        .I5(\shift[7]_i_4_3 [4]),
        .O(\shift[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[4]_i_4 
       (.I0(\shift[7]_i_4_4 [4]),
        .I1(\shift[7]_i_4_5 [4]),
        .I2(\shift_reg[1]_0 [1]),
        .I3(\shift[7]_i_4_6 [4]),
        .I4(\shift_reg[1]_0 [0]),
        .I5(\shift[7]_i_4_7 [4]),
        .O(\shift[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shift[5]_i_1 
       (.I0(\shift_reg_n_0_[4] ),
        .I1(\shift[7]_i_3_n_0 ),
        .I2(Q[5]),
        .I3(\shift_reg[1]_0 [3]),
        .I4(\shift_reg[5]_i_2_n_0 ),
        .O(\shift[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[5]_i_3 
       (.I0(\shift[7]_i_4_0 [5]),
        .I1(\shift[7]_i_4_1 [5]),
        .I2(\shift_reg[1]_0 [1]),
        .I3(\shift[7]_i_4_2 [5]),
        .I4(\shift_reg[1]_0 [0]),
        .I5(\shift[7]_i_4_3 [5]),
        .O(\shift[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[5]_i_4 
       (.I0(\shift[7]_i_4_4 [5]),
        .I1(\shift[7]_i_4_5 [5]),
        .I2(\shift_reg[1]_0 [1]),
        .I3(\shift[7]_i_4_6 [5]),
        .I4(\shift_reg[1]_0 [0]),
        .I5(\shift[7]_i_4_7 [5]),
        .O(\shift[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shift[6]_i_1 
       (.I0(\shift_reg_n_0_[5] ),
        .I1(\shift[7]_i_3_n_0 ),
        .I2(Q[6]),
        .I3(\shift_reg[1]_0 [3]),
        .I4(\shift_reg[6]_i_2_n_0 ),
        .O(\shift[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[6]_i_3 
       (.I0(\shift[7]_i_4_0 [6]),
        .I1(\shift[7]_i_4_1 [6]),
        .I2(\shift_reg[1]_0 [1]),
        .I3(\shift[7]_i_4_2 [6]),
        .I4(\shift_reg[1]_0 [0]),
        .I5(\shift[7]_i_4_3 [6]),
        .O(\shift[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[6]_i_4 
       (.I0(\shift[7]_i_4_4 [6]),
        .I1(\shift[7]_i_4_5 [6]),
        .I2(\shift_reg[1]_0 [1]),
        .I3(\shift[7]_i_4_6 [6]),
        .I4(\shift_reg[1]_0 [0]),
        .I5(\shift[7]_i_4_7 [6]),
        .O(\shift[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000FFFF80000)) 
    \shift[7]_i_1 
       (.I0(\sm_state_reg_n_0_[0] ),
        .I1(r_w),
        .I2(\sm_state_reg_n_0_[1] ),
        .I3(\sm_state_reg_n_0_[2] ),
        .I4(\sm_state_reg_n_0_[3] ),
        .I5(\sm_state_reg_n_0_[4] ),
        .O(\shift[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \shift[7]_i_2 
       (.I0(\shift_reg_n_0_[6] ),
        .I1(\shift[7]_i_3_n_0 ),
        .I2(\shift[7]_i_4_n_0 ),
        .O(\shift[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    \shift[7]_i_3 
       (.I0(r_w),
        .I1(\sm_state_reg_n_0_[3] ),
        .I2(\sm_state_reg_n_0_[0] ),
        .I3(\sm_state_reg_n_0_[2] ),
        .I4(\sm_state_reg_n_0_[1] ),
        .I5(\sm_state_reg_n_0_[4] ),
        .O(\shift[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0311031103000333)) 
    \shift[7]_i_4 
       (.I0(\shift[7]_i_5_n_0 ),
        .I1(\shift[7]_i_3_n_0 ),
        .I2(Q[7]),
        .I3(\shift_reg[1]_0 [3]),
        .I4(\shift[7]_i_6_n_0 ),
        .I5(\shift_reg[1]_0 [2]),
        .O(\shift[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[7]_i_5 
       (.I0(\shift[7]_i_4_4 [7]),
        .I1(\shift[7]_i_4_5 [7]),
        .I2(\shift_reg[1]_0 [1]),
        .I3(\shift[7]_i_4_6 [7]),
        .I4(\shift_reg[1]_0 [0]),
        .I5(\shift[7]_i_4_7 [7]),
        .O(\shift[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[7]_i_6 
       (.I0(\shift[7]_i_4_0 [7]),
        .I1(\shift[7]_i_4_1 [7]),
        .I2(\shift_reg[1]_0 [1]),
        .I3(\shift[7]_i_4_2 [7]),
        .I4(\shift_reg[1]_0 [0]),
        .I5(\shift[7]_i_4_3 [7]),
        .O(\shift[7]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\shift[0]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg[1] 
       (.C(CLK),
        .CE(\shift[7]_i_1_n_0 ),
        .D(\shift[1]_i_1_n_0 ),
        .Q(\shift_reg_n_0_[1] ),
        .R(AR));
  MUXF7 \shift_reg[1]_i_2 
       (.I0(\shift[1]_i_3_n_0 ),
        .I1(\shift[1]_i_4_n_0 ),
        .O(\shift_reg[1]_i_2_n_0 ),
        .S(\shift_reg[1]_0 [2]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg[2] 
       (.C(CLK),
        .CE(\shift[7]_i_1_n_0 ),
        .D(\shift[2]_i_1_n_0 ),
        .Q(\shift_reg_n_0_[2] ),
        .R(AR));
  MUXF7 \shift_reg[2]_i_2 
       (.I0(\shift[2]_i_3_n_0 ),
        .I1(\shift[2]_i_4_n_0 ),
        .O(\shift_reg[2]_i_2_n_0 ),
        .S(\shift_reg[1]_0 [2]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg[3] 
       (.C(CLK),
        .CE(\shift[7]_i_1_n_0 ),
        .D(\shift[3]_i_1_n_0 ),
        .Q(\shift_reg_n_0_[3] ),
        .R(AR));
  MUXF7 \shift_reg[3]_i_2 
       (.I0(\shift[3]_i_3_n_0 ),
        .I1(\shift[3]_i_4_n_0 ),
        .O(\shift_reg[3]_i_2_n_0 ),
        .S(\shift_reg[1]_0 [2]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg[4] 
       (.C(CLK),
        .CE(\shift[7]_i_1_n_0 ),
        .D(\shift[4]_i_1_n_0 ),
        .Q(\shift_reg_n_0_[4] ),
        .R(AR));
  MUXF7 \shift_reg[4]_i_2 
       (.I0(\shift[4]_i_3_n_0 ),
        .I1(\shift[4]_i_4_n_0 ),
        .O(\shift_reg[4]_i_2_n_0 ),
        .S(\shift_reg[1]_0 [2]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg[5] 
       (.C(CLK),
        .CE(\shift[7]_i_1_n_0 ),
        .D(\shift[5]_i_1_n_0 ),
        .Q(\shift_reg_n_0_[5] ),
        .R(AR));
  MUXF7 \shift_reg[5]_i_2 
       (.I0(\shift[5]_i_3_n_0 ),
        .I1(\shift[5]_i_4_n_0 ),
        .O(\shift_reg[5]_i_2_n_0 ),
        .S(\shift_reg[1]_0 [2]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg[6] 
       (.C(CLK),
        .CE(\shift[7]_i_1_n_0 ),
        .D(\shift[6]_i_1_n_0 ),
        .Q(\shift_reg_n_0_[6] ),
        .R(AR));
  MUXF7 \shift_reg[6]_i_2 
       (.I0(\shift[6]_i_3_n_0 ),
        .I1(\shift[6]_i_4_n_0 ),
        .O(\shift_reg[6]_i_2_n_0 ),
        .S(\shift_reg[1]_0 [2]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg[7] 
       (.C(CLK),
        .CE(\shift[7]_i_1_n_0 ),
        .D(\shift[7]_i_2_n_0 ),
        .Q(\shift_reg_n_0_[7] ),
        .R(AR));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \sm_state[0]_i_1 
       (.I0(\sm_state[0]_i_2_n_0 ),
        .I1(\sm_state_reg_n_0_[0] ),
        .I2(\sm_state[0]_i_3_n_0 ),
        .I3(\sm_state[3]_i_2_n_0 ),
        .I4(\sm_state[0]_i_4_n_0 ),
        .O(sm_state[0]));
  LUT6 #(
    .INIT(64'h1100001100101110)) 
    \sm_state[0]_i_2 
       (.I0(\sm_state[0]_i_5_n_0 ),
        .I1(\sm_state_reg_n_0_[4] ),
        .I2(start),
        .I3(\sm_state_reg_n_0_[1] ),
        .I4(p_0_in),
        .I5(\sm_state_reg_n_0_[2] ),
        .O(\sm_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \sm_state[0]_i_3 
       (.I0(\sm_state_reg_n_0_[1] ),
        .I1(\sm_state_reg_n_0_[2] ),
        .I2(\sm_state_reg_n_0_[4] ),
        .I3(\sm_state_reg_n_0_[3] ),
        .O(\sm_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0400040404040404)) 
    \sm_state[0]_i_4 
       (.I0(\sm_state_reg_n_0_[4] ),
        .I1(\sm_state_reg_n_0_[3] ),
        .I2(\sm_state_reg_n_0_[0] ),
        .I3(\sm_state_reg_n_0_[2] ),
        .I4(stop),
        .I5(\sm_state_reg_n_0_[1] ),
        .O(\sm_state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sm_state[0]_i_5 
       (.I0(\sm_state_reg_n_0_[3] ),
        .I1(\sm_state_reg_n_0_[0] ),
        .O(\sm_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00288200)) 
    \sm_state[1]_i_1 
       (.I0(\sm_state[1]_i_2_n_0 ),
        .I1(p_0_in),
        .I2(\sm_state_reg_n_0_[2] ),
        .I3(\sm_state_reg_n_0_[1] ),
        .I4(\sm_state_reg_n_0_[0] ),
        .I5(\sm_state[1]_i_3_n_0 ),
        .O(sm_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \sm_state[1]_i_2 
       (.I0(\sm_state_reg_n_0_[3] ),
        .I1(\sm_state_reg_n_0_[4] ),
        .O(\sm_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000066664446)) 
    \sm_state[1]_i_3 
       (.I0(\sm_state_reg_n_0_[1] ),
        .I1(\sm_state_reg_n_0_[0] ),
        .I2(start),
        .I3(stop),
        .I4(\sm_state_reg_n_0_[2] ),
        .I5(\sm_state[3]_i_5_n_0 ),
        .O(\sm_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1540154010400500)) 
    \sm_state[2]_i_1 
       (.I0(\sm_state_reg_n_0_[4] ),
        .I1(\sm_state_reg_n_0_[0] ),
        .I2(\sm_state_reg_n_0_[1] ),
        .I3(\sm_state_reg_n_0_[2] ),
        .I4(p_0_in),
        .I5(\sm_state_reg_n_0_[3] ),
        .O(sm_state[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF200)) 
    \sm_state[3]_i_1 
       (.I0(\sm_state_reg_n_0_[0] ),
        .I1(\sm_state_reg_n_0_[1] ),
        .I2(\sm_state_reg_n_0_[2] ),
        .I3(\sm_state[3]_i_2_n_0 ),
        .I4(\sm_state[3]_i_3_n_0 ),
        .I5(\sm_state[3]_i_4_n_0 ),
        .O(sm_state[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_state[3]_i_2 
       (.I0(\sm_state[0]_i_3_n_0 ),
        .I1(sda_IBUF),
        .O(\sm_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000FF1FFFF)) 
    \sm_state[3]_i_3 
       (.I0(stop),
        .I1(start),
        .I2(\sm_state_reg_n_0_[2] ),
        .I3(\sm_state_reg_n_0_[0] ),
        .I4(\sm_state_reg_n_0_[1] ),
        .I5(\sm_state[3]_i_5_n_0 ),
        .O(\sm_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \sm_state[3]_i_4 
       (.I0(\sm_state_reg_n_0_[4] ),
        .I1(\sm_state_reg_n_0_[3] ),
        .I2(p_0_in),
        .I3(\sm_state_reg_n_0_[2] ),
        .I4(\sm_state_reg_n_0_[1] ),
        .I5(\sm_state_reg_n_0_[0] ),
        .O(\sm_state[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sm_state[3]_i_5 
       (.I0(\sm_state_reg_n_0_[4] ),
        .I1(\sm_state_reg_n_0_[3] ),
        .O(\sm_state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00800100)) 
    \sm_state[4]_i_1 
       (.I0(\sm_state_reg_n_0_[0] ),
        .I1(\sm_state_reg_n_0_[1] ),
        .I2(\sm_state_reg_n_0_[2] ),
        .I3(\sm_state_reg_n_0_[4] ),
        .I4(\sm_state_reg_n_0_[3] ),
        .O(sm_state[4]));
  FDRE #(
    .INIT(1'b0)) 
    \sm_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(sm_state[0]),
        .Q(\sm_state_reg_n_0_[0] ),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    \sm_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(sm_state[1]),
        .Q(\sm_state_reg_n_0_[1] ),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    \sm_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(sm_state[2]),
        .Q(\sm_state_reg_n_0_[2] ),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    \sm_state_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(sm_state[3]),
        .Q(\sm_state_reg_n_0_[3] ),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    \sm_state_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(sm_state[4]),
        .Q(\sm_state_reg_n_0_[4] ),
        .R(AR));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAE)) 
    start_i_1
       (.I0(XRESET_IBUF),
        .I1(\sm_state_reg_n_0_[0] ),
        .I2(\sm_state_reg_n_0_[4] ),
        .I3(\sm_state_reg_n_0_[3] ),
        .I4(\sm_state_reg_n_0_[2] ),
        .I5(\sm_state_reg_n_0_[1] ),
        .O(start_async_rst));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    start_reg
       (.C(sda_f),
        .CE(1'b1),
        .CLR(start_async_rst),
        .D(CLK),
        .Q(start));
  FDCE #(
    .INIT(1'b0)) 
    stop_reg
       (.C(sda_IBUF),
        .CE(1'b1),
        .CLR(start_reg_0),
        .D(CLK),
        .Q(stop));
  LUT6 #(
    .INIT(64'hFFFFFFD600000004)) 
    vld_plse_i_1
       (.I0(\sm_state_reg_n_0_[0] ),
        .I1(\sm_state_reg_n_0_[4] ),
        .I2(\sm_state_reg_n_0_[3] ),
        .I3(\sm_state_reg_n_0_[1] ),
        .I4(\sm_state_reg_n_0_[2] ),
        .I5(data_vld),
        .O(vld_plse_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vld_plse_reg
       (.C(CLK),
        .CE(1'b1),
        .D(vld_plse_i_1_n_0),
        .Q(data_vld),
        .R(AR));
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
