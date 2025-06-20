`timescale 1ns/1ps

module fir_filter (
    input clk,
    input reset,
    input [7:0] x_in,
    output reg [15:0] y_out
);

    reg [7:0] x_reg0, x_reg1, x_reg2;
    parameter h0 = 1, h1 = 2, h2 = 1;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            x_reg0 <= 0; x_reg1 <= 0; x_reg2 <= 0;
            y_out <= 0;
        end else begin
            x_reg2 <= x_reg1;
            x_reg1 <= x_reg0;
            x_reg0 <= x_in;

            y_out <= h0*x_reg0 + h1*x_reg1 + h2*x_reg2;
        end
    end

endmodule