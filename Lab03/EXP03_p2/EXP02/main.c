/*
 * EXP02.c
 *
 * Created: 2/12/2016 11:11:09
 * Author : Martin
 */ 

#include <avr/io.h>


int main(void)
{
	DDRB = 0xFF;	// set all of portB to output
	while (1)
		PORTB = 0x54;  // set PB6,4,2 high
	return 0;
}
