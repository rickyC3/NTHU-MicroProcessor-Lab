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
      00000B                         40 _OLED_SetCursor_PARM_2:
      00000B                         41 	.ds 1
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
      000665                        107 _OLED_Init:
                           000007   108 	ar7 = 0x07
                           000006   109 	ar6 = 0x06
                           000005   110 	ar5 = 0x05
                           000004   111 	ar4 = 0x04
                           000003   112 	ar3 = 0x03
                           000002   113 	ar2 = 0x02
                           000001   114 	ar1 = 0x01
                           000000   115 	ar0 = 0x00
                                    116 ;	./src/oled_i2c.c:19: oledSendCommand(0xa8);  //Set MUX Ratio
      000665 75 82 A8         [24]  117 	mov	dpl,#0xa8
      000668 12 07 AB         [24]  118 	lcall	_oledSendCommand
                                    119 ;	./src/oled_i2c.c:20: oledSendCommand(0x3f);  
      00066B 75 82 3F         [24]  120 	mov	dpl,#0x3f
      00066E 12 07 AB         [24]  121 	lcall	_oledSendCommand
                                    122 ;	./src/oled_i2c.c:21: oledSendCommand(0xd3);  //Set Display Offset
      000671 75 82 D3         [24]  123 	mov	dpl,#0xd3
      000674 12 07 AB         [24]  124 	lcall	_oledSendCommand
                                    125 ;	./src/oled_i2c.c:22: oledSendCommand(0x00);  
      000677 75 82 00         [24]  126 	mov	dpl,#0x00
      00067A 12 07 AB         [24]  127 	lcall	_oledSendCommand
                                    128 ;	./src/oled_i2c.c:23: oledSendCommand(0x40);  //Set Display Start Line
      00067D 75 82 40         [24]  129 	mov	dpl,#0x40
      000680 12 07 AB         [24]  130 	lcall	_oledSendCommand
                                    131 ;	./src/oled_i2c.c:24: oledSendCommand(0xa1);  //Set Segment re-map A0h/A1h
      000683 75 82 A1         [24]  132 	mov	dpl,#0xa1
      000686 12 07 AB         [24]  133 	lcall	_oledSendCommand
                                    134 ;	./src/oled_i2c.c:25: oledSendCommand(0xc8);  //Set COM OUTput
      000689 75 82 C8         [24]  135 	mov	dpl,#0xc8
      00068C 12 07 AB         [24]  136 	lcall	_oledSendCommand
                                    137 ;	./src/oled_i2c.c:26: oledSendCommand(0xda); 
      00068F 75 82 DA         [24]  138 	mov	dpl,#0xda
      000692 12 07 AB         [24]  139 	lcall	_oledSendCommand
                                    140 ;	./src/oled_i2c.c:27: oledSendCommand(0x12);
      000695 75 82 12         [24]  141 	mov	dpl,#0x12
      000698 12 07 AB         [24]  142 	lcall	_oledSendCommand
                                    143 ;	./src/oled_i2c.c:28: oledSendCommand(0x81);
      00069B 75 82 81         [24]  144 	mov	dpl,#0x81
      00069E 12 07 AB         [24]  145 	lcall	_oledSendCommand
                                    146 ;	./src/oled_i2c.c:29: oledSendCommand(0x7f);
      0006A1 75 82 7F         [24]  147 	mov	dpl,#0x7f
      0006A4 12 07 AB         [24]  148 	lcall	_oledSendCommand
                                    149 ;	./src/oled_i2c.c:30: oledSendCommand(0xa4);
      0006A7 75 82 A4         [24]  150 	mov	dpl,#0xa4
      0006AA 12 07 AB         [24]  151 	lcall	_oledSendCommand
                                    152 ;	./src/oled_i2c.c:31: oledSendCommand(0xa6);
      0006AD 75 82 A6         [24]  153 	mov	dpl,#0xa6
      0006B0 12 07 AB         [24]  154 	lcall	_oledSendCommand
                                    155 ;	./src/oled_i2c.c:32: oledSendCommand(0xd5);
      0006B3 75 82 D5         [24]  156 	mov	dpl,#0xd5
      0006B6 12 07 AB         [24]  157 	lcall	_oledSendCommand
                                    158 ;	./src/oled_i2c.c:33: oledSendCommand(0x80);
      0006B9 75 82 80         [24]  159 	mov	dpl,#0x80
      0006BC 12 07 AB         [24]  160 	lcall	_oledSendCommand
                                    161 ;	./src/oled_i2c.c:34: oledSendCommand(0x8d);
      0006BF 75 82 8D         [24]  162 	mov	dpl,#0x8d
      0006C2 12 07 AB         [24]  163 	lcall	_oledSendCommand
                                    164 ;	./src/oled_i2c.c:35: oledSendCommand(0x14);
      0006C5 75 82 14         [24]  165 	mov	dpl,#0x14
      0006C8 12 07 AB         [24]  166 	lcall	_oledSendCommand
                                    167 ;	./src/oled_i2c.c:36: oledSendCommand(0xaf);
      0006CB 75 82 AF         [24]  168 	mov	dpl,#0xaf
      0006CE 12 07 AB         [24]  169 	lcall	_oledSendCommand
                                    170 ;	./src/oled_i2c.c:38: OLED_Clear();  // Clear the complete LCD during init 
                                    171 ;	./src/oled_i2c.c:39: }
      0006D1 02 07 50         [24]  172 	ljmp	_OLED_Clear
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
      0006D4                        184 _OLED_DisplayChar:
      0006D4 AF 82            [24]  185 	mov	r7,dpl
                                    186 ;	./src/oled_i2c.c:56: if(ch!='\n') {  /* TODO */ 
      0006D6 BF 0A 01         [24]  187 	cjne	r7,#0x0a,00124$
      0006D9 22               [24]  188 	ret
      0006DA                        189 00124$:
                                    190 ;	./src/oled_i2c.c:57: index = (ch - 0x20);
      0006DA 7E 00            [12]  191 	mov	r6,#0x00
      0006DC EF               [12]  192 	mov	a,r7
      0006DD 24 E0            [12]  193 	add	a,#0xe0
      0006DF F5 0C            [12]  194 	mov	__mulint_PARM_2,a
      0006E1 EE               [12]  195 	mov	a,r6
      0006E2 34 FF            [12]  196 	addc	a,#0xff
      0006E4 F5 0D            [12]  197 	mov	(__mulint_PARM_2 + 1),a
                                    198 ;	./src/oled_i2c.c:58: index = index * 5; // As the lookup table starts from Space(0x20)
      0006E6 90 00 05         [24]  199 	mov	dptr,#0x0005
      0006E9 12 07 FE         [24]  200 	lcall	__mulint
      0006EC AE 82            [24]  201 	mov	r6,dpl
      0006EE AF 83            [24]  202 	mov	r7,dph
                                    203 ;	./src/oled_i2c.c:60: for(i = 0; i < 5; i ++)
      0006F0 7D 00            [12]  204 	mov	r5,#0x00
      0006F2                        205 00104$:
                                    206 ;	./src/oled_i2c.c:61: oledSendData(OledFontTable[index + i]); /* Get the data to be displayed for LookUptable*/
      0006F2 8D 03            [24]  207 	mov	ar3,r5
      0006F4 7C 00            [12]  208 	mov	r4,#0x00
      0006F6 EB               [12]  209 	mov	a,r3
      0006F7 2E               [12]  210 	add	a,r6
      0006F8 FB               [12]  211 	mov	r3,a
      0006F9 EC               [12]  212 	mov	a,r4
      0006FA 3F               [12]  213 	addc	a,r7
      0006FB FC               [12]  214 	mov	r4,a
      0006FC EB               [12]  215 	mov	a,r3
      0006FD 24 8C            [12]  216 	add	a,#_OledFontTable
      0006FF F5 82            [12]  217 	mov	dpl,a
      000701 EC               [12]  218 	mov	a,r4
      000702 34 0A            [12]  219 	addc	a,#(_OledFontTable >> 8)
      000704 F5 83            [12]  220 	mov	dph,a
      000706 E4               [12]  221 	clr	a
      000707 93               [24]  222 	movc	a,@a+dptr
      000708 F5 82            [12]  223 	mov	dpl,a
      00070A C0 07            [24]  224 	push	ar7
      00070C C0 06            [24]  225 	push	ar6
      00070E C0 05            [24]  226 	push	ar5
      000710 12 07 B7         [24]  227 	lcall	_oledSendData
      000713 D0 05            [24]  228 	pop	ar5
      000715 D0 06            [24]  229 	pop	ar6
      000717 D0 07            [24]  230 	pop	ar7
                                    231 ;	./src/oled_i2c.c:60: for(i = 0; i < 5; i ++)
      000719 0D               [12]  232 	inc	r5
      00071A BD 05 00         [24]  233 	cjne	r5,#0x05,00125$
      00071D                        234 00125$:
      00071D 40 D3            [24]  235 	jc	00104$
                                    236 ;	./src/oled_i2c.c:63: oledSendData(0x00); /* Display the data and keep track of cursor */
      00071F 75 82 00         [24]  237 	mov	dpl,#0x00
                                    238 ;	./src/oled_i2c.c:65: }
      000722 02 07 B7         [24]  239 	ljmp	_oledSendData
                                    240 ;------------------------------------------------------------
                                    241 ;Allocation info for local variables in function 'OLED_DisplayString'
                                    242 ;------------------------------------------------------------
                                    243 ;ptr                       Allocated to registers 
                                    244 ;------------------------------------------------------------
                                    245 ;	./src/oled_i2c.c:81: void OLED_DisplayString(uint8_t *ptr)
                                    246 ;	-----------------------------------------
                                    247 ;	 function OLED_DisplayString
                                    248 ;	-----------------------------------------
      000725                        249 _OLED_DisplayString:
      000725 AD 82            [24]  250 	mov	r5,dpl
      000727 AE 83            [24]  251 	mov	r6,dph
      000729 AF F0            [24]  252 	mov	r7,b
                                    253 ;	./src/oled_i2c.c:83: while(*ptr)
      00072B                        254 00101$:
      00072B 8D 82            [24]  255 	mov	dpl,r5
      00072D 8E 83            [24]  256 	mov	dph,r6
      00072F 8F F0            [24]  257 	mov	b,r7
      000731 12 09 4F         [24]  258 	lcall	__gptrget
      000734 FC               [12]  259 	mov	r4,a
      000735 60 18            [24]  260 	jz	00104$
                                    261 ;	./src/oled_i2c.c:84: OLED_DisplayChar(*ptr++);
      000737 8C 82            [24]  262 	mov	dpl,r4
      000739 0D               [12]  263 	inc	r5
      00073A BD 00 01         [24]  264 	cjne	r5,#0x00,00116$
      00073D 0E               [12]  265 	inc	r6
      00073E                        266 00116$:
      00073E C0 07            [24]  267 	push	ar7
      000740 C0 06            [24]  268 	push	ar6
      000742 C0 05            [24]  269 	push	ar5
      000744 12 06 D4         [24]  270 	lcall	_OLED_DisplayChar
      000747 D0 05            [24]  271 	pop	ar5
      000749 D0 06            [24]  272 	pop	ar6
      00074B D0 07            [24]  273 	pop	ar7
      00074D 80 DC            [24]  274 	sjmp	00101$
      00074F                        275 00104$:
                                    276 ;	./src/oled_i2c.c:85: }
      00074F 22               [24]  277 	ret
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
      000750                        288 _OLED_Clear:
                                    289 ;	./src/oled_i2c.c:99: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page ++) {
      000750 7F 00            [12]  290 	mov	r7,#0x00
      000752                        291 00105$:
                                    292 ;	./src/oled_i2c.c:100: OLED_SetCursor(oled_clean_page,0);
      000752 75 0B 00         [24]  293 	mov	_OLED_SetCursor_PARM_2,#0x00
      000755 8F 82            [24]  294 	mov	dpl,r7
      000757 C0 07            [24]  295 	push	ar7
      000759 12 07 7B         [24]  296 	lcall	_OLED_SetCursor
      00075C D0 07            [24]  297 	pop	ar7
                                    298 ;	./src/oled_i2c.c:101: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) {
      00075E 7E 00            [12]  299 	mov	r6,#0x00
      000760                        300 00103$:
                                    301 ;	./src/oled_i2c.c:102: oledSendData(0);
      000760 75 82 00         [24]  302 	mov	dpl,#0x00
      000763 C0 07            [24]  303 	push	ar7
      000765 C0 06            [24]  304 	push	ar6
      000767 12 07 B7         [24]  305 	lcall	_oledSendData
      00076A D0 06            [24]  306 	pop	ar6
      00076C D0 07            [24]  307 	pop	ar7
                                    308 ;	./src/oled_i2c.c:101: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) {
      00076E 0E               [12]  309 	inc	r6
      00076F BE 80 00         [24]  310 	cjne	r6,#0x80,00123$
      000772                        311 00123$:
      000772 40 EC            [24]  312 	jc	00103$
                                    313 ;	./src/oled_i2c.c:99: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page ++) {
      000774 0F               [12]  314 	inc	r7
      000775 BF 08 00         [24]  315 	cjne	r7,#0x08,00125$
      000778                        316 00125$:
      000778 40 D8            [24]  317 	jc	00105$
                                    318 ;	./src/oled_i2c.c:105: }
      00077A 22               [24]  319 	ret
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
      00077B                        330 _OLED_SetCursor:
      00077B AF 82            [24]  331 	mov	r7,dpl
                                    332 ;	./src/oled_i2c.c:124: cursorPosition = cursorPosition + 2;
      00077D AE 0B            [24]  333 	mov	r6,_OLED_SetCursor_PARM_2
      00077F 74 02            [12]  334 	mov	a,#0x02
      000781 2E               [12]  335 	add	a,r6
      000782 F5 0B            [12]  336 	mov	_OLED_SetCursor_PARM_2,a
                                    337 ;	./src/oled_i2c.c:125: oledSendCommand(0x0f&cursorPosition); // Select SEG lower 4 bits
      000784 AE 0B            [24]  338 	mov	r6,_OLED_SetCursor_PARM_2
      000786 74 0F            [12]  339 	mov	a,#0x0f
      000788 5E               [12]  340 	anl	a,r6
      000789 F5 82            [12]  341 	mov	dpl,a
      00078B C0 07            [24]  342 	push	ar7
      00078D C0 06            [24]  343 	push	ar6
      00078F 12 07 AB         [24]  344 	lcall	_oledSendCommand
      000792 D0 06            [24]  345 	pop	ar6
                                    346 ;	./src/oled_i2c.c:126: oledSendCommand(0x10|(cursorPosition>>4)); // Select SEG higher 4 bits
      000794 EE               [12]  347 	mov	a,r6
      000795 C4               [12]  348 	swap	a
      000796 54 0F            [12]  349 	anl	a,#0x0f
      000798 FE               [12]  350 	mov	r6,a
      000799 74 10            [12]  351 	mov	a,#0x10
      00079B 4E               [12]  352 	orl	a,r6
      00079C F5 82            [12]  353 	mov	dpl,a
      00079E 12 07 AB         [24]  354 	lcall	_oledSendCommand
      0007A1 D0 07            [24]  355 	pop	ar7
                                    356 ;	./src/oled_i2c.c:127: oledSendCommand(0xb0|lineNumber); // Select PAGE
      0007A3 74 B0            [12]  357 	mov	a,#0xb0
      0007A5 4F               [12]  358 	orl	a,r7
      0007A6 F5 82            [12]  359 	mov	dpl,a
                                    360 ;	./src/oled_i2c.c:128: }
      0007A8 02 07 AB         [24]  361 	ljmp	_oledSendCommand
                                    362 ;------------------------------------------------------------
                                    363 ;Allocation info for local variables in function 'oledSendCommand'
                                    364 ;------------------------------------------------------------
                                    365 ;cmd                       Allocated to registers 
                                    366 ;------------------------------------------------------------
                                    367 ;	./src/oled_i2c.c:133: void oledSendCommand(uint8_t cmd)
                                    368 ;	-----------------------------------------
                                    369 ;	 function oledSendCommand
                                    370 ;	-----------------------------------------
      0007AB                        371 _oledSendCommand:
      0007AB 85 82 09         [24]  372 	mov	_Single_WriteI2C_PARM_3,dpl
                                    373 ;	./src/oled_i2c.c:135: Single_WriteI2C(OLED_SlaveAddress, SSD1306_COMMAND, cmd);
      0007AE 75 08 00         [24]  374 	mov	_Single_WriteI2C_PARM_2,#0x00
      0007B1 75 82 78         [24]  375 	mov	dpl,#0x78
                                    376 ;	./src/oled_i2c.c:136: }
      0007B4 02 06 09         [24]  377 	ljmp	_Single_WriteI2C
                                    378 ;------------------------------------------------------------
                                    379 ;Allocation info for local variables in function 'oledSendData'
                                    380 ;------------------------------------------------------------
                                    381 ;cmd                       Allocated to registers 
                                    382 ;------------------------------------------------------------
                                    383 ;	./src/oled_i2c.c:138: void oledSendData(uint8_t cmd)
                                    384 ;	-----------------------------------------
                                    385 ;	 function oledSendData
                                    386 ;	-----------------------------------------
      0007B7                        387 _oledSendData:
      0007B7 85 82 09         [24]  388 	mov	_Single_WriteI2C_PARM_3,dpl
                                    389 ;	./src/oled_i2c.c:140: Single_WriteI2C(OLED_SlaveAddress, SSD1306_DATA_CONTINUE, cmd);
      0007BA 75 08 40         [24]  390 	mov	_Single_WriteI2C_PARM_2,#0x40
      0007BD 75 82 78         [24]  391 	mov	dpl,#0x78
                                    392 ;	./src/oled_i2c.c:141: }
      0007C0 02 06 09         [24]  393 	ljmp	_Single_WriteI2C
                                    394 	.area CSEG    (CODE)
                                    395 	.area CONST   (CODE)
      000A8C                        396 _OledFontTable:
      000A8C 00                     397 	.db #0x00	; 0
      000A8D 00                     398 	.db #0x00	; 0
      000A8E 00                     399 	.db #0x00	; 0
      000A8F 00                     400 	.db #0x00	; 0
      000A90 00                     401 	.db #0x00	; 0
      000A91 00                     402 	.db #0x00	; 0
      000A92 00                     403 	.db #0x00	; 0
      000A93 2F                     404 	.db #0x2f	; 47
      000A94 00                     405 	.db #0x00	; 0
      000A95 00                     406 	.db #0x00	; 0
      000A96 00                     407 	.db #0x00	; 0
      000A97 07                     408 	.db #0x07	; 7
      000A98 00                     409 	.db #0x00	; 0
      000A99 07                     410 	.db #0x07	; 7
      000A9A 00                     411 	.db #0x00	; 0
      000A9B 14                     412 	.db #0x14	; 20
      000A9C 7F                     413 	.db #0x7f	; 127
      000A9D 14                     414 	.db #0x14	; 20
      000A9E 7F                     415 	.db #0x7f	; 127
      000A9F 14                     416 	.db #0x14	; 20
      000AA0 24                     417 	.db #0x24	; 36
      000AA1 2A                     418 	.db #0x2a	; 42
      000AA2 7F                     419 	.db #0x7f	; 127
      000AA3 2A                     420 	.db #0x2a	; 42
      000AA4 12                     421 	.db #0x12	; 18
      000AA5 23                     422 	.db #0x23	; 35
      000AA6 13                     423 	.db #0x13	; 19
      000AA7 08                     424 	.db #0x08	; 8
      000AA8 64                     425 	.db #0x64	; 100	'd'
      000AA9 62                     426 	.db #0x62	; 98	'b'
      000AAA 36                     427 	.db #0x36	; 54	'6'
      000AAB 49                     428 	.db #0x49	; 73	'I'
      000AAC 55                     429 	.db #0x55	; 85	'U'
      000AAD 22                     430 	.db #0x22	; 34
      000AAE 50                     431 	.db #0x50	; 80	'P'
      000AAF 00                     432 	.db #0x00	; 0
      000AB0 05                     433 	.db #0x05	; 5
      000AB1 03                     434 	.db #0x03	; 3
      000AB2 00                     435 	.db #0x00	; 0
      000AB3 00                     436 	.db #0x00	; 0
      000AB4 00                     437 	.db #0x00	; 0
      000AB5 1C                     438 	.db #0x1c	; 28
      000AB6 22                     439 	.db #0x22	; 34
      000AB7 41                     440 	.db #0x41	; 65	'A'
      000AB8 00                     441 	.db #0x00	; 0
      000AB9 00                     442 	.db #0x00	; 0
      000ABA 41                     443 	.db #0x41	; 65	'A'
      000ABB 22                     444 	.db #0x22	; 34
      000ABC 1C                     445 	.db #0x1c	; 28
      000ABD 00                     446 	.db #0x00	; 0
      000ABE 14                     447 	.db #0x14	; 20
      000ABF 08                     448 	.db #0x08	; 8
      000AC0 3E                     449 	.db #0x3e	; 62
      000AC1 08                     450 	.db #0x08	; 8
      000AC2 14                     451 	.db #0x14	; 20
      000AC3 08                     452 	.db #0x08	; 8
      000AC4 08                     453 	.db #0x08	; 8
      000AC5 3E                     454 	.db #0x3e	; 62
      000AC6 08                     455 	.db #0x08	; 8
      000AC7 08                     456 	.db #0x08	; 8
      000AC8 00                     457 	.db #0x00	; 0
      000AC9 00                     458 	.db #0x00	; 0
      000ACA A0                     459 	.db #0xa0	; 160
      000ACB 60                     460 	.db #0x60	; 96
      000ACC 00                     461 	.db #0x00	; 0
      000ACD 08                     462 	.db #0x08	; 8
      000ACE 08                     463 	.db #0x08	; 8
      000ACF 08                     464 	.db #0x08	; 8
      000AD0 08                     465 	.db #0x08	; 8
      000AD1 08                     466 	.db #0x08	; 8
      000AD2 00                     467 	.db #0x00	; 0
      000AD3 60                     468 	.db #0x60	; 96
      000AD4 60                     469 	.db #0x60	; 96
      000AD5 00                     470 	.db #0x00	; 0
      000AD6 00                     471 	.db #0x00	; 0
      000AD7 20                     472 	.db #0x20	; 32
      000AD8 10                     473 	.db #0x10	; 16
      000AD9 08                     474 	.db #0x08	; 8
      000ADA 04                     475 	.db #0x04	; 4
      000ADB 02                     476 	.db #0x02	; 2
      000ADC 3E                     477 	.db #0x3e	; 62
      000ADD 51                     478 	.db #0x51	; 81	'Q'
      000ADE 49                     479 	.db #0x49	; 73	'I'
      000ADF 45                     480 	.db #0x45	; 69	'E'
      000AE0 3E                     481 	.db #0x3e	; 62
      000AE1 00                     482 	.db #0x00	; 0
      000AE2 42                     483 	.db #0x42	; 66	'B'
      000AE3 7F                     484 	.db #0x7f	; 127
      000AE4 40                     485 	.db #0x40	; 64
      000AE5 00                     486 	.db #0x00	; 0
      000AE6 42                     487 	.db #0x42	; 66	'B'
      000AE7 61                     488 	.db #0x61	; 97	'a'
      000AE8 51                     489 	.db #0x51	; 81	'Q'
      000AE9 49                     490 	.db #0x49	; 73	'I'
      000AEA 46                     491 	.db #0x46	; 70	'F'
      000AEB 21                     492 	.db #0x21	; 33
      000AEC 41                     493 	.db #0x41	; 65	'A'
      000AED 45                     494 	.db #0x45	; 69	'E'
      000AEE 4B                     495 	.db #0x4b	; 75	'K'
      000AEF 31                     496 	.db #0x31	; 49	'1'
      000AF0 18                     497 	.db #0x18	; 24
      000AF1 14                     498 	.db #0x14	; 20
      000AF2 12                     499 	.db #0x12	; 18
      000AF3 7F                     500 	.db #0x7f	; 127
      000AF4 10                     501 	.db #0x10	; 16
      000AF5 27                     502 	.db #0x27	; 39
      000AF6 45                     503 	.db #0x45	; 69	'E'
      000AF7 45                     504 	.db #0x45	; 69	'E'
      000AF8 45                     505 	.db #0x45	; 69	'E'
      000AF9 39                     506 	.db #0x39	; 57	'9'
      000AFA 3C                     507 	.db #0x3c	; 60
      000AFB 4A                     508 	.db #0x4a	; 74	'J'
      000AFC 49                     509 	.db #0x49	; 73	'I'
      000AFD 49                     510 	.db #0x49	; 73	'I'
      000AFE 30                     511 	.db #0x30	; 48	'0'
      000AFF 01                     512 	.db #0x01	; 1
      000B00 71                     513 	.db #0x71	; 113	'q'
      000B01 09                     514 	.db #0x09	; 9
      000B02 05                     515 	.db #0x05	; 5
      000B03 03                     516 	.db #0x03	; 3
      000B04 36                     517 	.db #0x36	; 54	'6'
      000B05 49                     518 	.db #0x49	; 73	'I'
      000B06 49                     519 	.db #0x49	; 73	'I'
      000B07 49                     520 	.db #0x49	; 73	'I'
      000B08 36                     521 	.db #0x36	; 54	'6'
      000B09 06                     522 	.db #0x06	; 6
      000B0A 49                     523 	.db #0x49	; 73	'I'
      000B0B 49                     524 	.db #0x49	; 73	'I'
      000B0C 29                     525 	.db #0x29	; 41
      000B0D 1E                     526 	.db #0x1e	; 30
      000B0E 00                     527 	.db #0x00	; 0
      000B0F 36                     528 	.db #0x36	; 54	'6'
      000B10 36                     529 	.db #0x36	; 54	'6'
      000B11 00                     530 	.db #0x00	; 0
      000B12 00                     531 	.db #0x00	; 0
      000B13 00                     532 	.db #0x00	; 0
      000B14 56                     533 	.db #0x56	; 86	'V'
      000B15 36                     534 	.db #0x36	; 54	'6'
      000B16 00                     535 	.db #0x00	; 0
      000B17 00                     536 	.db #0x00	; 0
      000B18 08                     537 	.db #0x08	; 8
      000B19 14                     538 	.db #0x14	; 20
      000B1A 22                     539 	.db #0x22	; 34
      000B1B 41                     540 	.db #0x41	; 65	'A'
      000B1C 00                     541 	.db #0x00	; 0
      000B1D 14                     542 	.db #0x14	; 20
      000B1E 14                     543 	.db #0x14	; 20
      000B1F 14                     544 	.db #0x14	; 20
      000B20 14                     545 	.db #0x14	; 20
      000B21 14                     546 	.db #0x14	; 20
      000B22 00                     547 	.db #0x00	; 0
      000B23 41                     548 	.db #0x41	; 65	'A'
      000B24 22                     549 	.db #0x22	; 34
      000B25 14                     550 	.db #0x14	; 20
      000B26 08                     551 	.db #0x08	; 8
      000B27 02                     552 	.db #0x02	; 2
      000B28 01                     553 	.db #0x01	; 1
      000B29 51                     554 	.db #0x51	; 81	'Q'
      000B2A 09                     555 	.db #0x09	; 9
      000B2B 06                     556 	.db #0x06	; 6
      000B2C 32                     557 	.db #0x32	; 50	'2'
      000B2D 49                     558 	.db #0x49	; 73	'I'
      000B2E 59                     559 	.db #0x59	; 89	'Y'
      000B2F 51                     560 	.db #0x51	; 81	'Q'
      000B30 3E                     561 	.db #0x3e	; 62
      000B31 7C                     562 	.db #0x7c	; 124
      000B32 12                     563 	.db #0x12	; 18
      000B33 11                     564 	.db #0x11	; 17
      000B34 12                     565 	.db #0x12	; 18
      000B35 7C                     566 	.db #0x7c	; 124
      000B36 7F                     567 	.db #0x7f	; 127
      000B37 49                     568 	.db #0x49	; 73	'I'
      000B38 49                     569 	.db #0x49	; 73	'I'
      000B39 49                     570 	.db #0x49	; 73	'I'
      000B3A 36                     571 	.db #0x36	; 54	'6'
      000B3B 3E                     572 	.db #0x3e	; 62
      000B3C 41                     573 	.db #0x41	; 65	'A'
      000B3D 41                     574 	.db #0x41	; 65	'A'
      000B3E 41                     575 	.db #0x41	; 65	'A'
      000B3F 22                     576 	.db #0x22	; 34
      000B40 7F                     577 	.db #0x7f	; 127
      000B41 41                     578 	.db #0x41	; 65	'A'
      000B42 41                     579 	.db #0x41	; 65	'A'
      000B43 22                     580 	.db #0x22	; 34
      000B44 1C                     581 	.db #0x1c	; 28
      000B45 7F                     582 	.db #0x7f	; 127
      000B46 49                     583 	.db #0x49	; 73	'I'
      000B47 49                     584 	.db #0x49	; 73	'I'
      000B48 49                     585 	.db #0x49	; 73	'I'
      000B49 41                     586 	.db #0x41	; 65	'A'
      000B4A 7F                     587 	.db #0x7f	; 127
      000B4B 09                     588 	.db #0x09	; 9
      000B4C 09                     589 	.db #0x09	; 9
      000B4D 09                     590 	.db #0x09	; 9
      000B4E 01                     591 	.db #0x01	; 1
      000B4F 3E                     592 	.db #0x3e	; 62
      000B50 41                     593 	.db #0x41	; 65	'A'
      000B51 49                     594 	.db #0x49	; 73	'I'
      000B52 49                     595 	.db #0x49	; 73	'I'
      000B53 7A                     596 	.db #0x7a	; 122	'z'
      000B54 7F                     597 	.db #0x7f	; 127
      000B55 08                     598 	.db #0x08	; 8
      000B56 08                     599 	.db #0x08	; 8
      000B57 08                     600 	.db #0x08	; 8
      000B58 7F                     601 	.db #0x7f	; 127
      000B59 00                     602 	.db #0x00	; 0
      000B5A 41                     603 	.db #0x41	; 65	'A'
      000B5B 7F                     604 	.db #0x7f	; 127
      000B5C 41                     605 	.db #0x41	; 65	'A'
      000B5D 00                     606 	.db #0x00	; 0
      000B5E 20                     607 	.db #0x20	; 32
      000B5F 40                     608 	.db #0x40	; 64
      000B60 41                     609 	.db #0x41	; 65	'A'
      000B61 3F                     610 	.db #0x3f	; 63
      000B62 01                     611 	.db #0x01	; 1
      000B63 7F                     612 	.db #0x7f	; 127
      000B64 08                     613 	.db #0x08	; 8
      000B65 14                     614 	.db #0x14	; 20
      000B66 22                     615 	.db #0x22	; 34
      000B67 41                     616 	.db #0x41	; 65	'A'
      000B68 7F                     617 	.db #0x7f	; 127
      000B69 40                     618 	.db #0x40	; 64
      000B6A 40                     619 	.db #0x40	; 64
      000B6B 40                     620 	.db #0x40	; 64
      000B6C 40                     621 	.db #0x40	; 64
      000B6D 7F                     622 	.db #0x7f	; 127
      000B6E 02                     623 	.db #0x02	; 2
      000B6F 0C                     624 	.db #0x0c	; 12
      000B70 02                     625 	.db #0x02	; 2
      000B71 7F                     626 	.db #0x7f	; 127
      000B72 7F                     627 	.db #0x7f	; 127
      000B73 04                     628 	.db #0x04	; 4
      000B74 08                     629 	.db #0x08	; 8
      000B75 10                     630 	.db #0x10	; 16
      000B76 7F                     631 	.db #0x7f	; 127
      000B77 3E                     632 	.db #0x3e	; 62
      000B78 41                     633 	.db #0x41	; 65	'A'
      000B79 41                     634 	.db #0x41	; 65	'A'
      000B7A 41                     635 	.db #0x41	; 65	'A'
      000B7B 3E                     636 	.db #0x3e	; 62
      000B7C 7F                     637 	.db #0x7f	; 127
      000B7D 09                     638 	.db #0x09	; 9
      000B7E 09                     639 	.db #0x09	; 9
      000B7F 09                     640 	.db #0x09	; 9
      000B80 06                     641 	.db #0x06	; 6
      000B81 3E                     642 	.db #0x3e	; 62
      000B82 41                     643 	.db #0x41	; 65	'A'
      000B83 51                     644 	.db #0x51	; 81	'Q'
      000B84 21                     645 	.db #0x21	; 33
      000B85 5E                     646 	.db #0x5e	; 94
      000B86 7F                     647 	.db #0x7f	; 127
      000B87 09                     648 	.db #0x09	; 9
      000B88 19                     649 	.db #0x19	; 25
      000B89 29                     650 	.db #0x29	; 41
      000B8A 46                     651 	.db #0x46	; 70	'F'
      000B8B 46                     652 	.db #0x46	; 70	'F'
      000B8C 49                     653 	.db #0x49	; 73	'I'
      000B8D 49                     654 	.db #0x49	; 73	'I'
      000B8E 49                     655 	.db #0x49	; 73	'I'
      000B8F 31                     656 	.db #0x31	; 49	'1'
      000B90 01                     657 	.db #0x01	; 1
      000B91 01                     658 	.db #0x01	; 1
      000B92 7F                     659 	.db #0x7f	; 127
      000B93 01                     660 	.db #0x01	; 1
      000B94 01                     661 	.db #0x01	; 1
      000B95 3F                     662 	.db #0x3f	; 63
      000B96 40                     663 	.db #0x40	; 64
      000B97 40                     664 	.db #0x40	; 64
      000B98 40                     665 	.db #0x40	; 64
      000B99 3F                     666 	.db #0x3f	; 63
      000B9A 1F                     667 	.db #0x1f	; 31
      000B9B 20                     668 	.db #0x20	; 32
      000B9C 40                     669 	.db #0x40	; 64
      000B9D 20                     670 	.db #0x20	; 32
      000B9E 1F                     671 	.db #0x1f	; 31
      000B9F 3F                     672 	.db #0x3f	; 63
      000BA0 40                     673 	.db #0x40	; 64
      000BA1 38                     674 	.db #0x38	; 56	'8'
      000BA2 40                     675 	.db #0x40	; 64
      000BA3 3F                     676 	.db #0x3f	; 63
      000BA4 63                     677 	.db #0x63	; 99	'c'
      000BA5 14                     678 	.db #0x14	; 20
      000BA6 08                     679 	.db #0x08	; 8
      000BA7 14                     680 	.db #0x14	; 20
      000BA8 63                     681 	.db #0x63	; 99	'c'
      000BA9 07                     682 	.db #0x07	; 7
      000BAA 08                     683 	.db #0x08	; 8
      000BAB 70                     684 	.db #0x70	; 112	'p'
      000BAC 08                     685 	.db #0x08	; 8
      000BAD 07                     686 	.db #0x07	; 7
      000BAE 61                     687 	.db #0x61	; 97	'a'
      000BAF 51                     688 	.db #0x51	; 81	'Q'
      000BB0 49                     689 	.db #0x49	; 73	'I'
      000BB1 45                     690 	.db #0x45	; 69	'E'
      000BB2 43                     691 	.db #0x43	; 67	'C'
      000BB3 00                     692 	.db #0x00	; 0
      000BB4 7F                     693 	.db #0x7f	; 127
      000BB5 41                     694 	.db #0x41	; 65	'A'
      000BB6 41                     695 	.db #0x41	; 65	'A'
      000BB7 00                     696 	.db #0x00	; 0
      000BB8 55                     697 	.db #0x55	; 85	'U'
      000BB9 AA                     698 	.db #0xaa	; 170
      000BBA 55                     699 	.db #0x55	; 85	'U'
      000BBB AA                     700 	.db #0xaa	; 170
      000BBC 55                     701 	.db #0x55	; 85	'U'
      000BBD 00                     702 	.db #0x00	; 0
      000BBE 41                     703 	.db #0x41	; 65	'A'
      000BBF 41                     704 	.db #0x41	; 65	'A'
      000BC0 7F                     705 	.db #0x7f	; 127
      000BC1 00                     706 	.db #0x00	; 0
      000BC2 04                     707 	.db #0x04	; 4
      000BC3 02                     708 	.db #0x02	; 2
      000BC4 01                     709 	.db #0x01	; 1
      000BC5 02                     710 	.db #0x02	; 2
      000BC6 04                     711 	.db #0x04	; 4
      000BC7 40                     712 	.db #0x40	; 64
      000BC8 40                     713 	.db #0x40	; 64
      000BC9 40                     714 	.db #0x40	; 64
      000BCA 40                     715 	.db #0x40	; 64
      000BCB 40                     716 	.db #0x40	; 64
      000BCC 00                     717 	.db #0x00	; 0
      000BCD 03                     718 	.db #0x03	; 3
      000BCE 05                     719 	.db #0x05	; 5
      000BCF 00                     720 	.db #0x00	; 0
      000BD0 00                     721 	.db #0x00	; 0
      000BD1 20                     722 	.db #0x20	; 32
      000BD2 54                     723 	.db #0x54	; 84	'T'
      000BD3 54                     724 	.db #0x54	; 84	'T'
      000BD4 54                     725 	.db #0x54	; 84	'T'
      000BD5 78                     726 	.db #0x78	; 120	'x'
      000BD6 7F                     727 	.db #0x7f	; 127
      000BD7 48                     728 	.db #0x48	; 72	'H'
      000BD8 44                     729 	.db #0x44	; 68	'D'
      000BD9 44                     730 	.db #0x44	; 68	'D'
      000BDA 38                     731 	.db #0x38	; 56	'8'
      000BDB 38                     732 	.db #0x38	; 56	'8'
      000BDC 44                     733 	.db #0x44	; 68	'D'
      000BDD 44                     734 	.db #0x44	; 68	'D'
      000BDE 44                     735 	.db #0x44	; 68	'D'
      000BDF 20                     736 	.db #0x20	; 32
      000BE0 38                     737 	.db #0x38	; 56	'8'
      000BE1 44                     738 	.db #0x44	; 68	'D'
      000BE2 44                     739 	.db #0x44	; 68	'D'
      000BE3 48                     740 	.db #0x48	; 72	'H'
      000BE4 7F                     741 	.db #0x7f	; 127
      000BE5 38                     742 	.db #0x38	; 56	'8'
      000BE6 54                     743 	.db #0x54	; 84	'T'
      000BE7 54                     744 	.db #0x54	; 84	'T'
      000BE8 54                     745 	.db #0x54	; 84	'T'
      000BE9 18                     746 	.db #0x18	; 24
      000BEA 08                     747 	.db #0x08	; 8
      000BEB 7E                     748 	.db #0x7e	; 126
      000BEC 09                     749 	.db #0x09	; 9
      000BED 01                     750 	.db #0x01	; 1
      000BEE 02                     751 	.db #0x02	; 2
      000BEF 18                     752 	.db #0x18	; 24
      000BF0 A4                     753 	.db #0xa4	; 164
      000BF1 A4                     754 	.db #0xa4	; 164
      000BF2 A4                     755 	.db #0xa4	; 164
      000BF3 7C                     756 	.db #0x7c	; 124
      000BF4 7F                     757 	.db #0x7f	; 127
      000BF5 08                     758 	.db #0x08	; 8
      000BF6 04                     759 	.db #0x04	; 4
      000BF7 04                     760 	.db #0x04	; 4
      000BF8 78                     761 	.db #0x78	; 120	'x'
      000BF9 00                     762 	.db #0x00	; 0
      000BFA 44                     763 	.db #0x44	; 68	'D'
      000BFB 7D                     764 	.db #0x7d	; 125
      000BFC 40                     765 	.db #0x40	; 64
      000BFD 00                     766 	.db #0x00	; 0
      000BFE 40                     767 	.db #0x40	; 64
      000BFF 80                     768 	.db #0x80	; 128
      000C00 84                     769 	.db #0x84	; 132
      000C01 7D                     770 	.db #0x7d	; 125
      000C02 00                     771 	.db #0x00	; 0
      000C03 7F                     772 	.db #0x7f	; 127
      000C04 10                     773 	.db #0x10	; 16
      000C05 28                     774 	.db #0x28	; 40
      000C06 44                     775 	.db #0x44	; 68	'D'
      000C07 00                     776 	.db #0x00	; 0
      000C08 00                     777 	.db #0x00	; 0
      000C09 41                     778 	.db #0x41	; 65	'A'
      000C0A 7F                     779 	.db #0x7f	; 127
      000C0B 40                     780 	.db #0x40	; 64
      000C0C 00                     781 	.db #0x00	; 0
      000C0D 7C                     782 	.db #0x7c	; 124
      000C0E 04                     783 	.db #0x04	; 4
      000C0F 18                     784 	.db #0x18	; 24
      000C10 04                     785 	.db #0x04	; 4
      000C11 78                     786 	.db #0x78	; 120	'x'
      000C12 7C                     787 	.db #0x7c	; 124
      000C13 08                     788 	.db #0x08	; 8
      000C14 04                     789 	.db #0x04	; 4
      000C15 04                     790 	.db #0x04	; 4
      000C16 78                     791 	.db #0x78	; 120	'x'
      000C17 38                     792 	.db #0x38	; 56	'8'
      000C18 44                     793 	.db #0x44	; 68	'D'
      000C19 44                     794 	.db #0x44	; 68	'D'
      000C1A 44                     795 	.db #0x44	; 68	'D'
      000C1B 38                     796 	.db #0x38	; 56	'8'
      000C1C FC                     797 	.db #0xfc	; 252
      000C1D 24                     798 	.db #0x24	; 36
      000C1E 24                     799 	.db #0x24	; 36
      000C1F 24                     800 	.db #0x24	; 36
      000C20 18                     801 	.db #0x18	; 24
      000C21 18                     802 	.db #0x18	; 24
      000C22 24                     803 	.db #0x24	; 36
      000C23 24                     804 	.db #0x24	; 36
      000C24 18                     805 	.db #0x18	; 24
      000C25 FC                     806 	.db #0xfc	; 252
      000C26 7C                     807 	.db #0x7c	; 124
      000C27 08                     808 	.db #0x08	; 8
      000C28 04                     809 	.db #0x04	; 4
      000C29 04                     810 	.db #0x04	; 4
      000C2A 08                     811 	.db #0x08	; 8
      000C2B 48                     812 	.db #0x48	; 72	'H'
      000C2C 54                     813 	.db #0x54	; 84	'T'
      000C2D 54                     814 	.db #0x54	; 84	'T'
      000C2E 54                     815 	.db #0x54	; 84	'T'
      000C2F 20                     816 	.db #0x20	; 32
      000C30 04                     817 	.db #0x04	; 4
      000C31 3F                     818 	.db #0x3f	; 63
      000C32 44                     819 	.db #0x44	; 68	'D'
      000C33 40                     820 	.db #0x40	; 64
      000C34 20                     821 	.db #0x20	; 32
      000C35 3C                     822 	.db #0x3c	; 60
      000C36 40                     823 	.db #0x40	; 64
      000C37 40                     824 	.db #0x40	; 64
      000C38 20                     825 	.db #0x20	; 32
      000C39 7C                     826 	.db #0x7c	; 124
      000C3A 1C                     827 	.db #0x1c	; 28
      000C3B 20                     828 	.db #0x20	; 32
      000C3C 40                     829 	.db #0x40	; 64
      000C3D 20                     830 	.db #0x20	; 32
      000C3E 1C                     831 	.db #0x1c	; 28
      000C3F 3C                     832 	.db #0x3c	; 60
      000C40 40                     833 	.db #0x40	; 64
      000C41 30                     834 	.db #0x30	; 48	'0'
      000C42 40                     835 	.db #0x40	; 64
      000C43 3C                     836 	.db #0x3c	; 60
      000C44 44                     837 	.db #0x44	; 68	'D'
      000C45 28                     838 	.db #0x28	; 40
      000C46 10                     839 	.db #0x10	; 16
      000C47 28                     840 	.db #0x28	; 40
      000C48 44                     841 	.db #0x44	; 68	'D'
      000C49 1C                     842 	.db #0x1c	; 28
      000C4A A0                     843 	.db #0xa0	; 160
      000C4B A0                     844 	.db #0xa0	; 160
      000C4C A0                     845 	.db #0xa0	; 160
      000C4D 7C                     846 	.db #0x7c	; 124
      000C4E 44                     847 	.db #0x44	; 68	'D'
      000C4F 64                     848 	.db #0x64	; 100	'd'
      000C50 54                     849 	.db #0x54	; 84	'T'
      000C51 4C                     850 	.db #0x4c	; 76	'L'
      000C52 44                     851 	.db #0x44	; 68	'D'
      000C53 00                     852 	.db #0x00	; 0
      000C54 10                     853 	.db #0x10	; 16
      000C55 7C                     854 	.db #0x7c	; 124
      000C56 82                     855 	.db #0x82	; 130
      000C57 00                     856 	.db #0x00	; 0
      000C58 00                     857 	.db #0x00	; 0
      000C59 00                     858 	.db #0x00	; 0
      000C5A FF                     859 	.db #0xff	; 255
      000C5B 00                     860 	.db #0x00	; 0
      000C5C 00                     861 	.db #0x00	; 0
      000C5D 00                     862 	.db #0x00	; 0
      000C5E 82                     863 	.db #0x82	; 130
      000C5F 7C                     864 	.db #0x7c	; 124
      000C60 10                     865 	.db #0x10	; 16
      000C61 00                     866 	.db #0x00	; 0
      000C62 00                     867 	.db #0x00	; 0
      000C63 06                     868 	.db #0x06	; 6
      000C64 09                     869 	.db #0x09	; 9
      000C65 09                     870 	.db #0x09	; 9
      000C66 06                     871 	.db #0x06	; 6
                                    872 	.area XINIT   (CODE)
                                    873 	.area CABS    (ABS,CODE)
