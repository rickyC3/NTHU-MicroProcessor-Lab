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
	.globl _oledSendData
	.globl _OLED_SetCursor
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
	.globl _ball_y_location_now
	.globl _ball_x_location_now
	.globl _ball_vy_speed
	.globl _ball_vx_speed
	.globl _oled_init_display
	.globl _compute_ball_location
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
_ball_vx_speed::
	.ds 4
_ball_vy_speed::
	.ds 4
_ball_x_location_now::
	.ds 4
_ball_y_location_now::
	.ds 4
_compute_ball_location_ball_y_location_next_65536_32:
	.ds 4
_compute_ball_location_ball_x_location_int_65536_32:
	.ds 1
_compute_ball_location_ball_x_cnt_65536_32:
	.ds 1
_compute_ball_location_ball_x_i_65536_32:
	.ds 1
_compute_ball_location_ball_y_i_last_65536_32:
	.ds 1
_compute_ball_location_sloc0_1_0:
	.ds 1
_compute_ball_location_sloc2_1_0:
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
_compute_ball_location_sloc1_1_0:
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
;	./src/main.c:16: float ball_vx_speed = 1.0;				// # move tile along x axis per time
	clr	a
	mov	_ball_vx_speed,a
	mov	(_ball_vx_speed + 1),a
	mov	(_ball_vx_speed + 2),#0x80
	mov	(_ball_vx_speed + 3),#0x3f
;	./src/main.c:17: float ball_vy_speed = 2.0;				// # move tile along y axis per time
	mov	_ball_vy_speed,a
	mov	(_ball_vy_speed + 1),a
	mov	(_ball_vy_speed + 2),a
	mov	(_ball_vy_speed + 3),#0x40
;	./src/main.c:19: float ball_x_location_now = 50.0;		// Initial location
	mov	_ball_x_location_now,a
	mov	(_ball_x_location_now + 1),a
	mov	(_ball_x_location_now + 2),#0x48
	mov	(_ball_x_location_now + 3),#0x42
;	./src/main.c:20: float ball_y_location_now = 4.0;		// Initial location
	mov	_ball_y_location_now,a
	mov	(_ball_y_location_now + 1),a
	mov	(_ball_y_location_now + 2),#0x80
	mov	(_ball_y_location_now + 3),#0x40
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
;	./src/main.c:22: int main()
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
;	./src/main.c:27: SDA = HIGH;
;	assignBit
	setb	_P0_1
;	./src/main.c:28: SCL = HIGH;
;	assignBit
	setb	_P0_0
;	./src/main.c:31: OLED_Init();
	lcall	_OLED_Init
;	./src/main.c:32: oled_init_display();
	lcall	_oled_init_display
;	./src/main.c:34: while(1)
00102$:
;	./src/main.c:36: compute_ball_location();
	lcall	_compute_ball_location
;	./src/main.c:38: }
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'oled_init_display'
;------------------------------------------------------------
;oled_clean_col            Allocated to registers r5 
;oled_clean_page           Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:41: void oled_init_display(void)
;	-----------------------------------------
;	 function oled_init_display
;	-----------------------------------------
_oled_init_display:
;	./src/main.c:44: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page++)
	mov	r7,#0x00
00115$:
;	./src/main.c:46: OLED_SetCursor(oled_clean_page, 0);
	mov	_OLED_SetCursor_PARM_2,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_OLED_SetCursor
	pop	ar7
;	./src/main.c:47: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) 
	clr	a
	cjne	r7,#0x07,00145$
	inc	a
00145$:
	mov	r6,a
	mov	r5,#0x00
00113$:
;	./src/main.c:49: if((oled_clean_col == 0) || (oled_clean_col == 127))
	mov	a,r5
	jz	00107$
	cjne	r5,#0x7f,00108$
00107$:
;	./src/main.c:50: oledSendData(0xff);
	mov	dpl,#0xff
	push	ar7
	push	ar6
	push	ar5
	lcall	_oledSendData
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00114$
00108$:
;	./src/main.c:51: else if(oled_clean_page == 0)
	mov	a,r7
	jnz	00105$
