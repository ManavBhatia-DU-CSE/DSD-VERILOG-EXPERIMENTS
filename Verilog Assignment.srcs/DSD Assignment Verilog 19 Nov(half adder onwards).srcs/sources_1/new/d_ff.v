`timescale 1ns / 1ps
module d_ff(
    input D, clk,
    output reg Q
);
always @(posedge clk)
    Q <= D;
endmodule
