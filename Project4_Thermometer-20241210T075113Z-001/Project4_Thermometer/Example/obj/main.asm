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
	.globl _T0_isr
	.globl _Initial7219
	.globl _read_adc3202
	.globl _I2C_RecvByte
	.globl _I2C_SendByte
	.globl _I2C_SendACK
	.globl _I2C_Stop
	.globl _I2C_Start
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
	.globl _adc_value
	.globl _temp
	.globl _oled_out
	.globl _cnt2
	.globl _cnt
	.globl _data_buf2
	.globl _data_buf1
	.globl __addr
	.globl _readObjectTemp
	.globl _readAmbientTemp
	.globl _readTemp
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
__addr::
	.ds 1
_data_buf1::
	.ds 2
_data_buf2::
	.ds 2
_cnt::
	.ds 2
_cnt2::
	.ds 2
_oled_out::
	.ds 2
_temp::
	.ds 4
_adc_value::
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
_T0_isr_sloc0_1_0:
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
	reti
	.ds	7
	ljmp	_T0_isr
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
;	./inc/MLX90614.h:16: uint8_t  _addr = 0xb4;    // 0x5a --> 0xb4
	mov	__addr,#0xb4
;	./src/main.c:10: int data_buf1, data_buf2, cnt = 0, cnt2 = 0, oled_out = 0;
	clr	a
	mov	_cnt,a
	mov	(_cnt + 1),a
;	./src/main.c:10: float temp = 0.0;
	mov	_cnt2,a
	mov	(_cnt2 + 1),a
;	./src/main.c:10: int data_buf1, data_buf2, cnt = 0, cnt2 = 0, oled_out = 0;
	mov	_oled_out,a
	mov	(_oled_out + 1),a
;	./src/main.c:11: float temp = 0.0;
	mov	_temp,a
	mov	(_temp + 1),a
	mov	(_temp + 2),a
	mov	(_temp + 3),a
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
;Allocation info for local variables in function 'readObjectTemp'
;------------------------------------------------------------
;	./inc/MLX90614.h:18: float readObjectTemp(void) {
;	-----------------------------------------
;	 function readObjectTemp
;	-----------------------------------------
_readObjectTemp:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./inc/MLX90614.h:19: return readTemp(OBJECT_TEMP);
	mov	dpl,#0x07
;	./inc/MLX90614.h:20: }
	ljmp	_readTemp
;------------------------------------------------------------
;Allocation info for local variables in function 'readAmbientTemp'
;------------------------------------------------------------
;	./inc/MLX90614.h:22: float readAmbientTemp(void) {
;	-----------------------------------------
;	 function readAmbientTemp
;	-----------------------------------------
_readAmbientTemp:
;	./inc/MLX90614.h:23: return readTemp(AMBIENT_TEMP);
	mov	dpl,#0x06
;	./inc/MLX90614.h:24: }
	ljmp	_readTemp
