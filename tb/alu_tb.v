`timescale 1ns/1ps

module alu_tb;

    reg [3:0] A;
    reg [3:0] B;
    reg [2:0] ALU_Sel;
    reg       Cin;

    wire [3:0] Y;
    wire       Cout;
    wire       Zero;

    reg [4:0] expected;

    integer i;
    integer j;
    integer k;
    integer errors;

    // Instantiate ALU
    alu_4bit DUT (
        .A(A),
        .B(B),
        .ALU_Sel(ALU_Sel),
        .Cin(Cin),
        .Y(Y),
        .Cout(Cout),
        .Zero(Zero)
    );

    initial begin

        $dumpfile("alu.vcd");
        $dumpvars(0, alu_tb);

        errors = 0;

        // Test all A values
        for (i = 0; i < 16; i = i + 1) begin

            // Test all B values
            for (j = 0; j < 16; j = j + 1) begin

                // Test all 8 operations
                for (k = 0; k < 8; k = k + 1) begin

                    A = i;
                    B = j;
                    ALU_Sel = k;
                    Cin = 0;

                    #1;

                    // Calculate expected result
                    case (ALU_Sel)

                        3'b000:
                            expected = A + B + Cin;

                        3'b001:
                            expected = A - B;

                        3'b010:
                            expected = {1'b0, (A & B)};

                        3'b011:
                            expected = {1'b0, (A | B)};

                        3'b100:
                            expected = {1'b0, (A ^ B)};

                        3'b101:
                            expected = {1'b0, ~A};

                        3'b110:
                            expected = A + 1;

                        3'b111:
                            expected = A - 1;

                    endcase

                    // Compare actual and expected result
                    if ({Cout, Y} !== expected) begin

                        $display(
                            "FAIL: A=%b B=%b Sel=%b | Expected=%b | Got=%b",
                            A, B, ALU_Sel, expected, {Cout, Y}
                        );

                        errors = errors + 1;

                    end

                end

            end

        end

        // Final result
        if (errors == 0) begin

            $display("=================================");
            $display("ALL TESTS PASSED!");
            $display("Total tests = 2048");
            $display("=================================");
        end
        else begin
            $display("=================================");
            $display("TEST FAILED!");
            $display("Errors = %0d", errors);
            $display("=================================");
        end

        $finish;

    end

endmodule