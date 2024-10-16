#include "8051.h"
#include "delay.h"

void main(void)
{ 
 
 	unsigned char patt=0x80; // led value
	unsigned int t = 0;
	int way = 1;
 	
 	while(1) {  
		P1 = ~patt;		// actual inverse value 
 	
 		if(way == 1) {
			patt = patt >> 1; 	// shift right
		}
		else {
			patt = patt << 1;	// shift left
		}
		
		if(patt == 0x00) {
			if(way == 1) {		// reverse from right
				patt = 0x01;
			}
			else {
				patt = 0x80;	// reverse from left
			}
			way = ~way;			// change way
		}

        delay_ms(P0*20);
    }
}

