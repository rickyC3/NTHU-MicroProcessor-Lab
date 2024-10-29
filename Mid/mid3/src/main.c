/***************************************************************************************************
                                   ExploreEmbedded Copyright Notice 
 ****************************************************************************************************
 * File:   oled_i2c.c
 * Version: 16.0
 * Author: ExploreEmbedded
 * Website: http://www.exploreembedded.com/wiki
 * Description: SSD1306 I2C OLED library to display strings, numbers, graphs and logos

This code has been developed and tested on ExploreEmbedded boards.  
We strongly believe that the library works on any of development boards for respective controllers. 
Check this link http://www.exploreembedded.com/wiki for awesome tutorials on 8051,PIC,AVR,ARM,Robotics,RTOS,IOT.
ExploreEmbedded invests substantial time and effort developing open source HW and SW tools, to support consider 
buying the ExploreEmbedded boards.

The ExploreEmbedded libraries and examples are licensed under the terms of the new-bsd license(two-clause bsd license).
See also: http://www.opensource.org/licenses/bsd-license.php
EXPLOREEMBEDDED DISCLAIMS ANY KIND OF HARDWARE FAILURE RESULTING OUT OF USAGE OF LIBRARIES, DIRECTLY OR
INDIRECTLY. FILES MAY BE SUBJECT TO CHANGE WITHOUT PRIOR NOTICE. THE REVISION HISTORY CONTAINS THE INFORMATION 
RELATED TO UPDATES.

Permission to use, copy, modify, and distribute this software and its documentation for any purpose
and without fee is hereby granted, provided that this copyright notices appear in all copies 
and that both those copyright notices and this permission notice appear in supporting documentation.
 **************************************************************************************************/ 

#include "8051.h"
#include "oled_i2c.h"
#include "i2c.h"
#include "MPU6050.h"
#include "delay.h"
#include<header7219.h>
#define led P1
#define Hall_In P2_4



char i = 0;
int cnt = 0;
int cnt_s = 0;
int accP = 0;
int DynP = 0;
char patt;
int time[3] = {23, 59, 0};  // Stores the 16-bit signed accelerometer sensor output
unsigned char patt = 0x80;	//led value
int hall_last_state = 0;

void T0_isr(void) __interrupt (1)			// Interrupt routine w/ priority 1
{
	// PC jumps to here every 1ms  
	TH0 = (65536-1000) / 256;			// Reset higher 8 bits of Timer 0
	TL0 = (65536-1000) % 256;			// Reset lower 8 bits of Timer 0
	
	cnt++;								// Count each interruption
	if(cnt >= 1000) {						// 1000 interruptions = 1000ms = 1s
		if (time[2] == 59 && time[1] == 59)time[0] = (time[0]+1)%24;
    if (time[2] == 59)time[1] = (time[1]+1)%60;
    time[2] = (time[2]+1)%60;		
    cnt = 0;	// Reverse wave signal
    cnt_s++;
    DynP = (accP / cnt_s) * 60;
	}
}


void main(void)
{	

      // Initialization
    TMOD = 0x01;						// Set Timer 1 to  mode 0 & Timer 0 mode 1. (16-bit timer)
    TH0 = (65536-1000) / 256;			// Load initial higher 8 bits into Timer 0
    TL0 = (65536-1000) % 256;			// Load initial lower 8 bits into Timer 0
    ET0 = 1;							// Enable Timer 0 interrupt
    EA = 1;								// Enable all interrupt
    TR0 = 1;	

    SDA = 1;
    SCL = 1;
    OLED_Init();		  // Check oled_i2c.c file for SCL,SDA pin connection
  
		
    OLED_SetCursor(0,0);  // Set cursor at 0th-line 0th-Position

    OLED_SetCursor(2, 0);  
		OLED_DisplayString(" Time ");
    OLED_SetCursor(3, 0);  
		OLED_DisplayString("People");
    OLED_SetCursor(4, 0);  
		OLED_DisplayString("AccPeo");
    OLED_SetCursor(5, 0);  
    OLED_DisplayString("DynPeo");


	while(1) {


      for(i = 0; i < 4; i++) {
        if(i == 0) {
          OLED_SetCursor(2 + i, 54); 
          OLED_DisplayChar(time[0] / 10 + '0');
				  OLED_DisplayChar(time[0]  % 10 + '0');
          OLED_DisplayChar(':');
				  OLED_DisplayChar(time[1] / 10 + '0');
				  OLED_DisplayChar(time[1] % 10 + '0');
          OLED_DisplayChar(':');
				  OLED_DisplayChar(time[2] / 10 + '0');
          OLED_DisplayChar(time[2] % 10 + '0');
        } else if (i == 1){
          //cnt = 60*60*time[0] + 60 * time[1] + time[2];
          OLED_SetCursor(2 + i, 54);
          OLED_DisplayChar(cnt_s / 10000 + '0');
          OLED_DisplayChar(cnt_s % 10000 / 1000 + '0');
          OLED_DisplayChar(cnt_s % 1000 / 100 + '0');
          OLED_DisplayChar(cnt_s % 100 / 10 + '0');
          OLED_DisplayChar(cnt_s % 10 + '0');
        }
        else if (i == 2){
          OLED_SetCursor(2 + i, 54);
          OLED_DisplayChar(accP / 10000 + '0');
          OLED_DisplayChar(accP % 10000 / 1000 + '0');
          OLED_DisplayChar(accP % 1000 / 100 + '0');
          OLED_DisplayChar(accP % 100 / 10 + '0');
          OLED_DisplayChar(accP % 10 + '0');
        }else if (i == 3){
          OLED_SetCursor(2 + i, 54);
          OLED_DisplayChar(DynP / 10000 + '0');
          OLED_DisplayChar(DynP % 10000 / 1000 + '0');
          OLED_DisplayChar(DynP % 1000 / 100 + '0');
          OLED_DisplayChar(DynP % 100 / 10 + '0');
          OLED_DisplayChar(DynP % 10 + '0');
        }
      }
      if (hall_last_state == 1 && Hall_In == 0){
        accP++;
      }hall_last_state = Hall_In;
      delay_ms(100);
    }
}


