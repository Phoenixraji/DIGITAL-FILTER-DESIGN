
`timescale 1ns/1ps

module tb_fir_filter;

    reg clk;
    reg reset;
    reg [7:0] x_in;
    wire [15:0] y_out;

    fir_filter uut (
        .clk(clk),
        .reset(reset),
        .x_in(x_in),
        .y_out(y_out)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("fir.vcd");
        $dumpvars(0, tb_fir_filter);

        clk = 0;
        reset = 1; x_in = 0;
        #10 reset = 0;

        // Apply input sequence
        #10 x_in = 8'd10;
        #10 x_in = 8'd20;
        #10 x_in = 8'd30;
        #10 x_in = 8'd0;
        #10 x_in = 8'd5;

        #50 $finish;
    end

endmodule
