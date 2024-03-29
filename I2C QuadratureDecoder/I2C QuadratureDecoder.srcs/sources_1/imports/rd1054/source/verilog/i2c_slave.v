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


//
// 
//  Name:  i2c_slave.v   
// 
//  Description: Generic i2c slave module with 1 bidirectional data port
// 		 1.supports random write, random read, sequential read
// 		 and burst write / read
//     
//-------------------------------------------------------------------------
// Code Revision History :
//-------------------------------------------------------------------------
// Ver: | Author	|Mod. Date	|Changes Made:
// V1.0 | cm		|8/2005     |Init ver 
// V1.1 | ks		|1/2007		|change slave address to be input
// V1.2 | cm		|6/2009		|change slave address back to parameter
//                              |emulate slave is not ready (clk stretch)
// V1.3 | cm,cwd    |7/4/10     |added delay element to scl to prevent false 
//                              |start due to trace delays
//-------------------------------------------------------------------------

`timescale 1ns/1ps
`default_nettype none

module i2c_slave (ready, start, stop, data_in, data_out, r_w, data_vld, scl_in, scl_oe, sda_in, sda_oe);
      
// generic ports
reg   XRESET = 0; 		                       // System Reset
input wire 	 ready; 						       // back end system ready signal
//input  [6:0] I2C_SLAVE_ADDR;                     // I2C addr from regmap
input  [7:0] data_in; 	                           // parallel data in
output [7:0] data_out; 	                           // parallel data out 
output       r_w;                                  // read/write signal to the reg_map bloc
output wire  data_vld;		                       // data valid from i2c 
output       start;                                // start of the i2c cycle
output       stop;					               // stop the i2c cycle

// i2c ports
input  wire  scl_in;						       // SCL clock line 
output wire	 scl_oe;                                           
input  wire  sda_in;		                       // i2c serial data line in  
output wire  sda_oe;                               // controls sda output enable


/*****************************************
 Define states of the state machine
*****************************************/

parameter I2C_SLAVE_ADDR = 7'b1010010;

parameter idle=5'h0, addr7=5'h1, addr6=5'h2, addr5=5'h3, 
          addr4=5'h4, addr3=5'h5, addr2=5'h6, addr1=5'h7,
	        det_rw=5'h8, ack=5'h9, data7=5'ha, data6=5'hb, 
          data5=5'hc, data4=5'hd, data3=5'he, data2=5'hf, 
          data1=5'h10, data0=5'h11;

reg [7:0] data_int = 0;                                // internal data register (ie holds address to read from on next read, or addr to write to on next write)
reg start=1'b0, stop=1'b0;				                   // start and stop detection of I2C cycles
reg [4:0] sm_state; 				               // state machine current state
reg [7:0] shift = 0;				                   // shift register attached to I2C controller
reg r_w;		 			                       // indicate read/write operation (write = 0, read = 1)
reg ack_out;					                   // acknowledge output from slave to master (send ACK)
reg sda_en = 0;	      			                       // OE control of sda signal, could use open drain feature
reg vld_plse = 0;		       	                       // data valid pulse (when data in shift register valid/complete)

initial sm_state <=  idle;                                          // reset fsm to idle
initial r_w      <=  1'b1;				                            // initial value for read
initial vld_plse <=  1'b0; 

wire start_rst;				                       // reset signals for START and STOP bits

/*****************************************
 Generate reset signals for start and stop
*****************************************/              
assign start_rst = ((sm_state == addr7))? 1'b1 : 1'b0;             // used to reset the start register after we move to addr7
wire start_async_rst = start_rst | XRESET;                         // or-ing the reset signal external and internal
wire stop_async_rst = start | XRESET;                              // same for stop reset

/*****************************************
 register to delay SDA
 prevents false start/re-starts from syncronized 
 falling edges (sda and scl)
******************************************/
reg sda_f = 1'b0;                     
wire sda_clk;

//xor u1 (sda_clk, sda_f, sda_in);                                   // generate a narrow pulse based on the delay between sda_in and sda_f (detect edges in sda level)
assign sda_clk = sda_f ^ sda_in;

//always @ (*)
always @ (sda_clk or start_async_rst)	   // use the narrow clock pulse to delay sda_in through a register NO EDGE ON XRESET
begin
    if (start_async_rst)
		begin
		if(sda_in)
			sda_f = #1 1'b1;
		else
			sda_f = #1 1'b0;
		end 
	else
		sda_f = #1 sda_in;
end

/*****************************************
 Detect I2C Cycle Start
*****************************************/
always @ (negedge sda_f or posedge start_async_rst)	               // use delayed version of sda_in to prevent the false START			
begin
		if (start_async_rst)
			start = #1 1'b0;
		else 
		  start = #1 scl_in;
end

/*****************************************
 Detect I2C Cycle Stop
*****************************************/
always @(posedge sda_in or posedge stop_async_rst)                      
begin
		if (stop_async_rst)
			  stop = #1 1'b0;
		else 
			  stop = #1 scl_in;
end


/*****************************************
FSM check the addr byte and track rw opp
*****************************************/

