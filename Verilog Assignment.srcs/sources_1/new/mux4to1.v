`timescale 1ns/1ps
module mux4to1 (
    input wire [3:0] I,    // 4 data inputs: I[3:0]
    input wire [1:0] S,    // 2 select lines: S[1:0]
    output wire Y           
);

    assign Y = (S == 2'b00) ? I[0] :
               (S == 2'b01) ? I[1] :
               (S == 2'b10) ? I[2] :
                              I[3];

endmodule