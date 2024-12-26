#include "8051.h"
#include "delay.h"
#include "header7219.h"

void main(void)
{
	unsigned char shift = 0;
	unsigned char i;
	
	//dot matrix
	unsigned char hi[] = {
		0b11111111,
  		0b00010000,
  		0b00010000,
  		0b11111111,
  		0b00000000,
  		0b10000001,
  		0b11111111,
  		0b10000001,
  		0b00000000,
  		0b00001110,
  		0b00011100,
  		0b00111000,
  		0b00011100,
  		0b00001110,
  		0b00000000,
  		0b00000000
	};

	Initial7219();				 // MAX7219 initialize
	while (1) {
    	for (i = 8; i >= 1; i--) {
        	Writesingle7219(1, i, hi[(shift + i - 1) % 16]);
			Writesingle7219(2, i, hi[(shift + i + 8 - 1) % 16]);
    	}
		shift += 1;
    	if (shift == 17) shift = 0;
   		delay_ms(500);
	}
}