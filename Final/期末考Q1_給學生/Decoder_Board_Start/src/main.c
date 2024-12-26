#include "8051.h"
#include "delay.h"

void UART_init(void); 	//9600 bps

unsigned char received_data;
unsigned char received_flag = 0;

unsigned char send_data;
unsigned char send_flag = 0;

void main(void)
{ 
 	EA  = 1;		/* Enable global interrupt */
	ES = 1;  		/* Enable serial interrupt */

	UART_init(); 	//9600 bps

	send_data = 0x11;	// send data to SBUF 
	send_flag = 1;

 	while(1) 
	{  
		if(received_flag == 1)
		{
		  if(received_data == 'Y')
		 	P1 = 0x00;
		  else 
		 	P1 = 0x7E;


		  received_flag = 0;
		}


		if (send_flag == 1)
		{
			SBUF = send_data;	// send data to SBUF
			send_flag = 0;
		} 

        delay_ms(1);
    }
}


void UART_init(void) 	//9600 bps
{
	TMOD = 0x20;		/* Timer 1, 8-bit auto reload mode */
	TH1 = 0xFD;		/* Load value for 9600 baud rate */
	SCON = 0x50;		/* Mode 1, reception enable */
	TR1 = 1;		/* Start timer 1 */
}

void uart_isr(void) __interrupt (4) 
{  
    if(RI == 1) 
	{
       RI = 0;                  // refresh RI
	   if(received_flag == 0)
	   {
	    received_data = SBUF;    // receive data from SBUF
		received_flag = 1;       // receiving finished
	   }
    }
	if (TI == 1)
    	TI = 0;
}