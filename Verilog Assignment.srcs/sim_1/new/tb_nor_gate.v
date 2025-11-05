`timescale 1ns / 1ps

module tb_nor_gate;

reg a, b;
wire y;

// Instantiate NOR gate module
nor_gate uut (
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;

    $finish;
end

endmodule