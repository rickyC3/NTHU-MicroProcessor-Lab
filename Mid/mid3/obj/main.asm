;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _T0_isr
	.globl _delay_ms
	.globl _OLED_SetCursor
	.globl _OLED_DisplayString
	.globl _OLED_DisplayChar
	.globl _OLED_Init
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
	.globl _hall_last_state
	.globl _patt
	.globl _time
	.globl _DynP
	.globl _accP
	.globl _cnt_s
	.globl _cnt
	.globl _i
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
_i::
	.ds 1
_cnt::
	.ds 2
_cnt_s::
	.ds 2
_accP::
	.ds 2
_DynP::
	.ds 2
_time::
	.ds 6
_patt::
	.ds 1
_hall_last_state::
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
	reti
	.ds	7
	ljmp	_T0_isr
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
;	./src/main.c:38: char i = 0;
	mov	_i,#0x00
;	./src/main.c:39: int cnt = 0;
	clr	a
	mov	_cnt,a
	mov	(_cnt + 1),a
;	./src/main.c:40: int cnt_s = 0;
	mov	_cnt_s,a
	mov	(_cnt_s + 1),a
;	./src/main.c:41: int accP = 0;
	mov	_accP,a
	mov	(_accP + 1),a
;	./src/main.c:42: int DynP = 0;
	mov	_DynP,a
	mov	(_DynP + 1),a
;	./src/main.c:44: int time[3] = {23, 59, 0};  // Stores the 16-bit signed accelerometer sensor output
	mov	(_time + 0),#0x17
;	1-genFromRTrack replaced	mov	(_time + 1),#0x00
	mov	(_time + 1),a
	mov	((_time + 0x0002) + 0),#0x3b
;	1-genFromRTrack replaced	mov	((_time + 0x0002) + 1),#0x00
	mov	((_time + 0x0002) + 1),a
	mov	((_time + 0x0004) + 0),a
	mov	((_time + 0x0004) + 1),a
;	./src/main.c:45: unsigned char patt = 0x80;	//led value
	mov	_patt,#0x80
;	./src/main.c:46: int hall_last_state = 0;
	mov	_hall_last_state,a
	mov	(_hall_last_state + 1),a
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
;Allocation info for local variables in function 'T0_isr'
;------------------------------------------------------------
;	./src/main.c:48: void T0_isr(void) __interrupt (1)			// Interrupt routine w/ priority 1
;	-----------------------------------------
;	 function T0_isr
;	-----------------------------------------
_T0_isr:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
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
;	./src/main.c:51: TH0 = (65536-1000) / 256;			// Reset higher 8 bits of Timer 0
	mov	_TH0,#0xfc
;	./src/main.c:52: TL0 = (65536-1000) % 256;			// Reset lower 8 bits of Timer 0
	mov	_TL0,#0x18
;	./src/main.c:54: cnt++;								// Count each interruption
	inc	_cnt
	clr	a
	cjne	a,_cnt,00126$
	inc	(_cnt + 1)
