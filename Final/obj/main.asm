;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.4.4 #15011 (MINGW64)
;--------------------------------------------------------
	.module main
	
	.optsdcc -mmcs51 --model-small
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
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
; restartable atomic support routines
	.ds	5
sdcc_atomic_exchange_rollback_start::
	nop
	nop
sdcc_atomic_exchange_pdata_impl:
	movx	a, @r0
	mov	r3, a
	mov	a, r2
	movx	@r0, a
	sjmp	sdcc_atomic_exchange_exit
	nop
	nop
sdcc_atomic_exchange_xdata_impl:
	movx	a, @dptr
	mov	r3, a
	mov	a, r2
	movx	@dptr, a
	sjmp	sdcc_atomic_exchange_exit
sdcc_atomic_compare_exchange_idata_impl:
	mov	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	mov	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_pdata_impl:
	movx	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_xdata_impl:
	movx	a, @dptr
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@dptr, a
	ret
sdcc_atomic_exchange_rollback_end::

sdcc_atomic_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_exchange_pdata_impl
sdcc_atomic_exchange_idata_impl:
	mov	a, r2
	xch	a, @r0
	mov	dpl, a
	ret
sdcc_atomic_exchange_exit:
	mov	dpl, r3
	ret
sdcc_atomic_compare_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
	sjmp	sdcc_atomic_compare_exchange_idata_impl
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
;patt                      Allocated to registers r7 
;preKey                    Allocated to registers 
;Key                       Allocated to registers r3 r4 
;cnt                       Allocated to registers r5 r6 
;------------------------------------------------------------
;	./src/main.c:14: void main(void)
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
;	./src/main.c:16: unsigned char patt = 0x00;
	mov	r7,#0x00
