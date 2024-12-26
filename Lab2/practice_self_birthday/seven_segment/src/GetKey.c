#include "8051.h"
#include "delay.h"

//#define led P1
#define o1 P0_4
#define o2 P0_5
#define o3 P0_6
#define but1 P0_1
#define but2 P0_2
#define but3 P0_3

int Get_Key(void){
    but1 = 1;
    but2 = 1;
    but3 = 1;
    o1 = 0;
    o2 = 1;
    o3 = 1;
    if (but1 == 0){
        return 1;
    }
    if (but2 == 0){
        return 2;
    }
    if (but3 == 0){
        return 3;
    }

    o1 = 1;
    o2 = 0;
    o3 = 1;
    if (but1 == 0){
        return 4;
    }
    if (but2 == 0){
        return 5;
    }
    if (but3 == 0){
        return 6;
    }

    o1 = 1;
    o2 = 1;
    o3 = 0;
    if (but1 == 0){
        return 7;
    }
    if (but2 == 0){
        return 8;
    }
    if (but3 == 0){
        return 9;
    }

    return 0;
}
