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
	.globl _INIT_MOVIE
	.globl _buzz_prog_en_error
	.globl _buzz_verify_error
	.globl _buzz_hal_ok
	.globl _AT89S51_Program_erase
	.globl _AT89S51_Program_read
	.globl _AT89S51_Program_write
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
	.globl _erase_flag
	.globl _read_flag
	.globl _write_flag
	.globl _error_flag
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
_error_flag::
	.ds 1
_write_flag::
	.ds 1
_read_flag::
	.ds 1
_erase_flag::
	.ds 1
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
;prebut1                   Allocated to registers r6 r7 
;prebut2                   Allocated to registers r4 r5 
;prebut3                   Allocated to registers r2 r3 
;------------------------------------------------------------
;	./src/main.c:12: void main(void)
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
;	./src/main.c:15: unsigned int prebut1 = 0;
	mov	r6,#0x00
	mov	r7,#0x00
;	./src/main.c:16: unsigned int prebut2 = 0;
	mov	r4,#0x00
	mov	r5,#0x00
;	./src/main.c:17: unsigned int prebut3 = 0;
	mov	r2,#0x00
	mov	r3,#0x00
;	./src/main.c:19: AT8051_MOSI = 1;			// set MOSI high
;	assignBit
	setb	_P0_0
;	./src/main.c:20: AT8051_MISO = 1;			// set MISO high
;	assignBit
	setb	_P0_1
;	./src/main.c:21: AT8051_SCK = 1;				// set SCK high
;	assignBit
	setb	_P0_2
;	./src/main.c:22: AT8051_RST = 0;				// set RST low
;	assignBit
	clr	_P0_3
;	./src/main.c:25: INIT_MOVIE();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_INIT_MOVIE
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:27: while (1) {
00135$:
;	./src/main.c:28: if ((but1 == 0) && (prebut1 == 1)) {
	jb	_P2_0,00109$
	cjne	r6,#0x01,00109$
	cjne	r7,#0x00,00109$
;	./src/main.c:29: delay_ms(10);
	mov	dptr,#0x000a
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_delay_ms
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	./src/main.c:30: if (but1 == 0) {
	jb	_P2_0,00109$
;	./src/main.c:32: write_flag = AT89S51_Program_write();
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_AT89S51_Program_write
	mov	_write_flag,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	./src/main.c:35: if (write_flag == HAL_OK) {	
	mov	a,_write_flag
	jnz	00104$
;	./src/main.c:36: LED = 0xFE;
	mov	_P1,#0xfe
;	./src/main.c:37: buzz_hal_ok();
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_buzz_hal_ok
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	sjmp	00109$
00104$:
;	./src/main.c:39: else if (write_flag == HAL_Prog_En_ERROR) {
	mov	a,#0x01
	cjne	a,_write_flag,00109$
;	./src/main.c:40: LED = ~(0x80);
	mov	_P1,#0x7f
;	./src/main.c:41: buzz_prog_en_error();
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_buzz_prog_en_error
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
00109$:
;	./src/main.c:46: if ((but2 == 0) && (prebut2 == 1)) {
	jb	_P2_1,00122$
	cjne	r4,#0x01,00122$
	cjne	r5,#0x00,00122$
;	./src/main.c:47: delay_ms(10);
	mov	dptr,#0x000a
	push	ar3
	push	ar2
	lcall	_delay_ms
	pop	ar2
	pop	ar3
;	./src/main.c:48: if (but2 == 0) {
	jb	_P2_1,00122$
;	./src/main.c:50: read_flag=AT89S51_Program_read();
	push	ar3
	push	ar2
	lcall	_AT89S51_Program_read
	mov	_read_flag,dpl
	pop	ar2
	pop	ar3
;	./src/main.c:53: if (read_flag == HAL_OK) {	
	mov	a,_read_flag
	jnz	00117$
;	./src/main.c:54: LED = 0xFC;
	mov	_P1,#0xfc
;	./src/main.c:55: buzz_hal_ok();
	push	ar3
	push	ar2
	lcall	_buzz_hal_ok
	pop	ar2
	pop	ar3
	sjmp	00122$
00117$:
;	./src/main.c:57: else if (read_flag == HAL_Prog_En_ERROR) {
	mov	a,#0x01
	cjne	a,_read_flag,00114$
;	./src/main.c:58: LED = ~(0x80);
	mov	_P1,#0x7f
;	./src/main.c:59: buzz_prog_en_error();
	push	ar3
	push	ar2
	lcall	_buzz_prog_en_error
	pop	ar2
	pop	ar3
	sjmp	00122$
00114$:
;	./src/main.c:61: else if (read_flag == HAL_Verify_ERROR) {
	mov	a,#0x02
	cjne	a,_read_flag,00122$
;	./src/main.c:62: LED = ~(0x40);
	mov	_P1,#0xbf
;	./src/main.c:63: buzz_verify_error();
	push	ar3
	push	ar2
	lcall	_buzz_verify_error
	pop	ar2
	pop	ar3
00122$:
;	./src/main.c:68: if ((but3 == 0) && (prebut3 == 1)) {
	jb	_P3_2,00132$
	cjne	r2,#0x01,00132$
	cjne	r3,#0x00,00132$
;	./src/main.c:69: delay_ms(10);
	mov	dptr,#0x000a
	lcall	_delay_ms
;	./src/main.c:70: if (but3 == 0) {
	jb	_P3_2,00132$
;	./src/main.c:72: erase_flag = AT89S51_Program_erase();
	lcall	_AT89S51_Program_erase
;	./src/main.c:75: if (erase_flag == HAL_OK) {	
	mov	a,dpl
	mov	_erase_flag,a
	jnz	00127$
;	./src/main.c:76: LED = 0xF8;
	mov	_P1,#0xf8
;	./src/main.c:77: buzz_hal_ok();
	lcall	_buzz_hal_ok
	sjmp	00132$
00127$:
;	./src/main.c:79: else if (erase_flag == HAL_Prog_En_ERROR) {
	mov	a,#0x01
	cjne	a,_erase_flag,00132$
;	./src/main.c:80: LED = ~(0x80);
	mov	_P1,#0x7f
;	./src/main.c:81: buzz_prog_en_error();
	lcall	_buzz_prog_en_error
00132$:
;	./src/main.c:87: prebut1 = but1;
	mov	c,_P2_0
	clr	a
	rlc	a
	mov	r6,a
	mov	r7,#0x00
;	./src/main.c:88: prebut2 = but2;
	mov	c,_P2_1
	clr	a
	rlc	a
	mov	r4,a
	mov	r5,#0x00
;	./src/main.c:89: prebut3 = but3;	
	mov	c,_P3_2
	clr	a
	rlc	a
	mov	r2,a
	mov	r3,#0x00
;	./src/main.c:90: delay_ms(20);
	mov	dptr,#0x0014
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_delay_ms
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:92: }
	ljmp	00135$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
