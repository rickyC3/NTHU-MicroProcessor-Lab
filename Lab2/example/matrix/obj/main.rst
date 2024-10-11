                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _Initial7219
                                     13 	.globl _Writesingle7219
                                     14 	.globl _delay_ms
                                     15 	.globl _CY
                                     16 	.globl _AC
                                     17 	.globl _F0
                                     18 	.globl _RS1
                                     19 	.globl _RS0
                                     20 	.globl _OV
                                     21 	.globl _F1
                                     22 	.globl _P
                                     23 	.globl _PS
                                     24 	.globl _PT1
                                     25 	.globl _PX1
                                     26 	.globl _PT0
                                     27 	.globl _PX0
                                     28 	.globl _RD
                                     29 	.globl _WR
                                     30 	.globl _T1
                                     31 	.globl _T0
                                     32 	.globl _INT1
                                     33 	.globl _INT0
                                     34 	.globl _TXD
                                     35 	.globl _RXD
                                     36 	.globl _P3_7
                                     37 	.globl _P3_6
                                     38 	.globl _P3_5
                                     39 	.globl _P3_4
                                     40 	.globl _P3_3
                                     41 	.globl _P3_2
                                     42 	.globl _P3_1
                                     43 	.globl _P3_0
                                     44 	.globl _EA
                                     45 	.globl _ES
                                     46 	.globl _ET1
                                     47 	.globl _EX1
                                     48 	.globl _ET0
                                     49 	.globl _EX0
                                     50 	.globl _P2_7
                                     51 	.globl _P2_6
                                     52 	.globl _P2_5
                                     53 	.globl _P2_4
                                     54 	.globl _P2_3
                                     55 	.globl _P2_2
                                     56 	.globl _P2_1
                                     57 	.globl _P2_0
                                     58 	.globl _SM0
                                     59 	.globl _SM1
                                     60 	.globl _SM2
                                     61 	.globl _REN
                                     62 	.globl _TB8
                                     63 	.globl _RB8
                                     64 	.globl _TI
                                     65 	.globl _RI
                                     66 	.globl _P1_7
                                     67 	.globl _P1_6
                                     68 	.globl _P1_5
                                     69 	.globl _P1_4
                                     70 	.globl _P1_3
                                     71 	.globl _P1_2
                                     72 	.globl _P1_1
                                     73 	.globl _P1_0
                                     74 	.globl _TF1
                                     75 	.globl _TR1
                                     76 	.globl _TF0
                                     77 	.globl _TR0
                                     78 	.globl _IE1
                                     79 	.globl _IT1
                                     80 	.globl _IE0
                                     81 	.globl _IT0
                                     82 	.globl _P0_7
                                     83 	.globl _P0_6
                                     84 	.globl _P0_5
                                     85 	.globl _P0_4
                                     86 	.globl _P0_3
                                     87 	.globl _P0_2
                                     88 	.globl _P0_1
                                     89 	.globl _P0_0
                                     90 	.globl _B
                                     91 	.globl _ACC
                                     92 	.globl _PSW
                                     93 	.globl _IP
                                     94 	.globl _P3
                                     95 	.globl _IE
                                     96 	.globl _P2
                                     97 	.globl _SBUF
                                     98 	.globl _SCON
                                     99 	.globl _P1
                                    100 	.globl _TH1
                                    101 	.globl _TH0
                                    102 	.globl _TL1
                                    103 	.globl _TL0
                                    104 	.globl _TMOD
                                    105 	.globl _TCON
                                    106 	.globl _PCON
                                    107 	.globl _DPH
                                    108 	.globl _DPL
                                    109 	.globl _SP
                                    110 	.globl _P0
                                    111 ;--------------------------------------------------------
                                    112 ; special function registers
                                    113 ;--------------------------------------------------------
                                    114 	.area RSEG    (ABS,DATA)
      000000                        115 	.org 0x0000
                           000080   116 _P0	=	0x0080
                           000081   117 _SP	=	0x0081
                           000082   118 _DPL	=	0x0082
                           000083   119 _DPH	=	0x0083
                           000087   120 _PCON	=	0x0087
                           000088   121 _TCON	=	0x0088
                           000089   122 _TMOD	=	0x0089
                           00008A   123 _TL0	=	0x008a
                           00008B   124 _TL1	=	0x008b
                           00008C   125 _TH0	=	0x008c
                           00008D   126 _TH1	=	0x008d
                           000090   127 _P1	=	0x0090
                           000098   128 _SCON	=	0x0098
                           000099   129 _SBUF	=	0x0099
                           0000A0   130 _P2	=	0x00a0
                           0000A8   131 _IE	=	0x00a8
                           0000B0   132 _P3	=	0x00b0
                           0000B8   133 _IP	=	0x00b8
                           0000D0   134 _PSW	=	0x00d0
                           0000E0   135 _ACC	=	0x00e0
                           0000F0   136 _B	=	0x00f0
                                    137 ;--------------------------------------------------------
                                    138 ; special function bits
                                    139 ;--------------------------------------------------------
                                    140 	.area RSEG    (ABS,DATA)
      000000                        141 	.org 0x0000
                           000080   142 _P0_0	=	0x0080
                           000081   143 _P0_1	=	0x0081
                           000082   144 _P0_2	=	0x0082
                           000083   145 _P0_3	=	0x0083
                           000084   146 _P0_4	=	0x0084
                           000085   147 _P0_5	=	0x0085
                           000086   148 _P0_6	=	0x0086
                           000087   149 _P0_7	=	0x0087
                           000088   150 _IT0	=	0x0088
                           000089   151 _IE0	=	0x0089
                           00008A   152 _IT1	=	0x008a
                           00008B   153 _IE1	=	0x008b
                           00008C   154 _TR0	=	0x008c
                           00008D   155 _TF0	=	0x008d
                           00008E   156 _TR1	=	0x008e
                           00008F   157 _TF1	=	0x008f
                           000090   158 _P1_0	=	0x0090
                           000091   159 _P1_1	=	0x0091
                           000092   160 _P1_2	=	0x0092
                           000093   161 _P1_3	=	0x0093
                           000094   162 _P1_4	=	0x0094
                           000095   163 _P1_5	=	0x0095
                           000096   164 _P1_6	=	0x0096
                           000097   165 _P1_7	=	0x0097
                           000098   166 _RI	=	0x0098
                           000099   167 _TI	=	0x0099
                           00009A   168 _RB8	=	0x009a
                           00009B   169 _TB8	=	0x009b
                           00009C   170 _REN	=	0x009c
                           00009D   171 _SM2	=	0x009d
                           00009E   172 _SM1	=	0x009e
                           00009F   173 _SM0	=	0x009f
                           0000A0   174 _P2_0	=	0x00a0
                           0000A1   175 _P2_1	=	0x00a1
                           0000A2   176 _P2_2	=	0x00a2
                           0000A3   177 _P2_3	=	0x00a3
                           0000A4   178 _P2_4	=	0x00a4
                           0000A5   179 _P2_5	=	0x00a5
                           0000A6   180 _P2_6	=	0x00a6
                           0000A7   181 _P2_7	=	0x00a7
                           0000A8   182 _EX0	=	0x00a8
                           0000A9   183 _ET0	=	0x00a9
                           0000AA   184 _EX1	=	0x00aa
                           0000AB   185 _ET1	=	0x00ab
                           0000AC   186 _ES	=	0x00ac
                           0000AF   187 _EA	=	0x00af
                           0000B0   188 _P3_0	=	0x00b0
                           0000B1   189 _P3_1	=	0x00b1
                           0000B2   190 _P3_2	=	0x00b2
                           0000B3   191 _P3_3	=	0x00b3
                           0000B4   192 _P3_4	=	0x00b4
                           0000B5   193 _P3_5	=	0x00b5
                           0000B6   194 _P3_6	=	0x00b6
                           0000B7   195 _P3_7	=	0x00b7
                           0000B0   196 _RXD	=	0x00b0
                           0000B1   197 _TXD	=	0x00b1
                           0000B2   198 _INT0	=	0x00b2
                           0000B3   199 _INT1	=	0x00b3
                           0000B4   200 _T0	=	0x00b4
                           0000B5   201 _T1	=	0x00b5
                           0000B6   202 _WR	=	0x00b6
                           0000B7   203 _RD	=	0x00b7
                           0000B8   204 _PX0	=	0x00b8
                           0000B9   205 _PT0	=	0x00b9
                           0000BA   206 _PX1	=	0x00ba
                           0000BB   207 _PT1	=	0x00bb
                           0000BC   208 _PS	=	0x00bc
                           0000D0   209 _P	=	0x00d0
                           0000D1   210 _F1	=	0x00d1
                           0000D2   211 _OV	=	0x00d2
                           0000D3   212 _RS0	=	0x00d3
                           0000D4   213 _RS1	=	0x00d4
                           0000D5   214 _F0	=	0x00d5
                           0000D6   215 _AC	=	0x00d6
                           0000D7   216 _CY	=	0x00d7
                                    217 ;--------------------------------------------------------
                                    218 ; overlayable register banks
                                    219 ;--------------------------------------------------------
                                    220 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        221 	.ds 8
                                    222 ;--------------------------------------------------------
                                    223 ; internal ram data
                                    224 ;--------------------------------------------------------
                                    225 	.area DSEG    (DATA)
      000008                        226 _main_hi_65536_7:
      000008                        227 	.ds 16
                                    228 ;--------------------------------------------------------
                                    229 ; overlayable items in internal ram 
                                    230 ;--------------------------------------------------------
                                    231 ;--------------------------------------------------------
                                    232 ; Stack segment in internal ram 
                                    233 ;--------------------------------------------------------
                                    234 	.area	SSEG
      00001D                        235 __start__stack:
      00001D                        236 	.ds	1
                                    237 
                                    238 ;--------------------------------------------------------
                                    239 ; indirectly addressable internal ram data
                                    240 ;--------------------------------------------------------
                                    241 	.area ISEG    (DATA)
                                    242 ;--------------------------------------------------------
                                    243 ; absolute internal ram data
                                    244 ;--------------------------------------------------------
                                    245 	.area IABS    (ABS,DATA)
                                    246 	.area IABS    (ABS,DATA)
                                    247 ;--------------------------------------------------------
                                    248 ; bit data
                                    249 ;--------------------------------------------------------
                                    250 	.area BSEG    (BIT)
                                    251 ;--------------------------------------------------------
                                    252 ; paged external ram data
                                    253 ;--------------------------------------------------------
                                    254 	.area PSEG    (PAG,XDATA)
                                    255 ;--------------------------------------------------------
                                    256 ; external ram data
                                    257 ;--------------------------------------------------------
                                    258 	.area XSEG    (XDATA)
                                    259 ;--------------------------------------------------------
                                    260 ; absolute external ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area XABS    (ABS,XDATA)
                                    263 ;--------------------------------------------------------
                                    264 ; external initialized ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area XISEG   (XDATA)
                                    267 	.area HOME    (CODE)
                                    268 	.area GSINIT0 (CODE)
                                    269 	.area GSINIT1 (CODE)
                                    270 	.area GSINIT2 (CODE)
                                    271 	.area GSINIT3 (CODE)
                                    272 	.area GSINIT4 (CODE)
                                    273 	.area GSINIT5 (CODE)
                                    274 	.area GSINIT  (CODE)
                                    275 	.area GSFINAL (CODE)
                                    276 	.area CSEG    (CODE)
                                    277 ;--------------------------------------------------------
                                    278 ; interrupt vector 
                                    279 ;--------------------------------------------------------
                                    280 	.area HOME    (CODE)
      000000                        281 __interrupt_vect:
      000000 02 00 06         [24]  282 	ljmp	__sdcc_gsinit_startup
                                    283 ;--------------------------------------------------------
                                    284 ; global & static initialisations
                                    285 ;--------------------------------------------------------
                                    286 	.area HOME    (CODE)
                                    287 	.area GSINIT  (CODE)
                                    288 	.area GSFINAL (CODE)
                                    289 	.area GSINIT  (CODE)
                                    290 	.globl __sdcc_gsinit_startup
                                    291 	.globl __sdcc_program_startup
                                    292 	.globl __start__stack
                                    293 	.globl __mcs51_genXINIT
                                    294 	.globl __mcs51_genXRAMCLEAR
                                    295 	.globl __mcs51_genRAMCLEAR
                                    296 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  297 	ljmp	__sdcc_program_startup
                                    298 ;--------------------------------------------------------
                                    299 ; Home
                                    300 ;--------------------------------------------------------
                                    301 	.area HOME    (CODE)
                                    302 	.area HOME    (CODE)
      000003                        303 __sdcc_program_startup:
      000003 02 00 62         [24]  304 	ljmp	_main
                                    305 ;	return from main will return to caller
                                    306 ;--------------------------------------------------------
                                    307 ; code
                                    308 ;--------------------------------------------------------
                                    309 	.area CSEG    (CODE)
                                    310 ;------------------------------------------------------------
                                    311 ;Allocation info for local variables in function 'main'
                                    312 ;------------------------------------------------------------
                                    313 ;shift                     Allocated to registers r7 
                                    314 ;i                         Allocated to registers r6 
                                    315 ;hi                        Allocated with name '_main_hi_65536_7'
                                    316 ;------------------------------------------------------------
                                    317 ;	./src/main.c:5: void main(void)
                                    318 ;	-----------------------------------------
                                    319 ;	 function main
                                    320 ;	-----------------------------------------
      000062                        321 _main:
                           000007   322 	ar7 = 0x07
                           000006   323 	ar6 = 0x06
                           000005   324 	ar5 = 0x05
                           000004   325 	ar4 = 0x04
                           000003   326 	ar3 = 0x03
                           000002   327 	ar2 = 0x02
                           000001   328 	ar1 = 0x01
                           000000   329 	ar0 = 0x00
                                    330 ;	./src/main.c:7: unsigned char shift = 0;
      000062 7F 00            [12]  331 	mov	r7,#0x00
                                    332 ;	./src/main.c:11: unsigned char hi[] = {
      000064 75 08 FF         [24]  333 	mov	_main_hi_65536_7,#0xff
      000067 75 09 10         [24]  334 	mov	(_main_hi_65536_7 + 0x0001),#0x10
      00006A 75 0A 10         [24]  335 	mov	(_main_hi_65536_7 + 0x0002),#0x10
      00006D 75 0B FF         [24]  336 	mov	(_main_hi_65536_7 + 0x0003),#0xff
                                    337 ;	1-genFromRTrack replaced	mov	(_main_hi_65536_7 + 0x0004),#0x00
      000070 8F 0C            [24]  338 	mov	(_main_hi_65536_7 + 0x0004),r7
      000072 75 0D 81         [24]  339 	mov	(_main_hi_65536_7 + 0x0005),#0x81
      000075 75 0E FF         [24]  340 	mov	(_main_hi_65536_7 + 0x0006),#0xff
      000078 75 0F 81         [24]  341 	mov	(_main_hi_65536_7 + 0x0007),#0x81
                                    342 ;	1-genFromRTrack replaced	mov	(_main_hi_65536_7 + 0x0008),#0x00
      00007B 8F 10            [24]  343 	mov	(_main_hi_65536_7 + 0x0008),r7
      00007D 75 11 0E         [24]  344 	mov	(_main_hi_65536_7 + 0x0009),#0x0e
      000080 75 12 1C         [24]  345 	mov	(_main_hi_65536_7 + 0x000a),#0x1c
      000083 75 13 38         [24]  346 	mov	(_main_hi_65536_7 + 0x000b),#0x38
      000086 75 14 1C         [24]  347 	mov	(_main_hi_65536_7 + 0x000c),#0x1c
      000089 75 15 0E         [24]  348 	mov	(_main_hi_65536_7 + 0x000d),#0x0e
                                    349 ;	1-genFromRTrack replaced	mov	(_main_hi_65536_7 + 0x000e),#0x00
      00008C 8F 16            [24]  350 	mov	(_main_hi_65536_7 + 0x000e),r7
                                    351 ;	1-genFromRTrack replaced	mov	(_main_hi_65536_7 + 0x000f),#0x00
      00008E 8F 17            [24]  352 	mov	(_main_hi_65536_7 + 0x000f),r7
                                    353 ;	./src/main.c:30: Initial7219();				 // MAX7219 initialize
      000090 C0 07            [24]  354 	push	ar7
      000092 12 01 E8         [24]  355 	lcall	_Initial7219
      000095 D0 07            [24]  356 	pop	ar7
                                    357 ;	./src/main.c:32: for (i = 8; i >= 1; i--) {
      000097                        358 00111$:
      000097 7E 08            [12]  359 	mov	r6,#0x08
      000099                        360 00107$:
                                    361 ;	./src/main.c:33: Writesingle7219(1, i, hi[(shift + i - 1) % 16]);
      000099 8F 04            [24]  362 	mov	ar4,r7
      00009B 7D 00            [12]  363 	mov	r5,#0x00
      00009D 8E 02            [24]  364 	mov	ar2,r6
      00009F 7B 00            [12]  365 	mov	r3,#0x00
      0000A1 EA               [12]  366 	mov	a,r2
      0000A2 2C               [12]  367 	add	a,r4
      0000A3 FC               [12]  368 	mov	r4,a
      0000A4 EB               [12]  369 	mov	a,r3
      0000A5 3D               [12]  370 	addc	a,r5
      0000A6 FD               [12]  371 	mov	r5,a
      0000A7 EC               [12]  372 	mov	a,r4
      0000A8 24 FF            [12]  373 	add	a,#0xff
      0000AA F5 82            [12]  374 	mov	dpl,a
      0000AC ED               [12]  375 	mov	a,r5
      0000AD 34 FF            [12]  376 	addc	a,#0xff
      0000AF F5 83            [12]  377 	mov	dph,a
      0000B1 75 1B 10         [24]  378 	mov	__modsint_PARM_2,#0x10
                                    379 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      0000B4 8B 1C            [24]  380 	mov	(__modsint_PARM_2 + 1),r3
      0000B6 C0 07            [24]  381 	push	ar7
      0000B8 C0 06            [24]  382 	push	ar6
      0000BA C0 05            [24]  383 	push	ar5
      0000BC C0 04            [24]  384 	push	ar4
      0000BE 12 02 77         [24]  385 	lcall	__modsint
      0000C1 AA 82            [24]  386 	mov	r2,dpl
      0000C3 D0 04            [24]  387 	pop	ar4
      0000C5 D0 05            [24]  388 	pop	ar5
      0000C7 D0 06            [24]  389 	pop	ar6
      0000C9 EA               [12]  390 	mov	a,r2
      0000CA 24 08            [12]  391 	add	a,#_main_hi_65536_7
      0000CC F9               [12]  392 	mov	r1,a
      0000CD 87 1A            [24]  393 	mov	_Writesingle7219_PARM_3,@r1
      0000CF 8E 19            [24]  394 	mov	_Writesingle7219_PARM_2,r6
      0000D1 75 82 01         [24]  395 	mov	dpl,#0x01
      0000D4 C0 06            [24]  396 	push	ar6
      0000D6 C0 05            [24]  397 	push	ar5
      0000D8 C0 04            [24]  398 	push	ar4
      0000DA 12 01 A5         [24]  399 	lcall	_Writesingle7219
      0000DD D0 04            [24]  400 	pop	ar4
      0000DF D0 05            [24]  401 	pop	ar5
                                    402 ;	./src/main.c:34: Writesingle7219(2, i, hi[(shift + i + 8 - 1) % 16]);
      0000E1 74 07            [12]  403 	mov	a,#0x07
      0000E3 2C               [12]  404 	add	a,r4
      0000E4 F5 82            [12]  405 	mov	dpl,a
      0000E6 E4               [12]  406 	clr	a
      0000E7 3D               [12]  407 	addc	a,r5
      0000E8 F5 83            [12]  408 	mov	dph,a
      0000EA 75 1B 10         [24]  409 	mov	__modsint_PARM_2,#0x10
      0000ED 75 1C 00         [24]  410 	mov	(__modsint_PARM_2 + 1),#0x00
      0000F0 12 02 77         [24]  411 	lcall	__modsint
      0000F3 AC 82            [24]  412 	mov	r4,dpl
      0000F5 D0 06            [24]  413 	pop	ar6
      0000F7 EC               [12]  414 	mov	a,r4
      0000F8 24 08            [12]  415 	add	a,#_main_hi_65536_7
      0000FA F9               [12]  416 	mov	r1,a
      0000FB 87 1A            [24]  417 	mov	_Writesingle7219_PARM_3,@r1
      0000FD 8E 19            [24]  418 	mov	_Writesingle7219_PARM_2,r6
      0000FF 75 82 02         [24]  419 	mov	dpl,#0x02
      000102 C0 06            [24]  420 	push	ar6
      000104 12 01 A5         [24]  421 	lcall	_Writesingle7219
      000107 D0 06            [24]  422 	pop	ar6
      000109 D0 07            [24]  423 	pop	ar7
                                    424 ;	./src/main.c:32: for (i = 8; i >= 1; i--) {
      00010B 1E               [12]  425 	dec	r6
      00010C BE 01 00         [24]  426 	cjne	r6,#0x01,00128$
      00010F                        427 00128$:
      00010F 50 88            [24]  428 	jnc	00107$
                                    429 ;	./src/main.c:36: shift += 1;
      000111 8F 06            [24]  430 	mov	ar6,r7
      000113 EE               [12]  431 	mov	a,r6
      000114 04               [12]  432 	inc	a
      000115 FF               [12]  433 	mov	r7,a
                                    434 ;	./src/main.c:37: if (shift == 17) shift = 0;
      000116 BF 11 02         [24]  435 	cjne	r7,#0x11,00103$
      000119 7F 00            [12]  436 	mov	r7,#0x00
      00011B                        437 00103$:
                                    438 ;	./src/main.c:38: delay_ms(500);
      00011B 90 01 F4         [24]  439 	mov	dptr,#0x01f4
      00011E C0 07            [24]  440 	push	ar7
      000120 12 01 28         [24]  441 	lcall	_delay_ms
      000123 D0 07            [24]  442 	pop	ar7
                                    443 ;	./src/main.c:40: }
      000125 02 00 97         [24]  444 	ljmp	00111$
                                    445 	.area CSEG    (CODE)
                                    446 	.area CONST   (CODE)
                                    447 	.area XINIT   (CODE)
                                    448 	.area CABS    (ABS,CODE)
