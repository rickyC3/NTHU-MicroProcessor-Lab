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
                                     14 	.globl _CY
                                     15 	.globl _AC
                                     16 	.globl _F0
                                     17 	.globl _RS1
                                     18 	.globl _RS0
                                     19 	.globl _OV
                                     20 	.globl _F1
                                     21 	.globl _P
                                     22 	.globl _PS
                                     23 	.globl _PT1
                                     24 	.globl _PX1
                                     25 	.globl _PT0
                                     26 	.globl _PX0
                                     27 	.globl _RD
                                     28 	.globl _WR
                                     29 	.globl _T1
                                     30 	.globl _T0
                                     31 	.globl _INT1
                                     32 	.globl _INT0
                                     33 	.globl _TXD
                                     34 	.globl _RXD
                                     35 	.globl _P3_7
                                     36 	.globl _P3_6
                                     37 	.globl _P3_5
                                     38 	.globl _P3_4
                                     39 	.globl _P3_3
                                     40 	.globl _P3_2
                                     41 	.globl _P3_1
                                     42 	.globl _P3_0
                                     43 	.globl _EA
                                     44 	.globl _ES
                                     45 	.globl _ET1
                                     46 	.globl _EX1
                                     47 	.globl _ET0
                                     48 	.globl _EX0
                                     49 	.globl _P2_7
                                     50 	.globl _P2_6
                                     51 	.globl _P2_5
                                     52 	.globl _P2_4
                                     53 	.globl _P2_3
                                     54 	.globl _P2_2
                                     55 	.globl _P2_1
                                     56 	.globl _P2_0
                                     57 	.globl _SM0
                                     58 	.globl _SM1
                                     59 	.globl _SM2
                                     60 	.globl _REN
                                     61 	.globl _TB8
                                     62 	.globl _RB8
                                     63 	.globl _TI
                                     64 	.globl _RI
                                     65 	.globl _P1_7
                                     66 	.globl _P1_6
                                     67 	.globl _P1_5
                                     68 	.globl _P1_4
                                     69 	.globl _P1_3
                                     70 	.globl _P1_2
                                     71 	.globl _P1_1
                                     72 	.globl _P1_0
                                     73 	.globl _TF1
                                     74 	.globl _TR1
                                     75 	.globl _TF0
                                     76 	.globl _TR0
                                     77 	.globl _IE1
                                     78 	.globl _IT1
                                     79 	.globl _IE0
                                     80 	.globl _IT0
                                     81 	.globl _P0_7
                                     82 	.globl _P0_6
                                     83 	.globl _P0_5
                                     84 	.globl _P0_4
                                     85 	.globl _P0_3
                                     86 	.globl _P0_2
                                     87 	.globl _P0_1
                                     88 	.globl _P0_0
                                     89 	.globl _B
                                     90 	.globl _ACC
                                     91 	.globl _PSW
                                     92 	.globl _IP
                                     93 	.globl _P3
                                     94 	.globl _IE
                                     95 	.globl _P2
                                     96 	.globl _SBUF
                                     97 	.globl _SCON
                                     98 	.globl _P1
                                     99 	.globl _TH1
                                    100 	.globl _TH0
                                    101 	.globl _TL1
                                    102 	.globl _TL0
                                    103 	.globl _TMOD
                                    104 	.globl _TCON
                                    105 	.globl _PCON
                                    106 	.globl _DPH
                                    107 	.globl _DPL
                                    108 	.globl _SP
                                    109 	.globl _P0
                                    110 	.globl _hall_last_state
                                    111 	.globl _hall_cnt
                                    112 ;--------------------------------------------------------
                                    113 ; special function registers
                                    114 ;--------------------------------------------------------
                                    115 	.area RSEG    (ABS,DATA)
      000000                        116 	.org 0x0000
                           000080   117 _P0	=	0x0080
                           000081   118 _SP	=	0x0081
                           000082   119 _DPL	=	0x0082
                           000083   120 _DPH	=	0x0083
                           000087   121 _PCON	=	0x0087
                           000088   122 _TCON	=	0x0088
                           000089   123 _TMOD	=	0x0089
                           00008A   124 _TL0	=	0x008a
                           00008B   125 _TL1	=	0x008b
                           00008C   126 _TH0	=	0x008c
                           00008D   127 _TH1	=	0x008d
                           000090   128 _P1	=	0x0090
                           000098   129 _SCON	=	0x0098
                           000099   130 _SBUF	=	0x0099
                           0000A0   131 _P2	=	0x00a0
                           0000A8   132 _IE	=	0x00a8
                           0000B0   133 _P3	=	0x00b0
                           0000B8   134 _IP	=	0x00b8
                           0000D0   135 _PSW	=	0x00d0
                           0000E0   136 _ACC	=	0x00e0
                           0000F0   137 _B	=	0x00f0
                                    138 ;--------------------------------------------------------
                                    139 ; special function bits
                                    140 ;--------------------------------------------------------
                                    141 	.area RSEG    (ABS,DATA)
      000000                        142 	.org 0x0000
                           000080   143 _P0_0	=	0x0080
                           000081   144 _P0_1	=	0x0081
                           000082   145 _P0_2	=	0x0082
                           000083   146 _P0_3	=	0x0083
                           000084   147 _P0_4	=	0x0084
                           000085   148 _P0_5	=	0x0085
                           000086   149 _P0_6	=	0x0086
                           000087   150 _P0_7	=	0x0087
                           000088   151 _IT0	=	0x0088
                           000089   152 _IE0	=	0x0089
                           00008A   153 _IT1	=	0x008a
                           00008B   154 _IE1	=	0x008b
                           00008C   155 _TR0	=	0x008c
                           00008D   156 _TF0	=	0x008d
                           00008E   157 _TR1	=	0x008e
                           00008F   158 _TF1	=	0x008f
                           000090   159 _P1_0	=	0x0090
                           000091   160 _P1_1	=	0x0091
                           000092   161 _P1_2	=	0x0092
                           000093   162 _P1_3	=	0x0093
                           000094   163 _P1_4	=	0x0094
                           000095   164 _P1_5	=	0x0095
                           000096   165 _P1_6	=	0x0096
                           000097   166 _P1_7	=	0x0097
                           000098   167 _RI	=	0x0098
                           000099   168 _TI	=	0x0099
                           00009A   169 _RB8	=	0x009a
                           00009B   170 _TB8	=	0x009b
                           00009C   171 _REN	=	0x009c
                           00009D   172 _SM2	=	0x009d
                           00009E   173 _SM1	=	0x009e
                           00009F   174 _SM0	=	0x009f
                           0000A0   175 _P2_0	=	0x00a0
                           0000A1   176 _P2_1	=	0x00a1
                           0000A2   177 _P2_2	=	0x00a2
                           0000A3   178 _P2_3	=	0x00a3
                           0000A4   179 _P2_4	=	0x00a4
                           0000A5   180 _P2_5	=	0x00a5
                           0000A6   181 _P2_6	=	0x00a6
                           0000A7   182 _P2_7	=	0x00a7
                           0000A8   183 _EX0	=	0x00a8
                           0000A9   184 _ET0	=	0x00a9
                           0000AA   185 _EX1	=	0x00aa
                           0000AB   186 _ET1	=	0x00ab
                           0000AC   187 _ES	=	0x00ac
                           0000AF   188 _EA	=	0x00af
                           0000B0   189 _P3_0	=	0x00b0
                           0000B1   190 _P3_1	=	0x00b1
                           0000B2   191 _P3_2	=	0x00b2
                           0000B3   192 _P3_3	=	0x00b3
                           0000B4   193 _P3_4	=	0x00b4
                           0000B5   194 _P3_5	=	0x00b5
                           0000B6   195 _P3_6	=	0x00b6
                           0000B7   196 _P3_7	=	0x00b7
                           0000B0   197 _RXD	=	0x00b0
                           0000B1   198 _TXD	=	0x00b1
                           0000B2   199 _INT0	=	0x00b2
                           0000B3   200 _INT1	=	0x00b3
                           0000B4   201 _T0	=	0x00b4
                           0000B5   202 _T1	=	0x00b5
                           0000B6   203 _WR	=	0x00b6
                           0000B7   204 _RD	=	0x00b7
                           0000B8   205 _PX0	=	0x00b8
                           0000B9   206 _PT0	=	0x00b9
                           0000BA   207 _PX1	=	0x00ba
                           0000BB   208 _PT1	=	0x00bb
                           0000BC   209 _PS	=	0x00bc
                           0000D0   210 _P	=	0x00d0
                           0000D1   211 _F1	=	0x00d1
                           0000D2   212 _OV	=	0x00d2
                           0000D3   213 _RS0	=	0x00d3
                           0000D4   214 _RS1	=	0x00d4
                           0000D5   215 _F0	=	0x00d5
                           0000D6   216 _AC	=	0x00d6
                           0000D7   217 _CY	=	0x00d7
                                    218 ;--------------------------------------------------------
                                    219 ; overlayable register banks
                                    220 ;--------------------------------------------------------
                                    221 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        222 	.ds 8
                                    223 ;--------------------------------------------------------
                                    224 ; internal ram data
                                    225 ;--------------------------------------------------------
                                    226 	.area DSEG    (DATA)
      000008                        227 _hall_cnt::
      000008                        228 	.ds 1
      000009                        229 _hall_last_state::
      000009                        230 	.ds 1
                                    231 ;--------------------------------------------------------
                                    232 ; overlayable items in internal ram 
                                    233 ;--------------------------------------------------------
                                    234 ;--------------------------------------------------------
                                    235 ; Stack segment in internal ram 
                                    236 ;--------------------------------------------------------
                                    237 	.area	SSEG
      00000A                        238 __start__stack:
      00000A                        239 	.ds	1
                                    240 
                                    241 ;--------------------------------------------------------
                                    242 ; indirectly addressable internal ram data
                                    243 ;--------------------------------------------------------
                                    244 	.area ISEG    (DATA)
                                    245 ;--------------------------------------------------------
                                    246 ; absolute internal ram data
                                    247 ;--------------------------------------------------------
                                    248 	.area IABS    (ABS,DATA)
                                    249 	.area IABS    (ABS,DATA)
                                    250 ;--------------------------------------------------------
                                    251 ; bit data
                                    252 ;--------------------------------------------------------
                                    253 	.area BSEG    (BIT)
                                    254 ;--------------------------------------------------------
                                    255 ; paged external ram data
                                    256 ;--------------------------------------------------------
                                    257 	.area PSEG    (PAG,XDATA)
                                    258 ;--------------------------------------------------------
                                    259 ; external ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area XSEG    (XDATA)
                                    262 ;--------------------------------------------------------
                                    263 ; absolute external ram data
                                    264 ;--------------------------------------------------------
                                    265 	.area XABS    (ABS,XDATA)
                                    266 ;--------------------------------------------------------
                                    267 ; external initialized ram data
                                    268 ;--------------------------------------------------------
                                    269 	.area XISEG   (XDATA)
                                    270 	.area HOME    (CODE)
                                    271 	.area GSINIT0 (CODE)
                                    272 	.area GSINIT1 (CODE)
                                    273 	.area GSINIT2 (CODE)
                                    274 	.area GSINIT3 (CODE)
                                    275 	.area GSINIT4 (CODE)
                                    276 	.area GSINIT5 (CODE)
                                    277 	.area GSINIT  (CODE)
                                    278 	.area GSFINAL (CODE)
                                    279 	.area CSEG    (CODE)
                                    280 ;--------------------------------------------------------
                                    281 ; interrupt vector 
                                    282 ;--------------------------------------------------------
                                    283 	.area HOME    (CODE)
      000000                        284 __interrupt_vect:
      000000 02 00 11         [24]  285 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  286 	reti
      000004                        287 	.ds	7
      00000B 02 00 73         [24]  288 	ljmp	_T0_isr
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
                                    302 ;	./src/main.c:8: char hall_cnt = 0x00;								// Count the # of Hall sensor activations
      00006A 75 08 00         [24]  303 	mov	_hall_cnt,#0x00
                                    304 ;	./src/main.c:9: char hall_last_state = 0;							// Record activation and deactivation of Hall sensor
      00006D 75 09 00         [24]  305 	mov	_hall_last_state,#0x00
                                    306 	.area GSFINAL (CODE)
      000070 02 00 0E         [24]  307 	ljmp	__sdcc_program_startup
                                    308 ;--------------------------------------------------------
                                    309 ; Home
                                    310 ;--------------------------------------------------------
                                    311 	.area HOME    (CODE)
                                    312 	.area HOME    (CODE)
      00000E                        313 __sdcc_program_startup:
      00000E 02 00 9D         [24]  314 	ljmp	_main
                                    315 ;	return from main will return to caller
                                    316 ;--------------------------------------------------------
                                    317 ; code
                                    318 ;--------------------------------------------------------
                                    319 	.area CSEG    (CODE)
                                    320 ;------------------------------------------------------------
                                    321 ;Allocation info for local variables in function 'T0_isr'
                                    322 ;------------------------------------------------------------
                                    323 ;	./src/main.c:11: void T0_isr(void) __interrupt (1)						// Interrupt routine w/ priority 1
                                    324 ;	-----------------------------------------
                                    325 ;	 function T0_isr
                                    326 ;	-----------------------------------------
      000073                        327 _T0_isr:
                           000007   328 	ar7 = 0x07
                           000006   329 	ar6 = 0x06
                           000005   330 	ar5 = 0x05
                           000004   331 	ar4 = 0x04
                           000003   332 	ar3 = 0x03
                           000002   333 	ar2 = 0x02
                           000001   334 	ar1 = 0x01
                           000000   335 	ar0 = 0x00
      000073 C0 E0            [24]  336 	push	acc
      000075 C0 07            [24]  337 	push	ar7
      000077 C0 D0            [24]  338 	push	psw
      000079 75 D0 00         [24]  339 	mov	psw,#0x00
                                    340 ;	./src/main.c:14: TH0 = (65536-1000) / 256;						// Reset initial higher 8 bits into Timer 0
      00007C 75 8C FC         [24]  341 	mov	_TH0,#0xfc
                                    342 ;	./src/main.c:15: TL0 = (65536-1000) % 256;						// Reset initial lower 8 bits into Timer 0
      00007F 75 8A 18         [24]  343 	mov	_TL0,#0x18
                                    344 ;	./src/main.c:17: if((Hall_In == 0) && (hall_last_state == 1))	// Falling edge of hall sensor signal (activated)
      000082 20 A4 0B         [24]  345 	jb	_P2_4,00102$
      000085 74 01            [12]  346 	mov	a,#0x01
      000087 B5 09 06         [24]  347 	cjne	a,_hall_last_state,00102$
                                    348 ;	./src/main.c:19: hall_cnt = hall_cnt + 1;					// Count 1 activation
      00008A E5 08            [12]  349 	mov	a,_hall_cnt
      00008C FF               [12]  350 	mov	r7,a
      00008D 04               [12]  351 	inc	a
      00008E F5 08            [12]  352 	mov	_hall_cnt,a
      000090                        353 00102$:
                                    354 ;	./src/main.c:22: hall_last_state = Hall_In;						// Update last Hall sensor state
      000090 A2 A4            [12]  355 	mov	c,_P2_4
      000092 E4               [12]  356 	clr	a
      000093 33               [12]  357 	rlc	a
      000094 F5 09            [12]  358 	mov	_hall_last_state,a
                                    359 ;	./src/main.c:23: }
      000096 D0 D0            [24]  360 	pop	psw
      000098 D0 07            [24]  361 	pop	ar7
      00009A D0 E0            [24]  362 	pop	acc
      00009C 32               [24]  363 	reti
                                    364 ;	eliminated unneeded push/pop dpl
                                    365 ;	eliminated unneeded push/pop dph
                                    366 ;	eliminated unneeded push/pop b
                                    367 ;------------------------------------------------------------
                                    368 ;Allocation info for local variables in function 'main'
                                    369 ;------------------------------------------------------------
                                    370 ;pre_btn                   Allocated to registers r6 r7 
                                    371 ;------------------------------------------------------------
                                    372 ;	./src/main.c:25: int main(void) {		
                                    373 ;	-----------------------------------------
                                    374 ;	 function main
                                    375 ;	-----------------------------------------
      00009D                        376 _main:
                                    377 ;	./src/main.c:27: unsigned int pre_btn=0; 
      00009D 7E 00            [12]  378 	mov	r6,#0x00
      00009F 7F 00            [12]  379 	mov	r7,#0x00
                                    380 ;	./src/main.c:30: TMOD = 0x01;									// Set Timer 1 to  mode 0 & T imer 0 mode 1. (16-bit timer)
      0000A1 75 89 01         [24]  381 	mov	_TMOD,#0x01
                                    382 ;	./src/main.c:31: TH0 = (65536-1000) / 256;						// Load initial higher 8 bits into Timer 0
      0000A4 75 8C FC         [24]  383 	mov	_TH0,#0xfc
                                    384 ;	./src/main.c:32: TL0 = (65536-1000) % 256;						// Load initial lower 8 bits into Timer 0
      0000A7 75 8A 18         [24]  385 	mov	_TL0,#0x18
                                    386 ;	./src/main.c:33: ET0 = 1;										// Enable Timer 0 interrupt
                                    387 ;	assignBit
      0000AA D2 A9            [12]  388 	setb	_ET0
                                    389 ;	./src/main.c:34: EA = 1;											// Enable all interrupt
                                    390 ;	assignBit
      0000AC D2 AF            [12]  391 	setb	_EA
                                    392 ;	./src/main.c:35: TR0 = 1;										// Start Timer 0
                                    393 ;	assignBit
      0000AE D2 8C            [12]  394 	setb	_TR0
                                    395 ;	./src/main.c:37: Hall_In = 1;									// Initialize Hall sensor signal (deactivated)
                                    396 ;	assignBit
      0000B0 D2 A4            [12]  397 	setb	_P2_4
                                    398 ;	./src/main.c:39: while(1) 
      0000B2                        399 00107$:
                                    400 ;	./src/main.c:41: if((BTN == 0) && (pre_btn == 1))			// Debounce
      0000B2 20 A1 12         [24]  401 	jb	_P2_1,00104$
      0000B5 BE 01 0F         [24]  402 	cjne	r6,#0x01,00104$
      0000B8 BF 00 0C         [24]  403 	cjne	r7,#0x00,00104$
                                    404 ;	./src/main.c:43: delay_ms(10);							// Wait until button signal stable
      0000BB 90 00 0A         [24]  405 	mov	dptr,#0x000a
      0000BE 12 00 E3         [24]  406 	lcall	_delay_ms
                                    407 ;	./src/main.c:44: if(BTN == 0)
      0000C1 20 A1 03         [24]  408 	jb	_P2_1,00104$
                                    409 ;	./src/main.c:46: hall_cnt = 0;						// Reset counter
      0000C4 75 08 00         [24]  410 	mov	_hall_cnt,#0x00
      0000C7                        411 00104$:
                                    412 ;	./src/main.c:49: LED = ~hall_cnt;							// Display counted number on LED in binary format
      0000C7 E5 08            [12]  413 	mov	a,_hall_cnt
      0000C9 F4               [12]  414 	cpl	a
      0000CA F5 90            [12]  415 	mov	_P1,a
                                    416 ;	./src/main.c:50: pre_btn = BTN;
      0000CC A2 A1            [12]  417 	mov	c,_P2_1
      0000CE E4               [12]  418 	clr	a
      0000CF 33               [12]  419 	rlc	a
      0000D0 FE               [12]  420 	mov	r6,a
      0000D1 7F 00            [12]  421 	mov	r7,#0x00
                                    422 ;	./src/main.c:51: delay_ms(1);								// Delay 1 ms
      0000D3 90 00 01         [24]  423 	mov	dptr,#0x0001
      0000D6 C0 07            [24]  424 	push	ar7
      0000D8 C0 06            [24]  425 	push	ar6
      0000DA 12 00 E3         [24]  426 	lcall	_delay_ms
      0000DD D0 06            [24]  427 	pop	ar6
      0000DF D0 07            [24]  428 	pop	ar7
                                    429 ;	./src/main.c:53: }
      0000E1 80 CF            [24]  430 	sjmp	00107$
                                    431 	.area CSEG    (CODE)
                                    432 	.area CONST   (CODE)
                                    433 	.area XINIT   (CODE)
                                    434 	.area CABS    (ABS,CODE)
