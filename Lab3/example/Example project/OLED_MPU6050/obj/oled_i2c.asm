;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module oled_i2c
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _OledFontTable
	.globl _Single_WriteI2C
	.globl _OLED_SetCursor_PARM_2
	.globl _OLED_Init
	.globl _OLED_DisplayChar
	.globl _OLED_DisplayString
	.globl _OLED_Clear
	.globl _OLED_SetCursor
	.globl _oledSendCommand
	.globl _oledSendData
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_OLED_SetCursor_PARM_2:
	.ds 1
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
;Allocation info for local variables in function 'OLED_Init'
;------------------------------------------------------------
;	./src/oled_i2c.c:16: void OLED_Init(void)
;	-----------------------------------------
;	 function OLED_Init
;	-----------------------------------------
_OLED_Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/oled_i2c.c:24: oledSendCommand(0xa8);  //Set MUX Ratio
	mov	dpl,#0xa8
	lcall	_oledSendCommand
;	./src/oled_i2c.c:25: oledSendCommand(0x3f);  
	mov	dpl,#0x3f
	lcall	_oledSendCommand
;	./src/oled_i2c.c:26: oledSendCommand(0xd3);  //Set Display Offset
	mov	dpl,#0xd3
	lcall	_oledSendCommand
;	./src/oled_i2c.c:27: oledSendCommand(0x00);  
	mov	dpl,#0x00
	lcall	_oledSendCommand
;	./src/oled_i2c.c:28: oledSendCommand(0x40);  //Set Display Start Line
	mov	dpl,#0x40
	lcall	_oledSendCommand
;	./src/oled_i2c.c:29: oledSendCommand(0xa1);  //Set Segment re-map A0h/A1h
	mov	dpl,#0xa1
	lcall	_oledSendCommand
;	./src/oled_i2c.c:30: oledSendCommand(0xc8);  //Set COM OUTput
	mov	dpl,#0xc8
	lcall	_oledSendCommand
;	./src/oled_i2c.c:31: oledSendCommand(0xda); 
	mov	dpl,#0xda
	lcall	_oledSendCommand
;	./src/oled_i2c.c:32: oledSendCommand(0x12);
	mov	dpl,#0x12
	lcall	_oledSendCommand
;	./src/oled_i2c.c:33: oledSendCommand(0x81);
	mov	dpl,#0x81
	lcall	_oledSendCommand
;	./src/oled_i2c.c:34: oledSendCommand(0x7f);
	mov	dpl,#0x7f
	lcall	_oledSendCommand
;	./src/oled_i2c.c:35: oledSendCommand(0xa4);
	mov	dpl,#0xa4
	lcall	_oledSendCommand
;	./src/oled_i2c.c:36: oledSendCommand(0xa6);
	mov	dpl,#0xa6
	lcall	_oledSendCommand
;	./src/oled_i2c.c:37: oledSendCommand(0xd5);
	mov	dpl,#0xd5
	lcall	_oledSendCommand
;	./src/oled_i2c.c:38: oledSendCommand(0x80);
	mov	dpl,#0x80
	lcall	_oledSendCommand
;	./src/oled_i2c.c:39: oledSendCommand(0x8d);
	mov	dpl,#0x8d
	lcall	_oledSendCommand
;	./src/oled_i2c.c:40: oledSendCommand(0x14);
	mov	dpl,#0x14
	lcall	_oledSendCommand
;	./src/oled_i2c.c:41: oledSendCommand(0xaf);
	mov	dpl,#0xaf
	lcall	_oledSendCommand
;	./src/oled_i2c.c:43: OLED_Clear();  /* Clear the complete LCD during init */
;	./src/oled_i2c.c:44: }
	ljmp	_OLED_Clear
;------------------------------------------------------------
;Allocation info for local variables in function 'OLED_DisplayChar'
;------------------------------------------------------------
;ch                        Allocated to registers r7 
;i                         Allocated to registers r5 
;index                     Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/oled_i2c.c:61: void OLED_DisplayChar(char ch)
;	-----------------------------------------
;	 function OLED_DisplayChar
;	-----------------------------------------
_OLED_DisplayChar:
	mov	r7,dpl
;	./src/oled_i2c.c:64: int index=0;
	mov	r5,#0x00
	mov	r6,#0x00