always @(posedge scl_in)
begin                                                                 
	 	case (sm_state)                                               

			idle : begin
				vld_plse <=  1'b0;
				if (start)				                            // start the I2C addr cycle
				      sm_state <=  addr7;
				else if (stop)                                      // stop and go to idle
				      sm_state <=  idle;
			  else  sm_state <=  idle;
				end

	 		addr7: 	if (shift[0] == I2C_SLAVE_ADDR[6]) 	            // checking the slave addr
				      sm_state <=  addr6;                   
				else  sm_state <=  idle;                    
                                                                            
			addr6: 	if (shift[0] == I2C_SLAVE_ADDR[5])          
				      sm_state <=  addr5;                   
				else  sm_state <=  idle;                    
                                                                            
	 		addr5: 	if (shift[0] == I2C_SLAVE_ADDR[4])          
				      sm_state <=  addr4;                   
				else  sm_state <=  idle;                    
                                                                            
	 		addr4: 	if (shift[0] == I2C_SLAVE_ADDR[3])	     	
				      sm_state <=  addr3;                   
				else  sm_state <=  idle;                    
                                                                            
	 		addr3: 	if (shift[0] == I2C_SLAVE_ADDR[2])          
				      sm_state <=  addr2;                   
				else  sm_state <=  idle;                    
                                                                            
			addr2: 	if (shift[0] == I2C_SLAVE_ADDR[1])          
				      sm_state <=  addr1;                    
                                else  sm_state <=  idle;                    
                                                                            
			addr1:	if (shift[0] == I2C_SLAVE_ADDR[0])          
                      begin                                     
				        sm_state <=  det_rw;                  
				        r_w      <=  sda_in;		               // store the read / write direction bit
				      end                                       
                    else  sm_state <=  idle;                    
                                                                            
			det_rw:  sm_state <=  ack;                     
                                                                            
			ack:  if (ready) 
			        begin                                    
				      sm_state <=  data7;                   
                      vld_plse <=  1'b0;   
                    end
				else begin
				      sm_state <= idle;  
				      vld_plse <= 1'b0;	   
				    end                            
                                                                            
			data7 :	if (stop) sm_state <= idle;		              // detect stop signal from Master 				                                    
				      else if (start) sm_state <= addr7;          // detect RESTART signal from Master				       	     			     			
				      else  sm_state <= data6;              
					                                    
			data6 :	sm_state <=  data5;                    
			data5 :	sm_state <=  data4;                         
			data4 :	sm_state <=  data3;                         
			data3 :	sm_state <=  data2;                         
			data2 :	sm_state <=  data1;
			data1 :	begin sm_state <=  data0;
				      vld_plse <= 1'b1; end
			data0 : 			
			      begin 	
					vld_plse <= 1'b0;			                  // detect repeated read, write or read/write    	
					if (!sda_in)	 	                          // 0 means acknowledged                                
				      sm_state <= ack;                                                        
					else                                                                 
                      sm_state <= idle;                           // 1 means not-acknowledged if slave or Master wants to stop                                     
                  end                                    
            default:  sm_state <= idle;                           // default state
	endcase                                                                
end
	                                                               
/********************************************
 Send ACK signal when needful          
   - Read cycle (slave trasmit, master receive)                                    
   - Write Cycle (slave receive, master transmit)                                  
   - Slave generate ACKOUT during write cycle                                      
********************************************/                                  
	                                                                       
always @(negedge scl_in)                        //  (ack_out is high to send out ACK)
begin	 					                                      // data should be ready on SDA line when SCL is high
	if (sm_state == det_rw)			                              // Send Ack when Master sends this device's address                 
	    ack_out <= #1 1'b1;                                                    
	else if (sm_state == data0)                                   // If Data Byte recieved                              
	    if (!r_w)			                                      // if slave is rx data from master (write), acknowledge after successful receive
		 ack_out <= #1 1'b1;						         
	    else 					                                  // if slave is tx data to master (read), acknowledge comes from Master
		 ack_out <= #1 1'b0;                                         
	else                                                                   
		ack_out <= #1 1'b0;                                       // No ACK in any other case                           
end                                                                            
                                                                               
                                                                               
/********************************************                                  
 Enable starting from ACK state                                                
********************************************/                                                                               
always @(negedge scl_in)                                        
begin                                                                     
	if (r_w && (sm_state == ack))                            // If Read and doing address Ack, SDA is data_in high bit (first data bit gets shifted out)                                      
		sda_en <= #1 !data_in[7];
	else if (r_w && ((sm_state > ack) && (sm_state < data0)))     // If Read and sending shift resigter (data phase), shift out sift register onto SDA
	    sda_en <= #1 ~shift[6];
	else
	    sda_en <= #1 0;                                           // SDA is 1 otherwise
end	        

/********************************************
 ACK generation, Clock stretching, SDA transmission
********************************************/

assign sda_oe = ((ack_out == 1'b1) | (sda_en == 1'b1));          // High if we're sending an Ack or a '0' on SDA
                                                                 // sda_out is logic '0' at the top level.  sda_oe cntrls sda_out at top level

assign scl_oe = (sm_state == ack) & (~ready);					 // if scl_oe = 1, then scl is pulled down (clock stretch)

/*******************************
 Shift operation for READ data
*******************************/
always @(negedge scl_in)
begin
	if ((sm_state == idle) && (start))                       // Start shifting bits from SDA into shift register on Start
			shift[0] <= #1 sda_in;
		else if ((sm_state >= addr7) && (sm_state <= addr1))     // Only use the first bit of shift register until sure address matches this device
			shift[0] <= #1 sda_in;
		else if (r_w && (sm_state == ack))   	                 // If Read, put data_in byte into shift register for transmission to master during ACK
			shift <= #1 data_in;	    			             
		else if ((sm_state > ack) && (sm_state <=data0))         // Shift the data out to SDA line during data transmit phase 
			begin						                         
				shift[7:1] <= #1 shift[6:0];
				shift[0]   <= #1 sda_in;
			end
end
							
/********************************************
 data output register
********************************************/
always @ (posedge scl_in)				
begin 
	   if (!r_w && ack_out && vld_plse)                          // If Write (slave receive) and full byte received, copy byte from shift register to data_out
		data_int <=  #1 shift;
end

assign data_out = data_int;
assign data_vld = vld_plse;

endmodule

//--------------------------------EOF-----------------------------------------
