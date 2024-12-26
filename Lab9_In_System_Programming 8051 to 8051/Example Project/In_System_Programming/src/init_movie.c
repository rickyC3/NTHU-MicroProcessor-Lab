#include "init_movie.h"
#include "param.h"
#include "delay.h"

void INIT_MOVIE(void)
{
	LED = 0X55;
		delay_ms(200);
	LED = 0XAA;
		delay_ms(200);
	LED = 0X55;
		delay_ms(200);
	LED = 0XAA;
		delay_ms(200);
	LED = 0X55;
		delay_ms(200);
	LED = 0XAA;
		delay_ms(200);
	LED = 0XFF;
		delay_ms(500);
}