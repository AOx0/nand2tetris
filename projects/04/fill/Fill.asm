// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

(LOOP)
  // Check if a key was pressed 
  D = M [24576]

  // If it was, set screen to black
  D;JNE   [IF]
  // Else set to white
  0;JMP [ELSE]
  
  // Actual if-else 
  (IF) // If key, set ARG = 1    
      // Skip if ARG is already 0
      D = M [ ARG]
      D;JEQ [LOOP]

      D = A [   0]
      M = D [ ARG]

      // "Call" Set 
      0;JMP [SET]

  (ELSE) // Else set ARG = 0
      // Skip if ARG is already 1
      D = M [ ARG]
      D = D - 1
      D;JEQ [LOOP]

      D = A [   1]
      M = D [ ARG] 
      
      // "Call" Set 
      0;JMP [SET]
    
// Set "function"
(SET)
    // Loop trough all screen bits
    // Set THIS = SCREEN
    D = A   [SCREEN]
    M = D   [THIS]

    // Set i (THAT) = 8192
    D = A   [8192]
    M = D   [THAT]

    (SETLOOP)
      D = M [ ARG]
      A = M [THIS]
      M = D - 1 
      
      // i (THIS) += 1
      MD = M + 1 [THIS]
      // (THAT) -= 1
      MD = M - 1 [THAT]

      // Continue while i () >= 0
      D;JGE [SETLOOP]
      
    // Go to LOOP 
    0;JMP [LOOP]

