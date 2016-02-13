;
; Exp01.asm
;
; Created: 2/12/2016 10:30:05
; Author : Martin
;


; Replace with your application code
.org 0
SBI	DDRB, 4		;set PB4 as an output
LDI	R17, 16		;value is 16 to light up bit
OUT PORTB, R17	;sends value of R17 to corresponding bit

start:
    inc r16
    rjmp start