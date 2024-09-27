#include "8051.h"
#include "delay.h"

#define led P1
#define but1 P2_2
#define but2 P2_3
#define but3 P2_4
#define o1 P2_5
#define o2 P2_6
#define o3 P2_7



void main(void)
{
    unsigned char patt = 0x00;
    int preKey = 0;
    int Key = 0;
    int cnt = 0;
    while (1){
        Key = 0;
        Key = Get_Key();

        if (Key == 1){
            delay_ms(30);
            Key = Get_Key();
            if (Key != 1){
                patt = (patt == 0x01) ? patt = 0x80:patt >> 1;
            }else{ // long press
                while (1){
                    delay_ms(100);
                    Key = Get_Key();
                    if (Key != 1)break;
                    patt = (patt == 0x01) ? patt = 0x80:patt>>1;
                    led = ~patt;
                }
            }
        }else if (Key == 2){
            patt = 0x01;
        }else if (Key == 3){
            patt = 0x02;
        }else if (Key == 4){
            patt = 0x04;
        }else if (Key == 5){
            delay_ms(30);
            Key = Get_Key();
            if (Key != 5){
                patt = (patt == 0x80)? patt = 0x01:patt << 1;
            }else{ // long press
                while (1){
                    delay_ms(100);
                    Key = Get_Key();
                    if (Key != 5)break;
                    patt = (patt == 0x80)? patt = 0x01:patt << 1; // right shift
                    led = ~patt;
                }
            }
        }else if (Key == 6){
            patt = 0x10;
        }else if (Key == 7){
            patt = 0x20;
        }else if (Key == 8){
            patt = 0x40;
        }else if (Key == 9){
            delay_ms(100);
            if ((but1 & but2 & but3)){
                if (patt == 0x01)
                    patt = 0x20;
                else if (patt == 0x02)
                    patt = 0x40;
                else if (patt == 0x04)
                    patt = 0x80;
                else
                    patt = patt >> 3;

            }delay_ms(100);
            if ((but1 & but2 & but3)){
                if (patt == 0x01)patt = 0x08;
                else patt = patt >> 1;
            }else{ // long press
                cnt = 0;
                while (1){
                    delay_ms(100);
                    Key = Get_Key();
                    if (Key != 9)break;
                    cnt++;
                    if (cnt >= 4)break;
                }if (cnt >= 4){
                    if (patt == 0x01){
                        patt = 0x40;
                    }else if (patt == 0x02){
                        patt = 0x80;
                    }else{
                        patt = patt >> 2;
                    }
                    led = ~patt;
                    
                }while (1){
                    Key = Get_Key();
                    if (Key != 9)break;
                    delay_ms(10);
                }
            }
            
        }else{
            patt = patt;
        }

        led = ~patt;
        //preKey = Key;
    }
	
}

