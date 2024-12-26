#ifndef PARAM_H

#include "8051.h"
#include "stdutils.h"

#define PARAM_H

#define   MLX90614_ADDRESS    0x5a
#define   MLX90614_ADDR_WRITE   0x00	
#define   MLX90614_ADDR_READ    0x01
#define   MLX90614_RAM    0x00
#define   AMBIENT_TEMP    0x06
#define   OBJECT_TEMP     0x07

#define SCL   P0_0
#define SDA   P0_1


#define CLK  P2_0
#define DIN  P2_1                
#define DOUT P2_2          
#define LOAD P2_3
#define LOAD_MAX P2_4

//define 7-segment reigister
// register address map
#define DECODE_MODE  0x09
#define INTENSITY    0x0A
#define SCAN_LIMIT   0x0B
#define SHUT_DOWN    0x0C
#define DISPLAY_TEST 0x0F
#define matrixnum 1

typedef unsigned char bit;


#endif