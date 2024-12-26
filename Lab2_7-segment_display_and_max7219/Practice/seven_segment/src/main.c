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

void Display(long int num);

void main(void)
{
	long int num = 0;

	Initial7219();					// MAX7219 initialize

    while (1) 
	{
		// TODO1 : detect the button pressed




		// TODO2 : based on the button pressed, update the "num" value to be shown.



		// display num
		Display(num);
		delay_ms(10);
    }
}

void Display(long int num) 
{
		// TODO3 : use Write7219() function to display "num" on 7-segement.
		// hint  : you can modify the example code to achieve this part.
}