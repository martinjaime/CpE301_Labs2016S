.dseg
    a: .byte 1    ; byte a;
    b: .byte 1    ; byte b;
    c: .byte 1    ; byte c;
.cseg
    lds r16, a    ; r16 = a
    lds r17, b    ; r17 = b

    cpi r16, 6    ; if r16 < 6:
    brlt l1       ;   goto l1

    cpi r17, 8    ; if r17 < 8:
    brlt l1       ;   goto l1

    add r16, r17  ; r16 += r17
    sts c, r16    ; c = r16
    jmp l2        ; goto l2
l1:
    sub r16, r17  ; r16 -= r17
    sts c, r16    ; c = r16
l2:

if (a < 6 || b < 8) {
  a -= b;
  c = a;
}
else {
  a += b;
  c = a;
}
