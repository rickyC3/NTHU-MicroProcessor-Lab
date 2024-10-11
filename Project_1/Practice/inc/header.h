#include "8051.h"


// pin for number buttom
#define C1   P0_1
#define C2   P0_2
#define C3   P0_3
#define R1   P0_4
#define R2   P0_5
#define R3   P0_6
#define R4   P0_7

// pin for MAX7219
#define DOUT  P2_7
#define LOAD P2_6
#define CLK  P2_5

// pin for operation buttom
#define BUT1 P3_2
#define BUT2 P3_3
#define BUT3 P2_0
#define BUT4 P2_1

// pin for LED
#define LED  P1

// register address map
#define DECODE_MODE  0x09
#define INTENSITY    0x0A
#define SCAN_LIMIT   0x0B
#define SHUT_DOWN    0x0C
#define DISPLAY_TEST 0x0F

