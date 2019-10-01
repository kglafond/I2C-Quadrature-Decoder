`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Unusual Software
// Engineer: Kenneth Lafond
// 
// Create Date: 05/26/2019 03:19:58 PM
// Design Name: 
// Module Name: QuadratureDecoder
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
// https://pdfs.semanticscholar.org/54d8/8d5098ef825539ab998d037dad6f3a468d95.pdf
// Based on paper: Accurate Quadrature Encoder Decoding Using Programmable
//    Logic - Yassen Gorbounov
 
// 
//////////////////////////////////////////////////////////////////////////////////

`default_nettype none

module QuadratureDecoder(
    input wire i_clk,   // Pre-synched
    input wire i_quadA, // Raw signal from pin
    input wire i_quadB, // Raw signal from pin
    input wire i_index, // Raw signal from pin
    input wire i_read,  // Pre-synched
    output reg [7:0] o_count,
    output reg [2:0] o_icount,
    output reg o_calibrated
    );
    
parameter max_count = 8'd30; // Number of ticks on the encoder wheel in one revolution
parameter up = 1'b1; // Up adds to counter, !Up subtracts from counter
    
reg [2:0] quadA_delay = 3'b000, quadB_delay = 3'b000, index_delay = 3'b000;
reg direction = up;
reg noop = 1'b0;
reg [1:0] last_state = 2'b00;

initial o_count = 0;
initial o_icount = 3'sd0;
initial o_calibrated = 0;

always @(posedge i_clk) 
begin
  quadA_delay <= {quadA_delay[1:0], i_quadA};
  quadB_delay <= {quadB_delay[1:0], i_quadB};
  index_delay <= {index_delay[1:0], i_index};
  
  case ({last_state[1:0], quadA_delay[2], quadB_delay[2]})
    4'b0001 , // +1
    4'b1000 , // +1
    4'b1110 , // +1
    4'b0111 : // +1
            begin 
                direction <= up;
                noop <= 1'b0;
            end
    4'b0010 , // -1
    4'b0100 , // -1
    4'b1101 , // -1
    4'b1011 : // -1
            begin
                direction <= !up;
                noop <= 1'b0;
            end
    default : noop <= 1'b1;  // No state change, or illegal state change
  endcase
  
  // incorporate read (zero out o_icount somehow) r=1 id=0 / r=1 id=1 / r=0 id=1
  if (i_read == 1) // Could miss the tick?
        o_icount = index_delay[2] == 0 ? 0 : ((direction == up) ? 1 : -1); 
  else if (index_delay[2] == 1 && o_calibrated)  // hit Index, zero tick counter and increment index counter
        o_icount <= (direction == up) ? o_icount +1 : o_icount -1;
  
  if (index_delay[2] == 1) o_count <= 0;  
  else if (!noop) // Count tick based on direction rotating
        if (direction == up) 
            o_count <= (o_count == max_count) ? 0 : o_count +1;
        else
            o_count <= (o_count == 0) ? max_count : o_count -1;    
//      else noop <= 0; // No state case matched from above = do nothing
  
  last_state <= {quadA_delay[2], quadB_delay[2]};
end

endmodule