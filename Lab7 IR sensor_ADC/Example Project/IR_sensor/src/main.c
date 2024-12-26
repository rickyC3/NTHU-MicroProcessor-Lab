#include "param.h"
#include "adc.h"
#include "seven_segment.h"
#include "delay.h"

#define VDD 5

void main() {
  unsigned int adc_value, voltage;
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

  DOUT = 1; //Setting gpio input mode
  LOAD = 1; 
  CLK = 0;
  DIN = 0;
  Initial();

  while(1) {
    adc_value = read_adc3202(1);                    // Read voltage from ADC channel 1
    voltage = adc_value * (VDD * 1000.0 / 4096.0);
    Write7219(0x04, seg[voltage / 1000] | 0x80);    // Display on MAX7219
    Write7219(0x03, seg[voltage % 1000 / 100]);
    Write7219(0x02, seg[voltage % 100 / 10]);
    Write7219(0x01, seg[voltage % 10]);
    delay_ms(200);
  }
}