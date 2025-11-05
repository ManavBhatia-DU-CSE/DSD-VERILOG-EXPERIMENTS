`timescale 1ns / 1ps

module tb_not_gate;

reg a;
wire y;

// Instantiate NOT gate module
not_gate uut (
    .a(a),
    .y(y)
);

initial begin
    a = 0; #10;
    a = 1; #10;

    $finish;
end

endmodule
