#ifndef SEVEN_SEGMENT_H

#define SEVEN_SEGMENT_H

// function declaration
void sendbyte(unsigned char address, unsigned char dat);
void Write7219(unsigned char address, unsigned char dat);
void Writesingle7219(unsigned char chosen, unsigned char address, unsigned char dat);
void Initial7219(void);

#endif