`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Angel Lopez, Peter Lankisch
//////////////////////////////////////////////////////////////////////////////////


module REG(d, Clk, Rst, q);
    parameter DATAWIDTH = 2;
    input [DATAWIDTH-1:0] d;
    input Clk, Rst;
    output reg [DATAWIDTH-1:0] q;
    
    always @(Clk, Rst)begin
        q <= d;
    end
    
endmodule
