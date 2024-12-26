;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.0 #14184 (MINGW32)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _Initial7219
	.globl _Write7219
	.globl _Get_Key
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
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_main_tmp_65536_34:
	.ds 1
_main_seg_65536_34:
	.ds 9
_Display_seg_65536_51:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
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
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
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
;Key                       Allocated to registers r5 r6 
;tmp                       Allocated with name '_main_tmp_65536_34'
;patt                      Allocated to registers r7 
;seg                       Allocated with name '_main_seg_65536_34'
;i                         Allocated to registers r3 r4 
;------------------------------------------------------------
;	./src/main.c:32: void main(void)
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
;	./src/main.c:36: unsigned char tmp[] = {};
	mov	_main_tmp_65536_34,#0x00
;	./src/main.c:37: unsigned char patt = 0x88;
	mov	r7,#0x88
;	./src/main.c:38: unsigned char seg[] = {
	mov	_main_seg_65536_34,#0x00
	mov	(_main_seg_65536_34 + 0x0001),#0x7e
	mov	(_main_seg_65536_34 + 0x0002),#0x00
	mov	(_main_seg_65536_34 + 0x0003),#0x00
	mov	(_main_seg_65536_34 + 0x0004),#0x00
	mov	(_main_seg_65536_34 + 0x0005),#0x00
	mov	(_main_seg_65536_34 + 0x0006),#0x00
	mov	(_main_seg_65536_34 + 0x0007),#0x00
	mov	(_main_seg_65536_34 + 0x0008),#0x00
;	./src/main.c:50: Initial7219();					// MAX7219 initialize
	push	ar7
	lcall	_Initial7219
	pop	ar7
;	./src/main.c:53: while (1) 
00135$:
;	./src/main.c:57: Key = Get_Key();
	push	ar7
	lcall	_Get_Key
;	./src/main.c:58: delay_ms(90);
	mov	dptr,#0x005a
	lcall	_delay_ms
;	./src/main.c:59: Key = Get_Key();
	lcall	_Get_Key
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
;	./src/main.c:61: if(Key == Key && Key != 0){
	mov	a,r5
	orl	a,r6
	jnz	00209$
	ljmp	00131$
00209$:
;	./src/main.c:62: if (seg[1] == 0b01111110)seg[1] = 0;
	mov	a,#0x7e
	cjne	a,(_main_seg_65536_34 + 0x0001),00145$
	mov	(_main_seg_65536_34 + 0x0001),#0x00
;	./src/main.c:63: for (i=8;i>=2;i--){
00145$:
	mov	r3,#0x08
	mov	r4,#0x00
00137$:
;	./src/main.c:64: seg[i] = seg[i-1];
	mov	a,r3
	add	a,#_main_seg_65536_34
	mov	r1,a
	mov	ar2,r3
	mov	a,r2
	dec	a
	add	a,#_main_seg_65536_34
	mov	r0,a
	mov	ar2,@r0
	mov	@r1,ar2
;	./src/main.c:63: for (i=8;i>=2;i--){
	dec	r3
	cjne	r3,#0xff,00212$
	dec	r4
00212$:
	clr	c
	mov	a,r3
	subb	a,#0x02
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00137$
;	./src/main.c:66: if (Key == 1){
	cjne	r5,#0x01,00128$
	cjne	r6,#0x00,00128$
;	./src/main.c:67: seg[1] = 0b00110000;
	mov	(_main_seg_65536_34 + 0x0001),#0x30
;	./src/main.c:68: patt = 0x01;
	mov	r7,#0x01
	sjmp	00131$
00128$:
;	./src/main.c:69: }else if (Key == 2){
	cjne	r5,#0x02,00125$
	cjne	r6,#0x00,00125$
;	./src/main.c:70: seg[1] = 0b01101101;
	mov	(_main_seg_65536_34 + 0x0001),#0x6d
;	./src/main.c:71: patt = 0x02;
	mov	r7,#0x02
	sjmp	00131$
00125$:
;	./src/main.c:72: }else if (Key == 3){
	cjne	r5,#0x03,00122$
	cjne	r6,#0x00,00122$
;	./src/main.c:73: seg[1] = 0b01111001;
	mov	(_main_seg_65536_34 + 0x0001),#0x79
;	./src/main.c:74: patt = 0x04;
	mov	r7,#0x04
	sjmp	00131$
00122$:
;	./src/main.c:75: }else if (Key == 4){
	cjne	r5,#0x04,00119$
	cjne	r6,#0x00,00119$
;	./src/main.c:76: seg[1] = 0b00110011;
	mov	(_main_seg_65536_34 + 0x0001),#0x33
;	./src/main.c:77: patt = 0x08;
	mov	r7,#0x08
	sjmp	00131$
00119$:
;	./src/main.c:78: }else if (Key == 5){
	cjne	r5,#0x05,00116$
	cjne	r6,#0x00,00116$
;	./src/main.c:79: seg[1] = 0b01011011;
	mov	(_main_seg_65536_34 + 0x0001),#0x5b
;	./src/main.c:80: patt = 0x10;
	mov	r7,#0x10
	sjmp	00131$
00116$:
;	./src/main.c:81: }else if (Key == 6){
	cjne	r5,#0x06,00113$
	cjne	r6,#0x00,00113$
;	./src/main.c:82: seg[1] = 0b01011111;
	mov	(_main_seg_65536_34 + 0x0001),#0x5f
;	./src/main.c:83: patt = 0x20;
	mov	r7,#0x20
	sjmp	00131$
00113$:
;	./src/main.c:84: }else if (Key == 7){
	cjne	r5,#0x07,00110$
	cjne	r6,#0x00,00110$
;	./src/main.c:85: seg[1] = 0b01110000;
	mov	(_main_seg_65536_34 + 0x0001),#0x70
;	./src/main.c:86: patt = 0x40;
	mov	r7,#0x40
	sjmp	00131$
00110$:
;	./src/main.c:87: }else if (Key == 8){
	cjne	r5,#0x08,00107$
	cjne	r6,#0x00,00107$
;	./src/main.c:88: seg[1] = 0b01111111;
	mov	(_main_seg_65536_34 + 0x0001),#0x7f
;	./src/main.c:89: patt = 0x80;
	mov	r7,#0x80
	sjmp	00131$
00107$:
;	./src/main.c:90: }else if (Key == 9){
	cjne	r5,#0x09,00131$
	cjne	r6,#0x00,00131$
;	./src/main.c:91: seg[1] = 0b01111011;
	mov	(_main_seg_65536_34 + 0x0001),#0x7b
;	./src/main.c:92: patt = 0x81;
	mov	r7,#0x81
00131$:
;	./src/main.c:99: led = ~patt;
	mov	a,r7
	cpl	a
	mov	_P1,a
;	./src/main.c:104: for (i = 8; i >= 1; i--) {
	mov	r5,#0x08
	mov	r6,#0x00
00139$:
;	./src/main.c:105: Write7219(i, seg[i]);
	mov	a,r5
	mov	dpl,a
	add	a,#_main_seg_65536_34
	mov	r1,a
	mov	_Write7219_PARM_2,@r1
	push	ar7
	push	ar6
	push	ar5
	lcall	_Write7219
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:104: for (i = 8; i >= 1; i--) {
	dec	r5
	cjne	r5,#0xff,00232$
	dec	r6
00232$:
	clr	c
	mov	a,r5
	subb	a,#0x01
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00139$
;	./src/main.c:109: }
	ljmp	00135$
;------------------------------------------------------------
;Allocation info for local variables in function 'Display'
;------------------------------------------------------------
;seg                       Allocated with name '_Display_seg_65536_51'
;i                         Allocated to registers r3 r4 
;------------------------------------------------------------
;	./src/main.c:111: void Display(unsigned char seg[]) 
;	-----------------------------------------
;	 function Display
;	-----------------------------------------
_Display:
	mov	_Display_seg_65536_51,dpl
	mov	(_Display_seg_65536_51 + 1),dph
	mov	(_Display_seg_65536_51 + 2),b
;	./src/main.c:117: for (i = 8; i >= 1; i--) {
00109$:
	mov	r3,#0x08
	mov	r4,#0x00
00105$:
;	./src/main.c:118: Write7219(i, seg[(i + 8) % 8]);
	mov	ar2,r3
	mov	a,#0x08
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x08
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar4
	push	ar3
	push	ar2
	lcall	__modsint
	mov	r0,dpl
	mov	r1,dph
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,r0
	add	a,_Display_seg_65536_51
	mov	r0,a
	mov	a,r1
	addc	a,(_Display_seg_65536_51 + 1)
	mov	r1,a
	mov	r7,(_Display_seg_65536_51 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	_Write7219_PARM_2,a
	mov	dpl,r2
	push	ar4
	push	ar3
	lcall	_Write7219
	pop	ar3
	pop	ar4
;	./src/main.c:117: for (i = 8; i >= 1; i--) {
	dec	r3
	cjne	r3,#0xff,00122$
	dec	r4
00122$:
	clr	c
	mov	a,r3
	subb	a,#0x01
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00105$
;	./src/main.c:122: }
	sjmp	00109$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
