// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: Eq16Way.tst

load Eq16Way.hdl,
output-file Eq16Way.out,
compare-to Eq16Way.cmp,
output-list in%B1.16.1  va%B3.1.3 out%B3.1.3;

set in %B0000000000000000,
set va 1;
eval,
output;

set in %B1111111111111111,
set va 1;
eval,
output;

set in %B1010101010101010,
set va 1;
eval,
output;

set in %B0011110011000011,
set va 1;
eval,
output;

set in %B0001001000110100,
set va 1;
eval,
output;