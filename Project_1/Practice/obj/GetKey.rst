                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module GetKey
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CY
                                     12 	.globl _AC
                                     13 	.globl _F0
                                     14 	.globl _RS1
                                     15 	.globl _RS0
                                     16 	.globl _OV
                                     17 	.globl _F1
                                     18 	.globl _P
                                     19 	.globl _PS
                                     20 	.globl _PT1
                                     21 	.globl _PX1
                                     22 	.globl _PT0
                                     23 	.globl _PX0
                                     24 	.globl _RD
                                     25 	.globl _WR
                                     26 	.globl _T1
                                     27 	.globl _T0
                                     28 	.globl _INT1
                                     29 	.globl _INT0
                                     30 	.globl _TXD
                                     31 	.globl _RXD
                                     32 	.globl _P3_7
                                     33 	.globl _P3_6
                                     34 	.globl _P3_5
                                     35 	.globl _P3_4
                                     36 	.globl _P3_3
                                     37 	.globl _P3_2
                                     38 	.globl _P3_1
                                     39 	.globl _P3_0
                                     40 	.globl _EA
                                     41 	.globl _ES
                                     42 	.globl _ET1
                                     43 	.globl _EX1
                                     44 	.globl _ET0
                                     45 	.globl _EX0
                                     46 	.globl _P2_7
                                     47 	.globl _P2_6
                                     48 	.globl _P2_5
                                     49 	.globl _P2_4
                                     50 	.globl _P2_3
                                     51 	.globl _P2_2
                                     52 	.globl _P2_1
                                     53 	.globl _P2_0
                                     54 	.globl _SM0
                                     55 	.globl _SM1
                                     56 	.globl _SM2
                                     57 	.globl _REN
                                     58 	.globl _TB8
                                     59 	.globl _RB8
                                     60 	.globl _TI
                                     61 	.globl _RI
                                     62 	.globl _P1_7
                                     63 	.globl _P1_6
                                     64 	.globl _P1_5
                                     65 	.globl _P1_4
                                     66 	.globl _P1_3
                                     67 	.globl _P1_2
                                     68 	.globl _P1_1
                                     69 	.globl _P1_0
                                     70 	.globl _TF1
                                     71 	.globl _TR1
                                     72 	.globl _TF0
                                     73 	.globl _TR0
                                     74 	.globl _IE1
                                     75 	.globl _IT1
                                     76 	.globl _IE0
                                     77 	.globl _IT0
                                     78 	.globl _P0_7
                                     79 	.globl _P0_6
                                     80 	.globl _P0_5
                                     81 	.globl _P0_4
                                     82 	.globl _P0_3
                                     83 	.globl _P0_2
                                     84 	.globl _P0_1
                                     85 	.globl _P0_0
                                     86 	.globl _B
                                     87 	.globl _ACC
                                     88 	.globl _PSW
                                     89 	.globl _IP
                                     90 	.globl _P3
                                     91 	.globl _IE
                                     92 	.globl _P2
                                     93 	.globl _SBUF
                                     94 	.globl _SCON
                                     95 	.globl _P1
                                     96 	.globl _TH1
                                     97 	.globl _TH0
                                     98 	.globl _TL1
                                     99 	.globl _TL0
                                    100 	.globl _TMOD
                                    101 	.globl _TCON
                                    102 	.globl _PCON
                                    103 	.globl _DPH
                                    104 	.globl _DPL
                                    105 	.globl _SP
                                    106 	.globl _P0
                                    107 	.globl _Get_Key
                                    108 ;--------------------------------------------------------
                                    109 ; special function registers
                                    110 ;--------------------------------------------------------
                                    111 	.area RSEG    (ABS,DATA)
      000000                        112 	.org 0x0000
                           000080   113 _P0	=	0x0080
                           000081   114 _SP	=	0x0081
                           000082   115 _DPL	=	0x0082
                           000083   116 _DPH	=	0x0083
                           000087   117 _PCON	=	0x0087
                           000088   118 _TCON	=	0x0088
                           000089   119 _TMOD	=	0x0089
                           00008A   120 _TL0	=	0x008a
                           00008B   121 _TL1	=	0x008b
                           00008C   122 _TH0	=	0x008c
                           00008D   123 _TH1	=	0x008d
                           000090   124 _P1	=	0x0090
                           000098   125 _SCON	=	0x0098
                           000099   126 _SBUF	=	0x0099
                           0000A0   127 _P2	=	0x00a0
                           0000A8   128 _IE	=	0x00a8
                           0000B0   129 _P3	=	0x00b0
                           0000B8   130 _IP	=	0x00b8
                           0000D0   131 _PSW	=	0x00d0
                           0000E0   132 _ACC	=	0x00e0
                           0000F0   133 _B	=	0x00f0
                                    134 ;--------------------------------------------------------
                                    135 ; special function bits
                                    136 ;--------------------------------------------------------
                                    137 	.area RSEG    (ABS,DATA)
      000000                        138 	.org 0x0000
                           000080   139 _P0_0	=	0x0080
                           000081   140 _P0_1	=	0x0081
                           000082   141 _P0_2	=	0x0082
                           000083   142 _P0_3	=	0x0083
                           000084   143 _P0_4	=	0x0084
                           000085   144 _P0_5	=	0x0085
                           000086   145 _P0_6	=	0x0086
                           000087   146 _P0_7	=	0x0087
                           000088   147 _IT0	=	0x0088
                           000089   148 _IE0	=	0x0089
                           00008A   149 _IT1	=	0x008a
                           00008B   150 _IE1	=	0x008b
                           00008C   151 _TR0	=	0x008c
                           00008D   152 _TF0	=	0x008d
                           00008E   153 _TR1	=	0x008e
                           00008F   154 _TF1	=	0x008f
                           000090   155 _P1_0	=	0x0090
                           000091   156 _P1_1	=	0x0091
                           000092   157 _P1_2	=	0x0092
                           000093   158 _P1_3	=	0x0093
                           000094   159 _P1_4	=	0x0094
                           000095   160 _P1_5	=	0x0095
                           000096   161 _P1_6	=	0x0096
                           000097   162 _P1_7	=	0x0097
                           000098   163 _RI	=	0x0098
                           000099   164 _TI	=	0x0099
                           00009A   165 _RB8	=	0x009a
                           00009B   166 _TB8	=	0x009b
                           00009C   167 _REN	=	0x009c
                           00009D   168 _SM2	=	0x009d
                           00009E   169 _SM1	=	0x009e
                           00009F   170 _SM0	=	0x009f
                           0000A0   171 _P2_0	=	0x00a0
                           0000A1   172 _P2_1	=	0x00a1
                           0000A2   173 _P2_2	=	0x00a2
                           0000A3   174 _P2_3	=	0x00a3
                           0000A4   175 _P2_4	=	0x00a4
                           0000A5   176 _P2_5	=	0x00a5
                           0000A6   177 _P2_6	=	0x00a6
                           0000A7   178 _P2_7	=	0x00a7
                           0000A8   179 _EX0	=	0x00a8
                           0000A9   180 _ET0	=	0x00a9
                           0000AA   181 _EX1	=	0x00aa
                           0000AB   182 _ET1	=	0x00ab
                           0000AC   183 _ES	=	0x00ac
                           0000AF   184 _EA	=	0x00af
                           0000B0   185 _P3_0	=	0x00b0
                           0000B1   186 _P3_1	=	0x00b1
                           0000B2   187 _P3_2	=	0x00b2
                           0000B3   188 _P3_3	=	0x00b3
                           0000B4   189 _P3_4	=	0x00b4
                           0000B5   190 _P3_5	=	0x00b5
                           0000B6   191 _P3_6	=	0x00b6
                           0000B7   192 _P3_7	=	0x00b7
                           0000B0   193 _RXD	=	0x00b0
                           0000B1   194 _TXD	=	0x00b1
                           0000B2   195 _INT0	=	0x00b2
                           0000B3   196 _INT1	=	0x00b3
                           0000B4   197 _T0	=	0x00b4
                           0000B5   198 _T1	=	0x00b5
                           0000B6   199 _WR	=	0x00b6
                           0000B7   200 _RD	=	0x00b7
                           0000B8   201 _PX0	=	0x00b8
                           0000B9   202 _PT0	=	0x00b9
                           0000BA   203 _PX1	=	0x00ba
                           0000BB   204 _PT1	=	0x00bb
                           0000BC   205 _PS	=	0x00bc
                           0000D0   206 _P	=	0x00d0
                           0000D1   207 _F1	=	0x00d1
                           0000D2   208 _OV	=	0x00d2
                           0000D3   209 _RS0	=	0x00d3
                           0000D4   210 _RS1	=	0x00d4
                           0000D5   211 _F0	=	0x00d5
                           0000D6   212 _AC	=	0x00d6
                           0000D7   213 _CY	=	0x00d7
                                    214 ;--------------------------------------------------------
                                    215 ; overlayable register banks
                                    216 ;--------------------------------------------------------
                                    217 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        218 	.ds 8
                                    219 ;--------------------------------------------------------
                                    220 ; internal ram data
                                    221 ;--------------------------------------------------------
                                    222 	.area DSEG    (DATA)
                                    223 ;--------------------------------------------------------
                                    224 ; overlayable items in internal ram 
                                    225 ;--------------------------------------------------------
                                    226 ;--------------------------------------------------------
                                    227 ; indirectly addressable internal ram data
                                    228 ;--------------------------------------------------------
                                    229 	.area ISEG    (DATA)
                                    230 ;--------------------------------------------------------
                                    231 ; absolute internal ram data
                                    232 ;--------------------------------------------------------
                                    233 	.area IABS    (ABS,DATA)
                                    234 	.area IABS    (ABS,DATA)
                                    235 ;--------------------------------------------------------
                                    236 ; bit data
                                    237 ;--------------------------------------------------------
                                    238 	.area BSEG    (BIT)
                                    239 ;--------------------------------------------------------
                                    240 ; paged external ram data
                                    241 ;--------------------------------------------------------
                                    242 	.area PSEG    (PAG,XDATA)
                                    243 ;--------------------------------------------------------
                                    244 ; external ram data
                                    245 ;--------------------------------------------------------
                                    246 	.area XSEG    (XDATA)
                                    247 ;--------------------------------------------------------
                                    248 ; absolute external ram data
                                    249 ;--------------------------------------------------------
                                    250 	.area XABS    (ABS,XDATA)
                                    251 ;--------------------------------------------------------
                                    252 ; external initialized ram data
                                    253 ;--------------------------------------------------------
                                    254 	.area XISEG   (XDATA)
                                    255 	.area HOME    (CODE)
                                    256 	.area GSINIT0 (CODE)
                                    257 	.area GSINIT1 (CODE)
                                    258 	.area GSINIT2 (CODE)
                                    259 	.area GSINIT3 (CODE)
                                    260 	.area GSINIT4 (CODE)
                                    261 	.area GSINIT5 (CODE)
                                    262 	.area GSINIT  (CODE)
                                    263 	.area GSFINAL (CODE)
                                    264 	.area CSEG    (CODE)
                                    265 ;--------------------------------------------------------
                                    266 ; global & static initialisations
                                    267 ;--------------------------------------------------------
                                    268 	.area HOME    (CODE)
                                    269 	.area GSINIT  (CODE)
                                    270 	.area GSFINAL (CODE)
                                    271 	.area GSINIT  (CODE)
                                    272 ;--------------------------------------------------------
                                    273 ; Home
                                    274 ;--------------------------------------------------------
                                    275 	.area HOME    (CODE)
                                    276 	.area HOME    (CODE)
                                    277 ;--------------------------------------------------------
                                    278 ; code
                                    279 ;--------------------------------------------------------
                                    280 	.area CSEG    (CODE)
                                    281 ;------------------------------------------------------------
                                    282 ;Allocation info for local variables in function 'Get_Key'
                                    283 ;------------------------------------------------------------
                                    284 ;	./src/GetKey.c:20: unsigned char Get_Key(void){
                                    285 ;	-----------------------------------------
                                    286 ;	 function Get_Key
                                    287 ;	-----------------------------------------
      000441                        288 _Get_Key:
                           000007   289 	ar7 = 0x07
                           000006   290 	ar6 = 0x06
                           000005   291 	ar5 = 0x05
                           000004   292 	ar4 = 0x04
                           000003   293 	ar3 = 0x03
                           000002   294 	ar2 = 0x02
                           000001   295 	ar1 = 0x01
                           000000   296 	ar0 = 0x00
                                    297 ;	./src/GetKey.c:22: if (BUT1 == 0)return 10; // OP
      000441 20 B2 04         [24]  298 	jb	_P3_2,00102$
      000444 75 82 0A         [24]  299 	mov	dpl,#0x0a
      000447 22               [24]  300 	ret
      000448                        301 00102$:
                                    302 ;	./src/GetKey.c:23: if (BUT2 == 0)return 11; // back
      000448 20 B3 04         [24]  303 	jb	_P3_3,00104$
      00044B 75 82 0B         [24]  304 	mov	dpl,#0x0b
      00044E 22               [24]  305 	ret
      00044F                        306 00104$:
                                    307 ;	./src/GetKey.c:24: if (BUT3 == 0)return 12; // AC
      00044F 20 A0 04         [24]  308 	jb	_P2_0,00106$
      000452 75 82 0C         [24]  309 	mov	dpl,#0x0c
      000455 22               [24]  310 	ret
      000456                        311 00106$:
                                    312 ;	./src/GetKey.c:25: if (BUT4 == 0)return 13; // eqal
      000456 20 A1 04         [24]  313 	jb	_P2_1,00108$
      000459 75 82 0D         [24]  314 	mov	dpl,#0x0d
      00045C 22               [24]  315 	ret
      00045D                        316 00108$:
                                    317 ;	./src/GetKey.c:28: C1 = 1;
                                    318 ;	assignBit
      00045D D2 81            [12]  319 	setb	_P0_1
                                    320 ;	./src/GetKey.c:29: C2 = 1;
                                    321 ;	assignBit
      00045F D2 82            [12]  322 	setb	_P0_2
                                    323 ;	./src/GetKey.c:30: C3 = 1;
                                    324 ;	assignBit
      000461 D2 83            [12]  325 	setb	_P0_3
                                    326 ;	./src/GetKey.c:32: R1 = 0;
                                    327 ;	assignBit
      000463 C2 84            [12]  328 	clr	_P0_4
                                    329 ;	./src/GetKey.c:33: R2 = 1;
                                    330 ;	assignBit
      000465 D2 85            [12]  331 	setb	_P0_5
                                    332 ;	./src/GetKey.c:34: R3 = 1;
                                    333 ;	assignBit
      000467 D2 86            [12]  334 	setb	_P0_6
                                    335 ;	./src/GetKey.c:35: R4 = 1;
                                    336 ;	assignBit
      000469 D2 87            [12]  337 	setb	_P0_7
                                    338 ;	./src/GetKey.c:36: if (C1 == 0){
      00046B 20 81 04         [24]  339 	jb	_P0_1,00110$
                                    340 ;	./src/GetKey.c:37: return 7;
      00046E 75 82 07         [24]  341 	mov	dpl,#0x07
      000471 22               [24]  342 	ret
      000472                        343 00110$:
                                    344 ;	./src/GetKey.c:39: if (C2 == 0){
      000472 20 82 04         [24]  345 	jb	_P0_2,00112$
                                    346 ;	./src/GetKey.c:40: return 8;
      000475 75 82 08         [24]  347 	mov	dpl,#0x08
      000478 22               [24]  348 	ret
      000479                        349 00112$:
                                    350 ;	./src/GetKey.c:42: if (C3 == 0){
      000479 20 83 04         [24]  351 	jb	_P0_3,00114$
                                    352 ;	./src/GetKey.c:43: return 9;
      00047C 75 82 09         [24]  353 	mov	dpl,#0x09
      00047F 22               [24]  354 	ret
      000480                        355 00114$:
                                    356 ;	./src/GetKey.c:46: R1 = 1;
                                    357 ;	assignBit
      000480 D2 84            [12]  358 	setb	_P0_4
                                    359 ;	./src/GetKey.c:47: R2 = 0;
                                    360 ;	assignBit
      000482 C2 85            [12]  361 	clr	_P0_5
                                    362 ;	./src/GetKey.c:48: R3 = 1;
                                    363 ;	assignBit
      000484 D2 86            [12]  364 	setb	_P0_6
                                    365 ;	./src/GetKey.c:49: R4 = 1;
                                    366 ;	assignBit
      000486 D2 87            [12]  367 	setb	_P0_7
                                    368 ;	./src/GetKey.c:50: if (C1 == 0){
      000488 20 81 04         [24]  369 	jb	_P0_1,00116$
                                    370 ;	./src/GetKey.c:51: return 4;
      00048B 75 82 04         [24]  371 	mov	dpl,#0x04
      00048E 22               [24]  372 	ret
      00048F                        373 00116$:
                                    374 ;	./src/GetKey.c:53: if (C2 == 0){
      00048F 20 82 04         [24]  375 	jb	_P0_2,00118$
                                    376 ;	./src/GetKey.c:54: return 5;
      000492 75 82 05         [24]  377 	mov	dpl,#0x05
      000495 22               [24]  378 	ret
      000496                        379 00118$:
                                    380 ;	./src/GetKey.c:56: if (C3 == 0){
      000496 20 83 04         [24]  381 	jb	_P0_3,00120$
                                    382 ;	./src/GetKey.c:57: return 6;
      000499 75 82 06         [24]  383 	mov	dpl,#0x06
      00049C 22               [24]  384 	ret
      00049D                        385 00120$:
                                    386 ;	./src/GetKey.c:60: R1 = 1;
                                    387 ;	assignBit
      00049D D2 84            [12]  388 	setb	_P0_4
                                    389 ;	./src/GetKey.c:61: R2 = 1;
                                    390 ;	assignBit
      00049F D2 85            [12]  391 	setb	_P0_5
                                    392 ;	./src/GetKey.c:62: R3 = 0;
                                    393 ;	assignBit
      0004A1 C2 86            [12]  394 	clr	_P0_6
                                    395 ;	./src/GetKey.c:63: R4 = 1;
                                    396 ;	assignBit
      0004A3 D2 87            [12]  397 	setb	_P0_7
                                    398 ;	./src/GetKey.c:64: if (C1 == 0){
      0004A5 20 81 04         [24]  399 	jb	_P0_1,00122$
                                    400 ;	./src/GetKey.c:65: return 1;
      0004A8 75 82 01         [24]  401 	mov	dpl,#0x01
      0004AB 22               [24]  402 	ret
      0004AC                        403 00122$:
                                    404 ;	./src/GetKey.c:67: if (C2 == 0){
      0004AC 20 82 04         [24]  405 	jb	_P0_2,00124$
                                    406 ;	./src/GetKey.c:68: return 2;
      0004AF 75 82 02         [24]  407 	mov	dpl,#0x02
      0004B2 22               [24]  408 	ret
      0004B3                        409 00124$:
                                    410 ;	./src/GetKey.c:70: if (C3 == 0){
      0004B3 20 83 04         [24]  411 	jb	_P0_3,00126$
                                    412 ;	./src/GetKey.c:71: return 3;
      0004B6 75 82 03         [24]  413 	mov	dpl,#0x03
      0004B9 22               [24]  414 	ret
      0004BA                        415 00126$:
                                    416 ;	./src/GetKey.c:75: R1 = 1;
                                    417 ;	assignBit
      0004BA D2 84            [12]  418 	setb	_P0_4
                                    419 ;	./src/GetKey.c:76: R2 = 1;
                                    420 ;	assignBit
      0004BC D2 85            [12]  421 	setb	_P0_5
                                    422 ;	./src/GetKey.c:77: R3 = 1;
                                    423 ;	assignBit
      0004BE D2 86            [12]  424 	setb	_P0_6
                                    425 ;	./src/GetKey.c:78: R4 = 0;
                                    426 ;	assignBit
      0004C0 C2 87            [12]  427 	clr	_P0_7
                                    428 ;	./src/GetKey.c:79: if (C2 == 0){
      0004C2 20 82 04         [24]  429 	jb	_P0_2,00128$
                                    430 ;	./src/GetKey.c:80: return 0;
      0004C5 75 82 00         [24]  431 	mov	dpl,#0x00
      0004C8 22               [24]  432 	ret
      0004C9                        433 00128$:
                                    434 ;	./src/GetKey.c:84: return 15;
      0004C9 75 82 0F         [24]  435 	mov	dpl,#0x0f
                                    436 ;	./src/GetKey.c:85: }
      0004CC 22               [24]  437 	ret
                                    438 	.area CSEG    (CODE)
                                    439 	.area CONST   (CODE)
                                    440 	.area XINIT   (CODE)
                                    441 	.area CABS    (ABS,CODE)
