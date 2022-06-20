// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: Set16.tst

load Set16.hdl,
output-file Set16.out,
compare-to Set16.cmp,
output-list in%B1.16.1 va%B3.1.3 out%B1.16.1;

set in %B0000000000000000,
set va 1,
eval,
output;

set in %B1111111111111111,
set va 0,
eval,
output;

set in %B1010101010101010,
set va 1,
eval,
output;

set in %B0011110011000011,
set va 0,
eval,
output;

set in %B0001001000110100,
set va 1,
eval,
output;