;	./src/main.c:52: oledSendData(0x01);
	mov	dpl,#0x01
	push	ar7
	push	ar6
	push	ar5
	lcall	_oledSendData
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00114$
00105$:
;	./src/main.c:53: else if(oled_clean_page == 7)
	mov	a,r6
	jz	00102$
;	./src/main.c:54: oledSendData(0x80);
	mov	dpl,#0x80
	push	ar7
	push	ar6
	push	ar5
	lcall	_oledSendData
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00114$
00102$:
;	./src/main.c:56: oledSendData(0x00);
	mov	dpl,#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_oledSendData
	pop	ar5
	pop	ar6
	pop	ar7
00114$:
;	./src/main.c:47: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) 
	inc	r5
	cjne	r5,#0x80,00152$
00152$:
	jc	00113$
;	./src/main.c:44: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page++)
	inc	r7
	cjne	r7,#0x08,00154$
00154$:
	jnc	00155$
	ljmp	00115$
00155$:
;	./src/main.c:60: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'compute_ball_location'
;------------------------------------------------------------
;ball_x_location_next      Allocated to registers r4 r5 r6 r7 
;ball_y_location_next      Allocated with name '_compute_ball_location_ball_y_location_next_65536_32'
;ball_x_location_int       Allocated with name '_compute_ball_location_ball_x_location_int_65536_32'
;ball_y_location_int       Allocated to registers r6 
;ball_x_cnt                Allocated with name '_compute_ball_location_ball_x_cnt_65536_32'
;ball_y_cnt                Allocated to registers r3 
;ball_x_i                  Allocated with name '_compute_ball_location_ball_x_i_65536_32'
;ball_y_i                  Allocated to registers r0 
;ball_y_i_last             Allocated with name '_compute_ball_location_ball_y_i_last_65536_32'
;ball_oled_buf             Allocated to registers r4 
;sloc0                     Allocated with name '_compute_ball_location_sloc0_1_0'
;sloc2                     Allocated with name '_compute_ball_location_sloc2_1_0'
;------------------------------------------------------------
;	./src/main.c:62: void compute_ball_location(void)
;	-----------------------------------------
;	 function compute_ball_location
;	-----------------------------------------
_compute_ball_location:
;	./src/main.c:81: ball_x_location_int = ball_x_location_now;
	mov	dpl,_ball_x_location_now
	mov	dph,(_ball_x_location_now + 1)
	mov	b,(_ball_x_location_now + 2)
	mov	a,(_ball_x_location_now + 3)
	lcall	___fs2uchar
	mov	r7,dpl
;	./src/main.c:82: ball_y_location_int = ball_y_location_now;
	mov	dpl,_ball_y_location_now
	mov	dph,(_ball_y_location_now + 1)
	mov	b,(_ball_y_location_now + 2)
	mov	a,(_ball_y_location_now + 3)
	push	ar7
	lcall	___fs2uchar
	mov	r6,dpl
	pop	ar7
;	./src/main.c:84: for(ball_x_cnt = 0; ball_x_cnt < ball_x_size; ball_x_cnt ++)		// Erase ball from its left to right
	mov	r5,#0x00
00136$:
;	./src/main.c:86: ball_x_i = ball_x_location_int + ball_x_cnt;
	mov	a,r5
	add	a,r7
	mov	r4,a
;	./src/main.c:89: for(ball_y_cnt = 0; ball_y_cnt < ball_y_size; ball_y_cnt ++)	// Erase ball from its top to buttom
	mov	r3,#0x00
00134$:
;	./src/main.c:91: ball_y_i = ball_y_location_int + ball_y_cnt;
	mov	a,r3
	add	a,r6
;	./src/main.c:93: if((ball_y_i / 8) == 0)
	mov	r2,a
	mov	r0,a
	mov	r1,#0x00
	mov	__divsint_PARM_2,#0x08
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r1
	mov	dpl,r0
	mov	dph,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__divsint
	mov	r0,dpl
	mov	r1,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r0
	orl	a,r1
	jnz	00105$
;	./src/main.c:94: ball_oled_buf =  0x01;									// Erase, but keep the buttom boundary
	mov	_compute_ball_location_sloc0_1_0,#0x01
	sjmp	00106$
