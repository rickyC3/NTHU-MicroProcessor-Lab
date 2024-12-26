;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _EX1_int
	.globl _EX0_int
	.globl _PWM_Dimming_LED
	.globl _main
	.globl _delay_ms
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _dir
	.globl _mode
	.globl _duty_cycle
	.globl _pwm_count
	.globl _led
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_led::
	.ds 1
_pwm_count::
	.ds 2
_duty_cycle::
	.ds 2
_mode::
	.ds 2
_dir::
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_EX0_int
	.ds	5
	ljmp	_PWM_Dimming_LED
	.ds	5
	ljmp	_EX1_int
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	./src/main.c:6: char led = 0x80; 
	mov	_led,#0x80
;	./src/main.c:7: int pwm_count=0;
	clr	a
	mov	_pwm_count,a
	mov	(_pwm_count + 1),a
;	./src/main.c:8: int duty_cycle = 0;
	mov	_duty_cycle,a
	mov	(_duty_cycle + 1),a
;	./src/main.c:9: int mode = 0;
	mov	_mode,a
	mov	(_mode + 1),a
;	./src/main.c:10: int dir = 1; // <<
	mov	_dir,#0x01
;	1-genFromRTrack replaced	mov	(_dir + 1),#0x00
	mov	(_dir + 1),a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:12: int main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/main.c:14: led = 0x01;
	mov	_led,#0x01
;	./src/main.c:17: TMOD = 0x01;            // 16 bit timer
	mov	_TMOD,#0x01
;	./src/main.c:18: TH0 = freq >> 8;        
	mov	_TH0,#0xff
;	./src/main.c:19: TL0 = freq & 0xFF;  
	mov	_TL0,#0x9c
;	./src/main.c:20: ET0 = 1;				// timer 0 overflow enable				
;	assignBit
	setb	_ET0
;	./src/main.c:21: TR0 = 1;                // timer 0 turn on
;	assignBit
	setb	_TR0
;	./src/main.c:24: EA = 1;					// enable all interrupt
;	assignBit
	setb	_EA
;	./src/main.c:25: EX0=1;          // INT0 enable
;	assignBit
	setb	_EX0
;	./src/main.c:26: EX1=1;	        // INT1 enable
;	assignBit
	setb	_EX1
;	./src/main.c:27: IT1 = 0;        // INT0 edge trigger INT1 level trigger
;	assignBit
	clr	_IT1
;	./src/main.c:28: IT0 = 0;           
;	assignBit
	clr	_IT0
