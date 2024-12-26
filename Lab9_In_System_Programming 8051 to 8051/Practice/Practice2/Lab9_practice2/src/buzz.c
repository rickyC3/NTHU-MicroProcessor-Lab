#include "buzz.h"
#include "8051.h"
#include "delay.h"

void buzz_hal_ok(void)
{
	unsigned int delay_cnt = 0;

	for(delay_cnt = 0; delay_cnt < 100; delay_cnt ++)
	{
		P3_7 = 1;
		delay_ms(1);
		P3_7 = 0;
		delay_ms(1);
	}
}

void buzz_prog_en_error(void)
{
	unsigned int delay_cnt = 0;

	for(delay_cnt = 0; delay_cnt < 500; delay_cnt ++)
	{
		P3_7 = 1;
		delay_ms(1);
		P3_7 = 0;
		delay_ms(1);
	}
}

void buzz_verify_error(void)
{
	unsigned int delay_cnt = 0;

	for(delay_cnt = 0; delay_cnt < 500; delay_cnt ++)
	{
		P3_7 = 1;
		delay_ms(1);
		P3_7 = 0;
		delay_ms(1);
	}

	for(delay_cnt = 0; delay_cnt < 500; delay_cnt ++)
	{
		P3_7 = 1;
		delay_ms(1);
		P3_7 = 0;
		delay_ms(1);
	}
}