00105$:
;	./src/main.c:95: else if((ball_y_i / 8) == 7)
	cjne	r0,#0x07,00102$
	cjne	r1,#0x00,00102$
;	./src/main.c:96: ball_oled_buf = 0x80;									// Erase, but keep the top boundary
	mov	_compute_ball_location_sloc0_1_0,#0x80
	sjmp	00106$
00102$:
;	./src/main.c:98: ball_oled_buf = 0x00;									// Erase
	mov	_compute_ball_location_sloc0_1_0,#0x00
00106$:
;	./src/main.c:100: OLED_SetCursor(ball_y_i / 8, ball_x_i);
	mov	ar1,r2
	mov	r2,#0x00
	mov	__divsint_PARM_2,#0x08
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r2
	mov	dpl,r1
	mov	dph,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	__divsint
	mov	r1,dpl
	pop	ar3
	pop	ar4
	mov	dpl,r1
	mov	_OLED_SetCursor_PARM_2,r4
	push	ar4
	push	ar3
	lcall	_OLED_SetCursor
;	./src/main.c:101: oledSendData(ball_oled_buf);
	mov	dpl,_compute_ball_location_sloc0_1_0
	lcall	_oledSendData
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:89: for(ball_y_cnt = 0; ball_y_cnt < ball_y_size; ball_y_cnt ++)	// Erase ball from its top to buttom
	inc	r3
	cjne	r3,#0x02,00241$
00241$:
	jnc	00242$
	ljmp	00134$
00242$:
;	./src/main.c:84: for(ball_x_cnt = 0; ball_x_cnt < ball_x_size; ball_x_cnt ++)		// Erase ball from its left to right
	inc	r5
	cjne	r5,#0x02,00243$
00243$:
	jnc	00244$
	ljmp	00136$
