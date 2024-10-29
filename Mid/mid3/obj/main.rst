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
                                     12 	.globl _T0_isr
                                     13 	.globl _delay_ms
                                     14 	.globl _OLED_SetCursor
                                     15 	.globl _OLED_DisplayString
                                     16 	.globl _OLED_DisplayChar
                                     17 	.globl _OLED_Init
                                     18 	.globl _CY
                                     19 	.globl _AC
                                     20 	.globl _F0
                                     21 	.globl _RS1
                                     22 	.globl _RS0
                                     23 	.globl _OV
                                     24 	.globl _F1
                                     25 	.globl _P
                                     26 	.globl _PS
                                     27 	.globl _PT1
                                     28 	.globl _PX1
                                     29 	.globl _PT0
                                     30 	.globl _PX0
                                     31 	.globl _RD
                                     32 	.globl _WR
                                     33 	.globl _T1
                                     34 	.globl _T0
                                     35 	.globl _INT1
                                     36 	.globl _INT0
                                     37 	.globl _TXD
                                     38 	.globl _RXD
                                     39 	.globl _P3_7
                                     40 	.globl _P3_6
                                     41 	.globl _P3_5
                                     42 	.globl _P3_4
                                     43 	.globl _P3_3
                                     44 	.globl _P3_2
                                     45 	.globl _P3_1
                                     46 	.globl _P3_0
                                     47 	.globl _EA
                                     48 	.globl _ES
                                     49 	.globl _ET1
                                     50 	.globl _EX1
                                     51 	.globl _ET0
                                     52 	.globl _EX0
                                     53 	.globl _P2_7
                                     54 	.globl _P2_6
                                     55 	.globl _P2_5
                                     56 	.globl _P2_4
                                     57 	.globl _P2_3
                                     58 	.globl _P2_2
                                     59 	.globl _P2_1
                                     60 	.globl _P2_0
                                     61 	.globl _SM0
                                     62 	.globl _SM1
                                     63 	.globl _SM2
                                     64 	.globl _REN
                                     65 	.globl _TB8
                                     66 	.globl _RB8
                                     67 	.globl _TI
                                     68 	.globl _RI
                                     69 	.globl _P1_7
                                     70 	.globl _P1_6
                                     71 	.globl _P1_5
                                     72 	.globl _P1_4
                                     73 	.globl _P1_3
                                     74 	.globl _P1_2
                                     75 	.globl _P1_1
                                     76 	.globl _P1_0
                                     77 	.globl _TF1
                                     78 	.globl _TR1
                                     79 	.globl _TF0
                                     80 	.globl _TR0
                                     81 	.globl _IE1
                                     82 	.globl _IT1
                                     83 	.globl _IE0
                                     84 	.globl _IT0
                                     85 	.globl _P0_7
                                     86 	.globl _P0_6
                                     87 	.globl _P0_5
                                     88 	.globl _P0_4
                                     89 	.globl _P0_3
                                     90 	.globl _P0_2
                                     91 	.globl _P0_1
                                     92 	.globl _P0_0
                                     93 	.globl _B
                                     94 	.globl _ACC
                                     95 	.globl _PSW
                                     96 	.globl _IP
                                     97 	.globl _P3
                                     98 	.globl _IE
                                     99 	.globl _P2
                                    100 	.globl _SBUF
                                    101 	.globl _SCON
                                    102 	.globl _P1
                                    103 	.globl _TH1
                                    104 	.globl _TH0
                                    105 	.globl _TL1
                                    106 	.globl _TL0
                                    107 	.globl _TMOD
                                    108 	.globl _TCON
                                    109 	.globl _PCON
                                    110 	.globl _DPH
                                    111 	.globl _DPL
                                    112 	.globl _SP
                                    113 	.globl _P0
                                    114 	.globl _hall_last_state
                                    115 	.globl _patt
                                    116 	.globl _time
                                    117 	.globl _DynP
                                    118 	.globl _accP
                                    119 	.globl _cnt_s
                                    120 	.globl _cnt
                                    121 	.globl _i
                                    122 ;--------------------------------------------------------
                                    123 ; special function registers
                                    124 ;--------------------------------------------------------
                                    125 	.area RSEG    (ABS,DATA)
      000000                        126 	.org 0x0000
                           000080   127 _P0	=	0x0080
                           000081   128 _SP	=	0x0081
                           000082   129 _DPL	=	0x0082
                           000083   130 _DPH	=	0x0083
                           000087   131 _PCON	=	0x0087
                           000088   132 _TCON	=	0x0088
                           000089   133 _TMOD	=	0x0089
                           00008A   134 _TL0	=	0x008a
                           00008B   135 _TL1	=	0x008b
                           00008C   136 _TH0	=	0x008c
                           00008D   137 _TH1	=	0x008d
                           000090   138 _P1	=	0x0090
                           000098   139 _SCON	=	0x0098
                           000099   140 _SBUF	=	0x0099
                           0000A0   141 _P2	=	0x00a0
                           0000A8   142 _IE	=	0x00a8
                           0000B0   143 _P3	=	0x00b0
                           0000B8   144 _IP	=	0x00b8
                           0000D0   145 _PSW	=	0x00d0
                           0000E0   146 _ACC	=	0x00e0
                           0000F0   147 _B	=	0x00f0
                                    148 ;--------------------------------------------------------
                                    149 ; special function bits
                                    150 ;--------------------------------------------------------
                                    151 	.area RSEG    (ABS,DATA)
      000000                        152 	.org 0x0000
                           000080   153 _P0_0	=	0x0080
                           000081   154 _P0_1	=	0x0081
                           000082   155 _P0_2	=	0x0082
                           000083   156 _P0_3	=	0x0083
                           000084   157 _P0_4	=	0x0084
                           000085   158 _P0_5	=	0x0085
                           000086   159 _P0_6	=	0x0086
                           000087   160 _P0_7	=	0x0087
                           000088   161 _IT0	=	0x0088
                           000089   162 _IE0	=	0x0089
                           00008A   163 _IT1	=	0x008a
                           00008B   164 _IE1	=	0x008b
                           00008C   165 _TR0	=	0x008c
                           00008D   166 _TF0	=	0x008d
                           00008E   167 _TR1	=	0x008e
                           00008F   168 _TF1	=	0x008f
                           000090   169 _P1_0	=	0x0090
                           000091   170 _P1_1	=	0x0091
                           000092   171 _P1_2	=	0x0092
                           000093   172 _P1_3	=	0x0093
                           000094   173 _P1_4	=	0x0094
                           000095   174 _P1_5	=	0x0095
                           000096   175 _P1_6	=	0x0096
                           000097   176 _P1_7	=	0x0097
                           000098   177 _RI	=	0x0098
                           000099   178 _TI	=	0x0099
                           00009A   179 _RB8	=	0x009a
                           00009B   180 _TB8	=	0x009b
                           00009C   181 _REN	=	0x009c
                           00009D   182 _SM2	=	0x009d
                           00009E   183 _SM1	=	0x009e
                           00009F   184 _SM0	=	0x009f
                           0000A0   185 _P2_0	=	0x00a0
                           0000A1   186 _P2_1	=	0x00a1
                           0000A2   187 _P2_2	=	0x00a2
                           0000A3   188 _P2_3	=	0x00a3
                           0000A4   189 _P2_4	=	0x00a4
                           0000A5   190 _P2_5	=	0x00a5
                           0000A6   191 _P2_6	=	0x00a6
                           0000A7   192 _P2_7	=	0x00a7
                           0000A8   193 _EX0	=	0x00a8
                           0000A9   194 _ET0	=	0x00a9
                           0000AA   195 _EX1	=	0x00aa
                           0000AB   196 _ET1	=	0x00ab
                           0000AC   197 _ES	=	0x00ac
                           0000AF   198 _EA	=	0x00af
                           0000B0   199 _P3_0	=	0x00b0
                           0000B1   200 _P3_1	=	0x00b1
                           0000B2   201 _P3_2	=	0x00b2
                           0000B3   202 _P3_3	=	0x00b3
                           0000B4   203 _P3_4	=	0x00b4
                           0000B5   204 _P3_5	=	0x00b5
                           0000B6   205 _P3_6	=	0x00b6
                           0000B7   206 _P3_7	=	0x00b7
                           0000B0   207 _RXD	=	0x00b0
                           0000B1   208 _TXD	=	0x00b1
                           0000B2   209 _INT0	=	0x00b2
                           0000B3   210 _INT1	=	0x00b3
                           0000B4   211 _T0	=	0x00b4
                           0000B5   212 _T1	=	0x00b5
                           0000B6   213 _WR	=	0x00b6
                           0000B7   214 _RD	=	0x00b7
                           0000B8   215 _PX0	=	0x00b8
                           0000B9   216 _PT0	=	0x00b9
                           0000BA   217 _PX1	=	0x00ba
                           0000BB   218 _PT1	=	0x00bb
                           0000BC   219 _PS	=	0x00bc
                           0000D0   220 _P	=	0x00d0
                           0000D1   221 _F1	=	0x00d1
                           0000D2   222 _OV	=	0x00d2
                           0000D3   223 _RS0	=	0x00d3
                           0000D4   224 _RS1	=	0x00d4
                           0000D5   225 _F0	=	0x00d5
                           0000D6   226 _AC	=	0x00d6
                           0000D7   227 _CY	=	0x00d7
                                    228 ;--------------------------------------------------------
                                    229 ; overlayable register banks
                                    230 ;--------------------------------------------------------
                                    231 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        232 	.ds 8
                                    233 ;--------------------------------------------------------
                                    234 ; overlayable bit register bank
                                    235 ;--------------------------------------------------------
                                    236 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        237 bits:
      000021                        238 	.ds 1
                           008000   239 	b0 = bits[0]
                           008100   240 	b1 = bits[1]
                           008200   241 	b2 = bits[2]
                           008300   242 	b3 = bits[3]
                           008400   243 	b4 = bits[4]
                           008500   244 	b5 = bits[5]
                           008600   245 	b6 = bits[6]
                           008700   246 	b7 = bits[7]
                                    247 ;--------------------------------------------------------
                                    248 ; internal ram data
                                    249 ;--------------------------------------------------------
                                    250 	.area DSEG    (DATA)
      000008                        251 _i::
      000008                        252 	.ds 1
      000009                        253 _cnt::
      000009                        254 	.ds 2
      00000B                        255 _cnt_s::
      00000B                        256 	.ds 2
      00000D                        257 _accP::
      00000D                        258 	.ds 2
      00000F                        259 _DynP::
      00000F                        260 	.ds 2
      000011                        261 _time::
      000011                        262 	.ds 6
      000017                        263 _patt::
      000017                        264 	.ds 1
      000018                        265 _hall_last_state::
      000018                        266 	.ds 2
                                    267 ;--------------------------------------------------------
                                    268 ; overlayable items in internal ram 
                                    269 ;--------------------------------------------------------
                                    270 ;--------------------------------------------------------
                                    271 ; Stack segment in internal ram 
                                    272 ;--------------------------------------------------------
                                    273 	.area	SSEG
      00003B                        274 __start__stack:
      00003B                        275 	.ds	1
                                    276 
                                    277 ;--------------------------------------------------------
                                    278 ; indirectly addressable internal ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area ISEG    (DATA)
                                    281 ;--------------------------------------------------------
                                    282 ; absolute internal ram data
                                    283 ;--------------------------------------------------------
                                    284 	.area IABS    (ABS,DATA)
                                    285 	.area IABS    (ABS,DATA)
                                    286 ;--------------------------------------------------------
                                    287 ; bit data
                                    288 ;--------------------------------------------------------
                                    289 	.area BSEG    (BIT)
                                    290 ;--------------------------------------------------------
                                    291 ; paged external ram data
                                    292 ;--------------------------------------------------------
                                    293 	.area PSEG    (PAG,XDATA)
                                    294 ;--------------------------------------------------------
                                    295 ; external ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area XSEG    (XDATA)
                                    298 ;--------------------------------------------------------
                                    299 ; absolute external ram data
                                    300 ;--------------------------------------------------------
                                    301 	.area XABS    (ABS,XDATA)
                                    302 ;--------------------------------------------------------
                                    303 ; external initialized ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area XISEG   (XDATA)
                                    306 	.area HOME    (CODE)
                                    307 	.area GSINIT0 (CODE)
                                    308 	.area GSINIT1 (CODE)
                                    309 	.area GSINIT2 (CODE)
                                    310 	.area GSINIT3 (CODE)
                                    311 	.area GSINIT4 (CODE)
                                    312 	.area GSINIT5 (CODE)
                                    313 	.area GSINIT  (CODE)
                                    314 	.area GSFINAL (CODE)
                                    315 	.area CSEG    (CODE)
                                    316 ;--------------------------------------------------------
                                    317 ; interrupt vector 
                                    318 ;--------------------------------------------------------
                                    319 	.area HOME    (CODE)
      000000                        320 __interrupt_vect:
      000000 02 00 11         [24]  321 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  322 	reti
      000004                        323 	.ds	7
      00000B 02 00 A2         [24]  324 	ljmp	_T0_isr
                                    325 ;--------------------------------------------------------
                                    326 ; global & static initialisations
                                    327 ;--------------------------------------------------------
                                    328 	.area HOME    (CODE)
                                    329 	.area GSINIT  (CODE)
                                    330 	.area GSFINAL (CODE)
                                    331 	.area GSINIT  (CODE)
                                    332 	.globl __sdcc_gsinit_startup
                                    333 	.globl __sdcc_program_startup
                                    334 	.globl __start__stack
                                    335 	.globl __mcs51_genXINIT
                                    336 	.globl __mcs51_genXRAMCLEAR
                                    337 	.globl __mcs51_genRAMCLEAR
                                    338 ;	./src/main.c:38: char i = 0;
      00006A 75 08 00         [24]  339 	mov	_i,#0x00
                                    340 ;	./src/main.c:39: int cnt = 0;
      00006D E4               [12]  341 	clr	a
      00006E F5 09            [12]  342 	mov	_cnt,a
      000070 F5 0A            [12]  343 	mov	(_cnt + 1),a
                                    344 ;	./src/main.c:40: int cnt_s = 0;
      000072 F5 0B            [12]  345 	mov	_cnt_s,a
      000074 F5 0C            [12]  346 	mov	(_cnt_s + 1),a
                                    347 ;	./src/main.c:41: int accP = 0;
      000076 F5 0D            [12]  348 	mov	_accP,a
      000078 F5 0E            [12]  349 	mov	(_accP + 1),a
                                    350 ;	./src/main.c:42: int DynP = 0;
      00007A F5 0F            [12]  351 	mov	_DynP,a
      00007C F5 10            [12]  352 	mov	(_DynP + 1),a
                                    353 ;	./src/main.c:44: int time[3] = {23, 59, 0};  // Stores the 16-bit signed accelerometer sensor output
      00007E 75 11 17         [24]  354 	mov	(_time + 0),#0x17
                                    355 ;	1-genFromRTrack replaced	mov	(_time + 1),#0x00
      000081 F5 12            [12]  356 	mov	(_time + 1),a
      000083 75 13 3B         [24]  357 	mov	((_time + 0x0002) + 0),#0x3b
                                    358 ;	1-genFromRTrack replaced	mov	((_time + 0x0002) + 1),#0x00
      000086 F5 14            [12]  359 	mov	((_time + 0x0002) + 1),a
      000088 F5 15            [12]  360 	mov	((_time + 0x0004) + 0),a
      00008A F5 16            [12]  361 	mov	((_time + 0x0004) + 1),a
                                    362 ;	./src/main.c:45: unsigned char patt = 0x80;	//led value
      00008C 75 17 80         [24]  363 	mov	_patt,#0x80
                                    364 ;	./src/main.c:46: int hall_last_state = 0;
      00008F F5 18            [12]  365 	mov	_hall_last_state,a
      000091 F5 19            [12]  366 	mov	(_hall_last_state + 1),a
                                    367 	.area GSFINAL (CODE)
      00009F 02 00 0E         [24]  368 	ljmp	__sdcc_program_startup
                                    369 ;--------------------------------------------------------
                                    370 ; Home
                                    371 ;--------------------------------------------------------
                                    372 	.area HOME    (CODE)
                                    373 	.area HOME    (CODE)
      00000E                        374 __sdcc_program_startup:
      00000E 02 01 9E         [24]  375 	ljmp	_main
                                    376 ;	return from main will return to caller
                                    377 ;--------------------------------------------------------
                                    378 ; code
                                    379 ;--------------------------------------------------------
                                    380 	.area CSEG    (CODE)
                                    381 ;------------------------------------------------------------
                                    382 ;Allocation info for local variables in function 'T0_isr'
                                    383 ;------------------------------------------------------------
                                    384 ;	./src/main.c:48: void T0_isr(void) __interrupt (1)			// Interrupt routine w/ priority 1
                                    385 ;	-----------------------------------------
                                    386 ;	 function T0_isr
                                    387 ;	-----------------------------------------
      0000A2                        388 _T0_isr:
                           000007   389 	ar7 = 0x07
                           000006   390 	ar6 = 0x06
                           000005   391 	ar5 = 0x05
                           000004   392 	ar4 = 0x04
                           000003   393 	ar3 = 0x03
                           000002   394 	ar2 = 0x02
                           000001   395 	ar1 = 0x01
                           000000   396 	ar0 = 0x00
      0000A2 C0 21            [24]  397 	push	bits
      0000A4 C0 E0            [24]  398 	push	acc
      0000A6 C0 F0            [24]  399 	push	b
      0000A8 C0 82            [24]  400 	push	dpl
      0000AA C0 83            [24]  401 	push	dph
      0000AC C0 07            [24]  402 	push	(0+7)
      0000AE C0 06            [24]  403 	push	(0+6)
      0000B0 C0 05            [24]  404 	push	(0+5)
      0000B2 C0 04            [24]  405 	push	(0+4)
      0000B4 C0 03            [24]  406 	push	(0+3)
      0000B6 C0 02            [24]  407 	push	(0+2)
      0000B8 C0 01            [24]  408 	push	(0+1)
      0000BA C0 00            [24]  409 	push	(0+0)
      0000BC C0 D0            [24]  410 	push	psw
      0000BE 75 D0 00         [24]  411 	mov	psw,#0x00
                                    412 ;	./src/main.c:51: TH0 = (65536-1000) / 256;			// Reset higher 8 bits of Timer 0
      0000C1 75 8C FC         [24]  413 	mov	_TH0,#0xfc
                                    414 ;	./src/main.c:52: TL0 = (65536-1000) % 256;			// Reset lower 8 bits of Timer 0
      0000C4 75 8A 18         [24]  415 	mov	_TL0,#0x18
                                    416 ;	./src/main.c:54: cnt++;								// Count each interruption
      0000C7 05 09            [12]  417 	inc	_cnt
      0000C9 E4               [12]  418 	clr	a
      0000CA B5 09 02         [24]  419 	cjne	a,_cnt,00126$
      0000CD 05 0A            [12]  420 	inc	(_cnt + 1)
      0000CF                        421 00126$:
                                    422 ;	./src/main.c:55: if(cnt >= 1000) {						// 1000 interruptions = 1000ms = 1s
      0000CF C3               [12]  423 	clr	c
      0000D0 E5 09            [12]  424 	mov	a,_cnt
      0000D2 94 E8            [12]  425 	subb	a,#0xe8
      0000D4 E5 0A            [12]  426 	mov	a,(_cnt + 1)
      0000D6 64 80            [12]  427 	xrl	a,#0x80
      0000D8 94 83            [12]  428 	subb	a,#0x83
      0000DA 50 03            [24]  429 	jnc	00127$
      0000DC 02 01 81         [24]  430 	ljmp	00108$
      0000DF                        431 00127$:
                                    432 ;	./src/main.c:56: if (time[2] == 59 && time[1] == 59)time[0] = (time[0]+1)%24;
      0000DF 74 3B            [12]  433 	mov	a,#0x3b
      0000E1 B5 15 06         [24]  434 	cjne	a,(_time + 0x0004),00128$
      0000E4 E4               [12]  435 	clr	a
      0000E5 B5 16 02         [24]  436 	cjne	a,((_time + 0x0004) + 1),00128$
      0000E8 80 02            [24]  437 	sjmp	00129$
      0000EA                        438 00128$:
      0000EA 80 27            [24]  439 	sjmp	00102$
      0000EC                        440 00129$:
      0000EC 74 3B            [12]  441 	mov	a,#0x3b
      0000EE B5 13 06         [24]  442 	cjne	a,(_time + 0x0002),00130$
      0000F1 E4               [12]  443 	clr	a
      0000F2 B5 14 02         [24]  444 	cjne	a,((_time + 0x0002) + 1),00130$
      0000F5 80 02            [24]  445 	sjmp	00131$
      0000F7                        446 00130$:
      0000F7 80 1A            [24]  447 	sjmp	00102$
      0000F9                        448 00131$:
      0000F9 85 11 82         [24]  449 	mov	dpl,_time
      0000FC 85 12 83         [24]  450 	mov	dph,(_time + 1)
      0000FF A3               [24]  451 	inc	dptr
      000100 75 1E 18         [24]  452 	mov	__modsint_PARM_2,#0x18
      000103 75 1F 00         [24]  453 	mov	(__modsint_PARM_2 + 1),#0x00
      000106 12 0B 66         [24]  454 	lcall	__modsint
      000109 E5 82            [12]  455 	mov	a,dpl
      00010B 85 83 F0         [24]  456 	mov	b,dph
      00010E F5 11            [12]  457 	mov	(_time + 0),a
      000110 85 F0 12         [24]  458 	mov	(_time + 1),b
      000113                        459 00102$:
                                    460 ;	./src/main.c:57: if (time[2] == 59)time[1] = (time[1]+1)%60;
      000113 74 3B            [12]  461 	mov	a,#0x3b
      000115 B5 15 06         [24]  462 	cjne	a,(_time + 0x0004),00132$
      000118 E4               [12]  463 	clr	a
      000119 B5 16 02         [24]  464 	cjne	a,((_time + 0x0004) + 1),00132$
      00011C 80 02            [24]  465 	sjmp	00133$
      00011E                        466 00132$:
      00011E 80 1A            [24]  467 	sjmp	00105$
      000120                        468 00133$:
      000120 85 13 82         [24]  469 	mov	dpl,(_time + 0x0002)
      000123 85 14 83         [24]  470 	mov	dph,((_time + 0x0002) + 1)
      000126 A3               [24]  471 	inc	dptr
      000127 75 1E 3C         [24]  472 	mov	__modsint_PARM_2,#0x3c
      00012A 75 1F 00         [24]  473 	mov	(__modsint_PARM_2 + 1),#0x00
      00012D 12 0B 66         [24]  474 	lcall	__modsint
      000130 E5 82            [12]  475 	mov	a,dpl
      000132 85 83 F0         [24]  476 	mov	b,dph
      000135 F5 13            [12]  477 	mov	((_time + 0x0002) + 0),a
      000137 85 F0 14         [24]  478 	mov	((_time + 0x0002) + 1),b
      00013A                        479 00105$:
                                    480 ;	./src/main.c:58: time[2] = (time[2]+1)%60;		
      00013A 85 15 82         [24]  481 	mov	dpl,(_time + 0x0004)
      00013D 85 16 83         [24]  482 	mov	dph,((_time + 0x0004) + 1)
      000140 A3               [24]  483 	inc	dptr
      000141 75 1E 3C         [24]  484 	mov	__modsint_PARM_2,#0x3c
      000144 75 1F 00         [24]  485 	mov	(__modsint_PARM_2 + 1),#0x00
      000147 12 0B 66         [24]  486 	lcall	__modsint
      00014A E5 82            [12]  487 	mov	a,dpl
      00014C 85 83 F0         [24]  488 	mov	b,dph
      00014F F5 15            [12]  489 	mov	((_time + 0x0004) + 0),a
      000151 85 F0 16         [24]  490 	mov	((_time + 0x0004) + 1),b
                                    491 ;	./src/main.c:59: cnt = 0;	// Reverse wave signal
      000154 E4               [12]  492 	clr	a
      000155 F5 09            [12]  493 	mov	_cnt,a
      000157 F5 0A            [12]  494 	mov	(_cnt + 1),a
                                    495 ;	./src/main.c:60: cnt_s++;
      000159 05 0B            [12]  496 	inc	_cnt_s
                                    497 ;	genFromRTrack removed	clr	a
      00015B B5 0B 02         [24]  498 	cjne	a,_cnt_s,00134$
      00015E 05 0C            [12]  499 	inc	(_cnt_s + 1)
      000160                        500 00134$:
                                    501 ;	./src/main.c:61: DynP = (accP / cnt_s) * 60;
      000160 85 0B 1E         [24]  502 	mov	__divsint_PARM_2,_cnt_s
      000163 85 0C 1F         [24]  503 	mov	(__divsint_PARM_2 + 1),(_cnt_s + 1)
      000166 85 0D 82         [24]  504 	mov	dpl,_accP
      000169 85 0E 83         [24]  505 	mov	dph,(_accP + 1)
      00016C 12 0B 9C         [24]  506 	lcall	__divsint
      00016F 85 82 1E         [24]  507 	mov	__mulint_PARM_2,dpl
      000172 85 83 1F         [24]  508 	mov	(__mulint_PARM_2 + 1),dph
      000175 90 00 3C         [24]  509 	mov	dptr,#0x003c
      000178 12 0A B7         [24]  510 	lcall	__mulint
      00017B 85 82 0F         [24]  511 	mov	_DynP,dpl
      00017E 85 83 10         [24]  512 	mov	(_DynP + 1),dph
      000181                        513 00108$:
                                    514 ;	./src/main.c:63: }
      000181 D0 D0            [24]  515 	pop	psw
      000183 D0 00            [24]  516 	pop	(0+0)
      000185 D0 01            [24]  517 	pop	(0+1)
      000187 D0 02            [24]  518 	pop	(0+2)
      000189 D0 03            [24]  519 	pop	(0+3)
      00018B D0 04            [24]  520 	pop	(0+4)
      00018D D0 05            [24]  521 	pop	(0+5)
      00018F D0 06            [24]  522 	pop	(0+6)
      000191 D0 07            [24]  523 	pop	(0+7)
      000193 D0 83            [24]  524 	pop	dph
      000195 D0 82            [24]  525 	pop	dpl
      000197 D0 F0            [24]  526 	pop	b
      000199 D0 E0            [24]  527 	pop	acc
      00019B D0 21            [24]  528 	pop	bits
      00019D 32               [24]  529 	reti
                                    530 ;------------------------------------------------------------
                                    531 ;Allocation info for local variables in function 'main'
                                    532 ;------------------------------------------------------------
                                    533 ;	./src/main.c:66: void main(void)
                                    534 ;	-----------------------------------------
                                    535 ;	 function main
                                    536 ;	-----------------------------------------
      00019E                        537 _main:
                                    538 ;	./src/main.c:70: TMOD = 0x01;						// Set Timer 1 to  mode 0 & Timer 0 mode 1. (16-bit timer)
      00019E 75 89 01         [24]  539 	mov	_TMOD,#0x01
                                    540 ;	./src/main.c:71: TH0 = (65536-1000) / 256;			// Load initial higher 8 bits into Timer 0
      0001A1 75 8C FC         [24]  541 	mov	_TH0,#0xfc
                                    542 ;	./src/main.c:72: TL0 = (65536-1000) % 256;			// Load initial lower 8 bits into Timer 0
      0001A4 75 8A 18         [24]  543 	mov	_TL0,#0x18
                                    544 ;	./src/main.c:73: ET0 = 1;							// Enable Timer 0 interrupt
                                    545 ;	assignBit
      0001A7 D2 A9            [12]  546 	setb	_ET0
                                    547 ;	./src/main.c:74: EA = 1;								// Enable all interrupt
                                    548 ;	assignBit
      0001A9 D2 AF            [12]  549 	setb	_EA
                                    550 ;	./src/main.c:75: TR0 = 1;	
                                    551 ;	assignBit
      0001AB D2 8C            [12]  552 	setb	_TR0
                                    553 ;	./src/main.c:77: SDA = 1;
                                    554 ;	assignBit
      0001AD D2 81            [12]  555 	setb	_P0_1
                                    556 ;	./src/main.c:78: SCL = 1;
                                    557 ;	assignBit
      0001AF D2 80            [12]  558 	setb	_P0_0
                                    559 ;	./src/main.c:79: OLED_Init();		  // Check oled_i2c.c file for SCL,SDA pin connection
      0001B1 12 08 63         [24]  560 	lcall	_OLED_Init
                                    561 ;	./src/main.c:82: OLED_SetCursor(0,0);  // Set cursor at 0th-line 0th-Position
      0001B4 75 1D 00         [24]  562 	mov	_OLED_SetCursor_PARM_2,#0x00
      0001B7 75 82 00         [24]  563 	mov	dpl,#0x00
      0001BA 12 09 79         [24]  564 	lcall	_OLED_SetCursor
                                    565 ;	./src/main.c:84: OLED_SetCursor(2, 0);  
      0001BD 75 1D 00         [24]  566 	mov	_OLED_SetCursor_PARM_2,#0x00
      0001C0 75 82 02         [24]  567 	mov	dpl,#0x02
      0001C3 12 09 79         [24]  568 	lcall	_OLED_SetCursor
                                    569 ;	./src/main.c:85: OLED_DisplayString(" Time ");
      0001C6 90 0B D8         [24]  570 	mov	dptr,#___str_0
      0001C9 75 F0 80         [24]  571 	mov	b,#0x80
      0001CC 12 09 23         [24]  572 	lcall	_OLED_DisplayString
                                    573 ;	./src/main.c:86: OLED_SetCursor(3, 0);  
      0001CF 75 1D 00         [24]  574 	mov	_OLED_SetCursor_PARM_2,#0x00
      0001D2 75 82 03         [24]  575 	mov	dpl,#0x03
      0001D5 12 09 79         [24]  576 	lcall	_OLED_SetCursor
                                    577 ;	./src/main.c:87: OLED_DisplayString("People");
      0001D8 90 0B DF         [24]  578 	mov	dptr,#___str_1
      0001DB 75 F0 80         [24]  579 	mov	b,#0x80
      0001DE 12 09 23         [24]  580 	lcall	_OLED_DisplayString
                                    581 ;	./src/main.c:88: OLED_SetCursor(4, 0);  
      0001E1 75 1D 00         [24]  582 	mov	_OLED_SetCursor_PARM_2,#0x00
      0001E4 75 82 04         [24]  583 	mov	dpl,#0x04
      0001E7 12 09 79         [24]  584 	lcall	_OLED_SetCursor
                                    585 ;	./src/main.c:89: OLED_DisplayString("AccPeo");
      0001EA 90 0B E6         [24]  586 	mov	dptr,#___str_2
      0001ED 75 F0 80         [24]  587 	mov	b,#0x80
      0001F0 12 09 23         [24]  588 	lcall	_OLED_DisplayString
                                    589 ;	./src/main.c:90: OLED_SetCursor(5, 0);  
      0001F3 75 1D 00         [24]  590 	mov	_OLED_SetCursor_PARM_2,#0x00
      0001F6 75 82 05         [24]  591 	mov	dpl,#0x05
      0001F9 12 09 79         [24]  592 	lcall	_OLED_SetCursor
                                    593 ;	./src/main.c:91: OLED_DisplayString("DynPeo");
      0001FC 90 0B ED         [24]  594 	mov	dptr,#___str_3
      0001FF 75 F0 80         [24]  595 	mov	b,#0x80
      000202 12 09 23         [24]  596 	lcall	_OLED_DisplayString
                                    597 ;	./src/main.c:94: while(1) {
      000205                        598 00117$:
                                    599 ;	./src/main.c:97: for(i = 0; i < 4; i++) {
      000205 75 08 00         [24]  600 	mov	_i,#0x00
      000208                        601 00119$:
                                    602 ;	./src/main.c:98: if(i == 0) {
      000208 E5 08            [12]  603 	mov	a,_i
      00020A 60 03            [24]  604 	jz	00159$
      00020C 02 02 C1         [24]  605 	ljmp	00110$
      00020F                        606 00159$:
                                    607 ;	./src/main.c:99: OLED_SetCursor(2 + i, 54); 
      00020F AF 08            [24]  608 	mov	r7,_i
      000211 74 02            [12]  609 	mov	a,#0x02
      000213 2F               [12]  610 	add	a,r7
      000214 F5 82            [12]  611 	mov	dpl,a
      000216 75 1D 36         [24]  612 	mov	_OLED_SetCursor_PARM_2,#0x36
      000219 12 09 79         [24]  613 	lcall	_OLED_SetCursor
                                    614 ;	./src/main.c:100: OLED_DisplayChar(time[0] / 10 + '0');
      00021C 85 11 82         [24]  615 	mov	dpl,(_time + 0)
      00021F 85 12 83         [24]  616 	mov	dph,(_time + 1)
      000222 75 1E 0A         [24]  617 	mov	__divsint_PARM_2,#0x0a
      000225 75 1F 00         [24]  618 	mov	(__divsint_PARM_2 + 1),#0x00
      000228 12 0B 9C         [24]  619 	lcall	__divsint
      00022B AE 82            [24]  620 	mov	r6,dpl
      00022D 74 30            [12]  621 	mov	a,#0x30
      00022F 2E               [12]  622 	add	a,r6
      000230 F5 82            [12]  623 	mov	dpl,a
      000232 12 08 D2         [24]  624 	lcall	_OLED_DisplayChar
                                    625 ;	./src/main.c:101: OLED_DisplayChar(time[0]  % 10 + '0');
      000235 85 11 82         [24]  626 	mov	dpl,(_time + 0)
      000238 85 12 83         [24]  627 	mov	dph,(_time + 1)
      00023B 75 1E 0A         [24]  628 	mov	__modsint_PARM_2,#0x0a
      00023E 75 1F 00         [24]  629 	mov	(__modsint_PARM_2 + 1),#0x00
      000241 12 0B 66         [24]  630 	lcall	__modsint
      000244 AE 82            [24]  631 	mov	r6,dpl
      000246 74 30            [12]  632 	mov	a,#0x30
      000248 2E               [12]  633 	add	a,r6
      000249 F5 82            [12]  634 	mov	dpl,a
      00024B 12 08 D2         [24]  635 	lcall	_OLED_DisplayChar
                                    636 ;	./src/main.c:102: OLED_DisplayChar(':');
      00024E 75 82 3A         [24]  637 	mov	dpl,#0x3a
      000251 12 08 D2         [24]  638 	lcall	_OLED_DisplayChar
                                    639 ;	./src/main.c:103: OLED_DisplayChar(time[1] / 10 + '0');
      000254 85 13 82         [24]  640 	mov	dpl,((_time + 0x0002) + 0)
      000257 85 14 83         [24]  641 	mov	dph,((_time + 0x0002) + 1)
      00025A 75 1E 0A         [24]  642 	mov	__divsint_PARM_2,#0x0a
      00025D 75 1F 00         [24]  643 	mov	(__divsint_PARM_2 + 1),#0x00
      000260 12 0B 9C         [24]  644 	lcall	__divsint
      000263 AE 82            [24]  645 	mov	r6,dpl
      000265 74 30            [12]  646 	mov	a,#0x30
      000267 2E               [12]  647 	add	a,r6
      000268 F5 82            [12]  648 	mov	dpl,a
      00026A 12 08 D2         [24]  649 	lcall	_OLED_DisplayChar
                                    650 ;	./src/main.c:104: OLED_DisplayChar(time[1] % 10 + '0');
      00026D 85 13 82         [24]  651 	mov	dpl,((_time + 0x0002) + 0)
      000270 85 14 83         [24]  652 	mov	dph,((_time + 0x0002) + 1)
      000273 75 1E 0A         [24]  653 	mov	__modsint_PARM_2,#0x0a
      000276 75 1F 00         [24]  654 	mov	(__modsint_PARM_2 + 1),#0x00
      000279 12 0B 66         [24]  655 	lcall	__modsint
      00027C AE 82            [24]  656 	mov	r6,dpl
      00027E 74 30            [12]  657 	mov	a,#0x30
      000280 2E               [12]  658 	add	a,r6
      000281 F5 82            [12]  659 	mov	dpl,a
      000283 12 08 D2         [24]  660 	lcall	_OLED_DisplayChar
                                    661 ;	./src/main.c:105: OLED_DisplayChar(':');
      000286 75 82 3A         [24]  662 	mov	dpl,#0x3a
      000289 12 08 D2         [24]  663 	lcall	_OLED_DisplayChar
                                    664 ;	./src/main.c:106: OLED_DisplayChar(time[2] / 10 + '0');
      00028C 85 15 82         [24]  665 	mov	dpl,((_time + 0x0004) + 0)
      00028F 85 16 83         [24]  666 	mov	dph,((_time + 0x0004) + 1)
      000292 75 1E 0A         [24]  667 	mov	__divsint_PARM_2,#0x0a
      000295 75 1F 00         [24]  668 	mov	(__divsint_PARM_2 + 1),#0x00
      000298 12 0B 9C         [24]  669 	lcall	__divsint
      00029B AE 82            [24]  670 	mov	r6,dpl
      00029D 74 30            [12]  671 	mov	a,#0x30
      00029F 2E               [12]  672 	add	a,r6
      0002A0 F5 82            [12]  673 	mov	dpl,a
      0002A2 12 08 D2         [24]  674 	lcall	_OLED_DisplayChar
                                    675 ;	./src/main.c:107: OLED_DisplayChar(time[2] % 10 + '0');
      0002A5 85 15 82         [24]  676 	mov	dpl,((_time + 0x0004) + 0)
      0002A8 85 16 83         [24]  677 	mov	dph,((_time + 0x0004) + 1)
      0002AB 75 1E 0A         [24]  678 	mov	__modsint_PARM_2,#0x0a
      0002AE 75 1F 00         [24]  679 	mov	(__modsint_PARM_2 + 1),#0x00
      0002B1 12 0B 66         [24]  680 	lcall	__modsint
      0002B4 AE 82            [24]  681 	mov	r6,dpl
      0002B6 74 30            [12]  682 	mov	a,#0x30
      0002B8 2E               [12]  683 	add	a,r6
      0002B9 F5 82            [12]  684 	mov	dpl,a
      0002BB 12 08 D2         [24]  685 	lcall	_OLED_DisplayChar
      0002BE 02 04 D4         [24]  686 	ljmp	00120$
      0002C1                        687 00110$:
                                    688 ;	./src/main.c:108: } else if (i == 1){
      0002C1 74 01            [12]  689 	mov	a,#0x01
      0002C3 B5 08 02         [24]  690 	cjne	a,_i,00160$
      0002C6 80 03            [24]  691 	sjmp	00161$
      0002C8                        692 00160$:
      0002C8 02 03 73         [24]  693 	ljmp	00107$
      0002CB                        694 00161$:
                                    695 ;	./src/main.c:110: OLED_SetCursor(2 + i, 54);
      0002CB AF 08            [24]  696 	mov	r7,_i
      0002CD 74 02            [12]  697 	mov	a,#0x02
      0002CF 2F               [12]  698 	add	a,r7
      0002D0 F5 82            [12]  699 	mov	dpl,a
      0002D2 75 1D 36         [24]  700 	mov	_OLED_SetCursor_PARM_2,#0x36
      0002D5 12 09 79         [24]  701 	lcall	_OLED_SetCursor
                                    702 ;	./src/main.c:111: OLED_DisplayChar(cnt_s / 10000 + '0');
      0002D8 75 1E 10         [24]  703 	mov	__divsint_PARM_2,#0x10
      0002DB 75 1F 27         [24]  704 	mov	(__divsint_PARM_2 + 1),#0x27
      0002DE 85 0B 82         [24]  705 	mov	dpl,_cnt_s
      0002E1 85 0C 83         [24]  706 	mov	dph,(_cnt_s + 1)
      0002E4 12 0B 9C         [24]  707 	lcall	__divsint
      0002E7 AE 82            [24]  708 	mov	r6,dpl
      0002E9 74 30            [12]  709 	mov	a,#0x30
      0002EB 2E               [12]  710 	add	a,r6
      0002EC F5 82            [12]  711 	mov	dpl,a
      0002EE 12 08 D2         [24]  712 	lcall	_OLED_DisplayChar
                                    713 ;	./src/main.c:112: OLED_DisplayChar(cnt_s % 10000 / 1000 + '0');
      0002F1 75 1E 10         [24]  714 	mov	__modsint_PARM_2,#0x10
      0002F4 75 1F 27         [24]  715 	mov	(__modsint_PARM_2 + 1),#0x27
      0002F7 85 0B 82         [24]  716 	mov	dpl,_cnt_s
      0002FA 85 0C 83         [24]  717 	mov	dph,(_cnt_s + 1)
      0002FD 12 0B 66         [24]  718 	lcall	__modsint
      000300 75 1E E8         [24]  719 	mov	__divsint_PARM_2,#0xe8
      000303 75 1F 03         [24]  720 	mov	(__divsint_PARM_2 + 1),#0x03
      000306 12 0B 9C         [24]  721 	lcall	__divsint
      000309 AE 82            [24]  722 	mov	r6,dpl
      00030B 74 30            [12]  723 	mov	a,#0x30
      00030D 2E               [12]  724 	add	a,r6
      00030E F5 82            [12]  725 	mov	dpl,a
      000310 12 08 D2         [24]  726 	lcall	_OLED_DisplayChar
                                    727 ;	./src/main.c:113: OLED_DisplayChar(cnt_s % 1000 / 100 + '0');
      000313 75 1E E8         [24]  728 	mov	__modsint_PARM_2,#0xe8
      000316 75 1F 03         [24]  729 	mov	(__modsint_PARM_2 + 1),#0x03
      000319 85 0B 82         [24]  730 	mov	dpl,_cnt_s
      00031C 85 0C 83         [24]  731 	mov	dph,(_cnt_s + 1)
      00031F 12 0B 66         [24]  732 	lcall	__modsint
      000322 75 1E 64         [24]  733 	mov	__divsint_PARM_2,#0x64
      000325 75 1F 00         [24]  734 	mov	(__divsint_PARM_2 + 1),#0x00
      000328 12 0B 9C         [24]  735 	lcall	__divsint
      00032B AE 82            [24]  736 	mov	r6,dpl
      00032D 74 30            [12]  737 	mov	a,#0x30
      00032F 2E               [12]  738 	add	a,r6
      000330 F5 82            [12]  739 	mov	dpl,a
      000332 12 08 D2         [24]  740 	lcall	_OLED_DisplayChar
                                    741 ;	./src/main.c:114: OLED_DisplayChar(cnt_s % 100 / 10 + '0');
      000335 75 1E 64         [24]  742 	mov	__modsint_PARM_2,#0x64
      000338 75 1F 00         [24]  743 	mov	(__modsint_PARM_2 + 1),#0x00
      00033B 85 0B 82         [24]  744 	mov	dpl,_cnt_s
      00033E 85 0C 83         [24]  745 	mov	dph,(_cnt_s + 1)
      000341 12 0B 66         [24]  746 	lcall	__modsint
      000344 75 1E 0A         [24]  747 	mov	__divsint_PARM_2,#0x0a
      000347 75 1F 00         [24]  748 	mov	(__divsint_PARM_2 + 1),#0x00
      00034A 12 0B 9C         [24]  749 	lcall	__divsint
      00034D AE 82            [24]  750 	mov	r6,dpl
      00034F 74 30            [12]  751 	mov	a,#0x30
      000351 2E               [12]  752 	add	a,r6
      000352 F5 82            [12]  753 	mov	dpl,a
      000354 12 08 D2         [24]  754 	lcall	_OLED_DisplayChar
                                    755 ;	./src/main.c:115: OLED_DisplayChar(cnt_s % 10 + '0');
      000357 75 1E 0A         [24]  756 	mov	__modsint_PARM_2,#0x0a
      00035A 75 1F 00         [24]  757 	mov	(__modsint_PARM_2 + 1),#0x00
      00035D 85 0B 82         [24]  758 	mov	dpl,_cnt_s
      000360 85 0C 83         [24]  759 	mov	dph,(_cnt_s + 1)
      000363 12 0B 66         [24]  760 	lcall	__modsint
      000366 AE 82            [24]  761 	mov	r6,dpl
      000368 74 30            [12]  762 	mov	a,#0x30
      00036A 2E               [12]  763 	add	a,r6
      00036B F5 82            [12]  764 	mov	dpl,a
      00036D 12 08 D2         [24]  765 	lcall	_OLED_DisplayChar
      000370 02 04 D4         [24]  766 	ljmp	00120$
      000373                        767 00107$:
                                    768 ;	./src/main.c:117: else if (i == 2){
      000373 74 02            [12]  769 	mov	a,#0x02
      000375 B5 08 02         [24]  770 	cjne	a,_i,00162$
      000378 80 03            [24]  771 	sjmp	00163$
      00037A                        772 00162$:
      00037A 02 04 25         [24]  773 	ljmp	00104$
      00037D                        774 00163$:
                                    775 ;	./src/main.c:118: OLED_SetCursor(2 + i, 54);
      00037D AF 08            [24]  776 	mov	r7,_i
      00037F 74 02            [12]  777 	mov	a,#0x02
      000381 2F               [12]  778 	add	a,r7
      000382 F5 82            [12]  779 	mov	dpl,a
      000384 75 1D 36         [24]  780 	mov	_OLED_SetCursor_PARM_2,#0x36
      000387 12 09 79         [24]  781 	lcall	_OLED_SetCursor
                                    782 ;	./src/main.c:119: OLED_DisplayChar(accP / 10000 + '0');
      00038A 75 1E 10         [24]  783 	mov	__divsint_PARM_2,#0x10
      00038D 75 1F 27         [24]  784 	mov	(__divsint_PARM_2 + 1),#0x27
      000390 85 0D 82         [24]  785 	mov	dpl,_accP
      000393 85 0E 83         [24]  786 	mov	dph,(_accP + 1)
      000396 12 0B 9C         [24]  787 	lcall	__divsint
      000399 AE 82            [24]  788 	mov	r6,dpl
      00039B 74 30            [12]  789 	mov	a,#0x30
      00039D 2E               [12]  790 	add	a,r6
      00039E F5 82            [12]  791 	mov	dpl,a
      0003A0 12 08 D2         [24]  792 	lcall	_OLED_DisplayChar
                                    793 ;	./src/main.c:120: OLED_DisplayChar(accP % 10000 / 1000 + '0');
      0003A3 75 1E 10         [24]  794 	mov	__modsint_PARM_2,#0x10
      0003A6 75 1F 27         [24]  795 	mov	(__modsint_PARM_2 + 1),#0x27
      0003A9 85 0D 82         [24]  796 	mov	dpl,_accP
      0003AC 85 0E 83         [24]  797 	mov	dph,(_accP + 1)
      0003AF 12 0B 66         [24]  798 	lcall	__modsint
      0003B2 75 1E E8         [24]  799 	mov	__divsint_PARM_2,#0xe8
      0003B5 75 1F 03         [24]  800 	mov	(__divsint_PARM_2 + 1),#0x03
      0003B8 12 0B 9C         [24]  801 	lcall	__divsint
      0003BB AE 82            [24]  802 	mov	r6,dpl
      0003BD 74 30            [12]  803 	mov	a,#0x30
      0003BF 2E               [12]  804 	add	a,r6
      0003C0 F5 82            [12]  805 	mov	dpl,a
      0003C2 12 08 D2         [24]  806 	lcall	_OLED_DisplayChar
                                    807 ;	./src/main.c:121: OLED_DisplayChar(accP % 1000 / 100 + '0');
      0003C5 75 1E E8         [24]  808 	mov	__modsint_PARM_2,#0xe8
      0003C8 75 1F 03         [24]  809 	mov	(__modsint_PARM_2 + 1),#0x03
      0003CB 85 0D 82         [24]  810 	mov	dpl,_accP
      0003CE 85 0E 83         [24]  811 	mov	dph,(_accP + 1)
      0003D1 12 0B 66         [24]  812 	lcall	__modsint
      0003D4 75 1E 64         [24]  813 	mov	__divsint_PARM_2,#0x64
      0003D7 75 1F 00         [24]  814 	mov	(__divsint_PARM_2 + 1),#0x00
      0003DA 12 0B 9C         [24]  815 	lcall	__divsint
      0003DD AE 82            [24]  816 	mov	r6,dpl
      0003DF 74 30            [12]  817 	mov	a,#0x30
      0003E1 2E               [12]  818 	add	a,r6
      0003E2 F5 82            [12]  819 	mov	dpl,a
      0003E4 12 08 D2         [24]  820 	lcall	_OLED_DisplayChar
                                    821 ;	./src/main.c:122: OLED_DisplayChar(accP % 100 / 10 + '0');
      0003E7 75 1E 64         [24]  822 	mov	__modsint_PARM_2,#0x64
      0003EA 75 1F 00         [24]  823 	mov	(__modsint_PARM_2 + 1),#0x00
      0003ED 85 0D 82         [24]  824 	mov	dpl,_accP
      0003F0 85 0E 83         [24]  825 	mov	dph,(_accP + 1)
      0003F3 12 0B 66         [24]  826 	lcall	__modsint
      0003F6 75 1E 0A         [24]  827 	mov	__divsint_PARM_2,#0x0a
      0003F9 75 1F 00         [24]  828 	mov	(__divsint_PARM_2 + 1),#0x00
      0003FC 12 0B 9C         [24]  829 	lcall	__divsint
      0003FF AE 82            [24]  830 	mov	r6,dpl
      000401 74 30            [12]  831 	mov	a,#0x30
      000403 2E               [12]  832 	add	a,r6
      000404 F5 82            [12]  833 	mov	dpl,a
      000406 12 08 D2         [24]  834 	lcall	_OLED_DisplayChar
                                    835 ;	./src/main.c:123: OLED_DisplayChar(accP % 10 + '0');
      000409 75 1E 0A         [24]  836 	mov	__modsint_PARM_2,#0x0a
      00040C 75 1F 00         [24]  837 	mov	(__modsint_PARM_2 + 1),#0x00
      00040F 85 0D 82         [24]  838 	mov	dpl,_accP
      000412 85 0E 83         [24]  839 	mov	dph,(_accP + 1)
      000415 12 0B 66         [24]  840 	lcall	__modsint
      000418 AE 82            [24]  841 	mov	r6,dpl
      00041A 74 30            [12]  842 	mov	a,#0x30
      00041C 2E               [12]  843 	add	a,r6
      00041D F5 82            [12]  844 	mov	dpl,a
      00041F 12 08 D2         [24]  845 	lcall	_OLED_DisplayChar
      000422 02 04 D4         [24]  846 	ljmp	00120$
      000425                        847 00104$:
                                    848 ;	./src/main.c:124: }else if (i == 3){
      000425 74 03            [12]  849 	mov	a,#0x03
      000427 B5 08 02         [24]  850 	cjne	a,_i,00164$
      00042A 80 03            [24]  851 	sjmp	00165$
      00042C                        852 00164$:
      00042C 02 04 D4         [24]  853 	ljmp	00120$
      00042F                        854 00165$:
                                    855 ;	./src/main.c:125: OLED_SetCursor(2 + i, 54);
      00042F AF 08            [24]  856 	mov	r7,_i
      000431 74 02            [12]  857 	mov	a,#0x02
      000433 2F               [12]  858 	add	a,r7
      000434 F5 82            [12]  859 	mov	dpl,a
      000436 75 1D 36         [24]  860 	mov	_OLED_SetCursor_PARM_2,#0x36
      000439 12 09 79         [24]  861 	lcall	_OLED_SetCursor
                                    862 ;	./src/main.c:126: OLED_DisplayChar(DynP / 10000 + '0');
      00043C 75 1E 10         [24]  863 	mov	__divsint_PARM_2,#0x10
      00043F 75 1F 27         [24]  864 	mov	(__divsint_PARM_2 + 1),#0x27
      000442 85 0F 82         [24]  865 	mov	dpl,_DynP
      000445 85 10 83         [24]  866 	mov	dph,(_DynP + 1)
      000448 12 0B 9C         [24]  867 	lcall	__divsint
      00044B AE 82            [24]  868 	mov	r6,dpl
      00044D 74 30            [12]  869 	mov	a,#0x30
      00044F 2E               [12]  870 	add	a,r6
      000450 F5 82            [12]  871 	mov	dpl,a
      000452 12 08 D2         [24]  872 	lcall	_OLED_DisplayChar
                                    873 ;	./src/main.c:127: OLED_DisplayChar(DynP % 10000 / 1000 + '0');
      000455 75 1E 10         [24]  874 	mov	__modsint_PARM_2,#0x10
      000458 75 1F 27         [24]  875 	mov	(__modsint_PARM_2 + 1),#0x27
      00045B 85 0F 82         [24]  876 	mov	dpl,_DynP
      00045E 85 10 83         [24]  877 	mov	dph,(_DynP + 1)
      000461 12 0B 66         [24]  878 	lcall	__modsint
      000464 75 1E E8         [24]  879 	mov	__divsint_PARM_2,#0xe8
      000467 75 1F 03         [24]  880 	mov	(__divsint_PARM_2 + 1),#0x03
      00046A 12 0B 9C         [24]  881 	lcall	__divsint
      00046D AE 82            [24]  882 	mov	r6,dpl
      00046F 74 30            [12]  883 	mov	a,#0x30
      000471 2E               [12]  884 	add	a,r6
      000472 F5 82            [12]  885 	mov	dpl,a
      000474 12 08 D2         [24]  886 	lcall	_OLED_DisplayChar
                                    887 ;	./src/main.c:128: OLED_DisplayChar(DynP % 1000 / 100 + '0');
      000477 75 1E E8         [24]  888 	mov	__modsint_PARM_2,#0xe8
      00047A 75 1F 03         [24]  889 	mov	(__modsint_PARM_2 + 1),#0x03
      00047D 85 0F 82         [24]  890 	mov	dpl,_DynP
      000480 85 10 83         [24]  891 	mov	dph,(_DynP + 1)
      000483 12 0B 66         [24]  892 	lcall	__modsint
      000486 75 1E 64         [24]  893 	mov	__divsint_PARM_2,#0x64
      000489 75 1F 00         [24]  894 	mov	(__divsint_PARM_2 + 1),#0x00
      00048C 12 0B 9C         [24]  895 	lcall	__divsint
      00048F AE 82            [24]  896 	mov	r6,dpl
      000491 74 30            [12]  897 	mov	a,#0x30
      000493 2E               [12]  898 	add	a,r6
      000494 F5 82            [12]  899 	mov	dpl,a
      000496 12 08 D2         [24]  900 	lcall	_OLED_DisplayChar
                                    901 ;	./src/main.c:129: OLED_DisplayChar(DynP % 100 / 10 + '0');
      000499 75 1E 64         [24]  902 	mov	__modsint_PARM_2,#0x64
      00049C 75 1F 00         [24]  903 	mov	(__modsint_PARM_2 + 1),#0x00
      00049F 85 0F 82         [24]  904 	mov	dpl,_DynP
      0004A2 85 10 83         [24]  905 	mov	dph,(_DynP + 1)
      0004A5 12 0B 66         [24]  906 	lcall	__modsint
      0004A8 75 1E 0A         [24]  907 	mov	__divsint_PARM_2,#0x0a
      0004AB 75 1F 00         [24]  908 	mov	(__divsint_PARM_2 + 1),#0x00
      0004AE 12 0B 9C         [24]  909 	lcall	__divsint
      0004B1 AE 82            [24]  910 	mov	r6,dpl
      0004B3 74 30            [12]  911 	mov	a,#0x30
      0004B5 2E               [12]  912 	add	a,r6
      0004B6 F5 82            [12]  913 	mov	dpl,a
      0004B8 12 08 D2         [24]  914 	lcall	_OLED_DisplayChar
                                    915 ;	./src/main.c:130: OLED_DisplayChar(DynP % 10 + '0');
      0004BB 75 1E 0A         [24]  916 	mov	__modsint_PARM_2,#0x0a
      0004BE 75 1F 00         [24]  917 	mov	(__modsint_PARM_2 + 1),#0x00
      0004C1 85 0F 82         [24]  918 	mov	dpl,_DynP
      0004C4 85 10 83         [24]  919 	mov	dph,(_DynP + 1)
      0004C7 12 0B 66         [24]  920 	lcall	__modsint
      0004CA AE 82            [24]  921 	mov	r6,dpl
      0004CC 74 30            [12]  922 	mov	a,#0x30
      0004CE 2E               [12]  923 	add	a,r6
      0004CF F5 82            [12]  924 	mov	dpl,a
      0004D1 12 08 D2         [24]  925 	lcall	_OLED_DisplayChar
      0004D4                        926 00120$:
                                    927 ;	./src/main.c:97: for(i = 0; i < 4; i++) {
      0004D4 05 08            [12]  928 	inc	_i
      0004D6 74 FC            [12]  929 	mov	a,#0x100 - 0x04
      0004D8 25 08            [12]  930 	add	a,_i
      0004DA 40 03            [24]  931 	jc	00166$
      0004DC 02 02 08         [24]  932 	ljmp	00119$
      0004DF                        933 00166$:
                                    934 ;	./src/main.c:133: if (hall_last_state == 1 && Hall_In == 0){
      0004DF 74 01            [12]  935 	mov	a,#0x01
      0004E1 B5 18 06         [24]  936 	cjne	a,_hall_last_state,00167$
      0004E4 14               [12]  937 	dec	a
      0004E5 B5 19 02         [24]  938 	cjne	a,(_hall_last_state + 1),00167$
      0004E8 80 02            [24]  939 	sjmp	00168$
      0004EA                        940 00167$:
      0004EA 80 0B            [24]  941 	sjmp	00114$
      0004EC                        942 00168$:
      0004EC 20 A4 08         [24]  943 	jb	_P2_4,00114$
                                    944 ;	./src/main.c:134: accP++;
      0004EF 05 0D            [12]  945 	inc	_accP
      0004F1 E4               [12]  946 	clr	a
      0004F2 B5 0D 02         [24]  947 	cjne	a,_accP,00170$
      0004F5 05 0E            [12]  948 	inc	(_accP + 1)
      0004F7                        949 00170$:
      0004F7                        950 00114$:
                                    951 ;	./src/main.c:135: }hall_last_state = Hall_In;
      0004F7 A2 A4            [12]  952 	mov	c,_P2_4
      0004F9 E4               [12]  953 	clr	a
      0004FA 33               [12]  954 	rlc	a
      0004FB F5 18            [12]  955 	mov	_hall_last_state,a
      0004FD 75 19 00         [24]  956 	mov	(_hall_last_state + 1),#0x00
                                    957 ;	./src/main.c:136: delay_ms(100);
      000500 90 00 64         [24]  958 	mov	dptr,#0x0064
      000503 12 07 5F         [24]  959 	lcall	_delay_ms
                                    960 ;	./src/main.c:138: }
      000506 02 02 05         [24]  961 	ljmp	00117$
                                    962 	.area CSEG    (CODE)
                                    963 	.area CONST   (CODE)
                                    964 	.area CONST   (CODE)
      000BD8                        965 ___str_0:
      000BD8 20 54 69 6D 65 20      966 	.ascii " Time "
      000BDE 00                     967 	.db 0x00
                                    968 	.area CSEG    (CODE)
                                    969 	.area CONST   (CODE)
      000BDF                        970 ___str_1:
      000BDF 50 65 6F 70 6C 65      971 	.ascii "People"
      000BE5 00                     972 	.db 0x00
                                    973 	.area CSEG    (CODE)
                                    974 	.area CONST   (CODE)
      000BE6                        975 ___str_2:
      000BE6 41 63 63 50 65 6F      976 	.ascii "AccPeo"
      000BEC 00                     977 	.db 0x00
                                    978 	.area CSEG    (CODE)
                                    979 	.area CONST   (CODE)
      000BED                        980 ___str_3:
      000BED 44 79 6E 50 65 6F      981 	.ascii "DynPeo"
      000BF3 00                     982 	.db 0x00
                                    983 	.area CSEG    (CODE)
                                    984 	.area XINIT   (CODE)
                                    985 	.area CABS    (ABS,CODE)
