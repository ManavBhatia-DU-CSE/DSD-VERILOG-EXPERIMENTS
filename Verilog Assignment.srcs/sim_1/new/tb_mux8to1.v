`timescale 1ns / 1ps
module tb_mux8to1();
reg a, b, c, d, e, f, g, h;
reg s1, s2, s3;
wire y;
mux8to1 uut(
    .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .h(h),
    .s1(s1), .s2(s2), .s3(s3),
    .y(y)
);
initial begin
    a = 1; b = 1; c = 1; d = 1; 
    e = 1; f = 1; g = 1; h = 1;
    s1 = 0; s2 = 0; s3 = 0; #10;   
    s1 = 0; s2 = 0; s3 = 1; #10;   
    s1 = 0; s2 = 1; s3 = 0; #10;   
    s1 = 0; s2 = 1; s3 = 1; #10;   
    s1 = 1; s2 = 0; s3 = 0; #10;   
    s1 = 1; s2 = 0; s3 = 1; #10;   
    s1 = 1; s2 = 1; s3 = 0; #10;   
    s1 = 1; s2 = 1; s3 = 1; #10;
    $finish;
end
endmodule
