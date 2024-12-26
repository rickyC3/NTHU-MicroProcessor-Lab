/*
	reference : 8051_Serial_Interrupt
	http://www.electronicwings.com
*/

#include "8051.h"
#include "delay.h"


#define but3 P2_0
#define but4 P2_1
#define but1 P3_2
#define but2 P3_3

void Serial_ISR() __interrupt(4)
{
	if(RI == 1)
	{
		P1 = ~SBUF;		/* Give received data on port 1 */
		RI = 0;			/* Clear RI flag */
	}
}

void SEND_STRING(char *str)
{
	for(int i=0; str[i]!=0; i++)	/* Send each char of string till the NULL */
	{
		SBUF = str[i];		/* Load char in SBUF register */
		while (TI==0);		/* Wait until stop bit transmit */
		TI = 0;				/* Clear TI flag */
	}
}	

void main()
{
	P1 = ~0x00;		/* Make P1 output */

	/*interrupt initialize */
	EA = 1;			/* Enable global interrupt */
	ES = 1;  		/* Enable serial interrupt */	

	/*UART initialize*/
	TMOD = 0x20;	/* Timer 1, 8-bit auto reload mode */
	TH1 = 0xFD;		/* Load value for 9600 baud rate */
	SCON = 0x50;	/* Mode 1, reception enable */
	TR1 = 1;		/* Start timer 1 */

	while(1)
	{
		if (but3 == 0) 
		{
			delay_ms(100);
			if (but3 == 0) 
				SEND_STRING("but3 ");
		}


		if (but4 == 0) 
		{
			delay_ms(100);
			if (but4 == 0) 
				SEND_STRING("but4 ");
		}
	}
}