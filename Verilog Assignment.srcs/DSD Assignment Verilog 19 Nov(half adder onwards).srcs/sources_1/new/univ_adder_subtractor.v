`timescale 1ns / 1ps
module univ_adder_subtractor(
    input  [3:0] a, b,
    input  mode,               // 0 = add, 1 = subtract
    output [3:0] result,
    output cout, overflow
);
    wire [3:0] b_mod = mode ? ~b : b;
    wire cin = mode;

    assign {cout, result} = a + b_mod + cin;

    assign overflow = (a[3] ~^ b_mod[3]) & (result[3] ^ a[3]);
endmodule
