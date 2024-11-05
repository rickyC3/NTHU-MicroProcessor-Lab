#include "8051.h"
#include "delay_func.h"
#include "delay.h"

char note[33] = {'0', '1', '0', '1', '0', '5', '0', '5', '0', '6', '0', '6', '0', '5', '5', 
                     '0', '4', '0', '4', '0', '3', '0', '3', '0', '2', '0', '2', '0', '1', '1', '0'};

int main(void) {
    char x;
    int i, j, tar;

    
    


    for (i=0;i<31;i++){
        
        x = note[i];

        if (x == '0'){
            delay_ms(200);
        }else if (x == '1'){
            P1_7 = 0;
            tar = 523;
            for (j=0;j < tar;j++){
                P3_7 = 1;
                Delay_Do();
                P3_7 = 0;
                Delay_Do();
            }P1_7 = 1;
        }else if (x == '2'){
            P1_6 = 0;
            tar = 588;
            for (j = 0;j<tar;j++){
                P3_7 = 1;
                Delay_Re();
                P3_7 = 0;
                Delay_Re();
            }P1_6 = 1;
        }else if (x == '3'){
            P1_5 = 0;
            tar = 660;
            for (j=0;j<tar;j++){
                P3_7 = 1;
                Delay_Mi();
                P3_7 = 0;
                Delay_Mi();
            }P1_5 = 1;
        }else if (x == '4'){
            P1_4 = 0;
            tar = 699;
            for (j=0;j<tar;j++){
                P3_7 = 1;
                Delay_Fa();
                P3_7 = 0;
                Delay_Fa();
            }P1_4 = 1;
        }else if (x == '5'){
            P1_3 = 0;
            tar = 784;
            for (j=0;j<tar;j++){ 
                P3_7 = 1;
                Delay_So();
                P3_7 = 0;
                Delay_So();
            }P1_3 = 1;
        }else if (x == '6'){
            P1_2 = 0;
            tar = 880;
            for (j=0;j<tar;j++){
                P3_7 = 1;
                Delay_La();
                P3_7 = 0;
                Delay_La();   
            }P1_2 = 1;
        }else if (x == '7'){
            P1_1 = 0;
            tar = 988;
            for (j=0;j<tar;j++){   
                P3_7 = 1;
                Delay_Si();
                P3_7 = 0;
                Delay_Si();  
            }
            P1_1 = 1;
        }
    }
    return 0;
}
