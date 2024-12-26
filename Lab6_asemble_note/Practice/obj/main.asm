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
	.globl _delay_ms
	.globl _Delay_Si
	.globl _Delay_La
	.globl _Delay_So
	.globl _Delay_Fa
	.globl _Delay_Mi
	.globl _Delay_Re
	.globl _Delay_Do
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
	.ds 33
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
;	./src/main.c:5: char note[33] = {'0', '1', '0', '1', '0', '5', '0', '5', '0', '6', '0', '6', '0', '5', '5', 
	mov	_note,#0x30
	mov	(_note + 0x0001),#0x31
	mov	(_note + 0x0002),#0x30
	mov	(_note + 0x0003),#0x31
	mov	(_note + 0x0004),#0x30
	mov	(_note + 0x0005),#0x35
	mov	(_note + 0x0006),#0x30
	mov	(_note + 0x0007),#0x35
	mov	(_note + 0x0008),#0x30
	mov	(_note + 0x0009),#0x36
	mov	(_note + 0x000a),#0x30
	mov	(_note + 0x000b),#0x36
	mov	(_note + 0x000c),#0x30
	mov	(_note + 0x000d),#0x35
	mov	(_note + 0x000e),#0x35
	mov	(_note + 0x000f),#0x30
	mov	(_note + 0x0010),#0x34
	mov	(_note + 0x0011),#0x30
	mov	(_note + 0x0012),#0x34
	mov	(_note + 0x0013),#0x30
	mov	(_note + 0x0014),#0x33
	mov	(_note + 0x0015),#0x30
	mov	(_note + 0x0016),#0x33
	mov	(_note + 0x0017),#0x30
	mov	(_note + 0x0018),#0x32
	mov	(_note + 0x0019),#0x30
	mov	(_note + 0x001a),#0x32
	mov	(_note + 0x001b),#0x30
	mov	(_note + 0x001c),#0x31
	mov	(_note + 0x001d),#0x31
	mov	(_note + 0x001e),#0x30
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
;x                         Allocated to registers r5 
;i                         Allocated to registers r6 r7 
;j                         Allocated to registers r3 r4 
;tar                       Allocated to registers 
;------------------------------------------------------------
;	./src/main.c:8: int main(void) {
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
;	./src/main.c:16: for (i=0;i<31;i++){
	mov	r6,#0x00
	mov	r7,#0x00
00153$:
;	./src/main.c:18: x = note[i];
	mov	a,r6
	add	a,#_note
	mov	r1,a
	mov	ar5,@r1
;	./src/main.c:20: if (x == '0'){
	cjne	r5,#0x30,00129$
;	./src/main.c:21: delay_ms(200);
	mov	dpl,#0xc8
	push	ar7
	push	ar6
	lcall	_delay_ms
	pop	ar6
	pop	ar7
	ljmp	00154$
00129$:
;	./src/main.c:22: }else if (x == '1'){
	cjne	r5,#0x31,00126$
;	./src/main.c:23: P1_7 = 0;
;	assignBit
	clr	_P1_7
;	./src/main.c:25: for (j=0;j < tar;j++){
	mov	r3,#0x00
	mov	r4,#0x00
00133$:
	clr	c
	mov	a,r3
	subb	a,#0x0b
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x82
	jnc	00101$
;	./src/main.c:26: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/main.c:27: Delay_Do();
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	lcall	_Delay_Do
;	./src/main.c:28: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/main.c:29: Delay_Do();
	lcall	_Delay_Do
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
;	./src/main.c:25: for (j=0;j < tar;j++){
	inc	r3
	cjne	r3,#0x00,00133$
	inc	r4
	sjmp	00133$
00101$:
;	./src/main.c:30: }P1_7 = 1;
;	assignBit
	setb	_P1_7
	ljmp	00154$
00126$:
;	./src/main.c:31: }else if (x == '2'){
	cjne	r5,#0x32,00123$
;	./src/main.c:32: P1_6 = 0;
;	assignBit
	clr	_P1_6
;	./src/main.c:34: for (j = 0;j<tar;j++){
	mov	r3,#0x00
	mov	r4,#0x00
00136$:
	clr	c
	mov	a,r3
	subb	a,#0x4c
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x82
	jnc	00102$
;	./src/main.c:35: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/main.c:36: Delay_Re();
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	lcall	_Delay_Re
;	./src/main.c:37: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/main.c:38: Delay_Re();
	lcall	_Delay_Re
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
;	./src/main.c:34: for (j = 0;j<tar;j++){
	inc	r3
	cjne	r3,#0x00,00136$
	inc	r4
	sjmp	00136$
00102$:
;	./src/main.c:39: }P1_6 = 1;
;	assignBit
	setb	_P1_6
	ljmp	00154$
00123$:
;	./src/main.c:40: }else if (x == '3'){
	cjne	r5,#0x33,00120$
;	./src/main.c:41: P1_5 = 0;
;	assignBit
	clr	_P1_5
;	./src/main.c:43: for (j=0;j<tar;j++){
	mov	r3,#0x00
	mov	r4,#0x00
00139$:
	clr	c
	mov	a,r3
	subb	a,#0x94
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x82
	jnc	00103$
;	./src/main.c:44: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/main.c:45: Delay_Mi();
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	lcall	_Delay_Mi
;	./src/main.c:46: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/main.c:47: Delay_Mi();
	lcall	_Delay_Mi
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
;	./src/main.c:43: for (j=0;j<tar;j++){
	inc	r3
	cjne	r3,#0x00,00139$
	inc	r4
	sjmp	00139$
00103$:
;	./src/main.c:48: }P1_5 = 1;
;	assignBit
	setb	_P1_5
	ljmp	00154$
00120$:
;	./src/main.c:49: }else if (x == '4'){
	cjne	r5,#0x34,00117$
;	./src/main.c:50: P1_4 = 0;
;	assignBit
	clr	_P1_4
;	./src/main.c:52: for (j=0;j<tar;j++){
	mov	r3,#0x00
	mov	r4,#0x00
00142$:
	clr	c
	mov	a,r3
	subb	a,#0xbb
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x82
	jnc	00104$
;	./src/main.c:53: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/main.c:54: Delay_Fa();
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	lcall	_Delay_Fa
;	./src/main.c:55: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/main.c:56: Delay_Fa();
	lcall	_Delay_Fa
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
;	./src/main.c:52: for (j=0;j<tar;j++){
	inc	r3
	cjne	r3,#0x00,00142$
	inc	r4
	sjmp	00142$
00104$:
;	./src/main.c:57: }P1_4 = 1;
;	assignBit
	setb	_P1_4
	ljmp	00154$
00117$:
;	./src/main.c:58: }else if (x == '5'){
	cjne	r5,#0x35,00114$
;	./src/main.c:59: P1_3 = 0;
;	assignBit
	clr	_P1_3
;	./src/main.c:61: for (j=0;j<tar;j++){ 
	mov	r3,#0x00
	mov	r4,#0x00
00145$:
	clr	c
	mov	a,r3
	subb	a,#0x10
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x83
	jnc	00105$
;	./src/main.c:62: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/main.c:63: Delay_So();
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	lcall	_Delay_So
;	./src/main.c:64: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/main.c:65: Delay_So();
	lcall	_Delay_So
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
;	./src/main.c:61: for (j=0;j<tar;j++){ 
	inc	r3
	cjne	r3,#0x00,00145$
	inc	r4
	sjmp	00145$
00105$:
;	./src/main.c:66: }P1_3 = 1;
;	assignBit
	setb	_P1_3
	sjmp	00154$
00114$:
;	./src/main.c:67: }else if (x == '6'){
	cjne	r5,#0x36,00111$
;	./src/main.c:68: P1_2 = 0;
;	assignBit
	clr	_P1_2
;	./src/main.c:70: for (j=0;j<tar;j++){
	mov	r3,#0x00
	mov	r4,#0x00
00148$:
	clr	c
	mov	a,r3
	subb	a,#0x70
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x83
	jnc	00106$
;	./src/main.c:71: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/main.c:72: Delay_La();
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	lcall	_Delay_La
;	./src/main.c:73: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/main.c:74: Delay_La();   
	lcall	_Delay_La
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
;	./src/main.c:70: for (j=0;j<tar;j++){
	inc	r3
	cjne	r3,#0x00,00148$
	inc	r4
	sjmp	00148$
00106$:
;	./src/main.c:75: }P1_2 = 1;
;	assignBit
	setb	_P1_2
	sjmp	00154$
00111$:
;	./src/main.c:76: }else if (x == '7'){
	cjne	r5,#0x37,00154$
;	./src/main.c:77: P1_1 = 0;
;	assignBit
	clr	_P1_1
;	./src/main.c:79: for (j=0;j<tar;j++){   
	mov	r4,#0x00
	mov	r5,#0x00
00151$:
	clr	c
	mov	a,r4
	subb	a,#0xdc
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x83
	jnc	00107$
;	./src/main.c:80: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/main.c:81: Delay_Si();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_Delay_Si
;	./src/main.c:82: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/main.c:83: Delay_Si();  
	lcall	_Delay_Si
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:79: for (j=0;j<tar;j++){   
	inc	r4
	cjne	r4,#0x00,00151$
	inc	r5
	sjmp	00151$
00107$:
;	./src/main.c:85: P1_1 = 1;
;	assignBit
	setb	_P1_1
00154$:
;	./src/main.c:16: for (i=0;i<31;i++){
	inc	r6
	cjne	r6,#0x00,00291$
	inc	r7
00291$:
	clr	c
	mov	a,r6
	subb	a,#0x1f
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00292$
	ljmp	00153$
00292$:
;	./src/main.c:88: return 0;
	mov	dptr,#0x0000
;	./src/main.c:89: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
