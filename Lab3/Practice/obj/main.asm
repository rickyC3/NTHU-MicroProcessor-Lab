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
	.globl _readMPU6050_AccelData
	.globl _MPU6050_INIT
	.globl _OLED_SetCursor
	.globl _OLED_Clear
	.globl _OLED_DisplayString
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
	.globl _gyro_data
	.globl _accel_data
	.globl _y
	.globl _x
	.globl _i
	.globl _data_buf
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
_data_buf::
	.ds 2
_i::
	.ds 1
_x::
	.ds 2
_y::
	.ds 2
_accel_data::
	.ds 6
_gyro_data::
	.ds 6
_main_ref_y_65537_62:
	.ds 2
_main_last_x_65537_62:
	.ds 2
_main_last_y_65537_62:
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
;	./src/main.c:34: char i = 0;
	mov	_i,#0x00
;	./src/main.c:37: int accel_data[3] = {0, 0, 0};  // Stores the 16-bit signed accelerometer sensor output
	clr	a
	mov	(_accel_data + 0),a
	mov	(_accel_data + 1),a
	mov	((_accel_data + 0x0002) + 0),a
	mov	((_accel_data + 0x0002) + 1),a
	mov	((_accel_data + 0x0004) + 0),a
	mov	((_accel_data + 0x0004) + 1),a
;	./src/main.c:38: int gyro_data[3] = {0, 0, 0};   // Stores the 16-bit signed gyro sensor output
	mov	(_gyro_data + 0),a
	mov	(_gyro_data + 1),a
	mov	((_gyro_data + 0x0002) + 0),a
	mov	((_gyro_data + 0x0002) + 1),a
	mov	((_gyro_data + 0x0004) + 0),a
	mov	((_gyro_data + 0x0004) + 1),a
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
;ref_x                     Allocated to registers r6 r7 
;ref_y                     Allocated with name '_main_ref_y_65537_62'
;last_x                    Allocated with name '_main_last_x_65537_62'
;last_y                    Allocated with name '_main_last_y_65537_62'
;------------------------------------------------------------
;	./src/main.c:40: void main(void)
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
;	./src/main.c:44: SDA = 1;
;	assignBit
	setb	_P0_1
;	./src/main.c:45: SCL = 1;
;	assignBit
	setb	_P0_0
;	./src/main.c:46: OLED_Init();		  // Check oled_i2c.c file for SCL,SDA pin connection
	lcall	_OLED_Init
;	./src/main.c:47: MPU6050_INIT();    
	lcall	_MPU6050_INIT
;	./src/main.c:59: OLED_SetCursor(3, 60); // right
	mov	_OLED_SetCursor_PARM_2,#0x3c
	mov	dpl,#0x03
	lcall	_OLED_SetCursor
;	./src/main.c:60: OLED_DisplayString("start");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:62: readMPU6050_AccelData(&accel_data[0]);
	mov	dptr,#_accel_data
	mov	b,#0x40
	lcall	_readMPU6050_AccelData
;	./src/main.c:64: x = 3;y = 60;
	mov	_x,#0x03
	mov	(_x + 1),#0x00
	mov	_y,#0x3c
	mov	(_y + 1),#0x00
;	./src/main.c:65: int ref_x = accel_data[0]; // add -> foward,  x--, 
	mov	r6,(_accel_data + 0)
	mov	r7,(_accel_data + 1)
;	./src/main.c:66: int ref_y = accel_data[1]; // add -> left , y--
	mov	_main_ref_y_65537_62,((_accel_data + 0x0002) + 0)
	mov	(_main_ref_y_65537_62 + 1),((_accel_data + 0x0002) + 1)
;	./src/main.c:67: int last_x = 3;
	mov	_main_last_x_65537_62,#0x03
	mov	(_main_last_x_65537_62 + 1),#0x00
;	./src/main.c:68: int last_y = 60;
	mov	_main_last_y_65537_62,#0x3c
	mov	(_main_last_y_65537_62 + 1),#0x00
;	./src/main.c:69: OLED_Clear();
	push	ar7
	push	ar6
	lcall	_OLED_Clear
	pop	ar6
	pop	ar7
