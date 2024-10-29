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
      00001D                         40 _OLED_SetCursor_PARM_2:
      00001D                         41 	.ds 1
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
      000863                        107 _OLED_Init:
                           000007   108 	ar7 = 0x07
                           000006   109 	ar6 = 0x06
                           000005   110 	ar5 = 0x05
                           000004   111 	ar4 = 0x04
                           000003   112 	ar3 = 0x03
                           000002   113 	ar2 = 0x02
                           000001   114 	ar1 = 0x01
                           000000   115 	ar0 = 0x00
                                    116 ;	./src/oled_i2c.c:19: oledSendCommand(0xa8);  //Set MUX Ratio
      000863 75 82 A8         [24]  117 	mov	dpl,#0xa8
      000866 12 09 A9         [24]  118 	lcall	_oledSendCommand
                                    119 ;	./src/oled_i2c.c:20: oledSendCommand(0x3f);  
      000869 75 82 3F         [24]  120 	mov	dpl,#0x3f
      00086C 12 09 A9         [24]  121 	lcall	_oledSendCommand
                                    122 ;	./src/oled_i2c.c:21: oledSendCommand(0xd3);  //Set Display Offset
      00086F 75 82 D3         [24]  123 	mov	dpl,#0xd3
      000872 12 09 A9         [24]  124 	lcall	_oledSendCommand
                                    125 ;	./src/oled_i2c.c:22: oledSendCommand(0x00);  
      000875 75 82 00         [24]  126 	mov	dpl,#0x00
      000878 12 09 A9         [24]  127 	lcall	_oledSendCommand
                                    128 ;	./src/oled_i2c.c:23: oledSendCommand(0x40);  //Set Display Start Line
      00087B 75 82 40         [24]  129 	mov	dpl,#0x40
      00087E 12 09 A9         [24]  130 	lcall	_oledSendCommand
                                    131 ;	./src/oled_i2c.c:24: oledSendCommand(0xa1);  //Set Segment re-map A0h/A1h
      000881 75 82 A1         [24]  132 	mov	dpl,#0xa1
      000884 12 09 A9         [24]  133 	lcall	_oledSendCommand
                                    134 ;	./src/oled_i2c.c:25: oledSendCommand(0xc8);  //Set COM OUTput
      000887 75 82 C8         [24]  135 	mov	dpl,#0xc8
      00088A 12 09 A9         [24]  136 	lcall	_oledSendCommand
                                    137 ;	./src/oled_i2c.c:26: oledSendCommand(0xda); 
      00088D 75 82 DA         [24]  138 	mov	dpl,#0xda
      000890 12 09 A9         [24]  139 	lcall	_oledSendCommand
                                    140 ;	./src/oled_i2c.c:27: oledSendCommand(0x12);
      000893 75 82 12         [24]  141 	mov	dpl,#0x12
      000896 12 09 A9         [24]  142 	lcall	_oledSendCommand
                                    143 ;	./src/oled_i2c.c:28: oledSendCommand(0x81);
      000899 75 82 81         [24]  144 	mov	dpl,#0x81
      00089C 12 09 A9         [24]  145 	lcall	_oledSendCommand
                                    146 ;	./src/oled_i2c.c:29: oledSendCommand(0x7f);
      00089F 75 82 7F         [24]  147 	mov	dpl,#0x7f
      0008A2 12 09 A9         [24]  148 	lcall	_oledSendCommand
                                    149 ;	./src/oled_i2c.c:30: oledSendCommand(0xa4);
      0008A5 75 82 A4         [24]  150 	mov	dpl,#0xa4
      0008A8 12 09 A9         [24]  151 	lcall	_oledSendCommand
                                    152 ;	./src/oled_i2c.c:31: oledSendCommand(0xa6);
      0008AB 75 82 A6         [24]  153 	mov	dpl,#0xa6
      0008AE 12 09 A9         [24]  154 	lcall	_oledSendCommand
                                    155 ;	./src/oled_i2c.c:32: oledSendCommand(0xd5);
      0008B1 75 82 D5         [24]  156 	mov	dpl,#0xd5
      0008B4 12 09 A9         [24]  157 	lcall	_oledSendCommand
                                    158 ;	./src/oled_i2c.c:33: oledSendCommand(0x80);
      0008B7 75 82 80         [24]  159 	mov	dpl,#0x80
      0008BA 12 09 A9         [24]  160 	lcall	_oledSendCommand
                                    161 ;	./src/oled_i2c.c:34: oledSendCommand(0x8d);
      0008BD 75 82 8D         [24]  162 	mov	dpl,#0x8d
      0008C0 12 09 A9         [24]  163 	lcall	_oledSendCommand
                                    164 ;	./src/oled_i2c.c:35: oledSendCommand(0x14);
      0008C3 75 82 14         [24]  165 	mov	dpl,#0x14
      0008C6 12 09 A9         [24]  166 	lcall	_oledSendCommand
                                    167 ;	./src/oled_i2c.c:36: oledSendCommand(0xaf);
      0008C9 75 82 AF         [24]  168 	mov	dpl,#0xaf
      0008CC 12 09 A9         [24]  169 	lcall	_oledSendCommand
                                    170 ;	./src/oled_i2c.c:38: OLED_Clear();  // Clear the complete LCD during init 
                                    171 ;	./src/oled_i2c.c:39: }
      0008CF 02 09 4E         [24]  172 	ljmp	_OLED_Clear
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
      0008D2                        184 _OLED_DisplayChar:
      0008D2 AF 82            [24]  185 	mov	r7,dpl
                                    186 ;	./src/oled_i2c.c:56: if(ch!='\n') {  /* TODO */ 
      0008D4 BF 0A 01         [24]  187 	cjne	r7,#0x0a,00124$
      0008D7 22               [24]  188 	ret
      0008D8                        189 00124$:
                                    190 ;	./src/oled_i2c.c:57: index = (ch - 0x20);
      0008D8 7E 00            [12]  191 	mov	r6,#0x00
      0008DA EF               [12]  192 	mov	a,r7
      0008DB 24 E0            [12]  193 	add	a,#0xe0
      0008DD F5 1E            [12]  194 	mov	__mulint_PARM_2,a
      0008DF EE               [12]  195 	mov	a,r6
      0008E0 34 FF            [12]  196 	addc	a,#0xff
      0008E2 F5 1F            [12]  197 	mov	(__mulint_PARM_2 + 1),a
                                    198 ;	./src/oled_i2c.c:58: index = index * 5; // As the lookup table starts from Space(0x20)
      0008E4 90 00 05         [24]  199 	mov	dptr,#0x0005
      0008E7 12 0A B7         [24]  200 	lcall	__mulint
      0008EA AE 82            [24]  201 	mov	r6,dpl
      0008EC AF 83            [24]  202 	mov	r7,dph
                                    203 ;	./src/oled_i2c.c:60: for(i = 0; i < 5; i ++)
      0008EE 7D 00            [12]  204 	mov	r5,#0x00
      0008F0                        205 00104$:
                                    206 ;	./src/oled_i2c.c:61: oledSendData(OledFontTable[index + i]); /* Get the data to be displayed for LookUptable*/
      0008F0 8D 03            [24]  207 	mov	ar3,r5
      0008F2 7C 00            [12]  208 	mov	r4,#0x00
      0008F4 EB               [12]  209 	mov	a,r3
      0008F5 2E               [12]  210 	add	a,r6
      0008F6 FB               [12]  211 	mov	r3,a
      0008F7 EC               [12]  212 	mov	a,r4
      0008F8 3F               [12]  213 	addc	a,r7
      0008F9 FC               [12]  214 	mov	r4,a
      0008FA EB               [12]  215 	mov	a,r3
      0008FB 24 F4            [12]  216 	add	a,#_OledFontTable
      0008FD F5 82            [12]  217 	mov	dpl,a
      0008FF EC               [12]  218 	mov	a,r4
      000900 34 0B            [12]  219 	addc	a,#(_OledFontTable >> 8)
      000902 F5 83            [12]  220 	mov	dph,a
      000904 E4               [12]  221 	clr	a
      000905 93               [24]  222 	movc	a,@a+dptr
      000906 F5 82            [12]  223 	mov	dpl,a
      000908 C0 07            [24]  224 	push	ar7
      00090A C0 06            [24]  225 	push	ar6
      00090C C0 05            [24]  226 	push	ar5
      00090E 12 09 B5         [24]  227 	lcall	_oledSendData
      000911 D0 05            [24]  228 	pop	ar5
      000913 D0 06            [24]  229 	pop	ar6
      000915 D0 07            [24]  230 	pop	ar7
                                    231 ;	./src/oled_i2c.c:60: for(i = 0; i < 5; i ++)
      000917 0D               [12]  232 	inc	r5
      000918 BD 05 00         [24]  233 	cjne	r5,#0x05,00125$
      00091B                        234 00125$:
      00091B 40 D3            [24]  235 	jc	00104$
                                    236 ;	./src/oled_i2c.c:63: oledSendData(0x00); /* Display the data and keep track of cursor */
      00091D 75 82 00         [24]  237 	mov	dpl,#0x00
                                    238 ;	./src/oled_i2c.c:65: }
      000920 02 09 B5         [24]  239 	ljmp	_oledSendData
                                    240 ;------------------------------------------------------------
                                    241 ;Allocation info for local variables in function 'OLED_DisplayString'
                                    242 ;------------------------------------------------------------
                                    243 ;ptr                       Allocated to registers 
                                    244 ;------------------------------------------------------------
                                    245 ;	./src/oled_i2c.c:81: void OLED_DisplayString(uint8_t *ptr)
                                    246 ;	-----------------------------------------
                                    247 ;	 function OLED_DisplayString
                                    248 ;	-----------------------------------------
      000923                        249 _OLED_DisplayString:
      000923 AD 82            [24]  250 	mov	r5,dpl
      000925 AE 83            [24]  251 	mov	r6,dph
      000927 AF F0            [24]  252 	mov	r7,b
                                    253 ;	./src/oled_i2c.c:83: while(*ptr)
      000929                        254 00101$:
      000929 8D 82            [24]  255 	mov	dpl,r5
      00092B 8E 83            [24]  256 	mov	dph,r6
      00092D 8F F0            [24]  257 	mov	b,r7
      00092F 12 0B 4A         [24]  258 	lcall	__gptrget
      000932 FC               [12]  259 	mov	r4,a
      000933 60 18            [24]  260 	jz	00104$
                                    261 ;	./src/oled_i2c.c:84: OLED_DisplayChar(*ptr++);
      000935 8C 82            [24]  262 	mov	dpl,r4
      000937 0D               [12]  263 	inc	r5
      000938 BD 00 01         [24]  264 	cjne	r5,#0x00,00116$
      00093B 0E               [12]  265 	inc	r6
      00093C                        266 00116$:
      00093C C0 07            [24]  267 	push	ar7
      00093E C0 06            [24]  268 	push	ar6
      000940 C0 05            [24]  269 	push	ar5
      000942 12 08 D2         [24]  270 	lcall	_OLED_DisplayChar
      000945 D0 05            [24]  271 	pop	ar5
      000947 D0 06            [24]  272 	pop	ar6
      000949 D0 07            [24]  273 	pop	ar7
      00094B 80 DC            [24]  274 	sjmp	00101$
      00094D                        275 00104$:
                                    276 ;	./src/oled_i2c.c:85: }
      00094D 22               [24]  277 	ret
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
      00094E                        288 _OLED_Clear:
                                    289 ;	./src/oled_i2c.c:99: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page ++) {
      00094E 7F 00            [12]  290 	mov	r7,#0x00
      000950                        291 00105$:
                                    292 ;	./src/oled_i2c.c:100: OLED_SetCursor(oled_clean_page,0);
      000950 75 1D 00         [24]  293 	mov	_OLED_SetCursor_PARM_2,#0x00
      000953 8F 82            [24]  294 	mov	dpl,r7
      000955 C0 07            [24]  295 	push	ar7
      000957 12 09 79         [24]  296 	lcall	_OLED_SetCursor
      00095A D0 07            [24]  297 	pop	ar7
                                    298 ;	./src/oled_i2c.c:101: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) {
      00095C 7E 00            [12]  299 	mov	r6,#0x00
      00095E                        300 00103$:
                                    301 ;	./src/oled_i2c.c:102: oledSendData(0);
      00095E 75 82 00         [24]  302 	mov	dpl,#0x00
      000961 C0 07            [24]  303 	push	ar7
      000963 C0 06            [24]  304 	push	ar6
      000965 12 09 B5         [24]  305 	lcall	_oledSendData
      000968 D0 06            [24]  306 	pop	ar6
      00096A D0 07            [24]  307 	pop	ar7
                                    308 ;	./src/oled_i2c.c:101: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) {
      00096C 0E               [12]  309 	inc	r6
      00096D BE 80 00         [24]  310 	cjne	r6,#0x80,00123$
      000970                        311 00123$:
      000970 40 EC            [24]  312 	jc	00103$
                                    313 ;	./src/oled_i2c.c:99: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page ++) {
      000972 0F               [12]  314 	inc	r7
      000973 BF 08 00         [24]  315 	cjne	r7,#0x08,00125$
      000976                        316 00125$:
      000976 40 D8            [24]  317 	jc	00105$
                                    318 ;	./src/oled_i2c.c:105: }
      000978 22               [24]  319 	ret
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
      000979                        330 _OLED_SetCursor:
      000979 AF 82            [24]  331 	mov	r7,dpl
                                    332 ;	./src/oled_i2c.c:124: cursorPosition = cursorPosition + 2;
      00097B AE 1D            [24]  333 	mov	r6,_OLED_SetCursor_PARM_2
      00097D 74 02            [12]  334 	mov	a,#0x02
      00097F 2E               [12]  335 	add	a,r6
      000980 F5 1D            [12]  336 	mov	_OLED_SetCursor_PARM_2,a
                                    337 ;	./src/oled_i2c.c:125: oledSendCommand(0x0f&cursorPosition); // Select SEG lower 4 bits
      000982 AE 1D            [24]  338 	mov	r6,_OLED_SetCursor_PARM_2
      000984 74 0F            [12]  339 	mov	a,#0x0f
      000986 5E               [12]  340 	anl	a,r6
      000987 F5 82            [12]  341 	mov	dpl,a
      000989 C0 07            [24]  342 	push	ar7
      00098B C0 06            [24]  343 	push	ar6
      00098D 12 09 A9         [24]  344 	lcall	_oledSendCommand
      000990 D0 06            [24]  345 	pop	ar6
                                    346 ;	./src/oled_i2c.c:126: oledSendCommand(0x10|(cursorPosition>>4)); // Select SEG higher 4 bits
      000992 EE               [12]  347 	mov	a,r6
      000993 C4               [12]  348 	swap	a
      000994 54 0F            [12]  349 	anl	a,#0x0f
      000996 FE               [12]  350 	mov	r6,a
      000997 74 10            [12]  351 	mov	a,#0x10
      000999 4E               [12]  352 	orl	a,r6
      00099A F5 82            [12]  353 	mov	dpl,a
      00099C 12 09 A9         [24]  354 	lcall	_oledSendCommand
      00099F D0 07            [24]  355 	pop	ar7
                                    356 ;	./src/oled_i2c.c:127: oledSendCommand(0xb0|lineNumber); // Select PAGE
      0009A1 74 B0            [12]  357 	mov	a,#0xb0
      0009A3 4F               [12]  358 	orl	a,r7
      0009A4 F5 82            [12]  359 	mov	dpl,a
                                    360 ;	./src/oled_i2c.c:128: }
      0009A6 02 09 A9         [24]  361 	ljmp	_oledSendCommand
                                    362 ;------------------------------------------------------------
                                    363 ;Allocation info for local variables in function 'oledSendCommand'
                                    364 ;------------------------------------------------------------
                                    365 ;cmd                       Allocated to registers 
                                    366 ;------------------------------------------------------------
                                    367 ;	./src/oled_i2c.c:133: void oledSendCommand(uint8_t cmd)
                                    368 ;	-----------------------------------------
                                    369 ;	 function oledSendCommand
                                    370 ;	-----------------------------------------
      0009A9                        371 _oledSendCommand:
      0009A9 85 82 1B         [24]  372 	mov	_Single_WriteI2C_PARM_3,dpl
                                    373 ;	./src/oled_i2c.c:135: Single_WriteI2C(OLED_SlaveAddress, SSD1306_COMMAND, cmd);
      0009AC 75 1A 00         [24]  374 	mov	_Single_WriteI2C_PARM_2,#0x00
      0009AF 75 82 78         [24]  375 	mov	dpl,#0x78
                                    376 ;	./src/oled_i2c.c:136: }
      0009B2 02 08 07         [24]  377 	ljmp	_Single_WriteI2C
                                    378 ;------------------------------------------------------------
                                    379 ;Allocation info for local variables in function 'oledSendData'
                                    380 ;------------------------------------------------------------
                                    381 ;cmd                       Allocated to registers 
                                    382 ;------------------------------------------------------------
                                    383 ;	./src/oled_i2c.c:138: void oledSendData(uint8_t cmd)
                                    384 ;	-----------------------------------------
                                    385 ;	 function oledSendData
                                    386 ;	-----------------------------------------
      0009B5                        387 _oledSendData:
      0009B5 85 82 1B         [24]  388 	mov	_Single_WriteI2C_PARM_3,dpl
                                    389 ;	./src/oled_i2c.c:140: Single_WriteI2C(OLED_SlaveAddress, SSD1306_DATA_CONTINUE, cmd);
      0009B8 75 1A 40         [24]  390 	mov	_Single_WriteI2C_PARM_2,#0x40
      0009BB 75 82 78         [24]  391 	mov	dpl,#0x78
                                    392 ;	./src/oled_i2c.c:141: }
      0009BE 02 08 07         [24]  393 	ljmp	_Single_WriteI2C
                                    394 	.area CSEG    (CODE)
                                    395 	.area CONST   (CODE)
      000BF4                        396 _OledFontTable:
      000BF4 00                     397 	.db #0x00	; 0
      000BF5 00                     398 	.db #0x00	; 0
      000BF6 00                     399 	.db #0x00	; 0
      000BF7 00                     400 	.db #0x00	; 0
      000BF8 00                     401 	.db #0x00	; 0
      000BF9 00                     402 	.db #0x00	; 0
      000BFA 00                     403 	.db #0x00	; 0
      000BFB 2F                     404 	.db #0x2f	; 47
      000BFC 00                     405 	.db #0x00	; 0
      000BFD 00                     406 	.db #0x00	; 0
      000BFE 00                     407 	.db #0x00	; 0
      000BFF 07                     408 	.db #0x07	; 7
      000C00 00                     409 	.db #0x00	; 0
      000C01 07                     410 	.db #0x07	; 7
      000C02 00                     411 	.db #0x00	; 0
      000C03 14                     412 	.db #0x14	; 20
      000C04 7F                     413 	.db #0x7f	; 127
      000C05 14                     414 	.db #0x14	; 20
      000C06 7F                     415 	.db #0x7f	; 127
      000C07 14                     416 	.db #0x14	; 20
      000C08 24                     417 	.db #0x24	; 36
      000C09 2A                     418 	.db #0x2a	; 42
      000C0A 7F                     419 	.db #0x7f	; 127
      000C0B 2A                     420 	.db #0x2a	; 42
      000C0C 12                     421 	.db #0x12	; 18
      000C0D 23                     422 	.db #0x23	; 35
      000C0E 13                     423 	.db #0x13	; 19
      000C0F 08                     424 	.db #0x08	; 8
      000C10 64                     425 	.db #0x64	; 100	'd'
      000C11 62                     426 	.db #0x62	; 98	'b'
      000C12 36                     427 	.db #0x36	; 54	'6'
      000C13 49                     428 	.db #0x49	; 73	'I'
      000C14 55                     429 	.db #0x55	; 85	'U'
      000C15 22                     430 	.db #0x22	; 34
      000C16 50                     431 	.db #0x50	; 80	'P'
      000C17 00                     432 	.db #0x00	; 0
      000C18 05                     433 	.db #0x05	; 5
      000C19 03                     434 	.db #0x03	; 3
      000C1A 00                     435 	.db #0x00	; 0
      000C1B 00                     436 	.db #0x00	; 0
      000C1C 00                     437 	.db #0x00	; 0
      000C1D 1C                     438 	.db #0x1c	; 28
      000C1E 22                     439 	.db #0x22	; 34
      000C1F 41                     440 	.db #0x41	; 65	'A'
      000C20 00                     441 	.db #0x00	; 0
      000C21 00                     442 	.db #0x00	; 0
      000C22 41                     443 	.db #0x41	; 65	'A'
      000C23 22                     444 	.db #0x22	; 34
      000C24 1C                     445 	.db #0x1c	; 28
      000C25 00                     446 	.db #0x00	; 0
      000C26 14                     447 	.db #0x14	; 20
      000C27 08                     448 	.db #0x08	; 8
      000C28 3E                     449 	.db #0x3e	; 62
      000C29 08                     450 	.db #0x08	; 8
      000C2A 14                     451 	.db #0x14	; 20
      000C2B 08                     452 	.db #0x08	; 8
      000C2C 08                     453 	.db #0x08	; 8
      000C2D 3E                     454 	.db #0x3e	; 62
      000C2E 08                     455 	.db #0x08	; 8
      000C2F 08                     456 	.db #0x08	; 8
      000C30 00                     457 	.db #0x00	; 0
      000C31 00                     458 	.db #0x00	; 0
      000C32 A0                     459 	.db #0xa0	; 160
      000C33 60                     460 	.db #0x60	; 96
      000C34 00                     461 	.db #0x00	; 0
      000C35 08                     462 	.db #0x08	; 8
      000C36 08                     463 	.db #0x08	; 8
      000C37 08                     464 	.db #0x08	; 8
      000C38 08                     465 	.db #0x08	; 8
      000C39 08                     466 	.db #0x08	; 8
      000C3A 00                     467 	.db #0x00	; 0
      000C3B 60                     468 	.db #0x60	; 96
      000C3C 60                     469 	.db #0x60	; 96
      000C3D 00                     470 	.db #0x00	; 0
      000C3E 00                     471 	.db #0x00	; 0
      000C3F 20                     472 	.db #0x20	; 32
      000C40 10                     473 	.db #0x10	; 16
      000C41 08                     474 	.db #0x08	; 8
      000C42 04                     475 	.db #0x04	; 4
      000C43 02                     476 	.db #0x02	; 2
      000C44 3E                     477 	.db #0x3e	; 62
      000C45 51                     478 	.db #0x51	; 81	'Q'
      000C46 49                     479 	.db #0x49	; 73	'I'
      000C47 45                     480 	.db #0x45	; 69	'E'
      000C48 3E                     481 	.db #0x3e	; 62
      000C49 00                     482 	.db #0x00	; 0
      000C4A 42                     483 	.db #0x42	; 66	'B'
      000C4B 7F                     484 	.db #0x7f	; 127
      000C4C 40                     485 	.db #0x40	; 64
      000C4D 00                     486 	.db #0x00	; 0
      000C4E 42                     487 	.db #0x42	; 66	'B'
      000C4F 61                     488 	.db #0x61	; 97	'a'
      000C50 51                     489 	.db #0x51	; 81	'Q'
      000C51 49                     490 	.db #0x49	; 73	'I'
      000C52 46                     491 	.db #0x46	; 70	'F'
      000C53 21                     492 	.db #0x21	; 33
      000C54 41                     493 	.db #0x41	; 65	'A'
      000C55 45                     494 	.db #0x45	; 69	'E'
      000C56 4B                     495 	.db #0x4b	; 75	'K'
      000C57 31                     496 	.db #0x31	; 49	'1'
      000C58 18                     497 	.db #0x18	; 24
      000C59 14                     498 	.db #0x14	; 20
      000C5A 12                     499 	.db #0x12	; 18
      000C5B 7F                     500 	.db #0x7f	; 127
      000C5C 10                     501 	.db #0x10	; 16
      000C5D 27                     502 	.db #0x27	; 39
      000C5E 45                     503 	.db #0x45	; 69	'E'
      000C5F 45                     504 	.db #0x45	; 69	'E'
      000C60 45                     505 	.db #0x45	; 69	'E'
      000C61 39                     506 	.db #0x39	; 57	'9'
      000C62 3C                     507 	.db #0x3c	; 60
      000C63 4A                     508 	.db #0x4a	; 74	'J'
      000C64 49                     509 	.db #0x49	; 73	'I'
      000C65 49                     510 	.db #0x49	; 73	'I'
      000C66 30                     511 	.db #0x30	; 48	'0'
      000C67 01                     512 	.db #0x01	; 1
      000C68 71                     513 	.db #0x71	; 113	'q'
      000C69 09                     514 	.db #0x09	; 9
      000C6A 05                     515 	.db #0x05	; 5
      000C6B 03                     516 	.db #0x03	; 3
      000C6C 36                     517 	.db #0x36	; 54	'6'
      000C6D 49                     518 	.db #0x49	; 73	'I'
      000C6E 49                     519 	.db #0x49	; 73	'I'
      000C6F 49                     520 	.db #0x49	; 73	'I'
      000C70 36                     521 	.db #0x36	; 54	'6'
      000C71 06                     522 	.db #0x06	; 6
      000C72 49                     523 	.db #0x49	; 73	'I'
      000C73 49                     524 	.db #0x49	; 73	'I'
      000C74 29                     525 	.db #0x29	; 41
      000C75 1E                     526 	.db #0x1e	; 30
      000C76 00                     527 	.db #0x00	; 0
      000C77 36                     528 	.db #0x36	; 54	'6'
      000C78 36                     529 	.db #0x36	; 54	'6'
      000C79 00                     530 	.db #0x00	; 0
      000C7A 00                     531 	.db #0x00	; 0
      000C7B 00                     532 	.db #0x00	; 0
      000C7C 56                     533 	.db #0x56	; 86	'V'
      000C7D 36                     534 	.db #0x36	; 54	'6'
      000C7E 00                     535 	.db #0x00	; 0
      000C7F 00                     536 	.db #0x00	; 0
      000C80 08                     537 	.db #0x08	; 8
      000C81 14                     538 	.db #0x14	; 20
      000C82 22                     539 	.db #0x22	; 34
      000C83 41                     540 	.db #0x41	; 65	'A'
      000C84 00                     541 	.db #0x00	; 0
      000C85 14                     542 	.db #0x14	; 20
      000C86 14                     543 	.db #0x14	; 20
      000C87 14                     544 	.db #0x14	; 20
      000C88 14                     545 	.db #0x14	; 20
      000C89 14                     546 	.db #0x14	; 20
      000C8A 00                     547 	.db #0x00	; 0
      000C8B 41                     548 	.db #0x41	; 65	'A'
      000C8C 22                     549 	.db #0x22	; 34
      000C8D 14                     550 	.db #0x14	; 20
      000C8E 08                     551 	.db #0x08	; 8
      000C8F 02                     552 	.db #0x02	; 2
      000C90 01                     553 	.db #0x01	; 1
      000C91 51                     554 	.db #0x51	; 81	'Q'
      000C92 09                     555 	.db #0x09	; 9
      000C93 06                     556 	.db #0x06	; 6
      000C94 32                     557 	.db #0x32	; 50	'2'
      000C95 49                     558 	.db #0x49	; 73	'I'
      000C96 59                     559 	.db #0x59	; 89	'Y'
      000C97 51                     560 	.db #0x51	; 81	'Q'
      000C98 3E                     561 	.db #0x3e	; 62
      000C99 7C                     562 	.db #0x7c	; 124
      000C9A 12                     563 	.db #0x12	; 18
      000C9B 11                     564 	.db #0x11	; 17
      000C9C 12                     565 	.db #0x12	; 18
      000C9D 7C                     566 	.db #0x7c	; 124
      000C9E 7F                     567 	.db #0x7f	; 127
      000C9F 49                     568 	.db #0x49	; 73	'I'
      000CA0 49                     569 	.db #0x49	; 73	'I'
      000CA1 49                     570 	.db #0x49	; 73	'I'
      000CA2 36                     571 	.db #0x36	; 54	'6'
      000CA3 3E                     572 	.db #0x3e	; 62
      000CA4 41                     573 	.db #0x41	; 65	'A'
      000CA5 41                     574 	.db #0x41	; 65	'A'
      000CA6 41                     575 	.db #0x41	; 65	'A'
      000CA7 22                     576 	.db #0x22	; 34
      000CA8 7F                     577 	.db #0x7f	; 127
      000CA9 41                     578 	.db #0x41	; 65	'A'
      000CAA 41                     579 	.db #0x41	; 65	'A'
      000CAB 22                     580 	.db #0x22	; 34
      000CAC 1C                     581 	.db #0x1c	; 28
      000CAD 7F                     582 	.db #0x7f	; 127
      000CAE 49                     583 	.db #0x49	; 73	'I'
      000CAF 49                     584 	.db #0x49	; 73	'I'
      000CB0 49                     585 	.db #0x49	; 73	'I'
      000CB1 41                     586 	.db #0x41	; 65	'A'
      000CB2 7F                     587 	.db #0x7f	; 127
      000CB3 09                     588 	.db #0x09	; 9
      000CB4 09                     589 	.db #0x09	; 9
      000CB5 09                     590 	.db #0x09	; 9
      000CB6 01                     591 	.db #0x01	; 1
      000CB7 3E                     592 	.db #0x3e	; 62
      000CB8 41                     593 	.db #0x41	; 65	'A'
      000CB9 49                     594 	.db #0x49	; 73	'I'
      000CBA 49                     595 	.db #0x49	; 73	'I'
      000CBB 7A                     596 	.db #0x7a	; 122	'z'
      000CBC 7F                     597 	.db #0x7f	; 127
      000CBD 08                     598 	.db #0x08	; 8
      000CBE 08                     599 	.db #0x08	; 8
      000CBF 08                     600 	.db #0x08	; 8
      000CC0 7F                     601 	.db #0x7f	; 127
      000CC1 00                     602 	.db #0x00	; 0
      000CC2 41                     603 	.db #0x41	; 65	'A'
      000CC3 7F                     604 	.db #0x7f	; 127
      000CC4 41                     605 	.db #0x41	; 65	'A'
      000CC5 00                     606 	.db #0x00	; 0
      000CC6 20                     607 	.db #0x20	; 32
      000CC7 40                     608 	.db #0x40	; 64
      000CC8 41                     609 	.db #0x41	; 65	'A'
      000CC9 3F                     610 	.db #0x3f	; 63
      000CCA 01                     611 	.db #0x01	; 1
      000CCB 7F                     612 	.db #0x7f	; 127
      000CCC 08                     613 	.db #0x08	; 8
      000CCD 14                     614 	.db #0x14	; 20
      000CCE 22                     615 	.db #0x22	; 34
      000CCF 41                     616 	.db #0x41	; 65	'A'
      000CD0 7F                     617 	.db #0x7f	; 127
      000CD1 40                     618 	.db #0x40	; 64
      000CD2 40                     619 	.db #0x40	; 64
      000CD3 40                     620 	.db #0x40	; 64
      000CD4 40                     621 	.db #0x40	; 64
      000CD5 7F                     622 	.db #0x7f	; 127
      000CD6 02                     623 	.db #0x02	; 2
      000CD7 0C                     624 	.db #0x0c	; 12
      000CD8 02                     625 	.db #0x02	; 2
      000CD9 7F                     626 	.db #0x7f	; 127
      000CDA 7F                     627 	.db #0x7f	; 127
      000CDB 04                     628 	.db #0x04	; 4
      000CDC 08                     629 	.db #0x08	; 8
      000CDD 10                     630 	.db #0x10	; 16
      000CDE 7F                     631 	.db #0x7f	; 127
      000CDF 3E                     632 	.db #0x3e	; 62
      000CE0 41                     633 	.db #0x41	; 65	'A'
      000CE1 41                     634 	.db #0x41	; 65	'A'
      000CE2 41                     635 	.db #0x41	; 65	'A'
      000CE3 3E                     636 	.db #0x3e	; 62
      000CE4 7F                     637 	.db #0x7f	; 127
      000CE5 09                     638 	.db #0x09	; 9
      000CE6 09                     639 	.db #0x09	; 9
      000CE7 09                     640 	.db #0x09	; 9
      000CE8 06                     641 	.db #0x06	; 6
      000CE9 3E                     642 	.db #0x3e	; 62
      000CEA 41                     643 	.db #0x41	; 65	'A'
      000CEB 51                     644 	.db #0x51	; 81	'Q'
      000CEC 21                     645 	.db #0x21	; 33
      000CED 5E                     646 	.db #0x5e	; 94
      000CEE 7F                     647 	.db #0x7f	; 127
      000CEF 09                     648 	.db #0x09	; 9
      000CF0 19                     649 	.db #0x19	; 25
      000CF1 29                     650 	.db #0x29	; 41
      000CF2 46                     651 	.db #0x46	; 70	'F'
      000CF3 46                     652 	.db #0x46	; 70	'F'
      000CF4 49                     653 	.db #0x49	; 73	'I'
      000CF5 49                     654 	.db #0x49	; 73	'I'
      000CF6 49                     655 	.db #0x49	; 73	'I'
      000CF7 31                     656 	.db #0x31	; 49	'1'
      000CF8 01                     657 	.db #0x01	; 1
      000CF9 01                     658 	.db #0x01	; 1
      000CFA 7F                     659 	.db #0x7f	; 127
      000CFB 01                     660 	.db #0x01	; 1
      000CFC 01                     661 	.db #0x01	; 1
      000CFD 3F                     662 	.db #0x3f	; 63
      000CFE 40                     663 	.db #0x40	; 64
      000CFF 40                     664 	.db #0x40	; 64
      000D00 40                     665 	.db #0x40	; 64
      000D01 3F                     666 	.db #0x3f	; 63
      000D02 1F                     667 	.db #0x1f	; 31
      000D03 20                     668 	.db #0x20	; 32
      000D04 40                     669 	.db #0x40	; 64
      000D05 20                     670 	.db #0x20	; 32
      000D06 1F                     671 	.db #0x1f	; 31
      000D07 3F                     672 	.db #0x3f	; 63
      000D08 40                     673 	.db #0x40	; 64
      000D09 38                     674 	.db #0x38	; 56	'8'
      000D0A 40                     675 	.db #0x40	; 64
      000D0B 3F                     676 	.db #0x3f	; 63
      000D0C 63                     677 	.db #0x63	; 99	'c'
      000D0D 14                     678 	.db #0x14	; 20
      000D0E 08                     679 	.db #0x08	; 8
      000D0F 14                     680 	.db #0x14	; 20
      000D10 63                     681 	.db #0x63	; 99	'c'
      000D11 07                     682 	.db #0x07	; 7
      000D12 08                     683 	.db #0x08	; 8
      000D13 70                     684 	.db #0x70	; 112	'p'
      000D14 08                     685 	.db #0x08	; 8
      000D15 07                     686 	.db #0x07	; 7
      000D16 61                     687 	.db #0x61	; 97	'a'
      000D17 51                     688 	.db #0x51	; 81	'Q'
      000D18 49                     689 	.db #0x49	; 73	'I'
      000D19 45                     690 	.db #0x45	; 69	'E'
      000D1A 43                     691 	.db #0x43	; 67	'C'
      000D1B 00                     692 	.db #0x00	; 0
      000D1C 7F                     693 	.db #0x7f	; 127
      000D1D 41                     694 	.db #0x41	; 65	'A'
      000D1E 41                     695 	.db #0x41	; 65	'A'
      000D1F 00                     696 	.db #0x00	; 0
      000D20 55                     697 	.db #0x55	; 85	'U'
      000D21 AA                     698 	.db #0xaa	; 170
      000D22 55                     699 	.db #0x55	; 85	'U'
      000D23 AA                     700 	.db #0xaa	; 170
      000D24 55                     701 	.db #0x55	; 85	'U'
      000D25 00                     702 	.db #0x00	; 0
      000D26 41                     703 	.db #0x41	; 65	'A'
      000D27 41                     704 	.db #0x41	; 65	'A'
      000D28 7F                     705 	.db #0x7f	; 127
      000D29 00                     706 	.db #0x00	; 0
      000D2A 04                     707 	.db #0x04	; 4
      000D2B 02                     708 	.db #0x02	; 2
      000D2C 01                     709 	.db #0x01	; 1
      000D2D 02                     710 	.db #0x02	; 2
      000D2E 04                     711 	.db #0x04	; 4
      000D2F 40                     712 	.db #0x40	; 64
      000D30 40                     713 	.db #0x40	; 64
      000D31 40                     714 	.db #0x40	; 64
      000D32 40                     715 	.db #0x40	; 64
      000D33 40                     716 	.db #0x40	; 64
      000D34 00                     717 	.db #0x00	; 0
      000D35 03                     718 	.db #0x03	; 3
      000D36 05                     719 	.db #0x05	; 5
      000D37 00                     720 	.db #0x00	; 0
      000D38 00                     721 	.db #0x00	; 0
      000D39 20                     722 	.db #0x20	; 32
      000D3A 54                     723 	.db #0x54	; 84	'T'
      000D3B 54                     724 	.db #0x54	; 84	'T'
      000D3C 54                     725 	.db #0x54	; 84	'T'
      000D3D 78                     726 	.db #0x78	; 120	'x'
      000D3E 7F                     727 	.db #0x7f	; 127
      000D3F 48                     728 	.db #0x48	; 72	'H'
      000D40 44                     729 	.db #0x44	; 68	'D'
      000D41 44                     730 	.db #0x44	; 68	'D'
      000D42 38                     731 	.db #0x38	; 56	'8'
      000D43 38                     732 	.db #0x38	; 56	'8'
      000D44 44                     733 	.db #0x44	; 68	'D'
      000D45 44                     734 	.db #0x44	; 68	'D'
      000D46 44                     735 	.db #0x44	; 68	'D'
      000D47 20                     736 	.db #0x20	; 32
      000D48 38                     737 	.db #0x38	; 56	'8'
      000D49 44                     738 	.db #0x44	; 68	'D'
      000D4A 44                     739 	.db #0x44	; 68	'D'
      000D4B 48                     740 	.db #0x48	; 72	'H'
      000D4C 7F                     741 	.db #0x7f	; 127
      000D4D 38                     742 	.db #0x38	; 56	'8'
      000D4E 54                     743 	.db #0x54	; 84	'T'
      000D4F 54                     744 	.db #0x54	; 84	'T'
      000D50 54                     745 	.db #0x54	; 84	'T'
      000D51 18                     746 	.db #0x18	; 24
      000D52 08                     747 	.db #0x08	; 8
      000D53 7E                     748 	.db #0x7e	; 126
      000D54 09                     749 	.db #0x09	; 9
      000D55 01                     750 	.db #0x01	; 1
      000D56 02                     751 	.db #0x02	; 2
      000D57 18                     752 	.db #0x18	; 24
      000D58 A4                     753 	.db #0xa4	; 164
      000D59 A4                     754 	.db #0xa4	; 164
      000D5A A4                     755 	.db #0xa4	; 164
      000D5B 7C                     756 	.db #0x7c	; 124
      000D5C 7F                     757 	.db #0x7f	; 127
      000D5D 08                     758 	.db #0x08	; 8
      000D5E 04                     759 	.db #0x04	; 4
      000D5F 04                     760 	.db #0x04	; 4
      000D60 78                     761 	.db #0x78	; 120	'x'
      000D61 00                     762 	.db #0x00	; 0
      000D62 44                     763 	.db #0x44	; 68	'D'
      000D63 7D                     764 	.db #0x7d	; 125
      000D64 40                     765 	.db #0x40	; 64
      000D65 00                     766 	.db #0x00	; 0
      000D66 40                     767 	.db #0x40	; 64
      000D67 80                     768 	.db #0x80	; 128
      000D68 84                     769 	.db #0x84	; 132
      000D69 7D                     770 	.db #0x7d	; 125
      000D6A 00                     771 	.db #0x00	; 0
      000D6B 7F                     772 	.db #0x7f	; 127
      000D6C 10                     773 	.db #0x10	; 16
      000D6D 28                     774 	.db #0x28	; 40
      000D6E 44                     775 	.db #0x44	; 68	'D'
      000D6F 00                     776 	.db #0x00	; 0
      000D70 00                     777 	.db #0x00	; 0
      000D71 41                     778 	.db #0x41	; 65	'A'
      000D72 7F                     779 	.db #0x7f	; 127
      000D73 40                     780 	.db #0x40	; 64
      000D74 00                     781 	.db #0x00	; 0
      000D75 7C                     782 	.db #0x7c	; 124
      000D76 04                     783 	.db #0x04	; 4
      000D77 18                     784 	.db #0x18	; 24
      000D78 04                     785 	.db #0x04	; 4
      000D79 78                     786 	.db #0x78	; 120	'x'
      000D7A 7C                     787 	.db #0x7c	; 124
      000D7B 08                     788 	.db #0x08	; 8
      000D7C 04                     789 	.db #0x04	; 4
      000D7D 04                     790 	.db #0x04	; 4
      000D7E 78                     791 	.db #0x78	; 120	'x'
      000D7F 38                     792 	.db #0x38	; 56	'8'
      000D80 44                     793 	.db #0x44	; 68	'D'
      000D81 44                     794 	.db #0x44	; 68	'D'
      000D82 44                     795 	.db #0x44	; 68	'D'
      000D83 38                     796 	.db #0x38	; 56	'8'
      000D84 FC                     797 	.db #0xfc	; 252
      000D85 24                     798 	.db #0x24	; 36
      000D86 24                     799 	.db #0x24	; 36
      000D87 24                     800 	.db #0x24	; 36
      000D88 18                     801 	.db #0x18	; 24
      000D89 18                     802 	.db #0x18	; 24
      000D8A 24                     803 	.db #0x24	; 36
      000D8B 24                     804 	.db #0x24	; 36
      000D8C 18                     805 	.db #0x18	; 24
      000D8D FC                     806 	.db #0xfc	; 252
      000D8E 7C                     807 	.db #0x7c	; 124
      000D8F 08                     808 	.db #0x08	; 8
      000D90 04                     809 	.db #0x04	; 4
      000D91 04                     810 	.db #0x04	; 4
      000D92 08                     811 	.db #0x08	; 8
      000D93 48                     812 	.db #0x48	; 72	'H'
      000D94 54                     813 	.db #0x54	; 84	'T'
      000D95 54                     814 	.db #0x54	; 84	'T'
      000D96 54                     815 	.db #0x54	; 84	'T'
      000D97 20                     816 	.db #0x20	; 32
      000D98 04                     817 	.db #0x04	; 4
      000D99 3F                     818 	.db #0x3f	; 63
      000D9A 44                     819 	.db #0x44	; 68	'D'
      000D9B 40                     820 	.db #0x40	; 64
      000D9C 20                     821 	.db #0x20	; 32
      000D9D 3C                     822 	.db #0x3c	; 60
      000D9E 40                     823 	.db #0x40	; 64
      000D9F 40                     824 	.db #0x40	; 64
      000DA0 20                     825 	.db #0x20	; 32
      000DA1 7C                     826 	.db #0x7c	; 124
      000DA2 1C                     827 	.db #0x1c	; 28
      000DA3 20                     828 	.db #0x20	; 32
      000DA4 40                     829 	.db #0x40	; 64
      000DA5 20                     830 	.db #0x20	; 32
      000DA6 1C                     831 	.db #0x1c	; 28
      000DA7 3C                     832 	.db #0x3c	; 60
      000DA8 40                     833 	.db #0x40	; 64
      000DA9 30                     834 	.db #0x30	; 48	'0'
      000DAA 40                     835 	.db #0x40	; 64
      000DAB 3C                     836 	.db #0x3c	; 60
      000DAC 44                     837 	.db #0x44	; 68	'D'
      000DAD 28                     838 	.db #0x28	; 40
      000DAE 10                     839 	.db #0x10	; 16
      000DAF 28                     840 	.db #0x28	; 40
      000DB0 44                     841 	.db #0x44	; 68	'D'
      000DB1 1C                     842 	.db #0x1c	; 28
      000DB2 A0                     843 	.db #0xa0	; 160
      000DB3 A0                     844 	.db #0xa0	; 160
      000DB4 A0                     845 	.db #0xa0	; 160
      000DB5 7C                     846 	.db #0x7c	; 124
      000DB6 44                     847 	.db #0x44	; 68	'D'
      000DB7 64                     848 	.db #0x64	; 100	'd'
      000DB8 54                     849 	.db #0x54	; 84	'T'
      000DB9 4C                     850 	.db #0x4c	; 76	'L'
      000DBA 44                     851 	.db #0x44	; 68	'D'
      000DBB 00                     852 	.db #0x00	; 0
      000DBC 10                     853 	.db #0x10	; 16
      000DBD 7C                     854 	.db #0x7c	; 124
      000DBE 82                     855 	.db #0x82	; 130
      000DBF 00                     856 	.db #0x00	; 0
      000DC0 00                     857 	.db #0x00	; 0
      000DC1 00                     858 	.db #0x00	; 0
      000DC2 FF                     859 	.db #0xff	; 255
      000DC3 00                     860 	.db #0x00	; 0
      000DC4 00                     861 	.db #0x00	; 0
      000DC5 00                     862 	.db #0x00	; 0
      000DC6 82                     863 	.db #0x82	; 130
      000DC7 7C                     864 	.db #0x7c	; 124
      000DC8 10                     865 	.db #0x10	; 16
      000DC9 00                     866 	.db #0x00	; 0
      000DCA 00                     867 	.db #0x00	; 0
      000DCB 06                     868 	.db #0x06	; 6
      000DCC 09                     869 	.db #0x09	; 9
      000DCD 09                     870 	.db #0x09	; 9
      000DCE 06                     871 	.db #0x06	; 6
                                    872 	.area XINIT   (CODE)
                                    873 	.area CABS    (ABS,CODE)
