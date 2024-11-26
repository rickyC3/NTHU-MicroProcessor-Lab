#include "param.h"
#include "delay.h"
#include "program.h"
#include "buzz.h"
#include "init_movie.h"

unsigned char error_flag;
unsigned char write_flag;
unsigned char read_flag;
unsigned char erase_flag;

void main(void)
{
	// button debounce
	unsigned int prebut1 = 0;
 	unsigned int prebut2 = 0;
	unsigned int prebut3 = 0;
	
	AT8051_MOSI = 1;			// set MOSI high
	AT8051_MISO = 1;			// set MISO high
	AT8051_SCK = 1;				// set SCK high
	AT8051_RST = 0;				// set RST low
	
	// initial LED show
	INIT_MOVIE();

	while (1) {
		if ((but1 == 0) && (prebut1 == 1)) {
			delay_ms(10);
			if (but1 == 0) {
				// program write
				write_flag = AT89S51_Program_write();

				// check flag
				if (write_flag == HAL_OK) {	
					LED = 0xFE;
					buzz_hal_ok();
				}
				else if (write_flag == HAL_Prog_En_ERROR) {
					LED = ~(0x80);
					buzz_prog_en_error();
				}
			}
 		}
	
 		if ((but2 == 0) && (prebut2 == 1)) {
			delay_ms(10);
			if (but2 == 0) {
				// program read
				read_flag=AT89S51_Program_read();

				// check flag
				if (read_flag == HAL_OK) {	
					LED = 0xFC;
					buzz_hal_ok();
				}
				else if (read_flag == HAL_Prog_En_ERROR) {
					LED = ~(0x80);
					buzz_prog_en_error();
				}
				else if (read_flag == HAL_Verify_ERROR) {
					LED = ~(0x40);
					buzz_verify_error();
				}
			}
 		}

		if ((but3 == 0) && (prebut3 == 1)) {
			delay_ms(10);
			if (but3 == 0) {
				// program erase
				erase_flag = AT89S51_Program_erase();

				// check flag
				if (erase_flag == HAL_OK) {	
					LED = 0xF8;
					buzz_hal_ok();
				}
				else if (erase_flag == HAL_Prog_En_ERROR) {
					LED = ~(0x80);
					buzz_prog_en_error();
				}
				
			}
 		}

 		prebut1 = but1;
 		prebut2 = but2;
		prebut3 = but3;	
 		delay_ms(20);
	}
}