;	./src/oled_i2c.c:66: if(ch != '\n') {  /* TODO */ 
	cjne	r7,#0x0a,00193$
	ret
00193$:
;	./src/oled_i2c.c:68: if(ch == ' ') index = 0;
	cjne	r7,#0x20,00123$
	mov	r5,#0x00
	mov	r6,#0x00
	sjmp	00124$
00123$:
;	./src/oled_i2c.c:69: else if(ch == '-') index = 1;
	cjne	r7,#0x2d,00120$
	mov	r5,#0x01
	mov	r6,#0x00
	sjmp	00124$
00120$:
;	./src/oled_i2c.c:70: else if(ch >= 0x30 && ch <= 0x39) index = (ch - 0x2e);
	cjne	r7,#0x30,00198$
00198$:
	jc	00116$
	mov	a,r7
	add	a,#0xff - 0x39
	jc	00116$
	mov	ar3,r7
	mov	r4,#0x00
	mov	a,r3
	add	a,#0xd2
	mov	r5,a
	mov	a,r4
	addc	a,#0xff
	mov	r6,a
	sjmp	00124$
00116$:
;	./src/oled_i2c.c:71: else if(ch == 'A') index = 12;
	cjne	r7,#0x41,00113$
	mov	r5,#0x0c
	mov	r6,#0x00
	sjmp	00124$
00113$:
;	./src/oled_i2c.c:72: else if(ch == 'G') index = 13;
	cjne	r7,#0x47,00110$
	mov	r5,#0x0d
	mov	r6,#0x00
	sjmp	00124$
00110$:
;	./src/oled_i2c.c:73: else if(ch == 'X') index = 14;
	cjne	r7,#0x58,00107$
	mov	r5,#0x0e
	mov	r6,#0x00
	sjmp	00124$
00107$:
;	./src/oled_i2c.c:74: else if(ch == 'Y') index = 15;
	cjne	r7,#0x59,00104$
	mov	r5,#0x0f
	mov	r6,#0x00
	sjmp	00124$
00104$:
;	./src/oled_i2c.c:75: else if(ch == 'Z') index = 16;
	cjne	r7,#0x5a,00124$
	mov	r5,#0x10
	mov	r6,#0x00
00124$:
;	./src/oled_i2c.c:77: index = index * 5; // As the lookup table starts from Space(0x20)
	mov	__mulint_PARM_2,r5
	mov	(__mulint_PARM_2 + 1),r6
	mov	dptr,#0x0005
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
;	./src/oled_i2c.c:79: for(i = 0; i < 5; i ++)
	mov	r5,#0x00
00128$:
;	./src/oled_i2c.c:80: oledSendData(OledFontTable[index + i]); /* Get the data to be displayed for LookUptable*/
	mov	ar4,r6
	mov	ar3,r5
	mov	a,r3
	add	a,r4
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r4
	add	a,#_OledFontTable
	mov	dpl,a
	mov	a,r3
	addc	a,#(_OledFontTable >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_oledSendData
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/oled_i2c.c:79: for(i = 0; i < 5; i ++)
	inc	r5
	cjne	r5,#0x05,00211$
00211$:
	jc	00128$
;	./src/oled_i2c.c:82: oledSendData(0x00); /* Display the data and keep track of cursor */
	mov	dpl,#0x00
;	./src/oled_i2c.c:84: }
	ljmp	_oledSendData
;------------------------------------------------------------
;Allocation info for local variables in function 'OLED_DisplayString'
;------------------------------------------------------------
;ptr                       Allocated to registers 
;------------------------------------------------------------
;	./src/oled_i2c.c:104: void OLED_DisplayString(uint8_t *ptr)
;	-----------------------------------------
;	 function OLED_DisplayString
;	-----------------------------------------
_OLED_DisplayString:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	./src/oled_i2c.c:106: while(*ptr)
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
;	./src/oled_i2c.c:107: OLED_DisplayChar(*ptr++);
	mov	dpl,r4
	inc	r5
	cjne	r5,#0x00,00116$
	inc	r6
