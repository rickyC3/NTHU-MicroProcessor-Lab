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
	.globl _readObjectTemp
	.globl _Initial7219
	.globl _Write7219
	.globl _read_adc3202
	.globl _delay_ms
	.globl _OLED_SetCursor
	.globl _OLED_DisplayChar
	.globl _OLED_Init
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
	.globl _tmp
	.globl _dot
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
_dot::
	.ds 9
_tmp::
	.ds 18
_main_max_tmp_65536_32:
	.ds 2
_main_min_tmp_65536_32:
	.ds 2
_main_sloc0_1_0:
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
_main_sloc1_1_0:
	.ds 1
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
;	./src/main.c:14: unsigned char dot[] = {
	mov	_dot,#0x00
	mov	(_dot + 0x0001),#0x00
	mov	(_dot + 0x0002),#0x00
	mov	(_dot + 0x0003),#0x00
	mov	(_dot + 0x0004),#0x00
	mov	(_dot + 0x0005),#0x00
	mov	(_dot + 0x0006),#0x00
	mov	(_dot + 0x0007),#0x00
	mov	(_dot + 0x0008),#0x00
;	./src/main.c:25: int tmp[9] = {0};
	clr	a
	mov	(_tmp + 0),a
	mov	(_tmp + 1),a
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
;max_tmp                   Allocated with name '_main_max_tmp_65536_32'
;min_tmp                   Allocated with name '_main_min_tmp_65536_32'
;adc_value                 Allocated to registers 
;voltage                   Allocated to registers 
;distance                  Allocated to registers r6 r7 
;temp                      Allocated to registers r7 r6 
;cnt                       Allocated to registers 
;i                         Allocated to registers r5 
;sloc0                     Allocated with name '_main_sloc0_1_0'
;------------------------------------------------------------
;	./src/main.c:27: int main() 
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
;	./src/main.c:29: int max_tmp = -1000;
	mov	_main_max_tmp_65536_32,#0x18
	mov	(_main_max_tmp_65536_32 + 1),#0xfc
;	./src/main.c:30: int min_tmp = 1000;
	mov	_main_min_tmp_65536_32,#0xe8
	mov	(_main_min_tmp_65536_32 + 1),#0x03
;	./src/main.c:33: SDA = 1;
;	assignBit
	setb	_P0_1
;	./src/main.c:34: SCL = 1;
;	assignBit
	setb	_P0_0
;	./src/main.c:35: OLED_Init();		        // Check oled_i2c.c file for SCL,SDA pin connection
	lcall	_OLED_Init
;	./src/main.c:36: Initial7219();
	lcall	_Initial7219
;	./src/main.c:40: while(1) {
	mov	r3,#0x01
00147$:
;	./src/main.c:41: if (cnt >= 9){
	cjne	r3,#0x09,00261$
00261$:
	jnc	00262$
	ljmp	00144$
00262$:
;	./src/main.c:42: OLED_SetCursor(2, 0);
	mov	_OLED_SetCursor_PARM_2,#0x00
	mov	dpl,#0x02
	push	ar3
	lcall	_OLED_SetCursor
;	./src/main.c:43: OLED_DisplayChar(tmp[1] % 1000 / 100 + '0');
	mov	dpl,((_tmp + 0x0002) + 0)
	mov	dph,((_tmp + 0x0002) + 1)
	mov	__modsint_PARM_2,#0xe8
	mov	(__modsint_PARM_2 + 1),#0x03
	lcall	__modsint
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r2,dpl
	mov	a,#0x30
	add	a,r2
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:44: OLED_DisplayChar(tmp[1] % 100 / 10 + '0');
	mov	dpl,((_tmp + 0x0002) + 0)
	mov	dph,((_tmp + 0x0002) + 1)
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:45: OLED_DisplayChar('.');
	mov	dpl,#0x2e
	lcall	_OLED_DisplayChar
;	./src/main.c:46: OLED_DisplayChar(tmp[1] % 10 / 1 + '0');
	mov	dpl,((_tmp + 0x0002) + 0)
	mov	dph,((_tmp + 0x0002) + 1)
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:48: OLED_SetCursor(7, 0);
	mov	_OLED_SetCursor_PARM_2,#0x00
	mov	dpl,#0x07
	lcall	_OLED_SetCursor
;	./src/main.c:49: OLED_DisplayChar(max_tmp % 1000 / 100 + '0');
	mov	__modsint_PARM_2,#0xe8
	mov	(__modsint_PARM_2 + 1),#0x03
	mov	dpl,_main_max_tmp_65536_32
	mov	dph,(_main_max_tmp_65536_32 + 1)
	lcall	__modsint
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:50: OLED_DisplayChar(max_tmp % 100 / 10 + '0');
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_main_max_tmp_65536_32
	mov	dph,(_main_max_tmp_65536_32 + 1)
	lcall	__modsint
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:51: OLED_DisplayChar('.');
	mov	dpl,#0x2e
	lcall	_OLED_DisplayChar
;	./src/main.c:52: OLED_DisplayChar(max_tmp % 10 / 1 + '0');
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_main_max_tmp_65536_32
	mov	dph,(_main_max_tmp_65536_32 + 1)
	lcall	__modsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:54: OLED_SetCursor(5, 0);
	mov	_OLED_SetCursor_PARM_2,#0x00
	mov	dpl,#0x05
	lcall	_OLED_SetCursor
;	./src/main.c:55: OLED_DisplayChar(min_tmp % 1000 / 100 + '0');
	mov	__modsint_PARM_2,#0xe8
	mov	(__modsint_PARM_2 + 1),#0x03
	mov	dpl,_main_min_tmp_65536_32
	mov	dph,(_main_min_tmp_65536_32 + 1)
	lcall	__modsint
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:56: OLED_DisplayChar(min_tmp % 100 / 10 + '0');
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_main_min_tmp_65536_32
	mov	dph,(_main_min_tmp_65536_32 + 1)
	lcall	__modsint
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:57: OLED_DisplayChar('.');
	mov	dpl,#0x2e
	lcall	_OLED_DisplayChar
;	./src/main.c:58: OLED_DisplayChar(min_tmp % 10 / 1 + '0');
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_main_min_tmp_65536_32
	mov	dph,(_main_min_tmp_65536_32 + 1)
	lcall	__modsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_OLED_DisplayChar
	pop	ar3
;	./src/main.c:60: for (i=1;i<=8;i++){
	mov	r5,#0x01
00149$:
;	./src/main.c:61: Write7219(i, dot[i]);
	mov	a,r5
	add	a,#_dot
	mov	r1,a
	mov	_Write7219_PARM_2,@r1
	mov	dpl,r5
	push	ar5
	push	ar3
	lcall	_Write7219
	pop	ar3
	pop	ar5
;	./src/main.c:60: for (i=1;i<=8;i++){
	inc	r5
	mov	a,r5
	add	a,#0xff - 0x08
	jnc	00149$
;	./src/main.c:62: }delay_ms(1000);
	mov	dptr,#0x03e8
	push	ar3
	lcall	_delay_ms
	pop	ar3
;	./src/main.c:63: for (i=1;i<=8;i++){
	mov	r5,#0x01
00151$:
;	./src/main.c:64: Write7219(i, 0x00);
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,r5
	push	ar5
	push	ar3
	lcall	_Write7219
	pop	ar3
	pop	ar5
;	./src/main.c:63: for (i=1;i<=8;i++){
	inc	r5
	mov	a,r5
	add	a,#0xff - 0x08
	jnc	00151$
;	./src/main.c:65: }delay_ms(1000);
	mov	dptr,#0x03e8
	push	ar3
	lcall	_delay_ms
	pop	ar3
	ljmp	00147$
00144$:
;	./src/main.c:68: adc_value = read_adc3202(1);
	mov	dpl,#0x01
	push	ar3
	lcall	_read_adc3202
;	./src/main.c:69: voltage = adc_value * (VCC * 1000.0 / 4096.0);
	lcall	___uint2fs
	mov	r2,dpl
	mov	r4,dph
	mov	r5,b
	mov	r7,a
	push	ar2
	push	ar4
	push	ar5
	push	ar7
	mov	dptr,#0x4000
	mov	b,#0x9c
	mov	a,#0x3f
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2uint
;	./src/main.c:70: distance = (6228.4 / voltage - 1.4069)*100;
	lcall	___uint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0xa333
	mov	b,#0xc2
	mov	a,#0x45
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0x4d
	push	acc
	mov	a,#0x15
	push	acc
	mov	a,#0xb4
	push	acc
	mov	a,#0x3f
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fssub
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	b,#0xc8
	mov	a,#0x42
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2uint
	mov	r6,dpl
	mov	r7,dph
	pop	ar3
;	./src/main.c:71: OLED_SetCursor(1, 0);
	mov	_OLED_SetCursor_PARM_2,#0x00
	mov	dpl,#0x01
	push	ar7
	push	ar6
	push	ar3
	lcall	_OLED_SetCursor
	pop	ar3
	pop	ar6
	pop	ar7
;	./src/main.c:72: OLED_DisplayChar((distance / 1000) % 10 + '0');
	mov	__divuint_PARM_2,#0xe8
	mov	(__divuint_PARM_2 + 1),#0x03
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar3
	lcall	__divuint
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_OLED_DisplayChar
	pop	ar3
	pop	ar6
	pop	ar7
;	./src/main.c:73: OLED_DisplayChar((distance / 100) % 10 + '0');
	mov	__divuint_PARM_2,#0x64
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar3
	lcall	__divuint
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:74: OLED_DisplayChar('.');
	mov	dpl,#0x2e
	lcall	_OLED_DisplayChar
	pop	ar3
	pop	ar6
	pop	ar7
;	./src/main.c:75: OLED_DisplayChar((distance / 10) % 10 + '0');
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar3
	lcall	__divuint
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_OLED_DisplayChar
	pop	ar3
	pop	ar6
	pop	ar7
;	./src/main.c:76: OLED_DisplayChar((distance %10 + '0'));
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar3
	lcall	__moduint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_OLED_DisplayChar
	pop	ar3
	pop	ar6
	pop	ar7
;	./src/main.c:78: P1 = 0xff;
	mov	_P1,#0xff
;	./src/main.c:79: if (distance > 2000)continue;
	clr	c
	mov	a,#0xd0
	subb	a,r6
	mov	a,#0x07
	subb	a,r7
	jnc	00265$
	ljmp	00147$
00265$:
;	./src/main.c:80: if (distance <= 2000){
	clr	c
	mov	a,#0xd0
	subb	a,r6
	mov	a,#0x07
	subb	a,r7
	jnc	00266$
	ljmp	00147$
00266$:
;	./src/main.c:81: P1 = ~(1<<cnt);
	mov	ar7,r3
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00269$
00267$:
	add	a,acc
00269$:
	djnz	b,00267$
	cpl	a
	mov	_P1,a
;	./src/main.c:83: tmp[cnt] = readObjectTemp();
	mov	a,r3
	add	a,r3
	add	a,#_tmp
	mov	r1,a
	push	ar3
	push	ar1
	lcall	_readObjectTemp
	lcall	___fs2sint
	mov	a,dpl
	mov	b,dph
	pop	ar1
	pop	ar3
	mov	@r1,a
	inc	r1
	mov	@r1,b
	dec	r1
;	./src/main.c:84: if (cnt == 1){
	cjne	r3,#0x01,00106$
;	./src/main.c:85: OLED_SetCursor(5, 0); 
	mov	_OLED_SetCursor_PARM_2,#0x00
	mov	dpl,#0x05
	push	ar3
	lcall	_OLED_SetCursor
;	./src/main.c:87: OLED_DisplayChar(tmp[1] % 1000 / 100 + '0');
	mov	dpl,((_tmp + 0x0002) + 0)
	mov	dph,((_tmp + 0x0002) + 1)
	mov	__modsint_PARM_2,#0xe8
	mov	(__modsint_PARM_2 + 1),#0x03
	lcall	__modsint
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:88: OLED_DisplayChar(tmp[1] % 100 / 10 + '0');
	mov	dpl,((_tmp + 0x0002) + 0)
	mov	dph,((_tmp + 0x0002) + 1)
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:89: OLED_DisplayChar('.');
	mov	dpl,#0x2e
	lcall	_OLED_DisplayChar
;	./src/main.c:90: OLED_DisplayChar(tmp[1] % 10 / 1 + '0');
	mov	dpl,((_tmp + 0x0002) + 0)
	mov	dph,((_tmp + 0x0002) + 1)
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
	pop	ar3
00106$:
;	./src/main.c:93: temp = (tmp[cnt] % 1000 / 100)* 100 + (tmp[1] % 100 / 10) * 10 + (tmp[1] % 10 / 1);
	mov	a,r3
	add	a,r3
	add	a,#_tmp
	mov	r1,a
	mov	dpl,@r1
	inc	r1
	mov	dph,@r1
	dec	r1
	mov	__modsint_PARM_2,#0xe8
	mov	(__modsint_PARM_2 + 1),#0x03
	push	ar3
	lcall	__modsint
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
	mov	dptr,#0x0064
	lcall	__mulint
	mov	_main_sloc0_1_0,dpl
	mov	(_main_sloc0_1_0 + 1),dph
	pop	ar3
	mov	r4,((_tmp + 0x0002) + 0)
	mov	r5,((_tmp + 0x0002) + 1)
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r4
	mov	dph,r5
	push	ar5
	push	ar4
	push	ar3
	lcall	__modsint
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
	mov	dptr,#0x000a
	lcall	__mulint
	mov	r7,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,r7
	add	a,_main_sloc0_1_0
	mov	r7,a
	mov	a,r2
	addc	a,(_main_sloc0_1_0 + 1)
	mov	r2,a
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar3
	push	ar2
	lcall	__modsint
	mov	r5,dpl
	mov	r6,dph
	pop	ar2
	pop	ar3
	pop	ar7
	mov	a,r5
	add	a,r7
	mov	r7,a
	mov	a,r6
	addc	a,r2
	mov	r6,a
;	./src/main.c:95: if (temp>= 380){
	clr	c
	mov	a,r7
	subb	a,#0x7c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x81
	jc	00135$
;	./src/main.c:96: dot[1] |= (1 << (9-cnt));
	mov	ar5,r3
	mov	a,#0x09
	clr	c
	subb	a,r5
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00275$
00273$:
	add	a,acc
00275$:
	djnz	b,00273$
	mov	r5,a
	orl	a,(_dot + 0x0001)
	mov	(_dot + 0x0001),a
	ljmp	00136$
00135$:
;	./src/main.c:97: }else if (temp <= 379 && temp >= 375){
	clr	c
	mov	a,#0x7b
	subb	a,r7
	mov	a,#(0x01 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	mov	_main_sloc1_1_0,c
	jc	00131$
	clr	c
	mov	a,r7
	subb	a,#0x77
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x81
	jc	00131$
;	./src/main.c:98: dot[2] |= (1 << (9-cnt));
	mov	ar5,r3
	mov	a,#0x09
	clr	c
	subb	a,r5
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00280$
00278$:
	add	a,acc
00280$:
	djnz	b,00278$
	mov	r5,a
	orl	a,(_dot + 0x0002)
	mov	(_dot + 0x0002),a
	ljmp	00136$
00131$:
;	./src/main.c:99: }else if (temp <= 379 && temp >= 375){
	jb	_main_sloc1_1_0,00127$
	clr	c
	mov	a,r7
	subb	a,#0x77
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x81
	jc	00127$
;	./src/main.c:100: dot[3] |= (1 << (9-cnt));
	mov	ar5,r3
	mov	a,#0x09
	clr	c
	subb	a,r5
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00285$
00283$:
	add	a,acc
00285$:
	djnz	b,00283$
	mov	r5,a
	orl	a,(_dot + 0x0003)
	mov	(_dot + 0x0003),a
	ljmp	00136$
00127$:
;	./src/main.c:101: }else if (temp <= 379 && temp >= 375){
	jb	_main_sloc1_1_0,00123$
	clr	c
	mov	a,r7
	subb	a,#0x77
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x81
	jc	00123$
;	./src/main.c:102: dot[4] |= (1 << (9-cnt));
	mov	ar5,r3
	mov	a,#0x09
	clr	c
	subb	a,r5
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00290$
00288$:
	add	a,acc
00290$:
	djnz	b,00288$
	mov	r5,a
	orl	a,(_dot + 0x0004)
	mov	(_dot + 0x0004),a
	ljmp	00136$
00123$:
;	./src/main.c:103: }else if (temp <= 379 && temp >= 375){
	jb	_main_sloc1_1_0,00119$
	clr	c
	mov	a,r7
	subb	a,#0x77
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x81
	jc	00119$
;	./src/main.c:104: dot[5] |= (1 << (9-cnt));
	mov	ar5,r3
	mov	a,#0x09
	clr	c
	subb	a,r5
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00295$
00293$:
	add	a,acc
00295$:
	djnz	b,00293$
	mov	r5,a
	orl	a,(_dot + 0x0005)
	mov	(_dot + 0x0005),a
	sjmp	00136$
00119$:
;	./src/main.c:105: }else if (temp <= 379 && temp >= 375){
	jb	_main_sloc1_1_0,00115$
	clr	c
	mov	a,r7
	subb	a,#0x77
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x81
	jc	00115$
;	./src/main.c:106: dot[6] |= (1 << (9-cnt));
	mov	ar5,r3
	mov	a,#0x09
	clr	c
	subb	a,r5
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00300$
00298$:
	add	a,acc
00300$:
	djnz	b,00298$
	mov	r5,a
	orl	a,(_dot + 0x0006)
	mov	(_dot + 0x0006),a
	sjmp	00136$
00115$:
;	./src/main.c:107: }else if (temp <= 379 && temp >= 375){
	jb	_main_sloc1_1_0,00111$
	clr	c
	mov	a,r7
	subb	a,#0x77
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x81
	jc	00111$
;	./src/main.c:108: dot[7] |= (1 << (9-cnt));
	mov	ar5,r3
	mov	a,#0x09
	clr	c
	subb	a,r5
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00305$
00303$:
	add	a,acc
00305$:
	djnz	b,00303$
	mov	r5,a
	orl	a,(_dot + 0x0007)
	mov	(_dot + 0x0007),a
	sjmp	00136$
00111$:
;	./src/main.c:109: }else if (temp <= 379 && temp >= 375){
	jb	_main_sloc1_1_0,00136$
	clr	c
	mov	a,r7
	subb	a,#0x77
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x81
	jc	00136$
;	./src/main.c:110: dot[8] |= (1 << (9-cnt));
	mov	ar7,r3
	mov	a,#0x09
	clr	c
	subb	a,r7
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00310$
00308$:
	add	a,acc
00310$:
	djnz	b,00308$
	mov	r7,a
	orl	a,(_dot + 0x0008)
	mov	(_dot + 0x0008),a
00136$:
;	./src/main.c:112: if (tmp[cnt] > max_tmp)max_tmp = tmp[cnt];
	mov	a,r3
	add	a,r3
	add	a,#_tmp
	mov	r1,a
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	clr	c
	mov	a,_main_max_tmp_65536_32
	subb	a,r6
	mov	a,(_main_max_tmp_65536_32 + 1)
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00138$
	mov	_main_max_tmp_65536_32,r6
	mov	(_main_max_tmp_65536_32 + 1),r7
00138$:
;	./src/main.c:113: if (tmp[cnt] < min_tmp)min_tmp = tmp[cnt];
	mov	a,r3
	add	a,r3
	add	a,#_tmp
	mov	r1,a
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	clr	c
	mov	a,r6
	subb	a,_main_min_tmp_65536_32
	mov	a,r7
	xrl	a,#0x80
	mov	b,(_main_min_tmp_65536_32 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00140$
	mov	_main_min_tmp_65536_32,r6
	mov	(_main_min_tmp_65536_32 + 1),r7
00140$:
;	./src/main.c:114: cnt++;
	inc	r3
;	./src/main.c:115: P1 = 0xff;
	mov	_P1,#0xff
;	./src/main.c:120: }
	ljmp	00147$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
