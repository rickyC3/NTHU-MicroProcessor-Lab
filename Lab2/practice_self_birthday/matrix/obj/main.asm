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
	.globl _Initial7219
	.globl _Writesingle7219
	.globl _delay_ms
	.globl _Play_Music
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
	.globl _hi
	.globl _note
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
_note::
	.ds 25
_hi::
	.ds 78
_main_x_65536_15:
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
;	./src/main.c:20: char note[25] = {'1', '1', '2', '1', '4', '3',
	mov	_note,#0x31
	mov	(_note + 0x0001),#0x31
	mov	(_note + 0x0002),#0x32
	mov	(_note + 0x0003),#0x31
	mov	(_note + 0x0004),#0x34
	mov	(_note + 0x0005),#0x33
	mov	(_note + 0x0006),#0x31
	mov	(_note + 0x0007),#0x31
	mov	(_note + 0x0008),#0x32
	mov	(_note + 0x0009),#0x31
	mov	(_note + 0x000a),#0x35
	mov	(_note + 0x000b),#0x34
	mov	(_note + 0x000c),#0x31
	mov	(_note + 0x000d),#0x31
	mov	(_note + 0x000e),#0x37
	mov	(_note + 0x000f),#0x36
	mov	(_note + 0x0010),#0x34
	mov	(_note + 0x0011),#0x33
	mov	(_note + 0x0012),#0x34
	mov	(_note + 0x0013),#0x34
	mov	(_note + 0x0014),#0x33
	mov	(_note + 0x0015),#0x31
	mov	(_note + 0x0016),#0x32
	mov	(_note + 0x0017),#0x31
;	./src/main.c:25: unsigned char hi[] = {
	mov	_hi,#0x00
	mov	(_hi + 0x0001),#0xfe
	mov	(_hi + 0x0002),#0x10
	mov	(_hi + 0x0003),#0x10
	mov	(_hi + 0x0004),#0x10
	mov	(_hi + 0x0005),#0xfe
	mov	(_hi + 0x0006),#0x00
	mov	(_hi + 0x0007),#0x7e
	mov	(_hi + 0x0008),#0x90
	mov	(_hi + 0x0009),#0x90
	mov	(_hi + 0x000a),#0x90
	mov	(_hi + 0x000b),#0x7e
	mov	(_hi + 0x000c),#0x00
	mov	(_hi + 0x000d),#0x70
	mov	(_hi + 0x000e),#0x90
	mov	(_hi + 0x000f),#0x90
	mov	(_hi + 0x0010),#0x90
	mov	(_hi + 0x0011),#0xfe
	mov	(_hi + 0x0012),#0x00
	mov	(_hi + 0x0013),#0x60
	mov	(_hi + 0x0014),#0x90
	mov	(_hi + 0x0015),#0x90
	mov	(_hi + 0x0016),#0x90
	mov	(_hi + 0x0017),#0xfe
	mov	(_hi + 0x0018),#0x00
	mov	(_hi + 0x0019),#0xe0
	mov	(_hi + 0x001a),#0x18
	mov	(_hi + 0x001b),#0x06
	mov	(_hi + 0x001c),#0x18
	mov	(_hi + 0x001d),#0xe0
	mov	(_hi + 0x001e),#0x00
	mov	(_hi + 0x001f),#0x6c
	mov	(_hi + 0x0020),#0x92
	mov	(_hi + 0x0021),#0x92
	mov	(_hi + 0x0022),#0x92
	mov	(_hi + 0x0023),#0xfe
	mov	(_hi + 0x0024),#0x00
	mov	(_hi + 0x0025),#0x82
	mov	(_hi + 0x0026),#0x82
	mov	(_hi + 0x0027),#0xfe
	mov	(_hi + 0x0028),#0x82
	mov	(_hi + 0x0029),#0x82
	mov	(_hi + 0x002a),#0x00
	mov	(_hi + 0x002b),#0x6e
	mov	(_hi + 0x002c),#0x90
	mov	(_hi + 0x002d),#0x90
	mov	(_hi + 0x002e),#0x90
	mov	(_hi + 0x002f),#0xfe
	mov	(_hi + 0x0030),#0x00
	mov	(_hi + 0x0031),#0x80
	mov	(_hi + 0x0032),#0x80
	mov	(_hi + 0x0033),#0xfe
	mov	(_hi + 0x0034),#0x80
	mov	(_hi + 0x0035),#0x80
	mov	(_hi + 0x0036),#0x00
	mov	(_hi + 0x0037),#0xfe
	mov	(_hi + 0x0038),#0x10
	mov	(_hi + 0x0039),#0x10
	mov	(_hi + 0x003a),#0x10
	mov	(_hi + 0x003b),#0xfe
	mov	(_hi + 0x003c),#0x00
	mov	(_hi + 0x003d),#0x7c
	mov	(_hi + 0x003e),#0x82
	mov	(_hi + 0x003f),#0x82
	mov	(_hi + 0x0040),#0x82
	mov	(_hi + 0x0041),#0xfe
	mov	(_hi + 0x0042),#0x00
	mov	(_hi + 0x0043),#0x7e
	mov	(_hi + 0x0044),#0x90
	mov	(_hi + 0x0045),#0x90
	mov	(_hi + 0x0046),#0x90
	mov	(_hi + 0x0047),#0x7e
	mov	(_hi + 0x0048),#0x00
	mov	(_hi + 0x0049),#0xe0
	mov	(_hi + 0x004a),#0x18
	mov	(_hi + 0x004b),#0x06
	mov	(_hi + 0x004c),#0x18
	mov	(_hi + 0x004d),#0xe0
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
;shift                     Allocated to registers r7 
;i                         Allocated to registers r5 
;x                         Allocated with name '_main_x_65536_15'
;------------------------------------------------------------
;	./src/main.c:109: void main(void)
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
;	./src/main.c:111: unsigned char shift = 0;
	mov	r7,#0x00
;	./src/main.c:113: unsigned char x = 0;
;	1-genFromRTrack replaced	mov	_main_x_65536_15,#0x00
	mov	_main_x_65536_15,r7
;	./src/main.c:121: Initial7219();				 // MAX7219 initialize
	push	ar7
	lcall	_Initial7219
;	./src/main.c:122: delay_ms(2000);
	mov	dptr,#0x07d0
	lcall	_delay_ms
	pop	ar7
;	./src/main.c:124: for (i = 8; i >= 1; i--) {
00111$:
	mov	r5,#0x08
00107$:
;	./src/main.c:125: Writesingle7219(1, i, hi[(shift + i - 1) % 78]);
	mov	ar3,r7
	mov	r4,#0x00
	mov	ar2,r5
	mov	r6,#0x00
	mov	a,r2
	add	a,r3
	mov	r3,a
	mov	a,r6
	addc	a,r4
	mov	r4,a
	mov	a,r3
	add	a,#0xff
	mov	dpl,a
	mov	a,r4
	addc	a,#0xff
	mov	dph,a
	mov	__modsint_PARM_2,#0x4e
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r6
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	lcall	__modsint
	mov	r2,dpl
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,r2
	add	a,#_hi
	mov	r1,a
	mov	_Writesingle7219_PARM_3,@r1
	mov	_Writesingle7219_PARM_2,r5
	mov	dpl,#0x01
	push	ar5
	push	ar4
	push	ar3
	lcall	_Writesingle7219
	pop	ar3
	pop	ar4
;	./src/main.c:126: Writesingle7219(2, i, hi[(shift + i + 8 - 1) % 78]);
	mov	a,#0x07
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x4e
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r4,dpl
	pop	ar5
	mov	a,r4
	add	a,#_hi
	mov	r1,a
	mov	_Writesingle7219_PARM_3,@r1
	mov	_Writesingle7219_PARM_2,r5
	mov	dpl,#0x02
	push	ar5
	lcall	_Writesingle7219
	pop	ar5
	pop	ar7
;	./src/main.c:124: for (i = 8; i >= 1; i--) {
	dec	r5
	cjne	r5,#0x01,00128$
00128$:
	jnc	00107$
;	./src/main.c:128: shift += 1;
	mov	ar6,r7
	mov	a,r6
	inc	a
	mov	r7,a
;	./src/main.c:129: if (shift == 79) shift = 0;
	cjne	r7,#0x4f,00103$
	mov	r7,#0x00
00103$:
;	./src/main.c:130: delay_ms(50);
	mov	dptr,#0x0032
	push	ar7
	lcall	_delay_ms
;	./src/main.c:131: Play_Music(note[x]);
	mov	a,_main_x_65536_15
	add	a,#_note
	mov	r1,a
	mov	dpl,@r1
	lcall	_Play_Music
;	./src/main.c:133: x = (x+1)%25;
	mov	r5,_main_x_65536_15
	mov	r6,#0x00
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	mov	__modsint_PARM_2,#0x19
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r6
	lcall	__modsint
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
	mov	_main_x_65536_15,r5
;	./src/main.c:135: }
	ljmp	00111$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
