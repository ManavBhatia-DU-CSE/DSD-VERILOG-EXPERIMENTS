`timescale 1ns / 1ps
module counter(
    input clk,
    input reset,
    output reg [2:0] count
);

always @(posedge clk or posedge reset) begin
    if (reset)
        count <= 3'b000;                         // Start at 0
    else begin
        case (count)
            3'b000: count <= 3'b011;             // 0 → 3
            3'b011: count <= 3'b101;             // 3 → 5
            3'b101: count <= 3'b110;             // 5 → 6
            3'b110: count <= 3'b000;             // 6 → 0 (loop)
            
            default: count <= 3'b000;            // Lockout correction
        endcase
    end
end

endmodule
