// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Set  R2 = 0
    @0
    D = A

    @R2
    M = D

// Set Counter (R3) = R1
    @R1
    D = M

    @R3
    M = D

// END if R1 <= 0
    @R1
    D = M

    @END
    D;JLE

// END if R0 <= 0
    @R0
    D = M

    @END
    D;JLE

(LOOP)
    // Counter(R3)-=1
        @R3
        M = M - 1

    // R2+=R0
        @R0
        D = M

        @R2
        M = M + D

    // Continue if Counter(R3)>0
        @R3
        D = M

        @LOOP 
        D;JGT
(END)