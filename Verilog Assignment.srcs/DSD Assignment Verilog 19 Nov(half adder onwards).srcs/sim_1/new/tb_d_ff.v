`timescale 1ns / 1ps
module tb_d_ff;

reg D, clk;
wire Q;

d_ff dut(D, clk, Q);

initial clk = 0;
always #5 clk = ~clk;

initial begin
    D=0; #10;
    D=1; #10;
    D=0; #10;
    D=1; #10;
    $finish;
end

endmodule
