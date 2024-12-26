#ifndef SEVEN_SEGMENT_H

#define SEVEN_SEGMENT_H

#define DIN P2_2
#define LOAD P2_1
#define CLK  P2_0

//define 7-segment reigister
#define DECODE_MODE  0x09
#define INTENSITY    0x0A
#define SCAN_LIMIT   0x0B
#define SHUT_DOWN    0x0C
#define DISPLAY_TEST 0x0F
#define matrixnum 1

// 7-segment display function declaration
void Write7219(unsigned char address,unsigned char dat);
void sendbyte(unsigned char address,unsigned char dat);
void Initial(void);

#endif