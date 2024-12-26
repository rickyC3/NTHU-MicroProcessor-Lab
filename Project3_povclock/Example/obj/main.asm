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
	.globl _Time
	.globl _EX0_int
	.globl _Rotate
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
	.globl _time
	.globl _tmp
	.globl _CntOfSecond
	.globl _cnt
	.globl _clock
	.globl _revise
	.globl _num
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
_num::
	.ds 1
_revise::
	.ds 1
_clock::
	.ds 6
_cnt::
	.ds 2
_CntOfSecond::
	.ds 2
_tmp::
	.ds 2
_time::
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
	ljmp	_Time
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
;	./src/main.c:3: char num = 0, revise = 0;
	mov	_num,#0x00
;	./src/main.c:3: int clock[3] = {0, 20, 40}, cnt = 0, CntOfSecond = 0, tmp = 0, time = 0;
	mov	_revise,#0x00
;	./src/main.c:4: 
	clr	a
	mov	(_clock + 0),a
	mov	(_clock + 1),a
	mov	((_clock + 0x0002) + 0),#0x14
;	1-genFromRTrack replaced	mov	((_clock + 0x0002) + 1),#0x00
	mov	((_clock + 0x0002) + 1),a
	mov	((_clock + 0x0004) + 0),#0x28
;	1-genFromRTrack replaced	mov	((_clock + 0x0004) + 1),#0x00
	mov	((_clock + 0x0004) + 1),a
;	./src/main.c:4: int clock[3] = {0, 20, 40}, cnt = 0, CntOfSecond = 0, tmp = 0, time = 0;
	mov	_cnt,a
	mov	(_cnt + 1),a
;	./src/main.c:4: 
	mov	_CntOfSecond,a
	mov	(_CntOfSecond + 1),a
;	./src/main.c:4: int clock[3] = {0, 20, 40}, cnt = 0, CntOfSecond = 0, tmp = 0, time = 0;
	mov	_tmp,a
	mov	(_tmp + 1),a
