module bool_expr_complex_struct(input a, input b, input c, input d, output y);
    wire w1, w2, w3, w4, w5;

    and (w1, a, b);
    xor (w2, c, d);
    or (w3, w1, w2);
    not (w4, a);
    or (w5, w4, b);
    and (y, w5, w3);
endmodule