00126$:
;	./src/main.c:55: if(cnt >= 1000) {						// 1000 interruptions = 1000ms = 1s
	clr	c
	mov	a,_cnt
	subb	a,#0xe8
	mov	a,(_cnt + 1)
	xrl	a,#0x80
	subb	a,#0x83
	jnc	00127$
	ljmp	00108$
00127$:
;	./src/main.c:56: if (time[2] == 59 && time[1] == 59)time[0] = (time[0]+1)%24;
	mov	a,#0x3b
	cjne	a,(_time + 0x0004),00128$
	clr	a
	cjne	a,((_time + 0x0004) + 1),00128$
	sjmp	00129$
00128$:
	sjmp	00102$
00129$:
	mov	a,#0x3b
	cjne	a,(_time + 0x0002),00130$
	clr	a
	cjne	a,((_time + 0x0002) + 1),00130$
	sjmp	00131$
00130$:
	sjmp	00102$
00131$:
	mov	dpl,_time
	mov	dph,(_time + 1)
	inc	dptr
	mov	__modsint_PARM_2,#0x18
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	mov	(_time + 0),a
	mov	(_time + 1),b
00102$:
;	./src/main.c:57: if (time[2] == 59)time[1] = (time[1]+1)%60;
	mov	a,#0x3b
	cjne	a,(_time + 0x0004),00132$
	clr	a
	cjne	a,((_time + 0x0004) + 1),00132$
	sjmp	00133$
00132$:
	sjmp	00105$
00133$:
	mov	dpl,(_time + 0x0002)
	mov	dph,((_time + 0x0002) + 1)
	inc	dptr
	mov	__modsint_PARM_2,#0x3c
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	mov	((_time + 0x0002) + 0),a
	mov	((_time + 0x0002) + 1),b
00105$:
;	./src/main.c:58: time[2] = (time[2]+1)%60;		
	mov	dpl,(_time + 0x0004)
	mov	dph,((_time + 0x0004) + 1)
	inc	dptr
	mov	__modsint_PARM_2,#0x3c
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	mov	((_time + 0x0004) + 0),a
	mov	((_time + 0x0004) + 1),b
;	./src/main.c:59: cnt = 0;	// Reverse wave signal
	clr	a
	mov	_cnt,a
	mov	(_cnt + 1),a
;	./src/main.c:60: cnt_s++;
	inc	_cnt_s
;	genFromRTrack removed	clr	a
	cjne	a,_cnt_s,00134$
	inc	(_cnt_s + 1)
00134$:
;	./src/main.c:61: DynP = (accP / cnt_s) * 60;
	mov	__divsint_PARM_2,_cnt_s
	mov	(__divsint_PARM_2 + 1),(_cnt_s + 1)
	mov	dpl,_accP
	mov	dph,(_accP + 1)
	lcall	__divsint
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
	mov	dptr,#0x003c
	lcall	__mulint
	mov	_DynP,dpl
	mov	(_DynP + 1),dph
00108$:
;	./src/main.c:63: }
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
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	./src/main.c:66: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./src/main.c:70: TMOD = 0x01;						// Set Timer 1 to  mode 0 & Timer 0 mode 1. (16-bit timer)
	mov	_TMOD,#0x01
;	./src/main.c:71: TH0 = (65536-1000) / 256;			// Load initial higher 8 bits into Timer 0
	mov	_TH0,#0xfc
;	./src/main.c:72: TL0 = (65536-1000) % 256;			// Load initial lower 8 bits into Timer 0
	mov	_TL0,#0x18
;	./src/main.c:73: ET0 = 1;							// Enable Timer 0 interrupt
;	assignBit
	setb	_ET0
;	./src/main.c:74: EA = 1;								// Enable all interrupt
;	assignBit
	setb	_EA
;	./src/main.c:75: TR0 = 1;	
;	assignBit
	setb	_TR0
;	./src/main.c:77: SDA = 1;
;	assignBit
	setb	_P0_1
;	./src/main.c:78: SCL = 1;
;	assignBit
	setb	_P0_0
;	./src/main.c:79: OLED_Init();		  // Check oled_i2c.c file for SCL,SDA pin connection
	lcall	_OLED_Init
;	./src/main.c:82: OLED_SetCursor(0,0);  // Set cursor at 0th-line 0th-Position
	mov	_OLED_SetCursor_PARM_2,#0x00
	mov	dpl,#0x00
	lcall	_OLED_SetCursor
;	./src/main.c:84: OLED_SetCursor(2, 0);  
	mov	_OLED_SetCursor_PARM_2,#0x00
	mov	dpl,#0x02
	lcall	_OLED_SetCursor
;	./src/main.c:85: OLED_DisplayString(" Time ");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:86: OLED_SetCursor(3, 0);  
	mov	_OLED_SetCursor_PARM_2,#0x00
	mov	dpl,#0x03
	lcall	_OLED_SetCursor
;	./src/main.c:87: OLED_DisplayString("People");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:88: OLED_SetCursor(4, 0);  
	mov	_OLED_SetCursor_PARM_2,#0x00
	mov	dpl,#0x04
	lcall	_OLED_SetCursor
;	./src/main.c:89: OLED_DisplayString("AccPeo");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:90: OLED_SetCursor(5, 0);  
	mov	_OLED_SetCursor_PARM_2,#0x00
	mov	dpl,#0x05
	lcall	_OLED_SetCursor
