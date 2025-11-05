`timescale 1ns / 1ps
module priority_encoder(
input d0,d1,d2,d3,
output a,b,v
    );
    assign a = d2|d3;
    assign b=( d1 &(~d2))|d3;
    assign v = d3|d2|d1|d0;
endmodule
