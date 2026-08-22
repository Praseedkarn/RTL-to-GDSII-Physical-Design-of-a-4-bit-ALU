module alu_4bit(
    input [3:0] A,
    input [3:0] B,
    input [2:0] ALU_Sel,
    input Cin,

    output reg [3:0] Y,
    output reg Cout,
    output Zero
);

always @(*) begin

    //defualt Value 
    Y= 4'b0000;
    Cout = 1'b0;


    case (ALU_Sel)

        3'b000: begin 
            {Cout , Y } = A+B+Cin;
        end

        3'b001: begin
            {Cout , Y }= A-B;
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
            {Cout, Y} = A + 4'b0001;
        end

        3'b111: begin
            // DECREMENT
            {Cout, Y} = A - 4'b0001;
        end

    endcase
end

assign Zero = (Y==4'b0000);

endmodule
