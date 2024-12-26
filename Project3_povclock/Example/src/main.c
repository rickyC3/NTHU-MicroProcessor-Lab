#include "8051.h"

char num = 0, revise = 0;
int clock[3] = {0, 20, 40}, cnt = 0, CntOfSecond = 0, tmp = 0, time = 0;

void Rotate(void) {
  clock[0]--;
  if (clock[0] == 30) {
    clock[1]--;
    if (clock[1] % 12 == 0) clock[2]--;
  }
  if (clock[0] == -1) clock[0] = 59;
  if (clock[1] == -1) clock[1] = 59;
  if (clock[2] == -1) clock[2] = 59;
}

void EX0_int(void) __interrupt (0) {
  CntOfSecond = cnt / 60 + 1;
  revise = cnt % 60;
  cnt = 0;
  tmp = 0;
  num = 0;
}

void Time(void) __interrupt (1) {
  TH0 = (65536 - 5) >> 8;
  TL0 = (65536 - 5) % 256;

  cnt++;
  tmp++;
  P0 = 254; P2 = 255;
  if (tmp == CntOfSecond && num < 60) {
    if (num % 5 == 0) P0_1 = 0;
    if (num % 15 == 0) P0_2 = 0;
    if (num == clock[0]) {P2 = 0; P0_7 = P0_6 = P0_5 = P0_4 = P0_3 = 0;}
    if (num == clock[1]) {P2 = 0; P0_7 = P0_6 = P0_5 = 0;}
    if (num == clock[2]) {P2 = 0; P0_7 = 0;}
    num++;
    tmp = (revise % 2 ? 0 : 1);
    if (revise > 0) revise--;
  }
  if (time++ > 20000) {
    time = 0; 
    Rotate();
  }
}

void main(void) {
  TMOD = 0x01;
  TH0 = (65536 - 5) >> 8;
  TL0 = (65536 - 5) % 256;
  EA = 1;  // interrupt
  ET0 = 1; // timer0 interrupt
  EX0 = 1; // external interrupt0
  TR0 = 1; // run control bit
  IT0 = 1; // edge-triggered
  
  while(1) ;
}