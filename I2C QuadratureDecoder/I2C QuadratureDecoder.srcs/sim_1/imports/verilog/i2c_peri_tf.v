//   ==================================================================
//   >>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
//   ------------------------------------------------------------------
//   Copyright (c) 2013 by Lattice Semiconductor Corporation
//   ALL RIGHTS RESERVED 
//   ------------------------------------------------------------------
//
//   Permission:
//
//      Lattice SG Pte. Ltd. grants permission to use this code
//      pursuant to the terms of the Lattice Reference Design License Agreement. 
//
//
//   Disclaimer:
//
//      This VHDL or Verilog source code is intended as a design reference
//      which illustrates how these types of functions can be implemented.
//      It is the user's responsibility to verify their design for
//      consistency and functionality through the use of formal
//      verification methods.  Lattice provides no warranty
//      regarding the use or functionality of this code.
//
//   --------------------------------------------------------------------
//
//                  Lattice SG Pte. Ltd.
//                  101 Thomson Road, United Square #07-02 
//                  Singapore 307591
//
//
//                  TEL: 1-800-Lattice (USA and Canada)
//                       +65-6631-2000 (Singapore)
//                       +1-503-268-8001 (other locations)
//
//                  web: http://www.latticesemi.com/
//                  email: techsupport@latticesemi.com
//
//   --------------------------------------------------------------------
//
// Name:  i2c_per_tb.v   
// 
// Description: This is the top-level test bench for the i2c peripheral 
//-------------------------------------------------------------------------
// Code Revision History :
//-------------------------------------------------------------------------
// Ver: | Author	|Mod. Date	|Changes Made:
// V1.0 | cm            |2005           |Initial ver
// V1.1 | cm            |6/2009         |update header 
//                                      |add logic to display received byte  
//	                                    |emulate slave is not ready     
// V1.2 | cm            |7/2010         |update the license date                              
//-------------------------------------------------------------------------

`timescale 1 ns /  100 ps
`default_nettype none


module i2c_peri_tb;

//TB code -------------------------------------------------------------
reg sclk, ready, scl_oe;
reg [1:0] error;
wire sda, scl, rst;

reg quadA1, quadB1, index1;
reg quadA2, quadB2, index2;
reg quadA3, quadB3, index3;
reg quadA4, quadB4, index4;             

parameter    data_width = 8;
parameter    addr_width = 16;
reg [data_width-1:0] mem [addr_width-1:0]; // initiate memory
reg [addr_width-1:0]  i2c_addr;

initial 
  begin
	// TB Init code
	sclk = 1'b0;
	error = 2'b0;
	scl_oe = 1'b1;
	ready = 1'b1;
	i2c_addr = 1'b0;
	$readmemh("i2c.mem", mem);
	
	quadA1 = 0;
	quadB1 = 1;
	index1 = 0;
	
	quadA2 = 0;
	quadB2 = 1;
	index2 = 0;
	
	quadA3 = 0;
	quadB3 = 1;
	index3 = 0;
	
	quadA4 = 0;
	quadB4 = 1;
	index4 = 0;
	 
	#500 index1 = 1'b1; // Cause q1 calibration
	#50 index1 = 1'b0;
	
	#300 index2 = 1'b1; // Cause q1 calibration
	#50 index2 = 1'b0;
	
	#600 index3 = 1'b1; // Cause q1 calibration
	#50 index3 = 1'b0;
	
	#400 index4 = 1'b1; // Cause q1 calibration
	#50 index4 = 1'b0;
	//for (i = 15; i >= 0; i = i - 1) begin	  
	//	$display("INITIIAL MEMORY CONTENTS AT LOCATION %h : %h",i,mem[i]);
	//end
	//#2800 ready = 1'b0;
	//#3000 ready = 1'b1;	
	//#12600;
  end	 


i2c_quad_decode u1(.sclk   (sclk),
                   .sda    (sda),
                   .scl    (scl),
                   .quadA1 (quadA1), .quadB1 (quadB1), .index1 (index1),
                   .quadA2 (quadA2), .quadB2 (quadB2), .index2 (index2),
                   .quadA3 (quadA3), .quadB3 (quadB3), .index3 (index3),
                   .quadA4 (quadA4), .quadB4 (quadB4), .index4 (index4)
                   );
                        

i2c_mstr MST(   .XRESET  (rst), 
                .scl     (scl), 
                .sda     (sda),
				.ready   (ready),
                .scl_oe  (scl_oe),
				.error   (error)
                );

always 
	#15 sclk = ~sclk;      // System clock
	
// Simulate wheels turning
integer i;
always @(posedge sclk)
begin // Fwd
    for (i=0; i<9; i=i+1) begin
        quadB1 = !quadB1; 
        #100;
        quadA1 = !quadA1;
        #100;
    end
    for (i=0; i<9; i=i+1) begin
    quadA1 = !quadA1; 
    #100;
    quadB1 = !quadB1;
    #100;
    end
end

always @(posedge sclk)
begin // Rev
    quadA2 = !quadA2; 
    #15;
    quadB2 = !quadB2;
    #15;
end

always @(posedge sclk)
begin // Fwd
    quadB3 = !quadB3; 
    #15;
    quadA3 = !quadA3;
    #15;
end

always @(posedge sclk)
begin // Rev
    quadA4 = !quadA4; 
    #15;
    quadB4 = !quadB4;
    #15;
end

// TESTING CODE
//always @(posedge u1.data_vld)
always @(posedge u1.i2c.data_vld)
    i2c_addr = i2c_addr+1;
    
// Compare the read data against the mem file    
always @(posedge MST.data_read or posedge MST.data_read_nostop)
  begin	
  //	if (!MST.data_read)	begin
    if(MST.data_read_nostop) begin
        if(MST.read_i2c_nostop.rd_reg==mem[i2c_addr-1]) 				
            $display($time,": Checking with memory contents...DATA MATCH");
        else
            begin
            $display($time,": Checking with memory contents...ERROR:DATA MISMATCH h%h h%h", MST.read_i2c_nostop.rd_reg, mem[i2c_addr]);
            error <= error + 1;
            end				
    end	  
    
    else if(MST.data_read) begin	
        if(MST.read_i2c_repeat.rd_reg==mem[i2c_addr-1])				 
            $display($time,": Checking with memory contents...DATA MATCH");
        else
            begin
            $display($time,": Checking with memory contents...ERROR:DATA MISMATCH h%h h%h", MST.read_i2c_repeat.rd_reg, mem[i2c_addr]); 
            error <= error + 1;	
            end
    end	  
  end		   		
                        
endmodule

//-------------------------------EOF------------------------------------------
