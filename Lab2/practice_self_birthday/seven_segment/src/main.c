/**************************************************************
 *
 * P1  : 8 LEDs
 * P0_1: buttons column 1
 * P0_2: buttons column 2
 * P0_3: buttons column 3
 * P0_4: buttons row 1
 * P0_5: buttons row 2
 * P0_6: buttons row 3
 * P2_2: DIN of MAX7219
 * P2_1: CS of MAX7219
 * P2_0: CLK of MAX7219
 * 
**************************************************************/

#include "8051.h"
#include "delay.h"
#include "header7219.h"
#include <string.h>
#define led P1
#define o1 P0_4
#define o2 P0_5
#define o3 P0_6
#define but1 P0_1
#define but2 P0_2
#define but3 P0_3



void Display(unsigned char seg[]);

void main(void)
{
	//long int num = 0;
	int Key = 0;
	unsigned char tmp[] = {};
	unsigned char patt = 0x88;
	unsigned char seg[] = {
    	0,  	// 0
    	0b01111110,  	// 1
    	0,  	// 2
    	0,  	// 3
    	0,  	// 4
    	0,  	// 5
    	0,  	// 6
    	0,
		0// 7 	// 7
    };

	Initial7219();					// MAX7219 initialize
	
	int i = 0;
    while (1) 
	{
		// TODO1 : detect the button pressed
		Key = 0;
		Key = Get_Key();
		delay_ms(90);
		Key = Get_Key();
		// TODO2 : based on the button pressed, update the "num" value to be shown.
		if(Key == Key && Key != 0){
			if (seg[1] == 0b01111110)seg[1] = 0;
			for (i=8;i>=2;i--){
				seg[i] = seg[i-1];
			}
			if (Key == 1){
				seg[1] = 0b00110000;
				patt = 0x01;
			}else if (Key == 2){
				seg[1] = 0b01101101;
				patt = 0x02;
			}else if (Key == 3){
				seg[1] = 0b01111001;
				patt = 0x04;
			}else if (Key == 4){
				seg[1] = 0b00110011;
				patt = 0x08;
			}else if (Key == 5){
				seg[1] = 0b01011011;
				patt = 0x10;
			}else if (Key == 6){
				seg[1] = 0b01011111;
				patt = 0x20;
			}else if (Key == 7){
				seg[1] = 0b01110000;
				patt = 0x40;
			}else if (Key == 8){
				seg[1] = 0b01111111;
				patt = 0x80;
			}else if (Key == 9){
				seg[1] = 0b01111011;
				patt = 0x81;
			}
		}


		// display num
		//Display(seg);
		led = ~patt;

		// TODO3 : use Write7219() function to display "num" on 7-segement.
		// hint  : you can modify the example code to achieve this part.

    	for (i = 8; i >= 1; i--) {
        	Write7219(i, seg[i]);
		}
		//delay_ms(100);
    }
}

void Display(unsigned char seg[]) 
{		
		int i = 8;
		// TODO3 : use Write7219() function to display "num" on 7-segement.
		// hint  : you can modify the example code to achieve this part.
		while (1) {
    	for (i = 8; i >= 1; i--) {
        	Write7219(i, seg[(i + 8) % 8]);
    	}
   		//delay_ms(1000);
	}
}