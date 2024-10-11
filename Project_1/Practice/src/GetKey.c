
#include "delay.h"
#include "8051.h"


#define C1   P0_1
#define C2   P0_2
#define C3   P0_3
#define R1   P0_4
#define R2   P0_5
#define R3   P0_6
#define R4   P0_7

#define BUT1 P3_2
#define BUT2 P3_3
#define BUT3 P2_0
#define BUT4 P2_1


unsigned char Get_Key(void){

    if (BUT1 == 0)return 10; // OP
    if (BUT2 == 0)return 11; // back
    if (BUT3 == 0)return 12; // AC
    if (BUT4 == 0)return 13; // eqal


    C1 = 1;
    C2 = 1;
    C3 = 1;

    R1 = 0;
    R2 = 1;
    R3 = 1;
    R4 = 1;
    if (C1 == 0){
        return 7;
    }
    if (C2 == 0){
        return 8;
    }
    if (C3 == 0){
        return 9;
    }

    R1 = 1;
    R2 = 0;
    R3 = 1;
    R4 = 1;
    if (C1 == 0){
        return 4;
    }
    if (C2 == 0){
        return 5;
    }
    if (C3 == 0){
        return 6;
    }

    R1 = 1;
    R2 = 1;
    R3 = 0;
    R4 = 1;
    if (C1 == 0){
        return 1;
    }
    if (C2 == 0){
        return 2;
    }
    if (C3 == 0){
        return 3;
    }

    
    R1 = 1;
    R2 = 1;
    R3 = 1;
    R4 = 0;
    if (C2 == 0){
        return 0;
    }


    return 15;
}

