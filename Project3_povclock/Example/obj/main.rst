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
                                     12 	.globl _Time
                                     13 	.globl _EX0_int
                                     14 	.globl _Rotate
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
                                    111 	.globl _time
                                    112 	.globl _tmp
                                    113 	.globl _CntOfSecond
                                    114 	.globl _cnt
                                    115 	.globl _clock
                                    116 	.globl _revise
                                    117 	.globl _num
                                    118 ;--------------------------------------------------------
                                    119 ; special function registers
                                    120 ;--------------------------------------------------------
                                    121 	.area RSEG    (ABS,DATA)
      000000                        122 	.org 0x0000
                           000080   123 _P0	=	0x0080
                           000081   124 _SP	=	0x0081
                           000082   125 _DPL	=	0x0082
                           000083   126 _DPH	=	0x0083
                           000087   127 _PCON	=	0x0087
                           000088   128 _TCON	=	0x0088
                           000089   129 _TMOD	=	0x0089
                           00008A   130 _TL0	=	0x008a
                           00008B   131 _TL1	=	0x008b
                           00008C   132 _TH0	=	0x008c
                           00008D   133 _TH1	=	0x008d
                           000090   134 _P1	=	0x0090
                           000098   135 _SCON	=	0x0098
                           000099   136 _SBUF	=	0x0099
                           0000A0   137 _P2	=	0x00a0
                           0000A8   138 _IE	=	0x00a8
                           0000B0   139 _P3	=	0x00b0
                           0000B8   140 _IP	=	0x00b8
                           0000D0   141 _PSW	=	0x00d0
                           0000E0   142 _ACC	=	0x00e0
                           0000F0   143 _B	=	0x00f0
                                    144 ;--------------------------------------------------------
                                    145 ; special function bits
                                    146 ;--------------------------------------------------------
                                    147 	.area RSEG    (ABS,DATA)
      000000                        148 	.org 0x0000
                           000080   149 _P0_0	=	0x0080
                           000081   150 _P0_1	=	0x0081
                           000082   151 _P0_2	=	0x0082
                           000083   152 _P0_3	=	0x0083
                           000084   153 _P0_4	=	0x0084
                           000085   154 _P0_5	=	0x0085
                           000086   155 _P0_6	=	0x0086
                           000087   156 _P0_7	=	0x0087
                           000088   157 _IT0	=	0x0088
                           000089   158 _IE0	=	0x0089
                           00008A   159 _IT1	=	0x008a
                           00008B   160 _IE1	=	0x008b
                           00008C   161 _TR0	=	0x008c
                           00008D   162 _TF0	=	0x008d
                           00008E   163 _TR1	=	0x008e
                           00008F   164 _TF1	=	0x008f
                           000090   165 _P1_0	=	0x0090
                           000091   166 _P1_1	=	0x0091
                           000092   167 _P1_2	=	0x0092
                           000093   168 _P1_3	=	0x0093
                           000094   169 _P1_4	=	0x0094
                           000095   170 _P1_5	=	0x0095
                           000096   171 _P1_6	=	0x0096
                           000097   172 _P1_7	=	0x0097
                           000098   173 _RI	=	0x0098
                           000099   174 _TI	=	0x0099
                           00009A   175 _RB8	=	0x009a
                           00009B   176 _TB8	=	0x009b
                           00009C   177 _REN	=	0x009c
                           00009D   178 _SM2	=	0x009d
                           00009E   179 _SM1	=	0x009e
                           00009F   180 _SM0	=	0x009f
                           0000A0   181 _P2_0	=	0x00a0
                           0000A1   182 _P2_1	=	0x00a1
                           0000A2   183 _P2_2	=	0x00a2
                           0000A3   184 _P2_3	=	0x00a3
                           0000A4   185 _P2_4	=	0x00a4
                           0000A5   186 _P2_5	=	0x00a5
                           0000A6   187 _P2_6	=	0x00a6
                           0000A7   188 _P2_7	=	0x00a7
                           0000A8   189 _EX0	=	0x00a8
                           0000A9   190 _ET0	=	0x00a9
                           0000AA   191 _EX1	=	0x00aa
                           0000AB   192 _ET1	=	0x00ab
                           0000AC   193 _ES	=	0x00ac
                           0000AF   194 _EA	=	0x00af
                           0000B0   195 _P3_0	=	0x00b0
                           0000B1   196 _P3_1	=	0x00b1
                           0000B2   197 _P3_2	=	0x00b2
                           0000B3   198 _P3_3	=	0x00b3
                           0000B4   199 _P3_4	=	0x00b4
                           0000B5   200 _P3_5	=	0x00b5
                           0000B6   201 _P3_6	=	0x00b6
                           0000B7   202 _P3_7	=	0x00b7
                           0000B0   203 _RXD	=	0x00b0
                           0000B1   204 _TXD	=	0x00b1
                           0000B2   205 _INT0	=	0x00b2
                           0000B3   206 _INT1	=	0x00b3
                           0000B4   207 _T0	=	0x00b4
                           0000B5   208 _T1	=	0x00b5
                           0000B6   209 _WR	=	0x00b6
                           0000B7   210 _RD	=	0x00b7
                           0000B8   211 _PX0	=	0x00b8
                           0000B9   212 _PT0	=	0x00b9
                           0000BA   213 _PX1	=	0x00ba
                           0000BB   214 _PT1	=	0x00bb
                           0000BC   215 _PS	=	0x00bc
                           0000D0   216 _P	=	0x00d0
                           0000D1   217 _F1	=	0x00d1
                           0000D2   218 _OV	=	0x00d2
                           0000D3   219 _RS0	=	0x00d3
                           0000D4   220 _RS1	=	0x00d4
                           0000D5   221 _F0	=	0x00d5
                           0000D6   222 _AC	=	0x00d6
                           0000D7   223 _CY	=	0x00d7
                                    224 ;--------------------------------------------------------
                                    225 ; overlayable register banks
                                    226 ;--------------------------------------------------------
                                    227 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        228 	.ds 8
                                    229 ;--------------------------------------------------------
                                    230 ; overlayable bit register bank
                                    231 ;--------------------------------------------------------
                                    232 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        233 bits:
      000020                        234 	.ds 1
                           008000   235 	b0 = bits[0]
                           008100   236 	b1 = bits[1]
                           008200   237 	b2 = bits[2]
                           008300   238 	b3 = bits[3]
                           008400   239 	b4 = bits[4]
                           008500   240 	b5 = bits[5]
                           008600   241 	b6 = bits[6]
                           008700   242 	b7 = bits[7]
                                    243 ;--------------------------------------------------------
                                    244 ; internal ram data
                                    245 ;--------------------------------------------------------
                                    246 	.area DSEG    (DATA)
      000008                        247 _num::
      000008                        248 	.ds 1
      000009                        249 _revise::
      000009                        250 	.ds 1
      00000A                        251 _clock::
      00000A                        252 	.ds 6
      000010                        253 _cnt::
      000010                        254 	.ds 2
      000012                        255 _CntOfSecond::
      000012                        256 	.ds 2
      000014                        257 _tmp::
      000014                        258 	.ds 2
      000016                        259 _time::
      000016                        260 	.ds 2
                                    261 ;--------------------------------------------------------
                                    262 ; overlayable items in internal ram 
                                    263 ;--------------------------------------------------------
                                    264 ;--------------------------------------------------------
                                    265 ; Stack segment in internal ram 
                                    266 ;--------------------------------------------------------
                                    267 	.area	SSEG
      000021                        268 __start__stack:
      000021                        269 	.ds	1
                                    270 
                                    271 ;--------------------------------------------------------
                                    272 ; indirectly addressable internal ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area ISEG    (DATA)
                                    275 ;--------------------------------------------------------
                                    276 ; absolute internal ram data
                                    277 ;--------------------------------------------------------
                                    278 	.area IABS    (ABS,DATA)
                                    279 	.area IABS    (ABS,DATA)
                                    280 ;--------------------------------------------------------
                                    281 ; bit data
                                    282 ;--------------------------------------------------------
                                    283 	.area BSEG    (BIT)
                                    284 ;--------------------------------------------------------
                                    285 ; paged external ram data
                                    286 ;--------------------------------------------------------
                                    287 	.area PSEG    (PAG,XDATA)
                                    288 ;--------------------------------------------------------
                                    289 ; external ram data
                                    290 ;--------------------------------------------------------
                                    291 	.area XSEG    (XDATA)
                                    292 ;--------------------------------------------------------
                                    293 ; absolute external ram data
                                    294 ;--------------------------------------------------------
                                    295 	.area XABS    (ABS,XDATA)
                                    296 ;--------------------------------------------------------
                                    297 ; external initialized ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area XISEG   (XDATA)
                                    300 	.area HOME    (CODE)
                                    301 	.area GSINIT0 (CODE)
                                    302 	.area GSINIT1 (CODE)
                                    303 	.area GSINIT2 (CODE)
                                    304 	.area GSINIT3 (CODE)
                                    305 	.area GSINIT4 (CODE)
                                    306 	.area GSINIT5 (CODE)
                                    307 	.area GSINIT  (CODE)
                                    308 	.area GSFINAL (CODE)
                                    309 	.area CSEG    (CODE)
                                    310 ;--------------------------------------------------------
                                    311 ; interrupt vector 
                                    312 ;--------------------------------------------------------
                                    313 	.area HOME    (CODE)
      000000                        314 __interrupt_vect:
      000000 02 00 11         [24]  315 	ljmp	__sdcc_gsinit_startup
      000003 02 01 00         [24]  316 	ljmp	_EX0_int
      000006                        317 	.ds	5
      00000B 02 01 77         [24]  318 	ljmp	_Time
                                    319 ;--------------------------------------------------------
                                    320 ; global & static initialisations
                                    321 ;--------------------------------------------------------
                                    322 	.area HOME    (CODE)
                                    323 	.area GSINIT  (CODE)
                                    324 	.area GSFINAL (CODE)
                                    325 	.area GSINIT  (CODE)
                                    326 	.globl __sdcc_gsinit_startup
                                    327 	.globl __sdcc_program_startup
                                    328 	.globl __start__stack
                                    329 	.globl __mcs51_genXINIT
                                    330 	.globl __mcs51_genXRAMCLEAR
                                    331 	.globl __mcs51_genRAMCLEAR
                                    332 ;	./src/main.c:3: char num = 0, revise = 0;
      00006A 75 08 00         [24]  333 	mov	_num,#0x00
                                    334 ;	./src/main.c:3: int clock[3] = {0, 20, 40}, cnt = 0, CntOfSecond = 0, tmp = 0, time = 0;
      00006D 75 09 00         [24]  335 	mov	_revise,#0x00
                                    336 ;	./src/main.c:4: 
      000070 E4               [12]  337 	clr	a
      000071 F5 0A            [12]  338 	mov	(_clock + 0),a
      000073 F5 0B            [12]  339 	mov	(_clock + 1),a
      000075 75 0C 14         [24]  340 	mov	((_clock + 0x0002) + 0),#0x14
                                    341 ;	1-genFromRTrack replaced	mov	((_clock + 0x0002) + 1),#0x00
      000078 F5 0D            [12]  342 	mov	((_clock + 0x0002) + 1),a
      00007A 75 0E 28         [24]  343 	mov	((_clock + 0x0004) + 0),#0x28
                                    344 ;	1-genFromRTrack replaced	mov	((_clock + 0x0004) + 1),#0x00
      00007D F5 0F            [12]  345 	mov	((_clock + 0x0004) + 1),a
                                    346 ;	./src/main.c:4: int clock[3] = {0, 20, 40}, cnt = 0, CntOfSecond = 0, tmp = 0, time = 0;
      00007F F5 10            [12]  347 	mov	_cnt,a
      000081 F5 11            [12]  348 	mov	(_cnt + 1),a
                                    349 ;	./src/main.c:4: 
      000083 F5 12            [12]  350 	mov	_CntOfSecond,a
      000085 F5 13            [12]  351 	mov	(_CntOfSecond + 1),a
                                    352 ;	./src/main.c:4: int clock[3] = {0, 20, 40}, cnt = 0, CntOfSecond = 0, tmp = 0, time = 0;
      000087 F5 14            [12]  353 	mov	_tmp,a
      000089 F5 15            [12]  354 	mov	(_tmp + 1),a
                                    355 ;	./src/main.c:4: 
      00008B F5 16            [12]  356 	mov	_time,a
      00008D F5 17            [12]  357 	mov	(_time + 1),a
                                    358 	.area GSFINAL (CODE)
      00008F 02 00 0E         [24]  359 	ljmp	__sdcc_program_startup
                                    360 ;--------------------------------------------------------
                                    361 ; Home
                                    362 ;--------------------------------------------------------
                                    363 	.area HOME    (CODE)
                                    364 	.area HOME    (CODE)
      00000E                        365 __sdcc_program_startup:
      00000E 02 02 A7         [24]  366 	ljmp	_main
                                    367 ;	return from main will return to caller
                                    368 ;--------------------------------------------------------
                                    369 ; code
                                    370 ;--------------------------------------------------------
                                    371 	.area CSEG    (CODE)
                                    372 ;------------------------------------------------------------
                                    373 ;Allocation info for local variables in function 'Rotate'
                                    374 ;------------------------------------------------------------
                                    375 ;	./src/main.c:6: void Rotate(void) {
                                    376 ;	-----------------------------------------
                                    377 ;	 function Rotate
                                    378 ;	-----------------------------------------
      000092                        379 _Rotate:
                           000007   380 	ar7 = 0x07
                           000006   381 	ar6 = 0x06
                           000005   382 	ar5 = 0x05
                           000004   383 	ar4 = 0x04
                           000003   384 	ar3 = 0x03
                           000002   385 	ar2 = 0x02
                           000001   386 	ar1 = 0x01
                           000000   387 	ar0 = 0x00
                                    388 ;	./src/main.c:7: clock[0]--;
      000092 AE 0A            [24]  389 	mov	r6,(_clock + 0)
      000094 AF 0B            [24]  390 	mov	r7,(_clock + 1)
      000096 1E               [12]  391 	dec	r6
      000097 BE FF 01         [24]  392 	cjne	r6,#0xff,00133$
      00009A 1F               [12]  393 	dec	r7
      00009B                        394 00133$:
      00009B 8E 0A            [24]  395 	mov	(_clock + 0),r6
      00009D 8F 0B            [24]  396 	mov	(_clock + 1),r7
                                    397 ;	./src/main.c:8: if (clock[0] == 30) {
      00009F BE 1E 33         [24]  398 	cjne	r6,#0x1e,00104$
      0000A2 BF 00 30         [24]  399 	cjne	r7,#0x00,00104$
                                    400 ;	./src/main.c:9: clock[1]--;
      0000A5 AE 0C            [24]  401 	mov	r6,((_clock + 0x0002) + 0)
      0000A7 AF 0D            [24]  402 	mov	r7,((_clock + 0x0002) + 1)
      0000A9 1E               [12]  403 	dec	r6
      0000AA BE FF 01         [24]  404 	cjne	r6,#0xff,00136$
      0000AD 1F               [12]  405 	dec	r7
      0000AE                        406 00136$:
      0000AE 8E 0C            [24]  407 	mov	((_clock + 0x0002) + 0),r6
      0000B0 8F 0D            [24]  408 	mov	((_clock + 0x0002) + 1),r7
                                    409 ;	./src/main.c:10: if (clock[1] % 12 == 0) clock[2]--;
      0000B2 75 18 0C         [24]  410 	mov	__modsint_PARM_2,#0x0c
      0000B5 75 19 00         [24]  411 	mov	(__modsint_PARM_2 + 1),#0x00
      0000B8 8E 82            [24]  412 	mov	dpl,r6
      0000BA 8F 83            [24]  413 	mov	dph,r7
      0000BC 12 03 32         [24]  414 	lcall	__modsint
      0000BF E5 82            [12]  415 	mov	a,dpl
      0000C1 85 83 F0         [24]  416 	mov	b,dph
      0000C4 45 F0            [12]  417 	orl	a,b
      0000C6 70 0D            [24]  418 	jnz	00104$
      0000C8 AE 0E            [24]  419 	mov	r6,((_clock + 0x0004) + 0)
      0000CA AF 0F            [24]  420 	mov	r7,((_clock + 0x0004) + 1)
      0000CC 1E               [12]  421 	dec	r6
      0000CD BE FF 01         [24]  422 	cjne	r6,#0xff,00138$
      0000D0 1F               [12]  423 	dec	r7
      0000D1                        424 00138$:
      0000D1 8E 0E            [24]  425 	mov	((_clock + 0x0004) + 0),r6
      0000D3 8F 0F            [24]  426 	mov	((_clock + 0x0004) + 1),r7
      0000D5                        427 00104$:
                                    428 ;	./src/main.c:12: if (clock[0] == -1) clock[0] = 59;
      0000D5 74 FF            [12]  429 	mov	a,#0xff
      0000D7 B5 0A 09         [24]  430 	cjne	a,_clock,00106$
      0000DA B5 0B 06         [24]  431 	cjne	a,(_clock + 1),00106$
      0000DD 75 0A 3B         [24]  432 	mov	(_clock + 0),#0x3b
      0000E0 75 0B 00         [24]  433 	mov	(_clock + 1),#0x00
      0000E3                        434 00106$:
                                    435 ;	./src/main.c:13: if (clock[1] == -1) clock[1] = 59;
      0000E3 74 FF            [12]  436 	mov	a,#0xff
      0000E5 B5 0C 09         [24]  437 	cjne	a,(_clock + 0x0002),00108$
      0000E8 B5 0D 06         [24]  438 	cjne	a,((_clock + 0x0002) + 1),00108$
      0000EB 75 0C 3B         [24]  439 	mov	((_clock + 0x0002) + 0),#0x3b
      0000EE 75 0D 00         [24]  440 	mov	((_clock + 0x0002) + 1),#0x00
      0000F1                        441 00108$:
                                    442 ;	./src/main.c:14: if (clock[2] == -1) clock[2] = 59;
      0000F1 74 FF            [12]  443 	mov	a,#0xff
      0000F3 B5 0E 09         [24]  444 	cjne	a,(_clock + 0x0004),00111$
      0000F6 B5 0F 06         [24]  445 	cjne	a,((_clock + 0x0004) + 1),00111$
      0000F9 75 0E 3B         [24]  446 	mov	((_clock + 0x0004) + 0),#0x3b
      0000FC 75 0F 00         [24]  447 	mov	((_clock + 0x0004) + 1),#0x00
      0000FF                        448 00111$:
                                    449 ;	./src/main.c:15: }
      0000FF 22               [24]  450 	ret
                                    451 ;------------------------------------------------------------
                                    452 ;Allocation info for local variables in function 'EX0_int'
                                    453 ;------------------------------------------------------------
                                    454 ;	./src/main.c:17: void EX0_int(void) __interrupt (0) {
                                    455 ;	-----------------------------------------
                                    456 ;	 function EX0_int
                                    457 ;	-----------------------------------------
      000100                        458 _EX0_int:
      000100 C0 20            [24]  459 	push	bits
      000102 C0 E0            [24]  460 	push	acc
      000104 C0 F0            [24]  461 	push	b
      000106 C0 82            [24]  462 	push	dpl
      000108 C0 83            [24]  463 	push	dph
      00010A C0 07            [24]  464 	push	(0+7)
      00010C C0 06            [24]  465 	push	(0+6)
      00010E C0 05            [24]  466 	push	(0+5)
      000110 C0 04            [24]  467 	push	(0+4)
      000112 C0 03            [24]  468 	push	(0+3)
      000114 C0 02            [24]  469 	push	(0+2)
      000116 C0 01            [24]  470 	push	(0+1)
      000118 C0 00            [24]  471 	push	(0+0)
      00011A C0 D0            [24]  472 	push	psw
      00011C 75 D0 00         [24]  473 	mov	psw,#0x00
                                    474 ;	./src/main.c:18: CntOfSecond = cnt / 60 + 1;
      00011F 75 18 3C         [24]  475 	mov	__divsint_PARM_2,#0x3c
      000122 75 19 00         [24]  476 	mov	(__divsint_PARM_2 + 1),#0x00
      000125 85 10 82         [24]  477 	mov	dpl,_cnt
      000128 85 11 83         [24]  478 	mov	dph,(_cnt + 1)
      00012B 12 03 68         [24]  479 	lcall	__divsint
      00012E E5 82            [12]  480 	mov	a,dpl
      000130 85 83 F0         [24]  481 	mov	b,dph
      000133 24 01            [12]  482 	add	a,#0x01
      000135 F5 12            [12]  483 	mov	_CntOfSecond,a
      000137 E4               [12]  484 	clr	a
      000138 35 F0            [12]  485 	addc	a,b
      00013A F5 13            [12]  486 	mov	(_CntOfSecond + 1),a
                                    487 ;	./src/main.c:19: revise = cnt % 60;
      00013C 75 18 3C         [24]  488 	mov	__modsint_PARM_2,#0x3c
      00013F 75 19 00         [24]  489 	mov	(__modsint_PARM_2 + 1),#0x00
      000142 85 10 82         [24]  490 	mov	dpl,_cnt
      000145 85 11 83         [24]  491 	mov	dph,(_cnt + 1)
      000148 12 03 32         [24]  492 	lcall	__modsint
      00014B AE 82            [24]  493 	mov	r6,dpl
      00014D 8E 09            [24]  494 	mov	_revise,r6
                                    495 ;	./src/main.c:20: cnt = 0;
      00014F E4               [12]  496 	clr	a
      000150 F5 10            [12]  497 	mov	_cnt,a
      000152 F5 11            [12]  498 	mov	(_cnt + 1),a
                                    499 ;	./src/main.c:21: tmp = 0;
      000154 F5 14            [12]  500 	mov	_tmp,a
      000156 F5 15            [12]  501 	mov	(_tmp + 1),a
                                    502 ;	./src/main.c:22: num = 0;
                                    503 ;	1-genFromRTrack replaced	mov	_num,#0x00
      000158 F5 08            [12]  504 	mov	_num,a
                                    505 ;	./src/main.c:23: }
      00015A D0 D0            [24]  506 	pop	psw
      00015C D0 00            [24]  507 	pop	(0+0)
      00015E D0 01            [24]  508 	pop	(0+1)
      000160 D0 02            [24]  509 	pop	(0+2)
      000162 D0 03            [24]  510 	pop	(0+3)
      000164 D0 04            [24]  511 	pop	(0+4)
      000166 D0 05            [24]  512 	pop	(0+5)
      000168 D0 06            [24]  513 	pop	(0+6)
      00016A D0 07            [24]  514 	pop	(0+7)
      00016C D0 83            [24]  515 	pop	dph
      00016E D0 82            [24]  516 	pop	dpl
      000170 D0 F0            [24]  517 	pop	b
      000172 D0 E0            [24]  518 	pop	acc
      000174 D0 20            [24]  519 	pop	bits
      000176 32               [24]  520 	reti
                                    521 ;------------------------------------------------------------
                                    522 ;Allocation info for local variables in function 'Time'
                                    523 ;------------------------------------------------------------
                                    524 ;	./src/main.c:25: void Time(void) __interrupt (1) {
                                    525 ;	-----------------------------------------
                                    526 ;	 function Time
                                    527 ;	-----------------------------------------
      000177                        528 _Time:
      000177 C0 20            [24]  529 	push	bits
      000179 C0 E0            [24]  530 	push	acc
      00017B C0 F0            [24]  531 	push	b
      00017D C0 82            [24]  532 	push	dpl
      00017F C0 83            [24]  533 	push	dph
      000181 C0 07            [24]  534 	push	(0+7)
      000183 C0 06            [24]  535 	push	(0+6)
      000185 C0 05            [24]  536 	push	(0+5)
      000187 C0 04            [24]  537 	push	(0+4)
      000189 C0 03            [24]  538 	push	(0+3)
      00018B C0 02            [24]  539 	push	(0+2)
      00018D C0 01            [24]  540 	push	(0+1)
      00018F C0 00            [24]  541 	push	(0+0)
      000191 C0 D0            [24]  542 	push	psw
      000193 75 D0 00         [24]  543 	mov	psw,#0x00
                                    544 ;	./src/main.c:26: TH0 = (65536 - 5) >> 8;
      000196 75 8C FF         [24]  545 	mov	_TH0,#0xff
                                    546 ;	./src/main.c:27: TL0 = (65536 - 5) % 256;
      000199 75 8A FB         [24]  547 	mov	_TL0,#0xfb
                                    548 ;	./src/main.c:29: cnt++;
      00019C 05 10            [12]  549 	inc	_cnt
      00019E E4               [12]  550 	clr	a
      00019F B5 10 02         [24]  551 	cjne	a,_cnt,00162$
      0001A2 05 11            [12]  552 	inc	(_cnt + 1)
      0001A4                        553 00162$:
                                    554 ;	./src/main.c:30: tmp++;
      0001A4 05 14            [12]  555 	inc	_tmp
      0001A6 E4               [12]  556 	clr	a
      0001A7 B5 14 02         [24]  557 	cjne	a,_tmp,00163$
      0001AA 05 15            [12]  558 	inc	(_tmp + 1)
      0001AC                        559 00163$:
                                    560 ;	./src/main.c:31: P0 = 254; P2 = 255;
      0001AC 75 80 FE         [24]  561 	mov	_P0,#0xfe
      0001AF 75 A0 FF         [24]  562 	mov	_P2,#0xff
                                    563 ;	./src/main.c:32: if (tmp == CntOfSecond && num < 60) {
      0001B2 E5 12            [12]  564 	mov	a,_CntOfSecond
      0001B4 B5 14 07         [24]  565 	cjne	a,_tmp,00164$
      0001B7 E5 13            [12]  566 	mov	a,(_CntOfSecond + 1)
      0001B9 B5 15 02         [24]  567 	cjne	a,(_tmp + 1),00164$
      0001BC 80 03            [24]  568 	sjmp	00165$
      0001BE                        569 00164$:
      0001BE 02 02 67         [24]  570 	ljmp	00114$
      0001C1                        571 00165$:
      0001C1 74 C4            [12]  572 	mov	a,#0x100 - 0x3c
      0001C3 25 08            [12]  573 	add	a,_num
      0001C5 50 03            [24]  574 	jnc	00166$
      0001C7 02 02 67         [24]  575 	ljmp	00114$
      0001CA                        576 00166$:
                                    577 ;	./src/main.c:33: if (num % 5 == 0) P0_1 = 0;
      0001CA AE 08            [24]  578 	mov	r6,_num
      0001CC 7F 00            [12]  579 	mov	r7,#0x00
      0001CE 75 18 05         [24]  580 	mov	__modsint_PARM_2,#0x05
                                    581 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      0001D1 8F 19            [24]  582 	mov	(__modsint_PARM_2 + 1),r7
      0001D3 8E 82            [24]  583 	mov	dpl,r6
      0001D5 8F 83            [24]  584 	mov	dph,r7
      0001D7 C0 07            [24]  585 	push	ar7
      0001D9 C0 06            [24]  586 	push	ar6
      0001DB 12 03 32         [24]  587 	lcall	__modsint
      0001DE E5 82            [12]  588 	mov	a,dpl
      0001E0 85 83 F0         [24]  589 	mov	b,dph
      0001E3 D0 06            [24]  590 	pop	ar6
      0001E5 D0 07            [24]  591 	pop	ar7
      0001E7 45 F0            [12]  592 	orl	a,b
      0001E9 70 02            [24]  593 	jnz	00102$
                                    594 ;	assignBit
      0001EB C2 81            [12]  595 	clr	_P0_1
      0001ED                        596 00102$:
                                    597 ;	./src/main.c:34: if (num % 15 == 0) P0_2 = 0;
      0001ED 75 18 0F         [24]  598 	mov	__modsint_PARM_2,#0x0f
      0001F0 75 19 00         [24]  599 	mov	(__modsint_PARM_2 + 1),#0x00
      0001F3 8E 82            [24]  600 	mov	dpl,r6
      0001F5 8F 83            [24]  601 	mov	dph,r7
      0001F7 C0 07            [24]  602 	push	ar7
      0001F9 C0 06            [24]  603 	push	ar6
      0001FB 12 03 32         [24]  604 	lcall	__modsint
      0001FE E5 82            [12]  605 	mov	a,dpl
      000200 85 83 F0         [24]  606 	mov	b,dph
      000203 D0 06            [24]  607 	pop	ar6
      000205 D0 07            [24]  608 	pop	ar7
      000207 45 F0            [12]  609 	orl	a,b
      000209 70 02            [24]  610 	jnz	00104$
                                    611 ;	assignBit
      00020B C2 82            [12]  612 	clr	_P0_2
      00020D                        613 00104$:
                                    614 ;	./src/main.c:35: if (num == clock[0]) {P2 = 0; P0_7 = P0_6 = P0_5 = P0_4 = P0_3 = 0;}
      00020D EE               [12]  615 	mov	a,r6
      00020E B5 0A 19         [24]  616 	cjne	a,_clock,00106$
      000211 EF               [12]  617 	mov	a,r7
      000212 B5 0B 15         [24]  618 	cjne	a,(_clock + 1),00106$
      000215 75 A0 00         [24]  619 	mov	_P2,#0x00
                                    620 ;	assignBit
      000218 C2 83            [12]  621 	clr	_P0_3
                                    622 ;	assignBit
      00021A A2 83            [12]  623 	mov	c,_P0_3
      00021C 92 84            [24]  624 	mov	_P0_4,c
                                    625 ;	assignBit
      00021E A2 84            [12]  626 	mov	c,_P0_4
      000220 92 85            [24]  627 	mov	_P0_5,c
                                    628 ;	assignBit
      000222 A2 85            [12]  629 	mov	c,_P0_5
      000224 92 86            [24]  630 	mov	_P0_6,c
                                    631 ;	assignBit
      000226 A2 86            [12]  632 	mov	c,_P0_6
      000228 92 87            [24]  633 	mov	_P0_7,c
      00022A                        634 00106$:
                                    635 ;	./src/main.c:36: if (num == clock[1]) {P2 = 0; P0_7 = P0_6 = P0_5 = 0;}
      00022A EE               [12]  636 	mov	a,r6
      00022B B5 0C 11         [24]  637 	cjne	a,(_clock + 0x0002),00108$
      00022E EF               [12]  638 	mov	a,r7
      00022F B5 0D 0D         [24]  639 	cjne	a,((_clock + 0x0002) + 1),00108$
      000232 75 A0 00         [24]  640 	mov	_P2,#0x00
                                    641 ;	assignBit
      000235 C2 85            [12]  642 	clr	_P0_5
                                    643 ;	assignBit
      000237 A2 85            [12]  644 	mov	c,_P0_5
      000239 92 86            [24]  645 	mov	_P0_6,c
                                    646 ;	assignBit
      00023B A2 86            [12]  647 	mov	c,_P0_6
      00023D 92 87            [24]  648 	mov	_P0_7,c
      00023F                        649 00108$:
                                    650 ;	./src/main.c:37: if (num == clock[2]) {P2 = 0; P0_7 = 0;}
      00023F EE               [12]  651 	mov	a,r6
      000240 B5 0E 09         [24]  652 	cjne	a,(_clock + 0x0004),00110$
      000243 EF               [12]  653 	mov	a,r7
      000244 B5 0F 05         [24]  654 	cjne	a,((_clock + 0x0004) + 1),00110$
      000247 75 A0 00         [24]  655 	mov	_P2,#0x00
                                    656 ;	assignBit
      00024A C2 87            [12]  657 	clr	_P0_7
      00024C                        658 00110$:
                                    659 ;	./src/main.c:38: num++;
      00024C 05 08            [12]  660 	inc	_num
                                    661 ;	./src/main.c:39: tmp = (revise % 2 ? 0 : 1);
      00024E E5 09            [12]  662 	mov	a,_revise
      000250 30 E0 06         [24]  663 	jnb	acc.0,00120$
      000253 7E 00            [12]  664 	mov	r6,#0x00
      000255 7F 00            [12]  665 	mov	r7,#0x00
      000257 80 04            [24]  666 	sjmp	00121$
      000259                        667 00120$:
      000259 7E 01            [12]  668 	mov	r6,#0x01
      00025B 7F 00            [12]  669 	mov	r7,#0x00
      00025D                        670 00121$:
      00025D 8E 14            [24]  671 	mov	_tmp,r6
      00025F 8F 15            [24]  672 	mov	(_tmp + 1),r7
                                    673 ;	./src/main.c:40: if (revise > 0) revise--;
      000261 E5 09            [12]  674 	mov	a,_revise
      000263 60 02            [24]  675 	jz	00114$
      000265 15 09            [12]  676 	dec	_revise
      000267                        677 00114$:
                                    678 ;	./src/main.c:42: if (time++ > 20000) {
      000267 AE 16            [24]  679 	mov	r6,_time
      000269 AF 17            [24]  680 	mov	r7,(_time + 1)
      00026B 05 16            [12]  681 	inc	_time
      00026D E4               [12]  682 	clr	a
      00026E B5 16 02         [24]  683 	cjne	a,_time,00177$
      000271 05 17            [12]  684 	inc	(_time + 1)
      000273                        685 00177$:
      000273 C3               [12]  686 	clr	c
      000274 74 20            [12]  687 	mov	a,#0x20
      000276 9E               [12]  688 	subb	a,r6
      000277 74 CE            [12]  689 	mov	a,#(0x4e ^ 0x80)
      000279 8F F0            [24]  690 	mov	b,r7
      00027B 63 F0 80         [24]  691 	xrl	b,#0x80
      00027E 95 F0            [12]  692 	subb	a,b
      000280 50 08            [24]  693 	jnc	00118$
                                    694 ;	./src/main.c:43: time = 0; 
      000282 E4               [12]  695 	clr	a
      000283 F5 16            [12]  696 	mov	_time,a
      000285 F5 17            [12]  697 	mov	(_time + 1),a
                                    698 ;	./src/main.c:44: Rotate();
      000287 12 00 92         [24]  699 	lcall	_Rotate
      00028A                        700 00118$:
                                    701 ;	./src/main.c:46: }
      00028A D0 D0            [24]  702 	pop	psw
      00028C D0 00            [24]  703 	pop	(0+0)
      00028E D0 01            [24]  704 	pop	(0+1)
      000290 D0 02            [24]  705 	pop	(0+2)
      000292 D0 03            [24]  706 	pop	(0+3)
      000294 D0 04            [24]  707 	pop	(0+4)
      000296 D0 05            [24]  708 	pop	(0+5)
      000298 D0 06            [24]  709 	pop	(0+6)
      00029A D0 07            [24]  710 	pop	(0+7)
      00029C D0 83            [24]  711 	pop	dph
      00029E D0 82            [24]  712 	pop	dpl
      0002A0 D0 F0            [24]  713 	pop	b
      0002A2 D0 E0            [24]  714 	pop	acc
      0002A4 D0 20            [24]  715 	pop	bits
      0002A6 32               [24]  716 	reti
                                    717 ;------------------------------------------------------------
                                    718 ;Allocation info for local variables in function 'main'
                                    719 ;------------------------------------------------------------
                                    720 ;	./src/main.c:48: void main(void) {
                                    721 ;	-----------------------------------------
                                    722 ;	 function main
                                    723 ;	-----------------------------------------
      0002A7                        724 _main:
                                    725 ;	./src/main.c:49: TMOD = 0x01;
      0002A7 75 89 01         [24]  726 	mov	_TMOD,#0x01
                                    727 ;	./src/main.c:50: TH0 = (65536 - 5) >> 8;
      0002AA 75 8C FF         [24]  728 	mov	_TH0,#0xff
                                    729 ;	./src/main.c:51: TL0 = (65536 - 5) % 256;
      0002AD 75 8A FB         [24]  730 	mov	_TL0,#0xfb
                                    731 ;	./src/main.c:52: EA = 1;  // interrupt
                                    732 ;	assignBit
      0002B0 D2 AF            [12]  733 	setb	_EA
                                    734 ;	./src/main.c:53: ET0 = 1; // timer0 interrupt
                                    735 ;	assignBit
      0002B2 D2 A9            [12]  736 	setb	_ET0
                                    737 ;	./src/main.c:54: EX0 = 1; // external interrupt0
                                    738 ;	assignBit
      0002B4 D2 A8            [12]  739 	setb	_EX0
                                    740 ;	./src/main.c:55: TR0 = 1; // run control bit
                                    741 ;	assignBit
      0002B6 D2 8C            [12]  742 	setb	_TR0
                                    743 ;	./src/main.c:56: IT0 = 1; // edge-triggered
                                    744 ;	assignBit
      0002B8 D2 88            [12]  745 	setb	_IT0
                                    746 ;	./src/main.c:58: while(1) ;
      0002BA                        747 00102$:
                                    748 ;	./src/main.c:59: }
      0002BA 80 FE            [24]  749 	sjmp	00102$
                                    750 	.area CSEG    (CODE)
                                    751 	.area CONST   (CODE)
                                    752 	.area XINIT   (CODE)
                                    753 	.area CABS    (ABS,CODE)
