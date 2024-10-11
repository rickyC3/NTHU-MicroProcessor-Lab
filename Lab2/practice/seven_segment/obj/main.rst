                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.0 #14184 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _Initial7219
                                     13 	.globl _Write7219
                                     14 	.globl _Get_Key
                                     15 	.globl _delay_ms
                                     16 	.globl _CY
                                     17 	.globl _AC
                                     18 	.globl _F0
                                     19 	.globl _RS1
                                     20 	.globl _RS0
                                     21 	.globl _OV
                                     22 	.globl _F1
                                     23 	.globl _P
                                     24 	.globl _PS
                                     25 	.globl _PT1
                                     26 	.globl _PX1
                                     27 	.globl _PT0
                                     28 	.globl _PX0
                                     29 	.globl _RD
                                     30 	.globl _WR
                                     31 	.globl _T1
                                     32 	.globl _T0
                                     33 	.globl _INT1
                                     34 	.globl _INT0
                                     35 	.globl _TXD
                                     36 	.globl _RXD
                                     37 	.globl _P3_7
                                     38 	.globl _P3_6
                                     39 	.globl _P3_5
                                     40 	.globl _P3_4
                                     41 	.globl _P3_3
                                     42 	.globl _P3_2
                                     43 	.globl _P3_1
                                     44 	.globl _P3_0
                                     45 	.globl _EA
                                     46 	.globl _ES
                                     47 	.globl _ET1
                                     48 	.globl _EX1
                                     49 	.globl _ET0
                                     50 	.globl _EX0
                                     51 	.globl _P2_7
                                     52 	.globl _P2_6
                                     53 	.globl _P2_5
                                     54 	.globl _P2_4
                                     55 	.globl _P2_3
                                     56 	.globl _P2_2
                                     57 	.globl _P2_1
                                     58 	.globl _P2_0
                                     59 	.globl _SM0
                                     60 	.globl _SM1
                                     61 	.globl _SM2
                                     62 	.globl _REN
                                     63 	.globl _TB8
                                     64 	.globl _RB8
                                     65 	.globl _TI
                                     66 	.globl _RI
                                     67 	.globl _P1_7
                                     68 	.globl _P1_6
                                     69 	.globl _P1_5
                                     70 	.globl _P1_4
                                     71 	.globl _P1_3
                                     72 	.globl _P1_2
                                     73 	.globl _P1_1
                                     74 	.globl _P1_0
                                     75 	.globl _TF1
                                     76 	.globl _TR1
                                     77 	.globl _TF0
                                     78 	.globl _TR0
                                     79 	.globl _IE1
                                     80 	.globl _IT1
                                     81 	.globl _IE0
                                     82 	.globl _IT0
                                     83 	.globl _P0_7
                                     84 	.globl _P0_6
                                     85 	.globl _P0_5
                                     86 	.globl _P0_4
                                     87 	.globl _P0_3
                                     88 	.globl _P0_2
                                     89 	.globl _P0_1
                                     90 	.globl _P0_0
                                     91 	.globl _B
                                     92 	.globl _ACC
                                     93 	.globl _PSW
                                     94 	.globl _IP
                                     95 	.globl _P3
                                     96 	.globl _IE
                                     97 	.globl _P2
                                     98 	.globl _SBUF
                                     99 	.globl _SCON
                                    100 	.globl _P1
                                    101 	.globl _TH1
                                    102 	.globl _TH0
                                    103 	.globl _TL1
                                    104 	.globl _TL0
                                    105 	.globl _TMOD
                                    106 	.globl _TCON
                                    107 	.globl _PCON
                                    108 	.globl _DPH
                                    109 	.globl _DPL
                                    110 	.globl _SP
                                    111 	.globl _P0
                                    112 	.globl _Display
                                    113 ;--------------------------------------------------------
                                    114 ; special function registers
                                    115 ;--------------------------------------------------------
                                    116 	.area RSEG    (ABS,DATA)
      000000                        117 	.org 0x0000
                           000080   118 _P0	=	0x0080
                           000081   119 _SP	=	0x0081
                           000082   120 _DPL	=	0x0082
                           000083   121 _DPH	=	0x0083
                           000087   122 _PCON	=	0x0087
                           000088   123 _TCON	=	0x0088
                           000089   124 _TMOD	=	0x0089
                           00008A   125 _TL0	=	0x008a
                           00008B   126 _TL1	=	0x008b
                           00008C   127 _TH0	=	0x008c
                           00008D   128 _TH1	=	0x008d
                           000090   129 _P1	=	0x0090
                           000098   130 _SCON	=	0x0098
                           000099   131 _SBUF	=	0x0099
                           0000A0   132 _P2	=	0x00a0
                           0000A8   133 _IE	=	0x00a8
                           0000B0   134 _P3	=	0x00b0
                           0000B8   135 _IP	=	0x00b8
                           0000D0   136 _PSW	=	0x00d0
                           0000E0   137 _ACC	=	0x00e0
                           0000F0   138 _B	=	0x00f0
                                    139 ;--------------------------------------------------------
                                    140 ; special function bits
                                    141 ;--------------------------------------------------------
                                    142 	.area RSEG    (ABS,DATA)
      000000                        143 	.org 0x0000
                           000080   144 _P0_0	=	0x0080
                           000081   145 _P0_1	=	0x0081
                           000082   146 _P0_2	=	0x0082
                           000083   147 _P0_3	=	0x0083
                           000084   148 _P0_4	=	0x0084
                           000085   149 _P0_5	=	0x0085
                           000086   150 _P0_6	=	0x0086
                           000087   151 _P0_7	=	0x0087
                           000088   152 _IT0	=	0x0088
                           000089   153 _IE0	=	0x0089
                           00008A   154 _IT1	=	0x008a
                           00008B   155 _IE1	=	0x008b
                           00008C   156 _TR0	=	0x008c
                           00008D   157 _TF0	=	0x008d
                           00008E   158 _TR1	=	0x008e
                           00008F   159 _TF1	=	0x008f
                           000090   160 _P1_0	=	0x0090
                           000091   161 _P1_1	=	0x0091
                           000092   162 _P1_2	=	0x0092
                           000093   163 _P1_3	=	0x0093
                           000094   164 _P1_4	=	0x0094
                           000095   165 _P1_5	=	0x0095
                           000096   166 _P1_6	=	0x0096
                           000097   167 _P1_7	=	0x0097
                           000098   168 _RI	=	0x0098
                           000099   169 _TI	=	0x0099
                           00009A   170 _RB8	=	0x009a
                           00009B   171 _TB8	=	0x009b
                           00009C   172 _REN	=	0x009c
                           00009D   173 _SM2	=	0x009d
                           00009E   174 _SM1	=	0x009e
                           00009F   175 _SM0	=	0x009f
                           0000A0   176 _P2_0	=	0x00a0
                           0000A1   177 _P2_1	=	0x00a1
                           0000A2   178 _P2_2	=	0x00a2
                           0000A3   179 _P2_3	=	0x00a3
                           0000A4   180 _P2_4	=	0x00a4
                           0000A5   181 _P2_5	=	0x00a5
                           0000A6   182 _P2_6	=	0x00a6
                           0000A7   183 _P2_7	=	0x00a7
                           0000A8   184 _EX0	=	0x00a8
                           0000A9   185 _ET0	=	0x00a9
                           0000AA   186 _EX1	=	0x00aa
                           0000AB   187 _ET1	=	0x00ab
                           0000AC   188 _ES	=	0x00ac
                           0000AF   189 _EA	=	0x00af
                           0000B0   190 _P3_0	=	0x00b0
                           0000B1   191 _P3_1	=	0x00b1
                           0000B2   192 _P3_2	=	0x00b2
                           0000B3   193 _P3_3	=	0x00b3
                           0000B4   194 _P3_4	=	0x00b4
                           0000B5   195 _P3_5	=	0x00b5
                           0000B6   196 _P3_6	=	0x00b6
                           0000B7   197 _P3_7	=	0x00b7
                           0000B0   198 _RXD	=	0x00b0
                           0000B1   199 _TXD	=	0x00b1
                           0000B2   200 _INT0	=	0x00b2
                           0000B3   201 _INT1	=	0x00b3
                           0000B4   202 _T0	=	0x00b4
                           0000B5   203 _T1	=	0x00b5
                           0000B6   204 _WR	=	0x00b6
                           0000B7   205 _RD	=	0x00b7
                           0000B8   206 _PX0	=	0x00b8
                           0000B9   207 _PT0	=	0x00b9
                           0000BA   208 _PX1	=	0x00ba
                           0000BB   209 _PT1	=	0x00bb
                           0000BC   210 _PS	=	0x00bc
                           0000D0   211 _P	=	0x00d0
                           0000D1   212 _F1	=	0x00d1
                           0000D2   213 _OV	=	0x00d2
                           0000D3   214 _RS0	=	0x00d3
                           0000D4   215 _RS1	=	0x00d4
                           0000D5   216 _F0	=	0x00d5
                           0000D6   217 _AC	=	0x00d6
                           0000D7   218 _CY	=	0x00d7
                                    219 ;--------------------------------------------------------
                                    220 ; overlayable register banks
                                    221 ;--------------------------------------------------------
                                    222 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        223 	.ds 8
                                    224 ;--------------------------------------------------------
                                    225 ; internal ram data
                                    226 ;--------------------------------------------------------
                                    227 	.area DSEG    (DATA)
      000008                        228 _main_tmp_65536_34:
      000008                        229 	.ds 1
      000009                        230 _main_seg_65536_34:
      000009                        231 	.ds 9
      000012                        232 _Display_seg_65536_51:
      000012                        233 	.ds 3
                                    234 ;--------------------------------------------------------
                                    235 ; overlayable items in internal ram
                                    236 ;--------------------------------------------------------
                                    237 ;--------------------------------------------------------
                                    238 ; Stack segment in internal ram
                                    239 ;--------------------------------------------------------
                                    240 	.area SSEG
      00001A                        241 __start__stack:
      00001A                        242 	.ds	1
                                    243 
                                    244 ;--------------------------------------------------------
                                    245 ; indirectly addressable internal ram data
                                    246 ;--------------------------------------------------------
                                    247 	.area ISEG    (DATA)
                                    248 ;--------------------------------------------------------
                                    249 ; absolute internal ram data
                                    250 ;--------------------------------------------------------
                                    251 	.area IABS    (ABS,DATA)
                                    252 	.area IABS    (ABS,DATA)
                                    253 ;--------------------------------------------------------
                                    254 ; bit data
                                    255 ;--------------------------------------------------------
                                    256 	.area BSEG    (BIT)
                                    257 ;--------------------------------------------------------
                                    258 ; paged external ram data
                                    259 ;--------------------------------------------------------
                                    260 	.area PSEG    (PAG,XDATA)
                                    261 ;--------------------------------------------------------
                                    262 ; uninitialized external ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area XSEG    (XDATA)
                                    265 ;--------------------------------------------------------
                                    266 ; absolute external ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area XABS    (ABS,XDATA)
                                    269 ;--------------------------------------------------------
                                    270 ; initialized external ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area XISEG   (XDATA)
                                    273 	.area HOME    (CODE)
                                    274 	.area GSINIT0 (CODE)
                                    275 	.area GSINIT1 (CODE)
                                    276 	.area GSINIT2 (CODE)
                                    277 	.area GSINIT3 (CODE)
                                    278 	.area GSINIT4 (CODE)
                                    279 	.area GSINIT5 (CODE)
                                    280 	.area GSINIT  (CODE)
                                    281 	.area GSFINAL (CODE)
                                    282 	.area CSEG    (CODE)
                                    283 ;--------------------------------------------------------
                                    284 ; interrupt vector
                                    285 ;--------------------------------------------------------
                                    286 	.area HOME    (CODE)
      000000                        287 __interrupt_vect:
      000000 02 00 06         [24]  288 	ljmp	__sdcc_gsinit_startup
                                    289 ;--------------------------------------------------------
                                    290 ; global & static initialisations
                                    291 ;--------------------------------------------------------
                                    292 	.area HOME    (CODE)
                                    293 	.area GSINIT  (CODE)
                                    294 	.area GSFINAL (CODE)
                                    295 	.area GSINIT  (CODE)
                                    296 	.globl __sdcc_gsinit_startup
                                    297 	.globl __sdcc_program_startup
                                    298 	.globl __start__stack
                                    299 	.globl __mcs51_genXINIT
                                    300 	.globl __mcs51_genXRAMCLEAR
                                    301 	.globl __mcs51_genRAMCLEAR
                                    302 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  303 	ljmp	__sdcc_program_startup
                                    304 ;--------------------------------------------------------
                                    305 ; Home
                                    306 ;--------------------------------------------------------
                                    307 	.area HOME    (CODE)
                                    308 	.area HOME    (CODE)
      000003                        309 __sdcc_program_startup:
      000003 02 00 62         [24]  310 	ljmp	_main
                                    311 ;	return from main will return to caller
                                    312 ;--------------------------------------------------------
                                    313 ; code
                                    314 ;--------------------------------------------------------
                                    315 	.area CSEG    (CODE)
                                    316 ;------------------------------------------------------------
                                    317 ;Allocation info for local variables in function 'main'
                                    318 ;------------------------------------------------------------
                                    319 ;Key                       Allocated to registers r5 r6 
                                    320 ;tmp                       Allocated with name '_main_tmp_65536_34'
                                    321 ;patt                      Allocated to registers r7 
                                    322 ;seg                       Allocated with name '_main_seg_65536_34'
                                    323 ;i                         Allocated to registers r3 r4 
                                    324 ;------------------------------------------------------------
                                    325 ;	./src/main.c:32: void main(void)
                                    326 ;	-----------------------------------------
                                    327 ;	 function main
                                    328 ;	-----------------------------------------
      000062                        329 _main:
                           000007   330 	ar7 = 0x07
                           000006   331 	ar6 = 0x06
                           000005   332 	ar5 = 0x05
                           000004   333 	ar4 = 0x04
                           000003   334 	ar3 = 0x03
                           000002   335 	ar2 = 0x02
                           000001   336 	ar1 = 0x01
                           000000   337 	ar0 = 0x00
                                    338 ;	./src/main.c:36: unsigned char tmp[] = {};
      000062 75 08 00         [24]  339 	mov	_main_tmp_65536_34,#0x00
                                    340 ;	./src/main.c:37: unsigned char patt = 0x88;
      000065 7F 88            [12]  341 	mov	r7,#0x88
                                    342 ;	./src/main.c:38: unsigned char seg[] = {
      000067 75 09 00         [24]  343 	mov	_main_seg_65536_34,#0x00
      00006A 75 0A 7E         [24]  344 	mov	(_main_seg_65536_34 + 0x0001),#0x7e
      00006D 75 0B 00         [24]  345 	mov	(_main_seg_65536_34 + 0x0002),#0x00
      000070 75 0C 00         [24]  346 	mov	(_main_seg_65536_34 + 0x0003),#0x00
      000073 75 0D 00         [24]  347 	mov	(_main_seg_65536_34 + 0x0004),#0x00
      000076 75 0E 00         [24]  348 	mov	(_main_seg_65536_34 + 0x0005),#0x00
      000079 75 0F 00         [24]  349 	mov	(_main_seg_65536_34 + 0x0006),#0x00
      00007C 75 10 00         [24]  350 	mov	(_main_seg_65536_34 + 0x0007),#0x00
      00007F 75 11 00         [24]  351 	mov	(_main_seg_65536_34 + 0x0008),#0x00
                                    352 ;	./src/main.c:50: Initial7219();					// MAX7219 initialize
      000082 C0 07            [24]  353 	push	ar7
      000084 12 02 F4         [24]  354 	lcall	_Initial7219
      000087 D0 07            [24]  355 	pop	ar7
                                    356 ;	./src/main.c:53: while (1) 
      000089                        357 00135$:
                                    358 ;	./src/main.c:57: Key = Get_Key();
      000089 C0 07            [24]  359 	push	ar7
      00008B 12 02 00         [24]  360 	lcall	_Get_Key
                                    361 ;	./src/main.c:58: delay_ms(90);
      00008E 90 00 5A         [24]  362 	mov	dptr,#0x005a
      000091 12 01 D9         [24]  363 	lcall	_delay_ms
                                    364 ;	./src/main.c:59: Key = Get_Key();
      000094 12 02 00         [24]  365 	lcall	_Get_Key
      000097 AD 82            [24]  366 	mov	r5,dpl
      000099 AE 83            [24]  367 	mov	r6,dph
      00009B D0 07            [24]  368 	pop	ar7
                                    369 ;	./src/main.c:61: if(Key == Key && Key != 0){
      00009D ED               [12]  370 	mov	a,r5
      00009E 4E               [12]  371 	orl	a,r6
      00009F 70 03            [24]  372 	jnz	00209$
      0000A1 02 01 42         [24]  373 	ljmp	00131$
      0000A4                        374 00209$:
                                    375 ;	./src/main.c:62: if (seg[1] == 0b01111110)seg[1] = 0;
      0000A4 74 7E            [12]  376 	mov	a,#0x7e
      0000A6 B5 0A 03         [24]  377 	cjne	a,(_main_seg_65536_34 + 0x0001),00145$
      0000A9 75 0A 00         [24]  378 	mov	(_main_seg_65536_34 + 0x0001),#0x00
                                    379 ;	./src/main.c:63: for (i=8;i>=2;i--){
      0000AC                        380 00145$:
      0000AC 7B 08            [12]  381 	mov	r3,#0x08
      0000AE 7C 00            [12]  382 	mov	r4,#0x00
      0000B0                        383 00137$:
                                    384 ;	./src/main.c:64: seg[i] = seg[i-1];
      0000B0 EB               [12]  385 	mov	a,r3
      0000B1 24 09            [12]  386 	add	a,#_main_seg_65536_34
      0000B3 F9               [12]  387 	mov	r1,a
      0000B4 8B 02            [24]  388 	mov	ar2,r3
      0000B6 EA               [12]  389 	mov	a,r2
      0000B7 14               [12]  390 	dec	a
      0000B8 24 09            [12]  391 	add	a,#_main_seg_65536_34
      0000BA F8               [12]  392 	mov	r0,a
      0000BB 86 02            [24]  393 	mov	ar2,@r0
      0000BD A7 02            [24]  394 	mov	@r1,ar2
                                    395 ;	./src/main.c:63: for (i=8;i>=2;i--){
      0000BF 1B               [12]  396 	dec	r3
      0000C0 BB FF 01         [24]  397 	cjne	r3,#0xff,00212$
      0000C3 1C               [12]  398 	dec	r4
      0000C4                        399 00212$:
      0000C4 C3               [12]  400 	clr	c
      0000C5 EB               [12]  401 	mov	a,r3
      0000C6 94 02            [12]  402 	subb	a,#0x02
      0000C8 EC               [12]  403 	mov	a,r4
      0000C9 64 80            [12]  404 	xrl	a,#0x80
      0000CB 94 80            [12]  405 	subb	a,#0x80
      0000CD 50 E1            [24]  406 	jnc	00137$
                                    407 ;	./src/main.c:66: if (Key == 1){
      0000CF BD 01 0A         [24]  408 	cjne	r5,#0x01,00128$
      0000D2 BE 00 07         [24]  409 	cjne	r6,#0x00,00128$
                                    410 ;	./src/main.c:67: seg[1] = 0b00110000;
      0000D5 75 0A 30         [24]  411 	mov	(_main_seg_65536_34 + 0x0001),#0x30
                                    412 ;	./src/main.c:68: patt = 0x01;
      0000D8 7F 01            [12]  413 	mov	r7,#0x01
      0000DA 80 66            [24]  414 	sjmp	00131$
      0000DC                        415 00128$:
                                    416 ;	./src/main.c:69: }else if (Key == 2){
      0000DC BD 02 0A         [24]  417 	cjne	r5,#0x02,00125$
      0000DF BE 00 07         [24]  418 	cjne	r6,#0x00,00125$
                                    419 ;	./src/main.c:70: seg[1] = 0b01101101;
      0000E2 75 0A 6D         [24]  420 	mov	(_main_seg_65536_34 + 0x0001),#0x6d
                                    421 ;	./src/main.c:71: patt = 0x02;
      0000E5 7F 02            [12]  422 	mov	r7,#0x02
      0000E7 80 59            [24]  423 	sjmp	00131$
      0000E9                        424 00125$:
                                    425 ;	./src/main.c:72: }else if (Key == 3){
      0000E9 BD 03 0A         [24]  426 	cjne	r5,#0x03,00122$
      0000EC BE 00 07         [24]  427 	cjne	r6,#0x00,00122$
                                    428 ;	./src/main.c:73: seg[1] = 0b01111001;
      0000EF 75 0A 79         [24]  429 	mov	(_main_seg_65536_34 + 0x0001),#0x79
                                    430 ;	./src/main.c:74: patt = 0x04;
      0000F2 7F 04            [12]  431 	mov	r7,#0x04
      0000F4 80 4C            [24]  432 	sjmp	00131$
      0000F6                        433 00122$:
                                    434 ;	./src/main.c:75: }else if (Key == 4){
      0000F6 BD 04 0A         [24]  435 	cjne	r5,#0x04,00119$
      0000F9 BE 00 07         [24]  436 	cjne	r6,#0x00,00119$
                                    437 ;	./src/main.c:76: seg[1] = 0b00110011;
      0000FC 75 0A 33         [24]  438 	mov	(_main_seg_65536_34 + 0x0001),#0x33
                                    439 ;	./src/main.c:77: patt = 0x08;
      0000FF 7F 08            [12]  440 	mov	r7,#0x08
      000101 80 3F            [24]  441 	sjmp	00131$
      000103                        442 00119$:
                                    443 ;	./src/main.c:78: }else if (Key == 5){
      000103 BD 05 0A         [24]  444 	cjne	r5,#0x05,00116$
      000106 BE 00 07         [24]  445 	cjne	r6,#0x00,00116$
                                    446 ;	./src/main.c:79: seg[1] = 0b01011011;
      000109 75 0A 5B         [24]  447 	mov	(_main_seg_65536_34 + 0x0001),#0x5b
                                    448 ;	./src/main.c:80: patt = 0x10;
      00010C 7F 10            [12]  449 	mov	r7,#0x10
      00010E 80 32            [24]  450 	sjmp	00131$
      000110                        451 00116$:
                                    452 ;	./src/main.c:81: }else if (Key == 6){
      000110 BD 06 0A         [24]  453 	cjne	r5,#0x06,00113$
      000113 BE 00 07         [24]  454 	cjne	r6,#0x00,00113$
                                    455 ;	./src/main.c:82: seg[1] = 0b01011111;
      000116 75 0A 5F         [24]  456 	mov	(_main_seg_65536_34 + 0x0001),#0x5f
                                    457 ;	./src/main.c:83: patt = 0x20;
      000119 7F 20            [12]  458 	mov	r7,#0x20
      00011B 80 25            [24]  459 	sjmp	00131$
      00011D                        460 00113$:
                                    461 ;	./src/main.c:84: }else if (Key == 7){
      00011D BD 07 0A         [24]  462 	cjne	r5,#0x07,00110$
      000120 BE 00 07         [24]  463 	cjne	r6,#0x00,00110$
                                    464 ;	./src/main.c:85: seg[1] = 0b01110000;
      000123 75 0A 70         [24]  465 	mov	(_main_seg_65536_34 + 0x0001),#0x70
                                    466 ;	./src/main.c:86: patt = 0x40;
      000126 7F 40            [12]  467 	mov	r7,#0x40
      000128 80 18            [24]  468 	sjmp	00131$
      00012A                        469 00110$:
                                    470 ;	./src/main.c:87: }else if (Key == 8){
      00012A BD 08 0A         [24]  471 	cjne	r5,#0x08,00107$
      00012D BE 00 07         [24]  472 	cjne	r6,#0x00,00107$
                                    473 ;	./src/main.c:88: seg[1] = 0b01111111;
      000130 75 0A 7F         [24]  474 	mov	(_main_seg_65536_34 + 0x0001),#0x7f
                                    475 ;	./src/main.c:89: patt = 0x80;
      000133 7F 80            [12]  476 	mov	r7,#0x80
      000135 80 0B            [24]  477 	sjmp	00131$
      000137                        478 00107$:
                                    479 ;	./src/main.c:90: }else if (Key == 9){
      000137 BD 09 08         [24]  480 	cjne	r5,#0x09,00131$
      00013A BE 00 05         [24]  481 	cjne	r6,#0x00,00131$
                                    482 ;	./src/main.c:91: seg[1] = 0b01111011;
      00013D 75 0A 7B         [24]  483 	mov	(_main_seg_65536_34 + 0x0001),#0x7b
                                    484 ;	./src/main.c:92: patt = 0x81;
      000140 7F 81            [12]  485 	mov	r7,#0x81
      000142                        486 00131$:
                                    487 ;	./src/main.c:99: led = ~patt;
      000142 EF               [12]  488 	mov	a,r7
      000143 F4               [12]  489 	cpl	a
      000144 F5 90            [12]  490 	mov	_P1,a
                                    491 ;	./src/main.c:104: for (i = 8; i >= 1; i--) {
      000146 7D 08            [12]  492 	mov	r5,#0x08
      000148 7E 00            [12]  493 	mov	r6,#0x00
      00014A                        494 00139$:
                                    495 ;	./src/main.c:105: Write7219(i, seg[i]);
      00014A ED               [12]  496 	mov	a,r5
      00014B F5 82            [12]  497 	mov	dpl,a
      00014D 24 09            [12]  498 	add	a,#_main_seg_65536_34
      00014F F9               [12]  499 	mov	r1,a
      000150 87 15            [24]  500 	mov	_Write7219_PARM_2,@r1
      000152 C0 07            [24]  501 	push	ar7
      000154 C0 06            [24]  502 	push	ar6
      000156 C0 05            [24]  503 	push	ar5
      000158 12 02 92         [24]  504 	lcall	_Write7219
      00015B D0 05            [24]  505 	pop	ar5
      00015D D0 06            [24]  506 	pop	ar6
      00015F D0 07            [24]  507 	pop	ar7
                                    508 ;	./src/main.c:104: for (i = 8; i >= 1; i--) {
      000161 1D               [12]  509 	dec	r5
      000162 BD FF 01         [24]  510 	cjne	r5,#0xff,00232$
      000165 1E               [12]  511 	dec	r6
      000166                        512 00232$:
      000166 C3               [12]  513 	clr	c
      000167 ED               [12]  514 	mov	a,r5
      000168 94 01            [12]  515 	subb	a,#0x01
      00016A EE               [12]  516 	mov	a,r6
      00016B 64 80            [12]  517 	xrl	a,#0x80
      00016D 94 80            [12]  518 	subb	a,#0x80
      00016F 50 D9            [24]  519 	jnc	00139$
                                    520 ;	./src/main.c:109: }
      000171 02 00 89         [24]  521 	ljmp	00135$
                                    522 ;------------------------------------------------------------
                                    523 ;Allocation info for local variables in function 'Display'
                                    524 ;------------------------------------------------------------
                                    525 ;seg                       Allocated with name '_Display_seg_65536_51'
                                    526 ;i                         Allocated to registers r3 r4 
                                    527 ;------------------------------------------------------------
                                    528 ;	./src/main.c:111: void Display(unsigned char seg[]) 
                                    529 ;	-----------------------------------------
                                    530 ;	 function Display
                                    531 ;	-----------------------------------------
      000174                        532 _Display:
      000174 85 82 12         [24]  533 	mov	_Display_seg_65536_51,dpl
      000177 85 83 13         [24]  534 	mov	(_Display_seg_65536_51 + 1),dph
      00017A 85 F0 14         [24]  535 	mov	(_Display_seg_65536_51 + 2),b
                                    536 ;	./src/main.c:117: for (i = 8; i >= 1; i--) {
      00017D                        537 00109$:
      00017D 7B 08            [12]  538 	mov	r3,#0x08
      00017F 7C 00            [12]  539 	mov	r4,#0x00
      000181                        540 00105$:
                                    541 ;	./src/main.c:118: Write7219(i, seg[(i + 8) % 8]);
      000181 8B 02            [24]  542 	mov	ar2,r3
      000183 74 08            [12]  543 	mov	a,#0x08
      000185 2B               [12]  544 	add	a,r3
      000186 F5 82            [12]  545 	mov	dpl,a
      000188 E4               [12]  546 	clr	a
      000189 3C               [12]  547 	addc	a,r4
      00018A F5 83            [12]  548 	mov	dph,a
      00018C 75 18 08         [24]  549 	mov	__modsint_PARM_2,#0x08
      00018F 75 19 00         [24]  550 	mov	(__modsint_PARM_2 + 1),#0x00
      000192 C0 04            [24]  551 	push	ar4
      000194 C0 03            [24]  552 	push	ar3
      000196 C0 02            [24]  553 	push	ar2
      000198 12 03 9F         [24]  554 	lcall	__modsint
      00019B A8 82            [24]  555 	mov	r0,dpl
      00019D A9 83            [24]  556 	mov	r1,dph
      00019F D0 02            [24]  557 	pop	ar2
      0001A1 D0 03            [24]  558 	pop	ar3
      0001A3 D0 04            [24]  559 	pop	ar4
      0001A5 E8               [12]  560 	mov	a,r0
      0001A6 25 12            [12]  561 	add	a,_Display_seg_65536_51
      0001A8 F8               [12]  562 	mov	r0,a
      0001A9 E9               [12]  563 	mov	a,r1
      0001AA 35 13            [12]  564 	addc	a,(_Display_seg_65536_51 + 1)
      0001AC F9               [12]  565 	mov	r1,a
      0001AD AF 14            [24]  566 	mov	r7,(_Display_seg_65536_51 + 2)
      0001AF 88 82            [24]  567 	mov	dpl,r0
      0001B1 89 83            [24]  568 	mov	dph,r1
      0001B3 8F F0            [24]  569 	mov	b,r7
      0001B5 12 03 83         [24]  570 	lcall	__gptrget
      0001B8 F5 15            [12]  571 	mov	_Write7219_PARM_2,a
      0001BA 8A 82            [24]  572 	mov	dpl,r2
      0001BC C0 04            [24]  573 	push	ar4
      0001BE C0 03            [24]  574 	push	ar3
      0001C0 12 02 92         [24]  575 	lcall	_Write7219
      0001C3 D0 03            [24]  576 	pop	ar3
      0001C5 D0 04            [24]  577 	pop	ar4
                                    578 ;	./src/main.c:117: for (i = 8; i >= 1; i--) {
      0001C7 1B               [12]  579 	dec	r3
      0001C8 BB FF 01         [24]  580 	cjne	r3,#0xff,00122$
      0001CB 1C               [12]  581 	dec	r4
      0001CC                        582 00122$:
      0001CC C3               [12]  583 	clr	c
      0001CD EB               [12]  584 	mov	a,r3
      0001CE 94 01            [12]  585 	subb	a,#0x01
      0001D0 EC               [12]  586 	mov	a,r4
      0001D1 64 80            [12]  587 	xrl	a,#0x80
      0001D3 94 80            [12]  588 	subb	a,#0x80
      0001D5 50 AA            [24]  589 	jnc	00105$
                                    590 ;	./src/main.c:122: }
      0001D7 80 A4            [24]  591 	sjmp	00109$
                                    592 	.area CSEG    (CODE)
                                    593 	.area CONST   (CODE)
                                    594 	.area XINIT   (CODE)
                                    595 	.area CABS    (ABS,CODE)
