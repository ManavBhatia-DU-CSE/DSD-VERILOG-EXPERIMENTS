`timescale 1ns / 1ps
module full_subtractor(
    input a, b, bin,
    output diff, bout
);
    assign diff = a ^ b ^ bin;
    assign bout = (~a & b) | (b & bin) | (~a & bin);
endmodule
