#include "8051.h"
#include "delay.h"
#include "header7219.h"

#define but1 P3_2

void UART_init(void); 	//9600 bps
void Delay_Do(void);
unsigned char received_data;
unsigned char received_flag = 0;

unsigned char send_data;
unsigned char send_flag = 0;

unsigned char seg[10] = {
	  0x7E,  //0
	  0x30,  //1
	  0x6D,  //2
	  0x79,  //3
	  0x33,  //4
	  0x5B,  //5
	  0x5F,  //6
	  0x70,  //7
	  0x7F,  //8
	  0x7B	 //9
  };

unsigned char idx_table[9] = {
	  0x00,  //0
	  0x10,  //1
	  0x20,  //2
	  0x30,  //3
	  0x40,  //4
	  0x50,  //5
	  0x60,  //6
	  0x70,  //7
	  0x80  //8
	  //0x90	 //9
};

unsigned char send_num[10] = {
	0x00, // 0
	0x01, // 1
	0x02, // 2
	0x03, // 3
	0x04, // 4
	0x05, // 5
	0x06, // 6
	0x07, // 7
	0x08, // 8
	0x09 // 9
};

void main(void)
{ 
 	EA  = 1;		/* Enable global interrupt */
	ES = 1;  		/* Enable serial interrupt */

	UART_init(); 	//9600 bps
	char i;
	int j;
	int tar = 523;
	send_data = 0x11;	// send data to SBUF 
	send_flag = 1;
	char idx = 8;
	char guess_idx = 1;
	char num = 0;
	
	Initial7219();
	while(but1 == 1);
 	while(1) 
	{  
		
		if (but1 == 0){
			delay_ms(10);
			if (but1 == 0){
				while (but1 == 0);
				for (int i=8;i>=1;i--){
					//Write7219(i, seg[i]);
					Write7219(i, 0x01);
				}
			}
			idx = 8;
			guess_idx = 1;
			num = 0;
			delay_ms(100);
		}
		if(received_flag == 1)
		{
		  if(received_data == 'Y'){
			Write7219(idx, seg[num]);
			guess_idx++;
			idx--;
			num = 0;
			delay_ms(100);
		  }else{
			num++;

		  }
		  received_flag = 0;
		}
		

		

		if (guess_idx >= 9){
			if (guess_idx == 9){
				for (i=0;i<3;i++){
					for (j=0;j < tar;j++){
						P3_7 = 1;
						Delay_Do();
						P3_7 = 0;
						Delay_Do();
					}
					delay_ms(1000);
				}
				guess_idx++;
			}
			send_data = 0x00;
			

		}else{
			send_data = idx_table[guess_idx] | send_num[num];
			send_flag = 1;
		}
		if (send_flag == 1)
		{
			SBUF = send_data;	// send data to SBUF
			send_flag = 0;
		}delay_ms(500);
    }
	// return;
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

void Delay_Do(void) {
	__asm
	// DO = 1047Hz
	// we require a delay of 0.4776ms for each half period
	// 440 cycles @Fosc = 11.0592MHz
	DELAY_Do:
		MOV R6,#10				// 1 cycle
	
	DELAY_Do_DL1:
		MOV R7,#19				// 1 cycle
	
	STEP1:
		DJNZ R7,STEP1			// 2 cycles
		DJNZ R6,DELAY_Do_DL1	// 2 cycles
		// 410 cycle = R6 * (1 + (R7 * 2) + 2) = 10 * (1 + (19 * 2) + 2)
		
		MOV R7,#13				// 1 cycle
	
	STEP2:
		DJNZ R7,STEP2			// 2 cycles
		// 27 cycle = 1 + (R7 * 2) = 1 + (13 * 2)

		RET						// 2 cycles
		// Total = 440 cycles, meeting the required cycle count for generating DO
	
	__endasm;
						
}