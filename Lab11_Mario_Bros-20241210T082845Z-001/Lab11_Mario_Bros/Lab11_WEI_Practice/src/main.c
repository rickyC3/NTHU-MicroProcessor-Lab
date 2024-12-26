/* ------------------------------------------
 * Copyright (c) 2017, Synopsys, Inc. All rights reserved.

 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:

 * 1) Redistributions of source code must retain the above copyright notice, this
 * list of conditions and the following disclaimer.

 * 2) Redistributions in binary form must reproduce the above copyright notice,
 * this list of conditions and the following disclaimer in the documentation and/or
 * other materials provided with the distribution.

 * 3) Neither the name of the Synopsys, Inc., nor the names of its contributors may
 * be used to endorse or promote products derived from this software without
 * specific prior written permission.

 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
--------------------------------------------- */

//////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                          //
// The provided program is the same as the one is Lab11_WEIExample_Project.                                 //
// What you need to do is try to modify the program to meet the requirements outlined in the handout.       //
//                                                                                                          //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////

/* synopsys we-i */
#include "hx_drv_tflm.h"
#include "synopsys_wei_delay.h"
#include "synopsys_wei_gpio.h"

#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>

/* Frequency Table */
// https://zh.wikipedia.org/wiki/%E9%9F%B3%E9%AB%98
#define C3  130.81
#define Cs3 138.59
#define D3  146.83
#define Ds3 155.56
#define E3  164.81
#define F3  174.61
#define Fs3 185
#define G3  196
#define Gs3 207.65
#define A3  220.0
#define As3 233.08
#define B3  246.94

#define C4  261.63
#define Cs4 277.18
#define D4  293.66
#define Ds4 311.13
#define E4  329.63
#define F4  349.23
#define Fs4 369.99
#define G4  392.00
#define Gs4 415.30
#define A4  440.00
#define As4 466.16
#define B4  493.88

#define C5  523.25
#define Cs5 554.37
#define D5  587.33
#define Ds5 622.25
#define E5  659.26
#define F5  698.46
#define Fs5 739.99
#define G5  783.99
#define Gs5 830.61
#define A5  880.00
#define As5 932.33
#define B5  987.77

/* Super Mario Bros */
float Square1[] ={  Fs4, Fs4, 0,  Fs4, 0,  Fs4, Fs4, 0,  B4,  0,  0,  0,   G4, 0,   0,   0,
                    E4,  0,   0,  C4,  0,  0,   G3,  0,  0,   C4, 0,  D4,  0,  Cs4, C4,  0,
                    C4,  G4,  B4, C5,  0,  A4,  B4,  0,  A4,  0,  E4, F4,  D4, 0,   0,   0,
                    E4,  0,   0,  C4,  0,  0,   G3,  0,  0,   C4, 0,  D4,  0,  Cs4, C4,  0,
                    C4,  G4,  B4, C5,  0,  A4,  B4,  0,  A4,  0,  E4, F4,  D4, 0,   0,   0,};

float Square2[] ={  E5,  E5,  0,  E5,  0,  C5,  E5,  0,  G5,  0,  0,  0,   G4, 0,   0,   0,
                    C5,  0,   0,  G4,  0,  0,   E4,  0,  0,   A4, 0,  B4,  0,  As4, A4,  0,
                    G4,  E5,  G5, A5,  0,  F5,  G5,  0,  E5,  0,  C5, D5,  B4, 0,   0,   0,
                    C5,  0,   0,  G4,  0,  0,   E4,  0,  0,   A4, 0,  B4,  0,  As4, A4,  0,
                    G4,  E5,  G5, A5,  0,  F5,  G5,  0,  E5,  0,  C5, D5,  B4, 0,   0,   0,};

float Triangle[]={  D4,  D4,  0,  D4,  0,  D4,  D4,  0,  G5,  0,  0,  0,   G4, 0,   0,   0,
                    G4,  0,   0,  E4,  0,  0,   C4,  0,  0,   F4, 0,  G4,  0,  Fs4, F4,  0,
                    E4,  C5,  E5, F5,  0,  D5,  E5,  0,  C5,  0,  A4, B4,  G4, 0,   0,   0,
                    G4,  0,   0,  E4,  0,  0,   C4,  0,  0,   F4, 0,  G4,  0,  Fs4, F4,  0,
                    E4,  C5,  E5, F5,  0,  D5,  E5,  0,  C5,  0,  A4, B4,  G4, 0,   0,   0,};


/* define parameters */
#define delay_def 24

#define SAMPLE_RATE 8000

#define STEP (SAMPLE_RATE*0.15)

#define AMP 500

#define audio_length 96000
int8_t audio_buf[audio_length] = {0};

/* declare gpio pins */
hx_drv_gpio_config_t hal_gpio_0;  //BCLK
hx_drv_gpio_config_t hal_gpio_1;  //LRCLK
hx_drv_gpio_config_t hal_gpio_2;  //DIN

volatile int delay(unsigned int j);
void i2s_reflash(void);
void GPIO_INIT(void);

static int16_t i2s_data_buf = 0;
static int16_t i2s_r_buffer;
static int16_t i2s_l_buffer;

volatile int buf;