;------------------------------------------------------------
;Allocation info for local variables in function 'readTemp'
;------------------------------------------------------------
;reg                       Allocated to registers r7 
;temp                      Allocated to registers r4 r5 r6 r7 
;tempData                  Allocated to registers r5 r4 
;pec                       Allocated to registers 
;------------------------------------------------------------
;	./inc/MLX90614.h:26: float readTemp(uint8_t reg) {
;	-----------------------------------------
;	 function readTemp
;	-----------------------------------------
_readTemp:
	mov	r7,dpl
;	./inc/MLX90614.h:31: I2C_Start();
	push	ar7
	lcall	_I2C_Start
;	./inc/MLX90614.h:32: I2C_SendByte(_addr);            // 0xb4
	mov	dpl,__addr
	lcall	_I2C_SendByte
	pop	ar7
;	./inc/MLX90614.h:33: I2C_SendByte(reg);
	mov	dpl,r7
	lcall	_I2C_SendByte
;	./inc/MLX90614.h:34: SDA = 1;                        // pull up 2 wires to restart
;	assignBit
	setb	_P0_1
;	./inc/MLX90614.h:35: SCL = 1;                        
;	assignBit
	setb	_P0_0
;	./inc/MLX90614.h:36: I2C_Start();                    // restart
	lcall	_I2C_Start
;	./inc/MLX90614.h:37: I2C_SendByte(_addr|0x01);       // 0xb4 --> 0xb5
	mov	a,__addr
	orl	a,#0x01
	mov	dpl,a
	lcall	_I2C_SendByte
;	./inc/MLX90614.h:38: tempData = I2C_RecvByte();      // LSByte
	lcall	_I2C_RecvByte
	mov	r7,dpl
	mov	r6,#0x00
;	./inc/MLX90614.h:39: I2C_SendACK(0);
;	assignBit
	clr	_I2C_SendACK_PARM_1
	push	ar7
	push	ar6
	lcall	_I2C_SendACK
;	./inc/MLX90614.h:40: tempData |= I2C_RecvByte() << 8;  // { MSByte , LSByte } 
	lcall	_I2C_RecvByte
	mov	r5,dpl
	pop	ar6
	pop	ar7
	mov	ar4,r5
	mov	r5,#0x00
	mov	a,r7
	orl	ar5,a
	mov	a,r6
	orl	ar4,a
;	./inc/MLX90614.h:41: I2C_SendACK(0);
;	assignBit
	clr	_I2C_SendACK_PARM_1
	push	ar5
	push	ar4
	lcall	_I2C_SendACK
;	./inc/MLX90614.h:42: pec = I2C_RecvByte();           // 8-bit pec 
	lcall	_I2C_RecvByte
;	./inc/MLX90614.h:43: I2C_SendACK(1);
;	assignBit
	setb	_I2C_SendACK_PARM_1
	lcall	_I2C_SendACK
;	./inc/MLX90614.h:44: I2C_Stop();
	lcall	_I2C_Stop
	pop	ar4
	pop	ar5
;	./inc/MLX90614.h:45: temp = tempData;               // raw 16-bit tempData 
	mov	dpl,r5
	mov	dph,r4
	lcall	___uint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	./inc/MLX90614.h:46: temp *= 0.02;                  // calculate temperature in Celsius 
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0xd70a
	mov	b,#0xa3
	mov	a,#0x3c
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	./inc/MLX90614.h:47: temp -= 273.15;
	mov	a,#0x33
	push	acc
	mov	a,#0x93
	push	acc
	mov	a,#0x88
	push	acc
	mov	a,#0x43
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
;	./inc/MLX90614.h:48: temp = temp * 10 ;             // in order to show 1 decimal bit
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	b,#0x20
	mov	a,#0x41
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	./inc/MLX90614.h:50: return temp;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
;	./inc/MLX90614.h:51: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'T0_isr'
;------------------------------------------------------------
;	./src/main.c:14: void T0_isr(void) __interrupt (1)
;	-----------------------------------------
;	 function T0_isr
;	-----------------------------------------
_T0_isr:
	push	acc
	push	b
	push	ar7
	push	ar6
	push	psw
	mov	psw,#0x00
;	./src/main.c:17: TH0 = (65536-1000) >> 8;
	mov	_TH0,#0xfc
;	./src/main.c:18: TL0 = (65536-1000) & 0xff;
	mov	_TL0,#0x18
;	./src/main.c:19: cnt++;
	inc	_cnt
	clr	a
	cjne	a,_cnt,00134$
	inc	(_cnt + 1)
00134$:
;	./src/main.c:20: if (cnt2 <= 8) P3_7 = (cnt2 & 1) ? (P3_7 ? 0 : 1) : 0;
	clr	c
	mov	a,#0x08
	subb	a,_cnt2
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_cnt2 + 1)
	xrl	b,#0x80
	subb	a,b
	mov	_T0_isr_sloc0_1_0,c
	jc	00102$
	mov	a,_cnt2
	jnb	acc.0,00110$
	jnb	_P3_7,00112$
	mov	r6,#0x00
	mov	r7,#0x00
	sjmp	00111$
00112$:
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00111$
00110$:
	mov	r6,#0x00
	mov	r7,#0x00
00111$:
;	assignBit
	mov	a,r6
	orl	a,r7
	add	a,#0xff
	mov	_P3_7,c
