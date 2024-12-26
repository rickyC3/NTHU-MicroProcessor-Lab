#include "8051.h"
#include "delay.h"
#include "seven_segment.h"

#define but3 P2_0
#define but4 P2_1
#define but1 P3_2
#define but2 P3_3


unsigned char send_data;
unsigned char received_data;
unsigned char send_flag=0;
unsigned char received_flag=0;
int data_seg = 0;
int now_num = 0;
int idx = 0;
void main(void)
{	
	// ******************* TODO ********************** //
	// you can define your own private key
	// ******************* TODO ********************** //
	unsigned char key[]={ 1, 3, 1, 2, 2, 3, 4 };		
	
	
	// set timer and initialize communication port
	TMOD = 0x20;			// set timer1 to mode2 
	SCON = 0x50;       		// set serial mode1
	TH1 = 250;     			// baudrate = 9600, fosc = 11.0592MHz
	TR1 = 1;				// enable timer = 1
	IE = 0x90;				// enable serial port interrupt

	Initial();
	for (int i = 1; i < 9; i++)
    	Write7219(i, 0x0F);     	// Reset all digits as blank
                              		// Our DecodeMode of MAX7219 is different from lab2
                             		// So we can pass a number to it without building a table

	while(1){	
		// ******************* TODO ********************** //
		// you can refer to example project to finish this practice
		// ******************* TODO ********************** //
		if (received_flag == 1){
			now_num = received_data;
			if (idx>=8)continue;
			if (key[idx] == now_num){
				idx++;
				//data_seg = data_seg*10+now_num;
				Write7219(1, 1);
			}else{
				Write7219(1, 0);
			}delay_ms(100);
			received_flag = 0;
		}
		// DISPLAY
		for (int i=2, j = 0;i<=8&&j<idx;i++, j++){
			Write7219(i, key[j]);
		}
		if (but1 == 0){
			delay_ms(10);
			if (but1 == 0){
				send_data = 1;
				send_flag = 1;
				while(!but1);
			}
		}
		if (but2 == 0){
			delay_ms(10);
			if (but2 == 0){
				send_data = 2;
				send_flag = 1;while(!but2);
			}
		}
		if (but3 == 0){
			delay_ms(10);
			if (but3 == 0){
				send_data = 3;
				send_flag = 1;
				while(!but3);
			}
		}
		if (but4 == 0){
			delay_ms(10);
			if (but4 == 0){
				send_data = 4;
				send_flag = 1;while(!but4);
			}
		}
		if (send_flag == 1){
			SBUF = send_data;
			send_flag = 0;
		}
	}delay_ms(10);
}


void uart_isr(void) __interrupt (4)
{  
    // ******************* TODO ********************** //
	if (RI == 1){
		RI = 0;
		received_data = SBUF;
		received_flag = 1;
	}
	if (TI == 1)
		TI = 0;
}