00244$:
;	./src/main.c:106: ball_x_location_next = ball_x_location_now + ball_vx_speed;			// Compute next location
	push	_ball_vx_speed
	push	(_ball_vx_speed + 1)
	push	(_ball_vx_speed + 2)
	push	(_ball_vx_speed + 3)
	mov	dpl,_ball_x_location_now
	mov	dph,(_ball_x_location_now + 1)
	mov	b,(_ball_x_location_now + 2)
	mov	a,(_ball_x_location_now + 3)
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	./src/main.c:107: ball_y_location_next = ball_y_location_now + ball_vy_speed;			// Compute next location
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	_ball_vy_speed
	push	(_ball_vy_speed + 1)
	push	(_ball_vy_speed + 2)
	push	(_ball_vy_speed + 3)
	mov	dpl,_ball_y_location_now
	mov	dph,(_ball_y_location_now + 1)
	mov	b,(_ball_y_location_now + 2)
	mov	a,(_ball_y_location_now + 3)
	lcall	___fsadd
	mov	_compute_ball_location_ball_y_location_next_65536_32,dpl
	mov	(_compute_ball_location_ball_y_location_next_65536_32 + 1),dph
	mov	(_compute_ball_location_ball_y_location_next_65536_32 + 2),b
	mov	(_compute_ball_location_ball_y_location_next_65536_32 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:109: if(ball_x_location_next <= ball_x_boundary1)						// If hit left boundary
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	lcall	___fslt
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,dpl
	add	a,#0xff
	mov	_compute_ball_location_sloc1_1_0,c
	jc	00112$
;	./src/main.c:111: ball_x_location_next = ball_x_boundary1 + (ball_x_boundary1 - ball_x_location_next + 1) ;
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3f
	lcall	___fssub
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	./src/main.c:112: ball_vx_speed = -ball_vx_speed;
	mov	a,(_ball_vx_speed + 3)
	cpl	acc.7
	mov	(_ball_vx_speed + 3),a
	ljmp	00113$
00112$:
;	./src/main.c:114: else if(ball_x_location_next >= ball_x_boundary2)					// If hit right boundary
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	clr	a
	push	acc
	push	acc
	mov	a,#0xfc
	push	acc
	mov	a,#0x42
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fslt
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,dpl
	add	a,#0xff
	mov	_compute_ball_location_sloc1_1_0,c
	jc	00113$
;	./src/main.c:116: ball_x_location_next = ball_x_boundary2 - (ball_x_location_next - ball_x_boundary2 + 1) ;
	clr	a
	push	acc
	push	acc
	mov	a,#0xfa
	push	acc
	mov	a,#0xc2
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dptr,#0x0000
	mov	b,#0xfc
	mov	a,#0x42
	lcall	___fssub
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	./src/main.c:117: ball_vx_speed = -ball_vx_speed;
	mov	a,(_ball_vx_speed + 3)
	cpl	acc.7
	mov	(_ball_vx_speed + 3),a
00113$:
;	./src/main.c:120: if(ball_y_location_next <= ball_y_boundary1)						// If hit top boundary
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	_compute_ball_location_ball_y_location_next_65536_32
	push	(_compute_ball_location_ball_y_location_next_65536_32 + 1)
	push	(_compute_ball_location_ball_y_location_next_65536_32 + 2)
	push	(_compute_ball_location_ball_y_location_next_65536_32 + 3)
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	lcall	___fslt
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,dpl
	add	a,#0xff
	mov	_compute_ball_location_sloc1_1_0,c
	jc	00117$
;	./src/main.c:122: ball_y_location_next = ball_y_boundary1 + (ball_y_boundary1 - ball_y_location_next + 1) ;
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	_compute_ball_location_ball_y_location_next_65536_32
	push	(_compute_ball_location_ball_y_location_next_65536_32 + 1)
	push	(_compute_ball_location_ball_y_location_next_65536_32 + 2)
	push	(_compute_ball_location_ball_y_location_next_65536_32 + 3)
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3f
	lcall	___fssub
	mov	_compute_ball_location_ball_y_location_next_65536_32,dpl
	mov	(_compute_ball_location_ball_y_location_next_65536_32 + 1),dph
	mov	(_compute_ball_location_ball_y_location_next_65536_32 + 2),b
	mov	(_compute_ball_location_ball_y_location_next_65536_32 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:123: ball_vy_speed = -ball_vy_speed;
	mov	a,(_ball_vy_speed + 3)
	cpl	acc.7
	mov	(_ball_vy_speed + 3),a
	ljmp	00118$
00117$:
;	./src/main.c:125: else if(ball_y_location_next >= ball_y_boundary2)					// If hit buttom boundary
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	clr	a
	push	acc
	push	acc
	mov	a,#0x78
	push	acc
	mov	a,#0x42
	push	acc
	mov	dpl,_compute_ball_location_ball_y_location_next_65536_32
	mov	dph,(_compute_ball_location_ball_y_location_next_65536_32 + 1)
	mov	b,(_compute_ball_location_ball_y_location_next_65536_32 + 2)
	mov	a,(_compute_ball_location_ball_y_location_next_65536_32 + 3)
	lcall	___fslt
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,dpl
	add	a,#0xff
	mov	_compute_ball_location_sloc1_1_0,c
	jc	00118$
;	./src/main.c:127: ball_y_location_next = ball_y_boundary2 - (ball_y_location_next - ball_y_boundary2 + 1) ;
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	clr	a
	push	acc
	push	acc
	mov	a,#0x74
	push	acc
	mov	a,#0xc2
	push	acc
	mov	dpl,_compute_ball_location_ball_y_location_next_65536_32
	mov	dph,(_compute_ball_location_ball_y_location_next_65536_32 + 1)
	mov	b,(_compute_ball_location_ball_y_location_next_65536_32 + 2)
	mov	a,(_compute_ball_location_ball_y_location_next_65536_32 + 3)
	lcall	___fsadd
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dptr,#0x0000
	mov	b,#0x78
	mov	a,#0x42
	lcall	___fssub
	mov	_compute_ball_location_ball_y_location_next_65536_32,dpl
	mov	(_compute_ball_location_ball_y_location_next_65536_32 + 1),dph
	mov	(_compute_ball_location_ball_y_location_next_65536_32 + 2),b
	mov	(_compute_ball_location_ball_y_location_next_65536_32 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:128: ball_vy_speed = -ball_vy_speed;
	mov	a,(_ball_vy_speed + 3)
	cpl	acc.7
	mov	(_ball_vy_speed + 3),a
00118$:
;	./src/main.c:131: ball_x_location_now = ball_x_location_next;							// Update current location
	mov	_ball_x_location_now,r4
	mov	(_ball_x_location_now + 1),r5
	mov	(_ball_x_location_now + 2),r6
	mov	(_ball_x_location_now + 3),r7
;	./src/main.c:132: ball_y_location_now = ball_y_location_next;							// Update current location
	mov	_ball_y_location_now,_compute_ball_location_ball_y_location_next_65536_32
	mov	(_ball_y_location_now + 1),(_compute_ball_location_ball_y_location_next_65536_32 + 1)
	mov	(_ball_y_location_now + 2),(_compute_ball_location_ball_y_location_next_65536_32 + 2)
	mov	(_ball_y_location_now + 3),(_compute_ball_location_ball_y_location_next_65536_32 + 3)
;	./src/main.c:136: ball_x_location_int = ball_x_location_now;
	mov	dpl,_ball_x_location_now
	mov	dph,(_ball_x_location_now + 1)
	mov	b,(_ball_x_location_now + 2)
	mov	a,(_ball_x_location_now + 3)
	lcall	___fs2uchar
	mov	_compute_ball_location_ball_x_location_int_65536_32,dpl
;	./src/main.c:137: ball_y_location_int = ball_y_location_now;
	mov	dpl,_ball_y_location_now
	mov	dph,(_ball_y_location_now + 1)
	mov	b,(_ball_y_location_now + 2)
	mov	a,(_ball_y_location_now + 3)
	lcall	___fs2uchar
	mov	r6,dpl
;	./src/main.c:139: for(ball_x_cnt = 0; ball_x_cnt < ball_x_size; ball_x_cnt ++)		// Draw ball from its left to right
	mov	_compute_ball_location_ball_x_cnt_65536_32,#0x00
00140$:
;	./src/main.c:141: ball_oled_buf = 0x00;
	mov	r4,#0x00
;	./src/main.c:142: ball_x_i = ball_x_location_int + ball_x_cnt;
	mov	a,_compute_ball_location_ball_x_cnt_65536_32
	add	a,_compute_ball_location_ball_x_location_int_65536_32
	mov	_compute_ball_location_ball_x_i_65536_32,a
;	./src/main.c:144: ball_y_i_last = ball_y_location_int;
	mov	_compute_ball_location_ball_y_i_last_65536_32,r6
;	./src/main.c:147: if((ball_y_i / 8) == 0)
	mov	ar0,r6
	mov	r1,#0x00
	mov	__divsint_PARM_2,#0x08
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r4
	mov	dpl,r0
	mov	dph,r1
	push	ar6
	push	ar4
	lcall	__divsint
	mov	r0,dpl
	mov	r1,dph
	pop	ar4
	pop	ar6
	mov	a,r0
	orl	a,r1
	jnz	00122$
;	./src/main.c:148: ball_oled_buf = ball_oled_buf | 0x01;
	mov	r4,#0x01
	sjmp	00159$
00122$:
;	./src/main.c:149: else if((ball_y_i / 8) == 7)
	cjne	r0,#0x07,00159$
	cjne	r1,#0x00,00159$
;	./src/main.c:150: ball_oled_buf = ball_oled_buf | 0x80;
	mov	r4,#0x80
;	./src/main.c:152: for(ball_y_cnt = 0; ball_y_cnt < ball_y_size; ball_y_cnt ++)	// Draw ball from its top to buttom
00159$:
	mov	r1,#0x00
00138$:
;	./src/main.c:154: ball_y_i = ball_y_location_int + ball_y_cnt;
	mov	a,r1
	add	a,r6
	mov	r0,a
;	./src/main.c:156: if((ball_y_i_last / 8) == (ball_y_i / 8))
	mov	r2,_compute_ball_location_ball_y_i_last_65536_32
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x08
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r2
	mov	dph,r7
	push	ar6
	push	ar4
	push	ar1
	push	ar0
	lcall	__divsint
	mov	r2,dpl
	mov	r7,dph
	pop	ar0
	pop	ar1
	pop	ar4
	pop	ar6
	mov	_compute_ball_location_sloc2_1_0,r0
	mov	(_compute_ball_location_sloc2_1_0 + 1),#0x00
	mov	__divsint_PARM_2,#0x08
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,_compute_ball_location_sloc2_1_0
	mov	dph,(_compute_ball_location_sloc2_1_0 + 1)
	push	ar7
	push	ar6
	push	ar4
	push	ar2
	push	ar1
	push	ar0
	lcall	__divsint
	mov	r3,dpl
	mov	r5,dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar4
	pop	ar6
	pop	ar7
	mov	a,r2
	cjne	a,ar3,00125$
	mov	a,r7
	cjne	a,ar5,00125$
;	./src/main.c:157: ball_oled_buf = ball_oled_buf | (0x01 << (ball_y_i % 8));
	mov	a,#0x07
	anl	a,_compute_ball_location_sloc2_1_0
	mov	r5,a
	mov	r7,#0x00
	mov	b,r5
	inc	b
	mov	a,#0x01
	sjmp	00256$
00254$:
	add	a,acc
00256$:
	djnz	b,00254$
	mov	r5,a
	orl	ar4,a
	sjmp	00126$
00125$:
;	./src/main.c:159: ball_oled_buf = (0x01 << (ball_y_i % 8));
	mov	a,#0x07
	anl	a,_compute_ball_location_sloc2_1_0
	mov	r5,a
	mov	r7,#0x00
	mov	b,r5
	inc	b
	mov	a,#0x01
	sjmp	00259$
00257$:
	add	a,acc
00259$:
	djnz	b,00257$
	mov	r4,a
00126$:
;	./src/main.c:161: ball_y_i_last = ball_y_i;
	mov	_compute_ball_location_ball_y_i_last_65536_32,r0
;	./src/main.c:163: if((ball_y_i / 8) == 0)
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x08
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r0
	mov	dph,r7
	push	ar6
	push	ar4
	push	ar1
	lcall	__divsint
	mov	r5,dpl
	mov	r7,dph
	pop	ar1
	pop	ar4
	pop	ar6
	mov	a,r5
	orl	a,r7
	jnz	00130$
;	./src/main.c:164: ball_oled_buf = ball_oled_buf | 0x01;
	orl	ar4,#0x01
	sjmp	00131$
00130$:
;	./src/main.c:165: else if((ball_y_i / 8) == 7)
	cjne	r5,#0x07,00131$
	cjne	r7,#0x00,00131$
;	./src/main.c:166: ball_oled_buf = ball_oled_buf | 0x80;	
	orl	ar4,#0x80
00131$:
;	./src/main.c:168: OLED_SetCursor(ball_y_i / 8, ball_x_i);
	mov	dpl,r5
	mov	_OLED_SetCursor_PARM_2,_compute_ball_location_ball_x_i_65536_32
	push	ar6
	push	ar4
	push	ar1
	lcall	_OLED_SetCursor
	pop	ar1
	pop	ar4
;	./src/main.c:169: oledSendData(ball_oled_buf);
	mov	dpl,r4
	push	ar4
	push	ar1
	lcall	_oledSendData
	pop	ar1
	pop	ar4
	pop	ar6
;	./src/main.c:152: for(ball_y_cnt = 0; ball_y_cnt < ball_y_size; ball_y_cnt ++)	// Draw ball from its top to buttom
	inc	r1
	cjne	r1,#0x02,00263$
00263$:
	jnc	00264$
	ljmp	00138$
00264$:
;	./src/main.c:139: for(ball_x_cnt = 0; ball_x_cnt < ball_x_size; ball_x_cnt ++)		// Draw ball from its left to right
	inc	_compute_ball_location_ball_x_cnt_65536_32
	mov	a,#0x100 - 0x02
	add	a,_compute_ball_location_ball_x_cnt_65536_32
	jc	00265$
	ljmp	00140$
00265$:
;	./src/main.c:172: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
