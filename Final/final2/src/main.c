#include "8051.h"
#include "oled_i2c.h"
#include "stdutils.h"
#include "param.h"
#include "delay.h"
#include "i2c.h"
#include "adc.h"
#include "seven_segment.h"
#include "MLX90614.h"

#define VCC 5
//int data_buf1, data_buf2;

unsigned char dot[] = {
    0,// no use
    0, // 1
    0, // 2
    0, // 3
    0, // 4
    0, // 5
    0, // 6
    0, // 7
    0 // 8
};
int tmp[9] = {0};

int main() 
{		
    int max_tmp = -1000;
    int min_tmp = 1000;
    unsigned int adc_value, voltage, distance; 
    int temp;
    SDA = 1;
    SCL = 1;
    OLED_Init();		        // Check oled_i2c.c file for SCL,SDA pin connection
    Initial7219();
    
    char cnt = 1;
    char i;
    while(1) {
        if (cnt >= 9){
          OLED_SetCursor(2, 0);
          OLED_DisplayChar(tmp[1] % 1000 / 100 + '0');
          OLED_DisplayChar(tmp[1] % 100 / 10 + '0');
          OLED_DisplayChar('.');
          OLED_DisplayChar(tmp[1] % 10 / 1 + '0');

          OLED_SetCursor(7, 0);
          OLED_DisplayChar(max_tmp % 1000 / 100 + '0');
          OLED_DisplayChar(max_tmp % 100 / 10 + '0');
          OLED_DisplayChar('.');
          OLED_DisplayChar(max_tmp % 10 / 1 + '0');

          OLED_SetCursor(5, 0);
          OLED_DisplayChar(min_tmp % 1000 / 100 + '0');
          OLED_DisplayChar(min_tmp % 100 / 10 + '0');
          OLED_DisplayChar('.');
          OLED_DisplayChar(min_tmp % 10 / 1 + '0');

          for (i=1;i<=8;i++){
              Write7219(i, dot[i]);
          }delay_ms(1000);
          for (i=1;i<=8;i++){
              Write7219(i, 0x00);
          }delay_ms(1000);
        }else{
            // get distance
            adc_value = read_adc3202(1);
            voltage = adc_value * (VCC * 1000.0 / 4096.0);
            distance = (6228.4 / voltage - 1.4069)*100;
            OLED_SetCursor(1, 0);
            OLED_DisplayChar((distance / 1000) % 10 + '0');
            OLED_DisplayChar((distance / 100) % 10 + '0');
            OLED_DisplayChar('.');
            OLED_DisplayChar((distance / 10) % 10 + '0');
            OLED_DisplayChar((distance %10 + '0'));
            // get temp
            P1 = 0xff;
            if (distance > 2000)continue;
            if (distance <= 2000){
              P1 = ~(1<<cnt);
              //delay_ms(1000);
              tmp[cnt] = readObjectTemp();
                if (cnt == 1){
                  OLED_SetCursor(5, 0); 

                  OLED_DisplayChar(tmp[1] % 1000 / 100 + '0');
                  OLED_DisplayChar(tmp[1] % 100 / 10 + '0');
                  OLED_DisplayChar('.');
                  OLED_DisplayChar(tmp[1] % 10 / 1 + '0');
                }

              temp = (tmp[cnt] % 1000 / 100)* 100 + (tmp[1] % 100 / 10) * 10 + (tmp[1] % 10 / 1);
              
              if (temp>= 380){
                dot[1] |= (1 << (9-cnt));
              }else if (temp <= 379 && temp >= 375){
                dot[2] |= (1 << (9-cnt));
              }else if (temp <= 379 && temp >= 375){
                dot[3] |= (1 << (9-cnt));
              }else if (temp <= 379 && temp >= 375){
                dot[4] |= (1 << (9-cnt));
              }else if (temp <= 379 && temp >= 375){
                dot[5] |= (1 << (9-cnt));
              }else if (temp <= 379 && temp >= 375){
                dot[6] |= (1 << (9-cnt));
              }else if (temp <= 379 && temp >= 375){
                dot[7] |= (1 << (9-cnt));
              }else if (temp <= 379 && temp >= 375){
                dot[8] |= (1 << (9-cnt));
              }
              if (tmp[cnt] > max_tmp)max_tmp = tmp[cnt];
              if (tmp[cnt] < min_tmp)min_tmp = tmp[cnt];
              cnt++;
              P1 = 0xff;
            }

        }
    }
}
