#include "8051.h"
#include "header7219.h"


#define Hall_In P2_4

int hall_ms = 0;
char hall_last_state = 0;							// Record activation and deactivation of Hall sensor


void T0_1(void) __interrupt (1)						// Interrupt routine w/ priority 1
{

}

int main(void) {		
	
	// Initialization
	TMOD = 0x89;											// Set Timer 1 to  mode 0 & T imer 0 mode 1. (16-bit timer)
	TH0 = (65536-1000) / 256;					// Load initial higher 8 bits into Timer 0
	TL0 = (65536-1000) % 256;					// Load initial lower 8 bits into Timer 0
	ET0 = 1;													// Enable Timer 0 interrupt
	EA = 1;														// Enable all interrupt
	TR0 = 1;													// Start Timer 0
	Initial7219();                  			//MAX7219 initialize
	
    Hall_In = 1;										// Initialize Hall sensor signal (deactivated)
    while(1);
}

