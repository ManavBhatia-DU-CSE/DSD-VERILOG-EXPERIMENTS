`timescale 1ns / 1ps
module sr_ff(
    input S, R, clk,
    output reg Q
);
always @(posedge clk) begin
    if (S && ~R)      Q <= 1;
    else if (R && ~S) Q <= 0;
    else              Q <= Q; 
end
endmodule
