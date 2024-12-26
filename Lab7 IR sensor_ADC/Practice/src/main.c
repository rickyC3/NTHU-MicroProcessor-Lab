#include "param.h"
#include "adc.h"
#include "seven_segment.h"
#include "delay.h"

#define VCC 5
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

void main()
{   
    unsigned int adc_value, volatge;
    unsigned int distance;
    Initial();

    while (1){
        adc_value = read_adc3202(1);
        volatge = adc_value * (VCC * 1000.0 / 4096.0);
        distance = (6228.4 / volatge - 1.4069)*100;
        
        Write7219(1, seg[volatge%10]);
        Write7219(2, seg[(volatge/10)%10]);
        Write7219(3, seg[(volatge/100)%10]);
        Write7219(4, seg[(volatge/1000)%10] | 0x80);
        if (distance <= 1500){
            Write7219(5, seg[distance%10]);
            Write7219(6, seg[(distance/10)%10]);
            Write7219(7, seg[(distance/100)%10] | 0x80);
            Write7219(8, seg[(distance/1000)%10]);
            delay_ms(200);
            continue;
        }else{
            Write7219(5, seg[0]);
            Write7219(6, seg[0]);
            Write7219(7, seg[9] | 0x80);
            Write7219(8, seg[9]);
            delay_ms(200);
        }
        
    }
}