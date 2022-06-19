# 01

## Todo

- [x] And.hdl
- [x] And16.hdl
- [x] DMux.hdl
- [x] DMux4Way.hdl
- [x] DMux8Way.hdl
- [x] Mux.hdl
- [x] Mux4Way16.hdl
- [x] Mux8Way16.hdl
- [x] Mux16.hdl
- [x] Not.hdl
- [x] Not16.hdl
- [x] Or.hdl
- [x] Or8Way.hdl
- [x] Or16.hdl
- [x] Eq.hdl (custom)
- [x] Xor.hdl

## Basic Gates

### Not

![Not Circuit](images/Not.png)

Negates a given input. Thus, matches 1 to 0 and 0 to 1.

`!A`

### And

![And Circuit](images/And.png)

Determines whether two given inputs are both 1 or not.

`AB`

### Or

![Or Circuit](images/Or.png)

Determines whether any of two given inputs is 1.

`A + B`

### Eq

![Eq Circuit](images/Eq.png)

Yields 1 if both `a` and `b` are `0` or `1`. Thus, if a and b are equal.

`AB + !A!B`

Future notation: `==`

### Xor

![Xor Circuit](images/Xor.png)

Determines if the two given inputs are not equal

`!(A == B)`

### Mux

![DMux Circuit](images/Mux.png)

Output the value of `a` to `out` if `sel==0`; else in `b`

`out = (A if sel == 0 else B)`

### DMux

![DMux Circuit](images/DMux.png)

Display `in` in `a` if `sel==0`; else in `b`

`(A if sel == 0 else B) = in`

## Multiple gates

### And16

16-bit `and` chip

### Or16

16-bit `or` chip

### Not16

16-bit `not` chip
