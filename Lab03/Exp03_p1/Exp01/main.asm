;
; Exp01.asm
;
; Created: 2/12/2016 10:30:05
; Author : Martin
;


; Replace with your application code
.org 0
SBI	DDRB, 3		;set PB3 as an output
SBI DDRB, 5		;set PB5 as an output
LDI	R17, 40		;value is 16 to light up bit
OUT PORTB, R17	;sends value of R17 to corresponding bit

start:
    inc r16
    rjmp start