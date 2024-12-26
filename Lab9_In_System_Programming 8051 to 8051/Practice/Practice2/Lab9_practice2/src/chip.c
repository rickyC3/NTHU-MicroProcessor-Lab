#include "chip.h"
#include "param.h"
#include "delay.h"

unsigned char AT89S51_Read_Byte(unsigned int address)
{
	unsigned char spi_r_buf;

	SPI_MASTER_WR(0x20);				// read mode
		delay_10us();
	SPI_MASTER_WR(address >> 8);		// A[11:8]
		delay_10us();
	SPI_MASTER_WR(address & 0x00ff);	// A[7:0]
		delay_10us();
	spi_r_buf = SPI_MASTER_WR(0x00);	// D[7:0]
		delay_10us();	

	return spi_r_buf;		//return reading data by 89s51
}

unsigned int AT89S51_Write_Byte(unsigned int address, unsigned char package)
{
	unsigned int spi_r_buf1;
	unsigned char spi_r_buf2;

	SPI_MASTER_WR(0x40);				// write mode
		delay_10us();
	SPI_MASTER_WR(address >> 8);		// A[11:8]
		delay_10us();
	spi_r_buf1 = SPI_MASTER_WR(address & 0x00ff);	// A[7:0]
		delay_10us();
	spi_r_buf2 = SPI_MASTER_WR(package);
		delay_10us();	
	
	spi_r_buf1 = (spi_r_buf1 << 8) | spi_r_buf2;

	return spi_r_buf1;		//return writing address by 89s51
}

unsigned char AT89S51_Prog_En(void)
{
	unsigned char spi_r_buf;

	SPI_MASTER_WR(0xac);
		delay_10us();
	SPI_MASTER_WR(0x53);
		delay_10us();
	SPI_MASTER_WR(0x00);
		delay_10us();
	spi_r_buf = SPI_MASTER_WR(0x11);
		delay_10us();	

	return spi_r_buf;
}

unsigned char AT89S51_Chip_Erase(void)
{
	unsigned char spi_r_buf;

	SPI_MASTER_WR(0xac);
		delay_10us();
	SPI_MASTER_WR(0x80);
		delay_10us();
	SPI_MASTER_WR(0x12);
		delay_10us();
	spi_r_buf = SPI_MASTER_WR(0x13);
		delay_10us();	

	return spi_r_buf;
}
	
// slide reference 3 explains the detail function
unsigned char SPI_MASTER_WR(unsigned char package)
{
	unsigned char spi_cnt = 0;
	unsigned char spi_r_buf = 0;
	
	SPI_SCK = 0;
		delay_10us();
	
	for (spi_cnt = 0; spi_cnt < 8; spi_cnt ++) {
		SPI_MOSI = ((package & 0x80) == 0x80) ? 1 : 0;

		package <<= 1;
			delay_10us();
		
		SPI_SCK = 1;
			delay_10us();
		
		spi_r_buf <<= 1;
		spi_r_buf = (SPI_MISO == 1) ? (spi_r_buf | 0x01) : spi_r_buf;
		
		SPI_SCK = 0;
			delay_10us();
	}
	
	return spi_r_buf;
}