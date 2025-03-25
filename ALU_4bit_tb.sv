module ALU_4bit_tb;
    reg [3:0] A, B;
    reg [2:0] ALU_Sel;
    wire [3:0] ALU_Out;
    wire Carry_Out;

    // Instantiate the ALU module
    ALU_4bit uut (
        .A(A),
        .B(B),
        .ALU_Sel(ALU_Sel),
        .ALU_Out(ALU_Out),
        .Carry_Out(Carry_Out)
    );

    initial begin
        // Dump waveforms
        $dumpfile("dump.vcd");
        $dumpvars(0, ALU_4bit_tb);

        // Apply test cases
        $monitor("A=%b, B=%b, ALU_Sel=%b, ALU_Out=%b, Carry_Out=%b", A, B, ALU_Sel, ALU_Out, Carry_Out);
        
        A = 4'b0101; B = 4'b0011; ALU_Sel = 3'b000; #10; // Addition
        A = 4'b1000; B = 4'b0011; ALU_Sel = 3'b001; #10; // Subtraction
        A = 4'b1100; B = 4'b1010; ALU_Sel = 3'b010; #10; // AND
        A = 4'b1100; B = 4'b1010; ALU_Sel = 3'b011; #10; // OR
        A = 4'b1100; B = 4'b1010; ALU_Sel = 3'b100; #10; // XOR
        A = 4'b1010; ALU_Sel = 3'b101; #10; // NOT A
        A = 4'b0011; ALU_Sel = 3'b110; #10; // Left Shift
        A = 4'b1000; ALU_Sel = 3'b111; #10; // Right Shift

        $finish;
    end
endmodule
