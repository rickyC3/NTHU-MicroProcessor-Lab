
#include "8051.h"
#include "header.h"
#include "delay.h"


unsigned char mode = 1; // 1~3: , in1, opr, in2
unsigned char key = 15;
unsigned char prek = 15;
//unsigned char patt = 0x00;

unsigned long num1 = 0;
unsigned long num2 = 0;
unsigned char opr = 0;

void Mode_1(unsigned char k);
void Mode_2(unsigned char k);
void Mode_3(unsigned char k);
unsigned long num_opr(void);
void Display(void);

void Sendbyte7219(unsigned char address, unsigned char dat);
void Write7219 (unsigned char address, unsigned char dat);

void main(void){
    // init 7seg
    Sendbyte7219(SHUT_DOWN,    0x01);
    Sendbyte7219(DISPLAY_TEST, 0x00);
    Sendbyte7219(DECODE_MODE,  0xff);
    Sendbyte7219(SCAN_LIMIT,   0x07);
    Sendbyte7219(INTENSITY,    0x00);


    while (1){
        key = Get_Key();
        if (key != 15 && prek != key){ // 0 ~ 9
            //delay_ms(10);
            if (key != Get_Key())continue;
            if (mode == 1){
                Mode_1(key);
            }else if (mode == 2){
                Mode_2(key);
            }else if (mode == 3){
                Mode_3(key);
            }
        }
        
        Display();
        prek = key;
        if (mode == 2) LED = ~(1<<(opr+4));
        else LED = 0xff;
    }

}

void Mode_1(unsigned char k){ // in1
    switch (k){
        case 10: // op
            opr = 0;
            mode = 2;
            break; 
        case 11: // back
            num1 /= 10;
            break; 
        case 12: // ac
            num1 = 0;num2 = 0;
            mode = 1;
            break; 
        case 13: // equal
            num1 = num1;
            break; 
        default:
            num1 = num1 * 10 + k;
            break;
        }
}

void Mode_2(unsigned char k){ // opr
    switch (k){
        case 10: // op
            opr = (opr + 1)%4;
            break; 
        case 11:break;
        case 12: // ac
            num1 = 0;num2 = 0;
            mode = 1;
            break; 
        case 13: // equal
            break; 
        default:
            num2 = k;
            mode = 3;
            break;
        }
}

void Mode_3(unsigned char k){ // in2
    switch (k){
        case 10: // op
            num1  = num_opr();
            opr = 0;
            mode = 2;
            break; 
        case 11: // back
            num2 /= 10;
            break; 
        case 12: // ac
            num1 = 0;num2 = 0;opr = 0;
            mode = 1;
            break; 
        case 13: // equal
            num1 = num_opr();
            //num2 = 0;
            mode = 1;
            break; 

        default:
            num2 = num2*10 + k;
            break;
        }
}

unsigned long num_opr(void){
    if (opr == 0)
        return num1 + num2;
    else if (opr == 1)
        return num1 - num2;
    else if (opr == 2)
        return num1 * num2;
    else if (opr == 3)
        return num1 / num2;
    return 0;
}

void Sendbyte7219 (unsigned char address, unsigned char dat) {
    LOAD = 0;
    unsigned char i;
   
    for (i = 0; i < 8; i++) {        // get last 8 bits(address)
        CLK = 0;
        DOUT = (address & 0x80);      // get msb and shift left
        address <<= 1; 
        CLK = 1;
    }
    for (i = 0; i < 8; i++) {        // get first 8 bits(data)
        CLK = 0;
        DOUT = (dat & 0x80);          // get msb and shit left
        dat <<= 1;
        CLK = 1;
    }LOAD = 1;
}

void Display(void){

    unsigned long num = 0;
    if (mode == 1 || mode == 2)num = num1;
    if (mode == 3)num = num2;
    unsigned char i = 1;
    Sendbyte7219(1, num%10);num/=10;
    for (i = 2;i<9;i++){
        if (num) Sendbyte7219(i, num%10);
        else Sendbyte7219(i, 0x0f);
        num/=10;
    }
 
 
}