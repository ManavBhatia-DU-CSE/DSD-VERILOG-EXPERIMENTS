`timescale 1ns / 1ps
module tb_sr_ff;

reg S, R, clk;
wire Q;

sr_ff dut(S, R, clk, Q);

initial clk = 0;
always #5 clk = ~clk;

initial begin
    S=0; R=0; #10;
    S=1; R=0; #10;
    S=0; R=1; #10;
    S=1; R=1; #10;
    $finish;
end

endmodule
