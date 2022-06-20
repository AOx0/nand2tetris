// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: One.tst

load One.hdl,
output-file One.out,
compare-to One.cmp,
output-list in%B3.1.3 out%B3.1.3;

set in 1,
eval,
output;

set in 0,
eval,
output;