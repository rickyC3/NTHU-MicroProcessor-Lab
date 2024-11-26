;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module program
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _hex_size
	.globl _hex_file
	.globl _delay_ms
	.globl _AT89S51_Read_Byte
	.globl _AT89S51_Write_Byte
	.globl _AT89S51_Chip_Erase
	.globl _AT89S51_Prog_En
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
	.globl _AT89S51_Program_write
	.globl _AT89S51_Program_read
	.globl _AT89S51_Program_erase
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
;Allocation info for local variables in function 'AT89S51_Program_write'
;------------------------------------------------------------
;spr_r_buf                 Allocated to registers r7 
;program_cnt               Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/program.c:7: unsigned char AT89S51_Program_write(void)
;	-----------------------------------------
;	 function AT89S51_Program_write
;	-----------------------------------------
_AT89S51_Program_write:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/program.c:13: AT8051_MOSI = 0;
;	assignBit
	clr	_P0_0
;	./src/program.c:14: AT8051_SCK = 0;
;	assignBit
	clr	_P0_2
;	./src/program.c:15: delay_ms(1);
	mov	dptr,#0x0001
	lcall	_delay_ms
;	./src/program.c:16: AT8051_RST = 1;
;	assignBit
	setb	_P0_3
;	./src/program.c:17: delay_ms(10);
	mov	dptr,#0x000a
	lcall	_delay_ms
;	./src/program.c:20: spr_r_buf = AT89S51_Prog_En();
	lcall	_AT89S51_Prog_En
	mov	r7,dpl
