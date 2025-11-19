`timescale 1ns / 1ps
module tb_jk_ff;

reg J, K, clk;
wire Q;

jk_ff dut(J, K, clk, Q);

initial clk=0;
always #5 clk = ~clk;

initial begin
    J=0; K=0; #10;
    J=1; K=0; #10;
    J=0; K=1; #10;
    J=1; K=1; #20;
    $finish;
end

endmodule
