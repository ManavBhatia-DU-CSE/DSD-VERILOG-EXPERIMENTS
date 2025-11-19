`timescale 1ns / 1ps
module tb_t_ff;

reg T, clk;
wire Q;

t_ff dut(T, clk, Q);

initial clk = 0;
always #5 clk = ~clk;

initial begin
    T=0; #10;
    T=1; #10;
    $finish;
end

endmodule
