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
                                     13 	.globl _Initial
                                     14 	.globl _Write7219
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
                                    111 	.globl _decoder
                                    112 	.globl _ans
                                    113 	.globl _cnt
                                    114 	.globl _hall_last_state
                                    115 	.globl _hall_ms
                                    116 	.globl _Display
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
                                    229 ; overlayable bit register bank
                                    230 ;--------------------------------------------------------
                                    231 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        232 bits:
      000020                        233 	.ds 1
                           008000   234 	b0 = bits[0]
                           008100   235 	b1 = bits[1]
                           008200   236 	b2 = bits[2]
                           008300   237 	b3 = bits[3]
                           008400   238 	b4 = bits[4]
                           008500   239 	b5 = bits[5]
                           008600   240 	b6 = bits[6]
                           008700   241 	b7 = bits[7]
                                    242 ;--------------------------------------------------------
                                    243 ; internal ram data
                                    244 ;--------------------------------------------------------
                                    245 	.area DSEG    (DATA)
      000008                        246 _hall_ms::
      000008                        247 	.ds 2
      00000A                        248 _hall_last_state::
      00000A                        249 	.ds 1
      00000B                        250 _cnt::
      00000B                        251 	.ds 2
      00000D                        252 _ans::
      00000D                        253 	.ds 2
      00000F                        254 _decoder::
      00000F                        255 	.ds 10
                                    256 ;--------------------------------------------------------
                                    257 ; overlayable items in internal ram 
                                    258 ;--------------------------------------------------------
                                    259 ;--------------------------------------------------------
                                    260 ; Stack segment in internal ram 
                                    261 ;--------------------------------------------------------
                                    262 	.area	SSEG
      000021                        263 __start__stack:
      000021                        264 	.ds	1
                                    265 
                                    266 ;--------------------------------------------------------
                                    267 ; indirectly addressable internal ram data
                                    268 ;--------------------------------------------------------
                                    269 	.area ISEG    (DATA)
                                    270 ;--------------------------------------------------------
                                    271 ; absolute internal ram data
                                    272 ;--------------------------------------------------------
                                    273 	.area IABS    (ABS,DATA)
                                    274 	.area IABS    (ABS,DATA)
                                    275 ;--------------------------------------------------------
                                    276 ; bit data
                                    277 ;--------------------------------------------------------
                                    278 	.area BSEG    (BIT)
                                    279 ;--------------------------------------------------------
                                    280 ; paged external ram data
                                    281 ;--------------------------------------------------------
                                    282 	.area PSEG    (PAG,XDATA)
                                    283 ;--------------------------------------------------------
                                    284 ; external ram data
                                    285 ;--------------------------------------------------------
                                    286 	.area XSEG    (XDATA)
                                    287 ;--------------------------------------------------------
                                    288 ; absolute external ram data
                                    289 ;--------------------------------------------------------
                                    290 	.area XABS    (ABS,XDATA)
                                    291 ;--------------------------------------------------------
                                    292 ; external initialized ram data
                                    293 ;--------------------------------------------------------
                                    294 	.area XISEG   (XDATA)
                                    295 	.area HOME    (CODE)
                                    296 	.area GSINIT0 (CODE)
                                    297 	.area GSINIT1 (CODE)
                                    298 	.area GSINIT2 (CODE)
                                    299 	.area GSINIT3 (CODE)
                                    300 	.area GSINIT4 (CODE)
                                    301 	.area GSINIT5 (CODE)
                                    302 	.area GSINIT  (CODE)
                                    303 	.area GSFINAL (CODE)
                                    304 	.area CSEG    (CODE)
                                    305 ;--------------------------------------------------------
                                    306 ; interrupt vector 
                                    307 ;--------------------------------------------------------
                                    308 	.area HOME    (CODE)
      000000                        309 __interrupt_vect:
      000000 02 00 11         [24]  310 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  311 	reti
      000004                        312 	.ds	7
      00000B 02 00 9A         [24]  313 	ljmp	_T0_isr
                                    314 ;--------------------------------------------------------
                                    315 ; global & static initialisations
                                    316 ;--------------------------------------------------------
                                    317 	.area HOME    (CODE)
                                    318 	.area GSINIT  (CODE)
                                    319 	.area GSFINAL (CODE)
                                    320 	.area GSINIT  (CODE)
                                    321 	.globl __sdcc_gsinit_startup
                                    322 	.globl __sdcc_program_startup
                                    323 	.globl __start__stack
                                    324 	.globl __mcs51_genXINIT
                                    325 	.globl __mcs51_genXRAMCLEAR
                                    326 	.globl __mcs51_genRAMCLEAR
                                    327 ;	./src/main.c:8: int hall_ms = 0;									// counter of the time elapsed
      00006A E4               [12]  328 	clr	a
      00006B F5 08            [12]  329 	mov	_hall_ms,a
      00006D F5 09            [12]  330 	mov	(_hall_ms + 1),a
                                    331 ;	./src/main.c:9: char hall_last_state = 0;							// Record activation and deactivation of Hall sensor
                                    332 ;	1-genFromRTrack replaced	mov	_hall_last_state,#0x00
      00006F F5 0A            [12]  333 	mov	_hall_last_state,a
                                    334 ;	./src/main.c:10: int cnt = 0;
      000071 F5 0B            [12]  335 	mov	_cnt,a
      000073 F5 0C            [12]  336 	mov	(_cnt + 1),a
                                    337 ;	./src/main.c:11: int ans = 0;
      000075 F5 0D            [12]  338 	mov	_ans,a
      000077 F5 0E            [12]  339 	mov	(_ans + 1),a
                                    340 ;	./src/main.c:13: char decoder[10] = {
      000079 75 0F 7E         [24]  341 	mov	_decoder,#0x7e
      00007C 75 10 30         [24]  342 	mov	(_decoder + 0x0001),#0x30
      00007F 75 11 6D         [24]  343 	mov	(_decoder + 0x0002),#0x6d
      000082 75 12 79         [24]  344 	mov	(_decoder + 0x0003),#0x79
      000085 75 13 33         [24]  345 	mov	(_decoder + 0x0004),#0x33
      000088 75 14 5B         [24]  346 	mov	(_decoder + 0x0005),#0x5b
      00008B 75 15 5F         [24]  347 	mov	(_decoder + 0x0006),#0x5f
      00008E 75 16 70         [24]  348 	mov	(_decoder + 0x0007),#0x70
      000091 75 17 7F         [24]  349 	mov	(_decoder + 0x0008),#0x7f
      000094 75 18 7B         [24]  350 	mov	(_decoder + 0x0009),#0x7b
                                    351 	.area GSFINAL (CODE)
      000097 02 00 0E         [24]  352 	ljmp	__sdcc_program_startup
                                    353 ;--------------------------------------------------------
                                    354 ; Home
                                    355 ;--------------------------------------------------------
                                    356 	.area HOME    (CODE)
                                    357 	.area HOME    (CODE)
      00000E                        358 __sdcc_program_startup:
      00000E 02 01 02         [24]  359 	ljmp	_main
                                    360 ;	return from main will return to caller
                                    361 ;--------------------------------------------------------
                                    362 ; code
                                    363 ;--------------------------------------------------------
                                    364 	.area CSEG    (CODE)
                                    365 ;------------------------------------------------------------
                                    366 ;Allocation info for local variables in function 'T0_isr'
                                    367 ;------------------------------------------------------------
                                    368 ;	./src/main.c:28: void T0_isr(void) __interrupt (1)						// Interrupt routine w/ priority 1
                                    369 ;	-----------------------------------------
                                    370 ;	 function T0_isr
                                    371 ;	-----------------------------------------
      00009A                        372 _T0_isr:
                           000007   373 	ar7 = 0x07
                           000006   374 	ar6 = 0x06
                           000005   375 	ar5 = 0x05
                           000004   376 	ar4 = 0x04
                           000003   377 	ar3 = 0x03
                           000002   378 	ar2 = 0x02
                           000001   379 	ar1 = 0x01
                           000000   380 	ar0 = 0x00
      00009A C0 20            [24]  381 	push	bits
      00009C C0 E0            [24]  382 	push	acc
      00009E C0 F0            [24]  383 	push	b
      0000A0 C0 82            [24]  384 	push	dpl
      0000A2 C0 83            [24]  385 	push	dph
      0000A4 C0 07            [24]  386 	push	(0+7)
      0000A6 C0 06            [24]  387 	push	(0+6)
      0000A8 C0 05            [24]  388 	push	(0+5)
      0000AA C0 04            [24]  389 	push	(0+4)
      0000AC C0 03            [24]  390 	push	(0+3)
      0000AE C0 02            [24]  391 	push	(0+2)
      0000B0 C0 01            [24]  392 	push	(0+1)
      0000B2 C0 00            [24]  393 	push	(0+0)
      0000B4 C0 D0            [24]  394 	push	psw
      0000B6 75 D0 00         [24]  395 	mov	psw,#0x00
                                    396 ;	./src/main.c:30: TH0 = (65536-1000) / 256;			// Reset higher 8 bits of Timer 0
      0000B9 75 8C FC         [24]  397 	mov	_TH0,#0xfc
                                    398 ;	./src/main.c:31: TL0 = (65536-1000) % 256;			// Reset lower 8 bits of Timer 0
      0000BC 75 8A 18         [24]  399 	mov	_TL0,#0x18
                                    400 ;	./src/main.c:33: if (hall_last_state == 1 && Hall_In == 0){
      0000BF 74 01            [12]  401 	mov	a,#0x01
      0000C1 B5 0A 13         [24]  402 	cjne	a,_hall_last_state,00102$
      0000C4 20 A4 10         [24]  403 	jb	_P2_4,00102$
                                    404 ;	./src/main.c:34: ans = cnt;
      0000C7 85 0B 0D         [24]  405 	mov	_ans,_cnt
      0000CA 85 0C 0E         [24]  406 	mov	(_ans + 1),(_cnt + 1)
                                    407 ;	./src/main.c:35: cnt = 0;
      0000CD E4               [12]  408 	clr	a
      0000CE F5 0B            [12]  409 	mov	_cnt,a
      0000D0 F5 0C            [12]  410 	mov	(_cnt + 1),a
                                    411 ;	./src/main.c:36: Display();
      0000D2 12 01 1D         [24]  412 	lcall	_Display
      0000D5 80 08            [24]  413 	sjmp	00103$
      0000D7                        414 00102$:
                                    415 ;	./src/main.c:38: cnt++;
      0000D7 05 0B            [12]  416 	inc	_cnt
      0000D9 E4               [12]  417 	clr	a
      0000DA B5 0B 02         [24]  418 	cjne	a,_cnt,00118$
      0000DD 05 0C            [12]  419 	inc	(_cnt + 1)
      0000DF                        420 00118$:
      0000DF                        421 00103$:
                                    422 ;	./src/main.c:39: }hall_last_state = Hall_In;
      0000DF A2 A4            [12]  423 	mov	c,_P2_4
      0000E1 E4               [12]  424 	clr	a
      0000E2 33               [12]  425 	rlc	a
      0000E3 F5 0A            [12]  426 	mov	_hall_last_state,a
                                    427 ;	./src/main.c:43: }
      0000E5 D0 D0            [24]  428 	pop	psw
      0000E7 D0 00            [24]  429 	pop	(0+0)
      0000E9 D0 01            [24]  430 	pop	(0+1)
      0000EB D0 02            [24]  431 	pop	(0+2)
      0000ED D0 03            [24]  432 	pop	(0+3)
      0000EF D0 04            [24]  433 	pop	(0+4)
      0000F1 D0 05            [24]  434 	pop	(0+5)
      0000F3 D0 06            [24]  435 	pop	(0+6)
      0000F5 D0 07            [24]  436 	pop	(0+7)
      0000F7 D0 83            [24]  437 	pop	dph
      0000F9 D0 82            [24]  438 	pop	dpl
      0000FB D0 F0            [24]  439 	pop	b
      0000FD D0 E0            [24]  440 	pop	acc
      0000FF D0 20            [24]  441 	pop	bits
      000101 32               [24]  442 	reti
                                    443 ;------------------------------------------------------------
                                    444 ;Allocation info for local variables in function 'main'
                                    445 ;------------------------------------------------------------
                                    446 ;	./src/main.c:45: int main(void) {		
                                    447 ;	-----------------------------------------
                                    448 ;	 function main
                                    449 ;	-----------------------------------------
      000102                        450 _main:
                                    451 ;	./src/main.c:48: TMOD = 0x01;											// Set Timer 1 to  mode 0 & T imer 0 mode 1. (16-bit timer)
      000102 75 89 01         [24]  452 	mov	_TMOD,#0x01
                                    453 ;	./src/main.c:49: TH0 = (65536-1000) / 256;					// Load initial higher 8 bits into Timer 0
      000105 75 8C FC         [24]  454 	mov	_TH0,#0xfc
                                    455 ;	./src/main.c:50: TL0 = (65536-1000) % 256;					// Load initial lower 8 bits into Timer 0
      000108 75 8A 18         [24]  456 	mov	_TL0,#0x18
                                    457 ;	./src/main.c:51: ET0 = 1;													// Enable Timer 0 interrupt
                                    458 ;	assignBit
      00010B D2 A9            [12]  459 	setb	_ET0
                                    460 ;	./src/main.c:52: EA = 1;														// Enable all interrupt
                                    461 ;	assignBit
      00010D D2 AF            [12]  462 	setb	_EA
                                    463 ;	./src/main.c:53: TR0 = 1;													// Start Timer 0
                                    464 ;	assignBit
      00010F D2 8C            [12]  465 	setb	_TR0
                                    466 ;	./src/main.c:54: Initial();                  			//MAX7219 initialize
      000111 12 02 42         [24]  467 	lcall	_Initial
                                    468 ;	./src/main.c:55: cnt = 0;
      000114 E4               [12]  469 	clr	a
      000115 F5 0B            [12]  470 	mov	_cnt,a
      000117 F5 0C            [12]  471 	mov	(_cnt + 1),a
                                    472 ;	./src/main.c:56: Hall_In = 1;              // Initialize Hall sensor signal (deactivated)
                                    473 ;	assignBit
      000119 D2 A4            [12]  474 	setb	_P2_4
                                    475 ;	./src/main.c:58: while(1){
      00011B                        476 00102$:
                                    477 ;	./src/main.c:62: }
      00011B 80 FE            [24]  478 	sjmp	00102$
                                    479 ;------------------------------------------------------------
                                    480 ;Allocation info for local variables in function 'Display'
                                    481 ;------------------------------------------------------------
                                    482 ;i                         Allocated to registers r7 
                                    483 ;------------------------------------------------------------
                                    484 ;	./src/main.c:64: void Display(void){
                                    485 ;	-----------------------------------------
                                    486 ;	 function Display
                                    487 ;	-----------------------------------------
      00011D                        488 _Display:
                                    489 ;	./src/main.c:66: Write7219(1, decoder[ans%10]);ans/=10;
      00011D 75 1A 0A         [24]  490 	mov	__modsint_PARM_2,#0x0a
      000120 75 1B 00         [24]  491 	mov	(__modsint_PARM_2 + 1),#0x00
      000123 85 0D 82         [24]  492 	mov	dpl,_ans
      000126 85 0E 83         [24]  493 	mov	dph,(_ans + 1)
      000129 12 02 FA         [24]  494 	lcall	__modsint
      00012C AE 82            [24]  495 	mov	r6,dpl
      00012E EE               [12]  496 	mov	a,r6
      00012F 24 0F            [12]  497 	add	a,#_decoder
      000131 F9               [12]  498 	mov	r1,a
      000132 87 19            [24]  499 	mov	_Write7219_PARM_2,@r1
      000134 75 82 01         [24]  500 	mov	dpl,#0x01
      000137 12 02 23         [24]  501 	lcall	_Write7219
      00013A 75 1A 0A         [24]  502 	mov	__divsint_PARM_2,#0x0a
      00013D 75 1B 00         [24]  503 	mov	(__divsint_PARM_2 + 1),#0x00
      000140 85 0D 82         [24]  504 	mov	dpl,_ans
      000143 85 0E 83         [24]  505 	mov	dph,(_ans + 1)
      000146 12 03 30         [24]  506 	lcall	__divsint
      000149 85 82 0D         [24]  507 	mov	_ans,dpl
      00014C 85 83 0E         [24]  508 	mov	(_ans + 1),dph
                                    509 ;	./src/main.c:67: for (i = 2;i<9;i++){
      00014F 7F 02            [12]  510 	mov	r7,#0x02
      000151                        511 00108$:
                                    512 ;	./src/main.c:69: if (i == 4)Write7219(i, decoder[ans%10] | 0b10000000);
      000151 BF 04 2B         [24]  513 	cjne	r7,#0x04,00105$
      000154 75 1A 0A         [24]  514 	mov	__modsint_PARM_2,#0x0a
      000157 75 1B 00         [24]  515 	mov	(__modsint_PARM_2 + 1),#0x00
      00015A 85 0D 82         [24]  516 	mov	dpl,_ans
      00015D 85 0E 83         [24]  517 	mov	dph,(_ans + 1)
      000160 C0 07            [24]  518 	push	ar7
      000162 12 02 FA         [24]  519 	lcall	__modsint
      000165 AD 82            [24]  520 	mov	r5,dpl
      000167 D0 07            [24]  521 	pop	ar7
      000169 ED               [12]  522 	mov	a,r5
      00016A 24 0F            [12]  523 	add	a,#_decoder
      00016C F9               [12]  524 	mov	r1,a
      00016D 87 06            [24]  525 	mov	ar6,@r1
      00016F 74 80            [12]  526 	mov	a,#0x80
      000171 4E               [12]  527 	orl	a,r6
      000172 F5 19            [12]  528 	mov	_Write7219_PARM_2,a
      000174 8F 82            [24]  529 	mov	dpl,r7
      000176 C0 07            [24]  530 	push	ar7
      000178 12 02 23         [24]  531 	lcall	_Write7219
      00017B D0 07            [24]  532 	pop	ar7
      00017D 80 38            [24]  533 	sjmp	00106$
      00017F                        534 00105$:
                                    535 ;	./src/main.c:70: else if (ans) Write7219(i, decoder[ans%10] );
      00017F E5 0D            [12]  536 	mov	a,_ans
      000181 45 0E            [12]  537 	orl	a,(_ans + 1)
      000183 60 26            [24]  538 	jz	00102$
      000185 75 1A 0A         [24]  539 	mov	__modsint_PARM_2,#0x0a
      000188 75 1B 00         [24]  540 	mov	(__modsint_PARM_2 + 1),#0x00
      00018B 85 0D 82         [24]  541 	mov	dpl,_ans
      00018E 85 0E 83         [24]  542 	mov	dph,(_ans + 1)
      000191 C0 07            [24]  543 	push	ar7
      000193 12 02 FA         [24]  544 	lcall	__modsint
      000196 AD 82            [24]  545 	mov	r5,dpl
      000198 D0 07            [24]  546 	pop	ar7
      00019A ED               [12]  547 	mov	a,r5
      00019B 24 0F            [12]  548 	add	a,#_decoder
      00019D F9               [12]  549 	mov	r1,a
      00019E 87 19            [24]  550 	mov	_Write7219_PARM_2,@r1
      0001A0 8F 82            [24]  551 	mov	dpl,r7
      0001A2 C0 07            [24]  552 	push	ar7
      0001A4 12 02 23         [24]  553 	lcall	_Write7219
      0001A7 D0 07            [24]  554 	pop	ar7
      0001A9 80 0C            [24]  555 	sjmp	00106$
      0001AB                        556 00102$:
                                    557 ;	./src/main.c:71: else Write7219(i, 0x00);
      0001AB 75 19 00         [24]  558 	mov	_Write7219_PARM_2,#0x00
      0001AE 8F 82            [24]  559 	mov	dpl,r7
      0001B0 C0 07            [24]  560 	push	ar7
      0001B2 12 02 23         [24]  561 	lcall	_Write7219
      0001B5 D0 07            [24]  562 	pop	ar7
      0001B7                        563 00106$:
                                    564 ;	./src/main.c:72: ans/=10;
      0001B7 75 1A 0A         [24]  565 	mov	__divsint_PARM_2,#0x0a
      0001BA 75 1B 00         [24]  566 	mov	(__divsint_PARM_2 + 1),#0x00
      0001BD 85 0D 82         [24]  567 	mov	dpl,_ans
      0001C0 85 0E 83         [24]  568 	mov	dph,(_ans + 1)
      0001C3 C0 07            [24]  569 	push	ar7
      0001C5 12 03 30         [24]  570 	lcall	__divsint
      0001C8 85 82 0D         [24]  571 	mov	_ans,dpl
      0001CB 85 83 0E         [24]  572 	mov	(_ans + 1),dph
      0001CE D0 07            [24]  573 	pop	ar7
                                    574 ;	./src/main.c:67: for (i = 2;i<9;i++){
      0001D0 0F               [12]  575 	inc	r7
      0001D1 BF 09 00         [24]  576 	cjne	r7,#0x09,00128$
      0001D4                        577 00128$:
      0001D4 50 03            [24]  578 	jnc	00129$
      0001D6 02 01 51         [24]  579 	ljmp	00108$
      0001D9                        580 00129$:
                                    581 ;	./src/main.c:76: }
      0001D9 22               [24]  582 	ret
                                    583 	.area CSEG    (CODE)
                                    584 	.area CONST   (CODE)
                                    585 	.area XINIT   (CODE)
                                    586 	.area CABS    (ABS,CODE)
