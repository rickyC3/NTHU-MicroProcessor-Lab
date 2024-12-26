;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _uart_isr
	.globl _main
	.globl _Initial7219
	.globl _Write7219
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
	.globl _send_num
	.globl _idx_table
	.globl _seg
	.globl _send_flag
	.globl _send_data
	.globl _received_flag
	.globl _received_data
	.globl _UART_init
	.globl _Delay_Do
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
_received_data::
	.ds 1
_received_flag::
	.ds 1
_send_data::
	.ds 1
_send_flag::
	.ds 1
_seg::
	.ds 10
_idx_table::
	.ds 9
_send_num::
	.ds 10
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
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_uart_isr
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
;	./src/main.c:10: unsigned char received_flag = 0;
	mov	_received_flag,#0x00
;	./src/main.c:13: unsigned char send_flag = 0;
	mov	_send_flag,#0x00
;	./src/main.c:15: unsigned char seg[10] = {
	mov	_seg,#0x7e
	mov	(_seg + 0x0001),#0x30
	mov	(_seg + 0x0002),#0x6d
	mov	(_seg + 0x0003),#0x79
	mov	(_seg + 0x0004),#0x33
	mov	(_seg + 0x0005),#0x5b
	mov	(_seg + 0x0006),#0x5f
	mov	(_seg + 0x0007),#0x70
	mov	(_seg + 0x0008),#0x7f
	mov	(_seg + 0x0009),#0x7b
;	./src/main.c:28: unsigned char idx_table[9] = {
	mov	_idx_table,#0x00
	mov	(_idx_table + 0x0001),#0x10
	mov	(_idx_table + 0x0002),#0x20
	mov	(_idx_table + 0x0003),#0x30
	mov	(_idx_table + 0x0004),#0x40
	mov	(_idx_table + 0x0005),#0x50
	mov	(_idx_table + 0x0006),#0x60
	mov	(_idx_table + 0x0007),#0x70
	mov	(_idx_table + 0x0008),#0x80
;	./src/main.c:41: unsigned char send_num[10] = {
	mov	_send_num,#0x00
	mov	(_send_num + 0x0001),#0x01
	mov	(_send_num + 0x0002),#0x02
	mov	(_send_num + 0x0003),#0x03
	mov	(_send_num + 0x0004),#0x04
	mov	(_send_num + 0x0005),#0x05
	mov	(_send_num + 0x0006),#0x06
	mov	(_send_num + 0x0007),#0x07
	mov	(_send_num + 0x0008),#0x08
	mov	(_send_num + 0x0009),#0x09
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
;i                         Allocated to registers r4 
;j                         Allocated to registers r2 r3 
;tar                       Allocated to registers 
;idx                       Allocated to registers r7 
;guess_idx                 Allocated to registers r6 
;num                       Allocated to registers r5 
;i                         Allocated to registers r3 r4 
;------------------------------------------------------------
;	./src/main.c:54: void main(void)
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
;	./src/main.c:56: EA  = 1;		/* Enable global interrupt */
;	assignBit
	setb	_EA
;	./src/main.c:57: ES = 1;  		/* Enable serial interrupt */
;	assignBit
	setb	_ES
;	./src/main.c:59: UART_init(); 	//9600 bps
	lcall	_UART_init
;	./src/main.c:63: send_data = 0x11;	// send data to SBUF 
	mov	_send_data,#0x11
;	./src/main.c:64: send_flag = 1;
	mov	_send_flag,#0x01
;	./src/main.c:65: char idx = 8;
	mov	r7,#0x08
;	./src/main.c:66: char guess_idx = 1;
	mov	r6,#0x01
;	./src/main.c:67: char num = 0;
	mov	r5,#0x00
;	./src/main.c:69: Initial7219();
	push	ar7
	push	ar6
	push	ar5
	lcall	_Initial7219
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:70: while(but1 == 1);
00101$:
	jb	_P3_2,00101$
;	./src/main.c:71: while(1) 
00127$:
;	./src/main.c:74: if (but1 == 0){
	jb	_P3_2,00111$
;	./src/main.c:75: delay_ms(10);
	mov	dptr,#0x000a
	lcall	_delay_ms
;	./src/main.c:76: if (but1 == 0){
	jb	_P3_2,00109$
;	./src/main.c:77: while (but1 == 0);
00104$:
	jnb	_P3_2,00104$
;	./src/main.c:78: for (int i=8;i>=1;i--){
	mov	r3,#0x08
	mov	r4,#0x00
00130$:
	clr	c
	mov	a,r3
	subb	a,#0x01
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	jc	00109$
;	./src/main.c:80: Write7219(i, 0x01);
	mov	dpl,r3
	mov	_Write7219_PARM_2,#0x01
	push	ar4
	push	ar3
	lcall	_Write7219
	pop	ar3
	pop	ar4
;	./src/main.c:78: for (int i=8;i>=1;i--){
	dec	r3
	cjne	r3,#0xff,00211$
	dec	r4
00211$:
	sjmp	00130$
00109$:
;	./src/main.c:83: idx = 8;
	mov	r7,#0x08
;	./src/main.c:84: guess_idx = 1;
	mov	r6,#0x01
;	./src/main.c:85: num = 0;
	mov	r5,#0x00
;	./src/main.c:86: delay_ms(100);
	mov	dptr,#0x0064
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay_ms
	pop	ar5
	pop	ar6
	pop	ar7
00111$:
;	./src/main.c:88: if(received_flag == 1)
	mov	a,#0x01
	cjne	a,_received_flag,00116$
;	./src/main.c:90: if(received_data == 'Y'){
	mov	a,#0x59
	cjne	a,_received_data,00113$
;	./src/main.c:91: Write7219(idx, seg[num]);
	mov	a,r5
	add	a,#_seg
	mov	r1,a
	mov	_Write7219_PARM_2,@r1
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_Write7219
	pop	ar6
	pop	ar7
;	./src/main.c:92: guess_idx++;
	inc	r6
;	./src/main.c:93: idx--;
	dec	r7
;	./src/main.c:94: num = 0;
	mov	r5,#0x00
;	./src/main.c:95: delay_ms(100);
	mov	dptr,#0x0064
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay_ms
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00114$
00113$:
;	./src/main.c:97: num++;
	inc	r5
00114$:
;	./src/main.c:100: received_flag = 0;
	mov	_received_flag,#0x00
00116$:
;	./src/main.c:106: if (guess_idx >= 9){
	cjne	r6,#0x09,00216$
00216$:
	jc	00122$
;	./src/main.c:107: if (guess_idx == 9){
	cjne	r6,#0x09,00120$
;	./src/main.c:108: for (i=0;i<3;i++){
	mov	r4,#0x00
;	./src/main.c:109: for (j=0;j < tar;j++){
00150$:
	mov	r2,#0x00
	mov	r3,#0x00
00133$:
	clr	c
	mov	a,r2
	subb	a,#0x0b
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x82
	jnc	00117$
;	./src/main.c:110: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/main.c:111: Delay_Do();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_Delay_Do
;	./src/main.c:112: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/main.c:113: Delay_Do();
	lcall	_Delay_Do
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:109: for (j=0;j < tar;j++){
	inc	r2
	cjne	r2,#0x00,00133$
	inc	r3
	sjmp	00133$
00117$:
;	./src/main.c:115: delay_ms(1000);
	mov	dptr,#0x03e8
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_delay_ms
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:108: for (i=0;i<3;i++){
	inc	r4
	cjne	r4,#0x03,00222$
00222$:
	jc	00150$
;	./src/main.c:117: guess_idx++;
	inc	r6
00120$:
;	./src/main.c:119: send_data = 0x00;
	mov	_send_data,#0x00
	sjmp	00123$
00122$:
;	./src/main.c:123: send_data = idx_table[guess_idx] | send_num[num];
	mov	a,r6
	add	a,#_idx_table
	mov	r1,a
	mov	ar4,@r1
	mov	a,r5
	add	a,#_send_num
	mov	r1,a
	mov	a,@r1
	mov	r3,a
	orl	a,r4
	mov	_send_data,a
;	./src/main.c:124: send_flag = 1;
	mov	_send_flag,#0x01
00123$:
;	./src/main.c:126: if (send_flag == 1)
	mov	a,#0x01
	cjne	a,_send_flag,00125$
;	./src/main.c:128: SBUF = send_data;	// send data to SBUF
	mov	_SBUF,_send_data
;	./src/main.c:129: send_flag = 0;
	mov	_send_flag,#0x00
00125$:
;	./src/main.c:130: }delay_ms(500);
	mov	dptr,#0x01f4
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay_ms
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:133: }
	ljmp	00127$
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_init'
;------------------------------------------------------------
;	./src/main.c:136: void UART_init(void) 	//9600 bps
;	-----------------------------------------
;	 function UART_init
;	-----------------------------------------
_UART_init:
;	./src/main.c:138: TMOD = 0x20;		/* Timer 1, 8-bit auto reload mode */
	mov	_TMOD,#0x20
;	./src/main.c:139: TH1 = 0xFD;		/* Load value for 9600 baud rate */
	mov	_TH1,#0xfd
;	./src/main.c:140: SCON = 0x50;		/* Mode 1, reception enable */
	mov	_SCON,#0x50
;	./src/main.c:141: TR1 = 1;		/* Start timer 1 */
;	assignBit
	setb	_TR1
;	./src/main.c:142: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_isr'
;------------------------------------------------------------
;	./src/main.c:144: void uart_isr(void) __interrupt (4) 
;	-----------------------------------------
;	 function uart_isr
;	-----------------------------------------
_uart_isr:
	push	acc
;	./src/main.c:146: if(RI == 1) 
;	./src/main.c:148: RI = 0;                  // refresh RI
;	assignBit
	jbc	_RI,00121$
	sjmp	00104$
00121$:
;	./src/main.c:149: if(received_flag == 0)
	mov	a,_received_flag
	jnz	00104$
;	./src/main.c:151: received_data = SBUF;    // receive data from SBUF
	mov	_received_data,_SBUF
;	./src/main.c:152: received_flag = 1;       // receiving finished
	mov	_received_flag,#0x01
00104$:
;	./src/main.c:155: if (TI == 1)
;	./src/main.c:156: TI = 0;
;	assignBit
	jbc	_TI,00123$
	sjmp	00107$
00123$:
00107$:
;	./src/main.c:157: }
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay_Do'
;------------------------------------------------------------
;	./src/main.c:159: void Delay_Do(void) {
;	-----------------------------------------
;	 function Delay_Do
;	-----------------------------------------
_Delay_Do:
;	./src/main.c:184: __endasm;
	 DELAY_Do:
	MOV	R6,#10
	 DELAY_Do_DL1:
	MOV	R7,#19
	 STEP1:
	DJNZ	R7,STEP1
	DJNZ	R6,DELAY_Do_DL1
	MOV	R7,#13
	 STEP2:
	DJNZ	R7,STEP2
	RET
;	./src/main.c:186: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
