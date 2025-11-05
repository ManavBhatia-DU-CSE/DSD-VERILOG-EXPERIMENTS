`timescale 1ns/1ps

module tb_mux4to1;

    // Testbench signals
    reg [3:0] I;       // Data inputs
    reg [1:0] S;       // Select lines
    wire Y;            // Output

    // Instantiate the DUT (Device Under Test)
    mux4to1 uut (
        .I(I),
        .S(S),
        .Y(Y)
    );

    // Stimulus
    initial begin
        $display("Time\tS1 S0\tI3 I2 I1 I0\tY");
        $monitor("%0t\t%b\t%b\t\t%b", $time, S, I, Y);

        // Test all combinations
        I = 4'b0001; S = 2'b00; #10;
        I = 4'b0010; S = 2'b01; #10;
        I = 4'b0100; S = 2'b10; #10;
        I = 4'b1000; S = 2'b11; #10;

        // Additional tests: all inputs changing
        I = 4'b1010; S = 2'b00; #10;
        S = 2'b01; #10;
        S = 2'b10; #10;
        S = 2'b11; #10;

        $finish;
    end

endmodule