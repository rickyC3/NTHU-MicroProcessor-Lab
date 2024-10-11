                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module oled_i2c
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _OledFontTable
                                     12 	.globl _Single_WriteI2C
                                     13 	.globl _OLED_SetCursor_PARM_2
                                     14 	.globl _OLED_Init
                                     15 	.globl _OLED_DisplayChar
                                     16 	.globl _OLED_DisplayString
                                     17 	.globl _OLED_Clear
                                     18 	.globl _OLED_SetCursor
                                     19 	.globl _oledSendCommand
                                     20 	.globl _oledSendData
                                     21 ;--------------------------------------------------------
                                     22 ; special function registers
                                     23 ;--------------------------------------------------------
                                     24 	.area RSEG    (ABS,DATA)
      000000                         25 	.org 0x0000
                                     26 ;--------------------------------------------------------
                                     27 ; special function bits
                                     28 ;--------------------------------------------------------
                                     29 	.area RSEG    (ABS,DATA)
      000000                         30 	.org 0x0000
                                     31 ;--------------------------------------------------------
                                     32 ; overlayable register banks
                                     33 ;--------------------------------------------------------
                                     34 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         35 	.ds 8
                                     36 ;--------------------------------------------------------
                                     37 ; internal ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area DSEG    (DATA)
      00001E                         40 _OLED_SetCursor_PARM_2:
      00001E                         41 	.ds 1
                                     42 ;--------------------------------------------------------
                                     43 ; overlayable items in internal ram 
                                     44 ;--------------------------------------------------------
                                     45 ;--------------------------------------------------------
                                     46 ; indirectly addressable internal ram data
                                     47 ;--------------------------------------------------------
                                     48 	.area ISEG    (DATA)
                                     49 ;--------------------------------------------------------
                                     50 ; absolute internal ram data
                                     51 ;--------------------------------------------------------
                                     52 	.area IABS    (ABS,DATA)
                                     53 	.area IABS    (ABS,DATA)
                                     54 ;--------------------------------------------------------
                                     55 ; bit data
                                     56 ;--------------------------------------------------------
                                     57 	.area BSEG    (BIT)
                                     58 ;--------------------------------------------------------
                                     59 ; paged external ram data
                                     60 ;--------------------------------------------------------
                                     61 	.area PSEG    (PAG,XDATA)
                                     62 ;--------------------------------------------------------
                                     63 ; external ram data
                                     64 ;--------------------------------------------------------
                                     65 	.area XSEG    (XDATA)
                                     66 ;--------------------------------------------------------
                                     67 ; absolute external ram data
                                     68 ;--------------------------------------------------------
                                     69 	.area XABS    (ABS,XDATA)
                                     70 ;--------------------------------------------------------
                                     71 ; external initialized ram data
                                     72 ;--------------------------------------------------------
                                     73 	.area XISEG   (XDATA)
                                     74 	.area HOME    (CODE)
                                     75 	.area GSINIT0 (CODE)
                                     76 	.area GSINIT1 (CODE)
                                     77 	.area GSINIT2 (CODE)
                                     78 	.area GSINIT3 (CODE)
                                     79 	.area GSINIT4 (CODE)
                                     80 	.area GSINIT5 (CODE)
                                     81 	.area GSINIT  (CODE)
                                     82 	.area GSFINAL (CODE)
                                     83 	.area CSEG    (CODE)
                                     84 ;--------------------------------------------------------
                                     85 ; global & static initialisations
                                     86 ;--------------------------------------------------------
                                     87 	.area HOME    (CODE)
                                     88 	.area GSINIT  (CODE)
                                     89 	.area GSFINAL (CODE)
                                     90 	.area GSINIT  (CODE)
                                     91 ;--------------------------------------------------------
                                     92 ; Home
                                     93 ;--------------------------------------------------------
                                     94 	.area HOME    (CODE)
                                     95 	.area HOME    (CODE)
                                     96 ;--------------------------------------------------------
                                     97 ; code
                                     98 ;--------------------------------------------------------
                                     99 	.area CSEG    (CODE)
                                    100 ;------------------------------------------------------------
                                    101 ;Allocation info for local variables in function 'OLED_Init'
                                    102 ;------------------------------------------------------------
                                    103 ;	./src/oled_i2c.c:17: void OLED_Init(void)
                                    104 ;	-----------------------------------------
                                    105 ;	 function OLED_Init
                                    106 ;	-----------------------------------------
      000619                        107 _OLED_Init:
                           000007   108 	ar7 = 0x07
                           000006   109 	ar6 = 0x06
                           000005   110 	ar5 = 0x05
                           000004   111 	ar4 = 0x04
                           000003   112 	ar3 = 0x03
                           000002   113 	ar2 = 0x02
                           000001   114 	ar1 = 0x01
                           000000   115 	ar0 = 0x00
                                    116 ;	./src/oled_i2c.c:19: oledSendCommand(0xa8);  //Set MUX Ratio
      000619 75 82 A8         [24]  117 	mov	dpl,#0xa8
      00061C 12 07 5F         [24]  118 	lcall	_oledSendCommand
                                    119 ;	./src/oled_i2c.c:20: oledSendCommand(0x3f);  
      00061F 75 82 3F         [24]  120 	mov	dpl,#0x3f
      000622 12 07 5F         [24]  121 	lcall	_oledSendCommand
                                    122 ;	./src/oled_i2c.c:21: oledSendCommand(0xd3);  //Set Display Offset
      000625 75 82 D3         [24]  123 	mov	dpl,#0xd3
      000628 12 07 5F         [24]  124 	lcall	_oledSendCommand
                                    125 ;	./src/oled_i2c.c:22: oledSendCommand(0x00);  
      00062B 75 82 00         [24]  126 	mov	dpl,#0x00
      00062E 12 07 5F         [24]  127 	lcall	_oledSendCommand
                                    128 ;	./src/oled_i2c.c:23: oledSendCommand(0x40);  //Set Display Start Line
      000631 75 82 40         [24]  129 	mov	dpl,#0x40
      000634 12 07 5F         [24]  130 	lcall	_oledSendCommand
                                    131 ;	./src/oled_i2c.c:24: oledSendCommand(0xa1);  //Set Segment re-map A0h/A1h
      000637 75 82 A1         [24]  132 	mov	dpl,#0xa1
      00063A 12 07 5F         [24]  133 	lcall	_oledSendCommand
                                    134 ;	./src/oled_i2c.c:25: oledSendCommand(0xc8);  //Set COM OUTput
      00063D 75 82 C8         [24]  135 	mov	dpl,#0xc8
      000640 12 07 5F         [24]  136 	lcall	_oledSendCommand
                                    137 ;	./src/oled_i2c.c:26: oledSendCommand(0xda); 
      000643 75 82 DA         [24]  138 	mov	dpl,#0xda
      000646 12 07 5F         [24]  139 	lcall	_oledSendCommand
                                    140 ;	./src/oled_i2c.c:27: oledSendCommand(0x12);
      000649 75 82 12         [24]  141 	mov	dpl,#0x12
      00064C 12 07 5F         [24]  142 	lcall	_oledSendCommand
                                    143 ;	./src/oled_i2c.c:28: oledSendCommand(0x81);
      00064F 75 82 81         [24]  144 	mov	dpl,#0x81
      000652 12 07 5F         [24]  145 	lcall	_oledSendCommand
                                    146 ;	./src/oled_i2c.c:29: oledSendCommand(0x7f);
      000655 75 82 7F         [24]  147 	mov	dpl,#0x7f
      000658 12 07 5F         [24]  148 	lcall	_oledSendCommand
                                    149 ;	./src/oled_i2c.c:30: oledSendCommand(0xa4);
      00065B 75 82 A4         [24]  150 	mov	dpl,#0xa4
      00065E 12 07 5F         [24]  151 	lcall	_oledSendCommand
                                    152 ;	./src/oled_i2c.c:31: oledSendCommand(0xa6);
      000661 75 82 A6         [24]  153 	mov	dpl,#0xa6
      000664 12 07 5F         [24]  154 	lcall	_oledSendCommand
                                    155 ;	./src/oled_i2c.c:32: oledSendCommand(0xd5);
      000667 75 82 D5         [24]  156 	mov	dpl,#0xd5
      00066A 12 07 5F         [24]  157 	lcall	_oledSendCommand
                                    158 ;	./src/oled_i2c.c:33: oledSendCommand(0x80);
      00066D 75 82 80         [24]  159 	mov	dpl,#0x80
      000670 12 07 5F         [24]  160 	lcall	_oledSendCommand
                                    161 ;	./src/oled_i2c.c:34: oledSendCommand(0x8d);
      000673 75 82 8D         [24]  162 	mov	dpl,#0x8d
      000676 12 07 5F         [24]  163 	lcall	_oledSendCommand
                                    164 ;	./src/oled_i2c.c:35: oledSendCommand(0x14);
      000679 75 82 14         [24]  165 	mov	dpl,#0x14
      00067C 12 07 5F         [24]  166 	lcall	_oledSendCommand
                                    167 ;	./src/oled_i2c.c:36: oledSendCommand(0xaf);
      00067F 75 82 AF         [24]  168 	mov	dpl,#0xaf
      000682 12 07 5F         [24]  169 	lcall	_oledSendCommand
                                    170 ;	./src/oled_i2c.c:38: OLED_Clear();  // Clear the complete LCD during init 
                                    171 ;	./src/oled_i2c.c:39: }
      000685 02 07 04         [24]  172 	ljmp	_OLED_Clear
                                    173 ;------------------------------------------------------------
                                    174 ;Allocation info for local variables in function 'OLED_DisplayChar'
                                    175 ;------------------------------------------------------------
                                    176 ;ch                        Allocated to registers r7 
                                    177 ;i                         Allocated to registers r5 
                                    178 ;index                     Allocated to registers r6 r7 
                                    179 ;------------------------------------------------------------
                                    180 ;	./src/oled_i2c.c:51: void OLED_DisplayChar(uint8_t ch)
                                    181 ;	-----------------------------------------
                                    182 ;	 function OLED_DisplayChar
                                    183 ;	-----------------------------------------
      000688                        184 _OLED_DisplayChar:
      000688 AF 82            [24]  185 	mov	r7,dpl
                                    186 ;	./src/oled_i2c.c:56: if(ch!='\n') {  /* TODO */ 
      00068A BF 0A 01         [24]  187 	cjne	r7,#0x0a,00124$
      00068D 22               [24]  188 	ret
      00068E                        189 00124$:
                                    190 ;	./src/oled_i2c.c:57: index = (ch - 0x20);
      00068E 7E 00            [12]  191 	mov	r6,#0x00
      000690 EF               [12]  192 	mov	a,r7
      000691 24 E0            [12]  193 	add	a,#0xe0
      000693 F5 3D            [12]  194 	mov	__mulint_PARM_2,a
      000695 EE               [12]  195 	mov	a,r6
      000696 34 FF            [12]  196 	addc	a,#0xff
      000698 F5 3E            [12]  197 	mov	(__mulint_PARM_2 + 1),a
                                    198 ;	./src/oled_i2c.c:58: index = index * 5; // As the lookup table starts from Space(0x20)
      00069A 90 00 05         [24]  199 	mov	dptr,#0x0005
      00069D 12 07 92         [24]  200 	lcall	__mulint
      0006A0 AE 82            [24]  201 	mov	r6,dpl
      0006A2 AF 83            [24]  202 	mov	r7,dph
                                    203 ;	./src/oled_i2c.c:60: for(i = 0; i < 5; i ++)
      0006A4 7D 00            [12]  204 	mov	r5,#0x00
      0006A6                        205 00104$:
                                    206 ;	./src/oled_i2c.c:61: oledSendData(OledFontTable[index + i]); /* Get the data to be displayed for LookUptable*/
      0006A6 8D 03            [24]  207 	mov	ar3,r5
      0006A8 7C 00            [12]  208 	mov	r4,#0x00
      0006AA EB               [12]  209 	mov	a,r3
      0006AB 2E               [12]  210 	add	a,r6
      0006AC FB               [12]  211 	mov	r3,a
      0006AD EC               [12]  212 	mov	a,r4
      0006AE 3F               [12]  213 	addc	a,r7
      0006AF FC               [12]  214 	mov	r4,a
      0006B0 EB               [12]  215 	mov	a,r3
      0006B1 24 36            [12]  216 	add	a,#_OledFontTable
      0006B3 F5 82            [12]  217 	mov	dpl,a
      0006B5 EC               [12]  218 	mov	a,r4
      0006B6 34 08            [12]  219 	addc	a,#(_OledFontTable >> 8)
      0006B8 F5 83            [12]  220 	mov	dph,a
      0006BA E4               [12]  221 	clr	a
      0006BB 93               [24]  222 	movc	a,@a+dptr
      0006BC F5 82            [12]  223 	mov	dpl,a
      0006BE C0 07            [24]  224 	push	ar7
      0006C0 C0 06            [24]  225 	push	ar6
      0006C2 C0 05            [24]  226 	push	ar5
      0006C4 12 07 6B         [24]  227 	lcall	_oledSendData
      0006C7 D0 05            [24]  228 	pop	ar5
      0006C9 D0 06            [24]  229 	pop	ar6
      0006CB D0 07            [24]  230 	pop	ar7
                                    231 ;	./src/oled_i2c.c:60: for(i = 0; i < 5; i ++)
      0006CD 0D               [12]  232 	inc	r5
      0006CE BD 05 00         [24]  233 	cjne	r5,#0x05,00125$
      0006D1                        234 00125$:
      0006D1 40 D3            [24]  235 	jc	00104$
                                    236 ;	./src/oled_i2c.c:63: oledSendData(0x00); /* Display the data and keep track of cursor */
      0006D3 75 82 00         [24]  237 	mov	dpl,#0x00
                                    238 ;	./src/oled_i2c.c:65: }
      0006D6 02 07 6B         [24]  239 	ljmp	_oledSendData
                                    240 ;------------------------------------------------------------
                                    241 ;Allocation info for local variables in function 'OLED_DisplayString'
                                    242 ;------------------------------------------------------------
                                    243 ;ptr                       Allocated to registers 
                                    244 ;------------------------------------------------------------
                                    245 ;	./src/oled_i2c.c:81: void OLED_DisplayString(uint8_t *ptr)
                                    246 ;	-----------------------------------------
                                    247 ;	 function OLED_DisplayString
                                    248 ;	-----------------------------------------
      0006D9                        249 _OLED_DisplayString:
      0006D9 AD 82            [24]  250 	mov	r5,dpl
      0006DB AE 83            [24]  251 	mov	r6,dph
      0006DD AF F0            [24]  252 	mov	r7,b
                                    253 ;	./src/oled_i2c.c:83: while(*ptr)
      0006DF                        254 00101$:
      0006DF 8D 82            [24]  255 	mov	dpl,r5
      0006E1 8E 83            [24]  256 	mov	dph,r6
      0006E3 8F F0            [24]  257 	mov	b,r7
      0006E5 12 07 D8         [24]  258 	lcall	__gptrget
      0006E8 FC               [12]  259 	mov	r4,a
      0006E9 60 18            [24]  260 	jz	00104$
                                    261 ;	./src/oled_i2c.c:84: OLED_DisplayChar(*ptr++);
      0006EB 8C 82            [24]  262 	mov	dpl,r4
      0006ED 0D               [12]  263 	inc	r5
      0006EE BD 00 01         [24]  264 	cjne	r5,#0x00,00116$
      0006F1 0E               [12]  265 	inc	r6
      0006F2                        266 00116$:
      0006F2 C0 07            [24]  267 	push	ar7
      0006F4 C0 06            [24]  268 	push	ar6
      0006F6 C0 05            [24]  269 	push	ar5
      0006F8 12 06 88         [24]  270 	lcall	_OLED_DisplayChar
      0006FB D0 05            [24]  271 	pop	ar5
      0006FD D0 06            [24]  272 	pop	ar6
      0006FF D0 07            [24]  273 	pop	ar7
      000701 80 DC            [24]  274 	sjmp	00101$
      000703                        275 00104$:
                                    276 ;	./src/oled_i2c.c:85: }
      000703 22               [24]  277 	ret
                                    278 ;------------------------------------------------------------
                                    279 ;Allocation info for local variables in function 'OLED_Clear'
                                    280 ;------------------------------------------------------------
                                    281 ;oled_clean_col            Allocated to registers r6 
                                    282 ;oled_clean_page           Allocated to registers r7 
                                    283 ;------------------------------------------------------------
                                    284 ;	./src/oled_i2c.c:96: void OLED_Clear(void)
                                    285 ;	-----------------------------------------
                                    286 ;	 function OLED_Clear
                                    287 ;	-----------------------------------------
      000704                        288 _OLED_Clear:
                                    289 ;	./src/oled_i2c.c:99: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page ++) {
      000704 7F 00            [12]  290 	mov	r7,#0x00
      000706                        291 00105$:
                                    292 ;	./src/oled_i2c.c:100: OLED_SetCursor(oled_clean_page,0);
      000706 75 1E 00         [24]  293 	mov	_OLED_SetCursor_PARM_2,#0x00
      000709 8F 82            [24]  294 	mov	dpl,r7
      00070B C0 07            [24]  295 	push	ar7
      00070D 12 07 2F         [24]  296 	lcall	_OLED_SetCursor
      000710 D0 07            [24]  297 	pop	ar7
                                    298 ;	./src/oled_i2c.c:101: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) {
      000712 7E 00            [12]  299 	mov	r6,#0x00
      000714                        300 00103$:
                                    301 ;	./src/oled_i2c.c:102: oledSendData(0);
      000714 75 82 00         [24]  302 	mov	dpl,#0x00
      000717 C0 07            [24]  303 	push	ar7
      000719 C0 06            [24]  304 	push	ar6
      00071B 12 07 6B         [24]  305 	lcall	_oledSendData
      00071E D0 06            [24]  306 	pop	ar6
      000720 D0 07            [24]  307 	pop	ar7
                                    308 ;	./src/oled_i2c.c:101: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) {
      000722 0E               [12]  309 	inc	r6
      000723 BE 80 00         [24]  310 	cjne	r6,#0x80,00123$
      000726                        311 00123$:
      000726 40 EC            [24]  312 	jc	00103$
                                    313 ;	./src/oled_i2c.c:99: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page ++) {
      000728 0F               [12]  314 	inc	r7
      000729 BF 08 00         [24]  315 	cjne	r7,#0x08,00125$
      00072C                        316 00125$:
      00072C 40 D8            [24]  317 	jc	00105$
                                    318 ;	./src/oled_i2c.c:105: }
      00072E 22               [24]  319 	ret
                                    320 ;------------------------------------------------------------
                                    321 ;Allocation info for local variables in function 'OLED_SetCursor'
                                    322 ;------------------------------------------------------------
                                    323 ;cursorPosition            Allocated with name '_OLED_SetCursor_PARM_2'
                                    324 ;lineNumber                Allocated to registers r7 
                                    325 ;------------------------------------------------------------
                                    326 ;	./src/oled_i2c.c:122: void OLED_SetCursor(uint8_t lineNumber,uint8_t cursorPosition)
                                    327 ;	-----------------------------------------
                                    328 ;	 function OLED_SetCursor
                                    329 ;	-----------------------------------------
      00072F                        330 _OLED_SetCursor:
      00072F AF 82            [24]  331 	mov	r7,dpl
                                    332 ;	./src/oled_i2c.c:124: cursorPosition = cursorPosition + 2;
      000731 AE 1E            [24]  333 	mov	r6,_OLED_SetCursor_PARM_2
      000733 74 02            [12]  334 	mov	a,#0x02
      000735 2E               [12]  335 	add	a,r6
      000736 F5 1E            [12]  336 	mov	_OLED_SetCursor_PARM_2,a
                                    337 ;	./src/oled_i2c.c:125: oledSendCommand(0x0f&cursorPosition); // Select SEG lower 4 bits
      000738 AE 1E            [24]  338 	mov	r6,_OLED_SetCursor_PARM_2
      00073A 74 0F            [12]  339 	mov	a,#0x0f
      00073C 5E               [12]  340 	anl	a,r6
      00073D F5 82            [12]  341 	mov	dpl,a
      00073F C0 07            [24]  342 	push	ar7
      000741 C0 06            [24]  343 	push	ar6
      000743 12 07 5F         [24]  344 	lcall	_oledSendCommand
      000746 D0 06            [24]  345 	pop	ar6
                                    346 ;	./src/oled_i2c.c:126: oledSendCommand(0x10|(cursorPosition>>4)); // Select SEG higher 4 bits
      000748 EE               [12]  347 	mov	a,r6
      000749 C4               [12]  348 	swap	a
      00074A 54 0F            [12]  349 	anl	a,#0x0f
      00074C FE               [12]  350 	mov	r6,a
      00074D 74 10            [12]  351 	mov	a,#0x10
      00074F 4E               [12]  352 	orl	a,r6
      000750 F5 82            [12]  353 	mov	dpl,a
      000752 12 07 5F         [24]  354 	lcall	_oledSendCommand
      000755 D0 07            [24]  355 	pop	ar7
                                    356 ;	./src/oled_i2c.c:127: oledSendCommand(0xb0|lineNumber); // Select PAGE
      000757 74 B0            [12]  357 	mov	a,#0xb0
      000759 4F               [12]  358 	orl	a,r7
      00075A F5 82            [12]  359 	mov	dpl,a
                                    360 ;	./src/oled_i2c.c:128: }
      00075C 02 07 5F         [24]  361 	ljmp	_oledSendCommand
                                    362 ;------------------------------------------------------------
                                    363 ;Allocation info for local variables in function 'oledSendCommand'
                                    364 ;------------------------------------------------------------
                                    365 ;cmd                       Allocated to registers 
                                    366 ;------------------------------------------------------------
                                    367 ;	./src/oled_i2c.c:133: void oledSendCommand(uint8_t cmd)
                                    368 ;	-----------------------------------------
                                    369 ;	 function oledSendCommand
                                    370 ;	-----------------------------------------
      00075F                        371 _oledSendCommand:
      00075F 85 82 3B         [24]  372 	mov	_Single_WriteI2C_PARM_3,dpl
                                    373 ;	./src/oled_i2c.c:135: Single_WriteI2C(OLED_SlaveAddress, SSD1306_COMMAND, cmd);
      000762 75 3A 00         [24]  374 	mov	_Single_WriteI2C_PARM_2,#0x00
      000765 75 82 78         [24]  375 	mov	dpl,#0x78
                                    376 ;	./src/oled_i2c.c:136: }
      000768 02 05 BD         [24]  377 	ljmp	_Single_WriteI2C
                                    378 ;------------------------------------------------------------
                                    379 ;Allocation info for local variables in function 'oledSendData'
                                    380 ;------------------------------------------------------------
                                    381 ;cmd                       Allocated to registers 
                                    382 ;------------------------------------------------------------
                                    383 ;	./src/oled_i2c.c:138: void oledSendData(uint8_t cmd)
                                    384 ;	-----------------------------------------
                                    385 ;	 function oledSendData
                                    386 ;	-----------------------------------------
      00076B                        387 _oledSendData:
      00076B 85 82 3B         [24]  388 	mov	_Single_WriteI2C_PARM_3,dpl
                                    389 ;	./src/oled_i2c.c:140: Single_WriteI2C(OLED_SlaveAddress, SSD1306_DATA_CONTINUE, cmd);
      00076E 75 3A 40         [24]  390 	mov	_Single_WriteI2C_PARM_2,#0x40
      000771 75 82 78         [24]  391 	mov	dpl,#0x78
                                    392 ;	./src/oled_i2c.c:141: }
      000774 02 05 BD         [24]  393 	ljmp	_Single_WriteI2C
                                    394 	.area CSEG    (CODE)
                                    395 	.area CONST   (CODE)
      000836                        396 _OledFontTable:
      000836 00                     397 	.db #0x00	; 0
      000837 00                     398 	.db #0x00	; 0
      000838 00                     399 	.db #0x00	; 0
      000839 00                     400 	.db #0x00	; 0
      00083A 00                     401 	.db #0x00	; 0
      00083B 00                     402 	.db #0x00	; 0
      00083C 00                     403 	.db #0x00	; 0
      00083D 2F                     404 	.db #0x2f	; 47
      00083E 00                     405 	.db #0x00	; 0
      00083F 00                     406 	.db #0x00	; 0
      000840 00                     407 	.db #0x00	; 0
      000841 07                     408 	.db #0x07	; 7
      000842 00                     409 	.db #0x00	; 0
      000843 07                     410 	.db #0x07	; 7
      000844 00                     411 	.db #0x00	; 0
      000845 14                     412 	.db #0x14	; 20
      000846 7F                     413 	.db #0x7f	; 127
      000847 14                     414 	.db #0x14	; 20
      000848 7F                     415 	.db #0x7f	; 127
      000849 14                     416 	.db #0x14	; 20
      00084A 24                     417 	.db #0x24	; 36
      00084B 2A                     418 	.db #0x2a	; 42
      00084C 7F                     419 	.db #0x7f	; 127
      00084D 2A                     420 	.db #0x2a	; 42
      00084E 12                     421 	.db #0x12	; 18
      00084F 23                     422 	.db #0x23	; 35
      000850 13                     423 	.db #0x13	; 19
      000851 08                     424 	.db #0x08	; 8
      000852 64                     425 	.db #0x64	; 100	'd'
      000853 62                     426 	.db #0x62	; 98	'b'
      000854 36                     427 	.db #0x36	; 54	'6'
      000855 49                     428 	.db #0x49	; 73	'I'
      000856 55                     429 	.db #0x55	; 85	'U'
      000857 22                     430 	.db #0x22	; 34
      000858 50                     431 	.db #0x50	; 80	'P'
      000859 00                     432 	.db #0x00	; 0
      00085A 05                     433 	.db #0x05	; 5
      00085B 03                     434 	.db #0x03	; 3
      00085C 00                     435 	.db #0x00	; 0
      00085D 00                     436 	.db #0x00	; 0
      00085E 00                     437 	.db #0x00	; 0
      00085F 1C                     438 	.db #0x1c	; 28
      000860 22                     439 	.db #0x22	; 34
      000861 41                     440 	.db #0x41	; 65	'A'
      000862 00                     441 	.db #0x00	; 0
      000863 00                     442 	.db #0x00	; 0
      000864 41                     443 	.db #0x41	; 65	'A'
      000865 22                     444 	.db #0x22	; 34
      000866 1C                     445 	.db #0x1c	; 28
      000867 00                     446 	.db #0x00	; 0
      000868 14                     447 	.db #0x14	; 20
      000869 08                     448 	.db #0x08	; 8
      00086A 3E                     449 	.db #0x3e	; 62
      00086B 08                     450 	.db #0x08	; 8
      00086C 14                     451 	.db #0x14	; 20
      00086D 08                     452 	.db #0x08	; 8
      00086E 08                     453 	.db #0x08	; 8
      00086F 3E                     454 	.db #0x3e	; 62
      000870 08                     455 	.db #0x08	; 8
      000871 08                     456 	.db #0x08	; 8
      000872 00                     457 	.db #0x00	; 0
      000873 00                     458 	.db #0x00	; 0
      000874 A0                     459 	.db #0xa0	; 160
      000875 60                     460 	.db #0x60	; 96
      000876 00                     461 	.db #0x00	; 0
      000877 08                     462 	.db #0x08	; 8
      000878 08                     463 	.db #0x08	; 8
      000879 08                     464 	.db #0x08	; 8
      00087A 08                     465 	.db #0x08	; 8
      00087B 08                     466 	.db #0x08	; 8
      00087C 00                     467 	.db #0x00	; 0
      00087D 60                     468 	.db #0x60	; 96
      00087E 60                     469 	.db #0x60	; 96
      00087F 00                     470 	.db #0x00	; 0
      000880 00                     471 	.db #0x00	; 0
      000881 20                     472 	.db #0x20	; 32
      000882 10                     473 	.db #0x10	; 16
      000883 08                     474 	.db #0x08	; 8
      000884 04                     475 	.db #0x04	; 4
      000885 02                     476 	.db #0x02	; 2
      000886 3E                     477 	.db #0x3e	; 62
      000887 51                     478 	.db #0x51	; 81	'Q'
      000888 49                     479 	.db #0x49	; 73	'I'
      000889 45                     480 	.db #0x45	; 69	'E'
      00088A 3E                     481 	.db #0x3e	; 62
      00088B 00                     482 	.db #0x00	; 0
      00088C 42                     483 	.db #0x42	; 66	'B'
      00088D 7F                     484 	.db #0x7f	; 127
      00088E 40                     485 	.db #0x40	; 64
      00088F 00                     486 	.db #0x00	; 0
      000890 42                     487 	.db #0x42	; 66	'B'
      000891 61                     488 	.db #0x61	; 97	'a'
      000892 51                     489 	.db #0x51	; 81	'Q'
      000893 49                     490 	.db #0x49	; 73	'I'
      000894 46                     491 	.db #0x46	; 70	'F'
      000895 21                     492 	.db #0x21	; 33
      000896 41                     493 	.db #0x41	; 65	'A'
      000897 45                     494 	.db #0x45	; 69	'E'
      000898 4B                     495 	.db #0x4b	; 75	'K'
      000899 31                     496 	.db #0x31	; 49	'1'
      00089A 18                     497 	.db #0x18	; 24
      00089B 14                     498 	.db #0x14	; 20
      00089C 12                     499 	.db #0x12	; 18
      00089D 7F                     500 	.db #0x7f	; 127
      00089E 10                     501 	.db #0x10	; 16
      00089F 27                     502 	.db #0x27	; 39
      0008A0 45                     503 	.db #0x45	; 69	'E'
      0008A1 45                     504 	.db #0x45	; 69	'E'
      0008A2 45                     505 	.db #0x45	; 69	'E'
      0008A3 39                     506 	.db #0x39	; 57	'9'
      0008A4 3C                     507 	.db #0x3c	; 60
      0008A5 4A                     508 	.db #0x4a	; 74	'J'
      0008A6 49                     509 	.db #0x49	; 73	'I'
      0008A7 49                     510 	.db #0x49	; 73	'I'
      0008A8 30                     511 	.db #0x30	; 48	'0'
      0008A9 01                     512 	.db #0x01	; 1
      0008AA 71                     513 	.db #0x71	; 113	'q'
      0008AB 09                     514 	.db #0x09	; 9
      0008AC 05                     515 	.db #0x05	; 5
      0008AD 03                     516 	.db #0x03	; 3
      0008AE 36                     517 	.db #0x36	; 54	'6'
      0008AF 49                     518 	.db #0x49	; 73	'I'
      0008B0 49                     519 	.db #0x49	; 73	'I'
      0008B1 49                     520 	.db #0x49	; 73	'I'
      0008B2 36                     521 	.db #0x36	; 54	'6'
      0008B3 06                     522 	.db #0x06	; 6
      0008B4 49                     523 	.db #0x49	; 73	'I'
      0008B5 49                     524 	.db #0x49	; 73	'I'
      0008B6 29                     525 	.db #0x29	; 41
      0008B7 1E                     526 	.db #0x1e	; 30
      0008B8 00                     527 	.db #0x00	; 0
      0008B9 36                     528 	.db #0x36	; 54	'6'
      0008BA 36                     529 	.db #0x36	; 54	'6'
      0008BB 00                     530 	.db #0x00	; 0
      0008BC 00                     531 	.db #0x00	; 0
      0008BD 00                     532 	.db #0x00	; 0
      0008BE 56                     533 	.db #0x56	; 86	'V'
      0008BF 36                     534 	.db #0x36	; 54	'6'
      0008C0 00                     535 	.db #0x00	; 0
      0008C1 00                     536 	.db #0x00	; 0
      0008C2 08                     537 	.db #0x08	; 8
      0008C3 14                     538 	.db #0x14	; 20
      0008C4 22                     539 	.db #0x22	; 34
      0008C5 41                     540 	.db #0x41	; 65	'A'
      0008C6 00                     541 	.db #0x00	; 0
      0008C7 14                     542 	.db #0x14	; 20
      0008C8 14                     543 	.db #0x14	; 20
      0008C9 14                     544 	.db #0x14	; 20
      0008CA 14                     545 	.db #0x14	; 20
      0008CB 14                     546 	.db #0x14	; 20
      0008CC 00                     547 	.db #0x00	; 0
      0008CD 41                     548 	.db #0x41	; 65	'A'
      0008CE 22                     549 	.db #0x22	; 34
      0008CF 14                     550 	.db #0x14	; 20
      0008D0 08                     551 	.db #0x08	; 8
      0008D1 02                     552 	.db #0x02	; 2
      0008D2 01                     553 	.db #0x01	; 1
      0008D3 51                     554 	.db #0x51	; 81	'Q'
      0008D4 09                     555 	.db #0x09	; 9
      0008D5 06                     556 	.db #0x06	; 6
      0008D6 32                     557 	.db #0x32	; 50	'2'
      0008D7 49                     558 	.db #0x49	; 73	'I'
      0008D8 59                     559 	.db #0x59	; 89	'Y'
      0008D9 51                     560 	.db #0x51	; 81	'Q'
      0008DA 3E                     561 	.db #0x3e	; 62
      0008DB 7C                     562 	.db #0x7c	; 124
      0008DC 12                     563 	.db #0x12	; 18
      0008DD 11                     564 	.db #0x11	; 17
      0008DE 12                     565 	.db #0x12	; 18
      0008DF 7C                     566 	.db #0x7c	; 124
      0008E0 7F                     567 	.db #0x7f	; 127
      0008E1 49                     568 	.db #0x49	; 73	'I'
      0008E2 49                     569 	.db #0x49	; 73	'I'
      0008E3 49                     570 	.db #0x49	; 73	'I'
      0008E4 36                     571 	.db #0x36	; 54	'6'
      0008E5 3E                     572 	.db #0x3e	; 62
      0008E6 41                     573 	.db #0x41	; 65	'A'
      0008E7 41                     574 	.db #0x41	; 65	'A'
      0008E8 41                     575 	.db #0x41	; 65	'A'
      0008E9 22                     576 	.db #0x22	; 34
      0008EA 7F                     577 	.db #0x7f	; 127
      0008EB 41                     578 	.db #0x41	; 65	'A'
      0008EC 41                     579 	.db #0x41	; 65	'A'
      0008ED 22                     580 	.db #0x22	; 34
      0008EE 1C                     581 	.db #0x1c	; 28
      0008EF 7F                     582 	.db #0x7f	; 127
      0008F0 49                     583 	.db #0x49	; 73	'I'
      0008F1 49                     584 	.db #0x49	; 73	'I'
      0008F2 49                     585 	.db #0x49	; 73	'I'
      0008F3 41                     586 	.db #0x41	; 65	'A'
      0008F4 7F                     587 	.db #0x7f	; 127
      0008F5 09                     588 	.db #0x09	; 9
      0008F6 09                     589 	.db #0x09	; 9
      0008F7 09                     590 	.db #0x09	; 9
      0008F8 01                     591 	.db #0x01	; 1
      0008F9 3E                     592 	.db #0x3e	; 62
      0008FA 41                     593 	.db #0x41	; 65	'A'
      0008FB 49                     594 	.db #0x49	; 73	'I'
      0008FC 49                     595 	.db #0x49	; 73	'I'
      0008FD 7A                     596 	.db #0x7a	; 122	'z'
      0008FE 7F                     597 	.db #0x7f	; 127
      0008FF 08                     598 	.db #0x08	; 8
      000900 08                     599 	.db #0x08	; 8
      000901 08                     600 	.db #0x08	; 8
      000902 7F                     601 	.db #0x7f	; 127
      000903 00                     602 	.db #0x00	; 0
      000904 41                     603 	.db #0x41	; 65	'A'
      000905 7F                     604 	.db #0x7f	; 127
      000906 41                     605 	.db #0x41	; 65	'A'
      000907 00                     606 	.db #0x00	; 0
      000908 20                     607 	.db #0x20	; 32
      000909 40                     608 	.db #0x40	; 64
      00090A 41                     609 	.db #0x41	; 65	'A'
      00090B 3F                     610 	.db #0x3f	; 63
      00090C 01                     611 	.db #0x01	; 1
      00090D 7F                     612 	.db #0x7f	; 127
      00090E 08                     613 	.db #0x08	; 8
      00090F 14                     614 	.db #0x14	; 20
      000910 22                     615 	.db #0x22	; 34
      000911 41                     616 	.db #0x41	; 65	'A'
      000912 7F                     617 	.db #0x7f	; 127
      000913 40                     618 	.db #0x40	; 64
      000914 40                     619 	.db #0x40	; 64
      000915 40                     620 	.db #0x40	; 64
      000916 40                     621 	.db #0x40	; 64
      000917 7F                     622 	.db #0x7f	; 127
      000918 02                     623 	.db #0x02	; 2
      000919 0C                     624 	.db #0x0c	; 12
      00091A 02                     625 	.db #0x02	; 2
      00091B 7F                     626 	.db #0x7f	; 127
      00091C 7F                     627 	.db #0x7f	; 127
      00091D 04                     628 	.db #0x04	; 4
      00091E 08                     629 	.db #0x08	; 8
      00091F 10                     630 	.db #0x10	; 16
      000920 7F                     631 	.db #0x7f	; 127
      000921 3E                     632 	.db #0x3e	; 62
      000922 41                     633 	.db #0x41	; 65	'A'
      000923 41                     634 	.db #0x41	; 65	'A'
      000924 41                     635 	.db #0x41	; 65	'A'
      000925 3E                     636 	.db #0x3e	; 62
      000926 7F                     637 	.db #0x7f	; 127
      000927 09                     638 	.db #0x09	; 9
      000928 09                     639 	.db #0x09	; 9
      000929 09                     640 	.db #0x09	; 9
      00092A 06                     641 	.db #0x06	; 6
      00092B 3E                     642 	.db #0x3e	; 62
      00092C 41                     643 	.db #0x41	; 65	'A'
      00092D 51                     644 	.db #0x51	; 81	'Q'
      00092E 21                     645 	.db #0x21	; 33
      00092F 5E                     646 	.db #0x5e	; 94
      000930 7F                     647 	.db #0x7f	; 127
      000931 09                     648 	.db #0x09	; 9
      000932 19                     649 	.db #0x19	; 25
      000933 29                     650 	.db #0x29	; 41
      000934 46                     651 	.db #0x46	; 70	'F'
      000935 46                     652 	.db #0x46	; 70	'F'
      000936 49                     653 	.db #0x49	; 73	'I'
      000937 49                     654 	.db #0x49	; 73	'I'
      000938 49                     655 	.db #0x49	; 73	'I'
      000939 31                     656 	.db #0x31	; 49	'1'
      00093A 01                     657 	.db #0x01	; 1
      00093B 01                     658 	.db #0x01	; 1
      00093C 7F                     659 	.db #0x7f	; 127
      00093D 01                     660 	.db #0x01	; 1
      00093E 01                     661 	.db #0x01	; 1
      00093F 3F                     662 	.db #0x3f	; 63
      000940 40                     663 	.db #0x40	; 64
      000941 40                     664 	.db #0x40	; 64
      000942 40                     665 	.db #0x40	; 64
      000943 3F                     666 	.db #0x3f	; 63
      000944 1F                     667 	.db #0x1f	; 31
      000945 20                     668 	.db #0x20	; 32
      000946 40                     669 	.db #0x40	; 64
      000947 20                     670 	.db #0x20	; 32
      000948 1F                     671 	.db #0x1f	; 31
      000949 3F                     672 	.db #0x3f	; 63
      00094A 40                     673 	.db #0x40	; 64
      00094B 38                     674 	.db #0x38	; 56	'8'
      00094C 40                     675 	.db #0x40	; 64
      00094D 3F                     676 	.db #0x3f	; 63
      00094E 63                     677 	.db #0x63	; 99	'c'
      00094F 14                     678 	.db #0x14	; 20
      000950 08                     679 	.db #0x08	; 8
      000951 14                     680 	.db #0x14	; 20
      000952 63                     681 	.db #0x63	; 99	'c'
      000953 07                     682 	.db #0x07	; 7
      000954 08                     683 	.db #0x08	; 8
      000955 70                     684 	.db #0x70	; 112	'p'
      000956 08                     685 	.db #0x08	; 8
      000957 07                     686 	.db #0x07	; 7
      000958 61                     687 	.db #0x61	; 97	'a'
      000959 51                     688 	.db #0x51	; 81	'Q'
      00095A 49                     689 	.db #0x49	; 73	'I'
      00095B 45                     690 	.db #0x45	; 69	'E'
      00095C 43                     691 	.db #0x43	; 67	'C'
      00095D 00                     692 	.db #0x00	; 0
      00095E 7F                     693 	.db #0x7f	; 127
      00095F 41                     694 	.db #0x41	; 65	'A'
      000960 41                     695 	.db #0x41	; 65	'A'
      000961 00                     696 	.db #0x00	; 0
      000962 55                     697 	.db #0x55	; 85	'U'
      000963 AA                     698 	.db #0xaa	; 170
      000964 55                     699 	.db #0x55	; 85	'U'
      000965 AA                     700 	.db #0xaa	; 170
      000966 55                     701 	.db #0x55	; 85	'U'
      000967 00                     702 	.db #0x00	; 0
      000968 41                     703 	.db #0x41	; 65	'A'
      000969 41                     704 	.db #0x41	; 65	'A'
      00096A 7F                     705 	.db #0x7f	; 127
      00096B 00                     706 	.db #0x00	; 0
      00096C 04                     707 	.db #0x04	; 4
      00096D 02                     708 	.db #0x02	; 2
      00096E 01                     709 	.db #0x01	; 1
      00096F 02                     710 	.db #0x02	; 2
      000970 04                     711 	.db #0x04	; 4
      000971 40                     712 	.db #0x40	; 64
      000972 40                     713 	.db #0x40	; 64
      000973 40                     714 	.db #0x40	; 64
      000974 40                     715 	.db #0x40	; 64
      000975 40                     716 	.db #0x40	; 64
      000976 00                     717 	.db #0x00	; 0
      000977 03                     718 	.db #0x03	; 3
      000978 05                     719 	.db #0x05	; 5
      000979 00                     720 	.db #0x00	; 0
      00097A 00                     721 	.db #0x00	; 0
      00097B 20                     722 	.db #0x20	; 32
      00097C 54                     723 	.db #0x54	; 84	'T'
      00097D 54                     724 	.db #0x54	; 84	'T'
      00097E 54                     725 	.db #0x54	; 84	'T'
      00097F 78                     726 	.db #0x78	; 120	'x'
      000980 7F                     727 	.db #0x7f	; 127
      000981 48                     728 	.db #0x48	; 72	'H'
      000982 44                     729 	.db #0x44	; 68	'D'
      000983 44                     730 	.db #0x44	; 68	'D'
      000984 38                     731 	.db #0x38	; 56	'8'
      000985 38                     732 	.db #0x38	; 56	'8'
      000986 44                     733 	.db #0x44	; 68	'D'
      000987 44                     734 	.db #0x44	; 68	'D'
      000988 44                     735 	.db #0x44	; 68	'D'
      000989 20                     736 	.db #0x20	; 32
      00098A 38                     737 	.db #0x38	; 56	'8'
      00098B 44                     738 	.db #0x44	; 68	'D'
      00098C 44                     739 	.db #0x44	; 68	'D'
      00098D 48                     740 	.db #0x48	; 72	'H'
      00098E 7F                     741 	.db #0x7f	; 127
      00098F 38                     742 	.db #0x38	; 56	'8'
      000990 54                     743 	.db #0x54	; 84	'T'
      000991 54                     744 	.db #0x54	; 84	'T'
      000992 54                     745 	.db #0x54	; 84	'T'
      000993 18                     746 	.db #0x18	; 24
      000994 08                     747 	.db #0x08	; 8
      000995 7E                     748 	.db #0x7e	; 126
      000996 09                     749 	.db #0x09	; 9
      000997 01                     750 	.db #0x01	; 1
      000998 02                     751 	.db #0x02	; 2
      000999 18                     752 	.db #0x18	; 24
      00099A A4                     753 	.db #0xa4	; 164
      00099B A4                     754 	.db #0xa4	; 164
      00099C A4                     755 	.db #0xa4	; 164
      00099D 7C                     756 	.db #0x7c	; 124
      00099E 7F                     757 	.db #0x7f	; 127
      00099F 08                     758 	.db #0x08	; 8
      0009A0 04                     759 	.db #0x04	; 4
      0009A1 04                     760 	.db #0x04	; 4
      0009A2 78                     761 	.db #0x78	; 120	'x'
      0009A3 00                     762 	.db #0x00	; 0
      0009A4 44                     763 	.db #0x44	; 68	'D'
      0009A5 7D                     764 	.db #0x7d	; 125
      0009A6 40                     765 	.db #0x40	; 64
      0009A7 00                     766 	.db #0x00	; 0
      0009A8 40                     767 	.db #0x40	; 64
      0009A9 80                     768 	.db #0x80	; 128
      0009AA 84                     769 	.db #0x84	; 132
      0009AB 7D                     770 	.db #0x7d	; 125
      0009AC 00                     771 	.db #0x00	; 0
      0009AD 7F                     772 	.db #0x7f	; 127
      0009AE 10                     773 	.db #0x10	; 16
      0009AF 28                     774 	.db #0x28	; 40
      0009B0 44                     775 	.db #0x44	; 68	'D'
      0009B1 00                     776 	.db #0x00	; 0
      0009B2 00                     777 	.db #0x00	; 0
      0009B3 41                     778 	.db #0x41	; 65	'A'
      0009B4 7F                     779 	.db #0x7f	; 127
      0009B5 40                     780 	.db #0x40	; 64
      0009B6 00                     781 	.db #0x00	; 0
      0009B7 7C                     782 	.db #0x7c	; 124
      0009B8 04                     783 	.db #0x04	; 4
      0009B9 18                     784 	.db #0x18	; 24
      0009BA 04                     785 	.db #0x04	; 4
      0009BB 78                     786 	.db #0x78	; 120	'x'
      0009BC 7C                     787 	.db #0x7c	; 124
      0009BD 08                     788 	.db #0x08	; 8
      0009BE 04                     789 	.db #0x04	; 4
      0009BF 04                     790 	.db #0x04	; 4
      0009C0 78                     791 	.db #0x78	; 120	'x'
      0009C1 38                     792 	.db #0x38	; 56	'8'
      0009C2 44                     793 	.db #0x44	; 68	'D'
      0009C3 44                     794 	.db #0x44	; 68	'D'
      0009C4 44                     795 	.db #0x44	; 68	'D'
      0009C5 38                     796 	.db #0x38	; 56	'8'
      0009C6 FC                     797 	.db #0xfc	; 252
      0009C7 24                     798 	.db #0x24	; 36
      0009C8 24                     799 	.db #0x24	; 36
      0009C9 24                     800 	.db #0x24	; 36
      0009CA 18                     801 	.db #0x18	; 24
      0009CB 18                     802 	.db #0x18	; 24
      0009CC 24                     803 	.db #0x24	; 36
      0009CD 24                     804 	.db #0x24	; 36
      0009CE 18                     805 	.db #0x18	; 24
      0009CF FC                     806 	.db #0xfc	; 252
      0009D0 7C                     807 	.db #0x7c	; 124
      0009D1 08                     808 	.db #0x08	; 8
      0009D2 04                     809 	.db #0x04	; 4
      0009D3 04                     810 	.db #0x04	; 4
      0009D4 08                     811 	.db #0x08	; 8
      0009D5 48                     812 	.db #0x48	; 72	'H'
      0009D6 54                     813 	.db #0x54	; 84	'T'
      0009D7 54                     814 	.db #0x54	; 84	'T'
      0009D8 54                     815 	.db #0x54	; 84	'T'
      0009D9 20                     816 	.db #0x20	; 32
      0009DA 04                     817 	.db #0x04	; 4
      0009DB 3F                     818 	.db #0x3f	; 63
      0009DC 44                     819 	.db #0x44	; 68	'D'
      0009DD 40                     820 	.db #0x40	; 64
      0009DE 20                     821 	.db #0x20	; 32
      0009DF 3C                     822 	.db #0x3c	; 60
      0009E0 40                     823 	.db #0x40	; 64
      0009E1 40                     824 	.db #0x40	; 64
      0009E2 20                     825 	.db #0x20	; 32
      0009E3 7C                     826 	.db #0x7c	; 124
      0009E4 1C                     827 	.db #0x1c	; 28
      0009E5 20                     828 	.db #0x20	; 32
      0009E6 40                     829 	.db #0x40	; 64
      0009E7 20                     830 	.db #0x20	; 32
      0009E8 1C                     831 	.db #0x1c	; 28
      0009E9 3C                     832 	.db #0x3c	; 60
      0009EA 40                     833 	.db #0x40	; 64
      0009EB 30                     834 	.db #0x30	; 48	'0'
      0009EC 40                     835 	.db #0x40	; 64
      0009ED 3C                     836 	.db #0x3c	; 60
      0009EE 44                     837 	.db #0x44	; 68	'D'
      0009EF 28                     838 	.db #0x28	; 40
      0009F0 10                     839 	.db #0x10	; 16
      0009F1 28                     840 	.db #0x28	; 40
      0009F2 44                     841 	.db #0x44	; 68	'D'
      0009F3 1C                     842 	.db #0x1c	; 28
      0009F4 A0                     843 	.db #0xa0	; 160
      0009F5 A0                     844 	.db #0xa0	; 160
      0009F6 A0                     845 	.db #0xa0	; 160
      0009F7 7C                     846 	.db #0x7c	; 124
      0009F8 44                     847 	.db #0x44	; 68	'D'
      0009F9 64                     848 	.db #0x64	; 100	'd'
      0009FA 54                     849 	.db #0x54	; 84	'T'
      0009FB 4C                     850 	.db #0x4c	; 76	'L'
      0009FC 44                     851 	.db #0x44	; 68	'D'
      0009FD 00                     852 	.db #0x00	; 0
      0009FE 10                     853 	.db #0x10	; 16
      0009FF 7C                     854 	.db #0x7c	; 124
      000A00 82                     855 	.db #0x82	; 130
      000A01 00                     856 	.db #0x00	; 0
      000A02 00                     857 	.db #0x00	; 0
      000A03 00                     858 	.db #0x00	; 0
      000A04 FF                     859 	.db #0xff	; 255
      000A05 00                     860 	.db #0x00	; 0
      000A06 00                     861 	.db #0x00	; 0
      000A07 00                     862 	.db #0x00	; 0
      000A08 82                     863 	.db #0x82	; 130
      000A09 7C                     864 	.db #0x7c	; 124
      000A0A 10                     865 	.db #0x10	; 16
      000A0B 00                     866 	.db #0x00	; 0
      000A0C 00                     867 	.db #0x00	; 0
      000A0D 06                     868 	.db #0x06	; 6
      000A0E 09                     869 	.db #0x09	; 9
      000A0F 09                     870 	.db #0x09	; 9
      000A10 06                     871 	.db #0x06	; 6
                                    872 	.area XINIT   (CODE)
                                    873 	.area CABS    (ABS,CODE)
