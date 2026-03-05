`timescale 1ns/1ps

module alu_tb;

reg [7:0] a;
reg [7:0] b;
reg [2:0] op;

wire [7:0] result;

alu uut (
    .a(a),
    .b(b),
    .op(op),
    .result(result)
);

initial begin

    $dumpfile("alu.vcd");
    $dumpvars(0, alu_tb);

    a = 8'd10; b = 8'd5; op = 3'b000; #10;
    a = 8'd10; b = 8'd5; op = 3'b001; #10;
    a = 8'd10; b = 8'd5; op = 3'b010; #10;
    a = 8'd10; b = 8'd5; op = 3'b011; #10;

    $finish;

end

endmodule
