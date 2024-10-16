;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module GetKey
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _Get_Key
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
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Get_Key'
;------------------------------------------------------------
;	./src/GetKey.c:20: unsigned char Get_Key(void){
;	-----------------------------------------
;	 function Get_Key
;	-----------------------------------------
_Get_Key:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/GetKey.c:22: if (BUT1 == 0)return 10; // OP
	jb	_P3_2,00102$
	mov	dpl,#0x0a
	ret
00102$:
;	./src/GetKey.c:23: if (BUT2 == 0)return 11; // back
	jb	_P3_3,00104$
	mov	dpl,#0x0b
	ret
00104$:
;	./src/GetKey.c:24: if (BUT3 == 0)return 12; // AC
	jb	_P2_0,00106$
	mov	dpl,#0x0c
	ret
00106$:
;	./src/GetKey.c:25: if (BUT4 == 0)return 13; // eqal
	jb	_P2_1,00108$
	mov	dpl,#0x0d
	ret
00108$:
;	./src/GetKey.c:28: C1 = 1;
;	assignBit
	setb	_P0_1
;	./src/GetKey.c:29: C2 = 1;
;	assignBit
	setb	_P0_2
;	./src/GetKey.c:30: C3 = 1;
;	assignBit
	setb	_P0_3
;	./src/GetKey.c:32: R1 = 0;
;	assignBit
	clr	_P0_4
;	./src/GetKey.c:33: R2 = 1;
;	assignBit
	setb	_P0_5
;	./src/GetKey.c:34: R3 = 1;
;	assignBit
	setb	_P0_6
;	./src/GetKey.c:35: R4 = 1;
;	assignBit
	setb	_P0_7
;	./src/GetKey.c:36: if (C1 == 0){
	jb	_P0_1,00110$
;	./src/GetKey.c:37: return 7;
	mov	dpl,#0x07
	ret
00110$:
;	./src/GetKey.c:39: if (C2 == 0){
	jb	_P0_2,00112$
;	./src/GetKey.c:40: return 8;
	mov	dpl,#0x08
	ret
00112$:
;	./src/GetKey.c:42: if (C3 == 0){
	jb	_P0_3,00114$
;	./src/GetKey.c:43: return 9;
	mov	dpl,#0x09
	ret
00114$:
;	./src/GetKey.c:46: R1 = 1;
;	assignBit
	setb	_P0_4
;	./src/GetKey.c:47: R2 = 0;
;	assignBit
	clr	_P0_5
;	./src/GetKey.c:48: R3 = 1;
;	assignBit
	setb	_P0_6
;	./src/GetKey.c:49: R4 = 1;
;	assignBit
	setb	_P0_7
;	./src/GetKey.c:50: if (C1 == 0){
	jb	_P0_1,00116$
;	./src/GetKey.c:51: return 4;
	mov	dpl,#0x04
	ret
00116$:
;	./src/GetKey.c:53: if (C2 == 0){
	jb	_P0_2,00118$
;	./src/GetKey.c:54: return 5;
	mov	dpl,#0x05
	ret
00118$:
;	./src/GetKey.c:56: if (C3 == 0){
	jb	_P0_3,00120$
;	./src/GetKey.c:57: return 6;
	mov	dpl,#0x06
	ret
00120$:
;	./src/GetKey.c:60: R1 = 1;
;	assignBit
	setb	_P0_4
;	./src/GetKey.c:61: R2 = 1;
;	assignBit
	setb	_P0_5
;	./src/GetKey.c:62: R3 = 0;
;	assignBit
	clr	_P0_6
;	./src/GetKey.c:63: R4 = 1;
;	assignBit
	setb	_P0_7
;	./src/GetKey.c:64: if (C1 == 0){
	jb	_P0_1,00122$
;	./src/GetKey.c:65: return 1;
	mov	dpl,#0x01
	ret
00122$:
;	./src/GetKey.c:67: if (C2 == 0){
	jb	_P0_2,00124$
;	./src/GetKey.c:68: return 2;
	mov	dpl,#0x02
	ret
00124$:
;	./src/GetKey.c:70: if (C3 == 0){
	jb	_P0_3,00126$
;	./src/GetKey.c:71: return 3;
	mov	dpl,#0x03
	ret
00126$:
;	./src/GetKey.c:75: R1 = 1;
;	assignBit
	setb	_P0_4
;	./src/GetKey.c:76: R2 = 1;
;	assignBit
	setb	_P0_5
;	./src/GetKey.c:77: R3 = 1;
;	assignBit
	setb	_P0_6
;	./src/GetKey.c:78: R4 = 0;
;	assignBit
	clr	_P0_7
;	./src/GetKey.c:79: if (C2 == 0){
	jb	_P0_2,00128$
;	./src/GetKey.c:80: return 0;
	mov	dpl,#0x00
	ret
00128$:
;	./src/GetKey.c:84: return 15;
	mov	dpl,#0x0f
;	./src/GetKey.c:85: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
