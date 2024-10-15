#include "8051.h"
#include "seven_segment.h"
#include "delay.h"

#define Hall_In P2_4
#define LED P1

int hall_ms = 0;									// counter of the time elapsed
char hall_last_state = 0;							// Record activation and deactivation of Hall sensor
int cnt = 0;
int ans = 0;

char decoder[10] = {
	0b01111110,
	0b00110000,
	0b01101101,
	0b01111001,
	0b00110011,
	0b01011011,
	0b01011111,
	0b01110000,
	0b01111111,
	0b01111011,
};


void Display(void);
void T0_isr(void) __interrupt (1)						// Interrupt routine w/ priority 1
{
	TH0 = (65536-1000) / 256;			// Reset higher 8 bits of Timer 0
	TL0 = (65536-1000) % 256;			// Reset lower 8 bits of Timer 0
	
	if (hall_last_state == 1 && Hall_In == 0){
		ans = cnt;
		cnt = 0;
		Display();
	}else{
		cnt++;
	}hall_last_state = Hall_In;
	
								// Count each interruption

}

int main(void) {		
	
	// Initialization
	TMOD = 0x01;											// Set Timer 1 to  mode 0 & T imer 0 mode 1. (16-bit timer)
	TH0 = (65536-1000) / 256;					// Load initial higher 8 bits into Timer 0
	TL0 = (65536-1000) % 256;					// Load initial lower 8 bits into Timer 0
	ET0 = 1;													// Enable Timer 0 interrupt
	EA = 1;														// Enable all interrupt
	TR0 = 1;													// Start Timer 0
	Initial();                  			//MAX7219 initialize
	cnt = 0;
    Hall_In = 1;              // Initialize Hall sensor signal (deactivated)
	
    while(1){

	}
	
}

void Display(void){
    unsigned char i = 1;
    Write7219(1, decoder[ans%10]);ans/=10;
    for (i = 2;i<9;i++){
        
		if (i == 4)Write7219(i, decoder[ans%10] | 0b10000000);
		else if (ans) Write7219(i, decoder[ans%10] );
        else Write7219(i, 0x00);
        ans/=10;
    }
 
 
}

