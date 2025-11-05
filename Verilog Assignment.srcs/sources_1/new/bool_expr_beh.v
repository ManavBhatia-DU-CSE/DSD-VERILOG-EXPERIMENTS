module bool_expr_beh(input a, input b, input c, output y);
    assign y = (a & b) | (~c);
endmodule