;	./src/main.c:70: while(1) {
00127$:
;	./src/main.c:72: OLED_SetCursor(last_x, last_y);
	mov	dpl,_main_last_x_65537_62
	mov	_OLED_SetCursor_PARM_2,_main_last_y_65537_62
	push	ar7
	push	ar6
	lcall	_OLED_SetCursor
;	./src/main.c:73: OLED_DisplayChar(' ');
	mov	dpl,#0x20
	lcall	_OLED_DisplayChar
;	./src/main.c:75: OLED_SetCursor(x, y);
	mov	dpl,_x
	mov	_OLED_SetCursor_PARM_2,_y
	lcall	_OLED_SetCursor
;	./src/main.c:76: OLED_DisplayChar('0');
	mov	dpl,#0x30
	lcall	_OLED_DisplayChar
;	./src/main.c:77: last_x = x;last_y = y;
	mov	_main_last_x_65537_62,_x
	mov	(_main_last_x_65537_62 + 1),(_x + 1)
	mov	_main_last_y_65537_62,_y
	mov	(_main_last_y_65537_62 + 1),(_y + 1)
;	./src/main.c:78: readMPU6050_AccelData(&accel_data[0]);     
	mov	dptr,#_accel_data
	mov	b,#0x40
	lcall	_readMPU6050_AccelData
	pop	ar6
	pop	ar7
;	./src/main.c:80: if (accel_data[0] > ref_x  && x > 0){
	mov	r2,(_accel_data + 0)
	mov	r3,(_accel_data + 1)
	clr	c
	mov	a,r6
	subb	a,r2
	mov	a,r7
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
	clr	c
	clr	a
	subb	a,_x
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_x + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
;	./src/main.c:81: x -= (accel_data[0] - ref_x) / 4000;
	mov	a,r2
	clr	c
	subb	a,r6
	mov	dpl,a
	mov	a,r3
	subb	a,r7
	mov	dph,a
	mov	__divsint_PARM_2,#0xa0
	mov	(__divsint_PARM_2 + 1),#0x0f
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r2,dpl
	mov	r3,dph
	pop	ar6
	pop	ar7
	mov	a,_x
	clr	c
	subb	a,r2
	mov	_x,a
	mov	a,(_x + 1)
	subb	a,r3
	mov	(_x + 1),a
	sjmp	00105$
00104$:
;	./src/main.c:82: }else if (accel_data[0] < ref_x & x < 8){
	mov	r2,(_accel_data + 0)
	mov	r3,(_accel_data + 1)
	clr	c
	mov	a,r2
	subb	a,r6
	mov	a,r3
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	clr	a
	rlc	a
	mov	r5,a
	clr	c
	mov	a,_x
	subb	a,#0x08
	mov	a,(_x + 1)
	xrl	a,#0x80
	subb	a,#0x80
	clr	a
	rlc	a
	mov	r4,a
	anl	a,r5
	jz	00105$
;	./src/main.c:83: x += (ref_x - accel_data[0]) / 4000;;
	mov	a,r6
	clr	c
	subb	a,r2
	mov	dpl,a
	mov	a,r7
	subb	a,r3
	mov	dph,a
	mov	__divsint_PARM_2,#0xa0
	mov	(__divsint_PARM_2 + 1),#0x0f
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,_x
	mov	_x,a
	mov	a,r5
	addc	a,(_x + 1)
	mov	(_x + 1),a
00105$:
;	./src/main.c:85: if (accel_data[1] > ref_y  &&  y > 0){
	mov	r4,((_accel_data + 0x0002) + 0)
	mov	r5,((_accel_data + 0x0002) + 1)
	clr	c
	mov	a,_main_ref_y_65537_62
	subb	a,r4
	mov	a,(_main_ref_y_65537_62 + 1)
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00111$
	clr	c
	clr	a
	subb	a,_y
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_y + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00111$
;	./src/main.c:86: y-=5 * ((accel_data[1] - ref_y)/4000);
	mov	a,r4
	clr	c
	subb	a,_main_ref_y_65537_62
	mov	dpl,a
	mov	a,r5
	subb	a,(_main_ref_y_65537_62 + 1)
	mov	dph,a
	mov	__divsint_PARM_2,#0xa0
	mov	(__divsint_PARM_2 + 1),#0x0f
	push	ar7
	push	ar6
	lcall	__divsint
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
	mov	dptr,#0x0005
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,_y
	clr	c
	subb	a,r4
	mov	_y,a
	mov	a,(_y + 1)
	subb	a,r5
	mov	(_y + 1),a
	sjmp	00112$
00111$:
;	./src/main.c:87: }else if (accel_data[1] < ref_y  && y < 120){
	mov	r4,((_accel_data + 0x0002) + 0)
	mov	r5,((_accel_data + 0x0002) + 1)
	clr	c
	mov	a,r4
	subb	a,_main_ref_y_65537_62
	mov	a,r5
	xrl	a,#0x80
	mov	b,(_main_ref_y_65537_62 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00112$
	clr	c
	mov	a,_y
	subb	a,#0x78
	mov	a,(_y + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00112$
;	./src/main.c:88: y+=5 * ((ref_y - accel_data[1])/4000);
	mov	a,_main_ref_y_65537_62
	clr	c
	subb	a,r4
	mov	dpl,a
	mov	a,(_main_ref_y_65537_62 + 1)
	subb	a,r5
	mov	dph,a
	mov	__divsint_PARM_2,#0xa0
	mov	(__divsint_PARM_2 + 1),#0x0f
	push	ar7
	push	ar6
	lcall	__divsint
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
	mov	dptr,#0x0005
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,_y
	mov	_y,a
	mov	a,r5
	addc	a,(_y + 1)
	mov	(_y + 1),a
00112$:
;	./src/main.c:90: if (y > 120)y = 120;
	clr	c
	mov	a,#0x78
	subb	a,_y
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_y + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00118$
	mov	_y,#0x78
	mov	(_y + 1),#0x00
	sjmp	00119$
00118$:
;	./src/main.c:91: else if (y < 0) y = 0;
	mov	a,(_y + 1)
	jnb	acc.7,00115$
	clr	a
	mov	_y,a
	mov	(_y + 1),a
;	./src/main.c:92: else y = y;
00115$:
00119$:
;	./src/main.c:94: if (x > 7)x = 7;
	clr	c
	mov	a,#0x07
	subb	a,_x
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_x + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00124$
	mov	_x,#0x07
	mov	(_x + 1),#0x00
	sjmp	00125$
00124$:
;	./src/main.c:95: else if (x < 0) x = 0;
	mov	a,(_x + 1)
	jnb	acc.7,00121$
	clr	a
	mov	_x,a
	mov	(_x + 1),a
;	./src/main.c:96: else x = x;
00121$:
00125$:
;	./src/main.c:98: delay_ms(100);
	mov	dptr,#0x0064
	push	ar7
	push	ar6
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	./src/main.c:100: }
	ljmp	00127$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "start"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