00102$:
;	./src/main.c:21: if (cnt >= 500) {
	clr	c
	mov	a,_cnt
	subb	a,#0xf4
	mov	a,(_cnt + 1)
	xrl	a,#0x80
	subb	a,#0x81
	jc	00108$
;	./src/main.c:22: cnt = 0;
	clr	a
	mov	_cnt,a
	mov	(_cnt + 1),a
;	./src/main.c:23: if (cnt2 <= 8) 
	jb	_T0_isr_sloc0_1_0,00104$
;	./src/main.c:24: cnt2++;
	inc	_cnt2
	clr	a
	cjne	a,_cnt2,00108$
	inc	(_cnt2 + 1)
	sjmp	00108$
00104$:
;	./src/main.c:25: else cnt2 = 9;
	mov	_cnt2,#0x09
	mov	(_cnt2 + 1),#0x00
00108$:
;	./src/main.c:27: }
	pop	psw
	pop	ar6
	pop	ar7
	pop	b
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	./src/main.c:29: int main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./src/main.c:30: TMOD = 0x01;						//set Timer1 mode0 & Timer0 mode1
	mov	_TMOD,#0x01
;	./src/main.c:31: TH0 = (65536-1000) / 256;
	mov	_TH0,#0xfc
;	./src/main.c:32: TL0 = (65536-1000) % 256;
	mov	_TL0,#0x18
;	./src/main.c:33: ET0 = 1;							//Enable Timer0 interrupt
;	assignBit
	setb	_ET0
;	./src/main.c:34: EA = 1;								//Enable all interrupt
;	assignBit
	setb	_EA
;	./src/main.c:35: TR0 = 0;							//Enable Timer0
;	assignBit
	clr	_TR0
;	./src/main.c:36: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/main.c:37: TR0 = 0;    
;	assignBit
	clr	_TR0
;	./src/main.c:39: DOUT = 1;                           //Setting gpio input mode
;	assignBit
	setb	_P2_2
;	./src/main.c:40: LOAD = 1;  
;	assignBit
	setb	_P2_1
;	./src/main.c:41: CLK = 0;
;	assignBit
	clr	_P2_0
;	./src/main.c:42: DIN = 0;
;	assignBit
	clr	_P2_1
;	./src/main.c:44: OLED_Init();		                // Check oled_i2c.c file for SCL,SDA pin connection
	lcall	_OLED_Init
;	./src/main.c:45: OLED_SetCursor(0,0);                // Set cursor at 0th-line 0th-Position
	mov	_OLED_SetCursor_PARM_2,#0x00
	mov	dpl,#0x00
	lcall	_OLED_SetCursor
;	./src/main.c:46: Initial7219();
	lcall	_Initial7219
