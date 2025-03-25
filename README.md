# 4-bit-ALU
This Verilog module implements a 4-bit Arithmetic Logic Unit (ALU) that performs various arithmetic and logical operations based on a 3-bit control signal (ALU_Sel). It supports the following operations:  

- Addition (000): Computes A + B, with carry-out.  
- Subtraction (001): Computes A - B, with borrow-out.  
- Bitwise AND (010): Performs A & B.  
- Bitwise OR (011): Performs A | B.  
- Bitwise XOR (100): Performs A ^ B.  
- Bitwise NOT (101): Computes ~A (ignores B).  
- Left Shift (110): Shifts A left by one bit.  
- Right Shift (111): Shifts A right by one bit.  

The result is output via ALU_Out, and Carry_Out is used for arithmetic operations.
