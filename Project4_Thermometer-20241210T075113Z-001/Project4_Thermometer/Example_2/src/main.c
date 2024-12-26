#include "8051.h"
#include "oled_i2c.h"
#include "delay.h"
#include "i2c.h"
#include "MLX90614.h"
#include "param.h"
#include "adc.h"

int data_buf1, data_buf2, cnt = 0, cnt2 = 0, oled_out = 0;
float temp = 0.0;
unsigned int adc_value;

void T0_isr(void) __interrupt (1)
{
	//every 1ms, pc will come here
	TH0 = (65536-1000) >> 8;
	TL0 = (65536-1000) & 0xff;
	cnt++;
	if (cnt2 <= 8) P3_7 = (cnt2 & 1) ? (P3_7 ? 0 : 1) : 0;
	if (cnt >= 500) {
		cnt = 0;
		if (cnt2 <= 8) 
			cnt2++;
		else cnt2 = 9;
	}
}

int main() {
    TMOD = 0x01;						//set Timer1 mode0 & Timer0 mode1
    TH0 = (65536-1000) / 256;
    TL0 = (65536-1000) % 256;
    ET0 = 1;							//Enable Timer0 interrupt
    EA = 1;								//Enable all interrupt
    TR0 = 0;							//Enable Timer0
    P3_7 = 0;
    TR0 = 0;    

    DOUT = 1;                           //Setting gpio input mode
    LOAD = 1;  
    CLK = 0;
    DIN = 0;
    
    OLED_Init();		                // Check oled_i2c.c file for SCL,SDA pin connection
    OLED_SetCursor(0,0);                // Set cursor at 0th-line 0th-Position
    OLED_DisplayString("Distance:");	 
    OLED_SetCursor(2, 0); 
    OLED_DisplayString("T_object:");
    OLED_SetCursor(4, 0);  
    OLED_DisplayString("T_ambient:");
    OLED_SetCursor(6, 0);  
    OLED_DisplayString("T_last:");

    while(1) {
        data_buf1 = readAmbientTemp();
        data_buf2 = readObjectTemp();
        adc_value = read_adc3202(1);

        oled_out = 62284 / (adc_value * (5 * 1000.0 / 4096.0)) - 14;
        OLED_SetCursor(0, 60);
        if (oled_out > 0) {
            OLED_DisplayChar(oled_out % 1000 / 100 + '0');
            OLED_DisplayChar(oled_out % 100 / 10 + '0');
            OLED_DisplayChar('.');
            OLED_DisplayChar(oled_out % 10 / 1 + '0');
        }
        //show data of Object Temperature(C) 
        OLED_SetCursor(2, 60);
        OLED_DisplayChar(data_buf2 % 1000 / 100 + '0');
        OLED_DisplayChar(data_buf2 % 100 / 10 + '0');
        OLED_DisplayChar('.');
        OLED_DisplayChar(data_buf2 % 10 / 1 + '0');

        //show data of Ambient Temperature(C) 
        OLED_SetCursor(4,  60);
        OLED_DisplayChar(data_buf1 % 1000 / 100 + '0');
        OLED_DisplayChar(data_buf1 % 100 / 10 + '0');
        OLED_DisplayChar('.');
        OLED_DisplayChar(data_buf1 % 10 / 1 + '0');

        if (oled_out > 10 && oled_out < 50) {
            TR0 = 1;
            if (cnt2 == 8) {
        	    OLED_SetCursor(6, 60);
        	    OLED_DisplayChar(data_buf2 % 1000 / 100 + '0');
        	    OLED_DisplayChar(data_buf2 % 100 / 10 + '0');
        	    OLED_DisplayChar('.');
        	    OLED_DisplayChar(data_buf2 % 10 / 1 + '0');
            }
        } else {
        	TR0 = 0;
        	cnt2 = 0;
        }
        delay_ms(100);
    }
}
