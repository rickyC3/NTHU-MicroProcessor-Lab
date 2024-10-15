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
	.globl _Initial
	.globl _Write7219
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
	.globl _decoder
	.globl _ans
	.globl _cnt
	.globl _hall_last_state
	.globl _hall_ms
	.globl _Display
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
_hall_ms::
	.ds 2
_hall_last_state::
	.ds 1
_cnt::
	.ds 2
_ans::
	.ds 2
_decoder::
	.ds 10
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
;	./src/main.c:8: int hall_ms = 0;									// counter of the time elapsed
	clr	a
	mov	_hall_ms,a
	mov	(_hall_ms + 1),a
;	./src/main.c:9: char hall_last_state = 0;							// Record activation and deactivation of Hall sensor
;	1-genFromRTrack replaced	mov	_hall_last_state,#0x00
	mov	_hall_last_state,a
;	./src/main.c:10: int cnt = 0;
	mov	_cnt,a
	mov	(_cnt + 1),a
;	./src/main.c:11: int ans = 0;
	mov	_ans,a
	mov	(_ans + 1),a
;	./src/main.c:13: char decoder[10] = {
	mov	_decoder,#0x7e
	mov	(_decoder + 0x0001),#0x30
	mov	(_decoder + 0x0002),#0x6d
	mov	(_decoder + 0x0003),#0x79
	mov	(_decoder + 0x0004),#0x33
	mov	(_decoder + 0x0005),#0x5b
	mov	(_decoder + 0x0006),#0x5f
	mov	(_decoder + 0x0007),#0x70
	mov	(_decoder + 0x0008),#0x7f
	mov	(_decoder + 0x0009),#0x7b
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
;	./src/main.c:28: void T0_isr(void) __interrupt (1)						// Interrupt routine w/ priority 1
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
;	./src/main.c:30: TH0 = (65536-1000) / 256;			// Reset higher 8 bits of Timer 0
	mov	_TH0,#0xfc
;	./src/main.c:31: TL0 = (65536-1000) % 256;			// Reset lower 8 bits of Timer 0
	mov	_TL0,#0x18
;	./src/main.c:33: if (hall_last_state == 1 && Hall_In == 0){
	mov	a,#0x01
	cjne	a,_hall_last_state,00102$
	jb	_P2_4,00102$
;	./src/main.c:34: ans = cnt;
	mov	_ans,_cnt
	mov	(_ans + 1),(_cnt + 1)
;	./src/main.c:35: cnt = 0;
	clr	a
	mov	_cnt,a
	mov	(_cnt + 1),a
;	./src/main.c:36: Display();
	lcall	_Display
	sjmp	00103$
00102$:
;	./src/main.c:38: cnt++;
	inc	_cnt
	clr	a
	cjne	a,_cnt,00118$
	inc	(_cnt + 1)
00118$:
00103$:
;	./src/main.c:39: }hall_last_state = Hall_In;
	mov	c,_P2_4
	clr	a
	rlc	a
	mov	_hall_last_state,a
;	./src/main.c:43: }
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
;	./src/main.c:45: int main(void) {		
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./src/main.c:48: TMOD = 0x01;											// Set Timer 1 to  mode 0 & T imer 0 mode 1. (16-bit timer)
	mov	_TMOD,#0x01
;	./src/main.c:49: TH0 = (65536-1000) / 256;					// Load initial higher 8 bits into Timer 0
	mov	_TH0,#0xfc
;	./src/main.c:50: TL0 = (65536-1000) % 256;					// Load initial lower 8 bits into Timer 0
	mov	_TL0,#0x18
;	./src/main.c:51: ET0 = 1;													// Enable Timer 0 interrupt
;	assignBit
	setb	_ET0
;	./src/main.c:52: EA = 1;														// Enable all interrupt
;	assignBit
	setb	_EA
;	./src/main.c:53: TR0 = 1;													// Start Timer 0
;	assignBit
	setb	_TR0
;	./src/main.c:54: Initial();                  			//MAX7219 initialize
	lcall	_Initial
;	./src/main.c:55: cnt = 0;
	clr	a
	mov	_cnt,a
	mov	(_cnt + 1),a
;	./src/main.c:56: Hall_In = 1;              // Initialize Hall sensor signal (deactivated)
;	assignBit
	setb	_P2_4
;	./src/main.c:58: while(1){
00102$:
;	./src/main.c:62: }
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'Display'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:64: void Display(void){
;	-----------------------------------------
;	 function Display
;	-----------------------------------------
_Display:
;	./src/main.c:66: Write7219(1, decoder[ans%10]);ans/=10;
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_ans
	mov	dph,(_ans + 1)
	lcall	__modsint
	mov	r6,dpl
	mov	a,r6
	add	a,#_decoder
	mov	r1,a
	mov	_Write7219_PARM_2,@r1
	mov	dpl,#0x01
	lcall	_Write7219
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,_ans
	mov	dph,(_ans + 1)
	lcall	__divsint
	mov	_ans,dpl
	mov	(_ans + 1),dph
;	./src/main.c:67: for (i = 2;i<9;i++){
	mov	r7,#0x02
00108$:
;	./src/main.c:69: if (i == 4)Write7219(i, decoder[ans%10] | 0b10000000);
	cjne	r7,#0x04,00105$
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_ans
	mov	dph,(_ans + 1)
	push	ar7
	lcall	__modsint
	mov	r5,dpl
	pop	ar7
	mov	a,r5
	add	a,#_decoder
	mov	r1,a
	mov	ar6,@r1
	mov	a,#0x80
	orl	a,r6
	mov	_Write7219_PARM_2,a
	mov	dpl,r7
	push	ar7
	lcall	_Write7219
	pop	ar7
	sjmp	00106$
00105$:
;	./src/main.c:70: else if (ans) Write7219(i, decoder[ans%10] );
	mov	a,_ans
	orl	a,(_ans + 1)
	jz	00102$
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_ans
	mov	dph,(_ans + 1)
	push	ar7
	lcall	__modsint
	mov	r5,dpl
	pop	ar7
	mov	a,r5
	add	a,#_decoder
	mov	r1,a
	mov	_Write7219_PARM_2,@r1
	mov	dpl,r7
	push	ar7
	lcall	_Write7219
	pop	ar7
	sjmp	00106$
00102$:
;	./src/main.c:71: else Write7219(i, 0x00);
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_Write7219
	pop	ar7
00106$:
;	./src/main.c:72: ans/=10;
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,_ans
	mov	dph,(_ans + 1)
	push	ar7
	lcall	__divsint
	mov	_ans,dpl
	mov	(_ans + 1),dph
	pop	ar7
;	./src/main.c:67: for (i = 2;i<9;i++){
	inc	r7
	cjne	r7,#0x09,00128$
00128$:
	jnc	00129$
	ljmp	00108$
00129$:
;	./src/main.c:76: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
