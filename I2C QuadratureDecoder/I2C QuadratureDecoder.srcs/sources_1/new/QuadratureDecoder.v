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


module QuadratureDecoder(
    input XRESET,
    input clk, 
    input quadA, 
    input quadB,
    input index, 
    output reg [7:0] count,
    output reg calibrated
    );
    
parameter max_count = 30; // Number of ticks on the encoder wheel in one revolution
    
reg [2:0] quadA_delayed = 0, quadB_delayed = 0;
reg index_dly;
reg direction;
reg dirError;

wire Ap, Bp, fQuad, deJ, deK, dirReset, up, down;//, idx;
assign Ap = quadA_delayed[0] ^ quadA;
assign Bp = quadB_delayed[0] ^ quadB;
assign fQuad = Ap | Bp; // was &
assign deJ = (quadA ^ quadB) & Ap;
assign deK = (quadA ^ quadB) & Bp;
assign up = fQuad & direction;
assign down = fQuad & !direction;
assign dirReset = (quadA_delayed[1] & quadA_delayed[2]) | (quadB_delayed[1] & quadB_delayed[2]);

always @(posedge clk or posedge XRESET) 
begin
    if (XRESET) index_dly <= 0;
    else begin
      quadA_delayed[0] <= quadA;
      quadB_delayed[0] <= quadB;
      index_dly <= index;
    end
end

always @(deJ or deK or XRESET)
begin
    if (XRESET) begin
        dirError <= 0;
        end
    else begin    
      case ({deJ, deK})
          2'b0_1 : dirError <= 1'b0;
          2'b1_0 : dirError <= 1'b1;
          2'b1_1 : dirError <= !dirError;
          2'b0_0 : ;
      endcase
    end
end

always @(posedge fQuad or posedge XRESET)
begin    
  if (XRESET)
    begin
        count <= 0;
        calibrated <= 0;
    end
  else
    begin
        quadA_delayed[2:1] <= {quadA_delayed[1], Ap};
        quadB_delayed[2:1] <= {quadB_delayed[1], Bp};
        if (index & index_dly)
        begin 
            count <= 0;
            calibrated <= 1;
        end
        else 
            if (direction) 
                if (count >= max_count) count <= 0; else count <= count+1;
            else 
                if (count <= 0) count <= max_count; else count <= count-1;
    end
end

always @(posedge dirReset or posedge clk or posedge XRESET)
begin
    if (XRESET) begin 
        direction <= 0;
      end
    else begin direction <= dirReset ? !dirError : dirError;
      end    
end

endmodule
