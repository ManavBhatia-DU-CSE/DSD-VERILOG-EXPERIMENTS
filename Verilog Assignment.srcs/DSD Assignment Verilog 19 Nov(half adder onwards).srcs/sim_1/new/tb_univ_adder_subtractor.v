`timescale 1ns / 1ps
module tb_univ_adder_subtractor;

reg [3:0] a, b;
reg mode;
wire [3:0] result;
wire cout, overflow;

univ_adder_subtractor dut(a, b, mode, result, cout, overflow);

initial begin
    a=4'b0101; b=4'b0011; mode=0; #10;
    a=4'b0111; b=4'b1000; mode=0; #10;
    a=4'b0110; b=4'b0001; mode=1; #10;
    $finish;
end

endmodule
