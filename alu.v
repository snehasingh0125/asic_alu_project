module ALU (
    input [3:0] A,
    input [3:0] B,
    input [2:0] opcode,
    output reg [3:0] result,
    output reg zero
);
always @(*) begin
    case (opcode)
        3'b000: result = A + B;
        3'b001: result = A - B;
        3'b010: result = A & B;
        3'b011: result = A | B;
        3'b100: result = A ^ B;
        3'b101: result = ~A;
        3'b110: result = (A < B) ? 1 : 0;
        3'b111: result = (A == B) ? 1 : 0;
        default: result = 0;
    endcase
    zero = (result == 0);
end
endmodule
