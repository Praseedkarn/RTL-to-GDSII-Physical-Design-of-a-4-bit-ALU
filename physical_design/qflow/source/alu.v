`timescale 1ns/1ps

module alu_4bit(
    input [3:0] A,
    input [3:0] B,
    input [2:0] ALU_Sel,
    input Cin,

    output reg [3:0] Y,
    output reg Cout,
    output Zero
);

reg [4:0] temp;

always @(*) begin

    Y = 4'b0000;
    Cout = 1'b0;
    temp = 5'b00000;

    case (ALU_Sel)

        3'b000: begin
            // ADD
            temp = A + B + Cin;
            Y = temp[3:0];
            Cout = temp[4];
        end

        3'b001: begin
            // SUBTRACT
            temp = A - B;
            Y = temp[3:0];
            Cout = temp[4];
        end

        3'b010: begin
            // AND
            Y = A & B;
        end

        3'b011: begin
            // OR
            Y = A | B;
        end

        3'b100: begin
            // XOR
            Y = A ^ B;
        end

        3'b101: begin
            // NOT A
            Y = ~A;
        end

        3'b110: begin
            // INCREMENT
            temp = A + 1;
            Y = temp[3:0];
            Cout = temp[4];
        end

        3'b111: begin
            // DECREMENT
            temp = A - 1;
            Y = temp[3:0];
            Cout = temp[4];
        end

    endcase
end

assign Zero = (Y == 4'b0000);

endmodule