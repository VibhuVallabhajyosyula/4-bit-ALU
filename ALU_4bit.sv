module ALU_4bit (
    input [3:0] A, B,       // 4-bit inputs
    input [2:0] ALU_Sel,    // Control signal to select operation
    output reg [3:0] ALU_Out, // 4-bit output
    output reg Carry_Out    // Carry or Borrow output
);

    always @(*) begin
        case (ALU_Sel)
            3'b000: {Carry_Out, ALU_Out} = A + B;  // Addition
            3'b001: {Carry_Out, ALU_Out} = A - B;  // Subtraction
            3'b010: ALU_Out = A & B;   // Bitwise AND
            3'b011: ALU_Out = A | B;   // Bitwise OR
            3'b100: ALU_Out = A ^ B;   // Bitwise XOR
            3'b101: ALU_Out = ~A;      // Bitwise NOT (only A)
            3'b110: ALU_Out = A << 1;  // Logical Left Shift
            3'b111: ALU_Out = A >> 1;  // Logical Right Shift
            default: ALU_Out = 4'b0000;
        endcase
    end
endmodule
