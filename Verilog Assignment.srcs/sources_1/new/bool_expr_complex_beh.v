module bool_expr_complex_beh(input a, input b, input c, input d, output y);
    assign y = (a & b) | (c ^ d) & (~a | b);
endmodule