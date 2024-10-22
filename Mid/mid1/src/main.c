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
#include "delay.h"


#define led P1
#define but1 INT0	// left shift
#define but2 INT1	// right shift


void main(void)
{ 

	unsigned char patt = 0x80;	//led value
	unsigned int prebut1 = 0;	//debounce
	unsigned int prebut2 = 0;
	unsigned int mode;
	but1 = 1;                 	//initialize
	but2 = 1;
	mode = 0;

	while(1) {
		// shift one or two bits

		// left shift
		if((but1 == 0) && (prebut1 == 1)) {
            delay_ms(10);
            if (but1 == 1)continue;
			delay_ms(1000);
            
			if(but1 == 0) { // long press
                while (but1 == 0);
				if (patt == 0x01)patt = 0x40;
                else if (patt == 0x02)patt = 0x80;
                else
                    patt >>= 2;
			}else{
                if (patt == 0x01)patt = 0x80;
                else patt>>=1;
            }
		}

		// right shift
		if((but2 == 0) && (prebut1 == 1)) {
            delay_ms(10);
            if (but2 == 1)continue;
			delay_ms(1000);
			if(but2 == 0) { // long press
                while(but2 == 0);
				if (patt == 0x40)patt = 0x01;
                else if (patt == 0x80)patt = 0x02;
                else
                    patt <<= 2;
			}else{
                if (patt == 0x80)patt = 0x01;
                else patt <<=1;
            }
		}
		
		led = ~patt;	
		prebut1 = but1;
		prebut2 = but2;
		delay_ms(10);
	}
}