;	./src/main.c:48: while(1) {
00110$:
;	./src/main.c:49: data_buf1 = readAmbientTemp();
	lcall	_readAmbientTemp
	lcall	___fs2sint
	mov	_data_buf1,dpl
	mov	(_data_buf1 + 1),dph
;	./src/main.c:50: data_buf2 = readObjectTemp();
	lcall	_readObjectTemp
	lcall	___fs2sint
	mov	_data_buf2,dpl
	mov	(_data_buf2 + 1),dph
;	./src/main.c:51: adc_value = read_adc3202(1);
	mov	dpl,#0x01
	lcall	_read_adc3202
;	./src/main.c:53: oled_out = 62284 / (adc_value * (5 * 1000.0 / 4096.0)) - 14;
	mov	_adc_value,dpl
	mov  (_adc_value + 1),dph
	lcall	___uint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
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
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x4c00
	mov	b,#0x73
	mov	a,#0x47
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x60
	push	acc
	mov	a,#0x41
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2sint
	mov	_oled_out,dpl
	mov	(_oled_out + 1),dph
;	./src/main.c:54: OLED_SetCursor(0, 60);
	mov	_OLED_SetCursor_PARM_2,#0x3c
	mov	dpl,#0x00
	lcall	_OLED_SetCursor
;	./src/main.c:55: if (oled_out > 0) {
	clr	c
	clr	a
	subb	a,_oled_out
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_oled_out + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
;	./src/main.c:56: OLED_DisplayChar(oled_out % 1000 / 100 + '0');
	mov	__modsint_PARM_2,#0xe8
	mov	(__modsint_PARM_2 + 1),#0x03
	mov	dpl,_oled_out
	mov	dph,(_oled_out + 1)
	lcall	__modsint
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:57: OLED_DisplayChar(oled_out % 100 / 10 + '0');
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_oled_out
	mov	dph,(_oled_out + 1)
	lcall	__modsint
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:58: OLED_DisplayChar('.');
	mov	dpl,#0x2e
	lcall	_OLED_DisplayChar
;	./src/main.c:59: OLED_DisplayChar(oled_out % 10 / 1 + '0');
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_oled_out
	mov	dph,(_oled_out + 1)
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
00102$:
;	./src/main.c:62: OLED_SetCursor(2, 60);
	mov	_OLED_SetCursor_PARM_2,#0x3c
	mov	dpl,#0x02
	lcall	_OLED_SetCursor
;	./src/main.c:63: OLED_DisplayChar(data_buf2 % 1000 / 100 + '0');
	mov	__modsint_PARM_2,#0xe8
	mov	(__modsint_PARM_2 + 1),#0x03
	mov	dpl,_data_buf2
	mov	dph,(_data_buf2 + 1)
	lcall	__modsint
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:64: OLED_DisplayChar(data_buf2 % 100 / 10 + '0');
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_data_buf2
	mov	dph,(_data_buf2 + 1)
	lcall	__modsint
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:65: OLED_DisplayChar('.');
	mov	dpl,#0x2e
	lcall	_OLED_DisplayChar
;	./src/main.c:66: OLED_DisplayChar(data_buf2 % 10 / 1 + '0');
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_data_buf2
	mov	dph,(_data_buf2 + 1)
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:69: if (oled_out > 10 && oled_out < 50) {
	clr	c
	mov	a,#0x0a
	subb	a,_oled_out
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_oled_out + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00135$
	ljmp	00106$
00135$:
	clr	c
	mov	a,_oled_out
	subb	a,#0x32
	mov	a,(_oled_out + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00136$
	ljmp	00106$
00136$:
;	./src/main.c:70: TR0 = 1;
;	assignBit
	setb	_TR0
;	./src/main.c:71: if (cnt2 == 8) {
	mov	a,#0x08
	cjne	a,_cnt2,00137$
	clr	a
	cjne	a,(_cnt2 + 1),00137$
	sjmp	00138$
00137$:
	sjmp	00107$
00138$:
;	./src/main.c:72: OLED_SetCursor(6, 60);
	mov	_OLED_SetCursor_PARM_2,#0x3c
	mov	dpl,#0x06
	lcall	_OLED_SetCursor
;	./src/main.c:73: OLED_DisplayChar(data_buf2 % 1000 / 100 + '0');
	mov	__modsint_PARM_2,#0xe8
	mov	(__modsint_PARM_2 + 1),#0x03
	mov	dpl,_data_buf2
	mov	dph,(_data_buf2 + 1)
	lcall	__modsint
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:74: OLED_DisplayChar(data_buf2 % 100 / 10 + '0');
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_data_buf2
	mov	dph,(_data_buf2 + 1)
	lcall	__modsint
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:75: OLED_DisplayChar('.');
	mov	dpl,#0x2e
	lcall	_OLED_DisplayChar
;	./src/main.c:76: OLED_DisplayChar(data_buf2 % 10 / 1 + '0');
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_data_buf2
	mov	dph,(_data_buf2 + 1)
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
	sjmp	00107$
00106$:
;	./src/main.c:79: TR0 = 0;
;	assignBit
	clr	_TR0
;	./src/main.c:80: cnt2 = 0;
	clr	a
	mov	_cnt2,a
	mov	(_cnt2 + 1),a
00107$:
;	./src/main.c:82: delay_ms(100);
	mov	dptr,#0x0064
	lcall	_delay_ms
;	./src/main.c:84: }
	ljmp	00110$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
