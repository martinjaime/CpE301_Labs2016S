.dseg
    a: .byte 1    ; byte a;
    b: .byte 1    ; byte b;
.cseg
    lds r17, a    ; r17 = a
    ldi r18, 0    ; r18 = 0
    ldi r16, 10   ; r16 = 10
l1:
    add r18, r17  ; r18 = r18 + r17
    dec r16       ; r16--
    cpi r16, 0    ; if r16 != 0:
    brne l1       ;   goto l1

    sts b,r18     ; b = r18

b = 0
for ( int i = 10; i > 0; i--) {
  b = b + a;
}

while( r16 != 0) {
  b = b + a;
  r16--;
}
