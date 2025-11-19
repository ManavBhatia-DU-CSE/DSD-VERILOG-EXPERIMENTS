`timescale 1ns / 1ps
module tb_counter;

reg clk, reset;
wire [2:0] count;

counter dut(clk, reset, count);

initial clk = 0;
always #5 clk = ~clk;      

initial begin
    reset = 1; #10;
    reset = 0;

    // cycles - taken 200 ns
    #200;

    $finish;
end

endmodule
