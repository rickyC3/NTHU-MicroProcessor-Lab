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
	.globl _Get_Key
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
	.globl _opr
	.globl _num2
	.globl _num1
	.globl _prek
	.globl _key
	.globl _mode
	.globl _Mode_1
	.globl _Mode_2
	.globl _Mode_3
	.globl _num_opr
	.globl _Sendbyte7219
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
_mode::
	.ds 1
_key::
	.ds 1
_prek::
	.ds 1
_num1::
	.ds 4
_num2::
	.ds 4
_opr::
	.ds 1
_Display_num_65536_35:
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
;	./src/main.c:7: unsigned char mode = 1; // 1~3: , in1, opr, in2
	mov	_mode,#0x01
;	./src/main.c:8: unsigned char key = 15;
	mov	_key,#0x0f
;	./src/main.c:9: unsigned char prek = 15;
	mov	_prek,#0x0f
;	./src/main.c:12: unsigned long num1 = 0;
	clr	a
	mov	_num1,a
	mov	(_num1 + 1),a
	mov	(_num1 + 2),a
	mov	(_num1 + 3),a
;	./src/main.c:13: unsigned long num2 = 0;
	mov	_num2,a
	mov	(_num2 + 1),a
	mov	(_num2 + 2),a
	mov	(_num2 + 3),a
