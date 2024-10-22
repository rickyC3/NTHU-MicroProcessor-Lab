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
	.globl _readMPU6050_GyroData
	.globl _readMPU6050_AccelData
	.globl _MPU6050_INIT
	.globl _OLED_SetCursor
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
	.globl _patt
	.globl _gyro_data
	.globl _accel_data
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
_accel_data::
	.ds 6
_gyro_data::
	.ds 6
_patt::
	.ds 1
_main_seg_65536_37:
	.ds 9
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
;	./src/main.c:37: char i = 0;
	mov	_i,#0x00
;	./src/main.c:39: int accel_data[3] = {0, 0, 0};  // Stores the 16-bit signed accelerometer sensor output
	clr	a
	mov	(_accel_data + 0),a
	mov	(_accel_data + 1),a
	mov	((_accel_data + 0x0002) + 0),a
	mov	((_accel_data + 0x0002) + 1),a
	mov	((_accel_data + 0x0004) + 0),a
	mov	((_accel_data + 0x0004) + 1),a
;	./src/main.c:40: int gyro_data[3] = {0, 0, 0};   // Stores the 16-bit signed gyro sensor output
	mov	(_gyro_data + 0),a
	mov	(_gyro_data + 1),a
	mov	((_gyro_data + 0x0002) + 0),a
	mov	((_gyro_data + 0x0002) + 1),a
	mov	((_gyro_data + 0x0004) + 0),a
	mov	((_gyro_data + 0x0004) + 1),a
