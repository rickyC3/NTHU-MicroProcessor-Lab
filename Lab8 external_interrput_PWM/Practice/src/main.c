#include "8051.h"
#include "delay.h"
#define cnt 100
#define freq 65536 - cnt 	
#define PWM_CNT_UPPER 100	
char led = 0x80; 
int pwm_count=0;
int duty_cycle = 0;
int mode = 0;
int dir = 1; // <<

int main(void)
{	      
    led = 0x01;
    int i;
    // ===== Timer interrupt config  ===== //
    TMOD = 0x01;            // 16 bit timer
    TH0 = freq >> 8;        
    TL0 = freq & 0xFF;  
    ET0 = 1;				// timer 0 overflow enable				
    TR0 = 1;                // timer 0 turn on

    // ===== External interrupt enable  ===== //
    EA = 1;					// enable all interrupt
    EX0=1;          // INT0 enable
    EX1=1;	        // INT1 enable
    IT1 = 0;        // INT0 edge trigger INT1 level trigger
    IT0 = 0;           


    /**ToDo: Complete function in practice**/
    /**You can refer to example project for some help**/
    while (1){
        if (mode == 0){
            led = led;
        }else if (mode == 1){
            led = (led == 0x01)? 0x80:led>>1;
        }else if (mode == 2){
            led = (led == 0x80)? 0x01:led<<1;
            dir = 1;
        }else if (mode == 3){
            if (dir == 1 && led == 0x80){
                dir = 0;
            }else if (dir == 0 && led == 0x01){
                dir = 1;
            }
            led = (dir)? led << 1 : led >> 1;
        }
        for (i=0;i<PWM_CNT_UPPER;i+=2){
            duty_cycle = i;
            delay_ms(10);
        }
        for (i = PWM_CNT_UPPER-1;i>=0;i-=2){
            duty_cycle = i;
            delay_ms(10);
        } 
    }
}

void PWM_Dimming_LED(void) __interrupt (1)  
{
    TH0 = freq >> 8;
    TL0 = freq & 0xFF;   
    //unsigned char j = led;
    pwm_count+=2;
    if(pwm_count >= PWM_CNT_UPPER) // 固定跑100次
        pwm_count = 0;
        // duty cycle 暗燈所佔據的時間
    if(duty_cycle > pwm_count){
        P1 = ~led;
    }else{
        P1 = 0xff;
    } 
     	
}


void EX0_int(void) __interrupt (0) // External interrupt 0
{
  mode++;
  if (mode == 4)mode = 0;
  delay_ms(1000);
} 

void EX1_int(void) __interrupt (2) // External interrupt 1 level trigger
{
  unsigned char j;
  j=led;      	
  P1=0x00;
  delay_ms(10000); 
  led=j;
  P1 = ~led;
} 	
