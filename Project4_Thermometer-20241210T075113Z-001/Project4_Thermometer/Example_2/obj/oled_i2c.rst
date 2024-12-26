                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.2 #14350 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module oled_i2c
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _OledFontTable
                                     12 	.globl _Single_WriteI2C
                                     13 	.globl _CY
                                     14 	.globl _AC
                                     15 	.globl _F0
                                     16 	.globl _RS1
                                     17 	.globl _RS0
                                     18 	.globl _OV
                                     19 	.globl _F1
                                     20 	.globl _P
                                     21 	.globl _PS
                                     22 	.globl _PT1
                                     23 	.globl _PX1
                                     24 	.globl _PT0
                                     25 	.globl _PX0
                                     26 	.globl _RD
                                     27 	.globl _WR
                                     28 	.globl _T1
                                     29 	.globl _T0
                                     30 	.globl _INT1
                                     31 	.globl _INT0
                                     32 	.globl _TXD
                                     33 	.globl _RXD
                                     34 	.globl _P3_7
                                     35 	.globl _P3_6
                                     36 	.globl _P3_5
                                     37 	.globl _P3_4
                                     38 	.globl _P3_3
                                     39 	.globl _P3_2
                                     40 	.globl _P3_1
                                     41 	.globl _P3_0
                                     42 	.globl _EA
                                     43 	.globl _ES
                                     44 	.globl _ET1
                                     45 	.globl _EX1
                                     46 	.globl _ET0
                                     47 	.globl _EX0
                                     48 	.globl _P2_7
                                     49 	.globl _P2_6
                                     50 	.globl _P2_5
                                     51 	.globl _P2_4
                                     52 	.globl _P2_3
                                     53 	.globl _P2_2
                                     54 	.globl _P2_1
                                     55 	.globl _P2_0
                                     56 	.globl _SM0
                                     57 	.globl _SM1
                                     58 	.globl _SM2
                                     59 	.globl _REN
                                     60 	.globl _TB8
                                     61 	.globl _RB8
                                     62 	.globl _TI
                                     63 	.globl _RI
                                     64 	.globl _P1_7
                                     65 	.globl _P1_6
                                     66 	.globl _P1_5
                                     67 	.globl _P1_4
                                     68 	.globl _P1_3
                                     69 	.globl _P1_2
                                     70 	.globl _P1_1
                                     71 	.globl _P1_0
                                     72 	.globl _TF1
                                     73 	.globl _TR1
                                     74 	.globl _TF0
                                     75 	.globl _TR0
                                     76 	.globl _IE1
                                     77 	.globl _IT1
                                     78 	.globl _IE0
                                     79 	.globl _IT0
                                     80 	.globl _P0_7
                                     81 	.globl _P0_6
                                     82 	.globl _P0_5
                                     83 	.globl _P0_4
                                     84 	.globl _P0_3
                                     85 	.globl _P0_2
                                     86 	.globl _P0_1
                                     87 	.globl _P0_0
                                     88 	.globl _B
                                     89 	.globl _ACC
                                     90 	.globl _PSW
                                     91 	.globl _IP
                                     92 	.globl _P3
                                     93 	.globl _IE
                                     94 	.globl _P2
                                     95 	.globl _SBUF
                                     96 	.globl _SCON
                                     97 	.globl _P1
                                     98 	.globl _TH1
                                     99 	.globl _TH0
                                    100 	.globl _TL1
                                    101 	.globl _TL0
                                    102 	.globl _TMOD
                                    103 	.globl _TCON
                                    104 	.globl _PCON
                                    105 	.globl _DPH
                                    106 	.globl _DPL
                                    107 	.globl _SP
                                    108 	.globl _P0
                                    109 	.globl _OLED_SetCursor_PARM_2
                                    110 	.globl _OLED_Init
                                    111 	.globl _OLED_DisplayChar
                                    112 	.globl _OLED_DisplayString
                                    113 	.globl _OLED_Clear
                                    114 	.globl _OLED_SetCursor
                                    115 	.globl _oledSendCommand
                                    116 	.globl _oledSendData
                                    117 ;--------------------------------------------------------
                                    118 ; special function registers
                                    119 ;--------------------------------------------------------
                                    120 	.area RSEG    (ABS,DATA)
      000000                        121 	.org 0x0000
                           000080   122 _P0	=	0x0080
                           000081   123 _SP	=	0x0081
                           000082   124 _DPL	=	0x0082
                           000083   125 _DPH	=	0x0083
                           000087   126 _PCON	=	0x0087
                           000088   127 _TCON	=	0x0088
                           000089   128 _TMOD	=	0x0089
                           00008A   129 _TL0	=	0x008a
                           00008B   130 _TL1	=	0x008b
                           00008C   131 _TH0	=	0x008c
                           00008D   132 _TH1	=	0x008d
                           000090   133 _P1	=	0x0090
                           000098   134 _SCON	=	0x0098
                           000099   135 _SBUF	=	0x0099
                           0000A0   136 _P2	=	0x00a0
                           0000A8   137 _IE	=	0x00a8
                           0000B0   138 _P3	=	0x00b0
                           0000B8   139 _IP	=	0x00b8
                           0000D0   140 _PSW	=	0x00d0
                           0000E0   141 _ACC	=	0x00e0
                           0000F0   142 _B	=	0x00f0
                                    143 ;--------------------------------------------------------
                                    144 ; special function bits
                                    145 ;--------------------------------------------------------
                                    146 	.area RSEG    (ABS,DATA)
      000000                        147 	.org 0x0000
                           000080   148 _P0_0	=	0x0080
                           000081   149 _P0_1	=	0x0081
                           000082   150 _P0_2	=	0x0082
                           000083   151 _P0_3	=	0x0083
                           000084   152 _P0_4	=	0x0084
                           000085   153 _P0_5	=	0x0085
                           000086   154 _P0_6	=	0x0086
                           000087   155 _P0_7	=	0x0087
                           000088   156 _IT0	=	0x0088
                           000089   157 _IE0	=	0x0089
                           00008A   158 _IT1	=	0x008a
                           00008B   159 _IE1	=	0x008b
                           00008C   160 _TR0	=	0x008c
                           00008D   161 _TF0	=	0x008d
                           00008E   162 _TR1	=	0x008e
                           00008F   163 _TF1	=	0x008f
                           000090   164 _P1_0	=	0x0090
                           000091   165 _P1_1	=	0x0091
                           000092   166 _P1_2	=	0x0092
                           000093   167 _P1_3	=	0x0093
                           000094   168 _P1_4	=	0x0094
                           000095   169 _P1_5	=	0x0095
                           000096   170 _P1_6	=	0x0096
                           000097   171 _P1_7	=	0x0097
                           000098   172 _RI	=	0x0098
                           000099   173 _TI	=	0x0099
                           00009A   174 _RB8	=	0x009a
                           00009B   175 _TB8	=	0x009b
                           00009C   176 _REN	=	0x009c
                           00009D   177 _SM2	=	0x009d
                           00009E   178 _SM1	=	0x009e
                           00009F   179 _SM0	=	0x009f
                           0000A0   180 _P2_0	=	0x00a0
                           0000A1   181 _P2_1	=	0x00a1
                           0000A2   182 _P2_2	=	0x00a2
                           0000A3   183 _P2_3	=	0x00a3
                           0000A4   184 _P2_4	=	0x00a4
                           0000A5   185 _P2_5	=	0x00a5
                           0000A6   186 _P2_6	=	0x00a6
                           0000A7   187 _P2_7	=	0x00a7
                           0000A8   188 _EX0	=	0x00a8
                           0000A9   189 _ET0	=	0x00a9
                           0000AA   190 _EX1	=	0x00aa
                           0000AB   191 _ET1	=	0x00ab
                           0000AC   192 _ES	=	0x00ac
                           0000AF   193 _EA	=	0x00af
                           0000B0   194 _P3_0	=	0x00b0
                           0000B1   195 _P3_1	=	0x00b1
                           0000B2   196 _P3_2	=	0x00b2
                           0000B3   197 _P3_3	=	0x00b3
                           0000B4   198 _P3_4	=	0x00b4
                           0000B5   199 _P3_5	=	0x00b5
                           0000B6   200 _P3_6	=	0x00b6
                           0000B7   201 _P3_7	=	0x00b7
                           0000B0   202 _RXD	=	0x00b0
                           0000B1   203 _TXD	=	0x00b1
                           0000B2   204 _INT0	=	0x00b2
                           0000B3   205 _INT1	=	0x00b3
                           0000B4   206 _T0	=	0x00b4
                           0000B5   207 _T1	=	0x00b5
                           0000B6   208 _WR	=	0x00b6
                           0000B7   209 _RD	=	0x00b7
                           0000B8   210 _PX0	=	0x00b8
                           0000B9   211 _PT0	=	0x00b9
                           0000BA   212 _PX1	=	0x00ba
                           0000BB   213 _PT1	=	0x00bb
                           0000BC   214 _PS	=	0x00bc
                           0000D0   215 _P	=	0x00d0
                           0000D1   216 _F1	=	0x00d1
                           0000D2   217 _OV	=	0x00d2
                           0000D3   218 _RS0	=	0x00d3
                           0000D4   219 _RS1	=	0x00d4
                           0000D5   220 _F0	=	0x00d5
                           0000D6   221 _AC	=	0x00d6
                           0000D7   222 _CY	=	0x00d7
                                    223 ;--------------------------------------------------------
                                    224 ; overlayable register banks
                                    225 ;--------------------------------------------------------
                                    226 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        227 	.ds 8
                                    228 ;--------------------------------------------------------
                                    229 ; internal ram data
                                    230 ;--------------------------------------------------------
                                    231 	.area DSEG    (DATA)
      00001C                        232 _OLED_SetCursor_PARM_2:
      00001C                        233 	.ds 1
                                    234 ;--------------------------------------------------------
                                    235 ; overlayable items in internal ram
                                    236 ;--------------------------------------------------------
                                    237 ;--------------------------------------------------------
                                    238 ; indirectly addressable internal ram data
                                    239 ;--------------------------------------------------------
                                    240 	.area ISEG    (DATA)
                                    241 ;--------------------------------------------------------
                                    242 ; absolute internal ram data
                                    243 ;--------------------------------------------------------
                                    244 	.area IABS    (ABS,DATA)
                                    245 	.area IABS    (ABS,DATA)
                                    246 ;--------------------------------------------------------
                                    247 ; bit data
                                    248 ;--------------------------------------------------------
                                    249 	.area BSEG    (BIT)
                                    250 ;--------------------------------------------------------
                                    251 ; paged external ram data
                                    252 ;--------------------------------------------------------
                                    253 	.area PSEG    (PAG,XDATA)
                                    254 ;--------------------------------------------------------
                                    255 ; uninitialized external ram data
                                    256 ;--------------------------------------------------------
                                    257 	.area XSEG    (XDATA)
                                    258 ;--------------------------------------------------------
                                    259 ; absolute external ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area XABS    (ABS,XDATA)
                                    262 ;--------------------------------------------------------
                                    263 ; initialized external ram data
                                    264 ;--------------------------------------------------------
                                    265 	.area XISEG   (XDATA)
                                    266 	.area HOME    (CODE)
                                    267 	.area GSINIT0 (CODE)
                                    268 	.area GSINIT1 (CODE)
                                    269 	.area GSINIT2 (CODE)
                                    270 	.area GSINIT3 (CODE)
                                    271 	.area GSINIT4 (CODE)
                                    272 	.area GSINIT5 (CODE)
                                    273 	.area GSINIT  (CODE)
                                    274 	.area GSFINAL (CODE)
                                    275 	.area CSEG    (CODE)
                                    276 ;--------------------------------------------------------
                                    277 ; global & static initialisations
                                    278 ;--------------------------------------------------------
                                    279 	.area HOME    (CODE)
                                    280 	.area GSINIT  (CODE)
                                    281 	.area GSFINAL (CODE)
                                    282 	.area GSINIT  (CODE)
                                    283 ;--------------------------------------------------------
                                    284 ; Home
                                    285 ;--------------------------------------------------------
                                    286 	.area HOME    (CODE)
                                    287 	.area HOME    (CODE)
                                    288 ;--------------------------------------------------------
                                    289 ; code
                                    290 ;--------------------------------------------------------
                                    291 	.area CSEG    (CODE)
                                    292 ;------------------------------------------------------------
                                    293 ;Allocation info for local variables in function 'OLED_Init'
                                    294 ;------------------------------------------------------------
                                    295 ;	./src/oled_i2c.c:17: void OLED_Init(void) { 
                                    296 ;	-----------------------------------------
                                    297 ;	 function OLED_Init
                                    298 ;	-----------------------------------------
      00068D                        299 _OLED_Init:
                           000007   300 	ar7 = 0x07
                           000006   301 	ar6 = 0x06
                           000005   302 	ar5 = 0x05
                           000004   303 	ar4 = 0x04
                           000003   304 	ar3 = 0x03
                           000002   305 	ar2 = 0x02
                           000001   306 	ar1 = 0x01
                           000000   307 	ar0 = 0x00
                                    308 ;	./src/oled_i2c.c:18: oledSendCommand(0xa8);  //Set MUX Ratio
      00068D 75 82 A8         [24]  309 	mov	dpl,#0xa8
      000690 12 07 D3         [24]  310 	lcall	_oledSendCommand
                                    311 ;	./src/oled_i2c.c:19: oledSendCommand(0x3f);  
      000693 75 82 3F         [24]  312 	mov	dpl,#0x3f
      000696 12 07 D3         [24]  313 	lcall	_oledSendCommand
                                    314 ;	./src/oled_i2c.c:20: oledSendCommand(0xd3);  //Set Display Offset
      000699 75 82 D3         [24]  315 	mov	dpl,#0xd3
      00069C 12 07 D3         [24]  316 	lcall	_oledSendCommand
                                    317 ;	./src/oled_i2c.c:21: oledSendCommand(0x00);  
      00069F 75 82 00         [24]  318 	mov	dpl,#0x00
      0006A2 12 07 D3         [24]  319 	lcall	_oledSendCommand
                                    320 ;	./src/oled_i2c.c:22: oledSendCommand(0x40);  //Set Display Start Line
      0006A5 75 82 40         [24]  321 	mov	dpl,#0x40
      0006A8 12 07 D3         [24]  322 	lcall	_oledSendCommand
                                    323 ;	./src/oled_i2c.c:23: oledSendCommand(0xa1);  //Set Segment re-map A0h/A1h
      0006AB 75 82 A1         [24]  324 	mov	dpl,#0xa1
      0006AE 12 07 D3         [24]  325 	lcall	_oledSendCommand
                                    326 ;	./src/oled_i2c.c:24: oledSendCommand(0xc8);  //Set COM OUTput
      0006B1 75 82 C8         [24]  327 	mov	dpl,#0xc8
      0006B4 12 07 D3         [24]  328 	lcall	_oledSendCommand
                                    329 ;	./src/oled_i2c.c:25: oledSendCommand(0xda); 
      0006B7 75 82 DA         [24]  330 	mov	dpl,#0xda
      0006BA 12 07 D3         [24]  331 	lcall	_oledSendCommand
                                    332 ;	./src/oled_i2c.c:26: oledSendCommand(0x12);
      0006BD 75 82 12         [24]  333 	mov	dpl,#0x12
      0006C0 12 07 D3         [24]  334 	lcall	_oledSendCommand
                                    335 ;	./src/oled_i2c.c:27: oledSendCommand(0x81);
      0006C3 75 82 81         [24]  336 	mov	dpl,#0x81
      0006C6 12 07 D3         [24]  337 	lcall	_oledSendCommand
                                    338 ;	./src/oled_i2c.c:28: oledSendCommand(0x7f);
      0006C9 75 82 7F         [24]  339 	mov	dpl,#0x7f
      0006CC 12 07 D3         [24]  340 	lcall	_oledSendCommand
                                    341 ;	./src/oled_i2c.c:29: oledSendCommand(0xa4);
      0006CF 75 82 A4         [24]  342 	mov	dpl,#0xa4
      0006D2 12 07 D3         [24]  343 	lcall	_oledSendCommand
                                    344 ;	./src/oled_i2c.c:30: oledSendCommand(0xa6);
      0006D5 75 82 A6         [24]  345 	mov	dpl,#0xa6
      0006D8 12 07 D3         [24]  346 	lcall	_oledSendCommand
                                    347 ;	./src/oled_i2c.c:31: oledSendCommand(0xd5);
      0006DB 75 82 D5         [24]  348 	mov	dpl,#0xd5
      0006DE 12 07 D3         [24]  349 	lcall	_oledSendCommand
                                    350 ;	./src/oled_i2c.c:32: oledSendCommand(0x80);
      0006E1 75 82 80         [24]  351 	mov	dpl,#0x80
      0006E4 12 07 D3         [24]  352 	lcall	_oledSendCommand
                                    353 ;	./src/oled_i2c.c:33: oledSendCommand(0x8d);
      0006E7 75 82 8D         [24]  354 	mov	dpl,#0x8d
      0006EA 12 07 D3         [24]  355 	lcall	_oledSendCommand
                                    356 ;	./src/oled_i2c.c:34: oledSendCommand(0x14);
      0006ED 75 82 14         [24]  357 	mov	dpl,#0x14
      0006F0 12 07 D3         [24]  358 	lcall	_oledSendCommand
                                    359 ;	./src/oled_i2c.c:35: oledSendCommand(0xaf);
      0006F3 75 82 AF         [24]  360 	mov	dpl,#0xaf
      0006F6 12 07 D3         [24]  361 	lcall	_oledSendCommand
                                    362 ;	./src/oled_i2c.c:37: OLED_Clear();  // Clear the complete LCD during init 
                                    363 ;	./src/oled_i2c.c:38: }
      0006F9 02 07 78         [24]  364 	ljmp	_OLED_Clear
                                    365 ;------------------------------------------------------------
                                    366 ;Allocation info for local variables in function 'OLED_DisplayChar'
                                    367 ;------------------------------------------------------------
                                    368 ;ch                        Allocated to registers r7 
                                    369 ;i                         Allocated to registers r5 
                                    370 ;index                     Allocated to registers r6 r7 
                                    371 ;------------------------------------------------------------
                                    372 ;	./src/oled_i2c.c:50: void OLED_DisplayChar(uint8_t ch) {
                                    373 ;	-----------------------------------------
                                    374 ;	 function OLED_DisplayChar
                                    375 ;	-----------------------------------------
      0006FC                        376 _OLED_DisplayChar:
      0006FC AF 82            [24]  377 	mov	r7,dpl
                                    378 ;	./src/oled_i2c.c:54: if(ch!='\n') {  /* TODO */ 
      0006FE BF 0A 01         [24]  379 	cjne	r7,#0x0a,00130$
      000701 22               [24]  380 	ret
      000702                        381 00130$:
                                    382 ;	./src/oled_i2c.c:55: index = (ch - 0x20);
      000702 7E 00            [12]  383 	mov	r6,#0x00
      000704 EF               [12]  384 	mov	a,r7
      000705 24 E0            [12]  385 	add	a,#0xe0
      000707 F5 1D            [12]  386 	mov	__mulint_PARM_2,a
      000709 EE               [12]  387 	mov	a,r6
      00070A 34 FF            [12]  388 	addc	a,#0xff
      00070C F5 1E            [12]  389 	mov	(__mulint_PARM_2 + 1),a
                                    390 ;	./src/oled_i2c.c:56: index = index * 5; // As the lookup table starts from Space(0x20)
                                    391 ;	./src/oled_i2c.c:58: for(i = 0; i < 5; i ++)
      00070E 90 00 05         [24]  392 	mov	dptr,#0x0005
      000711 12 08 FA         [24]  393 	lcall	__mulint
      000714 AE 82            [24]  394 	mov	r6,dpl
      000716 AF 83            [24]  395 	mov	r7,dph
      000718 7D 00            [12]  396 	mov	r5,#0x00
      00071A                        397 00104$:
                                    398 ;	./src/oled_i2c.c:59: oledSendData(OledFontTable[index + i]); /* Get the data to be displayed for LookUptable*/
      00071A 8D 03            [24]  399 	mov	ar3,r5
      00071C 7C 00            [12]  400 	mov	r4,#0x00
      00071E EB               [12]  401 	mov	a,r3
      00071F 2E               [12]  402 	add	a,r6
      000720 FB               [12]  403 	mov	r3,a
      000721 EC               [12]  404 	mov	a,r4
      000722 3F               [12]  405 	addc	a,r7
      000723 FC               [12]  406 	mov	r4,a
      000724 EB               [12]  407 	mov	a,r3
      000725 24 CA            [12]  408 	add	a,#_OledFontTable
      000727 F5 82            [12]  409 	mov	dpl,a
      000729 EC               [12]  410 	mov	a,r4
      00072A 34 0C            [12]  411 	addc	a,#(_OledFontTable >> 8)
      00072C F5 83            [12]  412 	mov	dph,a
      00072E E4               [12]  413 	clr	a
      00072F 93               [24]  414 	movc	a,@a+dptr
      000730 F5 82            [12]  415 	mov	dpl,a
      000732 C0 07            [24]  416 	push	ar7
      000734 C0 06            [24]  417 	push	ar6
      000736 C0 05            [24]  418 	push	ar5
      000738 12 07 DF         [24]  419 	lcall	_oledSendData
      00073B D0 05            [24]  420 	pop	ar5
      00073D D0 06            [24]  421 	pop	ar6
      00073F D0 07            [24]  422 	pop	ar7
                                    423 ;	./src/oled_i2c.c:58: for(i = 0; i < 5; i ++)
      000741 0D               [12]  424 	inc	r5
      000742 BD 05 00         [24]  425 	cjne	r5,#0x05,00131$
      000745                        426 00131$:
      000745 40 D3            [24]  427 	jc	00104$
                                    428 ;	./src/oled_i2c.c:61: oledSendData(0x00); /* Display the data and keep track of cursor */
      000747 75 82 00         [24]  429 	mov	dpl,#0x00
                                    430 ;	./src/oled_i2c.c:63: }
      00074A 02 07 DF         [24]  431 	ljmp	_oledSendData
                                    432 ;------------------------------------------------------------
                                    433 ;Allocation info for local variables in function 'OLED_DisplayString'
                                    434 ;------------------------------------------------------------
                                    435 ;ptr                       Allocated to registers 
                                    436 ;------------------------------------------------------------
                                    437 ;	./src/oled_i2c.c:79: void OLED_DisplayString(uint8_t *ptr)
                                    438 ;	-----------------------------------------
                                    439 ;	 function OLED_DisplayString
                                    440 ;	-----------------------------------------
      00074D                        441 _OLED_DisplayString:
      00074D AD 82            [24]  442 	mov	r5,dpl
      00074F AE 83            [24]  443 	mov	r6,dph
      000751 AF F0            [24]  444 	mov	r7,b
                                    445 ;	./src/oled_i2c.c:81: while(*ptr)
      000753                        446 00101$:
      000753 8D 82            [24]  447 	mov	dpl,r5
      000755 8E 83            [24]  448 	mov	dph,r6
      000757 8F F0            [24]  449 	mov	b,r7
      000759 12 0B 52         [24]  450 	lcall	__gptrget
      00075C FC               [12]  451 	mov	r4,a
      00075D 60 18            [24]  452 	jz	00104$
                                    453 ;	./src/oled_i2c.c:82: OLED_DisplayChar(*ptr++);
      00075F 8C 82            [24]  454 	mov	dpl,r4
      000761 0D               [12]  455 	inc	r5
      000762 BD 00 01         [24]  456 	cjne	r5,#0x00,00120$
      000765 0E               [12]  457 	inc	r6
      000766                        458 00120$:
      000766 C0 07            [24]  459 	push	ar7
      000768 C0 06            [24]  460 	push	ar6
      00076A C0 05            [24]  461 	push	ar5
      00076C 12 06 FC         [24]  462 	lcall	_OLED_DisplayChar
      00076F D0 05            [24]  463 	pop	ar5
      000771 D0 06            [24]  464 	pop	ar6
      000773 D0 07            [24]  465 	pop	ar7
      000775 80 DC            [24]  466 	sjmp	00101$
      000777                        467 00104$:
                                    468 ;	./src/oled_i2c.c:83: }
      000777 22               [24]  469 	ret
                                    470 ;------------------------------------------------------------
                                    471 ;Allocation info for local variables in function 'OLED_Clear'
                                    472 ;------------------------------------------------------------
                                    473 ;oled_clean_col            Allocated to registers r6 
                                    474 ;oled_clean_page           Allocated to registers r7 
                                    475 ;------------------------------------------------------------
                                    476 ;	./src/oled_i2c.c:94: void OLED_Clear(void)
                                    477 ;	-----------------------------------------
                                    478 ;	 function OLED_Clear
                                    479 ;	-----------------------------------------
      000778                        480 _OLED_Clear:
                                    481 ;	./src/oled_i2c.c:97: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page ++) {
      000778 7F 00            [12]  482 	mov	r7,#0x00
      00077A                        483 00105$:
                                    484 ;	./src/oled_i2c.c:98: OLED_SetCursor(oled_clean_page,0);
      00077A 75 1C 00         [24]  485 	mov	_OLED_SetCursor_PARM_2,#0x00
      00077D 8F 82            [24]  486 	mov	dpl,r7
      00077F C0 07            [24]  487 	push	ar7
      000781 12 07 A3         [24]  488 	lcall	_OLED_SetCursor
      000784 D0 07            [24]  489 	pop	ar7
                                    490 ;	./src/oled_i2c.c:99: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) {
      000786 7E 00            [12]  491 	mov	r6,#0x00
      000788                        492 00103$:
                                    493 ;	./src/oled_i2c.c:100: oledSendData(0);
      000788 75 82 00         [24]  494 	mov	dpl,#0x00
      00078B C0 07            [24]  495 	push	ar7
      00078D C0 06            [24]  496 	push	ar6
      00078F 12 07 DF         [24]  497 	lcall	_oledSendData
      000792 D0 06            [24]  498 	pop	ar6
      000794 D0 07            [24]  499 	pop	ar7
                                    500 ;	./src/oled_i2c.c:99: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) {
      000796 0E               [12]  501 	inc	r6
      000797 BE 80 00         [24]  502 	cjne	r6,#0x80,00129$
      00079A                        503 00129$:
      00079A 40 EC            [24]  504 	jc	00103$
                                    505 ;	./src/oled_i2c.c:97: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page ++) {
      00079C 0F               [12]  506 	inc	r7
      00079D BF 08 00         [24]  507 	cjne	r7,#0x08,00131$
      0007A0                        508 00131$:
      0007A0 40 D8            [24]  509 	jc	00105$
                                    510 ;	./src/oled_i2c.c:103: }
      0007A2 22               [24]  511 	ret
                                    512 ;------------------------------------------------------------
                                    513 ;Allocation info for local variables in function 'OLED_SetCursor'
                                    514 ;------------------------------------------------------------
                                    515 ;cursorPosition            Allocated with name '_OLED_SetCursor_PARM_2'
                                    516 ;lineNumber                Allocated to registers r7 
                                    517 ;------------------------------------------------------------
                                    518 ;	./src/oled_i2c.c:120: void OLED_SetCursor(uint8_t lineNumber,uint8_t cursorPosition)
                                    519 ;	-----------------------------------------
                                    520 ;	 function OLED_SetCursor
                                    521 ;	-----------------------------------------
      0007A3                        522 _OLED_SetCursor:
      0007A3 AF 82            [24]  523 	mov	r7,dpl
                                    524 ;	./src/oled_i2c.c:122: cursorPosition = cursorPosition + 2;
      0007A5 AE 1C            [24]  525 	mov	r6,_OLED_SetCursor_PARM_2
      0007A7 74 02            [12]  526 	mov	a,#0x02
      0007A9 2E               [12]  527 	add	a,r6
      0007AA F5 1C            [12]  528 	mov	_OLED_SetCursor_PARM_2,a
                                    529 ;	./src/oled_i2c.c:123: oledSendCommand(0x0f&cursorPosition); // Select SEG lower 4 bits
      0007AC AE 1C            [24]  530 	mov	r6,_OLED_SetCursor_PARM_2
      0007AE 74 0F            [12]  531 	mov	a,#0x0f
      0007B0 5E               [12]  532 	anl	a,r6
      0007B1 F5 82            [12]  533 	mov	dpl,a
      0007B3 C0 07            [24]  534 	push	ar7
      0007B5 C0 06            [24]  535 	push	ar6
      0007B7 12 07 D3         [24]  536 	lcall	_oledSendCommand
      0007BA D0 06            [24]  537 	pop	ar6
                                    538 ;	./src/oled_i2c.c:124: oledSendCommand(0x10|(cursorPosition>>4)); // Select SEG higher 4 bits
      0007BC EE               [12]  539 	mov	a,r6
      0007BD C4               [12]  540 	swap	a
      0007BE 54 0F            [12]  541 	anl	a,#0x0f
      0007C0 FE               [12]  542 	mov	r6,a
      0007C1 74 10            [12]  543 	mov	a,#0x10
      0007C3 4E               [12]  544 	orl	a,r6
      0007C4 F5 82            [12]  545 	mov	dpl,a
      0007C6 12 07 D3         [24]  546 	lcall	_oledSendCommand
      0007C9 D0 07            [24]  547 	pop	ar7
                                    548 ;	./src/oled_i2c.c:125: oledSendCommand(0xb0|lineNumber); // Select PAGE
      0007CB 74 B0            [12]  549 	mov	a,#0xb0
      0007CD 4F               [12]  550 	orl	a,r7
      0007CE F5 82            [12]  551 	mov	dpl,a
                                    552 ;	./src/oled_i2c.c:126: }
      0007D0 02 07 D3         [24]  553 	ljmp	_oledSendCommand
                                    554 ;------------------------------------------------------------
                                    555 ;Allocation info for local variables in function 'oledSendCommand'
                                    556 ;------------------------------------------------------------
                                    557 ;cmd                       Allocated to registers 
                                    558 ;------------------------------------------------------------
                                    559 ;	./src/oled_i2c.c:131: void oledSendCommand(uint8_t cmd)
                                    560 ;	-----------------------------------------
                                    561 ;	 function oledSendCommand
                                    562 ;	-----------------------------------------
      0007D3                        563 _oledSendCommand:
      0007D3 85 82 1A         [24]  564 	mov	_Single_WriteI2C_PARM_3,dpl
                                    565 ;	./src/oled_i2c.c:133: Single_WriteI2C(OLED_SlaveAddress, SSD1306_COMMAND, cmd);
      0007D6 75 19 00         [24]  566 	mov	_Single_WriteI2C_PARM_2,#0x00
      0007D9 75 82 78         [24]  567 	mov	dpl,#0x78
                                    568 ;	./src/oled_i2c.c:134: }
      0007DC 02 06 1A         [24]  569 	ljmp	_Single_WriteI2C
                                    570 ;------------------------------------------------------------
                                    571 ;Allocation info for local variables in function 'oledSendData'
                                    572 ;------------------------------------------------------------
                                    573 ;cmd                       Allocated to registers 
                                    574 ;------------------------------------------------------------
                                    575 ;	./src/oled_i2c.c:136: void oledSendData(uint8_t cmd)
                                    576 ;	-----------------------------------------
                                    577 ;	 function oledSendData
                                    578 ;	-----------------------------------------
      0007DF                        579 _oledSendData:
      0007DF 85 82 1A         [24]  580 	mov	_Single_WriteI2C_PARM_3,dpl
                                    581 ;	./src/oled_i2c.c:138: Single_WriteI2C(OLED_SlaveAddress, SSD1306_DATA_CONTINUE, cmd);
      0007E2 75 19 40         [24]  582 	mov	_Single_WriteI2C_PARM_2,#0x40
      0007E5 75 82 78         [24]  583 	mov	dpl,#0x78
                                    584 ;	./src/oled_i2c.c:139: }
      0007E8 02 06 1A         [24]  585 	ljmp	_Single_WriteI2C
                                    586 	.area CSEG    (CODE)
                                    587 	.area CONST   (CODE)
      000CCA                        588 _OledFontTable:
      000CCA 00                     589 	.db #0x00	; 0
      000CCB 00                     590 	.db #0x00	; 0
      000CCC 00                     591 	.db #0x00	; 0
      000CCD 00                     592 	.db #0x00	; 0
      000CCE 00                     593 	.db #0x00	; 0
      000CCF 00                     594 	.db #0x00	; 0
      000CD0 00                     595 	.db #0x00	; 0
      000CD1 2F                     596 	.db #0x2f	; 47
      000CD2 00                     597 	.db #0x00	; 0
      000CD3 00                     598 	.db #0x00	; 0
      000CD4 00                     599 	.db #0x00	; 0
      000CD5 07                     600 	.db #0x07	; 7
      000CD6 00                     601 	.db #0x00	; 0
      000CD7 07                     602 	.db #0x07	; 7
      000CD8 00                     603 	.db #0x00	; 0
      000CD9 14                     604 	.db #0x14	; 20
      000CDA 7F                     605 	.db #0x7f	; 127
      000CDB 14                     606 	.db #0x14	; 20
      000CDC 7F                     607 	.db #0x7f	; 127
      000CDD 14                     608 	.db #0x14	; 20
      000CDE 24                     609 	.db #0x24	; 36
      000CDF 2A                     610 	.db #0x2a	; 42
      000CE0 7F                     611 	.db #0x7f	; 127
      000CE1 2A                     612 	.db #0x2a	; 42
      000CE2 12                     613 	.db #0x12	; 18
      000CE3 23                     614 	.db #0x23	; 35
      000CE4 13                     615 	.db #0x13	; 19
      000CE5 08                     616 	.db #0x08	; 8
      000CE6 64                     617 	.db #0x64	; 100	'd'
      000CE7 62                     618 	.db #0x62	; 98	'b'
      000CE8 36                     619 	.db #0x36	; 54	'6'
      000CE9 49                     620 	.db #0x49	; 73	'I'
      000CEA 55                     621 	.db #0x55	; 85	'U'
      000CEB 22                     622 	.db #0x22	; 34
      000CEC 50                     623 	.db #0x50	; 80	'P'
      000CED 00                     624 	.db #0x00	; 0
      000CEE 05                     625 	.db #0x05	; 5
      000CEF 03                     626 	.db #0x03	; 3
      000CF0 00                     627 	.db #0x00	; 0
      000CF1 00                     628 	.db #0x00	; 0
      000CF2 00                     629 	.db #0x00	; 0
      000CF3 1C                     630 	.db #0x1c	; 28
      000CF4 22                     631 	.db #0x22	; 34
      000CF5 41                     632 	.db #0x41	; 65	'A'
      000CF6 00                     633 	.db #0x00	; 0
      000CF7 00                     634 	.db #0x00	; 0
      000CF8 41                     635 	.db #0x41	; 65	'A'
      000CF9 22                     636 	.db #0x22	; 34
      000CFA 1C                     637 	.db #0x1c	; 28
      000CFB 00                     638 	.db #0x00	; 0
      000CFC 14                     639 	.db #0x14	; 20
      000CFD 08                     640 	.db #0x08	; 8
      000CFE 3E                     641 	.db #0x3e	; 62
      000CFF 08                     642 	.db #0x08	; 8
      000D00 14                     643 	.db #0x14	; 20
      000D01 08                     644 	.db #0x08	; 8
      000D02 08                     645 	.db #0x08	; 8
      000D03 3E                     646 	.db #0x3e	; 62
      000D04 08                     647 	.db #0x08	; 8
      000D05 08                     648 	.db #0x08	; 8
      000D06 00                     649 	.db #0x00	; 0
      000D07 00                     650 	.db #0x00	; 0
      000D08 A0                     651 	.db #0xa0	; 160
      000D09 60                     652 	.db #0x60	; 96
      000D0A 00                     653 	.db #0x00	; 0
      000D0B 08                     654 	.db #0x08	; 8
      000D0C 08                     655 	.db #0x08	; 8
      000D0D 08                     656 	.db #0x08	; 8
      000D0E 08                     657 	.db #0x08	; 8
      000D0F 08                     658 	.db #0x08	; 8
      000D10 00                     659 	.db #0x00	; 0
      000D11 60                     660 	.db #0x60	; 96
      000D12 60                     661 	.db #0x60	; 96
      000D13 00                     662 	.db #0x00	; 0
      000D14 00                     663 	.db #0x00	; 0
      000D15 20                     664 	.db #0x20	; 32
      000D16 10                     665 	.db #0x10	; 16
      000D17 08                     666 	.db #0x08	; 8
      000D18 04                     667 	.db #0x04	; 4
      000D19 02                     668 	.db #0x02	; 2
      000D1A 3E                     669 	.db #0x3e	; 62
      000D1B 51                     670 	.db #0x51	; 81	'Q'
      000D1C 49                     671 	.db #0x49	; 73	'I'
      000D1D 45                     672 	.db #0x45	; 69	'E'
      000D1E 3E                     673 	.db #0x3e	; 62
      000D1F 00                     674 	.db #0x00	; 0
      000D20 42                     675 	.db #0x42	; 66	'B'
      000D21 7F                     676 	.db #0x7f	; 127
      000D22 40                     677 	.db #0x40	; 64
      000D23 00                     678 	.db #0x00	; 0
      000D24 42                     679 	.db #0x42	; 66	'B'
      000D25 61                     680 	.db #0x61	; 97	'a'
      000D26 51                     681 	.db #0x51	; 81	'Q'
      000D27 49                     682 	.db #0x49	; 73	'I'
      000D28 46                     683 	.db #0x46	; 70	'F'
      000D29 21                     684 	.db #0x21	; 33
      000D2A 41                     685 	.db #0x41	; 65	'A'
      000D2B 45                     686 	.db #0x45	; 69	'E'
      000D2C 4B                     687 	.db #0x4b	; 75	'K'
      000D2D 31                     688 	.db #0x31	; 49	'1'
      000D2E 18                     689 	.db #0x18	; 24
      000D2F 14                     690 	.db #0x14	; 20
      000D30 12                     691 	.db #0x12	; 18
      000D31 7F                     692 	.db #0x7f	; 127
      000D32 10                     693 	.db #0x10	; 16
      000D33 27                     694 	.db #0x27	; 39
      000D34 45                     695 	.db #0x45	; 69	'E'
      000D35 45                     696 	.db #0x45	; 69	'E'
      000D36 45                     697 	.db #0x45	; 69	'E'
      000D37 39                     698 	.db #0x39	; 57	'9'
      000D38 3C                     699 	.db #0x3c	; 60
      000D39 4A                     700 	.db #0x4a	; 74	'J'
      000D3A 49                     701 	.db #0x49	; 73	'I'
      000D3B 49                     702 	.db #0x49	; 73	'I'
      000D3C 30                     703 	.db #0x30	; 48	'0'
      000D3D 01                     704 	.db #0x01	; 1
      000D3E 71                     705 	.db #0x71	; 113	'q'
      000D3F 09                     706 	.db #0x09	; 9
      000D40 05                     707 	.db #0x05	; 5
      000D41 03                     708 	.db #0x03	; 3
      000D42 36                     709 	.db #0x36	; 54	'6'
      000D43 49                     710 	.db #0x49	; 73	'I'
      000D44 49                     711 	.db #0x49	; 73	'I'
      000D45 49                     712 	.db #0x49	; 73	'I'
      000D46 36                     713 	.db #0x36	; 54	'6'
      000D47 06                     714 	.db #0x06	; 6
      000D48 49                     715 	.db #0x49	; 73	'I'
      000D49 49                     716 	.db #0x49	; 73	'I'
      000D4A 29                     717 	.db #0x29	; 41
      000D4B 1E                     718 	.db #0x1e	; 30
      000D4C 00                     719 	.db #0x00	; 0
      000D4D 36                     720 	.db #0x36	; 54	'6'
      000D4E 36                     721 	.db #0x36	; 54	'6'
      000D4F 00                     722 	.db #0x00	; 0
      000D50 00                     723 	.db #0x00	; 0
      000D51 00                     724 	.db #0x00	; 0
      000D52 56                     725 	.db #0x56	; 86	'V'
      000D53 36                     726 	.db #0x36	; 54	'6'
      000D54 00                     727 	.db #0x00	; 0
      000D55 00                     728 	.db #0x00	; 0
      000D56 08                     729 	.db #0x08	; 8
      000D57 14                     730 	.db #0x14	; 20
      000D58 22                     731 	.db #0x22	; 34
      000D59 41                     732 	.db #0x41	; 65	'A'
      000D5A 00                     733 	.db #0x00	; 0
      000D5B 14                     734 	.db #0x14	; 20
      000D5C 14                     735 	.db #0x14	; 20
      000D5D 14                     736 	.db #0x14	; 20
      000D5E 14                     737 	.db #0x14	; 20
      000D5F 14                     738 	.db #0x14	; 20
      000D60 00                     739 	.db #0x00	; 0
      000D61 41                     740 	.db #0x41	; 65	'A'
      000D62 22                     741 	.db #0x22	; 34
      000D63 14                     742 	.db #0x14	; 20
      000D64 08                     743 	.db #0x08	; 8
      000D65 02                     744 	.db #0x02	; 2
      000D66 01                     745 	.db #0x01	; 1
      000D67 51                     746 	.db #0x51	; 81	'Q'
      000D68 09                     747 	.db #0x09	; 9
      000D69 06                     748 	.db #0x06	; 6
      000D6A 32                     749 	.db #0x32	; 50	'2'
      000D6B 49                     750 	.db #0x49	; 73	'I'
      000D6C 59                     751 	.db #0x59	; 89	'Y'
      000D6D 51                     752 	.db #0x51	; 81	'Q'
      000D6E 3E                     753 	.db #0x3e	; 62
      000D6F 7C                     754 	.db #0x7c	; 124
      000D70 12                     755 	.db #0x12	; 18
      000D71 11                     756 	.db #0x11	; 17
      000D72 12                     757 	.db #0x12	; 18
      000D73 7C                     758 	.db #0x7c	; 124
      000D74 7F                     759 	.db #0x7f	; 127
      000D75 49                     760 	.db #0x49	; 73	'I'
      000D76 49                     761 	.db #0x49	; 73	'I'
      000D77 49                     762 	.db #0x49	; 73	'I'
      000D78 36                     763 	.db #0x36	; 54	'6'
      000D79 3E                     764 	.db #0x3e	; 62
      000D7A 41                     765 	.db #0x41	; 65	'A'
      000D7B 41                     766 	.db #0x41	; 65	'A'
      000D7C 41                     767 	.db #0x41	; 65	'A'
      000D7D 22                     768 	.db #0x22	; 34
      000D7E 7F                     769 	.db #0x7f	; 127
      000D7F 41                     770 	.db #0x41	; 65	'A'
      000D80 41                     771 	.db #0x41	; 65	'A'
      000D81 22                     772 	.db #0x22	; 34
      000D82 1C                     773 	.db #0x1c	; 28
      000D83 7F                     774 	.db #0x7f	; 127
      000D84 49                     775 	.db #0x49	; 73	'I'
      000D85 49                     776 	.db #0x49	; 73	'I'
      000D86 49                     777 	.db #0x49	; 73	'I'
      000D87 41                     778 	.db #0x41	; 65	'A'
      000D88 7F                     779 	.db #0x7f	; 127
      000D89 09                     780 	.db #0x09	; 9
      000D8A 09                     781 	.db #0x09	; 9
      000D8B 09                     782 	.db #0x09	; 9
      000D8C 01                     783 	.db #0x01	; 1
      000D8D 3E                     784 	.db #0x3e	; 62
      000D8E 41                     785 	.db #0x41	; 65	'A'
      000D8F 49                     786 	.db #0x49	; 73	'I'
      000D90 49                     787 	.db #0x49	; 73	'I'
      000D91 7A                     788 	.db #0x7a	; 122	'z'
      000D92 7F                     789 	.db #0x7f	; 127
      000D93 08                     790 	.db #0x08	; 8
      000D94 08                     791 	.db #0x08	; 8
      000D95 08                     792 	.db #0x08	; 8
      000D96 7F                     793 	.db #0x7f	; 127
      000D97 00                     794 	.db #0x00	; 0
      000D98 41                     795 	.db #0x41	; 65	'A'
      000D99 7F                     796 	.db #0x7f	; 127
      000D9A 41                     797 	.db #0x41	; 65	'A'
      000D9B 00                     798 	.db #0x00	; 0
      000D9C 20                     799 	.db #0x20	; 32
      000D9D 40                     800 	.db #0x40	; 64
      000D9E 41                     801 	.db #0x41	; 65	'A'
      000D9F 3F                     802 	.db #0x3f	; 63
      000DA0 01                     803 	.db #0x01	; 1
      000DA1 7F                     804 	.db #0x7f	; 127
      000DA2 08                     805 	.db #0x08	; 8
      000DA3 14                     806 	.db #0x14	; 20
      000DA4 22                     807 	.db #0x22	; 34
      000DA5 41                     808 	.db #0x41	; 65	'A'
      000DA6 7F                     809 	.db #0x7f	; 127
      000DA7 40                     810 	.db #0x40	; 64
      000DA8 40                     811 	.db #0x40	; 64
      000DA9 40                     812 	.db #0x40	; 64
      000DAA 40                     813 	.db #0x40	; 64
      000DAB 7F                     814 	.db #0x7f	; 127
      000DAC 02                     815 	.db #0x02	; 2
      000DAD 0C                     816 	.db #0x0c	; 12
      000DAE 02                     817 	.db #0x02	; 2
      000DAF 7F                     818 	.db #0x7f	; 127
      000DB0 7F                     819 	.db #0x7f	; 127
      000DB1 04                     820 	.db #0x04	; 4
      000DB2 08                     821 	.db #0x08	; 8
      000DB3 10                     822 	.db #0x10	; 16
      000DB4 7F                     823 	.db #0x7f	; 127
      000DB5 3E                     824 	.db #0x3e	; 62
      000DB6 41                     825 	.db #0x41	; 65	'A'
      000DB7 41                     826 	.db #0x41	; 65	'A'
      000DB8 41                     827 	.db #0x41	; 65	'A'
      000DB9 3E                     828 	.db #0x3e	; 62
      000DBA 7F                     829 	.db #0x7f	; 127
      000DBB 09                     830 	.db #0x09	; 9
      000DBC 09                     831 	.db #0x09	; 9
      000DBD 09                     832 	.db #0x09	; 9
      000DBE 06                     833 	.db #0x06	; 6
      000DBF 3E                     834 	.db #0x3e	; 62
      000DC0 41                     835 	.db #0x41	; 65	'A'
      000DC1 51                     836 	.db #0x51	; 81	'Q'
      000DC2 21                     837 	.db #0x21	; 33
      000DC3 5E                     838 	.db #0x5e	; 94
      000DC4 7F                     839 	.db #0x7f	; 127
      000DC5 09                     840 	.db #0x09	; 9
      000DC6 19                     841 	.db #0x19	; 25
      000DC7 29                     842 	.db #0x29	; 41
      000DC8 46                     843 	.db #0x46	; 70	'F'
      000DC9 46                     844 	.db #0x46	; 70	'F'
      000DCA 49                     845 	.db #0x49	; 73	'I'
      000DCB 49                     846 	.db #0x49	; 73	'I'
      000DCC 49                     847 	.db #0x49	; 73	'I'
      000DCD 31                     848 	.db #0x31	; 49	'1'
      000DCE 01                     849 	.db #0x01	; 1
      000DCF 01                     850 	.db #0x01	; 1
      000DD0 7F                     851 	.db #0x7f	; 127
      000DD1 01                     852 	.db #0x01	; 1
      000DD2 01                     853 	.db #0x01	; 1
      000DD3 3F                     854 	.db #0x3f	; 63
      000DD4 40                     855 	.db #0x40	; 64
      000DD5 40                     856 	.db #0x40	; 64
      000DD6 40                     857 	.db #0x40	; 64
      000DD7 3F                     858 	.db #0x3f	; 63
      000DD8 1F                     859 	.db #0x1f	; 31
      000DD9 20                     860 	.db #0x20	; 32
      000DDA 40                     861 	.db #0x40	; 64
      000DDB 20                     862 	.db #0x20	; 32
      000DDC 1F                     863 	.db #0x1f	; 31
      000DDD 3F                     864 	.db #0x3f	; 63
      000DDE 40                     865 	.db #0x40	; 64
      000DDF 38                     866 	.db #0x38	; 56	'8'
      000DE0 40                     867 	.db #0x40	; 64
      000DE1 3F                     868 	.db #0x3f	; 63
      000DE2 63                     869 	.db #0x63	; 99	'c'
      000DE3 14                     870 	.db #0x14	; 20
      000DE4 08                     871 	.db #0x08	; 8
      000DE5 14                     872 	.db #0x14	; 20
      000DE6 63                     873 	.db #0x63	; 99	'c'
      000DE7 07                     874 	.db #0x07	; 7
      000DE8 08                     875 	.db #0x08	; 8
      000DE9 70                     876 	.db #0x70	; 112	'p'
      000DEA 08                     877 	.db #0x08	; 8
      000DEB 07                     878 	.db #0x07	; 7
      000DEC 61                     879 	.db #0x61	; 97	'a'
      000DED 51                     880 	.db #0x51	; 81	'Q'
      000DEE 49                     881 	.db #0x49	; 73	'I'
      000DEF 45                     882 	.db #0x45	; 69	'E'
      000DF0 43                     883 	.db #0x43	; 67	'C'
      000DF1 00                     884 	.db #0x00	; 0
      000DF2 7F                     885 	.db #0x7f	; 127
      000DF3 41                     886 	.db #0x41	; 65	'A'
      000DF4 41                     887 	.db #0x41	; 65	'A'
      000DF5 00                     888 	.db #0x00	; 0
      000DF6 55                     889 	.db #0x55	; 85	'U'
      000DF7 AA                     890 	.db #0xaa	; 170
      000DF8 55                     891 	.db #0x55	; 85	'U'
      000DF9 AA                     892 	.db #0xaa	; 170
      000DFA 55                     893 	.db #0x55	; 85	'U'
      000DFB 00                     894 	.db #0x00	; 0
      000DFC 41                     895 	.db #0x41	; 65	'A'
      000DFD 41                     896 	.db #0x41	; 65	'A'
      000DFE 7F                     897 	.db #0x7f	; 127
      000DFF 00                     898 	.db #0x00	; 0
      000E00 04                     899 	.db #0x04	; 4
      000E01 02                     900 	.db #0x02	; 2
      000E02 01                     901 	.db #0x01	; 1
      000E03 02                     902 	.db #0x02	; 2
      000E04 04                     903 	.db #0x04	; 4
      000E05 40                     904 	.db #0x40	; 64
      000E06 40                     905 	.db #0x40	; 64
      000E07 40                     906 	.db #0x40	; 64
      000E08 40                     907 	.db #0x40	; 64
      000E09 40                     908 	.db #0x40	; 64
      000E0A 00                     909 	.db #0x00	; 0
      000E0B 03                     910 	.db #0x03	; 3
      000E0C 05                     911 	.db #0x05	; 5
      000E0D 00                     912 	.db #0x00	; 0
      000E0E 00                     913 	.db #0x00	; 0
      000E0F 20                     914 	.db #0x20	; 32
      000E10 54                     915 	.db #0x54	; 84	'T'
      000E11 54                     916 	.db #0x54	; 84	'T'
      000E12 54                     917 	.db #0x54	; 84	'T'
      000E13 78                     918 	.db #0x78	; 120	'x'
      000E14 7F                     919 	.db #0x7f	; 127
      000E15 48                     920 	.db #0x48	; 72	'H'
      000E16 44                     921 	.db #0x44	; 68	'D'
      000E17 44                     922 	.db #0x44	; 68	'D'
      000E18 38                     923 	.db #0x38	; 56	'8'
      000E19 38                     924 	.db #0x38	; 56	'8'
      000E1A 44                     925 	.db #0x44	; 68	'D'
      000E1B 44                     926 	.db #0x44	; 68	'D'
      000E1C 44                     927 	.db #0x44	; 68	'D'
      000E1D 20                     928 	.db #0x20	; 32
      000E1E 38                     929 	.db #0x38	; 56	'8'
      000E1F 44                     930 	.db #0x44	; 68	'D'
      000E20 44                     931 	.db #0x44	; 68	'D'
      000E21 48                     932 	.db #0x48	; 72	'H'
      000E22 7F                     933 	.db #0x7f	; 127
      000E23 38                     934 	.db #0x38	; 56	'8'
      000E24 54                     935 	.db #0x54	; 84	'T'
      000E25 54                     936 	.db #0x54	; 84	'T'
      000E26 54                     937 	.db #0x54	; 84	'T'
      000E27 18                     938 	.db #0x18	; 24
      000E28 08                     939 	.db #0x08	; 8
      000E29 7E                     940 	.db #0x7e	; 126
      000E2A 09                     941 	.db #0x09	; 9
      000E2B 01                     942 	.db #0x01	; 1
      000E2C 02                     943 	.db #0x02	; 2
      000E2D 18                     944 	.db #0x18	; 24
      000E2E A4                     945 	.db #0xa4	; 164
      000E2F A4                     946 	.db #0xa4	; 164
      000E30 A4                     947 	.db #0xa4	; 164
      000E31 7C                     948 	.db #0x7c	; 124
      000E32 7F                     949 	.db #0x7f	; 127
      000E33 08                     950 	.db #0x08	; 8
      000E34 04                     951 	.db #0x04	; 4
      000E35 04                     952 	.db #0x04	; 4
      000E36 78                     953 	.db #0x78	; 120	'x'
      000E37 00                     954 	.db #0x00	; 0
      000E38 44                     955 	.db #0x44	; 68	'D'
      000E39 7D                     956 	.db #0x7d	; 125
      000E3A 40                     957 	.db #0x40	; 64
      000E3B 00                     958 	.db #0x00	; 0
      000E3C 40                     959 	.db #0x40	; 64
      000E3D 80                     960 	.db #0x80	; 128
      000E3E 84                     961 	.db #0x84	; 132
      000E3F 7D                     962 	.db #0x7d	; 125
      000E40 00                     963 	.db #0x00	; 0
      000E41 7F                     964 	.db #0x7f	; 127
      000E42 10                     965 	.db #0x10	; 16
      000E43 28                     966 	.db #0x28	; 40
      000E44 44                     967 	.db #0x44	; 68	'D'
      000E45 00                     968 	.db #0x00	; 0
      000E46 00                     969 	.db #0x00	; 0
      000E47 41                     970 	.db #0x41	; 65	'A'
      000E48 7F                     971 	.db #0x7f	; 127
      000E49 40                     972 	.db #0x40	; 64
      000E4A 00                     973 	.db #0x00	; 0
      000E4B 7C                     974 	.db #0x7c	; 124
      000E4C 04                     975 	.db #0x04	; 4
      000E4D 18                     976 	.db #0x18	; 24
      000E4E 04                     977 	.db #0x04	; 4
      000E4F 78                     978 	.db #0x78	; 120	'x'
      000E50 7C                     979 	.db #0x7c	; 124
      000E51 08                     980 	.db #0x08	; 8
      000E52 04                     981 	.db #0x04	; 4
      000E53 04                     982 	.db #0x04	; 4
      000E54 78                     983 	.db #0x78	; 120	'x'
      000E55 38                     984 	.db #0x38	; 56	'8'
      000E56 44                     985 	.db #0x44	; 68	'D'
      000E57 44                     986 	.db #0x44	; 68	'D'
      000E58 44                     987 	.db #0x44	; 68	'D'
      000E59 38                     988 	.db #0x38	; 56	'8'
      000E5A FC                     989 	.db #0xfc	; 252
      000E5B 24                     990 	.db #0x24	; 36
      000E5C 24                     991 	.db #0x24	; 36
      000E5D 24                     992 	.db #0x24	; 36
      000E5E 18                     993 	.db #0x18	; 24
      000E5F 18                     994 	.db #0x18	; 24
      000E60 24                     995 	.db #0x24	; 36
      000E61 24                     996 	.db #0x24	; 36
      000E62 18                     997 	.db #0x18	; 24
      000E63 FC                     998 	.db #0xfc	; 252
      000E64 7C                     999 	.db #0x7c	; 124
      000E65 08                    1000 	.db #0x08	; 8
      000E66 04                    1001 	.db #0x04	; 4
      000E67 04                    1002 	.db #0x04	; 4
      000E68 08                    1003 	.db #0x08	; 8
      000E69 48                    1004 	.db #0x48	; 72	'H'
      000E6A 54                    1005 	.db #0x54	; 84	'T'
      000E6B 54                    1006 	.db #0x54	; 84	'T'
      000E6C 54                    1007 	.db #0x54	; 84	'T'
      000E6D 20                    1008 	.db #0x20	; 32
      000E6E 04                    1009 	.db #0x04	; 4
      000E6F 3F                    1010 	.db #0x3f	; 63
      000E70 44                    1011 	.db #0x44	; 68	'D'
      000E71 40                    1012 	.db #0x40	; 64
      000E72 20                    1013 	.db #0x20	; 32
      000E73 3C                    1014 	.db #0x3c	; 60
      000E74 40                    1015 	.db #0x40	; 64
      000E75 40                    1016 	.db #0x40	; 64
      000E76 20                    1017 	.db #0x20	; 32
      000E77 7C                    1018 	.db #0x7c	; 124
      000E78 1C                    1019 	.db #0x1c	; 28
      000E79 20                    1020 	.db #0x20	; 32
      000E7A 40                    1021 	.db #0x40	; 64
      000E7B 20                    1022 	.db #0x20	; 32
      000E7C 1C                    1023 	.db #0x1c	; 28
      000E7D 3C                    1024 	.db #0x3c	; 60
      000E7E 40                    1025 	.db #0x40	; 64
      000E7F 30                    1026 	.db #0x30	; 48	'0'
      000E80 40                    1027 	.db #0x40	; 64
      000E81 3C                    1028 	.db #0x3c	; 60
      000E82 44                    1029 	.db #0x44	; 68	'D'
      000E83 28                    1030 	.db #0x28	; 40
      000E84 10                    1031 	.db #0x10	; 16
      000E85 28                    1032 	.db #0x28	; 40
      000E86 44                    1033 	.db #0x44	; 68	'D'
      000E87 1C                    1034 	.db #0x1c	; 28
      000E88 A0                    1035 	.db #0xa0	; 160
      000E89 A0                    1036 	.db #0xa0	; 160
      000E8A A0                    1037 	.db #0xa0	; 160
      000E8B 7C                    1038 	.db #0x7c	; 124
      000E8C 44                    1039 	.db #0x44	; 68	'D'
      000E8D 64                    1040 	.db #0x64	; 100	'd'
      000E8E 54                    1041 	.db #0x54	; 84	'T'
      000E8F 4C                    1042 	.db #0x4c	; 76	'L'
      000E90 44                    1043 	.db #0x44	; 68	'D'
      000E91 00                    1044 	.db #0x00	; 0
      000E92 10                    1045 	.db #0x10	; 16
      000E93 7C                    1046 	.db #0x7c	; 124
      000E94 82                    1047 	.db #0x82	; 130
      000E95 00                    1048 	.db #0x00	; 0
      000E96 00                    1049 	.db #0x00	; 0
      000E97 00                    1050 	.db #0x00	; 0
      000E98 FF                    1051 	.db #0xff	; 255
      000E99 00                    1052 	.db #0x00	; 0
      000E9A 00                    1053 	.db #0x00	; 0
      000E9B 00                    1054 	.db #0x00	; 0
      000E9C 82                    1055 	.db #0x82	; 130
      000E9D 7C                    1056 	.db #0x7c	; 124
      000E9E 10                    1057 	.db #0x10	; 16
      000E9F 00                    1058 	.db #0x00	; 0
      000EA0 00                    1059 	.db #0x00	; 0
      000EA1 06                    1060 	.db #0x06	; 6
      000EA2 09                    1061 	.db #0x09	; 9
      000EA3 09                    1062 	.db #0x09	; 9
      000EA4 06                    1063 	.db #0x06	; 6
                                   1064 	.area XINIT   (CODE)
                                   1065 	.area CABS    (ABS,CODE)
