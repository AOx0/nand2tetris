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
    D = A [ 0]
    M = D [R2]

// Set Counter (R3) = R1
    D = M [R1]
    M = D [R3]

// END if R1 <= 0
    D = M [ R1]
    D;JLE [END]

// END if R0 <= 0
    D = M [ R0]
    D;JLE [END]

(LOOP)
    // R2+=R0
        D = M     [R0]
        M = M + D [R2]

    // Counter (R3)-=1
        MD = M - 1 [R3]
        
    // Continue while R3 > 0
        D;JGT [LOOP]
(END)

// 0;JMP [32766]