00116$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_OLED_DisplayChar
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
;	./src/oled_i2c.c:108: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'OLED_Clear'
;------------------------------------------------------------
;oled_clean_col            Allocated to registers r6 
;oled_clean_page           Allocated to registers r7 
;------------------------------------------------------------
;	./src/oled_i2c.c:120: void OLED_Clear(void)
;	-----------------------------------------
;	 function OLED_Clear
;	-----------------------------------------
_OLED_Clear:
;	./src/oled_i2c.c:123: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page ++) {
	mov	r7,#0x00
00105$:
;	./src/oled_i2c.c:124: OLED_SetCursor(oled_clean_page,0);
	mov	_OLED_SetCursor_PARM_2,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_OLED_SetCursor
	pop	ar7
;	./src/oled_i2c.c:125: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) {
	mov	r6,#0x00
00103$:
;	./src/oled_i2c.c:126: oledSendData(0);
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_oledSendData
	pop	ar6
	pop	ar7
;	./src/oled_i2c.c:125: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) {
	inc	r6
	cjne	r6,#0x80,00123$
00123$:
	jc	00103$
;	./src/oled_i2c.c:123: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page ++) {
	inc	r7
	cjne	r7,#0x08,00125$
00125$:
	jc	00105$
;	./src/oled_i2c.c:129: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'OLED_SetCursor'
;------------------------------------------------------------
;cursorPosition            Allocated with name '_OLED_SetCursor_PARM_2'
;lineNumber                Allocated to registers r7 
;------------------------------------------------------------
;	./src/oled_i2c.c:145: void OLED_SetCursor(uint8_t lineNumber,uint8_t cursorPosition)
;	-----------------------------------------
;	 function OLED_SetCursor
;	-----------------------------------------
_OLED_SetCursor:
	mov	r7,dpl
;	./src/oled_i2c.c:147: cursorPosition = cursorPosition + 2;
	mov	r6,_OLED_SetCursor_PARM_2
	mov	a,#0x02
	add	a,r6
	mov	_OLED_SetCursor_PARM_2,a
;	./src/oled_i2c.c:148: oledSendCommand(0x0f&cursorPosition);
	mov	r6,_OLED_SetCursor_PARM_2
	mov	a,#0x0f
	anl	a,r6
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_oledSendCommand
	pop	ar6
;	./src/oled_i2c.c:149: oledSendCommand(0x10|(cursorPosition>>4));
	mov	a,r6
	swap	a
	anl	a,#0x0f
	mov	r6,a
	mov	a,#0x10
	orl	a,r6
	mov	dpl,a
	lcall	_oledSendCommand
	pop	ar7
;	./src/oled_i2c.c:150: oledSendCommand(0xb0|lineNumber);
	mov	a,#0xb0
	orl	a,r7
	mov	dpl,a
;	./src/oled_i2c.c:151: }
	ljmp	_oledSendCommand
;------------------------------------------------------------
;Allocation info for local variables in function 'oledSendCommand'
;------------------------------------------------------------
;cmd                       Allocated to registers 
;------------------------------------------------------------
;	./src/oled_i2c.c:156: void oledSendCommand(uint8_t cmd)
;	-----------------------------------------
;	 function oledSendCommand
;	-----------------------------------------
_oledSendCommand:
	mov	_Single_WriteI2C_PARM_3,dpl
;	./src/oled_i2c.c:158: Single_WriteI2C(OLED_SlaveAddress, SSD1306_COMMAND, cmd);
	mov	_Single_WriteI2C_PARM_2,#0x00
	mov	dpl,#0x78
;	./src/oled_i2c.c:159: }
	ljmp	_Single_WriteI2C
;------------------------------------------------------------
;Allocation info for local variables in function 'oledSendData'
;------------------------------------------------------------
;cmd                       Allocated to registers 
;------------------------------------------------------------
;	./src/oled_i2c.c:161: void oledSendData(uint8_t cmd)
;	-----------------------------------------
;	 function oledSendData
;	-----------------------------------------
_oledSendData:
	mov	_Single_WriteI2C_PARM_3,dpl
;	./src/oled_i2c.c:163: Single_WriteI2C(OLED_SlaveAddress, SSD1306_DATA_CONTINUE, cmd);
	mov	_Single_WriteI2C_PARM_2,#0x40
	mov	dpl,#0x78
;	./src/oled_i2c.c:164: }
	ljmp	_Single_WriteI2C
	.area CSEG    (CODE)
	.area CONST   (CODE)
_OledFontTable:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x3e	; 62
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x45	; 69	'E'
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x61	; 97	'a'
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x46	; 70	'F'
	.db #0x21	; 33
	.db #0x41	; 65	'A'
	.db #0x45	; 69	'E'
	.db #0x4b	; 75	'K'
	.db #0x31	; 49	'1'
	.db #0x18	; 24
	.db #0x14	; 20
	.db #0x12	; 18
	.db #0x7f	; 127
	.db #0x10	; 16
	.db #0x27	; 39
	.db #0x45	; 69	'E'
	.db #0x45	; 69	'E'
	.db #0x45	; 69	'E'
	.db #0x39	; 57	'9'
	.db #0x3c	; 60
	.db #0x4a	; 74	'J'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x30	; 48	'0'
	.db #0x01	; 1
	.db #0x71	; 113	'q'
	.db #0x09	; 9
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x36	; 54	'6'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x36	; 54	'6'
	.db #0x06	; 6
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x29	; 41
	.db #0x1e	; 30
	.db #0x7c	; 124
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x7c	; 124
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x7a	; 122	'z'
	.db #0x63	; 99	'c'
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x63	; 99	'c'
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x70	; 112	'p'
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x61	; 97	'a'
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x45	; 69	'E'
	.db #0x43	; 67	'C'
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