;	./src/main.c:20: while (1){
00182$:
;	./src/main.c:22: Key = Get_Key();
	push	ar7
	lcall	_Get_Key
	mov	r5, dpl
	mov	r6, dph
	pop	ar7
;	./src/main.c:24: if (Key == 1){
	cjne	r5,#0x01,00179$
	cjne	r6,#0x00,00179$
;	./src/main.c:25: delay_ms(30);
	mov	dptr,#0x001e
	push	ar7
	lcall	_delay_ms
;	./src/main.c:26: Key = Get_Key();
	lcall	_Get_Key
	mov	r3, dpl
	mov	r4, dph
	pop	ar7
;	./src/main.c:27: if (Key != 1){
	cjne	r3,#0x01,00428$
	cjne	r4,#0x00,00428$
	sjmp	00104$
00428$:
;	./src/main.c:28: patt = (patt == 0x01) ? patt = 0x80:patt >> 1;
	cjne	r7,#0x01,00186$
	mov	r4,#0x80
	sjmp	00187$
00186$:
	mov	a,r7
	clr	c
	rrc	a
	mov	r4,a
00187$:
	mov	ar7,r4
	ljmp	00180$
;	./src/main.c:30: while (1){
00104$:
;	./src/main.c:31: delay_ms(100);
	mov	dptr,#0x0064
	push	ar7
	lcall	_delay_ms
;	./src/main.c:32: Key = Get_Key();
	lcall	_Get_Key
	mov	r3, dpl
	mov	r4, dph
	pop	ar7
;	./src/main.c:33: if (Key != 1)break;
	cjne	r3,#0x01,00431$
	cjne	r4,#0x00,00431$
	sjmp	00432$
00431$:
	ljmp	00180$
00432$:
;	./src/main.c:34: patt = (patt == 0x01) ? patt = 0x80:patt>>1;
	cjne	r7,#0x01,00188$
	mov	r4,#0x80
	sjmp	00189$
00188$:
	mov	a,r7
	clr	c
	rrc	a
	mov	r4,a
00189$:
	mov	ar7,r4
;	./src/main.c:35: led = ~patt;
	mov	a,r7
	cpl	a
	mov	_P1,a
	sjmp	00104$
00179$:
;	./src/main.c:38: }else if (Key == 2){
	cjne	r5,#0x02,00176$
	cjne	r6,#0x00,00176$
;	./src/main.c:39: patt = 0x01;
	mov	r7,#0x01
	ljmp	00180$
00176$:
;	./src/main.c:40: }else if (Key == 3){
	cjne	r5,#0x03,00173$
	cjne	r6,#0x00,00173$
;	./src/main.c:41: patt = 0x02;
	mov	r7,#0x02
	ljmp	00180$
00173$:
;	./src/main.c:42: }else if (Key == 4){
	cjne	r5,#0x04,00170$
	cjne	r6,#0x00,00170$
;	./src/main.c:43: patt = 0x04;
	mov	r7,#0x04
	ljmp	00180$
00170$:
;	./src/main.c:44: }else if (Key == 5){
	cjne	r5,#0x05,00167$
	cjne	r6,#0x00,00167$
;	./src/main.c:45: delay_ms(30);
	mov	dptr,#0x001e
	push	ar7
	lcall	_delay_ms
;	./src/main.c:46: Key = Get_Key();
	lcall	_Get_Key
	mov	r3, dpl
	mov	r4, dph
	pop	ar7
;	./src/main.c:47: if (Key != 5){
	cjne	r3,#0x05,00443$
	cjne	r4,#0x00,00443$
	sjmp	00112$
00443$:
;	./src/main.c:48: patt = (patt == 0x80)? patt = 0x01:patt << 1;
	cjne	r7,#0x80,00190$
	mov	r4,#0x01
	sjmp	00191$
00190$:
	mov	a,r7
	add	a,r7
	mov	r4,a
00191$:
	mov	ar7,r4
	ljmp	00180$
;	./src/main.c:50: while (1){
00112$:
;	./src/main.c:51: delay_ms(100);
	mov	dptr,#0x0064
	push	ar7
	lcall	_delay_ms
;	./src/main.c:52: Key = Get_Key();
	lcall	_Get_Key
	mov	r3, dpl
	mov	r4, dph
	pop	ar7
;	./src/main.c:53: if (Key != 5)break;
	cjne	r3,#0x05,00446$
	cjne	r4,#0x00,00446$
	sjmp	00447$
00446$:
	ljmp	00180$
00447$:
;	./src/main.c:54: patt = (patt == 0x80)? patt = 0x01:patt << 1; // right shift
	cjne	r7,#0x80,00192$
	mov	r4,#0x01
	sjmp	00193$
00192$:
	mov	a,r7
	add	a,r7
	mov	r4,a
00193$:
	mov	ar7,r4
;	./src/main.c:55: led = ~patt;
	mov	a,r7
	cpl	a
	mov	_P1,a
	sjmp	00112$
00167$:
;	./src/main.c:58: }else if (Key == 6){
	cjne	r5,#0x06,00164$
	cjne	r6,#0x00,00164$
;	./src/main.c:59: patt = 0x10;
	mov	r7,#0x10
	ljmp	00180$
00164$:
;	./src/main.c:60: }else if (Key == 7){
	cjne	r5,#0x07,00161$
	cjne	r6,#0x00,00161$
;	./src/main.c:61: patt = 0x20;
	mov	r7,#0x20
	ljmp	00180$
00161$:
;	./src/main.c:62: }else if (Key == 8){
	cjne	r5,#0x08,00158$
	cjne	r6,#0x00,00158$
;	./src/main.c:63: patt = 0x40;
	mov	r7,#0x40
	ljmp	00180$
00158$:
;	./src/main.c:64: }else if (Key == 9){
	cjne	r5,#0x09,00456$
	cjne	r6,#0x00,00456$
	sjmp	00457$
00456$:
	ljmp	00180$
00457$:
;	./src/main.c:65: delay_ms(100);
	mov	dptr,#0x0064
	push	ar7
	lcall	_delay_ms
	pop	ar7
;	./src/main.c:66: if ((but1 & but2 & but3)){
	mov	c,_P2_2
	clr	a
	rlc	a
	mov	r6,a
	mov	c,_P2_3
	clr	a
	rlc	a
	anl	ar6,a
	mov	c,_P2_4
	clr	a
	rlc	a
	anl	a,r6
	jz	00127$
;	./src/main.c:67: if (patt == 0x01)
	cjne	r7,#0x01,00124$
;	./src/main.c:68: patt = 0x20;
	mov	r7,#0x20
	sjmp	00127$
00124$:
;	./src/main.c:69: else if (patt == 0x02)
	cjne	r7,#0x02,00121$
;	./src/main.c:70: patt = 0x40;
	mov	r7,#0x40
	sjmp	00127$
00121$:
;	./src/main.c:71: else if (patt == 0x04)
	cjne	r7,#0x04,00118$
;	./src/main.c:72: patt = 0x80;
	mov	r7,#0x80
	sjmp	00127$
00118$:
;	./src/main.c:74: patt = patt >> 3;
	mov	a,r7
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r7,a
00127$:
;	./src/main.c:76: }delay_ms(100);
	mov	dptr,#0x0064
	push	ar7
	lcall	_delay_ms
	pop	ar7
;	./src/main.c:77: if ((but1 & but2 & but3)){
	mov	c,_P2_2
	clr	a
	rlc	a
	mov	r6,a
	mov	c,_P2_3
	clr	a
	rlc	a
	anl	ar6,a
	mov	c,_P2_4
	clr	a
	rlc	a
	anl	a,r6
	jz	00220$
;	./src/main.c:78: if (patt == 0x01)patt = 0x80;
	cjne	r7,#0x01,00129$
	mov	r7,#0x80
	sjmp	00180$
00129$:
;	./src/main.c:79: else patt = patt >> 1;
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	./src/main.c:82: while (1){
	sjmp	00180$
00220$:
	mov	r5,#0x00
	mov	r6,#0x00
00136$:
;	./src/main.c:83: delay_ms(100);
	mov	dptr,#0x0064
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay_ms
;	./src/main.c:84: Key = Get_Key();
	lcall	_Get_Key
	mov	r3, dpl
	mov	r4, dph
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:85: if (Key != 9)break;
	cjne	r3,#0x09,00137$
	cjne	r4,#0x00,00137$
;	./src/main.c:86: cnt++;
	inc	r5
	cjne	r5,#0x00,00470$
	inc	r6
00470$:
;	./src/main.c:87: if (cnt >= 4)break;
	clr	c
	mov	a,r5
	subb	a,#0x04
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jc	00136$
00137$:
;	./src/main.c:88: }if (cnt >= 4){
	clr	c
	mov	a,r5
	subb	a,#0x04
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jc	00149$
;	./src/main.c:89: if (patt == 0x01){
	cjne	r7,#0x01,00142$
;	./src/main.c:90: patt = 0x40;
	mov	r7,#0x40
	sjmp	00143$
00142$:
;	./src/main.c:91: }else if (patt == 0x02){
	cjne	r7,#0x02,00139$
;	./src/main.c:92: patt = 0x80;
	mov	r7,#0x80
	sjmp	00143$
00139$:
;	./src/main.c:94: patt = patt >> 2;
	mov	a,r7
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r7,a
00143$:
;	./src/main.c:96: led = ~patt;
	mov	a,r7
	cpl	a
	mov	_P1,a
;	./src/main.c:98: }while (1){
00149$:
;	./src/main.c:99: Key = Get_Key();
	push	ar7
	lcall	_Get_Key
	mov	r5, dpl
	mov	r6, dph
	pop	ar7
;	./src/main.c:100: if (Key != 9)break;
	cjne	r5,#0x09,00180$
	cjne	r6,#0x00,00180$
;	./src/main.c:101: delay_ms(10);
	mov	dptr,#0x000a
	push	ar7
	lcall	_delay_ms
	pop	ar7
;	./src/main.c:106: patt = patt;
	sjmp	00149$
00180$:
;	./src/main.c:109: led = ~patt;
	mov	a,r7
	cpl	a
	mov	_P1,a
;	./src/main.c:113: }
	ljmp	00182$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