;	./src/main.c:14: unsigned char opr = 0;
;	1-genFromRTrack replaced	mov	_opr,#0x00
	mov	_opr,a
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
;	./src/main.c:25: void main(void){
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
;	./src/main.c:27: Sendbyte7219(SHUT_DOWN,    0x01);
	mov	_Sendbyte7219_PARM_2,#0x01
	mov	dpl,#0x0c
	lcall	_Sendbyte7219
;	./src/main.c:28: Sendbyte7219(DISPLAY_TEST, 0x00);
	mov	_Sendbyte7219_PARM_2,#0x00
	mov	dpl,#0x0f
	lcall	_Sendbyte7219
;	./src/main.c:29: Sendbyte7219(DECODE_MODE,  0xff);
	mov	_Sendbyte7219_PARM_2,#0xff
	mov	dpl,#0x09
	lcall	_Sendbyte7219
;	./src/main.c:30: Sendbyte7219(SCAN_LIMIT,   0x07);
	mov	_Sendbyte7219_PARM_2,#0x07
	mov	dpl,#0x0b
	lcall	_Sendbyte7219
;	./src/main.c:31: Sendbyte7219(INTENSITY,    0x00);
	mov	_Sendbyte7219_PARM_2,#0x00
	mov	dpl,#0x0a
	lcall	_Sendbyte7219
;	./src/main.c:34: while (1){
00118$:
;	./src/main.c:35: key = Get_Key();
	lcall	_Get_Key
	mov	_key,dpl
;	./src/main.c:36: if (key != 15 && prek != key){ // 0 ~ 9
	mov	a,#0x0f
	cjne	a,_key,00154$
	sjmp	00112$
00154$:
	mov	a,_key
	cjne	a,_prek,00155$
	sjmp	00112$
00155$:
;	./src/main.c:38: if (key != Get_Key())continue;
	lcall	_Get_Key
	mov	a,dpl
	mov	r7,a
	cjne	a,_key,00118$
;	./src/main.c:39: if (mode == 1){
	mov	a,#0x01
	cjne	a,_mode,00109$
;	./src/main.c:40: Mode_1(key);
	mov	dpl,_key
	lcall	_Mode_1
	sjmp	00112$
00109$:
;	./src/main.c:41: }else if (mode == 2){
	mov	a,#0x02
	cjne	a,_mode,00106$
;	./src/main.c:42: Mode_2(key);
	mov	dpl,_key
	lcall	_Mode_2
	sjmp	00112$
00106$:
;	./src/main.c:43: }else if (mode == 3){
	mov	a,#0x03
	cjne	a,_mode,00112$
;	./src/main.c:44: Mode_3(key);
	mov	dpl,_key
	lcall	_Mode_3
00112$:
;	./src/main.c:48: Display();
	lcall	_Display
;	./src/main.c:49: prek = key;
	mov	_prek,_key
;	./src/main.c:50: if (mode == 2) LED = ~(1<<(opr+4));
	mov	a,#0x02
	cjne	a,_mode,00115$
	mov	r7,_opr
	mov	a,#0x04
	add	a,r7
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00168$
00166$:
	add	a,acc
00168$:
	djnz	b,00166$
	mov	r7,a
	cpl	a
	mov	_P1,a
	sjmp	00118$
00115$:
;	./src/main.c:51: else LED = 0xff;
	mov	_P1,#0xff
;	./src/main.c:54: }
	sjmp	00118$
;------------------------------------------------------------
;Allocation info for local variables in function 'Mode_1'
;------------------------------------------------------------
;k                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:56: void Mode_1(unsigned char k){ // in1
;	-----------------------------------------
;	 function Mode_1
;	-----------------------------------------
_Mode_1:
	mov	r7,dpl
;	./src/main.c:57: switch (k){
	cjne	r7,#0x0a,00125$
	sjmp	00101$
00125$:
	cjne	r7,#0x0b,00126$
	sjmp	00102$
00126$:
	cjne	r7,#0x0c,00127$
	sjmp	00103$
00127$:
;	./src/main.c:58: case 10: // op
	cjne	r7,#0x0d,00105$
	ret
00101$:
;	./src/main.c:59: opr = 0;
	mov	_opr,#0x00
;	./src/main.c:60: mode = 2;
	mov	_mode,#0x02
;	./src/main.c:61: break; 
;	./src/main.c:62: case 11: // back
	ret
00102$:
;	./src/main.c:63: num1 /= 10;
	mov	__divulong_PARM_2,#0x0a
	clr	a
	mov	(__divulong_PARM_2 + 1),a
	mov	(__divulong_PARM_2 + 2),a
	mov	(__divulong_PARM_2 + 3),a
	mov	dpl,_num1
	mov	dph,(_num1 + 1)
	mov	b,(_num1 + 2)
	mov	a,(_num1 + 3)
	lcall	__divulong
	mov	_num1,dpl
	mov	(_num1 + 1),dph
	mov	(_num1 + 2),b
	mov	(_num1 + 3),a
;	./src/main.c:64: break; 
;	./src/main.c:65: case 12: // ac
	ret
00103$:
;	./src/main.c:66: num1 = 0;num2 = 0;
	clr	a
	mov	_num1,a
	mov	(_num1 + 1),a
	mov	(_num1 + 2),a
	mov	(_num1 + 3),a
	mov	_num2,a
	mov	(_num2 + 1),a
	mov	(_num2 + 2),a
	mov	(_num2 + 3),a
;	./src/main.c:67: mode = 1;
	mov	_mode,#0x01
;	./src/main.c:68: break; 
;	./src/main.c:69: case 13: // equal
	ret
;	./src/main.c:70: num1 = num1;
;	./src/main.c:71: break; 
;	./src/main.c:72: default:
	ret
00105$:
;	./src/main.c:73: num1 = num1 * 10 + k;
	mov	__mullong_PARM_2,_num1
	mov	(__mullong_PARM_2 + 1),(_num1 + 1)
	mov	(__mullong_PARM_2 + 2),(_num1 + 2)
	mov	(__mullong_PARM_2 + 3),(_num1 + 3)
	mov	dptr,#(0x0a&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	lcall	__mullong
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	pop	ar7
	mov	ar0,r7
	clr	a
	mov	r1,a
	mov	r2,a
	mov	r7,a
	mov	a,r0
	add	a,r3
	mov	_num1,a
	mov	a,r1
	addc	a,r4
	mov	(_num1 + 1),a
	mov	a,r2
	addc	a,r5
	mov	(_num1 + 2),a
	mov	a,r7
	addc	a,r6
	mov	(_num1 + 3),a
;	./src/main.c:75: }
;	./src/main.c:76: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Mode_2'
;------------------------------------------------------------
;k                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:78: void Mode_2(unsigned char k){ // opr
;	-----------------------------------------
;	 function Mode_2
;	-----------------------------------------
_Mode_2:
	mov	r7,dpl
;	./src/main.c:79: switch (k){
	cjne	r7,#0x0a,00125$
	sjmp	00101$
00125$:
	cjne	r7,#0x0b,00126$
	ret
00126$:
	cjne	r7,#0x0c,00127$
	sjmp	00103$
00127$:
;	./src/main.c:80: case 10: // op
	cjne	r7,#0x0d,00105$
	ret
00101$:
;	./src/main.c:81: opr = (opr + 1)%4;
	mov	r5,_opr
	mov	r6,#0x00
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	mov	__modsint_PARM_2,#0x04
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r6
	lcall	__modsint
	mov	r5,dpl
	mov	_opr,r5
;	./src/main.c:82: break; 
;	./src/main.c:84: case 12: // ac
	ret
00103$:
;	./src/main.c:85: num1 = 0;num2 = 0;
	clr	a
	mov	_num1,a
	mov	(_num1 + 1),a
	mov	(_num1 + 2),a
	mov	(_num1 + 3),a
	mov	_num2,a
	mov	(_num2 + 1),a
	mov	(_num2 + 2),a
	mov	(_num2 + 3),a
;	./src/main.c:86: mode = 1;
	mov	_mode,#0x01
;	./src/main.c:87: break; 
;	./src/main.c:90: default:
	ret
00105$:
;	./src/main.c:91: num2 = k;
	mov	_num2,r7
	mov	(_num2 + 1),#0x00
	mov	(_num2 + 2),#0x00
	mov	(_num2 + 3),#0x00
;	./src/main.c:92: mode = 3;
	mov	_mode,#0x03
;	./src/main.c:94: }
;	./src/main.c:95: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Mode_3'
;------------------------------------------------------------
;k                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:97: void Mode_3(unsigned char k){ // in2
;	-----------------------------------------
;	 function Mode_3
;	-----------------------------------------
_Mode_3:
	mov	r7,dpl
;	./src/main.c:98: switch (k){
	cjne	r7,#0x0a,00125$
	sjmp	00101$
00125$:
	cjne	r7,#0x0b,00126$
	sjmp	00102$
00126$:
	cjne	r7,#0x0c,00127$
	sjmp	00103$
00127$:
;	./src/main.c:99: case 10: // op
	cjne	r7,#0x0d,00105$
	sjmp	00104$
00101$:
;	./src/main.c:100: num1  = num_opr();
	lcall	_num_opr
	mov	_num1,dpl
	mov	(_num1 + 1),dph
	mov	(_num1 + 2),b
	mov	(_num1 + 3),a
;	./src/main.c:101: opr = 0;
	mov	_opr,#0x00
;	./src/main.c:102: mode = 2;
	mov	_mode,#0x02
;	./src/main.c:103: break; 
	ret
;	./src/main.c:104: case 11: // back
00102$:
;	./src/main.c:105: num2 /= 10;
	mov	__divulong_PARM_2,#0x0a
	clr	a
	mov	(__divulong_PARM_2 + 1),a
	mov	(__divulong_PARM_2 + 2),a
	mov	(__divulong_PARM_2 + 3),a
	mov	dpl,_num2
	mov	dph,(_num2 + 1)
	mov	b,(_num2 + 2)
	mov	a,(_num2 + 3)
	lcall	__divulong
	mov	_num2,dpl
	mov	(_num2 + 1),dph
	mov	(_num2 + 2),b
	mov	(_num2 + 3),a
;	./src/main.c:106: break; 
;	./src/main.c:107: case 12: // ac
	ret
00103$:
;	./src/main.c:108: num1 = 0;num2 = 0;opr = 0;
	clr	a
	mov	_num1,a
	mov	(_num1 + 1),a
	mov	(_num1 + 2),a
	mov	(_num1 + 3),a
	mov	_num2,a
	mov	(_num2 + 1),a
	mov	(_num2 + 2),a
	mov	(_num2 + 3),a
;	1-genFromRTrack replaced	mov	_opr,#0x00
	mov	_opr,a
;	./src/main.c:109: mode = 1;
	mov	_mode,#0x01
;	./src/main.c:110: break; 
;	./src/main.c:111: case 13: // equal
	ret
00104$:
;	./src/main.c:112: num1 = num_opr();
	lcall	_num_opr
	mov	_num1,dpl
	mov	(_num1 + 1),dph
	mov	(_num1 + 2),b
	mov	(_num1 + 3),a
;	./src/main.c:114: mode = 1;
	mov	_mode,#0x01
;	./src/main.c:115: break; 
;	./src/main.c:117: default:
	ret
00105$:
;	./src/main.c:118: num2 = num2*10 + k;
	mov	__mullong_PARM_2,_num2
	mov	(__mullong_PARM_2 + 1),(_num2 + 1)
	mov	(__mullong_PARM_2 + 2),(_num2 + 2)
	mov	(__mullong_PARM_2 + 3),(_num2 + 3)
	mov	dptr,#(0x0a&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	lcall	__mullong
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	pop	ar7
	mov	ar0,r7
	clr	a
	mov	r1,a
	mov	r2,a
	mov	r7,a
	mov	a,r0
	add	a,r3
	mov	_num2,a
	mov	a,r1
	addc	a,r4
	mov	(_num2 + 1),a
	mov	a,r2
	addc	a,r5
	mov	(_num2 + 2),a
	mov	a,r7
	addc	a,r6
	mov	(_num2 + 3),a
;	./src/main.c:120: }
;	./src/main.c:121: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'num_opr'
;------------------------------------------------------------
;	./src/main.c:123: unsigned long num_opr(void){
;	-----------------------------------------
;	 function num_opr
;	-----------------------------------------
_num_opr:
;	./src/main.c:124: if (opr == 0)
	mov	a,_opr
	jnz	00110$
;	./src/main.c:125: return num1 + num2;
	mov	a,_num2
	add	a,_num1
	mov	r4,a
	mov	a,(_num2 + 1)
	addc	a,(_num1 + 1)
	mov	r5,a
	mov	a,(_num2 + 2)
	addc	a,(_num1 + 2)
	mov	r6,a
	mov	a,(_num2 + 3)
	addc	a,(_num1 + 3)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	ret
00110$:
;	./src/main.c:126: else if (opr == 1)
	mov	a,#0x01
	cjne	a,_opr,00107$
;	./src/main.c:127: return num1 - num2;
	mov	a,_num1
	clr	c
	subb	a,_num2
	mov	r4,a
	mov	a,(_num1 + 1)
	subb	a,(_num2 + 1)
	mov	r5,a
	mov	a,(_num1 + 2)
	subb	a,(_num2 + 2)
	mov	r6,a
	mov	a,(_num1 + 3)
	subb	a,(_num2 + 3)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	ret
00107$:
;	./src/main.c:128: else if (opr == 2)
	mov	a,#0x02
	cjne	a,_opr,00104$
;	./src/main.c:129: return num1 * num2;
	mov	__mullong_PARM_2,_num2
	mov	(__mullong_PARM_2 + 1),(_num2 + 1)
	mov	(__mullong_PARM_2 + 2),(_num2 + 2)
	mov	(__mullong_PARM_2 + 3),(_num2 + 3)
	mov	dpl,_num1
	mov	dph,(_num1 + 1)
	mov	b,(_num1 + 2)
	mov	a,(_num1 + 3)
	ljmp	__mullong
00104$:
;	./src/main.c:130: else if (opr == 3)
	mov	a,#0x03
	cjne	a,_opr,00108$
;	./src/main.c:131: return num1 / num2;
	mov	__divulong_PARM_2,_num2
	mov	(__divulong_PARM_2 + 1),(_num2 + 1)
	mov	(__divulong_PARM_2 + 2),(_num2 + 2)
	mov	(__divulong_PARM_2 + 3),(_num2 + 3)
	mov	dpl,_num1
	mov	dph,(_num1 + 1)
	mov	b,(_num1 + 2)
	mov	a,(_num1 + 3)
	ljmp	__divulong
00108$:
;	./src/main.c:132: return 0;
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
;	./src/main.c:133: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Sendbyte7219'
;------------------------------------------------------------
;dat                       Allocated with name '_Sendbyte7219_PARM_2'
;address                   Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	./src/main.c:135: void Sendbyte7219 (unsigned char address, unsigned char dat) {
;	-----------------------------------------
;	 function Sendbyte7219
;	-----------------------------------------
_Sendbyte7219:
	mov	r7,dpl
;	./src/main.c:136: LOAD = 0;
;	assignBit
	clr	_P2_6
;	./src/main.c:139: for (i = 0; i < 8; i++) {        // get last 8 bits(address)
	mov	r6,#0x00
00103$:
;	./src/main.c:140: CLK = 0;
;	assignBit
	clr	_P2_5
;	./src/main.c:141: DOUT = (address & 0x80);      // get msb and shift left
	mov	a,r7
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P2_7,c
;	./src/main.c:142: address <<= 1; 
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r7,a
;	./src/main.c:143: CLK = 1;
;	assignBit
	setb	_P2_5
;	./src/main.c:139: for (i = 0; i < 8; i++) {        // get last 8 bits(address)
	inc	r6
	cjne	r6,#0x08,00127$
00127$:
	jc	00103$
;	./src/main.c:145: for (i = 0; i < 8; i++) {        // get first 8 bits(data)
	mov	r7,#0x00
00105$:
;	./src/main.c:146: CLK = 0;
;	assignBit
	clr	_P2_5
;	./src/main.c:147: DOUT = (dat & 0x80);          // get msb and shit left
	mov	a,_Sendbyte7219_PARM_2
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P2_7,c
;	./src/main.c:148: dat <<= 1;
	mov	a,_Sendbyte7219_PARM_2
	add	a,acc
	mov	_Sendbyte7219_PARM_2,a
;	./src/main.c:149: CLK = 1;
;	assignBit
	setb	_P2_5
;	./src/main.c:145: for (i = 0; i < 8; i++) {        // get first 8 bits(data)
	inc	r7
	cjne	r7,#0x08,00129$
00129$:
	jc	00105$
;	./src/main.c:150: }LOAD = 1;
;	assignBit
	setb	_P2_6
;	./src/main.c:151: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Display'
;------------------------------------------------------------
;num                       Allocated with name '_Display_num_65536_35'
;i                         Allocated to registers r3 
;------------------------------------------------------------
;	./src/main.c:153: void Display(void){
;	-----------------------------------------
;	 function Display
;	-----------------------------------------
_Display:
;	./src/main.c:155: unsigned long num = 0;
;	./src/main.c:156: if (mode == 1 || mode == 2)num = num1;
	clr	a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	a,#0x01
	cjne	a,_mode,00135$
	sjmp	00101$
00135$:
	mov	a,#0x02
	cjne	a,_mode,00102$
00101$:
	mov	r4,_num1
	mov	r5,(_num1 + 1)
	mov	r6,(_num1 + 2)
	mov	r7,(_num1 + 3)
00102$:
;	./src/main.c:157: if (mode == 3)num = num2;
	mov	a,#0x03
	cjne	a,_mode,00105$
	mov	r4,_num2
	mov	r5,(_num2 + 1)
	mov	r6,(_num2 + 2)
	mov	r7,(_num2 + 3)
00105$:
;	./src/main.c:159: Sendbyte7219(1, num%10);num/=10;
	mov	__modulong_PARM_2,#0x0a
	clr	a
	mov	(__modulong_PARM_2 + 1),a
	mov	(__modulong_PARM_2 + 2),a
	mov	(__modulong_PARM_2 + 3),a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__modulong
	mov	r0,dpl
	mov	_Sendbyte7219_PARM_2,r0
	mov	dpl,#0x01
	lcall	_Sendbyte7219
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
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
	mov	_Display_num_65536_35,dpl
	mov	(_Display_num_65536_35 + 1),dph
	mov	(_Display_num_65536_35 + 2),b
	mov	(_Display_num_65536_35 + 3),a
;	./src/main.c:160: for (i = 2;i<9;i++){
	mov	r3,#0x02
00110$:
;	./src/main.c:161: if (num) Sendbyte7219(i, num%10);
	mov	a,_Display_num_65536_35
	orl	a,(_Display_num_65536_35 + 1)
	orl	a,(_Display_num_65536_35 + 2)
	orl	a,(_Display_num_65536_35 + 3)
	jz	00107$
	mov	__modulong_PARM_2,#0x0a
	clr	a
	mov	(__modulong_PARM_2 + 1),a
	mov	(__modulong_PARM_2 + 2),a
	mov	(__modulong_PARM_2 + 3),a
	mov	dpl,_Display_num_65536_35
	mov	dph,(_Display_num_65536_35 + 1)
	mov	b,(_Display_num_65536_35 + 2)
	mov	a,(_Display_num_65536_35 + 3)
	push	ar3
	lcall	__modulong
	mov	r0,dpl
	pop	ar3
	mov	_Sendbyte7219_PARM_2,r0
	mov	dpl,r3
	push	ar3
	lcall	_Sendbyte7219
	pop	ar3
	sjmp	00108$
00107$:
;	./src/main.c:162: else Sendbyte7219(i, 0x0f);
	mov	_Sendbyte7219_PARM_2,#0x0f
	mov	dpl,r3
	push	ar3
	lcall	_Sendbyte7219
	pop	ar3
00108$:
;	./src/main.c:163: num/=10;
	mov	__divulong_PARM_2,#0x0a
	clr	a
	mov	(__divulong_PARM_2 + 1),a
	mov	(__divulong_PARM_2 + 2),a
	mov	(__divulong_PARM_2 + 3),a
	mov	dpl,_Display_num_65536_35
	mov	dph,(_Display_num_65536_35 + 1)
	mov	b,(_Display_num_65536_35 + 2)
	mov	a,(_Display_num_65536_35 + 3)
	push	ar3
	lcall	__divulong
	mov	_Display_num_65536_35,dpl
	mov	(_Display_num_65536_35 + 1),dph
	mov	(_Display_num_65536_35 + 2),b
	mov	(_Display_num_65536_35 + 3),a
	pop	ar3
;	./src/main.c:160: for (i = 2;i<9;i++){
	inc	r3
	cjne	r3,#0x09,00141$
00141$:
	jc	00110$
;	./src/main.c:167: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