;	./src/main.c:41: unsigned char patt = 0x80;	//led value
	mov	_patt,#0x80
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
;seg                       Allocated with name '_main_seg_65536_37'
;------------------------------------------------------------
;	./src/main.c:44: void main(void)
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
;	./src/main.c:45: {	unsigned char seg[] = {
	mov	_main_seg_65536_37,#0x00
	mov	(_main_seg_65536_37 + 0x0001),#0x00
	mov	(_main_seg_65536_37 + 0x0002),#0x00
	mov	(_main_seg_65536_37 + 0x0003),#0x00
	mov	(_main_seg_65536_37 + 0x0004),#0x00
	mov	(_main_seg_65536_37 + 0x0005),#0x00
	mov	(_main_seg_65536_37 + 0x0006),#0x00
	mov	(_main_seg_65536_37 + 0x0007),#0x00
	mov	(_main_seg_65536_37 + 0x0008),#0x00
;	./src/main.c:56: Initial7219();	
	lcall	_Initial7219
;	./src/main.c:57: SDA = 1;
;	assignBit
	setb	_P0_1
;	./src/main.c:58: SCL = 1;
;	assignBit
	setb	_P0_0
;	./src/main.c:59: OLED_Init();		  // Check oled_i2c.c file for SCL,SDA pin connection
	lcall	_OLED_Init
;	./src/main.c:60: MPU6050_INIT();
	lcall	_MPU6050_INIT
;	./src/main.c:62: OLED_SetCursor(0,0);  // Set cursor at 0th-line 0th-Position
	mov	_OLED_SetCursor_PARM_2,#0x00
	mov	dpl,#0x00
	lcall	_OLED_SetCursor
;	./src/main.c:64: OLED_SetCursor(2, 0);  
	mov	_OLED_SetCursor_PARM_2,#0x00
	mov	dpl,#0x02
	lcall	_OLED_SetCursor
;	./src/main.c:65: OLED_DisplayString("AX ");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:66: OLED_SetCursor(3, 0);  
	mov	_OLED_SetCursor_PARM_2,#0x00
	mov	dpl,#0x03
	lcall	_OLED_SetCursor
;	./src/main.c:67: OLED_DisplayString("AY ");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:68: OLED_SetCursor(4, 0);  
	mov	_OLED_SetCursor_PARM_2,#0x00
	mov	dpl,#0x04
	lcall	_OLED_SetCursor
;	./src/main.c:69: OLED_DisplayString("AZ ");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:70: OLED_SetCursor(5, 0);  
	mov	_OLED_SetCursor_PARM_2,#0x00
	mov	dpl,#0x05
	lcall	_OLED_SetCursor
;	./src/main.c:71: OLED_DisplayString("GX ");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:72: OLED_SetCursor(6, 0);  
	mov	_OLED_SetCursor_PARM_2,#0x00
	mov	dpl,#0x06
	lcall	_OLED_SetCursor
;	./src/main.c:73: OLED_DisplayString("GY ");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:74: OLED_SetCursor(7, 0);  
	mov	_OLED_SetCursor_PARM_2,#0x00
	mov	dpl,#0x07
	lcall	_OLED_SetCursor
;	./src/main.c:75: OLED_DisplayString("GZ ");
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:77: patt = 0xff;led = ~patt;
	mov	_patt,#0xff
	mov	_P1,#0x00
;	./src/main.c:78: delay_ms(2000);
	mov	dptr,#0x07d0
	lcall	_delay_ms
;	./src/main.c:79: patt = 0x00;led = ~patt;
	mov	_patt,#0x00
	mov	_P1,#0xff
;	./src/main.c:80: while(1) {
00152$:
;	./src/main.c:81: readMPU6050_AccelData(&accel_data[0]);
	mov	dptr,#_accel_data
	mov	b,#0x40
	lcall	_readMPU6050_AccelData
;	./src/main.c:82: readMPU6050_GyroData(&gyro_data[0]);
	mov	dptr,#_gyro_data
	mov	b,#0x40
	lcall	_readMPU6050_GyroData
;	./src/main.c:84: for(i = 0; i < 6; i++) {
	mov	_i,#0x00
00154$:
;	./src/main.c:85: if(i < 3) {
	mov	a,#0x100 - 0x03
	add	a,_i
	jc	00102$
;	./src/main.c:86: data_buf = accel_data[i];
	mov	a,_i
	add	a,_i
	add	a,#_accel_data
	mov	r1,a
	mov	_data_buf,@r1
	inc	r1
	mov	(_data_buf + 1),@r1
	dec	r1
;	./src/main.c:87: OLED_SetCursor(2 + i, 54); 
	mov	r7,_i
	mov	a,#0x02
	add	a,r7
	mov	dpl,a
	mov	_OLED_SetCursor_PARM_2,#0x36
	lcall	_OLED_SetCursor
	sjmp	00103$
00102$:
;	./src/main.c:89: data_buf = gyro_data[i - 3];
	mov	a,_i
	mov	r7,a
	add	a,#0xfd
	add	a,acc
	add	a,#_gyro_data
	mov	r1,a
	mov	_data_buf,@r1
	inc	r1
	mov	(_data_buf + 1),@r1
	dec	r1
;	./src/main.c:90: OLED_SetCursor(2 + i, 54); 
	mov	a,#0x02
	add	a,r7
	mov	dpl,a
	mov	_OLED_SetCursor_PARM_2,#0x36
	lcall	_OLED_SetCursor
00103$:
;	./src/main.c:92: if(data_buf < 0) {
	mov	a,(_data_buf + 1)
	jnb	acc.7,00105$
;	./src/main.c:93: OLED_DisplayChar('-');
	mov	dpl,#0x2d
	lcall	_OLED_DisplayChar
;	./src/main.c:94: data_buf = data_buf * -1;
	clr	c
	clr	a
	subb	a,_data_buf
	mov	_data_buf,a
	clr	a
	subb	a,(_data_buf + 1)
	mov	(_data_buf + 1),a
	sjmp	00106$
00105$:
;	./src/main.c:96: OLED_DisplayChar(' ');
	mov	dpl,#0x20
	lcall	_OLED_DisplayChar
00106$:
;	./src/main.c:98: OLED_DisplayChar(data_buf / 10000 + '0');
	mov	__divsint_PARM_2,#0x10
	mov	(__divsint_PARM_2 + 1),#0x27
	mov	dpl,_data_buf
	mov	dph,(_data_buf + 1)
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:99: OLED_DisplayChar(data_buf % 10000 / 1000 + '0');
	mov	__modsint_PARM_2,#0x10
	mov	(__modsint_PARM_2 + 1),#0x27
	mov	dpl,_data_buf
	mov	dph,(_data_buf + 1)
	lcall	__modsint
	mov	__divsint_PARM_2,#0xe8
	mov	(__divsint_PARM_2 + 1),#0x03
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:100: OLED_DisplayChar(data_buf % 1000 / 100 + '0');
	mov	__modsint_PARM_2,#0xe8
	mov	(__modsint_PARM_2 + 1),#0x03
	mov	dpl,_data_buf
	mov	dph,(_data_buf + 1)
	lcall	__modsint
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:101: OLED_DisplayChar(data_buf % 100 / 10 + '0');
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_data_buf
	mov	dph,(_data_buf + 1)
	lcall	__modsint
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:102: OLED_DisplayChar(data_buf % 10 + '0');
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_data_buf
	mov	dph,(_data_buf + 1)
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:84: for(i = 0; i < 6; i++) {
	inc	_i
	mov	a,#0x100 - 0x06
	add	a,_i
	jc	00330$
	ljmp	00154$
00330$:
;	./src/main.c:107: data_buf = accel_data[2];
	mov	_data_buf,((_accel_data + 0x0004) + 0)
	mov	(_data_buf + 1),((_accel_data + 0x0004) + 1)
;	./src/main.c:108: while (data_buf >= 16000){
00116$:
	clr	c
	mov	a,_data_buf
	subb	a,#0x80
	mov	a,(_data_buf + 1)
	xrl	a,#0x80
	subb	a,#0xbe
	jnc	00331$
	ljmp	00118$
00331$:
;	./src/main.c:109: patt = 0x18;led = ~patt;
	mov	_patt,#0x18
	mov	_P1,#0xe7
;	./src/main.c:110: delay_ms(500);
	mov	dptr,#0x01f4
	lcall	_delay_ms
;	./src/main.c:111: patt = 0x00;led = ~patt;
	mov	_patt,#0x00
	mov	_P1,#0xff
;	./src/main.c:112: seg[5] = 0x18;
	mov	(_main_seg_65536_37 + 0x0005),#0x18
;	./src/main.c:113: seg[4] = 0x18;
	mov	(_main_seg_65536_37 + 0x0004),#0x18
;	./src/main.c:114: for (i = 8; i >= 1; i--) {
	mov	_i,#0x08
00156$:
;	./src/main.c:115: Writesingle7219(1,i, seg[i]);
	mov	a,_i
	add	a,#_main_seg_65536_37
	mov	r1,a
	mov	_Writesingle7219_PARM_3,@r1
	mov	_Writesingle7219_PARM_2,_i
	mov	dpl,#0x01
	lcall	_Writesingle7219
;	./src/main.c:114: for (i = 8; i >= 1; i--) {
	dec	_i
	mov	a,#0x100 - 0x01
	add	a,_i
	jc	00156$
;	./src/main.c:118: readMPU6050_AccelData(&accel_data[0]);
	mov	dptr,#_accel_data
	mov	b,#0x40
	lcall	_readMPU6050_AccelData
;	./src/main.c:119: readMPU6050_GyroData(&gyro_data[0]);
	mov	dptr,#_gyro_data
	mov	b,#0x40
	lcall	_readMPU6050_GyroData
;	./src/main.c:121: for(i = 0; i < 6; i++) {
	mov	_i,#0x00
00158$:
;	./src/main.c:122: if(i < 3) {
	mov	a,#0x100 - 0x03
	add	a,_i
	jc	00110$
;	./src/main.c:123: data_buf = accel_data[i];
	mov	a,_i
	add	a,_i
	add	a,#_accel_data
	mov	r1,a
	mov	_data_buf,@r1
	inc	r1
	mov	(_data_buf + 1),@r1
	dec	r1
;	./src/main.c:124: OLED_SetCursor(2 + i, 54); 
	mov	r7,_i
	mov	a,#0x02
	add	a,r7
	mov	dpl,a
	mov	_OLED_SetCursor_PARM_2,#0x36
	lcall	_OLED_SetCursor
	sjmp	00111$
00110$:
;	./src/main.c:126: data_buf = gyro_data[i - 3];
	mov	a,_i
	mov	r7,a
	add	a,#0xfd
	add	a,acc
	add	a,#_gyro_data
	mov	r1,a
	mov	_data_buf,@r1
	inc	r1
	mov	(_data_buf + 1),@r1
	dec	r1
;	./src/main.c:127: OLED_SetCursor(2 + i, 54); 
	mov	a,#0x02
	add	a,r7
	mov	dpl,a
	mov	_OLED_SetCursor_PARM_2,#0x36
	lcall	_OLED_SetCursor
00111$:
;	./src/main.c:129: if(data_buf < 0) {
	mov	a,(_data_buf + 1)
	jnb	acc.7,00113$
;	./src/main.c:130: OLED_DisplayChar('-');
	mov	dpl,#0x2d
	lcall	_OLED_DisplayChar
;	./src/main.c:131: data_buf = data_buf * -1;
	clr	c
	clr	a
	subb	a,_data_buf
	mov	_data_buf,a
	clr	a
	subb	a,(_data_buf + 1)
	mov	(_data_buf + 1),a
	sjmp	00114$
00113$:
;	./src/main.c:133: OLED_DisplayChar(' ');
	mov	dpl,#0x20
	lcall	_OLED_DisplayChar
00114$:
;	./src/main.c:135: OLED_DisplayChar(data_buf / 10000 + '0');
	mov	__divsint_PARM_2,#0x10
	mov	(__divsint_PARM_2 + 1),#0x27
	mov	dpl,_data_buf
	mov	dph,(_data_buf + 1)
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:136: OLED_DisplayChar(data_buf % 10000 / 1000 + '0');
	mov	__modsint_PARM_2,#0x10
	mov	(__modsint_PARM_2 + 1),#0x27
	mov	dpl,_data_buf
	mov	dph,(_data_buf + 1)
	lcall	__modsint
	mov	__divsint_PARM_2,#0xe8
	mov	(__divsint_PARM_2 + 1),#0x03
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:137: OLED_DisplayChar(data_buf % 1000 / 100 + '0');
	mov	__modsint_PARM_2,#0xe8
	mov	(__modsint_PARM_2 + 1),#0x03
	mov	dpl,_data_buf
	mov	dph,(_data_buf + 1)
	lcall	__modsint
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:138: OLED_DisplayChar(data_buf % 100 / 10 + '0');
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_data_buf
	mov	dph,(_data_buf + 1)
	lcall	__modsint
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:139: OLED_DisplayChar(data_buf % 10 + '0');
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_data_buf
	mov	dph,(_data_buf + 1)
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:121: for(i = 0; i < 6; i++) {
	inc	_i
	mov	a,#0x100 - 0x06
	add	a,_i
	jc	00335$
	ljmp	00158$
00335$:
	ljmp	00116$
00118$:
;	./src/main.c:143: data_buf = accel_data[0];
	mov	_data_buf,(_accel_data + 0)
	mov	(_data_buf + 1),(_accel_data + 1)
;	./src/main.c:144: if (data_buf <= -15000){
	clr	c
	mov	a,#0x68
	subb	a,_data_buf
	mov	a,#(0xc5 ^ 0x80)
	mov	b,(_data_buf + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00149$
;	./src/main.c:145: patt = 0b00000011;
	mov	_patt,#0x03
;	./src/main.c:146: seg[5] = 0xC0;
	mov	(_main_seg_65536_37 + 0x0005),#0xc0
;	./src/main.c:147: seg[4] = 0xC0;
	mov	(_main_seg_65536_37 + 0x0004),#0xc0
;	./src/main.c:148: for (i = 8; i >= 1; i--) {
	mov	_i,#0x08
00160$:
;	./src/main.c:149: Writesingle7219(1,i, seg[i]);
	mov	a,_i
	add	a,#_main_seg_65536_37
	mov	r1,a
	mov	_Writesingle7219_PARM_3,@r1
	mov	_Writesingle7219_PARM_2,_i
	mov	dpl,#0x01
	lcall	_Writesingle7219
;	./src/main.c:148: for (i = 8; i >= 1; i--) {
	dec	_i
	mov	a,#0x100 - 0x01
	add	a,_i
	jc	00160$
	ljmp	00150$
00149$:
;	./src/main.c:151: }else if (data_buf > -15000 && data_buf <= -9000){
	clr	c
	mov	a,#0x68
	subb	a,_data_buf
	mov	a,#(0xc5 ^ 0x80)
	mov	b,(_data_buf + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00145$
	clr	c
	mov	a,#0xd8
	subb	a,_data_buf
	mov	a,#(0xdc ^ 0x80)
	mov	b,(_data_buf + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00145$
;	./src/main.c:152: patt = 0b00000110;
	mov	_patt,#0x06
;	./src/main.c:153: seg[5] = 0x60;
	mov	(_main_seg_65536_37 + 0x0005),#0x60
;	./src/main.c:154: seg[4] = 0x60;
	mov	(_main_seg_65536_37 + 0x0004),#0x60
;	./src/main.c:155: for (i = 8; i >= 1; i--) {
	mov	_i,#0x08
00162$:
;	./src/main.c:156: Writesingle7219(1,i, seg[i]);
	mov	a,_i
	add	a,#_main_seg_65536_37
	mov	r1,a
	mov	_Writesingle7219_PARM_3,@r1
	mov	_Writesingle7219_PARM_2,_i
	mov	dpl,#0x01
	lcall	_Writesingle7219
;	./src/main.c:155: for (i = 8; i >= 1; i--) {
	dec	_i
	mov	a,#0x100 - 0x01
	add	a,_i
	jc	00162$
	ljmp	00150$
00145$:
;	./src/main.c:158: }else if (data_buf > -9000 && data_buf <= -3200){
	clr	c
	mov	a,#0xd8
	subb	a,_data_buf
	mov	a,#(0xdc ^ 0x80)
	mov	b,(_data_buf + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00141$
	clr	c
	mov	a,#0x80
	subb	a,_data_buf
	mov	a,#(0xf3 ^ 0x80)
	mov	b,(_data_buf + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00141$
;	./src/main.c:159: patt = 0b001100;
	mov	_patt,#0x0c
;	./src/main.c:160: seg[5] = 0x30;
	mov	(_main_seg_65536_37 + 0x0005),#0x30
;	./src/main.c:161: seg[4] = 0x30;
	mov	(_main_seg_65536_37 + 0x0004),#0x30
;	./src/main.c:162: for (i = 8; i >= 1; i--) {
	mov	_i,#0x08
00164$:
;	./src/main.c:163: Writesingle7219(1,i, seg[i]);
	mov	a,_i
	add	a,#_main_seg_65536_37
	mov	r1,a
	mov	_Writesingle7219_PARM_3,@r1
	mov	_Writesingle7219_PARM_2,_i
	mov	dpl,#0x01
	lcall	_Writesingle7219
;	./src/main.c:162: for (i = 8; i >= 1; i--) {
	dec	_i
	mov	a,#0x100 - 0x01
	add	a,_i
	jc	00164$
	ljmp	00150$
00141$:
;	./src/main.c:165: }else if (data_buf > -3200 && data_buf <= 3200){
	clr	c
	mov	a,#0x80
	subb	a,_data_buf
	mov	a,#(0xf3 ^ 0x80)
	mov	b,(_data_buf + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00137$
	clr	c
	mov	a,#0x80
	subb	a,_data_buf
	mov	a,#(0x0c ^ 0x80)
	mov	b,(_data_buf + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00137$
;	./src/main.c:166: patt = 0x18;
	mov	_patt,#0x18
;	./src/main.c:167: seg[5] = 0x18;
	mov	(_main_seg_65536_37 + 0x0005),#0x18
;	./src/main.c:168: seg[4] = 0x18;            
	mov	(_main_seg_65536_37 + 0x0004),#0x18
;	./src/main.c:169: for (i = 8; i >= 1; i--) {
	mov	_i,#0x08
00166$:
;	./src/main.c:170: Writesingle7219(1,i, seg[i]);
	mov	a,_i
	add	a,#_main_seg_65536_37
	mov	r1,a
	mov	_Writesingle7219_PARM_3,@r1
	mov	_Writesingle7219_PARM_2,_i
	mov	dpl,#0x01
	lcall	_Writesingle7219
;	./src/main.c:169: for (i = 8; i >= 1; i--) {
	dec	_i
	mov	a,#0x100 - 0x01
	add	a,_i
	jc	00166$
	ljmp	00150$
00137$:
;	./src/main.c:172: }else if (data_buf > 3200 && data_buf <= 9600){
	clr	c
	mov	a,#0x80
	subb	a,_data_buf
	mov	a,#(0x0c ^ 0x80)
	mov	b,(_data_buf + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00133$
	clr	c
	mov	a,#0x80
	subb	a,_data_buf
	mov	a,#(0x25 ^ 0x80)
	mov	b,(_data_buf + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00133$
;	./src/main.c:173: patt = 0b00110000;
	mov	_patt,#0x30
;	./src/main.c:174: seg[5] = 0x0C;
	mov	(_main_seg_65536_37 + 0x0005),#0x0c
;	./src/main.c:175: seg[4] = 0x0C;  
	mov	(_main_seg_65536_37 + 0x0004),#0x0c
;	./src/main.c:176: for (i = 8; i >= 1; i--) {
	mov	_i,#0x08
00168$:
;	./src/main.c:177: Writesingle7219(1,i, seg[i]);
	mov	a,_i
	add	a,#_main_seg_65536_37
	mov	r1,a
	mov	_Writesingle7219_PARM_3,@r1
	mov	_Writesingle7219_PARM_2,_i
	mov	dpl,#0x01
	lcall	_Writesingle7219
;	./src/main.c:176: for (i = 8; i >= 1; i--) {
	dec	_i
	mov	a,#0x100 - 0x01
	add	a,_i
	jc	00168$
	ljmp	00150$
00133$:
;	./src/main.c:179: }else if (data_buf > 9600 && data_buf <= 16000){
	clr	c
	mov	a,#0x80
	subb	a,_data_buf
	mov	a,#(0x25 ^ 0x80)
	mov	b,(_data_buf + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00129$
	clr	c
	mov	a,#0x80
	subb	a,_data_buf
	mov	a,#(0x3e ^ 0x80)
	mov	b,(_data_buf + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00129$
;	./src/main.c:180: patt = 0b01100000;
	mov	_patt,#0x60
;	./src/main.c:181: seg[5] = 0x06;
	mov	(_main_seg_65536_37 + 0x0005),#0x06
;	./src/main.c:182: seg[4] = 0x06; 
	mov	(_main_seg_65536_37 + 0x0004),#0x06
;	./src/main.c:183: for (i = 8; i >= 1; i--) {
	mov	_i,#0x08
00170$:
;	./src/main.c:184: Writesingle7219(1,i, seg[i]);
	mov	a,_i
	add	a,#_main_seg_65536_37
	mov	r1,a
	mov	_Writesingle7219_PARM_3,@r1
	mov	_Writesingle7219_PARM_2,_i
	mov	dpl,#0x01
	lcall	_Writesingle7219
;	./src/main.c:183: for (i = 8; i >= 1; i--) {
	dec	_i
	mov	a,#0x100 - 0x01
	add	a,_i
	jc	00170$
	sjmp	00150$
00129$:
;	./src/main.c:186: }else if (data_buf > 16000 ){
	clr	c
	mov	a,#0x80
	subb	a,_data_buf
	mov	a,#(0x3e ^ 0x80)
	mov	b,(_data_buf + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00150$
;	./src/main.c:187: patt = 0b11000000;
	mov	_patt,#0xc0
;	./src/main.c:188: seg[5] = 0x03;
	mov	(_main_seg_65536_37 + 0x0005),#0x03
;	./src/main.c:189: seg[4] = 0x03; 
	mov	(_main_seg_65536_37 + 0x0004),#0x03
;	./src/main.c:190: for (i = 8; i >= 1; i--) {
	mov	_i,#0x08
00172$:
;	./src/main.c:191: Writesingle7219(1,i, seg[i]);
	mov	a,_i
	add	a,#_main_seg_65536_37
	mov	r1,a
	mov	_Writesingle7219_PARM_3,@r1
	mov	_Writesingle7219_PARM_2,_i
	mov	dpl,#0x01
	lcall	_Writesingle7219
;	./src/main.c:190: for (i = 8; i >= 1; i--) {
	dec	_i
	mov	a,#0x100 - 0x01
	add	a,_i
	jc	00172$
00150$:
;	./src/main.c:196: led = ~patt;
	mov	a,_patt
	cpl	a
	mov	_P1,a
;	./src/main.c:197: delay_ms(100);
	mov	dptr,#0x0064
	lcall	_delay_ms
;	./src/main.c:199: }
	ljmp	00152$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "AX "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "AY "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "AZ "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "GX "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "GY "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "GZ "
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