;	./src/main.c:91: OLED_DisplayString("DynPeo");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:94: while(1) {
00117$:
;	./src/main.c:97: for(i = 0; i < 4; i++) {
	mov	_i,#0x00
00119$:
;	./src/main.c:98: if(i == 0) {
	mov	a,_i
	jz	00159$
	ljmp	00110$
00159$:
;	./src/main.c:99: OLED_SetCursor(2 + i, 54); 
	mov	r7,_i
	mov	a,#0x02
	add	a,r7
	mov	dpl,a
	mov	_OLED_SetCursor_PARM_2,#0x36
	lcall	_OLED_SetCursor
;	./src/main.c:100: OLED_DisplayChar(time[0] / 10 + '0');
	mov	dpl,(_time + 0)
	mov	dph,(_time + 1)
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:101: OLED_DisplayChar(time[0]  % 10 + '0');
	mov	dpl,(_time + 0)
	mov	dph,(_time + 1)
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:102: OLED_DisplayChar(':');
	mov	dpl,#0x3a
	lcall	_OLED_DisplayChar
;	./src/main.c:103: OLED_DisplayChar(time[1] / 10 + '0');
	mov	dpl,((_time + 0x0002) + 0)
	mov	dph,((_time + 0x0002) + 1)
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:104: OLED_DisplayChar(time[1] % 10 + '0');
	mov	dpl,((_time + 0x0002) + 0)
	mov	dph,((_time + 0x0002) + 1)
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:105: OLED_DisplayChar(':');
	mov	dpl,#0x3a
	lcall	_OLED_DisplayChar
;	./src/main.c:106: OLED_DisplayChar(time[2] / 10 + '0');
	mov	dpl,((_time + 0x0004) + 0)
	mov	dph,((_time + 0x0004) + 1)
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:107: OLED_DisplayChar(time[2] % 10 + '0');
	mov	dpl,((_time + 0x0004) + 0)
	mov	dph,((_time + 0x0004) + 1)
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
	ljmp	00120$
00110$:
;	./src/main.c:108: } else if (i == 1){
	mov	a,#0x01
	cjne	a,_i,00160$
	sjmp	00161$
00160$:
	ljmp	00107$
00161$:
;	./src/main.c:110: OLED_SetCursor(2 + i, 54);
	mov	r7,_i
	mov	a,#0x02
	add	a,r7
	mov	dpl,a
	mov	_OLED_SetCursor_PARM_2,#0x36
	lcall	_OLED_SetCursor
;	./src/main.c:111: OLED_DisplayChar(cnt_s / 10000 + '0');
	mov	__divsint_PARM_2,#0x10
	mov	(__divsint_PARM_2 + 1),#0x27
	mov	dpl,_cnt_s
	mov	dph,(_cnt_s + 1)
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:112: OLED_DisplayChar(cnt_s % 10000 / 1000 + '0');
	mov	__modsint_PARM_2,#0x10
	mov	(__modsint_PARM_2 + 1),#0x27
	mov	dpl,_cnt_s
	mov	dph,(_cnt_s + 1)
	lcall	__modsint
	mov	__divsint_PARM_2,#0xe8
	mov	(__divsint_PARM_2 + 1),#0x03
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:113: OLED_DisplayChar(cnt_s % 1000 / 100 + '0');
	mov	__modsint_PARM_2,#0xe8
	mov	(__modsint_PARM_2 + 1),#0x03
	mov	dpl,_cnt_s
	mov	dph,(_cnt_s + 1)
	lcall	__modsint
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:114: OLED_DisplayChar(cnt_s % 100 / 10 + '0');
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_cnt_s
	mov	dph,(_cnt_s + 1)
	lcall	__modsint
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:115: OLED_DisplayChar(cnt_s % 10 + '0');
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_cnt_s
	mov	dph,(_cnt_s + 1)
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
	ljmp	00120$
00107$:
;	./src/main.c:117: else if (i == 2){
	mov	a,#0x02
	cjne	a,_i,00162$
	sjmp	00163$
00162$:
	ljmp	00104$
00163$:
;	./src/main.c:118: OLED_SetCursor(2 + i, 54);
	mov	r7,_i
	mov	a,#0x02
	add	a,r7
	mov	dpl,a
	mov	_OLED_SetCursor_PARM_2,#0x36
	lcall	_OLED_SetCursor
;	./src/main.c:119: OLED_DisplayChar(accP / 10000 + '0');
	mov	__divsint_PARM_2,#0x10
	mov	(__divsint_PARM_2 + 1),#0x27
	mov	dpl,_accP
	mov	dph,(_accP + 1)
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:120: OLED_DisplayChar(accP % 10000 / 1000 + '0');
	mov	__modsint_PARM_2,#0x10
	mov	(__modsint_PARM_2 + 1),#0x27
	mov	dpl,_accP
	mov	dph,(_accP + 1)
	lcall	__modsint
	mov	__divsint_PARM_2,#0xe8
	mov	(__divsint_PARM_2 + 1),#0x03
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:121: OLED_DisplayChar(accP % 1000 / 100 + '0');
	mov	__modsint_PARM_2,#0xe8
	mov	(__modsint_PARM_2 + 1),#0x03
	mov	dpl,_accP
	mov	dph,(_accP + 1)
	lcall	__modsint
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:122: OLED_DisplayChar(accP % 100 / 10 + '0');
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_accP
	mov	dph,(_accP + 1)
	lcall	__modsint
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:123: OLED_DisplayChar(accP % 10 + '0');
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_accP
	mov	dph,(_accP + 1)
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
	ljmp	00120$
00104$:
;	./src/main.c:124: }else if (i == 3){
	mov	a,#0x03
	cjne	a,_i,00164$
	sjmp	00165$
00164$:
	ljmp	00120$
00165$:
;	./src/main.c:125: OLED_SetCursor(2 + i, 54);
	mov	r7,_i
	mov	a,#0x02
	add	a,r7
	mov	dpl,a
	mov	_OLED_SetCursor_PARM_2,#0x36
	lcall	_OLED_SetCursor
;	./src/main.c:126: OLED_DisplayChar(DynP / 10000 + '0');
	mov	__divsint_PARM_2,#0x10
	mov	(__divsint_PARM_2 + 1),#0x27
	mov	dpl,_DynP
	mov	dph,(_DynP + 1)
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:127: OLED_DisplayChar(DynP % 10000 / 1000 + '0');
	mov	__modsint_PARM_2,#0x10
	mov	(__modsint_PARM_2 + 1),#0x27
	mov	dpl,_DynP
	mov	dph,(_DynP + 1)
	lcall	__modsint
	mov	__divsint_PARM_2,#0xe8
	mov	(__divsint_PARM_2 + 1),#0x03
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:128: OLED_DisplayChar(DynP % 1000 / 100 + '0');
	mov	__modsint_PARM_2,#0xe8
	mov	(__modsint_PARM_2 + 1),#0x03
	mov	dpl,_DynP
	mov	dph,(_DynP + 1)
	lcall	__modsint
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:129: OLED_DisplayChar(DynP % 100 / 10 + '0');
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_DynP
	mov	dph,(_DynP + 1)
	lcall	__modsint
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:130: OLED_DisplayChar(DynP % 10 + '0');
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_DynP
	mov	dph,(_DynP + 1)
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
00120$:
;	./src/main.c:97: for(i = 0; i < 4; i++) {
	inc	_i
	mov	a,#0x100 - 0x04
	add	a,_i
	jc	00166$
	ljmp	00119$
00166$:
;	./src/main.c:133: if (hall_last_state == 1 && Hall_In == 0){
	mov	a,#0x01
	cjne	a,_hall_last_state,00167$
	dec	a
	cjne	a,(_hall_last_state + 1),00167$
	sjmp	00168$
00167$:
	sjmp	00114$
00168$:
	jb	_P2_4,00114$
;	./src/main.c:134: accP++;
	inc	_accP
	clr	a
	cjne	a,_accP,00170$
	inc	(_accP + 1)
00170$:
00114$:
;	./src/main.c:135: }hall_last_state = Hall_In;
	mov	c,_P2_4
	clr	a
	rlc	a
	mov	_hall_last_state,a
	mov	(_hall_last_state + 1),#0x00
;	./src/main.c:136: delay_ms(100);
	mov	dptr,#0x0064
	lcall	_delay_ms
;	./src/main.c:138: }
	ljmp	00117$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii " Time "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "People"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "AccPeo"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "DynPeo"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