int main(void)
{

  hx_drv_uart_initial(UART_BR_115200);

	i2s_data_buf = 0;
	int num = sizeof(Square1)/sizeof(Square1[0]);
  int N = num * STEP;
  int BUFSIZE = sizeof(int8_t) * N;

  int n, tmp;
  float tmp2;
  int index = 0;
  for(n=0; n<num; n++){ //music synthesize
    float s1 = Square1[n];
    float s2 = Square2[n];
    float t =  Triangle[n];
    if (n > num/2) ratio = 0.2;

    int s;
    for(s=0; s<STEP; s++){
      int16_t sample = 0;

      // Square 1
      tmp = (s1 * s / SAMPLE_RATE) * 2;
      tmp2 = 1.0*s/STEP;  // the progress of the note
      if(tmp2 <= 0.4) tmp2 = 1; else tmp2 = 1-(tmp2-0.4)/0.6;
      if(s1 == 0)             sample += 0;
      else if(tmp % 2 == 0)   sample += tmp2*AMP;
      else                    sample += tmp2*(-1 * AMP);

      // Square 2
      tmp = (s2 * s / SAMPLE_RATE) * 2;
      tmp2 = 1.0*s/STEP;  // the progress of the note
      if(tmp2 <= 0.4) tmp2 = 1; else tmp2 = 1-(tmp2-0.4)/0.6;
      if(s2 == 0)             sample += 0;
      else if(tmp % 2 == 0)   sample += tmp2*AMP;
      else                    sample += tmp2*(-1 * AMP);

      // Triangle
      tmp = (t * s / SAMPLE_RATE);  // round down to integer
      tmp2 = (t * s / SAMPLE_RATE) - tmp; // the progress of the note
      if(t == 0)              sample += 0;
      else if(tmp2 <= 0.25)   sample += tmp2 * 4 * AMP;
      else if(tmp2 <= 0.75)   sample += AMP - (tmp2-0.25) * 4 * AMP;
      else                    sample += (tmp2 - 0.75) * 4 * AMP - AMP;

      audio_buf[index] = sample >> 8;
      index ++;

      if(index >= audio_length)
        index = audio_length - 1;
    }
  }
	
	GPIO_INIT(); //initialize gpios

	while(1) //start playing music
	{	
		for(index = 0; index < audio_length; index ++)
		{
			i2s_data_buf = audio_buf[index] << 8; // 8-bit data expands into 16-bit data, with an 8-bit zero at LSB
			i2s_reflash();  // 8kHz I2S
		}
	}
}

volatile int delay(unsigned int j)
{
	for(int delay_i = 0; delay_i < j; delay_i ++)
		buf = buf + delay_i;
	return buf;
}

void i2s_reflash(void)
{
	int i;
	i2s_r_buffer = i2s_data_buf;
	i2s_l_buffer = i2s_data_buf;

  for(i = 15; i >= 0; i --)
	{
		if(i2s_l_buffer & 0x8000){
      hal_gpio_set(&hal_gpio_2, GPIO_PIN_SET);
    }
		else{
      hal_gpio_set(&hal_gpio_2, GPIO_PIN_RESET);
    }
		i2s_l_buffer <<= 1;


		delay(delay_def);
		hal_gpio_set(&hal_gpio_0, GPIO_PIN_SET);  //BCLK
		delay(delay_def);

		hal_gpio_set(&hal_gpio_0, GPIO_PIN_RESET);  //BCLK
    if(i == 1){
			hal_gpio_set(&hal_gpio_1, GPIO_PIN_SET);  //LRCLK
    }
	}
	
  for(i = 15; i >= 0; i --)
	{
		if(i2s_r_buffer & 0x8000){
			hal_gpio_set(&hal_gpio_2, GPIO_PIN_SET); //DIN
    }
		else{
			hal_gpio_set(&hal_gpio_2, GPIO_PIN_RESET); //DIN	
    }
		i2s_r_buffer <<= 1;

		delay(delay_def);
		hal_gpio_set(&hal_gpio_0, GPIO_PIN_SET);  //BCLK
		delay(delay_def);

		hal_gpio_set(&hal_gpio_0, GPIO_PIN_RESET);  //BCLK
    if(i == 1){
			hal_gpio_set(&hal_gpio_1, GPIO_PIN_RESET);  //LRCLK
    }
	}
}

void GPIO_INIT(void)
{ 
  //BCLK
  if ( hal_gpio_init(&hal_gpio_0, HX_DRV_PGPIO_0, HX_DRV_GPIO_OUTPUT, GPIO_PIN_RESET)==HAL_OK){
    hx_drv_uart_print("GPIO0 Initialized: OK\n");
  }
  else {
    hx_drv_uart_print("GPIO0 Initialized: Error\n");
  }

  //LRCLK
  if (hal_gpio_init(&hal_gpio_1, HX_DRV_PGPIO_1, HX_DRV_GPIO_OUTPUT, GPIO_PIN_RESET)==HAL_OK){ 
    hx_drv_uart_print("GPIO1 Initialized: OK\n");
  }
  else {
    hx_drv_uart_print("GPIO1 Initialized: Error\n");
  }
  
  //DIN
  if (hal_gpio_init(&hal_gpio_2, HX_DRV_PGPIO_2, HX_DRV_GPIO_OUTPUT, GPIO_PIN_RESET)==HAL_OK){ 
    hx_drv_uart_print("GPIO2 Initialized: OK\n");
  }
  else {
    hx_drv_uart_print("GPIO2 Initialized: Error\n");
  }
}
