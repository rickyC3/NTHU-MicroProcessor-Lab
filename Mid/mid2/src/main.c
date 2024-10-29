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


int data_buf;
char i = 0;
char patt;
int accel_data[3] = {0, 0, 0};  // Stores the 16-bit signed accelerometer sensor output
int gyro_data[3] = {0, 0, 0};   // Stores the 16-bit signed gyro sensor output
unsigned char patt = 0x80;	//led value


void main(void)
{	unsigned char seg[] = {
        0,
    	0,  	// 1
    	0,  	// 2
    	0,  	// 3
    	0,  	// 4
    	0,  	// 5
    	0,  	// 6
    	0,  	// 7
		0 	    // 8
    };
    Initial7219();	
    SDA = 1;
    SCL = 1;
    OLED_Init();		  // Check oled_i2c.c file for SCL,SDA pin connection
    MPU6050_INIT();
		
    OLED_SetCursor(0,0);  // Set cursor at 0th-line 0th-Position

    OLED_SetCursor(2, 0);  
		OLED_DisplayString("AX ");
    OLED_SetCursor(3, 0);  
		OLED_DisplayString("AY ");
    OLED_SetCursor(4, 0);  
		OLED_DisplayString("AZ ");
    OLED_SetCursor(5, 0);  
		OLED_DisplayString("GX ");
    OLED_SetCursor(6, 0);  
		OLED_DisplayString("GY ");
    OLED_SetCursor(7, 0);  
		OLED_DisplayString("GZ ");

    patt = 0xff;led = ~patt;
    delay_ms(2000);
    patt = 0x00;led = ~patt;
	while(1) {
      readMPU6050_AccelData(&accel_data[0]);
      readMPU6050_GyroData(&gyro_data[0]);

      for(i = 0; i < 6; i++) {
        if(i < 3) {
          data_buf = accel_data[i];
          OLED_SetCursor(2 + i, 54); 
        } else {
          data_buf = gyro_data[i - 3];
          OLED_SetCursor(2 + i, 54); 
        }
        if(data_buf < 0) {
          OLED_DisplayChar('-');
          data_buf = data_buf * -1;
        } else {
          OLED_DisplayChar(' ');
        }
        OLED_DisplayChar(data_buf / 10000 + '0');
				OLED_DisplayChar(data_buf % 10000 / 1000 + '0');
				OLED_DisplayChar(data_buf % 1000 / 100 + '0');
				OLED_DisplayChar(data_buf % 100 / 10 + '0');
				OLED_DisplayChar(data_buf % 10 + '0');
      }


    // check flat put
    data_buf = accel_data[2];
    while (data_buf >= 16000){
        patt = 0x18;led = ~patt;
        delay_ms(500);
        patt = 0x00;led = ~patt;
        seg[5] = 0x18;
        seg[4] = 0x18;
        for (i = 8; i >= 1; i--) {
        	Writesingle7219(1,i, seg[i]);
		}

        readMPU6050_AccelData(&accel_data[0]);
      readMPU6050_GyroData(&gyro_data[0]);

      for(i = 0; i < 6; i++) {
        if(i < 3) {
          data_buf = accel_data[i];
          OLED_SetCursor(2 + i, 54); 
        } else {
          data_buf = gyro_data[i - 3];
          OLED_SetCursor(2 + i, 54); 
        }
        if(data_buf < 0) {
          OLED_DisplayChar('-');
          data_buf = data_buf * -1;
        } else {
          OLED_DisplayChar(' ');
        }
        OLED_DisplayChar(data_buf / 10000 + '0');
				OLED_DisplayChar(data_buf % 10000 / 1000 + '0');
				OLED_DisplayChar(data_buf % 1000 / 100 + '0');
				OLED_DisplayChar(data_buf % 100 / 10 + '0');
				OLED_DisplayChar(data_buf % 10 + '0');
      }
    }
    
        data_buf = accel_data[0];
        if (data_buf <= -15000){
            patt = 0b00000011;
            seg[5] = 0xC0;
            seg[4] = 0xC0;
            for (i = 8; i >= 1; i--) {
        	    Writesingle7219(1,i, seg[i]);
		    }
        }else if (data_buf > -15000 && data_buf <= -9000){
            patt = 0b00000110;
            seg[5] = 0x60;
            seg[4] = 0x60;
            for (i = 8; i >= 1; i--) {
        	    Writesingle7219(1,i, seg[i]);
		    }
        }else if (data_buf > -9000 && data_buf <= -3200){
            patt = 0b001100;
            seg[5] = 0x30;
            seg[4] = 0x30;
            for (i = 8; i >= 1; i--) {
        	    Writesingle7219(1,i, seg[i]);
		    }
        }else if (data_buf > -3200 && data_buf <= 3200){
            patt = 0x18;
            seg[5] = 0x18;
            seg[4] = 0x18;            
            for (i = 8; i >= 1; i--) {
        	    Writesingle7219(1,i, seg[i]);
		    }
        }else if (data_buf > 3200 && data_buf <= 9600){
            patt = 0b00110000;
            seg[5] = 0x0C;
            seg[4] = 0x0C;  
            for (i = 8; i >= 1; i--) {
        	    Writesingle7219(1,i, seg[i]);
		    }
        }else if (data_buf > 9600 && data_buf <= 16000){
            patt = 0b01100000;
            seg[5] = 0x06;
            seg[4] = 0x06; 
            for (i = 8; i >= 1; i--) {
        	    Writesingle7219(1,i, seg[i]);
		    }
        }else if (data_buf > 16000 ){
            patt = 0b11000000;
            seg[5] = 0x03;
            seg[4] = 0x03; 
            for (i = 8; i >= 1; i--) {
        	    Writesingle7219(1,i, seg[i]);
		    }
        }
    

        led = ~patt;
      delay_ms(100);
    }
}


