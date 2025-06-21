`timescale 1ns / 1ps
module ALU_tb;
    reg [3:0] A, B;
    reg [2:0] opcode;
    wire [3:0] result;
    wire zero;

    ALU uut (.A(A), .B(B), .opcode(opcode), .result(result), .zero(zero));

    initial begin
        $dumpfile("outputs/alu.vcd");
        $dumpvars(0, ALU_tb);

        A = 4'b0101; B = 4'b0011; opcode = 3'b000; #10;
        A = 4'b0101; B = 4'b0001; opcode = 3'b001; #10;
        A = 4'b1111; B = 4'b0001; opcode = 3'b010; #10;
        A = 4'b1010; B = 4'b0101; opcode = 3'b011; #10;
        A = 4'b1100; B = 4'b1010; opcode = 3'b100; #10;
        A = 4'b1001; opcode = 3'b101; #10;
        A = 4'b0010; B = 4'b0100; opcode = 3'b110; #10;
        A = 4'b0101; B = 4'b0101; opcode = 3'b111; #10;

        $finish;
    end
endmodule
