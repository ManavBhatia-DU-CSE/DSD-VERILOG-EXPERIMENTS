`timescale 1ns / 1ps
module bool_expr_struct(input a, input b, input c, output y); 
    wire w1, w2; 
    
    and (w1, a, b); 
    not (w2, c); 
    or (y, w1, w2); 
endmodule
