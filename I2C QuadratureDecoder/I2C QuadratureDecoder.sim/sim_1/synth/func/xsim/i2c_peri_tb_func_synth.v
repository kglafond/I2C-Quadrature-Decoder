// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Sep 30 22:45:04 2019
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
   (Q,
    CLK,
    D,
    \quadB_delay_reg[0]_0 ,
    \quadA_delay_reg[0]_0 );
  output [7:0]Q;
  input CLK;
  input [0:0]D;
  input [0:0]\quadB_delay_reg[0]_0 ;
  input [0:0]\quadA_delay_reg[0]_0 ;

  wire CLK;
  wire [0:0]D;
  wire [7:0]Q;
  wire direction;
  wire direction_i_1__2_n_0;
  wire [2:2]index_delay;
  wire \index_delay_reg_n_0_[0] ;
  wire \index_delay_reg_n_0_[1] ;
  wire noop_inv_i_1_n_0;
  wire noop_reg_inv_n_0;
  wire \o_count[0]_i_1__2_n_0 ;
  wire \o_count[4]_i_2__2_n_0 ;
  wire \o_count[4]_i_3__2_n_0 ;
  wire \o_count[4]_i_4__2_n_0 ;
  wire \o_count[4]_i_5__2_n_0 ;
  wire \o_count[5]_i_2__2_n_0 ;
  wire \o_count[5]_i_3__2_n_0 ;
  wire \o_count[7]_i_2__2_n_0 ;
  wire \o_count[7]_i_3__2_n_0 ;
  wire [3:0]p_0_in;
  wire [7:1]p_2_in;
  wire [1:0]quadA_delay;
  wire [0:0]\quadA_delay_reg[0]_0 ;
  wire [1:0]quadB_delay;
  wire [0:0]\quadB_delay_reg[0]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hBE7D2814)) 
    direction_i_1__2
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(direction),
        .O(direction_i_1__2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    direction_reg
       (.C(CLK),
        .CE(1'b1),
        .D(direction_i_1__2_n_0),
        .Q(direction),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \index_delay_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D),
        .Q(\index_delay_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \index_delay_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\index_delay_reg_n_0_[0] ),
        .Q(\index_delay_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \index_delay_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\index_delay_reg_n_0_[1] ),
        .Q(index_delay),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(p_0_in[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    noop_inv_i_1
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(noop_inv_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    noop_reg_inv
       (.C(CLK),
        .CE(1'b1),
        .D(noop_inv_i_1_n_0),
        .Q(noop_reg_inv_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4545454045454545)) 
    \o_count[0]_i_1__2 
       (.I0(Q[0]),
        .I1(\o_count[4]_i_4__2_n_0 ),
        .I2(direction),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(\o_count[7]_i_3__2_n_0 ),
        .O(\o_count[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h6099)) 
    \o_count[1]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\o_count[4]_i_4__2_n_0 ),
        .I3(direction),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h38B0B083)) 
    \o_count[2]_i_1__2 
       (.I0(\o_count[4]_i_4__2_n_0 ),
        .I1(direction),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'h38B0B0B0B0B0B083)) 
    \o_count[3]_i_1__2 
       (.I0(\o_count[4]_i_4__2_n_0 ),
        .I1(direction),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(p_2_in[3]));
  LUT6 #(
    .INIT(64'hC3CC000066666666)) 
    \o_count[4]_i_1__2 
       (.I0(\o_count[4]_i_2__2_n_0 ),
        .I1(Q[4]),
        .I2(\o_count[4]_i_3__2_n_0 ),
        .I3(Q[3]),
        .I4(\o_count[4]_i_4__2_n_0 ),
        .I5(direction),
        .O(p_2_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \o_count[4]_i_2__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\o_count[4]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \o_count[4]_i_3__2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\o_count[4]_i_3__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \o_count[4]_i_4__2 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\o_count[4]_i_5__2_n_0 ),
        .O(\o_count[4]_i_4__2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \o_count[4]_i_5__2 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[0]),
        .I3(Q[5]),
        .O(\o_count[4]_i_5__2_n_0 ));
  LUT6 #(
    .INIT(64'hFF0000FFAA54AA54)) 
    \o_count[5]_i_1__2 
       (.I0(\o_count[5]_i_2__2_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[5]),
        .I4(\o_count[5]_i_3__2_n_0 ),
        .I5(direction),
        .O(p_2_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \o_count[5]_i_2__2 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\o_count[5]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \o_count[5]_i_3__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\o_count[5]_i_3__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h4B487878)) 
    \o_count[6]_i_1__2 
       (.I0(\o_count[7]_i_2__2_n_0 ),
        .I1(direction),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(\o_count[7]_i_3__2_n_0 ),
        .O(p_2_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h78C078F0)) 
    \o_count[7]_i_1__2 
       (.I0(\o_count[7]_i_2__2_n_0 ),
        .I1(direction),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(\o_count[7]_i_3__2_n_0 ),
        .O(p_2_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \o_count[7]_i_2__2 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\o_count[7]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \o_count[7]_i_3__2 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\o_count[7]_i_3__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[0] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(\o_count[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[1] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(p_2_in[1]),
        .Q(Q[1]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[2] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(p_2_in[2]),
        .Q(Q[2]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[3] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(p_2_in[3]),
        .Q(Q[3]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[4] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(p_2_in[4]),
        .Q(Q[4]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[5] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(p_2_in[5]),
        .Q(Q[5]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[6] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(p_2_in[6]),
        .Q(Q[6]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[7] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(p_2_in[7]),
        .Q(Q[7]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \quadA_delay_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\quadA_delay_reg[0]_0 ),
        .Q(quadA_delay[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadA_delay_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(quadA_delay[0]),
        .Q(quadA_delay[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadA_delay_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(quadA_delay[1]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadB_delay_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\quadB_delay_reg[0]_0 ),
        .Q(quadB_delay[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadB_delay_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(quadB_delay[0]),
        .Q(quadB_delay[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadB_delay_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(quadB_delay[1]),
        .Q(p_0_in[0]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "QuadratureDecoder" *) 
module QuadratureDecoder_0
   (Q,
    CLK,
    D,
    \quadB_delay_reg[0]_0 ,
    \quadA_delay_reg[0]_0 );
  output [7:0]Q;
  input CLK;
  input [0:0]D;
  input [0:0]\quadB_delay_reg[0]_0 ;
  input [0:0]\quadA_delay_reg[0]_0 ;

  wire CLK;
  wire [0:0]D;
  wire [7:0]Q;
  wire direction_i_1__1_n_0;
  wire direction_reg_n_0;
  wire [2:2]index_delay;
  wire \index_delay_reg_n_0_[0] ;
  wire \index_delay_reg_n_0_[1] ;
  wire noop_inv_i_1__0_n_0;
  wire noop_reg_inv_n_0;
  wire \o_count[0]_i_1__1_n_0 ;
  wire \o_count[1]_i_1__1_n_0 ;
  wire \o_count[2]_i_1__1_n_0 ;
  wire \o_count[3]_i_1__1_n_0 ;
  wire \o_count[4]_i_1__1_n_0 ;
  wire \o_count[4]_i_2__1_n_0 ;
  wire \o_count[4]_i_3__1_n_0 ;
  wire \o_count[4]_i_4__1_n_0 ;
  wire \o_count[4]_i_5__1_n_0 ;
  wire \o_count[5]_i_1__1_n_0 ;
  wire \o_count[5]_i_2__1_n_0 ;
  wire \o_count[5]_i_3__1_n_0 ;
  wire \o_count[6]_i_1__1_n_0 ;
  wire \o_count[7]_i_1__1_n_0 ;
  wire \o_count[7]_i_2__1_n_0 ;
  wire \o_count[7]_i_3__1_n_0 ;
  wire [3:0]p_0_in;
  wire [1:0]quadA_delay__0;
  wire [0:0]\quadA_delay_reg[0]_0 ;
  wire [1:0]quadB_delay__0;
  wire [0:0]\quadB_delay_reg[0]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hBE7D2814)) 
    direction_i_1__1
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(direction_reg_n_0),
        .O(direction_i_1__1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    direction_reg
       (.C(CLK),
        .CE(1'b1),
        .D(direction_i_1__1_n_0),
        .Q(direction_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \index_delay_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D),
        .Q(\index_delay_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \index_delay_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\index_delay_reg_n_0_[0] ),
        .Q(\index_delay_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \index_delay_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\index_delay_reg_n_0_[1] ),
        .Q(index_delay),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(p_0_in[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    noop_inv_i_1__0
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(noop_inv_i_1__0_n_0));
  FDRE #(
    .INIT(1'b1)) 
    noop_reg_inv
       (.C(CLK),
        .CE(1'b1),
        .D(noop_inv_i_1__0_n_0),
        .Q(noop_reg_inv_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4545454045454545)) 
    \o_count[0]_i_1__1 
       (.I0(Q[0]),
        .I1(\o_count[4]_i_4__1_n_0 ),
        .I2(direction_reg_n_0),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(\o_count[7]_i_3__1_n_0 ),
        .O(\o_count[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h6099)) 
    \o_count[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\o_count[4]_i_4__1_n_0 ),
        .I3(direction_reg_n_0),
        .O(\o_count[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h38B0B083)) 
    \o_count[2]_i_1__1 
       (.I0(\o_count[4]_i_4__1_n_0 ),
        .I1(direction_reg_n_0),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\o_count[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h38B0B0B0B0B0B083)) 
    \o_count[3]_i_1__1 
       (.I0(\o_count[4]_i_4__1_n_0 ),
        .I1(direction_reg_n_0),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\o_count[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hC3CC000066666666)) 
    \o_count[4]_i_1__1 
       (.I0(\o_count[4]_i_2__1_n_0 ),
        .I1(Q[4]),
        .I2(\o_count[4]_i_3__1_n_0 ),
        .I3(Q[3]),
        .I4(\o_count[4]_i_4__1_n_0 ),
        .I5(direction_reg_n_0),
        .O(\o_count[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \o_count[4]_i_2__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\o_count[4]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \o_count[4]_i_3__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\o_count[4]_i_3__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \o_count[4]_i_4__1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\o_count[4]_i_5__1_n_0 ),
        .O(\o_count[4]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \o_count[4]_i_5__1 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[0]),
        .I3(Q[5]),
        .O(\o_count[4]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'hFF0000FFAA54AA54)) 
    \o_count[5]_i_1__1 
       (.I0(\o_count[5]_i_2__1_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[5]),
        .I4(\o_count[5]_i_3__1_n_0 ),
        .I5(direction_reg_n_0),
        .O(\o_count[5]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \o_count[5]_i_2__1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\o_count[5]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \o_count[5]_i_3__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\o_count[5]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h4B487878)) 
    \o_count[6]_i_1__1 
       (.I0(\o_count[7]_i_2__1_n_0 ),
        .I1(direction_reg_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(\o_count[7]_i_3__1_n_0 ),
        .O(\o_count[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h78C078F0)) 
    \o_count[7]_i_1__1 
       (.I0(\o_count[7]_i_2__1_n_0 ),
        .I1(direction_reg_n_0),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(\o_count[7]_i_3__1_n_0 ),
        .O(\o_count[7]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \o_count[7]_i_2__1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\o_count[7]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \o_count[7]_i_3__1 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\o_count[7]_i_3__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[0] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(\o_count[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[1] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(\o_count[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[2] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(\o_count[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[3] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(\o_count[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[4] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(\o_count[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[5] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(\o_count[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[6] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(\o_count[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[7] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(\o_count[7]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \quadA_delay_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\quadA_delay_reg[0]_0 ),
        .Q(quadA_delay__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadA_delay_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(quadA_delay__0[0]),
        .Q(quadA_delay__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadA_delay_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(quadA_delay__0[1]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadB_delay_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\quadB_delay_reg[0]_0 ),
        .Q(quadB_delay__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadB_delay_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(quadB_delay__0[0]),
        .Q(quadB_delay__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadB_delay_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(quadB_delay__0[1]),
        .Q(p_0_in[0]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "QuadratureDecoder" *) 
module QuadratureDecoder_1
   (Q,
    CLK,
    D,
    \quadB_delay_reg[0]_0 ,
    \quadA_delay_reg[0]_0 );
  output [7:0]Q;
  input CLK;
  input [0:0]D;
  input [0:0]\quadB_delay_reg[0]_0 ;
  input [0:0]\quadA_delay_reg[0]_0 ;

  wire CLK;
  wire [0:0]D;
  wire [7:0]Q;
  wire direction_i_1__0_n_0;
  wire direction_reg_n_0;
  wire [2:2]index_delay;
  wire \index_delay_reg_n_0_[0] ;
  wire \index_delay_reg_n_0_[1] ;
  wire noop_inv_i_1__1_n_0;
  wire noop_reg_inv_n_0;
  wire \o_count[0]_i_1__0_n_0 ;
  wire \o_count[1]_i_1__0_n_0 ;
  wire \o_count[2]_i_1__0_n_0 ;
  wire \o_count[3]_i_1__0_n_0 ;
  wire \o_count[4]_i_1__0_n_0 ;
  wire \o_count[4]_i_2__0_n_0 ;
  wire \o_count[4]_i_3__0_n_0 ;
  wire \o_count[4]_i_4__0_n_0 ;
  wire \o_count[4]_i_5__0_n_0 ;
  wire \o_count[5]_i_1__0_n_0 ;
  wire \o_count[5]_i_2__0_n_0 ;
  wire \o_count[5]_i_3__0_n_0 ;
  wire \o_count[6]_i_1__0_n_0 ;
  wire \o_count[7]_i_1__0_n_0 ;
  wire \o_count[7]_i_2__0_n_0 ;
  wire \o_count[7]_i_3__0_n_0 ;
  wire [3:0]p_0_in;
  wire [1:0]quadA_delay__1;
  wire [0:0]\quadA_delay_reg[0]_0 ;
  wire [1:0]quadB_delay__1;
  wire [0:0]\quadB_delay_reg[0]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hBE7D2814)) 
    direction_i_1__0
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(direction_reg_n_0),
        .O(direction_i_1__0_n_0));
  FDRE #(
    .INIT(1'b1)) 
    direction_reg
       (.C(CLK),
        .CE(1'b1),
        .D(direction_i_1__0_n_0),
        .Q(direction_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \index_delay_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D),
        .Q(\index_delay_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \index_delay_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\index_delay_reg_n_0_[0] ),
        .Q(\index_delay_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \index_delay_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\index_delay_reg_n_0_[1] ),
        .Q(index_delay),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(p_0_in[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    noop_inv_i_1__1
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(noop_inv_i_1__1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    noop_reg_inv
       (.C(CLK),
        .CE(1'b1),
        .D(noop_inv_i_1__1_n_0),
        .Q(noop_reg_inv_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4545454045454545)) 
    \o_count[0]_i_1__0 
       (.I0(Q[0]),
        .I1(\o_count[4]_i_4__0_n_0 ),
        .I2(direction_reg_n_0),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(\o_count[7]_i_3__0_n_0 ),
        .O(\o_count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h6099)) 
    \o_count[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\o_count[4]_i_4__0_n_0 ),
        .I3(direction_reg_n_0),
        .O(\o_count[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h38B0B083)) 
    \o_count[2]_i_1__0 
       (.I0(\o_count[4]_i_4__0_n_0 ),
        .I1(direction_reg_n_0),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\o_count[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h38B0B0B0B0B0B083)) 
    \o_count[3]_i_1__0 
       (.I0(\o_count[4]_i_4__0_n_0 ),
        .I1(direction_reg_n_0),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\o_count[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hC3CC000066666666)) 
    \o_count[4]_i_1__0 
       (.I0(\o_count[4]_i_2__0_n_0 ),
        .I1(Q[4]),
        .I2(\o_count[4]_i_3__0_n_0 ),
        .I3(Q[3]),
        .I4(\o_count[4]_i_4__0_n_0 ),
        .I5(direction_reg_n_0),
        .O(\o_count[4]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \o_count[4]_i_2__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\o_count[4]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \o_count[4]_i_3__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\o_count[4]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \o_count[4]_i_4__0 
       (.I0(Q[5]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\o_count[4]_i_5__0_n_0 ),
        .O(\o_count[4]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \o_count[4]_i_5__0 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[7]),
        .I3(Q[6]),
        .O(\o_count[4]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF0000FFAA54AA54)) 
    \o_count[5]_i_1__0 
       (.I0(\o_count[5]_i_2__0_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[5]),
        .I4(\o_count[5]_i_3__0_n_0 ),
        .I5(direction_reg_n_0),
        .O(\o_count[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \o_count[5]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\o_count[5]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \o_count[5]_i_3__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\o_count[5]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h4B487878)) 
    \o_count[6]_i_1__0 
       (.I0(\o_count[7]_i_2__0_n_0 ),
        .I1(direction_reg_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(\o_count[7]_i_3__0_n_0 ),
        .O(\o_count[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h78C078F0)) 
    \o_count[7]_i_1__0 
       (.I0(\o_count[7]_i_2__0_n_0 ),
        .I1(direction_reg_n_0),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(\o_count[7]_i_3__0_n_0 ),
        .O(\o_count[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \o_count[7]_i_2__0 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\o_count[7]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \o_count[7]_i_3__0 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\o_count[7]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[0] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(\o_count[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[1] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(\o_count[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[2] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(\o_count[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[3] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(\o_count[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[4] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(\o_count[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[5] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(\o_count[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[6] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(\o_count[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[7] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(\o_count[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \quadA_delay_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\quadA_delay_reg[0]_0 ),
        .Q(quadA_delay__1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadA_delay_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(quadA_delay__1[0]),
        .Q(quadA_delay__1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadA_delay_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(quadA_delay__1[1]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadB_delay_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\quadB_delay_reg[0]_0 ),
        .Q(quadB_delay__1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadB_delay_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(quadB_delay__1[0]),
        .Q(quadB_delay__1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadB_delay_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(quadB_delay__1[1]),
        .Q(p_0_in[0]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "QuadratureDecoder" *) 
module QuadratureDecoder_2
   (Q,
    CLK,
    D,
    \quadB_delay_reg[0]_0 ,
    \quadA_delay_reg[0]_0 );
  output [7:0]Q;
  input CLK;
  input [0:0]D;
  input [0:0]\quadB_delay_reg[0]_0 ;
  input [0:0]\quadA_delay_reg[0]_0 ;

  wire CLK;
  wire [0:0]D;
  wire [7:0]Q;
  wire direction_i_1_n_0;
  wire direction_reg_n_0;
  wire [2:2]index_delay;
  wire \index_delay_reg_n_0_[0] ;
  wire \index_delay_reg_n_0_[1] ;
  wire noop_inv_i_1__2_n_0;
  wire noop_reg_inv_n_0;
  wire \o_count[0]_i_1_n_0 ;
  wire \o_count[1]_i_1_n_0 ;
  wire \o_count[2]_i_1_n_0 ;
  wire \o_count[3]_i_1_n_0 ;
  wire \o_count[4]_i_1_n_0 ;
  wire \o_count[4]_i_2_n_0 ;
  wire \o_count[4]_i_3_n_0 ;
  wire \o_count[4]_i_4_n_0 ;
  wire \o_count[4]_i_5_n_0 ;
  wire \o_count[5]_i_1_n_0 ;
  wire \o_count[5]_i_2_n_0 ;
  wire \o_count[5]_i_3_n_0 ;
  wire \o_count[6]_i_1_n_0 ;
  wire \o_count[7]_i_1_n_0 ;
  wire \o_count[7]_i_2_n_0 ;
  wire \o_count[7]_i_3_n_0 ;
  wire [3:0]p_0_in;
  wire [1:0]quadA_delay__2;
  wire [0:0]\quadA_delay_reg[0]_0 ;
  wire [1:0]quadB_delay__2;
  wire [0:0]\quadB_delay_reg[0]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hBE7D2814)) 
    direction_i_1
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(direction_reg_n_0),
        .O(direction_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    direction_reg
       (.C(CLK),
        .CE(1'b1),
        .D(direction_i_1_n_0),
        .Q(direction_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \index_delay_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D),
        .Q(\index_delay_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \index_delay_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\index_delay_reg_n_0_[0] ),
        .Q(\index_delay_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \index_delay_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\index_delay_reg_n_0_[1] ),
        .Q(index_delay),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(p_0_in[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    noop_inv_i_1__2
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(noop_inv_i_1__2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    noop_reg_inv
       (.C(CLK),
        .CE(1'b1),
        .D(noop_inv_i_1__2_n_0),
        .Q(noop_reg_inv_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4545454045454545)) 
    \o_count[0]_i_1 
       (.I0(Q[0]),
        .I1(\o_count[4]_i_4_n_0 ),
        .I2(direction_reg_n_0),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(\o_count[7]_i_3_n_0 ),
        .O(\o_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h6099)) 
    \o_count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\o_count[4]_i_4_n_0 ),
        .I3(direction_reg_n_0),
        .O(\o_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h38B0B083)) 
    \o_count[2]_i_1 
       (.I0(\o_count[4]_i_4_n_0 ),
        .I1(direction_reg_n_0),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\o_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h38B0B0B0B0B0B083)) 
    \o_count[3]_i_1 
       (.I0(\o_count[4]_i_4_n_0 ),
        .I1(direction_reg_n_0),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\o_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC3CC000066666666)) 
    \o_count[4]_i_1 
       (.I0(\o_count[4]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(\o_count[4]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(\o_count[4]_i_4_n_0 ),
        .I5(direction_reg_n_0),
        .O(\o_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \o_count[4]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\o_count[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \o_count[4]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\o_count[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \o_count[4]_i_4 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\o_count[4]_i_5_n_0 ),
        .O(\o_count[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \o_count[4]_i_5 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[0]),
        .I3(Q[5]),
        .O(\o_count[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF0000FFAA54AA54)) 
    \o_count[5]_i_1 
       (.I0(\o_count[5]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[5]),
        .I4(\o_count[5]_i_3_n_0 ),
        .I5(direction_reg_n_0),
        .O(\o_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \o_count[5]_i_2 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\o_count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \o_count[5]_i_3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\o_count[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h4B487878)) 
    \o_count[6]_i_1 
       (.I0(\o_count[7]_i_2_n_0 ),
        .I1(direction_reg_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(\o_count[7]_i_3_n_0 ),
        .O(\o_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h78C078F0)) 
    \o_count[7]_i_1 
       (.I0(\o_count[7]_i_2_n_0 ),
        .I1(direction_reg_n_0),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(\o_count[7]_i_3_n_0 ),
        .O(\o_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \o_count[7]_i_2 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\o_count[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \o_count[7]_i_3 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\o_count[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[0] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(\o_count[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[1] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(\o_count[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[2] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(\o_count[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[3] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(\o_count[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[4] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(\o_count[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[5] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(\o_count[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[6] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(\o_count[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \o_count_reg[7] 
       (.C(CLK),
        .CE(noop_reg_inv_n_0),
        .D(\o_count[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(index_delay));
  FDRE #(
    .INIT(1'b0)) 
    \quadA_delay_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\quadA_delay_reg[0]_0 ),
        .Q(quadA_delay__2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadA_delay_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(quadA_delay__2[0]),
        .Q(quadA_delay__2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadA_delay_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(quadA_delay__2[1]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadB_delay_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\quadB_delay_reg[0]_0 ),
        .Q(quadB_delay__2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadB_delay_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(quadB_delay__2[0]),
        .Q(quadB_delay__2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadB_delay_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(quadB_delay__2[1]),
        .Q(p_0_in[0]),
        .R(1'b0));
endmodule

(* data_width = "8" *) (* num_data = "8" *) 
(* NotValidForBitStream *)
module i2c_quad_decode
   (sclk,
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

  wire byte_cnt;
  wire \byte_cnt[7]_i_4_n_0 ;
  wire \byte_cnt[7]_i_5_n_0 ;
  wire [7:0]byte_cnt_reg;
  wire [7:0]data_int;
  wire [3:0]i2c_addr;
  wire \i2c_addr[2]_i_2_n_0 ;
  wire \i2c_addr[3]_i_5_n_0 ;
  wire i2c_n_1;
  wire i2c_n_13;
  wire i2c_n_14;
  wire i2c_n_15;
  wire i2c_n_16;
  wire i2c_n_17;
  wire i2c_n_19;
  wire i2c_n_2;
  wire i2c_n_20;
  wire i2c_n_21;
  wire i2c_n_22;
  wire i2c_n_23;
  wire i2c_n_24;
  wire i2c_n_25;
  wire i2c_n_26;
  wire i2c_n_27;
  wire i2c_n_28;
  wire i2c_n_29;
  wire i2c_n_3;
  wire i2c_n_30;
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
  wire i2c_n_50;
  wire i2c_n_51;
  wire i2c_n_52;
  wire i2c_n_53;
  wire i2c_n_54;
  wire i2c_n_55;
  wire i2c_n_56;
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
  wire [7:0]o_count;
  wire p_0_in1_in;
  wire p_0_in1_in_BUFG;
  wire [7:0]p_0_in__0;
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
  wire sclk;
  wire sclk_IBUF;
  wire sclk_IBUF_BUFG;
  (* PULL = "PULLUP" *) wire sda;
  wire sda_IBUF;
  wire sda_TRI;
  wire [2:2]sda_sync;
  wire start;

  LUT1 #(
    .INIT(2'h1)) 
    \byte_cnt[0]_i_1 
       (.I0(byte_cnt_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \byte_cnt[1]_i_1 
       (.I0(byte_cnt_reg[1]),
        .I1(byte_cnt_reg[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \byte_cnt[2]_i_1 
       (.I0(byte_cnt_reg[2]),
        .I1(byte_cnt_reg[1]),
        .I2(byte_cnt_reg[0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \byte_cnt[3]_i_1 
       (.I0(byte_cnt_reg[0]),
        .I1(byte_cnt_reg[1]),
        .I2(byte_cnt_reg[2]),
        .I3(byte_cnt_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \byte_cnt[4]_i_1 
       (.I0(byte_cnt_reg[4]),
        .I1(byte_cnt_reg[0]),
        .I2(byte_cnt_reg[1]),
        .I3(byte_cnt_reg[2]),
        .I4(byte_cnt_reg[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \byte_cnt[5]_i_1 
       (.I0(byte_cnt_reg[5]),
        .I1(byte_cnt_reg[3]),
        .I2(byte_cnt_reg[2]),
        .I3(byte_cnt_reg[1]),
        .I4(byte_cnt_reg[0]),
        .I5(byte_cnt_reg[4]),
        .O(p_0_in__0[5]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \byte_cnt[6]_i_1 
       (.I0(byte_cnt_reg[6]),
        .I1(byte_cnt_reg[4]),
        .I2(\byte_cnt[7]_i_5_n_0 ),
        .I3(byte_cnt_reg[5]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \byte_cnt[7]_i_3 
       (.I0(byte_cnt_reg[7]),
        .I1(byte_cnt_reg[5]),
        .I2(\byte_cnt[7]_i_5_n_0 ),
        .I3(byte_cnt_reg[4]),
        .I4(byte_cnt_reg[6]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \byte_cnt[7]_i_4 
       (.I0(byte_cnt_reg[4]),
        .I1(byte_cnt_reg[6]),
        .I2(byte_cnt_reg[7]),
        .I3(byte_cnt_reg[5]),
        .O(\byte_cnt[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \byte_cnt[7]_i_5 
       (.I0(byte_cnt_reg[3]),
        .I1(byte_cnt_reg[2]),
        .I2(byte_cnt_reg[1]),
        .I3(byte_cnt_reg[0]),
        .O(\byte_cnt[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[0] 
       (.C(p_0_in1_in_BUFG),
        .CE(byte_cnt),
        .D(p_0_in__0[0]),
        .Q(byte_cnt_reg[0]),
        .R(i2c_n_19));
  FDRE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[1] 
       (.C(p_0_in1_in_BUFG),
        .CE(byte_cnt),
        .D(p_0_in__0[1]),
        .Q(byte_cnt_reg[1]),
        .R(i2c_n_19));
  FDRE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[2] 
       (.C(p_0_in1_in_BUFG),
        .CE(byte_cnt),
        .D(p_0_in__0[2]),
        .Q(byte_cnt_reg[2]),
        .R(i2c_n_19));
  FDRE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[3] 
       (.C(p_0_in1_in_BUFG),
        .CE(byte_cnt),
        .D(p_0_in__0[3]),
        .Q(byte_cnt_reg[3]),
        .R(i2c_n_19));
  FDRE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[4] 
       (.C(p_0_in1_in_BUFG),
        .CE(byte_cnt),
        .D(p_0_in__0[4]),
        .Q(byte_cnt_reg[4]),
        .R(i2c_n_19));
  FDRE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[5] 
       (.C(p_0_in1_in_BUFG),
        .CE(byte_cnt),
        .D(p_0_in__0[5]),
        .Q(byte_cnt_reg[5]),
        .R(i2c_n_19));
  FDRE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[6] 
       (.C(p_0_in1_in_BUFG),
        .CE(byte_cnt),
        .D(p_0_in__0[6]),
        .Q(byte_cnt_reg[6]),
        .R(i2c_n_19));
  FDRE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[7] 
       (.C(p_0_in1_in_BUFG),
        .CE(byte_cnt),
        .D(p_0_in__0[7]),
        .Q(byte_cnt_reg[7]),
        .R(i2c_n_19));
  i2c_slave i2c
       (.D({i2c_n_1,i2c_n_2,i2c_n_3,i2c_n_4}),
        .E(i2c_n_13),
        .Q(i2c_addr),
        .SR(i2c_n_19),
        .\byte_cnt_reg[0] (\byte_cnt[7]_i_4_n_0 ),
        .\byte_cnt_reg[0]_0 (\byte_cnt[7]_i_5_n_0 ),
        .\data_int_reg[7]_0 (data_int),
        .\i2c_addr_reg[0] (i2c_n_55),
        .\i2c_addr_reg[1] (i2c_n_53),
        .\i2c_addr_reg[1]_0 (i2c_n_54),
        .\i2c_addr_reg[1]_1 (i2c_n_56),
        .\i2c_addr_reg[2] (\i2c_addr[2]_i_2_n_0 ),
        .\i2c_addr_reg[3] (\i2c_addr[3]_i_5_n_0 ),
        .\mem_reg[0][7] (o_count),
        .\mem_reg[1][7] ({q2_n_0,q2_n_1,q2_n_2,q2_n_3,q2_n_4,q2_n_5,q2_n_6,q2_n_7}),
        .\mem_reg[2][7] ({q3_n_0,q3_n_1,q3_n_2,q3_n_3,q3_n_4,q3_n_5,q3_n_6,q3_n_7}),
        .\mem_reg[3][7] ({q4_n_0,q4_n_1,q4_n_2,q4_n_3,q4_n_4,q4_n_5,q4_n_6,q4_n_7}),
        .\mem_reg[4][0] (byte_cnt_reg[3:0]),
        .\o_count_reg[7] ({i2c_n_21,i2c_n_22,i2c_n_23,i2c_n_24,i2c_n_25,i2c_n_26,i2c_n_27,i2c_n_28}),
        .\o_count_reg[7]_0 ({i2c_n_29,i2c_n_30,i2c_n_31,i2c_n_32,i2c_n_33,i2c_n_34,i2c_n_35,i2c_n_36}),
        .\o_count_reg[7]_1 ({i2c_n_37,i2c_n_38,i2c_n_39,i2c_n_40,i2c_n_41,i2c_n_42,i2c_n_43,i2c_n_44}),
        .\o_count_reg[7]_2 ({i2c_n_45,i2c_n_46,i2c_n_47,i2c_n_48,i2c_n_49,i2c_n_50,i2c_n_51,i2c_n_52}),
        .p_0_in1_in_BUFG(p_0_in1_in_BUFG),
        .sda_TRI(sda_TRI),
        .sda_sync(sda_sync),
        .\shift[0]_i_2_0 (\mem_reg_n_0_[7][0] ),
        .\shift[0]_i_2_1 (\mem_reg_n_0_[6][0] ),
        .\shift[0]_i_2_2 (\mem_reg_n_0_[5][0] ),
        .\shift[0]_i_2_3 (\mem_reg_n_0_[4][0] ),
        .\shift[7]_i_4_0 (\mem_reg_n_0_[7][7] ),
        .\shift[7]_i_4_1 (\mem_reg_n_0_[6][7] ),
        .\shift[7]_i_4_2 (\mem_reg_n_0_[5][7] ),
        .\shift[7]_i_4_3 (\mem_reg_n_0_[4][7] ),
        .\shift[7]_i_4_4 ({\mem_reg_n_0_[3][7] ,\mem_reg_n_0_[3][6] ,\mem_reg_n_0_[3][5] ,\mem_reg_n_0_[3][4] ,\mem_reg_n_0_[3][3] ,\mem_reg_n_0_[3][2] ,\mem_reg_n_0_[3][1] ,\mem_reg_n_0_[3][0] }),
        .\shift[7]_i_4_5 ({\mem_reg_n_0_[2][7] ,\mem_reg_n_0_[2][6] ,\mem_reg_n_0_[2][5] ,\mem_reg_n_0_[2][4] ,\mem_reg_n_0_[2][3] ,\mem_reg_n_0_[2][2] ,\mem_reg_n_0_[2][1] ,\mem_reg_n_0_[2][0] }),
        .\shift[7]_i_4_6 ({\mem_reg_n_0_[1][7] ,\mem_reg_n_0_[1][6] ,\mem_reg_n_0_[1][5] ,\mem_reg_n_0_[1][4] ,\mem_reg_n_0_[1][3] ,\mem_reg_n_0_[1][2] ,\mem_reg_n_0_[1][1] ,\mem_reg_n_0_[1][0] }),
        .\shift[7]_i_4_7 ({\mem_reg_n_0_[0][7] ,\mem_reg_n_0_[0][6] ,\mem_reg_n_0_[0][5] ,\mem_reg_n_0_[0][4] ,\mem_reg_n_0_[0][3] ,\mem_reg_n_0_[0][2] ,\mem_reg_n_0_[0][1] ,\mem_reg_n_0_[0][0] }),
        .\shift_reg[1]_i_2_0 (\mem_reg_n_0_[7][1] ),
        .\shift_reg[1]_i_2_1 (\mem_reg_n_0_[6][1] ),
        .\shift_reg[1]_i_2_2 (\mem_reg_n_0_[5][1] ),
        .\shift_reg[1]_i_2_3 (\mem_reg_n_0_[4][1] ),
        .\shift_reg[2]_i_2_0 (\mem_reg_n_0_[7][2] ),
        .\shift_reg[2]_i_2_1 (\mem_reg_n_0_[6][2] ),
        .\shift_reg[2]_i_2_2 (\mem_reg_n_0_[5][2] ),
        .\shift_reg[2]_i_2_3 (\mem_reg_n_0_[4][2] ),
        .\shift_reg[3]_i_2_0 (\mem_reg_n_0_[7][3] ),
        .\shift_reg[3]_i_2_1 (\mem_reg_n_0_[6][3] ),
        .\shift_reg[3]_i_2_2 (\mem_reg_n_0_[5][3] ),
        .\shift_reg[3]_i_2_3 (\mem_reg_n_0_[4][3] ),
        .\shift_reg[4]_i_2_0 (\mem_reg_n_0_[7][4] ),
        .\shift_reg[4]_i_2_1 (\mem_reg_n_0_[6][4] ),
        .\shift_reg[4]_i_2_2 (\mem_reg_n_0_[5][4] ),
        .\shift_reg[4]_i_2_3 (\mem_reg_n_0_[4][4] ),
        .\shift_reg[5]_i_2_0 (\mem_reg_n_0_[7][5] ),
        .\shift_reg[5]_i_2_1 (\mem_reg_n_0_[6][5] ),
        .\shift_reg[5]_i_2_2 (\mem_reg_n_0_[5][5] ),
        .\shift_reg[5]_i_2_3 (\mem_reg_n_0_[4][5] ),
        .\shift_reg[6]_i_2_0 (\mem_reg_n_0_[7][6] ),
        .\shift_reg[6]_i_2_1 (\mem_reg_n_0_[6][6] ),
        .\shift_reg[6]_i_2_2 (\mem_reg_n_0_[5][6] ),
        .\shift_reg[6]_i_2_3 (\mem_reg_n_0_[4][6] ),
        .\shift_reg[7]_0 ({\mem_reg_n_0_[8][7] ,\mem_reg_n_0_[8][6] ,\mem_reg_n_0_[8][5] ,\mem_reg_n_0_[8][4] ,\mem_reg_n_0_[8][3] ,\mem_reg_n_0_[8][2] ,\mem_reg_n_0_[8][1] ,\mem_reg_n_0_[8][0] }),
        .start(start),
        .start_reg_0(i2c_n_14),
        .start_reg_1(i2c_n_15),
        .start_reg_2(i2c_n_16),
        .start_reg_3(i2c_n_17),
        .vld_plse_reg_0(byte_cnt),
        .vld_plse_reg_1(i2c_n_20));
  LUT2 #(
    .INIT(4'h8)) 
    \i2c_addr[2]_i_2 
       (.I0(i2c_addr[1]),
        .I1(i2c_addr[0]),
        .O(\i2c_addr[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \i2c_addr[3]_i_5 
       (.I0(byte_cnt_reg[1]),
        .I1(byte_cnt_reg[3]),
        .I2(byte_cnt_reg[2]),
        .O(\i2c_addr[3]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i2c_addr_reg[0] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_20),
        .D(i2c_n_4),
        .Q(i2c_addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i2c_addr_reg[1] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_20),
        .D(i2c_n_3),
        .Q(i2c_addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i2c_addr_reg[2] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_20),
        .D(i2c_n_2),
        .Q(i2c_addr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i2c_addr_reg[3] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_20),
        .D(i2c_n_1),
        .Q(i2c_addr[3]),
        .R(1'b0));
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
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][0] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_16),
        .D(i2c_n_52),
        .Q(\mem_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][1] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_16),
        .D(i2c_n_51),
        .Q(\mem_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][2] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_16),
        .D(i2c_n_50),
        .Q(\mem_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][3] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_16),
        .D(i2c_n_49),
        .Q(\mem_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][4] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_16),
        .D(i2c_n_48),
        .Q(\mem_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][5] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_16),
        .D(i2c_n_47),
        .Q(\mem_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][6] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_16),
        .D(i2c_n_46),
        .Q(\mem_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][7] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_16),
        .D(i2c_n_45),
        .Q(\mem_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][0] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_15),
        .D(i2c_n_44),
        .Q(\mem_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][1] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_15),
        .D(i2c_n_43),
        .Q(\mem_reg_n_0_[1][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][2] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_15),
        .D(i2c_n_42),
        .Q(\mem_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][3] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_15),
        .D(i2c_n_41),
        .Q(\mem_reg_n_0_[1][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][4] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_15),
        .D(i2c_n_40),
        .Q(\mem_reg_n_0_[1][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][5] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_15),
        .D(i2c_n_39),
        .Q(\mem_reg_n_0_[1][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][6] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_15),
        .D(i2c_n_38),
        .Q(\mem_reg_n_0_[1][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][7] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_15),
        .D(i2c_n_37),
        .Q(\mem_reg_n_0_[1][7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][0] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_14),
        .D(i2c_n_36),
        .Q(\mem_reg_n_0_[2][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][1] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_14),
        .D(i2c_n_35),
        .Q(\mem_reg_n_0_[2][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][2] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_14),
        .D(i2c_n_34),
        .Q(\mem_reg_n_0_[2][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][3] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_14),
        .D(i2c_n_33),
        .Q(\mem_reg_n_0_[2][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][4] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_14),
        .D(i2c_n_32),
        .Q(\mem_reg_n_0_[2][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][5] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_14),
        .D(i2c_n_31),
        .Q(\mem_reg_n_0_[2][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][6] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_14),
        .D(i2c_n_30),
        .Q(\mem_reg_n_0_[2][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][7] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_14),
        .D(i2c_n_29),
        .Q(\mem_reg_n_0_[2][7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][0] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_13),
        .D(i2c_n_28),
        .Q(\mem_reg_n_0_[3][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][1] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_13),
        .D(i2c_n_27),
        .Q(\mem_reg_n_0_[3][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][2] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_13),
        .D(i2c_n_26),
        .Q(\mem_reg_n_0_[3][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][3] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_13),
        .D(i2c_n_25),
        .Q(\mem_reg_n_0_[3][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][4] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_13),
        .D(i2c_n_24),
        .Q(\mem_reg_n_0_[3][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][5] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_13),
        .D(i2c_n_23),
        .Q(\mem_reg_n_0_[3][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][6] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_13),
        .D(i2c_n_22),
        .Q(\mem_reg_n_0_[3][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][7] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_13),
        .D(i2c_n_21),
        .Q(\mem_reg_n_0_[3][7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][0] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_56),
        .D(data_int[0]),
        .Q(\mem_reg_n_0_[4][0] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][1] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_56),
        .D(data_int[1]),
        .Q(\mem_reg_n_0_[4][1] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][2] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_56),
        .D(data_int[2]),
        .Q(\mem_reg_n_0_[4][2] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][3] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_56),
        .D(data_int[3]),
        .Q(\mem_reg_n_0_[4][3] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][4] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_56),
        .D(data_int[4]),
        .Q(\mem_reg_n_0_[4][4] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][5] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_56),
        .D(data_int[5]),
        .Q(\mem_reg_n_0_[4][5] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][6] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_56),
        .D(data_int[6]),
        .Q(\mem_reg_n_0_[4][6] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][7] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_56),
        .D(data_int[7]),
        .Q(\mem_reg_n_0_[4][7] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][0] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_55),
        .D(data_int[0]),
        .Q(\mem_reg_n_0_[5][0] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][1] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_55),
        .D(data_int[1]),
        .Q(\mem_reg_n_0_[5][1] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][2] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_55),
        .D(data_int[2]),
        .Q(\mem_reg_n_0_[5][2] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][3] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_55),
        .D(data_int[3]),
        .Q(\mem_reg_n_0_[5][3] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][4] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_55),
        .D(data_int[4]),
        .Q(\mem_reg_n_0_[5][4] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][5] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_55),
        .D(data_int[5]),
        .Q(\mem_reg_n_0_[5][5] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][6] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_55),
        .D(data_int[6]),
        .Q(\mem_reg_n_0_[5][6] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][7] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_55),
        .D(data_int[7]),
        .Q(\mem_reg_n_0_[5][7] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][0] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_54),
        .D(data_int[0]),
        .Q(\mem_reg_n_0_[6][0] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][1] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_54),
        .D(data_int[1]),
        .Q(\mem_reg_n_0_[6][1] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][2] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_54),
        .D(data_int[2]),
        .Q(\mem_reg_n_0_[6][2] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][3] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_54),
        .D(data_int[3]),
        .Q(\mem_reg_n_0_[6][3] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][4] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_54),
        .D(data_int[4]),
        .Q(\mem_reg_n_0_[6][4] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][5] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_54),
        .D(data_int[5]),
        .Q(\mem_reg_n_0_[6][5] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][6] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_54),
        .D(data_int[6]),
        .Q(\mem_reg_n_0_[6][6] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][7] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_54),
        .D(data_int[7]),
        .Q(\mem_reg_n_0_[6][7] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][0] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_53),
        .D(data_int[0]),
        .Q(\mem_reg_n_0_[7][0] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][1] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_53),
        .D(data_int[1]),
        .Q(\mem_reg_n_0_[7][1] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][2] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_53),
        .D(data_int[2]),
        .Q(\mem_reg_n_0_[7][2] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][3] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_53),
        .D(data_int[3]),
        .Q(\mem_reg_n_0_[7][3] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][4] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_53),
        .D(data_int[4]),
        .Q(\mem_reg_n_0_[7][4] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][5] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_53),
        .D(data_int[5]),
        .Q(\mem_reg_n_0_[7][5] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][6] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_53),
        .D(data_int[6]),
        .Q(\mem_reg_n_0_[7][6] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][7] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_53),
        .D(data_int[7]),
        .Q(\mem_reg_n_0_[7][7] ),
        .R(start));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][0] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_17),
        .D(data_int[0]),
        .Q(\mem_reg_n_0_[8][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][1] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_17),
        .D(data_int[1]),
        .Q(\mem_reg_n_0_[8][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][2] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_17),
        .D(data_int[2]),
        .Q(\mem_reg_n_0_[8][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][3] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_17),
        .D(data_int[3]),
        .Q(\mem_reg_n_0_[8][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][4] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_17),
        .D(data_int[4]),
        .Q(\mem_reg_n_0_[8][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][5] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_17),
        .D(data_int[5]),
        .Q(\mem_reg_n_0_[8][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][6] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_17),
        .D(data_int[6]),
        .Q(\mem_reg_n_0_[8][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][7] 
       (.C(p_0_in1_in_BUFG),
        .CE(i2c_n_17),
        .D(data_int[7]),
        .Q(\mem_reg_n_0_[8][7] ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  PULLUP p1
       (.O(sda));
  (* BOX_TYPE = "PRIMITIVE" *) 
  PULLUP p2
       (.O(scl));
  BUFG p_0_in1_in_BUFG_inst
       (.I(p_0_in1_in),
        .O(p_0_in1_in_BUFG));
  QuadratureDecoder q1
       (.CLK(sclk_IBUF_BUFG),
        .D(index1_IBUF),
        .Q(o_count),
        .\quadA_delay_reg[0]_0 (quadA1_IBUF),
        .\quadB_delay_reg[0]_0 (quadB1_IBUF));
  QuadratureDecoder_0 q2
       (.CLK(sclk_IBUF_BUFG),
        .D(index2_IBUF),
        .Q({q2_n_0,q2_n_1,q2_n_2,q2_n_3,q2_n_4,q2_n_5,q2_n_6,q2_n_7}),
        .\quadA_delay_reg[0]_0 (quadA2_IBUF),
        .\quadB_delay_reg[0]_0 (quadB2_IBUF));
  QuadratureDecoder_1 q3
       (.CLK(sclk_IBUF_BUFG),
        .D(index3_IBUF),
        .Q({q3_n_0,q3_n_1,q3_n_2,q3_n_3,q3_n_4,q3_n_5,q3_n_6,q3_n_7}),
        .\quadA_delay_reg[0]_0 (quadA3_IBUF),
        .\quadB_delay_reg[0]_0 (quadB3_IBUF));
  QuadratureDecoder_2 q4
       (.CLK(sclk_IBUF_BUFG),
        .D(index4_IBUF),
        .Q({q4_n_0,q4_n_1,q4_n_2,q4_n_3,q4_n_4,q4_n_5,q4_n_6,q4_n_7}),
        .\quadA_delay_reg[0]_0 (quadA4_IBUF),
        .\quadB_delay_reg[0]_0 (quadB4_IBUF));
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
  IBUF scl_IBUF_inst
       (.I(scl),
        .O(scl_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \scl_sync_reg[2] 
       (.C(sclk_IBUF_BUFG),
        .CE(1'b1),
        .D(scl_IBUF),
        .Q(p_0_in1_in),
        .R(1'b0));
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
  FDRE #(
    .INIT(1'b0)) 
    \sda_sync_reg[2] 
       (.C(sclk_IBUF_BUFG),
        .CE(1'b1),
        .D(sda_IBUF),
        .Q(sda_sync),
        .R(1'b0));
endmodule

module i2c_slave
   (start,
    D,
    \data_int_reg[7]_0 ,
    E,
    start_reg_0,
    start_reg_1,
    start_reg_2,
    start_reg_3,
    vld_plse_reg_0,
    SR,
    vld_plse_reg_1,
    \o_count_reg[7] ,
    \o_count_reg[7]_0 ,
    \o_count_reg[7]_1 ,
    \o_count_reg[7]_2 ,
    \i2c_addr_reg[1] ,
    \i2c_addr_reg[1]_0 ,
    \i2c_addr_reg[0] ,
    \i2c_addr_reg[1]_1 ,
    sda_TRI,
    p_0_in1_in_BUFG,
    sda_sync,
    Q,
    \i2c_addr_reg[2] ,
    \i2c_addr_reg[3] ,
    \byte_cnt_reg[0] ,
    \mem_reg[4][0] ,
    \byte_cnt_reg[0]_0 ,
    \shift_reg[7]_0 ,
    \shift[7]_i_4_0 ,
    \shift[7]_i_4_1 ,
    \shift[7]_i_4_2 ,
    \shift[7]_i_4_3 ,
    \shift[7]_i_4_4 ,
    \shift[7]_i_4_5 ,
    \shift[7]_i_4_6 ,
    \shift[7]_i_4_7 ,
    \mem_reg[3][7] ,
    \mem_reg[2][7] ,
    \mem_reg[1][7] ,
    \mem_reg[0][7] ,
    \shift_reg[6]_i_2_0 ,
    \shift_reg[6]_i_2_1 ,
    \shift_reg[6]_i_2_2 ,
    \shift_reg[6]_i_2_3 ,
    \shift_reg[5]_i_2_0 ,
    \shift_reg[5]_i_2_1 ,
    \shift_reg[5]_i_2_2 ,
    \shift_reg[5]_i_2_3 ,
    \shift_reg[4]_i_2_0 ,
    \shift_reg[4]_i_2_1 ,
    \shift_reg[4]_i_2_2 ,
    \shift_reg[4]_i_2_3 ,
    \shift_reg[3]_i_2_0 ,
    \shift_reg[3]_i_2_1 ,
    \shift_reg[3]_i_2_2 ,
    \shift_reg[3]_i_2_3 ,
    \shift_reg[2]_i_2_0 ,
    \shift_reg[2]_i_2_1 ,
    \shift_reg[2]_i_2_2 ,
    \shift_reg[2]_i_2_3 ,
    \shift_reg[1]_i_2_0 ,
    \shift_reg[1]_i_2_1 ,
    \shift_reg[1]_i_2_2 ,
    \shift_reg[1]_i_2_3 ,
    \shift[0]_i_2_0 ,
    \shift[0]_i_2_1 ,
    \shift[0]_i_2_2 ,
    \shift[0]_i_2_3 );
  output start;
  output [3:0]D;
  output [7:0]\data_int_reg[7]_0 ;
  output [0:0]E;
  output [0:0]start_reg_0;
  output [0:0]start_reg_1;
  output [0:0]start_reg_2;
  output [0:0]start_reg_3;
  output [0:0]vld_plse_reg_0;
  output [0:0]SR;
  output [0:0]vld_plse_reg_1;
  output [7:0]\o_count_reg[7] ;
  output [7:0]\o_count_reg[7]_0 ;
  output [7:0]\o_count_reg[7]_1 ;
  output [7:0]\o_count_reg[7]_2 ;
  output \i2c_addr_reg[1] ;
  output \i2c_addr_reg[1]_0 ;
  output \i2c_addr_reg[0] ;
  output \i2c_addr_reg[1]_1 ;
  output sda_TRI;
  input p_0_in1_in_BUFG;
  input [0:0]sda_sync;
  input [3:0]Q;
  input \i2c_addr_reg[2] ;
  input \i2c_addr_reg[3] ;
  input \byte_cnt_reg[0] ;
  input [3:0]\mem_reg[4][0] ;
  input \byte_cnt_reg[0]_0 ;
  input [7:0]\shift_reg[7]_0 ;
  input \shift[7]_i_4_0 ;
  input \shift[7]_i_4_1 ;
  input \shift[7]_i_4_2 ;
  input \shift[7]_i_4_3 ;
  input [7:0]\shift[7]_i_4_4 ;
  input [7:0]\shift[7]_i_4_5 ;
  input [7:0]\shift[7]_i_4_6 ;
  input [7:0]\shift[7]_i_4_7 ;
  input [7:0]\mem_reg[3][7] ;
  input [7:0]\mem_reg[2][7] ;
  input [7:0]\mem_reg[1][7] ;
  input [7:0]\mem_reg[0][7] ;
  input \shift_reg[6]_i_2_0 ;
  input \shift_reg[6]_i_2_1 ;
  input \shift_reg[6]_i_2_2 ;
  input \shift_reg[6]_i_2_3 ;
  input \shift_reg[5]_i_2_0 ;
  input \shift_reg[5]_i_2_1 ;
  input \shift_reg[5]_i_2_2 ;
  input \shift_reg[5]_i_2_3 ;
  input \shift_reg[4]_i_2_0 ;
  input \shift_reg[4]_i_2_1 ;
  input \shift_reg[4]_i_2_2 ;
  input \shift_reg[4]_i_2_3 ;
  input \shift_reg[3]_i_2_0 ;
  input \shift_reg[3]_i_2_1 ;
  input \shift_reg[3]_i_2_2 ;
  input \shift_reg[3]_i_2_3 ;
  input \shift_reg[2]_i_2_0 ;
  input \shift_reg[2]_i_2_1 ;
  input \shift_reg[2]_i_2_2 ;
  input \shift_reg[2]_i_2_3 ;
  input \shift_reg[1]_i_2_0 ;
  input \shift_reg[1]_i_2_1 ;
  input \shift_reg[1]_i_2_2 ;
  input \shift_reg[1]_i_2_3 ;
  input \shift[0]_i_2_0 ;
  input \shift[0]_i_2_1 ;
  input \shift[0]_i_2_2 ;
  input \shift[0]_i_2_3 ;

  wire [3:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire ack_out_i_1_n_0;
  wire ack_out_reg_n_0;
  wire \byte_cnt_reg[0] ;
  wire \byte_cnt_reg[0]_0 ;
  wire data_int0;
  wire [7:0]\data_int_reg[7]_0 ;
  wire data_vld;
  wire \i2c_addr[3]_i_3_n_0 ;
  wire \i2c_addr[3]_i_4_n_0 ;
  wire \i2c_addr[3]_i_6_n_0 ;
  wire \i2c_addr_reg[0] ;
  wire \i2c_addr_reg[1] ;
  wire \i2c_addr_reg[1]_0 ;
  wire \i2c_addr_reg[1]_1 ;
  wire \i2c_addr_reg[2] ;
  wire \i2c_addr_reg[3] ;
  wire \mem[8][7]_i_2_n_0 ;
  wire [7:0]\mem_reg[0][7] ;
  wire [7:0]\mem_reg[1][7] ;
  wire [7:0]\mem_reg[2][7] ;
  wire [7:0]\mem_reg[3][7] ;
  wire [3:0]\mem_reg[4][0] ;
  wire [7:0]\o_count_reg[7] ;
  wire [7:0]\o_count_reg[7]_0 ;
  wire [7:0]\o_count_reg[7]_1 ;
  wire [7:0]\o_count_reg[7]_2 ;
  wire [6:0]p_0_in;
  wire p_0_in1_in_BUFG;
  wire p_0_in_0;
  wire r_w;
  wire r_w_i_1_n_0;
  wire sda_TRI;
  wire sda_en;
  wire sda_en_i_1_n_0;
  wire sda_en_i_2_n_0;
  wire sda_oe;
  wire [0:0]sda_sync;
  wire \shift[0]_i_1_n_0 ;
  wire \shift[0]_i_2_0 ;
  wire \shift[0]_i_2_1 ;
  wire \shift[0]_i_2_2 ;
  wire \shift[0]_i_2_3 ;
  wire \shift[0]_i_2_n_0 ;
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
  wire \shift[7]_i_2_n_0 ;
  wire \shift[7]_i_3_n_0 ;
  wire \shift[7]_i_4_0 ;
  wire \shift[7]_i_4_1 ;
  wire \shift[7]_i_4_2 ;
  wire \shift[7]_i_4_3 ;
  wire [7:0]\shift[7]_i_4_4 ;
  wire [7:0]\shift[7]_i_4_5 ;
  wire [7:0]\shift[7]_i_4_6 ;
  wire [7:0]\shift[7]_i_4_7 ;
  wire \shift[7]_i_4_n_0 ;
  wire \shift[7]_i_5_n_0 ;
  wire \shift[7]_i_6_n_0 ;
  wire \shift_reg[1]_i_2_0 ;
  wire \shift_reg[1]_i_2_1 ;
  wire \shift_reg[1]_i_2_2 ;
  wire \shift_reg[1]_i_2_3 ;
  wire \shift_reg[1]_i_2_n_0 ;
  wire \shift_reg[2]_i_2_0 ;
  wire \shift_reg[2]_i_2_1 ;
  wire \shift_reg[2]_i_2_2 ;
  wire \shift_reg[2]_i_2_3 ;
  wire \shift_reg[2]_i_2_n_0 ;
  wire \shift_reg[3]_i_2_0 ;
  wire \shift_reg[3]_i_2_1 ;
  wire \shift_reg[3]_i_2_2 ;
  wire \shift_reg[3]_i_2_3 ;
  wire \shift_reg[3]_i_2_n_0 ;
  wire \shift_reg[4]_i_2_0 ;
  wire \shift_reg[4]_i_2_1 ;
  wire \shift_reg[4]_i_2_2 ;
  wire \shift_reg[4]_i_2_3 ;
  wire \shift_reg[4]_i_2_n_0 ;
  wire \shift_reg[5]_i_2_0 ;
  wire \shift_reg[5]_i_2_1 ;
  wire \shift_reg[5]_i_2_2 ;
  wire \shift_reg[5]_i_2_3 ;
  wire \shift_reg[5]_i_2_n_0 ;
  wire \shift_reg[6]_i_2_0 ;
  wire \shift_reg[6]_i_2_1 ;
  wire \shift_reg[6]_i_2_2 ;
  wire \shift_reg[6]_i_2_3 ;
  wire \shift_reg[6]_i_2_n_0 ;
  wire [7:0]\shift_reg[7]_0 ;
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
  wire start_i_1_n_0;
  wire [0:0]start_reg_0;
  wire [0:0]start_reg_1;
  wire [0:0]start_reg_2;
  wire [0:0]start_reg_3;
  wire stop;
  wire vld_plse_i_1_n_0;
  wire [0:0]vld_plse_reg_0;
  wire [0:0]vld_plse_reg_1;

  LUT6 #(
    .INIT(64'h0000010000100100)) 
    ack_out_i_1
       (.I0(\sm_state_reg_n_0_[2] ),
        .I1(\sm_state_reg_n_0_[1] ),
        .I2(\sm_state_reg_n_0_[0] ),
        .I3(\sm_state_reg_n_0_[3] ),
        .I4(\sm_state_reg_n_0_[4] ),
        .I5(r_w),
        .O(ack_out_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    ack_out_reg
       (.C(p_0_in1_in_BUFG),
        .CE(1'b1),
        .D(ack_out_i_1_n_0),
        .Q(ack_out_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \byte_cnt[7]_i_1 
       (.I0(start),
        .I1(data_vld),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \byte_cnt[7]_i_2 
       (.I0(data_vld),
        .I1(start),
        .I2(\byte_cnt_reg[0] ),
        .I3(\byte_cnt_reg[0]_0 ),
        .O(vld_plse_reg_0));
  LUT3 #(
    .INIT(8'h08)) 
    \data_int[7]_i_1 
       (.I0(ack_out_reg_n_0),
        .I1(data_vld),
        .I2(r_w),
        .O(data_int0));
  FDRE #(
    .INIT(1'b0)) 
    \data_int_reg[0] 
       (.C(p_0_in1_in_BUFG),
        .CE(data_int0),
        .D(p_0_in_0),
        .Q(\data_int_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_int_reg[1] 
       (.C(p_0_in1_in_BUFG),
        .CE(data_int0),
        .D(\shift_reg_n_0_[1] ),
        .Q(\data_int_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_int_reg[2] 
       (.C(p_0_in1_in_BUFG),
        .CE(data_int0),
        .D(\shift_reg_n_0_[2] ),
        .Q(\data_int_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_int_reg[3] 
       (.C(p_0_in1_in_BUFG),
        .CE(data_int0),
        .D(\shift_reg_n_0_[3] ),
        .Q(\data_int_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_int_reg[4] 
       (.C(p_0_in1_in_BUFG),
        .CE(data_int0),
        .D(\shift_reg_n_0_[4] ),
        .Q(\data_int_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_int_reg[5] 
       (.C(p_0_in1_in_BUFG),
        .CE(data_int0),
        .D(\shift_reg_n_0_[5] ),
        .Q(\data_int_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_int_reg[6] 
       (.C(p_0_in1_in_BUFG),
        .CE(data_int0),
        .D(\shift_reg_n_0_[6] ),
        .Q(\data_int_reg[7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_int_reg[7] 
       (.C(p_0_in1_in_BUFG),
        .CE(data_int0),
        .D(\shift_reg_n_0_[7] ),
        .Q(\data_int_reg[7]_0 [7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h04FF0404)) 
    \i2c_addr[0]_i_1 
       (.I0(Q[3]),
        .I1(\i2c_addr[3]_i_4_n_0 ),
        .I2(Q[0]),
        .I3(\i2c_addr[3]_i_3_n_0 ),
        .I4(\data_int_reg[7]_0 [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h44444F444F444444)) 
    \i2c_addr[1]_i_1 
       (.I0(\i2c_addr[3]_i_3_n_0 ),
        .I1(\data_int_reg[7]_0 [1]),
        .I2(Q[3]),
        .I3(\i2c_addr[3]_i_4_n_0 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0060FFFF00600060)) 
    \i2c_addr[2]_i_1 
       (.I0(Q[2]),
        .I1(\i2c_addr_reg[2] ),
        .I2(\i2c_addr[3]_i_4_n_0 ),
        .I3(Q[3]),
        .I4(\i2c_addr[3]_i_3_n_0 ),
        .I5(\data_int_reg[7]_0 [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \i2c_addr[3]_i_1 
       (.I0(data_vld),
        .I1(stop),
        .I2(start),
        .O(vld_plse_reg_1));
  LUT6 #(
    .INIT(64'hA8888888AAAAAAAA)) 
    \i2c_addr[3]_i_2 
       (.I0(\i2c_addr[3]_i_3_n_0 ),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(\i2c_addr[3]_i_4_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBF0000)) 
    \i2c_addr[3]_i_3 
       (.I0(\i2c_addr_reg[3] ),
        .I1(\byte_cnt_reg[0] ),
        .I2(\mem_reg[4][0] [0]),
        .I3(r_w),
        .I4(data_vld),
        .I5(\i2c_addr[3]_i_6_n_0 ),
        .O(\i2c_addr[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA8AAA)) 
    \i2c_addr[3]_i_4 
       (.I0(data_vld),
        .I1(r_w),
        .I2(\mem_reg[4][0] [0]),
        .I3(\byte_cnt_reg[0] ),
        .I4(\i2c_addr_reg[3] ),
        .O(\i2c_addr[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \i2c_addr[3]_i_6 
       (.I0(\data_int_reg[7]_0 [4]),
        .I1(\data_int_reg[7]_0 [7]),
        .I2(\data_int_reg[7]_0 [6]),
        .I3(\data_int_reg[7]_0 [3]),
        .I4(\data_int_reg[7]_0 [5]),
        .O(\i2c_addr[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[0][0]_i_1 
       (.I0(\mem_reg[0][7] [0]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [0]),
        .O(\o_count_reg[7]_2 [0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[0][1]_i_1 
       (.I0(\mem_reg[0][7] [1]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [1]),
        .O(\o_count_reg[7]_2 [1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[0][2]_i_1 
       (.I0(\mem_reg[0][7] [2]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [2]),
        .O(\o_count_reg[7]_2 [2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[0][3]_i_1 
       (.I0(\mem_reg[0][7] [3]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [3]),
        .O(\o_count_reg[7]_2 [3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[0][4]_i_1 
       (.I0(\mem_reg[0][7] [4]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [4]),
        .O(\o_count_reg[7]_2 [4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[0][5]_i_1 
       (.I0(\mem_reg[0][7] [5]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [5]),
        .O(\o_count_reg[7]_2 [5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[0][6]_i_1 
       (.I0(\mem_reg[0][7] [6]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [6]),
        .O(\o_count_reg[7]_2 [6]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \mem[0][7]_i_1 
       (.I0(start),
        .I1(\mem[8][7]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(start_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[0][7]_i_2 
       (.I0(\mem_reg[0][7] [7]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [7]),
        .O(\o_count_reg[7]_2 [7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[1][0]_i_1 
       (.I0(\mem_reg[1][7] [0]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [0]),
        .O(\o_count_reg[7]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[1][1]_i_1 
       (.I0(\mem_reg[1][7] [1]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [1]),
        .O(\o_count_reg[7]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[1][2]_i_1 
       (.I0(\mem_reg[1][7] [2]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [2]),
        .O(\o_count_reg[7]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[1][3]_i_1 
       (.I0(\mem_reg[1][7] [3]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [3]),
        .O(\o_count_reg[7]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[1][4]_i_1 
       (.I0(\mem_reg[1][7] [4]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [4]),
        .O(\o_count_reg[7]_1 [4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[1][5]_i_1 
       (.I0(\mem_reg[1][7] [5]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [5]),
        .O(\o_count_reg[7]_1 [5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[1][6]_i_1 
       (.I0(\mem_reg[1][7] [6]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [6]),
        .O(\o_count_reg[7]_1 [6]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAABAAAA)) 
    \mem[1][7]_i_1 
       (.I0(start),
        .I1(\mem[8][7]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(start_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[1][7]_i_2 
       (.I0(\mem_reg[1][7] [7]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [7]),
        .O(\o_count_reg[7]_1 [7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[2][0]_i_1 
       (.I0(\mem_reg[2][7] [0]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [0]),
        .O(\o_count_reg[7]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[2][1]_i_1 
       (.I0(\mem_reg[2][7] [1]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [1]),
        .O(\o_count_reg[7]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[2][2]_i_1 
       (.I0(\mem_reg[2][7] [2]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [2]),
        .O(\o_count_reg[7]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[2][3]_i_1 
       (.I0(\mem_reg[2][7] [3]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [3]),
        .O(\o_count_reg[7]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[2][4]_i_1 
       (.I0(\mem_reg[2][7] [4]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [4]),
        .O(\o_count_reg[7]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[2][5]_i_1 
       (.I0(\mem_reg[2][7] [5]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [5]),
        .O(\o_count_reg[7]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[2][6]_i_1 
       (.I0(\mem_reg[2][7] [6]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [6]),
        .O(\o_count_reg[7]_0 [6]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAABAAAA)) 
    \mem[2][7]_i_1 
       (.I0(start),
        .I1(\mem[8][7]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(start_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[2][7]_i_2 
       (.I0(\mem_reg[2][7] [7]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [7]),
        .O(\o_count_reg[7]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[3][0]_i_1 
       (.I0(\mem_reg[3][7] [0]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [0]),
        .O(\o_count_reg[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[3][1]_i_1 
       (.I0(\mem_reg[3][7] [1]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [1]),
        .O(\o_count_reg[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[3][2]_i_1 
       (.I0(\mem_reg[3][7] [2]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [2]),
        .O(\o_count_reg[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[3][3]_i_1 
       (.I0(\mem_reg[3][7] [3]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [3]),
        .O(\o_count_reg[7] [3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[3][4]_i_1 
       (.I0(\mem_reg[3][7] [4]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [4]),
        .O(\o_count_reg[7] [4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[3][5]_i_1 
       (.I0(\mem_reg[3][7] [5]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [5]),
        .O(\o_count_reg[7] [5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[3][6]_i_1 
       (.I0(\mem_reg[3][7] [6]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [6]),
        .O(\o_count_reg[7] [6]));
  LUT6 #(
    .INIT(64'hAAABAAAAAAAAAAAA)) 
    \mem[3][7]_i_1 
       (.I0(start),
        .I1(\mem[8][7]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem[3][7]_i_2 
       (.I0(\mem_reg[3][7] [7]),
        .I1(start),
        .I2(\data_int_reg[7]_0 [7]),
        .O(\o_count_reg[7] [7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \mem[4][7]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(\mem[8][7]_i_2_n_0 ),
        .O(\i2c_addr_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \mem[5][7]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(\mem[8][7]_i_2_n_0 ),
        .O(\i2c_addr_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \mem[6][7]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(\mem[8][7]_i_2_n_0 ),
        .O(\i2c_addr_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \mem[7][7]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(\mem[8][7]_i_2_n_0 ),
        .O(\i2c_addr_reg[1] ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \mem[8][7]_i_1 
       (.I0(start),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\mem[8][7]_i_2_n_0 ),
        .O(start_reg_3));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \mem[8][7]_i_2 
       (.I0(r_w),
        .I1(\mem_reg[4][0] [1]),
        .I2(\mem_reg[4][0] [3]),
        .I3(\mem_reg[4][0] [2]),
        .I4(\byte_cnt_reg[0] ),
        .O(\mem[8][7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    r_w_i_1
       (.I0(sda_sync),
        .I1(\sm_state[3]_i_4_n_0 ),
        .I2(r_w),
        .O(r_w_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    r_w_reg
       (.C(p_0_in1_in_BUFG),
        .CE(1'b1),
        .D(r_w_i_1_n_0),
        .Q(r_w),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    sda_IOBUF_inst_i_1
       (.I0(sda_oe),
        .O(sda_TRI));
  LUT2 #(
    .INIT(4'hE)) 
    sda_IOBUF_inst_i_2
       (.I0(ack_out_reg_n_0),
        .I1(sda_en),
        .O(sda_oe));
  LUT4 #(
    .INIT(16'h8A88)) 
    sda_en_i_1
       (.I0(sda_en_i_2_n_0),
        .I1(\shift[7]_i_4_n_0 ),
        .I2(\shift_reg_n_0_[6] ),
        .I3(\shift[7]_i_3_n_0 ),
        .O(sda_en_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000F0000010E000)) 
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
       (.C(p_0_in1_in_BUFG),
        .CE(1'b1),
        .D(sda_en_i_1_n_0),
        .Q(sda_en),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift[0]_i_1 
       (.I0(sda_sync),
        .I1(\shift[7]_i_3_n_0 ),
        .I2(\shift[0]_i_2_n_0 ),
        .I3(p_0_in[0]),
        .I4(p_0_in_0),
        .O(\shift[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shift[0]_i_2 
       (.I0(\shift_reg[7]_0 [0]),
        .I1(Q[3]),
        .I2(\shift[0]_i_4_n_0 ),
        .I3(Q[2]),
        .I4(\shift[0]_i_5_n_0 ),
        .O(\shift[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h333333332200FFFC)) 
    \shift[0]_i_3 
       (.I0(r_w),
        .I1(\sm_state_reg_n_0_[4] ),
        .I2(start),
        .I3(\sm_state_reg_n_0_[0] ),
        .I4(\sm_state_reg_n_0_[3] ),
        .I5(\shift[0]_i_6_n_0 ),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[0]_i_4 
       (.I0(\shift[0]_i_2_0 ),
        .I1(\shift[0]_i_2_1 ),
        .I2(Q[1]),
        .I3(\shift[0]_i_2_2 ),
        .I4(Q[0]),
        .I5(\shift[0]_i_2_3 ),
        .O(\shift[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[0]_i_5 
       (.I0(\shift[7]_i_4_4 [0]),
        .I1(\shift[7]_i_4_5 [0]),
        .I2(Q[1]),
        .I3(\shift[7]_i_4_6 [0]),
        .I4(Q[0]),
        .I5(\shift[7]_i_4_7 [0]),
        .O(\shift[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \shift[0]_i_6 
       (.I0(\sm_state_reg_n_0_[1] ),
        .I1(\sm_state_reg_n_0_[2] ),
        .O(\shift[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shift[1]_i_1 
       (.I0(p_0_in_0),
        .I1(\shift[7]_i_3_n_0 ),
        .I2(\shift_reg[7]_0 [1]),
        .I3(Q[3]),
        .I4(\shift_reg[1]_i_2_n_0 ),
        .O(\shift[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[1]_i_3 
       (.I0(\shift[7]_i_4_4 [1]),
        .I1(\shift[7]_i_4_5 [1]),
        .I2(Q[1]),
        .I3(\shift[7]_i_4_6 [1]),
        .I4(Q[0]),
        .I5(\shift[7]_i_4_7 [1]),
        .O(\shift[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[1]_i_4 
       (.I0(\shift_reg[1]_i_2_0 ),
        .I1(\shift_reg[1]_i_2_1 ),
        .I2(Q[1]),
        .I3(\shift_reg[1]_i_2_2 ),
        .I4(Q[0]),
        .I5(\shift_reg[1]_i_2_3 ),
        .O(\shift[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shift[2]_i_1 
       (.I0(\shift_reg_n_0_[1] ),
        .I1(\shift[7]_i_3_n_0 ),
        .I2(\shift_reg[7]_0 [2]),
        .I3(Q[3]),
        .I4(\shift_reg[2]_i_2_n_0 ),
        .O(\shift[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[2]_i_3 
       (.I0(\shift[7]_i_4_4 [2]),
        .I1(\shift[7]_i_4_5 [2]),
        .I2(Q[1]),
        .I3(\shift[7]_i_4_6 [2]),
        .I4(Q[0]),
        .I5(\shift[7]_i_4_7 [2]),
        .O(\shift[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[2]_i_4 
       (.I0(\shift_reg[2]_i_2_0 ),
        .I1(\shift_reg[2]_i_2_1 ),
        .I2(Q[1]),
        .I3(\shift_reg[2]_i_2_2 ),
        .I4(Q[0]),
        .I5(\shift_reg[2]_i_2_3 ),
        .O(\shift[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shift[3]_i_1 
       (.I0(\shift_reg_n_0_[2] ),
        .I1(\shift[7]_i_3_n_0 ),
        .I2(\shift_reg[7]_0 [3]),
        .I3(Q[3]),
        .I4(\shift_reg[3]_i_2_n_0 ),
        .O(\shift[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[3]_i_3 
       (.I0(\shift[7]_i_4_4 [3]),
        .I1(\shift[7]_i_4_5 [3]),
        .I2(Q[1]),
        .I3(\shift[7]_i_4_6 [3]),
        .I4(Q[0]),
        .I5(\shift[7]_i_4_7 [3]),
        .O(\shift[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[3]_i_4 
       (.I0(\shift_reg[3]_i_2_0 ),
        .I1(\shift_reg[3]_i_2_1 ),
        .I2(Q[1]),
        .I3(\shift_reg[3]_i_2_2 ),
        .I4(Q[0]),
        .I5(\shift_reg[3]_i_2_3 ),
        .O(\shift[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shift[4]_i_1 
       (.I0(\shift_reg_n_0_[3] ),
        .I1(\shift[7]_i_3_n_0 ),
        .I2(\shift_reg[7]_0 [4]),
        .I3(Q[3]),
        .I4(\shift_reg[4]_i_2_n_0 ),
        .O(\shift[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[4]_i_3 
       (.I0(\shift[7]_i_4_4 [4]),
        .I1(\shift[7]_i_4_5 [4]),
        .I2(Q[1]),
        .I3(\shift[7]_i_4_6 [4]),
        .I4(Q[0]),
        .I5(\shift[7]_i_4_7 [4]),
        .O(\shift[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[4]_i_4 
       (.I0(\shift_reg[4]_i_2_0 ),
        .I1(\shift_reg[4]_i_2_1 ),
        .I2(Q[1]),
        .I3(\shift_reg[4]_i_2_2 ),
        .I4(Q[0]),
        .I5(\shift_reg[4]_i_2_3 ),
        .O(\shift[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shift[5]_i_1 
       (.I0(\shift_reg_n_0_[4] ),
        .I1(\shift[7]_i_3_n_0 ),
        .I2(\shift_reg[7]_0 [5]),
        .I3(Q[3]),
        .I4(\shift_reg[5]_i_2_n_0 ),
        .O(\shift[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[5]_i_3 
       (.I0(\shift[7]_i_4_4 [5]),
        .I1(\shift[7]_i_4_5 [5]),
        .I2(Q[1]),
        .I3(\shift[7]_i_4_6 [5]),
        .I4(Q[0]),
        .I5(\shift[7]_i_4_7 [5]),
        .O(\shift[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[5]_i_4 
       (.I0(\shift_reg[5]_i_2_0 ),
        .I1(\shift_reg[5]_i_2_1 ),
        .I2(Q[1]),
        .I3(\shift_reg[5]_i_2_2 ),
        .I4(Q[0]),
        .I5(\shift_reg[5]_i_2_3 ),
        .O(\shift[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shift[6]_i_1 
       (.I0(\shift_reg_n_0_[5] ),
        .I1(\shift[7]_i_3_n_0 ),
        .I2(\shift_reg[7]_0 [6]),
        .I3(Q[3]),
        .I4(\shift_reg[6]_i_2_n_0 ),
        .O(\shift[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[6]_i_3 
       (.I0(\shift[7]_i_4_4 [6]),
        .I1(\shift[7]_i_4_5 [6]),
        .I2(Q[1]),
        .I3(\shift[7]_i_4_6 [6]),
        .I4(Q[0]),
        .I5(\shift[7]_i_4_7 [6]),
        .O(\shift[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[6]_i_4 
       (.I0(\shift_reg[6]_i_2_0 ),
        .I1(\shift_reg[6]_i_2_1 ),
        .I2(Q[1]),
        .I3(\shift_reg[6]_i_2_2 ),
        .I4(Q[0]),
        .I5(\shift_reg[6]_i_2_3 ),
        .O(\shift[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00F000F000F00F80)) 
    \shift[7]_i_1 
       (.I0(r_w),
        .I1(\sm_state_reg_n_0_[0] ),
        .I2(\sm_state_reg_n_0_[3] ),
        .I3(\sm_state_reg_n_0_[4] ),
        .I4(\sm_state_reg_n_0_[2] ),
        .I5(\sm_state_reg_n_0_[1] ),
        .O(p_0_in[6]));
  LUT3 #(
    .INIT(8'h0D)) 
    \shift[7]_i_2 
       (.I0(\shift[7]_i_3_n_0 ),
        .I1(\shift_reg_n_0_[6] ),
        .I2(\shift[7]_i_4_n_0 ),
        .O(\shift[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    \shift[7]_i_3 
       (.I0(\sm_state_reg_n_0_[0] ),
        .I1(\sm_state_reg_n_0_[4] ),
        .I2(\sm_state_reg_n_0_[3] ),
        .I3(r_w),
        .I4(\sm_state_reg_n_0_[1] ),
        .I5(\sm_state_reg_n_0_[2] ),
        .O(\shift[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0300033303110311)) 
    \shift[7]_i_4 
       (.I0(\shift[7]_i_5_n_0 ),
        .I1(\shift[7]_i_3_n_0 ),
        .I2(\shift_reg[7]_0 [7]),
        .I3(Q[3]),
        .I4(\shift[7]_i_6_n_0 ),
        .I5(Q[2]),
        .O(\shift[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[7]_i_5 
       (.I0(\shift[7]_i_4_4 [7]),
        .I1(\shift[7]_i_4_5 [7]),
        .I2(Q[1]),
        .I3(\shift[7]_i_4_6 [7]),
        .I4(Q[0]),
        .I5(\shift[7]_i_4_7 [7]),
        .O(\shift[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift[7]_i_6 
       (.I0(\shift[7]_i_4_0 ),
        .I1(\shift[7]_i_4_1 ),
        .I2(Q[1]),
        .I3(\shift[7]_i_4_2 ),
        .I4(Q[0]),
        .I5(\shift[7]_i_4_3 ),
        .O(\shift[7]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg[0] 
       (.C(p_0_in1_in_BUFG),
        .CE(1'b1),
        .D(\shift[0]_i_1_n_0 ),
        .Q(p_0_in_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg[1] 
       (.C(p_0_in1_in_BUFG),
        .CE(p_0_in[6]),
        .D(\shift[1]_i_1_n_0 ),
        .Q(\shift_reg_n_0_[1] ),
        .R(1'b0));
  MUXF7 \shift_reg[1]_i_2 
       (.I0(\shift[1]_i_3_n_0 ),
        .I1(\shift[1]_i_4_n_0 ),
        .O(\shift_reg[1]_i_2_n_0 ),
        .S(Q[2]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg[2] 
       (.C(p_0_in1_in_BUFG),
        .CE(p_0_in[6]),
        .D(\shift[2]_i_1_n_0 ),
        .Q(\shift_reg_n_0_[2] ),
        .R(1'b0));
  MUXF7 \shift_reg[2]_i_2 
       (.I0(\shift[2]_i_3_n_0 ),
        .I1(\shift[2]_i_4_n_0 ),
        .O(\shift_reg[2]_i_2_n_0 ),
        .S(Q[2]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg[3] 
       (.C(p_0_in1_in_BUFG),
        .CE(p_0_in[6]),
        .D(\shift[3]_i_1_n_0 ),
        .Q(\shift_reg_n_0_[3] ),
        .R(1'b0));
  MUXF7 \shift_reg[3]_i_2 
       (.I0(\shift[3]_i_3_n_0 ),
        .I1(\shift[3]_i_4_n_0 ),
        .O(\shift_reg[3]_i_2_n_0 ),
        .S(Q[2]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg[4] 
       (.C(p_0_in1_in_BUFG),
        .CE(p_0_in[6]),
        .D(\shift[4]_i_1_n_0 ),
        .Q(\shift_reg_n_0_[4] ),
        .R(1'b0));
  MUXF7 \shift_reg[4]_i_2 
       (.I0(\shift[4]_i_3_n_0 ),
        .I1(\shift[4]_i_4_n_0 ),
        .O(\shift_reg[4]_i_2_n_0 ),
        .S(Q[2]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg[5] 
       (.C(p_0_in1_in_BUFG),
        .CE(p_0_in[6]),
        .D(\shift[5]_i_1_n_0 ),
        .Q(\shift_reg_n_0_[5] ),
        .R(1'b0));
  MUXF7 \shift_reg[5]_i_2 
       (.I0(\shift[5]_i_3_n_0 ),
        .I1(\shift[5]_i_4_n_0 ),
        .O(\shift_reg[5]_i_2_n_0 ),
        .S(Q[2]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg[6] 
       (.C(p_0_in1_in_BUFG),
        .CE(p_0_in[6]),
        .D(\shift[6]_i_1_n_0 ),
        .Q(\shift_reg_n_0_[6] ),
        .R(1'b0));
  MUXF7 \shift_reg[6]_i_2 
       (.I0(\shift[6]_i_3_n_0 ),
        .I1(\shift[6]_i_4_n_0 ),
        .O(\shift_reg[6]_i_2_n_0 ),
        .S(Q[2]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg[7] 
       (.C(p_0_in1_in_BUFG),
        .CE(p_0_in[6]),
        .D(\shift[7]_i_2_n_0 ),
        .Q(\shift_reg_n_0_[7] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFABAF)) 
    \sm_state[0]_i_1 
       (.I0(\sm_state[0]_i_2_n_0 ),
        .I1(\sm_state_reg_n_0_[0] ),
        .I2(\sm_state[0]_i_3_n_0 ),
        .I3(sda_sync),
        .I4(\sm_state[0]_i_4_n_0 ),
        .O(sm_state[0]));
  LUT6 #(
    .INIT(64'h000000000000C32E)) 
    \sm_state[0]_i_2 
       (.I0(start),
        .I1(\sm_state_reg_n_0_[1] ),
        .I2(p_0_in_0),
        .I3(\sm_state_reg_n_0_[2] ),
        .I4(\sm_state_reg_n_0_[0] ),
        .I5(\sm_state[0]_i_5_n_0 ),
        .O(\sm_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \sm_state[0]_i_3 
       (.I0(\sm_state_reg_n_0_[2] ),
        .I1(\sm_state_reg_n_0_[1] ),
        .I2(\sm_state_reg_n_0_[4] ),
        .I3(\sm_state_reg_n_0_[3] ),
        .O(\sm_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0404040400040404)) 
    \sm_state[0]_i_4 
       (.I0(\sm_state_reg_n_0_[4] ),
        .I1(\sm_state_reg_n_0_[3] ),
        .I2(\sm_state_reg_n_0_[0] ),
        .I3(\sm_state_reg_n_0_[1] ),
        .I4(stop),
        .I5(\sm_state_reg_n_0_[2] ),
        .O(\sm_state[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sm_state[0]_i_5 
       (.I0(\sm_state_reg_n_0_[4] ),
        .I1(\sm_state_reg_n_0_[3] ),
        .O(\sm_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000AF0000003C0)) 
    \sm_state[1]_i_1 
       (.I0(\sm_state[1]_i_2_n_0 ),
        .I1(\sm_state[1]_i_3_n_0 ),
        .I2(\sm_state_reg_n_0_[0] ),
        .I3(\sm_state_reg_n_0_[1] ),
        .I4(\sm_state_reg_n_0_[4] ),
        .I5(\sm_state_reg_n_0_[3] ),
        .O(sm_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \sm_state[1]_i_2 
       (.I0(\sm_state_reg_n_0_[2] ),
        .I1(stop),
        .I2(start),
        .O(\sm_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_state[1]_i_3 
       (.I0(\sm_state_reg_n_0_[2] ),
        .I1(p_0_in_0),
        .O(\sm_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1444144414000044)) 
    \sm_state[2]_i_1 
       (.I0(\sm_state_reg_n_0_[4] ),
        .I1(\sm_state_reg_n_0_[2] ),
        .I2(\sm_state_reg_n_0_[0] ),
        .I3(\sm_state_reg_n_0_[1] ),
        .I4(p_0_in_0),
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \sm_state[3]_i_2 
       (.I0(sda_sync),
        .I1(\sm_state_reg_n_0_[3] ),
        .I2(\sm_state_reg_n_0_[4] ),
        .I3(\sm_state_reg_n_0_[1] ),
        .I4(\sm_state_reg_n_0_[2] ),
        .O(\sm_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000FFFF1FF)) 
    \sm_state[3]_i_3 
       (.I0(stop),
        .I1(start),
        .I2(\sm_state_reg_n_0_[0] ),
        .I3(\sm_state_reg_n_0_[1] ),
        .I4(\sm_state_reg_n_0_[2] ),
        .I5(\sm_state[3]_i_5_n_0 ),
        .O(\sm_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \sm_state[3]_i_4 
       (.I0(\sm_state_reg_n_0_[0] ),
        .I1(\sm_state_reg_n_0_[1] ),
        .I2(\sm_state_reg_n_0_[2] ),
        .I3(p_0_in_0),
        .I4(\sm_state_reg_n_0_[4] ),
        .I5(\sm_state_reg_n_0_[3] ),
        .O(\sm_state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sm_state[3]_i_5 
       (.I0(\sm_state_reg_n_0_[4] ),
        .I1(\sm_state_reg_n_0_[3] ),
        .O(\sm_state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h40000002)) 
    \sm_state[4]_i_1 
       (.I0(\sm_state_reg_n_0_[4] ),
        .I1(\sm_state_reg_n_0_[3] ),
        .I2(\sm_state_reg_n_0_[0] ),
        .I3(\sm_state_reg_n_0_[1] ),
        .I4(\sm_state_reg_n_0_[2] ),
        .O(sm_state[4]));
  FDRE #(
    .INIT(1'b0)) 
    \sm_state_reg[0] 
       (.C(p_0_in1_in_BUFG),
        .CE(1'b1),
        .D(sm_state[0]),
        .Q(\sm_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_state_reg[1] 
       (.C(p_0_in1_in_BUFG),
        .CE(1'b1),
        .D(sm_state[1]),
        .Q(\sm_state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_state_reg[2] 
       (.C(p_0_in1_in_BUFG),
        .CE(1'b1),
        .D(sm_state[2]),
        .Q(\sm_state_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_state_reg[3] 
       (.C(p_0_in1_in_BUFG),
        .CE(1'b1),
        .D(sm_state[3]),
        .Q(\sm_state_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_state_reg[4] 
       (.C(p_0_in1_in_BUFG),
        .CE(1'b1),
        .D(sm_state[4]),
        .Q(\sm_state_reg_n_0_[4] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000010)) 
    start_i_1
       (.I0(\sm_state_reg_n_0_[2] ),
        .I1(\sm_state_reg_n_0_[1] ),
        .I2(\sm_state_reg_n_0_[0] ),
        .I3(\sm_state_reg_n_0_[4] ),
        .I4(\sm_state_reg_n_0_[3] ),
        .O(start_i_1_n_0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    start_reg
       (.C(sda_sync),
        .CE(1'b1),
        .CLR(start_i_1_n_0),
        .D(p_0_in1_in_BUFG),
        .Q(start));
  FDCE #(
    .INIT(1'b0)) 
    stop_reg
       (.C(sda_sync),
        .CE(1'b1),
        .CLR(start),
        .D(p_0_in1_in_BUFG),
        .Q(stop));
  LUT6 #(
    .INIT(64'hFFEFEFFE00000100)) 
    vld_plse_i_1
       (.I0(\sm_state_reg_n_0_[2] ),
        .I1(\sm_state_reg_n_0_[1] ),
        .I2(\sm_state_reg_n_0_[0] ),
        .I3(\sm_state_reg_n_0_[4] ),
        .I4(\sm_state_reg_n_0_[3] ),
        .I5(data_vld),
        .O(vld_plse_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vld_plse_reg
       (.C(p_0_in1_in_BUFG),
        .CE(1'b1),
        .D(vld_plse_i_1_n_0),
        .Q(data_vld),
        .R(1'b0));
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