;	./src/main.c:4: 
	mov	_time,a
	mov	(_time + 1),a
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
;Allocation info for local variables in function 'Rotate'
;------------------------------------------------------------
;	./src/main.c:6: void Rotate(void) {
;	-----------------------------------------
;	 function Rotate
;	-----------------------------------------
_Rotate:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/main.c:7: clock[0]--;
	mov	r6,(_clock + 0)
	mov	r7,(_clock + 1)
	dec	r6
	cjne	r6,#0xff,00133$
	dec	r7
00133$:
	mov	(_clock + 0),r6
	mov	(_clock + 1),r7
;	./src/main.c:8: if (clock[0] == 30) {
	cjne	r6,#0x1e,00104$
	cjne	r7,#0x00,00104$
;	./src/main.c:9: clock[1]--;
	mov	r6,((_clock + 0x0002) + 0)
	mov	r7,((_clock + 0x0002) + 1)
	dec	r6
	cjne	r6,#0xff,00136$
	dec	r7
00136$:
	mov	((_clock + 0x0002) + 0),r6
	mov	((_clock + 0x0002) + 1),r7
;	./src/main.c:10: if (clock[1] % 12 == 0) clock[2]--;
	mov	__modsint_PARM_2,#0x0c
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00104$
	mov	r6,((_clock + 0x0004) + 0)
	mov	r7,((_clock + 0x0004) + 1)
	dec	r6
	cjne	r6,#0xff,00138$
	dec	r7
00138$:
	mov	((_clock + 0x0004) + 0),r6
	mov	((_clock + 0x0004) + 1),r7
00104$:
;	./src/main.c:12: if (clock[0] == -1) clock[0] = 59;
	mov	a,#0xff
	cjne	a,_clock,00106$
	cjne	a,(_clock + 1),00106$
	mov	(_clock + 0),#0x3b
	mov	(_clock + 1),#0x00
00106$:
;	./src/main.c:13: if (clock[1] == -1) clock[1] = 59;
	mov	a,#0xff
	cjne	a,(_clock + 0x0002),00108$
	cjne	a,((_clock + 0x0002) + 1),00108$
	mov	((_clock + 0x0002) + 0),#0x3b
	mov	((_clock + 0x0002) + 1),#0x00
00108$:
;	./src/main.c:14: if (clock[2] == -1) clock[2] = 59;
	mov	a,#0xff
	cjne	a,(_clock + 0x0004),00111$
	cjne	a,((_clock + 0x0004) + 1),00111$
	mov	((_clock + 0x0004) + 0),#0x3b
	mov	((_clock + 0x0004) + 1),#0x00
00111$:
;	./src/main.c:15: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EX0_int'
;------------------------------------------------------------
;	./src/main.c:17: void EX0_int(void) __interrupt (0) {
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
;	./src/main.c:18: CntOfSecond = cnt / 60 + 1;
	mov	__divsint_PARM_2,#0x3c
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,_cnt
	mov	dph,(_cnt + 1)
	lcall	__divsint
	mov	a,dpl
	mov	b,dph
	add	a,#0x01
	mov	_CntOfSecond,a
	clr	a
	addc	a,b
	mov	(_CntOfSecond + 1),a
;	./src/main.c:19: revise = cnt % 60;
	mov	__modsint_PARM_2,#0x3c
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_cnt
	mov	dph,(_cnt + 1)
	lcall	__modsint
	mov	r6,dpl
	mov	_revise,r6
;	./src/main.c:20: cnt = 0;
	clr	a
	mov	_cnt,a
	mov	(_cnt + 1),a
;	./src/main.c:21: tmp = 0;
	mov	_tmp,a
	mov	(_tmp + 1),a
;	./src/main.c:22: num = 0;
;	1-genFromRTrack replaced	mov	_num,#0x00
	mov	_num,a
;	./src/main.c:23: }
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
;Allocation info for local variables in function 'Time'
;------------------------------------------------------------
;	./src/main.c:25: void Time(void) __interrupt (1) {
;	-----------------------------------------
;	 function Time
;	-----------------------------------------
_Time:
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
;	./src/main.c:26: TH0 = (65536 - 5) >> 8;
	mov	_TH0,#0xff
;	./src/main.c:27: TL0 = (65536 - 5) % 256;
	mov	_TL0,#0xfb
;	./src/main.c:29: cnt++;
	inc	_cnt
	clr	a
	cjne	a,_cnt,00162$
	inc	(_cnt + 1)
00162$:
;	./src/main.c:30: tmp++;
	inc	_tmp
	clr	a
	cjne	a,_tmp,00163$
	inc	(_tmp + 1)
00163$:
;	./src/main.c:31: P0 = 254; P2 = 255;
	mov	_P0,#0xfe
	mov	_P2,#0xff
;	./src/main.c:32: if (tmp == CntOfSecond && num < 60) {
	mov	a,_CntOfSecond
	cjne	a,_tmp,00164$
	mov	a,(_CntOfSecond + 1)
	cjne	a,(_tmp + 1),00164$
	sjmp	00165$
00164$:
	ljmp	00114$
00165$:
	mov	a,#0x100 - 0x3c
	add	a,_num
	jnc	00166$
	ljmp	00114$
00166$:
;	./src/main.c:33: if (num % 5 == 0) P0_1 = 0;
	mov	r6,_num
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x05
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00102$
;	assignBit
	clr	_P0_1
00102$:
;	./src/main.c:34: if (num % 15 == 0) P0_2 = 0;
	mov	__modsint_PARM_2,#0x0f
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00104$
;	assignBit
	clr	_P0_2
00104$:
;	./src/main.c:35: if (num == clock[0]) {P2 = 0; P0_7 = P0_6 = P0_5 = P0_4 = P0_3 = 0;}
	mov	a,r6
	cjne	a,_clock,00106$
	mov	a,r7
	cjne	a,(_clock + 1),00106$
	mov	_P2,#0x00
;	assignBit
	clr	_P0_3
;	assignBit
	mov	c,_P0_3
	mov	_P0_4,c
;	assignBit
	mov	c,_P0_4
	mov	_P0_5,c
;	assignBit
	mov	c,_P0_5
	mov	_P0_6,c
;	assignBit
	mov	c,_P0_6
	mov	_P0_7,c
00106$:
;	./src/main.c:36: if (num == clock[1]) {P2 = 0; P0_7 = P0_6 = P0_5 = 0;}
	mov	a,r6
	cjne	a,(_clock + 0x0002),00108$
	mov	a,r7
	cjne	a,((_clock + 0x0002) + 1),00108$
	mov	_P2,#0x00
;	assignBit
	clr	_P0_5
;	assignBit
	mov	c,_P0_5
	mov	_P0_6,c
;	assignBit
	mov	c,_P0_6
	mov	_P0_7,c
00108$:
;	./src/main.c:37: if (num == clock[2]) {P2 = 0; P0_7 = 0;}
	mov	a,r6
	cjne	a,(_clock + 0x0004),00110$
	mov	a,r7
	cjne	a,((_clock + 0x0004) + 1),00110$
	mov	_P2,#0x00
;	assignBit
	clr	_P0_7
00110$:
;	./src/main.c:38: num++;
	inc	_num
;	./src/main.c:39: tmp = (revise % 2 ? 0 : 1);
	mov	a,_revise
	jnb	acc.0,00120$
	mov	r6,#0x00
	mov	r7,#0x00
	sjmp	00121$
00120$:
	mov	r6,#0x01
	mov	r7,#0x00
00121$:
	mov	_tmp,r6
	mov	(_tmp + 1),r7
;	./src/main.c:40: if (revise > 0) revise--;
	mov	a,_revise
	jz	00114$
	dec	_revise
00114$:
;	./src/main.c:42: if (time++ > 20000) {
	mov	r6,_time
	mov	r7,(_time + 1)
	inc	_time
	clr	a
	cjne	a,_time,00177$
	inc	(_time + 1)
00177$:
	clr	c
	mov	a,#0x20
	subb	a,r6
	mov	a,#(0x4e ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00118$
;	./src/main.c:43: time = 0; 
	clr	a
	mov	_time,a
	mov	(_time + 1),a
;	./src/main.c:44: Rotate();
	lcall	_Rotate
00118$:
;	./src/main.c:46: }
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
;	./src/main.c:48: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./src/main.c:49: TMOD = 0x01;
	mov	_TMOD,#0x01
;	./src/main.c:50: TH0 = (65536 - 5) >> 8;
	mov	_TH0,#0xff
;	./src/main.c:51: TL0 = (65536 - 5) % 256;
	mov	_TL0,#0xfb
;	./src/main.c:52: EA = 1;  // interrupt
;	assignBit
	setb	_EA
;	./src/main.c:53: ET0 = 1; // timer0 interrupt
;	assignBit
	setb	_ET0
;	./src/main.c:54: EX0 = 1; // external interrupt0
;	assignBit
	setb	_EX0
;	./src/main.c:55: TR0 = 1; // run control bit
;	assignBit
	setb	_TR0
;	./src/main.c:56: IT0 = 1; // edge-triggered
;	assignBit
	setb	_IT0
;	./src/main.c:58: while(1) ;
00102$:
;	./src/main.c:59: }
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
