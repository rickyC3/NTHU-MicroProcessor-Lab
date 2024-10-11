#include "8051.h"
#include "delay.h"
#include "header7219.h"


void main(void)
{
	unsigned char shift = 1;
	unsigned char i;

	// 7-segment display
	unsigned char seg[] = {
    	0b01111110,  	// 0
    	0b00110000,  	// 1
    	0b01101101,  	// 2
    	0b01111001,  	// 3
    	0b00110011,  	// 4
    	0b01011011,  	// 5
    	0b01011111,  	// 6
    	0b01110000, 	// 7
    	0b01111111,  	// 8
    	0b01111011 		// 9
    };

	Initial7219();				 // MAX7219 initialize
	while (1) {
    	for (i = 8; i >= 1; i--) {
        	Write7219(i, seg[(shift - i + 8) % 8]);
    	}
		shift += 1;
    	if (shift == 9) shift = 1;
   		delay_ms(1000);
	}
}