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
                                    103 ;	./src/oled_i2c.c:16: void OLED_Init(void)
                                    104 ;	-----------------------------------------
                                    105 ;	 function OLED_Init
                                    106 ;	-----------------------------------------
      0008F5                        107 _OLED_Init:
                           000007   108 	ar7 = 0x07
                           000006   109 	ar6 = 0x06
                           000005   110 	ar5 = 0x05
                           000004   111 	ar4 = 0x04
                           000003   112 	ar3 = 0x03
                           000002   113 	ar2 = 0x02
                           000001   114 	ar1 = 0x01
                           000000   115 	ar0 = 0x00
                                    116 ;	./src/oled_i2c.c:24: oledSendCommand(0xa8);  //Set MUX Ratio
      0008F5 75 82 A8         [24]  117 	mov	dpl,#0xa8
      0008F8 12 0A 8D         [24]  118 	lcall	_oledSendCommand
                                    119 ;	./src/oled_i2c.c:25: oledSendCommand(0x3f);  
      0008FB 75 82 3F         [24]  120 	mov	dpl,#0x3f
      0008FE 12 0A 8D         [24]  121 	lcall	_oledSendCommand
                                    122 ;	./src/oled_i2c.c:26: oledSendCommand(0xd3);  //Set Display Offset
      000901 75 82 D3         [24]  123 	mov	dpl,#0xd3
      000904 12 0A 8D         [24]  124 	lcall	_oledSendCommand
                                    125 ;	./src/oled_i2c.c:27: oledSendCommand(0x00);  
      000907 75 82 00         [24]  126 	mov	dpl,#0x00
      00090A 12 0A 8D         [24]  127 	lcall	_oledSendCommand
                                    128 ;	./src/oled_i2c.c:28: oledSendCommand(0x40);  //Set Display Start Line
      00090D 75 82 40         [24]  129 	mov	dpl,#0x40
      000910 12 0A 8D         [24]  130 	lcall	_oledSendCommand
                                    131 ;	./src/oled_i2c.c:29: oledSendCommand(0xa1);  //Set Segment re-map A0h/A1h
      000913 75 82 A1         [24]  132 	mov	dpl,#0xa1
      000916 12 0A 8D         [24]  133 	lcall	_oledSendCommand
                                    134 ;	./src/oled_i2c.c:30: oledSendCommand(0xc8);  //Set COM OUTput
      000919 75 82 C8         [24]  135 	mov	dpl,#0xc8
      00091C 12 0A 8D         [24]  136 	lcall	_oledSendCommand
                                    137 ;	./src/oled_i2c.c:31: oledSendCommand(0xda); 
      00091F 75 82 DA         [24]  138 	mov	dpl,#0xda
      000922 12 0A 8D         [24]  139 	lcall	_oledSendCommand
                                    140 ;	./src/oled_i2c.c:32: oledSendCommand(0x12);
      000925 75 82 12         [24]  141 	mov	dpl,#0x12
      000928 12 0A 8D         [24]  142 	lcall	_oledSendCommand
                                    143 ;	./src/oled_i2c.c:33: oledSendCommand(0x81);
      00092B 75 82 81         [24]  144 	mov	dpl,#0x81
      00092E 12 0A 8D         [24]  145 	lcall	_oledSendCommand
                                    146 ;	./src/oled_i2c.c:34: oledSendCommand(0x7f);
      000931 75 82 7F         [24]  147 	mov	dpl,#0x7f
      000934 12 0A 8D         [24]  148 	lcall	_oledSendCommand
                                    149 ;	./src/oled_i2c.c:35: oledSendCommand(0xa4);
      000937 75 82 A4         [24]  150 	mov	dpl,#0xa4
      00093A 12 0A 8D         [24]  151 	lcall	_oledSendCommand
                                    152 ;	./src/oled_i2c.c:36: oledSendCommand(0xa6);
      00093D 75 82 A6         [24]  153 	mov	dpl,#0xa6
      000940 12 0A 8D         [24]  154 	lcall	_oledSendCommand
                                    155 ;	./src/oled_i2c.c:37: oledSendCommand(0xd5);
      000943 75 82 D5         [24]  156 	mov	dpl,#0xd5
      000946 12 0A 8D         [24]  157 	lcall	_oledSendCommand
                                    158 ;	./src/oled_i2c.c:38: oledSendCommand(0x80);
      000949 75 82 80         [24]  159 	mov	dpl,#0x80
      00094C 12 0A 8D         [24]  160 	lcall	_oledSendCommand
                                    161 ;	./src/oled_i2c.c:39: oledSendCommand(0x8d);
      00094F 75 82 8D         [24]  162 	mov	dpl,#0x8d
      000952 12 0A 8D         [24]  163 	lcall	_oledSendCommand
                                    164 ;	./src/oled_i2c.c:40: oledSendCommand(0x14);
      000955 75 82 14         [24]  165 	mov	dpl,#0x14
      000958 12 0A 8D         [24]  166 	lcall	_oledSendCommand
                                    167 ;	./src/oled_i2c.c:41: oledSendCommand(0xaf);
      00095B 75 82 AF         [24]  168 	mov	dpl,#0xaf
      00095E 12 0A 8D         [24]  169 	lcall	_oledSendCommand
                                    170 ;	./src/oled_i2c.c:43: OLED_Clear();  /* Clear the complete LCD during init */
                                    171 ;	./src/oled_i2c.c:44: }
      000961 02 0A 32         [24]  172 	ljmp	_OLED_Clear
                                    173 ;------------------------------------------------------------
                                    174 ;Allocation info for local variables in function 'OLED_DisplayChar'
                                    175 ;------------------------------------------------------------
                                    176 ;ch                        Allocated to registers r7 
                                    177 ;i                         Allocated to registers r5 
                                    178 ;index                     Allocated to registers r6 r7 
                                    179 ;------------------------------------------------------------
                                    180 ;	./src/oled_i2c.c:61: void OLED_DisplayChar(char ch)
                                    181 ;	-----------------------------------------
                                    182 ;	 function OLED_DisplayChar
                                    183 ;	-----------------------------------------
      000964                        184 _OLED_DisplayChar:
      000964 AF 82            [24]  185 	mov	r7,dpl
                                    186 ;	./src/oled_i2c.c:64: int index=0;
      000966 7D 00            [12]  187 	mov	r5,#0x00
      000968 7E 00            [12]  188 	mov	r6,#0x00
                                    189 ;	./src/oled_i2c.c:66: if(ch != '\n') {  /* TODO */ 
      00096A BF 0A 01         [24]  190 	cjne	r7,#0x0a,00193$
      00096D 22               [24]  191 	ret
      00096E                        192 00193$:
                                    193 ;	./src/oled_i2c.c:68: if(ch == ' ') index = 0;
      00096E BF 20 06         [24]  194 	cjne	r7,#0x20,00123$
      000971 7D 00            [12]  195 	mov	r5,#0x00
      000973 7E 00            [12]  196 	mov	r6,#0x00
      000975 80 4C            [24]  197 	sjmp	00124$
      000977                        198 00123$:
                                    199 ;	./src/oled_i2c.c:69: else if(ch == '-') index = 1;
      000977 BF 2D 06         [24]  200 	cjne	r7,#0x2d,00120$
      00097A 7D 01            [12]  201 	mov	r5,#0x01
      00097C 7E 00            [12]  202 	mov	r6,#0x00
      00097E 80 43            [24]  203 	sjmp	00124$
      000980                        204 00120$:
                                    205 ;	./src/oled_i2c.c:70: else if(ch >= 0x30 && ch <= 0x39) index = (ch - 0x2e);
      000980 BF 30 00         [24]  206 	cjne	r7,#0x30,00198$
      000983                        207 00198$:
      000983 40 13            [24]  208 	jc	00116$
      000985 EF               [12]  209 	mov	a,r7
      000986 24 C6            [12]  210 	add	a,#0xff - 0x39
      000988 40 0E            [24]  211 	jc	00116$
      00098A 8F 03            [24]  212 	mov	ar3,r7
      00098C 7C 00            [12]  213 	mov	r4,#0x00
      00098E EB               [12]  214 	mov	a,r3
      00098F 24 D2            [12]  215 	add	a,#0xd2
      000991 FD               [12]  216 	mov	r5,a
      000992 EC               [12]  217 	mov	a,r4
      000993 34 FF            [12]  218 	addc	a,#0xff
      000995 FE               [12]  219 	mov	r6,a
      000996 80 2B            [24]  220 	sjmp	00124$
      000998                        221 00116$:
                                    222 ;	./src/oled_i2c.c:71: else if(ch == 'A') index = 12;
      000998 BF 41 06         [24]  223 	cjne	r7,#0x41,00113$
      00099B 7D 0C            [12]  224 	mov	r5,#0x0c
      00099D 7E 00            [12]  225 	mov	r6,#0x00
      00099F 80 22            [24]  226 	sjmp	00124$
      0009A1                        227 00113$:
                                    228 ;	./src/oled_i2c.c:72: else if(ch == 'G') index = 13;
      0009A1 BF 47 06         [24]  229 	cjne	r7,#0x47,00110$
      0009A4 7D 0D            [12]  230 	mov	r5,#0x0d
      0009A6 7E 00            [12]  231 	mov	r6,#0x00
      0009A8 80 19            [24]  232 	sjmp	00124$
      0009AA                        233 00110$:
                                    234 ;	./src/oled_i2c.c:73: else if(ch == 'X') index = 14;
      0009AA BF 58 06         [24]  235 	cjne	r7,#0x58,00107$
      0009AD 7D 0E            [12]  236 	mov	r5,#0x0e
      0009AF 7E 00            [12]  237 	mov	r6,#0x00
      0009B1 80 10            [24]  238 	sjmp	00124$
      0009B3                        239 00107$:
                                    240 ;	./src/oled_i2c.c:74: else if(ch == 'Y') index = 15;
      0009B3 BF 59 06         [24]  241 	cjne	r7,#0x59,00104$
      0009B6 7D 0F            [12]  242 	mov	r5,#0x0f
      0009B8 7E 00            [12]  243 	mov	r6,#0x00
      0009BA 80 07            [24]  244 	sjmp	00124$
      0009BC                        245 00104$:
                                    246 ;	./src/oled_i2c.c:75: else if(ch == 'Z') index = 16;
      0009BC BF 5A 04         [24]  247 	cjne	r7,#0x5a,00124$
      0009BF 7D 10            [12]  248 	mov	r5,#0x10
      0009C1 7E 00            [12]  249 	mov	r6,#0x00
      0009C3                        250 00124$:
                                    251 ;	./src/oled_i2c.c:77: index = index * 5; // As the lookup table starts from Space(0x20)
      0009C3 8D 40            [24]  252 	mov	__mulint_PARM_2,r5
      0009C5 8E 41            [24]  253 	mov	(__mulint_PARM_2 + 1),r6
      0009C7 90 00 05         [24]  254 	mov	dptr,#0x0005
      0009CA 12 0B 9B         [24]  255 	lcall	__mulint
      0009CD AE 82            [24]  256 	mov	r6,dpl
      0009CF AF 83            [24]  257 	mov	r7,dph
                                    258 ;	./src/oled_i2c.c:79: for(i = 0; i < 5; i ++)
      0009D1 7D 00            [12]  259 	mov	r5,#0x00
      0009D3                        260 00128$:
                                    261 ;	./src/oled_i2c.c:80: oledSendData(OledFontTable[index + i]); /* Get the data to be displayed for LookUptable*/
      0009D3 8E 04            [24]  262 	mov	ar4,r6
      0009D5 8D 03            [24]  263 	mov	ar3,r5
      0009D7 EB               [12]  264 	mov	a,r3
      0009D8 2C               [12]  265 	add	a,r4
      0009D9 FC               [12]  266 	mov	r4,a
      0009DA 33               [12]  267 	rlc	a
      0009DB 95 E0            [12]  268 	subb	a,acc
      0009DD FB               [12]  269 	mov	r3,a
      0009DE EC               [12]  270 	mov	a,r4
      0009DF 24 D4            [12]  271 	add	a,#_OledFontTable
      0009E1 F5 82            [12]  272 	mov	dpl,a
      0009E3 EB               [12]  273 	mov	a,r3
      0009E4 34 0C            [12]  274 	addc	a,#(_OledFontTable >> 8)
      0009E6 F5 83            [12]  275 	mov	dph,a
      0009E8 E4               [12]  276 	clr	a
      0009E9 93               [24]  277 	movc	a,@a+dptr
      0009EA F5 82            [12]  278 	mov	dpl,a
      0009EC C0 07            [24]  279 	push	ar7
      0009EE C0 06            [24]  280 	push	ar6
      0009F0 C0 05            [24]  281 	push	ar5
      0009F2 12 0A 99         [24]  282 	lcall	_oledSendData
      0009F5 D0 05            [24]  283 	pop	ar5
      0009F7 D0 06            [24]  284 	pop	ar6
      0009F9 D0 07            [24]  285 	pop	ar7
                                    286 ;	./src/oled_i2c.c:79: for(i = 0; i < 5; i ++)
      0009FB 0D               [12]  287 	inc	r5
      0009FC BD 05 00         [24]  288 	cjne	r5,#0x05,00211$
      0009FF                        289 00211$:
      0009FF 40 D2            [24]  290 	jc	00128$
                                    291 ;	./src/oled_i2c.c:82: oledSendData(0x00); /* Display the data and keep track of cursor */
      000A01 75 82 00         [24]  292 	mov	dpl,#0x00
                                    293 ;	./src/oled_i2c.c:84: }
      000A04 02 0A 99         [24]  294 	ljmp	_oledSendData
                                    295 ;------------------------------------------------------------
                                    296 ;Allocation info for local variables in function 'OLED_DisplayString'
                                    297 ;------------------------------------------------------------
                                    298 ;ptr                       Allocated to registers 
                                    299 ;------------------------------------------------------------
                                    300 ;	./src/oled_i2c.c:104: void OLED_DisplayString(uint8_t *ptr)
                                    301 ;	-----------------------------------------
                                    302 ;	 function OLED_DisplayString
                                    303 ;	-----------------------------------------
      000A07                        304 _OLED_DisplayString:
      000A07 AD 82            [24]  305 	mov	r5,dpl
      000A09 AE 83            [24]  306 	mov	r6,dph
      000A0B AF F0            [24]  307 	mov	r7,b
                                    308 ;	./src/oled_i2c.c:106: while(*ptr)
      000A0D                        309 00101$:
      000A0D 8D 82            [24]  310 	mov	dpl,r5
      000A0F 8E 83            [24]  311 	mov	dph,r6
      000A11 8F F0            [24]  312 	mov	b,r7
      000A13 12 0C 2E         [24]  313 	lcall	__gptrget
      000A16 FC               [12]  314 	mov	r4,a
      000A17 60 18            [24]  315 	jz	00104$
                                    316 ;	./src/oled_i2c.c:107: OLED_DisplayChar(*ptr++);
      000A19 8C 82            [24]  317 	mov	dpl,r4
      000A1B 0D               [12]  318 	inc	r5
      000A1C BD 00 01         [24]  319 	cjne	r5,#0x00,00116$
      000A1F 0E               [12]  320 	inc	r6
      000A20                        321 00116$:
      000A20 C0 07            [24]  322 	push	ar7
      000A22 C0 06            [24]  323 	push	ar6
      000A24 C0 05            [24]  324 	push	ar5
      000A26 12 09 64         [24]  325 	lcall	_OLED_DisplayChar
      000A29 D0 05            [24]  326 	pop	ar5
      000A2B D0 06            [24]  327 	pop	ar6
      000A2D D0 07            [24]  328 	pop	ar7
      000A2F 80 DC            [24]  329 	sjmp	00101$
      000A31                        330 00104$:
                                    331 ;	./src/oled_i2c.c:108: }
      000A31 22               [24]  332 	ret
                                    333 ;------------------------------------------------------------
                                    334 ;Allocation info for local variables in function 'OLED_Clear'
                                    335 ;------------------------------------------------------------
                                    336 ;oled_clean_col            Allocated to registers r6 
                                    337 ;oled_clean_page           Allocated to registers r7 
                                    338 ;------------------------------------------------------------
                                    339 ;	./src/oled_i2c.c:120: void OLED_Clear(void)
                                    340 ;	-----------------------------------------
                                    341 ;	 function OLED_Clear
                                    342 ;	-----------------------------------------
      000A32                        343 _OLED_Clear:
                                    344 ;	./src/oled_i2c.c:123: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page ++) {
      000A32 7F 00            [12]  345 	mov	r7,#0x00
      000A34                        346 00105$:
                                    347 ;	./src/oled_i2c.c:124: OLED_SetCursor(oled_clean_page,0);
      000A34 75 1E 00         [24]  348 	mov	_OLED_SetCursor_PARM_2,#0x00
      000A37 8F 82            [24]  349 	mov	dpl,r7
      000A39 C0 07            [24]  350 	push	ar7
      000A3B 12 0A 5D         [24]  351 	lcall	_OLED_SetCursor
      000A3E D0 07            [24]  352 	pop	ar7
                                    353 ;	./src/oled_i2c.c:125: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) {
      000A40 7E 00            [12]  354 	mov	r6,#0x00
      000A42                        355 00103$:
                                    356 ;	./src/oled_i2c.c:126: oledSendData(0);
      000A42 75 82 00         [24]  357 	mov	dpl,#0x00
      000A45 C0 07            [24]  358 	push	ar7
      000A47 C0 06            [24]  359 	push	ar6
      000A49 12 0A 99         [24]  360 	lcall	_oledSendData
      000A4C D0 06            [24]  361 	pop	ar6
      000A4E D0 07            [24]  362 	pop	ar7
                                    363 ;	./src/oled_i2c.c:125: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) {
      000A50 0E               [12]  364 	inc	r6
      000A51 BE 80 00         [24]  365 	cjne	r6,#0x80,00123$
      000A54                        366 00123$:
      000A54 40 EC            [24]  367 	jc	00103$
                                    368 ;	./src/oled_i2c.c:123: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page ++) {
      000A56 0F               [12]  369 	inc	r7
      000A57 BF 08 00         [24]  370 	cjne	r7,#0x08,00125$
      000A5A                        371 00125$:
      000A5A 40 D8            [24]  372 	jc	00105$
                                    373 ;	./src/oled_i2c.c:129: }
      000A5C 22               [24]  374 	ret
                                    375 ;------------------------------------------------------------
                                    376 ;Allocation info for local variables in function 'OLED_SetCursor'
                                    377 ;------------------------------------------------------------
                                    378 ;cursorPosition            Allocated with name '_OLED_SetCursor_PARM_2'
                                    379 ;lineNumber                Allocated to registers r7 
                                    380 ;------------------------------------------------------------
                                    381 ;	./src/oled_i2c.c:145: void OLED_SetCursor(uint8_t lineNumber,uint8_t cursorPosition)
                                    382 ;	-----------------------------------------
                                    383 ;	 function OLED_SetCursor
                                    384 ;	-----------------------------------------
      000A5D                        385 _OLED_SetCursor:
      000A5D AF 82            [24]  386 	mov	r7,dpl
                                    387 ;	./src/oled_i2c.c:147: cursorPosition = cursorPosition + 2;
      000A5F AE 1E            [24]  388 	mov	r6,_OLED_SetCursor_PARM_2
      000A61 74 02            [12]  389 	mov	a,#0x02
      000A63 2E               [12]  390 	add	a,r6
      000A64 F5 1E            [12]  391 	mov	_OLED_SetCursor_PARM_2,a
                                    392 ;	./src/oled_i2c.c:148: oledSendCommand(0x0f&cursorPosition);
      000A66 AE 1E            [24]  393 	mov	r6,_OLED_SetCursor_PARM_2
      000A68 74 0F            [12]  394 	mov	a,#0x0f
      000A6A 5E               [12]  395 	anl	a,r6
      000A6B F5 82            [12]  396 	mov	dpl,a
      000A6D C0 07            [24]  397 	push	ar7
      000A6F C0 06            [24]  398 	push	ar6
      000A71 12 0A 8D         [24]  399 	lcall	_oledSendCommand
      000A74 D0 06            [24]  400 	pop	ar6
                                    401 ;	./src/oled_i2c.c:149: oledSendCommand(0x10|(cursorPosition>>4));
      000A76 EE               [12]  402 	mov	a,r6
      000A77 C4               [12]  403 	swap	a
      000A78 54 0F            [12]  404 	anl	a,#0x0f
      000A7A FE               [12]  405 	mov	r6,a
      000A7B 74 10            [12]  406 	mov	a,#0x10
      000A7D 4E               [12]  407 	orl	a,r6
      000A7E F5 82            [12]  408 	mov	dpl,a
      000A80 12 0A 8D         [24]  409 	lcall	_oledSendCommand
      000A83 D0 07            [24]  410 	pop	ar7
                                    411 ;	./src/oled_i2c.c:150: oledSendCommand(0xb0|lineNumber);
      000A85 74 B0            [12]  412 	mov	a,#0xb0
      000A87 4F               [12]  413 	orl	a,r7
      000A88 F5 82            [12]  414 	mov	dpl,a
                                    415 ;	./src/oled_i2c.c:151: }
      000A8A 02 0A 8D         [24]  416 	ljmp	_oledSendCommand
                                    417 ;------------------------------------------------------------
                                    418 ;Allocation info for local variables in function 'oledSendCommand'
                                    419 ;------------------------------------------------------------
                                    420 ;cmd                       Allocated to registers 
                                    421 ;------------------------------------------------------------
                                    422 ;	./src/oled_i2c.c:156: void oledSendCommand(uint8_t cmd)
                                    423 ;	-----------------------------------------
                                    424 ;	 function oledSendCommand
                                    425 ;	-----------------------------------------
      000A8D                        426 _oledSendCommand:
      000A8D 85 82 3B         [24]  427 	mov	_Single_WriteI2C_PARM_3,dpl
                                    428 ;	./src/oled_i2c.c:158: Single_WriteI2C(OLED_SlaveAddress, SSD1306_COMMAND, cmd);
      000A90 75 3A 00         [24]  429 	mov	_Single_WriteI2C_PARM_2,#0x00
      000A93 75 82 78         [24]  430 	mov	dpl,#0x78
                                    431 ;	./src/oled_i2c.c:159: }
      000A96 02 08 99         [24]  432 	ljmp	_Single_WriteI2C
                                    433 ;------------------------------------------------------------
                                    434 ;Allocation info for local variables in function 'oledSendData'
                                    435 ;------------------------------------------------------------
                                    436 ;cmd                       Allocated to registers 
                                    437 ;------------------------------------------------------------
                                    438 ;	./src/oled_i2c.c:161: void oledSendData(uint8_t cmd)
                                    439 ;	-----------------------------------------
                                    440 ;	 function oledSendData
                                    441 ;	-----------------------------------------
      000A99                        442 _oledSendData:
      000A99 85 82 3B         [24]  443 	mov	_Single_WriteI2C_PARM_3,dpl
                                    444 ;	./src/oled_i2c.c:163: Single_WriteI2C(OLED_SlaveAddress, SSD1306_DATA_CONTINUE, cmd);
      000A9C 75 3A 40         [24]  445 	mov	_Single_WriteI2C_PARM_2,#0x40
      000A9F 75 82 78         [24]  446 	mov	dpl,#0x78
                                    447 ;	./src/oled_i2c.c:164: }
      000AA2 02 08 99         [24]  448 	ljmp	_Single_WriteI2C
                                    449 	.area CSEG    (CODE)
                                    450 	.area CONST   (CODE)
      000CD4                        451 _OledFontTable:
      000CD4 00                     452 	.db #0x00	; 0
      000CD5 00                     453 	.db #0x00	; 0
      000CD6 00                     454 	.db #0x00	; 0
      000CD7 00                     455 	.db #0x00	; 0
      000CD8 00                     456 	.db #0x00	; 0
      000CD9 08                     457 	.db #0x08	; 8
      000CDA 08                     458 	.db #0x08	; 8
      000CDB 08                     459 	.db #0x08	; 8
      000CDC 08                     460 	.db #0x08	; 8
      000CDD 08                     461 	.db #0x08	; 8
      000CDE 3E                     462 	.db #0x3e	; 62
      000CDF 51                     463 	.db #0x51	; 81	'Q'
      000CE0 49                     464 	.db #0x49	; 73	'I'
      000CE1 45                     465 	.db #0x45	; 69	'E'
      000CE2 3E                     466 	.db #0x3e	; 62
      000CE3 00                     467 	.db #0x00	; 0
      000CE4 42                     468 	.db #0x42	; 66	'B'
      000CE5 7F                     469 	.db #0x7f	; 127
      000CE6 40                     470 	.db #0x40	; 64
      000CE7 00                     471 	.db #0x00	; 0
      000CE8 42                     472 	.db #0x42	; 66	'B'
      000CE9 61                     473 	.db #0x61	; 97	'a'
      000CEA 51                     474 	.db #0x51	; 81	'Q'
      000CEB 49                     475 	.db #0x49	; 73	'I'
      000CEC 46                     476 	.db #0x46	; 70	'F'
      000CED 21                     477 	.db #0x21	; 33
      000CEE 41                     478 	.db #0x41	; 65	'A'
      000CEF 45                     479 	.db #0x45	; 69	'E'
      000CF0 4B                     480 	.db #0x4b	; 75	'K'
      000CF1 31                     481 	.db #0x31	; 49	'1'
      000CF2 18                     482 	.db #0x18	; 24
      000CF3 14                     483 	.db #0x14	; 20
      000CF4 12                     484 	.db #0x12	; 18
      000CF5 7F                     485 	.db #0x7f	; 127
      000CF6 10                     486 	.db #0x10	; 16
      000CF7 27                     487 	.db #0x27	; 39
      000CF8 45                     488 	.db #0x45	; 69	'E'
      000CF9 45                     489 	.db #0x45	; 69	'E'
      000CFA 45                     490 	.db #0x45	; 69	'E'
      000CFB 39                     491 	.db #0x39	; 57	'9'
      000CFC 3C                     492 	.db #0x3c	; 60
      000CFD 4A                     493 	.db #0x4a	; 74	'J'
      000CFE 49                     494 	.db #0x49	; 73	'I'
      000CFF 49                     495 	.db #0x49	; 73	'I'
      000D00 30                     496 	.db #0x30	; 48	'0'
      000D01 01                     497 	.db #0x01	; 1
      000D02 71                     498 	.db #0x71	; 113	'q'
      000D03 09                     499 	.db #0x09	; 9
      000D04 05                     500 	.db #0x05	; 5
      000D05 03                     501 	.db #0x03	; 3
      000D06 36                     502 	.db #0x36	; 54	'6'
      000D07 49                     503 	.db #0x49	; 73	'I'
      000D08 49                     504 	.db #0x49	; 73	'I'
      000D09 49                     505 	.db #0x49	; 73	'I'
      000D0A 36                     506 	.db #0x36	; 54	'6'
      000D0B 06                     507 	.db #0x06	; 6
      000D0C 49                     508 	.db #0x49	; 73	'I'
      000D0D 49                     509 	.db #0x49	; 73	'I'
      000D0E 29                     510 	.db #0x29	; 41
      000D0F 1E                     511 	.db #0x1e	; 30
      000D10 7C                     512 	.db #0x7c	; 124
      000D11 12                     513 	.db #0x12	; 18
      000D12 11                     514 	.db #0x11	; 17
      000D13 12                     515 	.db #0x12	; 18
      000D14 7C                     516 	.db #0x7c	; 124
      000D15 3E                     517 	.db #0x3e	; 62
      000D16 41                     518 	.db #0x41	; 65	'A'
      000D17 49                     519 	.db #0x49	; 73	'I'
      000D18 49                     520 	.db #0x49	; 73	'I'
      000D19 7A                     521 	.db #0x7a	; 122	'z'
      000D1A 63                     522 	.db #0x63	; 99	'c'
      000D1B 14                     523 	.db #0x14	; 20
      000D1C 08                     524 	.db #0x08	; 8
      000D1D 14                     525 	.db #0x14	; 20
      000D1E 63                     526 	.db #0x63	; 99	'c'
      000D1F 07                     527 	.db #0x07	; 7
      000D20 08                     528 	.db #0x08	; 8
      000D21 70                     529 	.db #0x70	; 112	'p'
      000D22 08                     530 	.db #0x08	; 8
      000D23 07                     531 	.db #0x07	; 7
      000D24 61                     532 	.db #0x61	; 97	'a'
      000D25 51                     533 	.db #0x51	; 81	'Q'
      000D26 49                     534 	.db #0x49	; 73	'I'
      000D27 45                     535 	.db #0x45	; 69	'E'
      000D28 43                     536 	.db #0x43	; 67	'C'
                                    537 	.area XINIT   (CODE)
                                    538 	.area CABS    (ABS,CODE)
