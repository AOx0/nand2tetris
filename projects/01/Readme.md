# 01

## Todo:

- [x] And.hdl
- [ ] And16.hdl
- [ ] DMux.hdl
- [ ] DMux4Way.hdl
- [ ] DMux8Way.hdl
- [ ] Mux.hdl
- [ ] Mux4Way16.hdl
- [ ] Mux8Way16.hdl
- [ ] Mux16.hdl
- [ ] Not.hdl
- [ ] Not16.hdl
- [x] Or.hdl
- [ ] Or8Way.hdl
- [ ] Or16.hdl
- [x] Eq.hdl (custom)
- [x] Xor.hdl

## Notes

### And

Determines whether two given inputs are both 1 or not.

`AB`

### Or

Determines whether any of two given inputs is 1.

`A + B`

### Eq

Yields 1 if both `a` and `b` are `0` or `1`. Thus, if a and b are equal.

`AB + !A!B`

Future notation: `==`

### Xor

Determines if the two given inputs are not equal

`!(A == B)`