;	./src/program.c:21: if (spr_r_buf != 0x69) {
	cjne	r7,#0x69,00122$
	sjmp	00102$
00122$:
;	./src/program.c:22: AT8051_RST = 0;
;	assignBit
	clr	_P0_3
;	./src/program.c:23: delay_ms(100);
	mov	dptr,#0x0064
	lcall	_delay_ms
;	./src/program.c:24: AT8051_MOSI = 1;
;	assignBit
	setb	_P0_0
;	./src/program.c:25: AT8051_SCK = 1;
;	assignBit
	setb	_P0_2
;	./src/program.c:26: delay_ms(1000);
	mov	dptr,#0x03e8
	lcall	_delay_ms
;	./src/program.c:28: return HAL_Prog_En_ERROR;
	mov	dpl,#0x01
	ret
00102$:
;	./src/program.c:32: AT89S51_Chip_Erase();
	lcall	_AT89S51_Chip_Erase
;	./src/program.c:33: delay_ms(1000);
	mov	dptr,#0x03e8
	lcall	_delay_ms
;	./src/program.c:36: for (program_cnt = 0; program_cnt < hex_size; program_cnt ++) {
	mov	r6,#0x00
	mov	r7,#0x00
00105$:
	mov	dptr,#_hex_size
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jnc	00103$
;	./src/program.c:37: AT89S51_Write_Byte(program_cnt + 0x0000, hex_file[program_cnt]);
	mov	a,r6
	add	a,#_hex_file
	mov	dpl,a
	mov	a,r7
	addc	a,#(_hex_file >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_AT89S51_Write_Byte_PARM_2,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_AT89S51_Write_Byte
;	./src/program.c:38: delay_ms(1);
	mov	dptr,#0x0001
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	./src/program.c:36: for (program_cnt = 0; program_cnt < hex_size; program_cnt ++) {
	inc	r6
	cjne	r6,#0x00,00105$
	inc	r7
	sjmp	00105$
00103$:
;	./src/program.c:42: AT8051_RST = 0;
;	assignBit
	clr	_P0_3
;	./src/program.c:43: delay_ms(100);
	mov	dptr,#0x0064
	lcall	_delay_ms
;	./src/program.c:44: AT8051_MOSI = 1;
;	assignBit
	setb	_P0_0
;	./src/program.c:45: AT8051_SCK = 1;
;	assignBit
	setb	_P0_2
;	./src/program.c:46: delay_ms(1000);
	mov	dptr,#0x03e8
	lcall	_delay_ms
;	./src/program.c:48: return HAL_OK;
	mov	dpl,#0x00
;	./src/program.c:49: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'AT89S51_Program_read'
;------------------------------------------------------------
;spr_r_buf                 Allocated to registers r5 
;program_cnt               Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/program.c:51: unsigned char AT89S51_Program_read(void)
;	-----------------------------------------
;	 function AT89S51_Program_read
;	-----------------------------------------
_AT89S51_Program_read:
;	./src/program.c:57: AT8051_MOSI = 0;
;	assignBit
	clr	_P0_0
;	./src/program.c:58: AT8051_SCK = 0;
;	assignBit
	clr	_P0_2
;	./src/program.c:59: delay_ms(1);
	mov	dptr,#0x0001
	lcall	_delay_ms
;	./src/program.c:60: AT8051_RST = 1;
;	assignBit
	setb	_P0_3
;	./src/program.c:61: delay_ms(10);
	mov	dptr,#0x000a
	lcall	_delay_ms
;	./src/program.c:64: spr_r_buf = AT89S51_Prog_En();
	lcall	_AT89S51_Prog_En
	mov	r7,dpl
;	./src/program.c:65: if (spr_r_buf != 0x69) {
	cjne	r7,#0x69,00131$
	sjmp	00114$
00131$:
;	./src/program.c:66: AT8051_RST = 0;
;	assignBit
	clr	_P0_3
;	./src/program.c:67: delay_ms(100);	
	mov	dptr,#0x0064
	lcall	_delay_ms
;	./src/program.c:68: AT8051_MOSI = 1;
;	assignBit
	setb	_P0_0
;	./src/program.c:69: AT8051_SCK = 1;
;	assignBit
	setb	_P0_2
;	./src/program.c:70: delay_ms(1000);	
	mov	dptr,#0x03e8
	lcall	_delay_ms
;	./src/program.c:71: return HAL_Prog_En_ERROR;
	mov	dpl,#0x01
	ret
;	./src/program.c:75: for (program_cnt = 0; program_cnt < hex_size; program_cnt ++) {
00114$:
	mov	r6,#0x00
	mov	r7,#0x00
00107$:
	mov	dptr,#_hex_size
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jnc	00105$
;	./src/program.c:76: spr_r_buf = AT89S51_Read_Byte(program_cnt + 0x0000);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_AT89S51_Read_Byte
	mov	r5,dpl
;	./src/program.c:77: delay_ms(1);
	mov	dptr,#0x0001
	push	ar5
	lcall	_delay_ms
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/program.c:80: if(spr_r_buf != hex_file[program_cnt])
	mov	a,r6
	add	a,#_hex_file
	mov	dpl,a
	mov	a,r7
	addc	a,#(_hex_file >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,r5
	cjne	a,ar4,00133$
	sjmp	00108$
00133$:
;	./src/program.c:82: AT8051_RST = 0;
;	assignBit
	clr	_P0_3
;	./src/program.c:83: delay_ms(100);
	mov	dptr,#0x0064
	lcall	_delay_ms
;	./src/program.c:84: AT8051_MOSI = 1;
;	assignBit
	setb	_P0_0
;	./src/program.c:85: AT8051_SCK = 1;
;	assignBit
	setb	_P0_2
;	./src/program.c:86: delay_ms(1000);
	mov	dptr,#0x03e8
	lcall	_delay_ms
;	./src/program.c:88: return HAL_Verify_ERROR;
	mov	dpl,#0x02
	ret
00108$:
;	./src/program.c:75: for (program_cnt = 0; program_cnt < hex_size; program_cnt ++) {
	inc	r6
	cjne	r6,#0x00,00107$
	inc	r7
	sjmp	00107$
00105$:
;	./src/program.c:93: AT8051_RST = 0;
;	assignBit
	clr	_P0_3
;	./src/program.c:94: delay_ms(100);
	mov	dptr,#0x0064
	lcall	_delay_ms
;	./src/program.c:95: AT8051_MOSI = 1;
;	assignBit
	setb	_P0_0
;	./src/program.c:96: AT8051_SCK = 1;
;	assignBit
	setb	_P0_2
;	./src/program.c:97: delay_ms(1000);
	mov	dptr,#0x03e8
	lcall	_delay_ms
;	./src/program.c:99: return HAL_OK;
	mov	dpl,#0x00
;	./src/program.c:100: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'AT89S51_Program_erase'
;------------------------------------------------------------
;spr_r_buf                 Allocated to registers r7 
;program_cnt               Allocated to registers 
;------------------------------------------------------------
;	./src/program.c:102: unsigned char AT89S51_Program_erase(void)
;	-----------------------------------------
;	 function AT89S51_Program_erase
;	-----------------------------------------
_AT89S51_Program_erase:
;	./src/program.c:108: AT8051_MOSI = 0;
;	assignBit
	clr	_P0_0
;	./src/program.c:109: AT8051_SCK = 0;
;	assignBit
	clr	_P0_2
;	./src/program.c:110: delay_ms(1);
	mov	dptr,#0x0001
	lcall	_delay_ms
;	./src/program.c:111: AT8051_RST = 1;
;	assignBit
	setb	_P0_3
;	./src/program.c:112: delay_ms(10);
	mov	dptr,#0x000a
	lcall	_delay_ms
;	./src/program.c:115: spr_r_buf = AT89S51_Prog_En();
	lcall	_AT89S51_Prog_En
	mov	r7,dpl
;	./src/program.c:116: if(spr_r_buf != 0x69)
	cjne	r7,#0x69,00109$
	sjmp	00102$
00109$:
;	./src/program.c:118: AT8051_RST = 0;
;	assignBit
	clr	_P0_3
;	./src/program.c:119: delay_ms(100);
	mov	dptr,#0x0064
	lcall	_delay_ms
;	./src/program.c:120: AT8051_MOSI = 1;
;	assignBit
	setb	_P0_0
;	./src/program.c:121: AT8051_SCK = 1;
;	assignBit
	setb	_P0_2
;	./src/program.c:122: delay_ms(1000);
	mov	dptr,#0x03e8
	lcall	_delay_ms
;	./src/program.c:124: return HAL_Prog_En_ERROR;
	mov	dpl,#0x01
	ret
00102$:
;	./src/program.c:128: AT89S51_Chip_Erase();
	lcall	_AT89S51_Chip_Erase
;	./src/program.c:129: delay_ms(1000);
	mov	dptr,#0x03e8
	lcall	_delay_ms
;	./src/program.c:132: AT8051_RST = 0;
;	assignBit
	clr	_P0_3
;	./src/program.c:133: delay_ms(100);
	mov	dptr,#0x0064
	lcall	_delay_ms
;	./src/program.c:134: AT8051_MOSI = 1;
;	assignBit
	setb	_P0_0
;	./src/program.c:135: AT8051_SCK = 1;
;	assignBit
	setb	_P0_2
;	./src/program.c:136: delay_ms(1000);
	mov	dptr,#0x03e8
	lcall	_delay_ms
;	./src/program.c:138: return HAL_OK;
	mov	dpl,#0x00
;	./src/program.c:139: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_hex_file:
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc2	; 194
	.db #0x90	; 144
	.db #0x7c	; 124
	.db #0x0a	; 10
	.db #0x32	; 50	'2'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xd2	; 210
	.db #0x90	; 144
	.db #0xd2	; 210
	.db #0x8a	; 138
	.db #0x75	; 117	'u'
	.db #0xa8	; 168
	.db #0x84	; 132
	.db #0xbc	; 188
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0xd2	; 210
	.db #0x90	; 144
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x43	; 67	'C'
	.db #0xdc	; 220
	.db #0xfb	; 251
	.db #0x80	; 128
	.db #0xf4	; 244
	.db #0x7d	; 125
	.db #0x64	; 100	'd'
	.db #0x7e	; 126
	.db #0x02	; 2
	.db #0x7f	; 127
	.db #0xe4	; 228
	.db #0xdf	; 223
	.db #0xfe	; 254
	.db #0xde	; 222
	.db #0xfa	; 250
	.db #0xdd	; 221
	.db #0xf6	; 246
	.db #0x22	; 34
_hex_size:
	.byte #0x50, #0x00	; 80
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
