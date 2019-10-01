`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/28/2019 05:39:17 PM
// Design Name: 
// Module Name: i2c_quad_decode
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

`default_nettype none

module i2c_quad_decode(sclk,
                       sda,
                       scl,
                       quadA1, quadB1, index1,
                       quadA2, quadB2, index2,
                       quadA3, quadB3, index3,
                       quadA4, quadB4, index4
    );
    
//---------------------------------------------------------------------
// port list
   input wire sclk;
   inout wire sda;
   inout wire scl;
   input quadA1, quadB1, index1;
   input quadA2, quadB2, index2;
   input quadA3, quadB3, index3;
   input quadA4, quadB4, index4;
    
//---------------------------------------------------------------------
// params
    
parameter    data_width = 8;      // Width of each data item (in bits)
parameter    num_data   = 8;  // Number of data items in the memory

//-------------------------- -------------------------------------------
// regs and interconnect wires

wire start, stop;

reg ready = 1'b0;

reg  [7:0] data_in;
wire [7:0] data_out;
wire r_w, data_vld; 
wire sda_oe, scl_oe;

reg read = 0;
reg [data_width-1:0] byte_cnt = 0;             // num bytes sent per transaction (caps at FF)
reg [data_width-1:0] i2c_addr = 0;		       // data item addr 
reg [data_width-1:0] mem [num_data:0];     // data item storage (top/extra item for exceeding num_items)

wire quadA1, quadB1, index1, calib1;
wire [7:0] count1;
wire [2:0] icount1;
wire quadA2, quadB2, index2, calib2;
wire [7:0] count2;
wire [2:0] icount2;    
wire quadA3, quadB3, index3, calib3;
wire [7:0] count3;
wire [2:0] icount3;    
wire quadA4, quadB4, index4, calib4;
wire [7:0] count4;
wire [2:0] icount4; 

PULLUP p1(.O(sda));
PULLUP p2(.O(scl));

reg [2:0] sda_sync  = 3'h0;
reg [2:0] scl_sync  = 3'h0;
always @ (posedge sclk)
begin
    sda_sync[2] = sda;
    scl_sync[2] = scl; 
    //sda_sync = {sda_sync[1:0], sda};  This is bad = breaks sim
    //sda_sync = {scl_sync[1:0], scl};
end
    
i2c_slave i2c   								 
	(.ready     (ready),
	 .start		(start),
	 .stop		(stop),
	 .data_in	(mem[i2c_addr]), 
	 .data_out  (data_out), 
	 .r_w		(r_w), 
	 .data_vld  (data_vld), 
	 .scl_in	(scl_sync[2]), 
     .scl_oe 	(scl_oe),
	 .sda_in	(sda_sync[2]), 
	 .sda_oe	(sda_oe)
	 ) ;

assign sda = sda_oe ? 1'b0 : 1'bz;
assign scl = scl_oe ? 1'b0 : 1'bz;

integer i;
initial 
  begin
	data_in = 8'h0;
	mem[num_data] = 1'b0;
  end
  
// Update memory when required
always @ (posedge scl_sync[2])
  begin
    ready = 1'b1;
    if (start) begin
        // snapshot wheel counts
        mem[0] = count1;
        mem[1] = count2;
        mem[2] = count3;
        mem[3] = count4;
        mem[4] = calib1;
        mem[5] = calib2;
        mem[6] = calib3;
        mem[7] = calib4;
       end
    else if (!r_w & (byte_cnt > 1))
     mem[i2c_addr] = #1 data_out;
  end

// Indicate that an ACK is detected
// every 9 clocks there will be a valid data / address
always @ (posedge scl_sync[2])
  begin
    if (byte_cnt == 4'hF & !start)
       byte_cnt <= #1 byte_cnt;
    else if (data_vld)
       byte_cnt <=  #1 byte_cnt + 1;
    else if (start)
       byte_cnt <= #1 0;
  end

// Set the address to be read or written to i2c_addr
always @ (posedge scl_sync[2])
  begin
    if ((byte_cnt == 1) & !r_w & data_vld)                              // if byte_count = 1 it's a potential random read or write address (looking for writes here)
       i2c_addr <= #1 (data_out < num_data) ? data_out : num_data;      // put received data (address) into memory
    else if (data_vld)
       i2c_addr <= #1 (i2c_addr + 1 < num_data) ? i2c_addr + 1 : num_data;
    else if (stop | start)
       i2c_addr <= (data_out < num_data) ? data_out : num_data;
  end	     

// -----------------------------------------------------------     
// DECODERS
// -----------------------------------------------------------
QuadratureDecoder q1(
    .i_clk    (sclk), 
    .i_quadA  (quadA1), 
    .i_quadB  (quadB1),
    .i_index  (index1),
    .i_read   (read), 
    .o_count  (count1),
    .o_icount (icount1),
    .o_calibrated (calib1)
    );

QuadratureDecoder q2(
    .i_clk    (sclk), 
    .i_quadA  (quadA2), 
    .i_quadB  (quadB2),
    .i_index  (index2),
    .i_read   (read), 
    .o_count  (count2),
    .o_icount (icount2),
    .o_calibrated (calib2)
    );

QuadratureDecoder q3(
    .i_clk    (sclk), 
    .i_quadA  (quadA3), 
    .i_quadB  (quadB3),
    .i_index  (index3),
    .i_read   (read), 
    .o_count  (count3),
    .o_icount (icount3),
    .o_calibrated (calib3)
    );

QuadratureDecoder q4(
    .i_clk    (sclk), 
    .i_quadA  (quadA4), 
    .i_quadB  (quadB4),
    .i_index  (index4),
    .i_read   (read), 
    .o_count  (count4),
    .o_icount (icount4),
    .o_calibrated (calib4)
    );
    
endmodule

//-------------------------------EOF------------------------------------------
