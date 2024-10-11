;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Sendbyte7219_PARM_2
	.globl _main
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
	.globl _Calculate_PARM_3
	.globl _Calculate_PARM_2
	.globl _Sendbyte7219
	.globl _Display
	.globl _Calculate
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
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_main_num2_65536_5:
	.ds 4
_main_operator_65536_5:
	.ds 1
_main_state_65536_5:
	.ds 1
_main_push_65536_5:
	.ds 1
_main_pre_65536_5:
	.ds 1
_main_sloc0_1_0:
	.ds 4
_Display_num_65536_18:
	.ds 4
_Calculate_PARM_2:
	.ds 1
_Calculate_PARM_3:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_Sendbyte7219_PARM_2:
	.ds 1
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
;num1                      Allocated to registers r4 r5 r6 r7 
;num2                      Allocated with name '_main_num2_65536_5'
;operator                  Allocated with name '_main_operator_65536_5'
;state                     Allocated with name '_main_state_65536_5'
;push                      Allocated with name '_main_push_65536_5'
;pre                       Allocated with name '_main_pre_65536_5'
;i                         Allocated to registers 
;sloc0                     Allocated with name '_main_sloc0_1_0'
;------------------------------------------------------------
;	./src/main.c:9: void main(void) {
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
;	./src/main.c:10: unsigned long num1 = 0, num2 = 0;
	clr	a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	_main_num2_65536_5,a
	mov	(_main_num2_65536_5 + 1),a
	mov	(_main_num2_65536_5 + 2),a
	mov	(_main_num2_65536_5 + 3),a
;	./src/main.c:11: unsigned char operator = 0, state = INPUT1, push, pre = IDLE, i;
;	1-genFromRTrack replaced	mov	_main_operator_65536_5,#0x00
	mov	_main_operator_65536_5,a
	mov	_main_state_65536_5,#0x02
	mov	_main_pre_65536_5,#0x0e
;	./src/main.c:13: R1 = R2 = R3 = R4 = 1;
;	assignBit
	setb	_P0_7
;	assignBit
	mov	c,_P0_7
	mov	_P0_6,c
;	assignBit
	mov	c,_P0_6
	mov	_P0_5,c
;	assignBit
	mov	c,_P0_5
	mov	_P0_4,c
;	./src/main.c:14: Sendbyte7219(SHUT_DOWN,    0x01);
	mov	_Sendbyte7219_PARM_2,#0x01
	mov	dpl,#0x0c
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_Sendbyte7219
;	./src/main.c:15: Sendbyte7219(DISPLAY_TEST, 0x00);
	mov	_Sendbyte7219_PARM_2,#0x00
	mov	dpl,#0x0f
	lcall	_Sendbyte7219
;	./src/main.c:16: Sendbyte7219(DECODE_MODE,  0xff);
	mov	_Sendbyte7219_PARM_2,#0xff
	mov	dpl,#0x09
	lcall	_Sendbyte7219
;	./src/main.c:17: Sendbyte7219(SCAN_LIMIT,   0x07);
	mov	_Sendbyte7219_PARM_2,#0x07
	mov	dpl,#0x0b
	lcall	_Sendbyte7219
;	./src/main.c:18: Sendbyte7219(INTENSITY,    0x00);
	mov	_Sendbyte7219_PARM_2,#0x00
	mov	dpl,#0x0a
	lcall	_Sendbyte7219
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:20: while (1) {
00143$:
;	./src/main.c:21: push = IDLE;
	mov	_main_push_65536_5,#0x0e
;	./src/main.c:22: if (BUT1 == 0) push = OP;
	jb	_P3_2,00102$
	mov	_main_push_65536_5,#0x0a
00102$:
;	./src/main.c:23: if (BUT2 == 0) push = BACK;
	jb	_P3_3,00104$
	mov	_main_push_65536_5,#0x0b
00104$:
;	./src/main.c:24: if (BUT3 == 0) push = AC;
	jb	_P2_0,00106$
	mov	_main_push_65536_5,#0x0c
00106$:
;	./src/main.c:25: if (BUT4 == 0) push = EQ;
	jb	_P2_1,00108$
	mov	_main_push_65536_5,#0x0d
00108$:
;	./src/main.c:26: C1 = 0; C2 = C3 = 1;
;	assignBit
	clr	_P0_1
;	assignBit
	setb	_P0_3
;	assignBit
	mov	c,_P0_3
	mov	_P0_2,c
;	./src/main.c:27: for (i = 1; i < 4; i++) {
	mov	r1,#0x01
00145$:
;	./src/main.c:28: if (R1 == 0) push = 6 + i;
	jb	_P0_4,00110$
	mov	ar3,r1
	mov	a,#0x06
	add	a,r3
	mov	_main_push_65536_5,a
00110$:
;	./src/main.c:29: if (R2 == 0) push = 3 + i;
	jb	_P0_5,00112$
	mov	ar3,r1
	mov	a,#0x03
	add	a,r3
	mov	_main_push_65536_5,a
00112$:
;	./src/main.c:30: if (R3 == 0) push = i;
	jb	_P0_6,00114$
	mov	_main_push_65536_5,r1
00114$:
;	./src/main.c:31: if (R4 == 0) push = 0;
	jb	_P0_7,00116$
	mov	_main_push_65536_5,#0x00
00116$:
;	./src/main.c:32: C3 = C2; C2 = C1; C1 = 1;
;	assignBit
	mov	c,_P0_2
	mov	_P0_3,c
;	assignBit
	mov	c,_P0_1
	mov	_P0_2,c
;	assignBit
	setb	_P0_1
;	./src/main.c:27: for (i = 1; i < 4; i++) {
	inc	r1
	cjne	r1,#0x04,00260$
00260$:
	jc	00145$
;	./src/main.c:35: if (push != pre) {
	mov	a,_main_pre_65536_5
	cjne	a,_main_push_65536_5,00262$
	ljmp	00141$
00262$:
;	./src/main.c:36: switch (push) {
	mov	a,#0x0a
	cjne	a,_main_push_65536_5,00263$
	sjmp	00119$
00263$:
	mov	a,#0x0b
	cjne	a,_main_push_65536_5,00264$
	sjmp	00126$
00264$:
	mov	a,#0x0c
	cjne	a,_main_push_65536_5,00265$
	ljmp	00129$
00265$:
	mov	a,#0x0d
	cjne	a,_main_push_65536_5,00266$
	ljmp	00130$
00266$:
	mov	a,#0x0e
	cjne	a,_main_push_65536_5,00267$
	sjmp	00268$
00267$:
	ljmp	00133$
00268$:
;	./src/main.c:37: case IDLE: break;
	ljmp	00141$
;	./src/main.c:38: case OP: 
00119$:
;	./src/main.c:39: if (state == INPUT2) num1 = Calculate(num2, operator, num1);
	mov	a,#0x03
	cjne	a,_main_state_65536_5,00121$
	mov	_Calculate_PARM_2,_main_operator_65536_5
	mov	_Calculate_PARM_3,r4
	mov	(_Calculate_PARM_3 + 1),r5
	mov	(_Calculate_PARM_3 + 2),r6
	mov	(_Calculate_PARM_3 + 3),r7
	mov	dpl,_main_num2_65536_5
	mov	dph,(_main_num2_65536_5 + 1)
	mov	b,(_main_num2_65536_5 + 2)
	mov	a,(_main_num2_65536_5 + 3)
	lcall	_Calculate
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
00121$:
;	./src/main.c:40: if (state == OPERATION && operator < 128) operator <<= 1;
	mov	a,#0x01
	cjne	a,_main_state_65536_5,00123$
	mov	a,#0x100 - 0x80
	add	a,_main_operator_65536_5
	jc	00123$
	mov	a,_main_operator_65536_5
	mov	r3,a
	add	a,acc
	mov	_main_operator_65536_5,a
	sjmp	00124$
00123$:
;	./src/main.c:41: else operator = 16;
	mov	_main_operator_65536_5,#0x10
00124$:
;	./src/main.c:42: state = OPERATION;
	mov	_main_state_65536_5,#0x01
;	./src/main.c:43: break;
	ljmp	00141$
;	./src/main.c:44: case BACK: 
00126$:
;	./src/main.c:45: if (state > OPERATION) num1 /= 10;
	mov	a,_main_state_65536_5
	add	a,#0xff - 0x01
	jc	00274$
	ljmp	00141$
00274$:
	mov	__divulong_PARM_2,#0x0a
	clr	a
	mov	(__divulong_PARM_2 + 1),a
	mov	(__divulong_PARM_2 + 2),a
	mov	(__divulong_PARM_2 + 3),a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	./src/main.c:46: break;
	ljmp	00141$
;	./src/main.c:47: case AC:
00129$:
;	./src/main.c:48: state = INPUT1; num1 = num2 = 0; 
	mov	_main_state_65536_5,#0x02
	clr	a
	mov	_main_num2_65536_5,a
	mov	(_main_num2_65536_5 + 1),a
	mov	(_main_num2_65536_5 + 2),a
	mov	(_main_num2_65536_5 + 3),a
	mov	r4,a
	mov	r5,a
	mov	r6,#0x00
	mov	r7,#0x00
;	./src/main.c:49: break;
	ljmp	00141$
;	./src/main.c:50: case EQ:
00130$:
;	./src/main.c:51: if (state == INPUT2) num1 = Calculate(num2, operator, num1);
	mov	a,#0x03
	cjne	a,_main_state_65536_5,00132$
	mov	_Calculate_PARM_2,_main_operator_65536_5
	mov	_Calculate_PARM_3,r4
	mov	(_Calculate_PARM_3 + 1),r5
	mov	(_Calculate_PARM_3 + 2),r6
	mov	(_Calculate_PARM_3 + 3),r7
	mov	dpl,_main_num2_65536_5
	mov	dph,(_main_num2_65536_5 + 1)
	mov	b,(_main_num2_65536_5 + 2)
	mov	a,(_main_num2_65536_5 + 3)
	lcall	_Calculate
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
00132$:
;	./src/main.c:52: state = ANSWER;
	mov	_main_state_65536_5,#0x00
;	./src/main.c:53: break;
;	./src/main.c:54: default: 
	sjmp	00141$
00133$:
;	./src/main.c:55: if (state == OPERATION) num2 = num1;
	mov	a,#0x01
	cjne	a,_main_state_65536_5,00135$
	mov	_main_num2_65536_5,r4
	mov	(_main_num2_65536_5 + 1),r5
	mov	(_main_num2_65536_5 + 2),r6
	mov	(_main_num2_65536_5 + 3),r7
00135$:
;	./src/main.c:56: if (state > OPERATION) num1 = 10 * num1 + push;
	mov	a,_main_state_65536_5
	add	a,#0xff - 0x01
	jnc	00137$
	mov	__mullong_PARM_2,r4
	mov	(__mullong_PARM_2 + 1),r5
	mov	(__mullong_PARM_2 + 2),r6
	mov	(__mullong_PARM_2 + 3),r7
	mov	dptr,#(0x0a&0x00ff)
	clr	a
	mov	b,a
	lcall	__mullong
	mov	_main_sloc0_1_0,dpl
	mov	(_main_sloc0_1_0 + 1),dph
	mov	(_main_sloc0_1_0 + 2),b
	mov	(_main_sloc0_1_0 + 3),a
	mov	r0,_main_push_65536_5
	clr	a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	a,r0
	add	a,_main_sloc0_1_0
	mov	r4,a
	mov	a,r1
	addc	a,(_main_sloc0_1_0 + 1)
	mov	r5,a
	mov	a,r2
	addc	a,(_main_sloc0_1_0 + 2)
	mov	r6,a
	mov	a,r3
	addc	a,(_main_sloc0_1_0 + 3)
	mov	r7,a
	sjmp	00141$
00137$:
;	./src/main.c:58: state += 2; 
	mov	r2,_main_state_65536_5
	mov	a,#0x02
	add	a,r2
	mov	_main_state_65536_5,a
;	./src/main.c:59: num1 = push;
	mov	r4,_main_push_65536_5
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
;	./src/main.c:61: }
00141$:
;	./src/main.c:63: Display(num1);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_Display
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:64: LED = state == 1 ? ~operator : 0xff;
	mov	a,#0x01
	cjne	a,_main_state_65536_5,00149$
	mov	a,_main_operator_65536_5
	cpl	a
	mov	r2,a
	mov	r3,#0x00
	sjmp	00150$
00149$:
	mov	r2,#0xff
	mov	r3,#0x00
00150$:
	mov	_P1,r2
;	./src/main.c:65: pre = push;
	mov	_main_pre_65536_5,_main_push_65536_5
;	./src/main.c:67: }
	ljmp	00143$
;------------------------------------------------------------
;Allocation info for local variables in function 'Sendbyte7219'
;------------------------------------------------------------
;dat                       Allocated with name '_Sendbyte7219_PARM_2'
;address                   Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	./src/main.c:69: void Sendbyte7219(char address, unsigned char dat) {
;	-----------------------------------------
;	 function Sendbyte7219
;	-----------------------------------------
_Sendbyte7219:
	mov	r7,dpl
;	./src/main.c:71: LOAD = 0;
;	assignBit
	clr	_P2_6
	mov	r6,#0x00
00104$:
;	./src/main.c:72: for (; i < 8; i++) {
	cjne	r6,#0x08,00128$
00128$:
	jnc	00101$
;	./src/main.c:73: CLK = 0;
;	assignBit
	clr	_P2_5
;	./src/main.c:74: DIN = (address & 0x80);
	mov	a,r7
	rl	a
	anl	a,#0x01
;	assignBit
	mov	r5,a
	add	a,#0xff
	mov	_P2_7,c
;	./src/main.c:75: address *= 2;
	mov	a,r7
	add	a,r7
	mov	r7,a
;	./src/main.c:76: CLK = 1;
;	assignBit
	setb	_P2_5
;	./src/main.c:72: for (; i < 8; i++) {
	inc	r6
	sjmp	00104$
00101$:
;	./src/main.c:78: for (i = 0; i < 8; i++) {
	mov	r7,#0x00
00106$:
;	./src/main.c:79: CLK = 0;
;	assignBit
	clr	_P2_5
;	./src/main.c:80: DIN = (dat & 0x80);
	mov	a,_Sendbyte7219_PARM_2
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P2_7,c
;	./src/main.c:81: dat *= 2;
	mov	a,_Sendbyte7219_PARM_2
	add	a,acc
	mov	_Sendbyte7219_PARM_2,a
;	./src/main.c:82: CLK = 1;
;	assignBit
	setb	_P2_5
;	./src/main.c:78: for (i = 0; i < 8; i++) {
	inc	r7
	cjne	r7,#0x08,00130$
00130$:
	jc	00106$
;	./src/main.c:84: LOAD = 1;
;	assignBit
	setb	_P2_6
;	./src/main.c:85: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Display'
;------------------------------------------------------------
;num                       Allocated with name '_Display_num_65536_18'
;i                         Allocated to registers r3 
;------------------------------------------------------------
;	./src/main.c:89: void Display(unsigned long num) {
;	-----------------------------------------
;	 function Display
;	-----------------------------------------
_Display:
	mov	_Display_num_65536_18,dpl
	mov	(_Display_num_65536_18 + 1),dph
	mov	(_Display_num_65536_18 + 2),b
	mov	(_Display_num_65536_18 + 3),a
;	./src/main.c:91: for (i = 1; i < 9; i++) {
	mov	r3,#0x01
00106$:
;	./src/main.c:92: if (num || i == 1) Sendbyte7219(i, num % 10);
	mov	a,_Display_num_65536_18
	orl	a,(_Display_num_65536_18 + 1)
	orl	a,(_Display_num_65536_18 + 2)
	orl	a,(_Display_num_65536_18 + 3)
	jnz	00101$
	cjne	r3,#0x01,00102$
00101$:
	mov	__modulong_PARM_2,#0x0a
	clr	a
	mov	(__modulong_PARM_2 + 1),a
	mov	(__modulong_PARM_2 + 2),a
	mov	(__modulong_PARM_2 + 3),a
	mov	dpl,_Display_num_65536_18
	mov	dph,(_Display_num_65536_18 + 1)
	mov	b,(_Display_num_65536_18 + 2)
	mov	a,(_Display_num_65536_18 + 3)
	push	ar3
	lcall	__modulong
	mov	r0,dpl
	pop	ar3
	mov	_Sendbyte7219_PARM_2,r0
	mov	dpl,r3
	push	ar3
	lcall	_Sendbyte7219
	pop	ar3
	sjmp	00103$
00102$:
;	./src/main.c:93: else Sendbyte7219(i, 0x0f);
	mov	_Sendbyte7219_PARM_2,#0x0f
	mov	dpl,r3
	push	ar3
	lcall	_Sendbyte7219
	pop	ar3
00103$:
;	./src/main.c:94: num /= 10;
	mov	__divulong_PARM_2,#0x0a
	clr	a
	mov	(__divulong_PARM_2 + 1),a
	mov	(__divulong_PARM_2 + 2),a
	mov	(__divulong_PARM_2 + 3),a
	mov	dpl,_Display_num_65536_18
	mov	dph,(_Display_num_65536_18 + 1)
	mov	b,(_Display_num_65536_18 + 2)
	mov	a,(_Display_num_65536_18 + 3)
	push	ar3
	lcall	__divulong
	mov	_Display_num_65536_18,dpl
	mov	(_Display_num_65536_18 + 1),dph
	mov	(_Display_num_65536_18 + 2),b
	mov	(_Display_num_65536_18 + 3),a
	pop	ar3
;	./src/main.c:91: for (i = 1; i < 9; i++) {
	inc	r3
	cjne	r3,#0x09,00122$
00122$:
	jc	00106$
;	./src/main.c:96: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Calculate'
;------------------------------------------------------------
;operator                  Allocated with name '_Calculate_PARM_2'
;num2                      Allocated with name '_Calculate_PARM_3'
;num1                      Allocated to registers r0 r1 r2 r3 
;------------------------------------------------------------
;	./src/main.c:98: unsigned long Calculate(unsigned long num1, char operator, unsigned long num2) {
;	-----------------------------------------
;	 function Calculate
;	-----------------------------------------
_Calculate:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	./src/main.c:99: switch (operator) {
	mov	a,#0x10
	cjne	a,_Calculate_PARM_2,00123$
	sjmp	00101$
00123$:
	mov	a,#0x20
	cjne	a,_Calculate_PARM_2,00124$
	sjmp	00102$
00124$:
	mov	a,#0x40
;	./src/main.c:100: case 16: num1 += num2; break;
	cjne	a,_Calculate_PARM_2,00104$
	sjmp	00103$
00101$:
	mov	a,_Calculate_PARM_3
	add	a,r4
	mov	r0,a
	mov	a,(_Calculate_PARM_3 + 1)
	addc	a,r5
	mov	r1,a
	mov	a,(_Calculate_PARM_3 + 2)
	addc	a,r6
	mov	r2,a
	mov	a,(_Calculate_PARM_3 + 3)
	addc	a,r7
	mov	r3,a
;	./src/main.c:101: case 32: num1 -= num2; break;
	sjmp	00105$
00102$:
	mov	a,r4
	clr	c
	subb	a,_Calculate_PARM_3
	mov	r0,a
	mov	a,r5
	subb	a,(_Calculate_PARM_3 + 1)
	mov	r1,a
	mov	a,r6
	subb	a,(_Calculate_PARM_3 + 2)
	mov	r2,a
	mov	a,r7
	subb	a,(_Calculate_PARM_3 + 3)
	mov	r3,a
;	./src/main.c:102: case 64: num1 *= num2; break;
	sjmp	00105$
00103$:
	mov	__mullong_PARM_2,_Calculate_PARM_3
	mov	(__mullong_PARM_2 + 1),(_Calculate_PARM_3 + 1)
	mov	(__mullong_PARM_2 + 2),(_Calculate_PARM_3 + 2)
	mov	(__mullong_PARM_2 + 3),(_Calculate_PARM_3 + 3)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__mullong
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
;	./src/main.c:103: default: num1 /= num2;
	sjmp	00105$
00104$:
	mov	__divulong_PARM_2,_Calculate_PARM_3
	mov	(__divulong_PARM_2 + 1),(_Calculate_PARM_3 + 1)
	mov	(__divulong_PARM_2 + 2),(_Calculate_PARM_3 + 2)
	mov	(__divulong_PARM_2 + 3),(_Calculate_PARM_3 + 3)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
;	./src/main.c:104: }
00105$:
;	./src/main.c:105: return num1;
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
;	./src/main.c:106: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