;	./src/main.c:33: while (1){
00122$:
;	./src/main.c:34: if (mode == 0){
	mov	a,_mode
	orl	a,(_mode + 1)
	jnz	00117$
;	./src/main.c:35: led = led;
	ljmp	00147$
00117$:
;	./src/main.c:36: }else if (mode == 1){
	mov	a,#0x01
	cjne	a,_mode,00203$
	dec	a
	cjne	a,(_mode + 1),00203$
	sjmp	00204$
00203$:
	sjmp	00114$
00204$:
;	./src/main.c:37: led = (led == 0x01)? 0x80:led>>1;
	mov	a,#0x01
	cjne	a,_led,00130$
	mov	r6,#0x80
	mov	r7,#0x00
	sjmp	00131$
00130$:
	mov	a,_led
	clr	c
	rrc	a
	mov	r5,a
	mov	r6,a
	mov	r7,#0x00
00131$:
	mov	_led,r6
	ljmp	00147$
00114$:
;	./src/main.c:38: }else if (mode == 2){
	mov	a,#0x02
	cjne	a,_mode,00207$
	clr	a
	cjne	a,(_mode + 1),00207$
	sjmp	00208$
00207$:
	sjmp	00111$
00208$:
;	./src/main.c:39: led = (led == 0x80)? 0x01:led<<1;
	mov	a,#0x80
	cjne	a,_led,00132$
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00133$
00132$:
	mov	a,_led
	add	a,acc
	mov	r5,a
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
00133$:
	mov	_led,r6
;	./src/main.c:40: dir = 1;
	mov	_dir,#0x01
	mov	(_dir + 1),#0x00
	sjmp	00147$
00111$:
;	./src/main.c:41: }else if (mode == 3){
	mov	a,#0x03
	cjne	a,_mode,00211$
	clr	a
	cjne	a,(_mode + 1),00211$
	sjmp	00212$
00211$:
	sjmp	00147$
00212$:
;	./src/main.c:42: if (dir == 1 && led == 0x80){
	mov	a,#0x01
	cjne	a,_dir,00213$
	dec	a
	cjne	a,(_dir + 1),00213$
	sjmp	00214$
00213$:
	sjmp	00105$
00214$:
	mov	a,#0x80
	cjne	a,_led,00105$
;	./src/main.c:43: dir = 0;
	clr	a
	mov	_dir,a
	mov	(_dir + 1),a
	sjmp	00106$
00105$:
;	./src/main.c:44: }else if (dir == 0 && led == 0x01){
	mov	a,_dir
	orl	a,(_dir + 1)
	jnz	00106$
	mov	a,#0x01
	cjne	a,_led,00106$
;	./src/main.c:45: dir = 1;
	mov	_dir,#0x01
	mov	(_dir + 1),#0x00
00106$:
;	./src/main.c:47: led = (dir)? led << 1 : led >> 1;
	mov	a,_dir
	orl	a,(_dir + 1)
	jz	00134$
	mov	a,_led
	add	a,acc
	mov	r7,a
	sjmp	00135$
00134$:
	mov	a,_led
	clr	c
	rrc	a
	mov	r7,a
00135$:
	mov	_led,r7
;	./src/main.c:49: for (i=0;i<PWM_CNT_UPPER;i+=2){
00147$:
	mov	r6,#0x00
	mov	r7,#0x00
00124$:
;	./src/main.c:50: duty_cycle = i;
	mov	_duty_cycle,r6
	mov	(_duty_cycle + 1),r7
;	./src/main.c:51: delay_ms(10);
	mov	dptr,#0x000a
	push	ar7
	push	ar6
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	./src/main.c:49: for (i=0;i<PWM_CNT_UPPER;i+=2){
	mov	a,#0x02
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x64
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00124$
;	./src/main.c:53: for (i = PWM_CNT_UPPER-1;i>=0;i-=2){
	mov	r6,#0x63
	mov	r7,#0x00
00126$:
;	./src/main.c:54: duty_cycle = i;
	mov	_duty_cycle,r6
	mov	(_duty_cycle + 1),r7
;	./src/main.c:55: delay_ms(10);
	mov	dptr,#0x000a
	push	ar7
	push	ar6
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	./src/main.c:53: for (i = PWM_CNT_UPPER-1;i>=0;i-=2){
	mov	a,r6
	add	a,#0xfe
	mov	r6,a
	mov	a,r7
	addc	a,#0xff
	mov	r7,a
	jnb	acc.7,00126$
;	./src/main.c:58: }
	ljmp	00122$
;------------------------------------------------------------
;Allocation info for local variables in function 'PWM_Dimming_LED'
;------------------------------------------------------------
;	./src/main.c:60: void PWM_Dimming_LED(void) __interrupt (1)  
;	-----------------------------------------
;	 function PWM_Dimming_LED
;	-----------------------------------------
_PWM_Dimming_LED:
	push	acc
	push	b
	push	psw
;	./src/main.c:62: TH0 = freq >> 8;
	mov	_TH0,#0xff
;	./src/main.c:63: TL0 = freq & 0xFF;   
	mov	_TL0,#0x9c
;	./src/main.c:65: pwm_count+=2;
	mov	a,#0x02
	add	a,_pwm_count
	mov	_pwm_count,a
	clr	a
	addc	a,(_pwm_count + 1)
	mov	(_pwm_count + 1),a
;	./src/main.c:66: if(pwm_count >= PWM_CNT_UPPER) // 固定跑100次
	clr	c
	mov	a,_pwm_count
	subb	a,#0x64
	mov	a,(_pwm_count + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00102$
;	./src/main.c:67: pwm_count = 0;
	clr	a
	mov	_pwm_count,a
	mov	(_pwm_count + 1),a
00102$:
;	./src/main.c:69: if(duty_cycle > pwm_count){
	clr	c
	mov	a,_pwm_count
	subb	a,_duty_cycle
	mov	a,(_pwm_count + 1)
	xrl	a,#0x80
	mov	b,(_duty_cycle + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
;	./src/main.c:70: P1 = ~led;
	mov	a,_led
	cpl	a
	mov	_P1,a
	sjmp	00106$
00104$:
;	./src/main.c:72: P1 = 0xff;
	mov	_P1,#0xff
00106$:
;	./src/main.c:75: }
	pop	psw
	pop	b
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;------------------------------------------------------------
;Allocation info for local variables in function 'EX0_int'
;------------------------------------------------------------
;	./src/main.c:78: void EX0_int(void) __interrupt (0) // External interrupt 0
;	-----------------------------------------
;	 function EX0_int
;	-----------------------------------------
_EX0_int:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	./src/main.c:80: mode++;
	inc	_mode
	clr	a
	cjne	a,_mode,00109$
	inc	(_mode + 1)
00109$:
;	./src/main.c:81: if (mode == 4)mode = 0;
	mov	a,#0x04
	cjne	a,_mode,00110$
	clr	a
	cjne	a,(_mode + 1),00110$
	sjmp	00111$
00110$:
	sjmp	00102$
00111$:
	clr	a
	mov	_mode,a
	mov	(_mode + 1),a
00102$:
;	./src/main.c:82: delay_ms(1000);
	mov	dptr,#0x03e8
	lcall	_delay_ms
;	./src/main.c:83: } 
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'EX1_int'
;------------------------------------------------------------
;j                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:85: void EX1_int(void) __interrupt (2) // External interrupt 1 level trigger
;	-----------------------------------------
;	 function EX1_int
;	-----------------------------------------
_EX1_int:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	./src/main.c:88: j=led;      	
	mov	r7,_led
;	./src/main.c:89: P1=0x00;
	mov	_P1,#0x00
;	./src/main.c:90: delay_ms(10000); 
	mov	dptr,#0x2710
	push	ar7
	lcall	_delay_ms
	pop	ar7
;	./src/main.c:91: led=j;
;	./src/main.c:92: P1 = ~led;
	mov	a,r7
	mov	_led,a
	cpl	a
	mov	_P1,a
;	./src/main.c:93: } 	
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
