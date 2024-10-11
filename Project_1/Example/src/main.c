#include "8051.h"
#include "header.h"

void Sendbyte7219(char address, unsigned char dat);
void Display(unsigned long num);
unsigned long Calculate(unsigned long n, char operator, unsigned long m);


void main(void) {
    unsigned long num1 = 0, num2 = 0;
    unsigned char operator = 0, state = INPUT1, push, pre = IDLE, i;

    R1 = R2 = R3 = R4 = 1;
    Sendbyte7219(SHUT_DOWN,    0x01);
    Sendbyte7219(DISPLAY_TEST, 0x00);
    Sendbyte7219(DECODE_MODE,  0xff);
    Sendbyte7219(SCAN_LIMIT,   0x07);
    Sendbyte7219(INTENSITY,    0x00);

    while (1) {
        push = IDLE;
        if (BUT1 == 0) push = OP;
        if (BUT2 == 0) push = BACK;
        if (BUT3 == 0) push = AC;
        if (BUT4 == 0) push = EQ;
        C1 = 0; C2 = C3 = 1;
        for (i = 1; i < 4; i++) {
            if (R1 == 0) push = 6 + i;
            if (R2 == 0) push = 3 + i;
            if (R3 == 0) push = i;
            if (R4 == 0) push = 0;
            C3 = C2; C2 = C1; C1 = 1;
        }

        if (push != pre) {
            switch (push) {
                case IDLE: break;
                case OP: 
                    if (state == INPUT2) num1 = Calculate(num2, operator, num1);
                    if (state == OPERATION && operator < 128) operator <<= 1;
                    else operator = 16;
                    state = OPERATION;
                    break;
                case BACK: 
                    if (state > OPERATION) num1 /= 10;
                    break;
                case AC:
                    state = INPUT1; num1 = num2 = 0; 
                    break;
                case EQ:
                    if (state == INPUT2) num1 = Calculate(num2, operator, num1);
                    state = ANSWER;
                    break;
                default: 
                    if (state == OPERATION) num2 = num1;
                    if (state > OPERATION) num1 = 10 * num1 + push;
                    else {
                        state += 2; 
                        num1 = push;
                    }
            }
        }
        Display(num1);
        LED = state == 1 ? ~operator : 0xff;
        pre = push;
    }
}

void Sendbyte7219(char address, unsigned char dat) {
    char i = 0;
    LOAD = 0;
    for (; i < 8; i++) {
        CLK = 0;
        DIN = (address & 0x80);
        address *= 2;
        CLK = 1;
    }
    for (i = 0; i < 8; i++) {
        CLK = 0;
        DIN = (dat & 0x80);
        dat *= 2;
        CLK = 1;
    }
    LOAD = 1;
}



void Display(unsigned long num) {
    char i;
    for (i = 1; i < 9; i++) {
		if (num || i == 1) Sendbyte7219(i, num % 10);
		else Sendbyte7219(i, 0x0f);
        num /= 10;
	}
}

unsigned long Calculate(unsigned long num1, char operator, unsigned long num2) {
    switch (operator) {
        case 16: num1 += num2; break;
        case 32: num1 -= num2; break;
        case 64: num1 *= num2; break;
        default: num1 /= num2;
    }
    return num1;
}