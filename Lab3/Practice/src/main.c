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
#include <stdlib.h>
#include "8051.h"
#include "oled_i2c.h"
#include "i2c.h"
#include "MPU6050.h"
#include "delay.h"

int data_buf;
char i = 0;
int x, y;

int accel_data[3] = {0, 0, 0};  // Stores the 16-bit signed accelerometer sensor output
int gyro_data[3] = {0, 0, 0};   // Stores the 16-bit signed gyro sensor output

void main(void)
{		 
    /*TODO*/
    /*You can refer to Example project to finish this practice*/
    SDA = 1;
    SCL = 1;
    OLED_Init();		  // Check oled_i2c.c file for SCL,SDA pin connection
    MPU6050_INIT();    
    
    /*
        OLED_SetCursor(0, 60); // upbound
        OLED_DisplayChar('0');
        OLED_SetCursor(7, 60); // lowerbound
        OLED_DisplayChar('0');
        OLED_SetCursor(3, 0);   // left
        OLED_DisplayChar('0');
        OLED_SetCursor(3, 120); // right
        OLED_DisplayChar('0');    
    */
    OLED_SetCursor(3, 60); // right
    OLED_DisplayString("start");

    readMPU6050_AccelData(&accel_data[0]);

    x = 3;y = 60;
    int ref_x = accel_data[0]; // add -> foward,  x--, 
    int ref_y = accel_data[1]; // add -> left , y--
    int last_x = 3;
    int last_y = 60;
    OLED_Clear();
    while(1) {

        OLED_SetCursor(last_x, last_y);
        OLED_DisplayChar(' ');
        
        OLED_SetCursor(x, y);
        OLED_DisplayChar('0');
        last_x = x;last_y = y;
        readMPU6050_AccelData(&accel_data[0]);     

        if (accel_data[0] > ref_x  && x > 0){
            x -= (accel_data[0] - ref_x) / 4000;
        }else if (accel_data[0] < ref_x & x < 8){
            x += (ref_x - accel_data[0]) / 4000;;
        }
        if (accel_data[1] > ref_y  &&  y > 0){
            y-=5 * ((accel_data[1] - ref_y)/4000);
        }else if (accel_data[1] < ref_y  && y < 120){
            y+=5 * ((ref_y - accel_data[1])/4000);
        }
        if (y > 120)y = 120;
        else if (y < 0) y = 0;
        else y = y;

        if (x > 7)x = 7;
        else if (x < 0) x = 0;
        else x = x;
        
        delay_ms(100);
    }
}
