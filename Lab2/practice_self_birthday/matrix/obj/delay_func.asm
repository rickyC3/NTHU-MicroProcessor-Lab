;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module delay_func
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _Delay_Do
	.globl _Delay_Re
	.globl _Delay_Mi
	.globl _Delay_Fa
	.globl _Delay_So
	.globl _Delay_La
	.globl _Delay_Si
	.globl _Play_Music
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
;Allocation info for local variables in function 'Delay_Do'
;------------------------------------------------------------
;	./src/delay_func.c:5: void Delay_Do(void) {
;	-----------------------------------------
;	 function Delay_Do
;	-----------------------------------------
_Delay_Do:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/delay_func.c:30: __endasm;
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
;	./src/delay_func.c:32: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay_Re'
;------------------------------------------------------------
;	./src/delay_func.c:34: void Delay_Re(void) {
;	-----------------------------------------
;	 function Delay_Re
;	-----------------------------------------
_Delay_Re:
;	./src/delay_func.c:59: __endasm;
	 DELAY_RE:
	MOV	R6,#10
	 DELAY_RE_DL1:
	MOV	R7,#17
	 STEP3:
	DJNZ	R7,STEP3
	DJNZ	R6,DELAY_RE_DL1
	MOV	R7,#9
	 STEP4:
	DJNZ	R7,STEP4
	RET
;	./src/delay_func.c:60: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay_Mi'
;------------------------------------------------------------
;	./src/delay_func.c:62: void Delay_Mi(void) {
;	-----------------------------------------
;	 function Delay_Mi
;	-----------------------------------------
_Delay_Mi:
;	./src/delay_func.c:87: __endasm;
	 DELAY_MI:
	MOV	R6,#10
	 DELAY_MI_DL1:
	MOV	R7,#15
	 STEP5:
	DJNZ	R7,STEP5
	DJNZ	R6,DELAY_MI_DL1
	MOV	R7,#7
	 STEP6:
	DJNZ	R7,STEP6
	RET
;	./src/delay_func.c:88: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay_Fa'
;------------------------------------------------------------
;	./src/delay_func.c:90: void Delay_Fa(void) {
;	-----------------------------------------
;	 function Delay_Fa
;	-----------------------------------------
_Delay_Fa:
;	./src/delay_func.c:121: __endasm;
	 DELAY_FA:
	MOV	R6,#10
	 DELAY_FA_DL1:
	MOV	R7,#14
	 STEP7:
	DJNZ	R7,STEP7
	DJNZ	R6,DELAY_FA_DL1
	MOV	R7,#8
	 STEP8:
	DJNZ	R7,STEP8
	MOV	R7, #1 ;
	RET
;	./src/delay_func.c:122: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay_So'
;------------------------------------------------------------
;	./src/delay_func.c:124: void Delay_So(void) {
;	-----------------------------------------
;	 function Delay_So
;	-----------------------------------------
_Delay_So:
;	./src/delay_func.c:151: __endasm;
	 DELAY_SO:
	MOV	R6,#10
	 DELAY_SO_DL1:
	MOV	R7,#13
	 STEP9:
	DJNZ	R7,STEP9
	DJNZ	R6,DELAY_SO_DL1
	MOV	R7, #1
	MOV	R7, #1
	RET
;	./src/delay_func.c:152: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay_La'
;------------------------------------------------------------
;	./src/delay_func.c:154: void Delay_La(void) {
;	-----------------------------------------
;	 function Delay_La
;	-----------------------------------------
_Delay_La:
;	./src/delay_func.c:186: __endasm;
	 DELAY_LA:
	MOV	R6,#10
	 DELAY_LA_DL1:
	MOV	R7,#11
	 STEP10:
	DJNZ	R7,STEP10
	DJNZ	R6,DELAY_LA_DL1
	MOV	R7,#4
	 STEP11:
	DJNZ	R7,STEP11
	MOV	R7, #1
	RET
;	./src/delay_func.c:187: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay_Si'
;------------------------------------------------------------
;	./src/delay_func.c:189: void Delay_Si(void) {
;	-----------------------------------------
;	 function Delay_Si
;	-----------------------------------------
_Delay_Si:
;	./src/delay_func.c:212: __endasm;
	 DELAY_SI:
	MOV	R6, #10
	 DELAY_SI_DL1:
	MOV	R7, #10
	 STEP12:
	DJNZ	R7, STEP12
	DJNZ	R6, DELAY_SI_DL1
	MOV	R7, #1
	RET
;	./src/delay_func.c:213: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Play_Music'
;------------------------------------------------------------
;x                         Allocated to registers r7 
;tar                       Allocated to registers 
;j                         Allocated to registers r5 r6 
;------------------------------------------------------------
;	./src/delay_func.c:215: void Play_Music(char x){
;	-----------------------------------------
;	 function Play_Music
;	-----------------------------------------
_Play_Music:
	mov	r7,dpl
;	./src/delay_func.c:217: if (x == '0'){
	cjne	r7,#0x30,00129$
;	./src/delay_func.c:218: delay_ms(200);
	mov	dptr,#0x00c8
	ljmp	_delay_ms
00129$:
;	./src/delay_func.c:219: }else if (x == '1'){
	cjne	r7,#0x31,00126$
;	./src/delay_func.c:221: for (j=0;j < tar;j++){
	mov	r5,#0x00
	mov	r6,#0x00
00132$:
	clr	c
	mov	a,r5
	subb	a,#0x0b
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x82
	jc	00253$
	ret
00253$:
;	./src/delay_func.c:222: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/delay_func.c:223: Delay_Do();
	push	ar6
	push	ar5
	lcall	_Delay_Do
;	./src/delay_func.c:224: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/delay_func.c:225: Delay_Do();
	lcall	_Delay_Do
	pop	ar5
	pop	ar6
;	./src/delay_func.c:221: for (j=0;j < tar;j++){
	inc	r5
	cjne	r5,#0x00,00132$
	inc	r6
	sjmp	00132$
00126$:
;	./src/delay_func.c:227: }else if (x == '2'){
	cjne	r7,#0x32,00123$
;	./src/delay_func.c:230: for (j = 0;j<tar;j++){
	mov	r5,#0x00
	mov	r6,#0x00
00135$:
	clr	c
	mov	a,r5
	subb	a,#0x4c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x82
	jc	00257$
	ret
00257$:
;	./src/delay_func.c:231: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/delay_func.c:232: Delay_Re();
	push	ar6
	push	ar5
	lcall	_Delay_Re
;	./src/delay_func.c:233: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/delay_func.c:234: Delay_Re();
	lcall	_Delay_Re
	pop	ar5
	pop	ar6
;	./src/delay_func.c:230: for (j = 0;j<tar;j++){
	inc	r5
	cjne	r5,#0x00,00135$
	inc	r6
	sjmp	00135$
00123$:
;	./src/delay_func.c:236: }else if (x == '3'){
	cjne	r7,#0x33,00120$
;	./src/delay_func.c:239: for (j=0;j<tar;j++){
	mov	r5,#0x00
	mov	r6,#0x00
00138$:
	clr	c
	mov	a,r5
	subb	a,#0x94
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x82
	jc	00261$
	ret
00261$:
;	./src/delay_func.c:240: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/delay_func.c:241: Delay_Mi();
	push	ar6
	push	ar5
	lcall	_Delay_Mi
;	./src/delay_func.c:242: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/delay_func.c:243: Delay_Mi();
	lcall	_Delay_Mi
	pop	ar5
	pop	ar6
;	./src/delay_func.c:239: for (j=0;j<tar;j++){
	inc	r5
	cjne	r5,#0x00,00138$
	inc	r6
	sjmp	00138$
00120$:
;	./src/delay_func.c:245: }else if (x == '4'){
	cjne	r7,#0x34,00117$
;	./src/delay_func.c:248: for (j=0;j<tar;j++){
	mov	r5,#0x00
	mov	r6,#0x00
00141$:
	clr	c
	mov	a,r5
	subb	a,#0xbb
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x82
	jc	00265$
	ret
00265$:
;	./src/delay_func.c:249: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/delay_func.c:250: Delay_Fa();
	push	ar6
	push	ar5
	lcall	_Delay_Fa
;	./src/delay_func.c:251: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/delay_func.c:252: Delay_Fa();
	lcall	_Delay_Fa
	pop	ar5
	pop	ar6
;	./src/delay_func.c:248: for (j=0;j<tar;j++){
	inc	r5
	cjne	r5,#0x00,00141$
	inc	r6
	sjmp	00141$
00117$:
;	./src/delay_func.c:254: }else if (x == '5'){
	cjne	r7,#0x35,00114$
;	./src/delay_func.c:257: for (j=0;j<tar;j++){ 
	mov	r5,#0x00
	mov	r6,#0x00
00144$:
	clr	c
	mov	a,r5
	subb	a,#0x10
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x83
	jc	00269$
	ret
00269$:
;	./src/delay_func.c:258: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/delay_func.c:259: Delay_So();
	push	ar6
	push	ar5
	lcall	_Delay_So
;	./src/delay_func.c:260: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/delay_func.c:261: Delay_So();
	lcall	_Delay_So
	pop	ar5
	pop	ar6
;	./src/delay_func.c:257: for (j=0;j<tar;j++){ 
	inc	r5
	cjne	r5,#0x00,00144$
	inc	r6
	sjmp	00144$
00114$:
;	./src/delay_func.c:263: }else if (x == '6'){
	cjne	r7,#0x36,00111$
;	./src/delay_func.c:266: for (j=0;j<tar;j++){
	mov	r5,#0x00
	mov	r6,#0x00
00147$:
	clr	c
	mov	a,r5
	subb	a,#0x70
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x83
	jnc	00152$
;	./src/delay_func.c:267: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/delay_func.c:268: Delay_La();
	push	ar6
	push	ar5
	lcall	_Delay_La
;	./src/delay_func.c:269: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/delay_func.c:270: Delay_La();   
	lcall	_Delay_La
	pop	ar5
	pop	ar6
;	./src/delay_func.c:266: for (j=0;j<tar;j++){
	inc	r5
	cjne	r5,#0x00,00147$
	inc	r6
	sjmp	00147$
00111$:
;	./src/delay_func.c:272: }else if (x == '7'){
	cjne	r7,#0x37,00152$
;	./src/delay_func.c:274: for (j=0;j<tar;j++){   
	mov	r6,#0x00
	mov	r7,#0x00
00150$:
	clr	c
	mov	a,r6
	subb	a,#0xdc
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x83
	jnc	00152$
;	./src/delay_func.c:275: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/delay_func.c:276: Delay_Si();
	push	ar7
	push	ar6
	lcall	_Delay_Si
;	./src/delay_func.c:277: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/delay_func.c:278: Delay_Si();  
	lcall	_Delay_Si
	pop	ar6
	pop	ar7
;	./src/delay_func.c:274: for (j=0;j<tar;j++){   
	inc	r6
	cjne	r6,#0x00,00150$
	inc	r7
	sjmp	00150$
00152$:
;	./src/delay_func.c:282: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
