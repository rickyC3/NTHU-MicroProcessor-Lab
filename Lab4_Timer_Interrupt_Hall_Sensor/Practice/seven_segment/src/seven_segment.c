#include "8051.h"
#include "seven_segment.h"

/*-------------------- 7-segment display function --------------------*/

//send address and data into max7219
void sendbyte(unsigned char address,unsigned char dat){
 unsigned char i;
    for (i=0;i<8;i++)        //get last 8 bits(address)
    {

       CLK=0;
       DIN=(address&0x80);   //get msb and shift left
       address<<=1;
       CLK=1;
    }

    for (i=0;i<8;i++)      //get first 8 bits(data)
    {
       CLK=0;
       DIN=(dat&0x80);    //get msb and shit left
       dat<<=1;
       CLK=1;
    }
 }

 //write a single digit/a single line in 7-segment display/dot matrix.
void Write7219(unsigned char address,unsigned char dat)
{
    unsigned char cnt;
    LOAD=0;
  	for(cnt=1;cnt<=matrixnum;cnt++)      //send address and data according to the nuber of your matrix
 	{
        sendbyte(address,dat);
    }
    LOAD=1;
}

//MAX7219inintialize and setup inside register
void Initial(void)
{   unsigned char i;

    Write7219(SHUT_DOWN,0x01);         //normal mode(0xX1)
    Write7219(DISPLAY_TEST,0x00);
    Write7219(DECODE_MODE,0x00);       //select non-decode mode
    Write7219(SCAN_LIMIT,0x07);        //use all 8 LED
    Write7219(INTENSITY,0x00);         //set up intensity

    for(i=1;i<=8;i++){
    	Write7219(i,0x00);   //turn off all LED
    }
}