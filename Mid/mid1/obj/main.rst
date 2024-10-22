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
                                     12 	.globl _delay_ms
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
                                    109 ;--------------------------------------------------------
                                    110 ; special function registers
                                    111 ;--------------------------------------------------------
                                    112 	.area RSEG    (ABS,DATA)
      000000                        113 	.org 0x0000
                           000080   114 _P0	=	0x0080
                           000081   115 _SP	=	0x0081
                           000082   116 _DPL	=	0x0082
                           000083   117 _DPH	=	0x0083
                           000087   118 _PCON	=	0x0087
                           000088   119 _TCON	=	0x0088
                           000089   120 _TMOD	=	0x0089
                           00008A   121 _TL0	=	0x008a
                           00008B   122 _TL1	=	0x008b
                           00008C   123 _TH0	=	0x008c
                           00008D   124 _TH1	=	0x008d
                           000090   125 _P1	=	0x0090
                           000098   126 _SCON	=	0x0098
                           000099   127 _SBUF	=	0x0099
                           0000A0   128 _P2	=	0x00a0
                           0000A8   129 _IE	=	0x00a8
                           0000B0   130 _P3	=	0x00b0
                           0000B8   131 _IP	=	0x00b8
                           0000D0   132 _PSW	=	0x00d0
                           0000E0   133 _ACC	=	0x00e0
                           0000F0   134 _B	=	0x00f0
                                    135 ;--------------------------------------------------------
                                    136 ; special function bits
                                    137 ;--------------------------------------------------------
                                    138 	.area RSEG    (ABS,DATA)
      000000                        139 	.org 0x0000
                           000080   140 _P0_0	=	0x0080
                           000081   141 _P0_1	=	0x0081
                           000082   142 _P0_2	=	0x0082
                           000083   143 _P0_3	=	0x0083
                           000084   144 _P0_4	=	0x0084
                           000085   145 _P0_5	=	0x0085
                           000086   146 _P0_6	=	0x0086
                           000087   147 _P0_7	=	0x0087
                           000088   148 _IT0	=	0x0088
                           000089   149 _IE0	=	0x0089
                           00008A   150 _IT1	=	0x008a
                           00008B   151 _IE1	=	0x008b
                           00008C   152 _TR0	=	0x008c
                           00008D   153 _TF0	=	0x008d
                           00008E   154 _TR1	=	0x008e
                           00008F   155 _TF1	=	0x008f
                           000090   156 _P1_0	=	0x0090
                           000091   157 _P1_1	=	0x0091
                           000092   158 _P1_2	=	0x0092
                           000093   159 _P1_3	=	0x0093
                           000094   160 _P1_4	=	0x0094
                           000095   161 _P1_5	=	0x0095
                           000096   162 _P1_6	=	0x0096
                           000097   163 _P1_7	=	0x0097
                           000098   164 _RI	=	0x0098
                           000099   165 _TI	=	0x0099
                           00009A   166 _RB8	=	0x009a
                           00009B   167 _TB8	=	0x009b
                           00009C   168 _REN	=	0x009c
                           00009D   169 _SM2	=	0x009d
                           00009E   170 _SM1	=	0x009e
                           00009F   171 _SM0	=	0x009f
                           0000A0   172 _P2_0	=	0x00a0
                           0000A1   173 _P2_1	=	0x00a1
                           0000A2   174 _P2_2	=	0x00a2
                           0000A3   175 _P2_3	=	0x00a3
                           0000A4   176 _P2_4	=	0x00a4
                           0000A5   177 _P2_5	=	0x00a5
                           0000A6   178 _P2_6	=	0x00a6
                           0000A7   179 _P2_7	=	0x00a7
                           0000A8   180 _EX0	=	0x00a8
                           0000A9   181 _ET0	=	0x00a9
                           0000AA   182 _EX1	=	0x00aa
                           0000AB   183 _ET1	=	0x00ab
                           0000AC   184 _ES	=	0x00ac
                           0000AF   185 _EA	=	0x00af
                           0000B0   186 _P3_0	=	0x00b0
                           0000B1   187 _P3_1	=	0x00b1
                           0000B2   188 _P3_2	=	0x00b2
                           0000B3   189 _P3_3	=	0x00b3
                           0000B4   190 _P3_4	=	0x00b4
                           0000B5   191 _P3_5	=	0x00b5
                           0000B6   192 _P3_6	=	0x00b6
                           0000B7   193 _P3_7	=	0x00b7
                           0000B0   194 _RXD	=	0x00b0
                           0000B1   195 _TXD	=	0x00b1
                           0000B2   196 _INT0	=	0x00b2
                           0000B3   197 _INT1	=	0x00b3
                           0000B4   198 _T0	=	0x00b4
                           0000B5   199 _T1	=	0x00b5
                           0000B6   200 _WR	=	0x00b6
                           0000B7   201 _RD	=	0x00b7
                           0000B8   202 _PX0	=	0x00b8
                           0000B9   203 _PT0	=	0x00b9
                           0000BA   204 _PX1	=	0x00ba
                           0000BB   205 _PT1	=	0x00bb
                           0000BC   206 _PS	=	0x00bc
                           0000D0   207 _P	=	0x00d0
                           0000D1   208 _F1	=	0x00d1
                           0000D2   209 _OV	=	0x00d2
                           0000D3   210 _RS0	=	0x00d3
                           0000D4   211 _RS1	=	0x00d4
                           0000D5   212 _F0	=	0x00d5
                           0000D6   213 _AC	=	0x00d6
                           0000D7   214 _CY	=	0x00d7
                                    215 ;--------------------------------------------------------
                                    216 ; overlayable register banks
                                    217 ;--------------------------------------------------------
                                    218 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        219 	.ds 8
                                    220 ;--------------------------------------------------------
                                    221 ; internal ram data
                                    222 ;--------------------------------------------------------
                                    223 	.area DSEG    (DATA)
                                    224 ;--------------------------------------------------------
                                    225 ; overlayable items in internal ram 
                                    226 ;--------------------------------------------------------
                                    227 ;--------------------------------------------------------
                                    228 ; Stack segment in internal ram 
                                    229 ;--------------------------------------------------------
                                    230 	.area	SSEG
      000008                        231 __start__stack:
      000008                        232 	.ds	1
                                    233 
                                    234 ;--------------------------------------------------------
                                    235 ; indirectly addressable internal ram data
                                    236 ;--------------------------------------------------------
                                    237 	.area ISEG    (DATA)
                                    238 ;--------------------------------------------------------
                                    239 ; absolute internal ram data
                                    240 ;--------------------------------------------------------
                                    241 	.area IABS    (ABS,DATA)
                                    242 	.area IABS    (ABS,DATA)
                                    243 ;--------------------------------------------------------
                                    244 ; bit data
                                    245 ;--------------------------------------------------------
                                    246 	.area BSEG    (BIT)
                                    247 ;--------------------------------------------------------
                                    248 ; paged external ram data
                                    249 ;--------------------------------------------------------
                                    250 	.area PSEG    (PAG,XDATA)
                                    251 ;--------------------------------------------------------
                                    252 ; external ram data
                                    253 ;--------------------------------------------------------
                                    254 	.area XSEG    (XDATA)
                                    255 ;--------------------------------------------------------
                                    256 ; absolute external ram data
                                    257 ;--------------------------------------------------------
                                    258 	.area XABS    (ABS,XDATA)
                                    259 ;--------------------------------------------------------
                                    260 ; external initialized ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area XISEG   (XDATA)
                                    263 	.area HOME    (CODE)
                                    264 	.area GSINIT0 (CODE)
                                    265 	.area GSINIT1 (CODE)
                                    266 	.area GSINIT2 (CODE)
                                    267 	.area GSINIT3 (CODE)
                                    268 	.area GSINIT4 (CODE)
                                    269 	.area GSINIT5 (CODE)
                                    270 	.area GSINIT  (CODE)
                                    271 	.area GSFINAL (CODE)
                                    272 	.area CSEG    (CODE)
                                    273 ;--------------------------------------------------------
                                    274 ; interrupt vector 
                                    275 ;--------------------------------------------------------
                                    276 	.area HOME    (CODE)
      000000                        277 __interrupt_vect:
      000000 02 00 06         [24]  278 	ljmp	__sdcc_gsinit_startup
                                    279 ;--------------------------------------------------------
                                    280 ; global & static initialisations
                                    281 ;--------------------------------------------------------
                                    282 	.area HOME    (CODE)
                                    283 	.area GSINIT  (CODE)
                                    284 	.area GSFINAL (CODE)
                                    285 	.area GSINIT  (CODE)
                                    286 	.globl __sdcc_gsinit_startup
                                    287 	.globl __sdcc_program_startup
                                    288 	.globl __start__stack
                                    289 	.globl __mcs51_genXINIT
                                    290 	.globl __mcs51_genXRAMCLEAR
                                    291 	.globl __mcs51_genRAMCLEAR
                                    292 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  293 	ljmp	__sdcc_program_startup
                                    294 ;--------------------------------------------------------
                                    295 ; Home
                                    296 ;--------------------------------------------------------
                                    297 	.area HOME    (CODE)
                                    298 	.area HOME    (CODE)
      000003                        299 __sdcc_program_startup:
      000003 02 00 62         [24]  300 	ljmp	_main
                                    301 ;	return from main will return to caller
                                    302 ;--------------------------------------------------------
                                    303 ; code
                                    304 ;--------------------------------------------------------
                                    305 	.area CSEG    (CODE)
                                    306 ;------------------------------------------------------------
                                    307 ;Allocation info for local variables in function 'main'
                                    308 ;------------------------------------------------------------
                                    309 ;patt                      Allocated to registers r7 
                                    310 ;prebut1                   Allocated to registers r5 r6 
                                    311 ;prebut2                   Allocated to registers 
                                    312 ;mode                      Allocated to registers 
                                    313 ;------------------------------------------------------------
                                    314 ;	./src/main.c:36: void main(void)
                                    315 ;	-----------------------------------------
                                    316 ;	 function main
                                    317 ;	-----------------------------------------
      000062                        318 _main:
                           000007   319 	ar7 = 0x07
                           000006   320 	ar6 = 0x06
                           000005   321 	ar5 = 0x05
                           000004   322 	ar4 = 0x04
                           000003   323 	ar3 = 0x03
                           000002   324 	ar2 = 0x02
                           000001   325 	ar1 = 0x01
                           000000   326 	ar0 = 0x00
                                    327 ;	./src/main.c:39: unsigned char patt = 0x80;	//led value
      000062 7F 80            [12]  328 	mov	r7,#0x80
                                    329 ;	./src/main.c:40: unsigned int prebut1 = 0;	//debounce
      000064 7D 00            [12]  330 	mov	r5,#0x00
      000066 7E 00            [12]  331 	mov	r6,#0x00
                                    332 ;	./src/main.c:43: but1 = 1;                 	//initialize
                                    333 ;	assignBit
      000068 D2 B2            [12]  334 	setb	_INT0
                                    335 ;	./src/main.c:44: but2 = 1;
                                    336 ;	assignBit
      00006A D2 B3            [12]  337 	setb	_INT1
                                    338 ;	./src/main.c:47: while(1) {
      00006C                        339 00142$:
                                    340 ;	./src/main.c:51: if((but1 == 0) && (prebut1 == 1)) {
      00006C 20 B2 54         [24]  341 	jb	_INT0,00119$
      00006F BD 01 51         [24]  342 	cjne	r5,#0x01,00119$
      000072 BE 00 4E         [24]  343 	cjne	r6,#0x00,00119$
                                    344 ;	./src/main.c:52: delay_ms(10);
      000075 90 00 0A         [24]  345 	mov	dptr,#0x000a
      000078 C0 07            [24]  346 	push	ar7
      00007A C0 06            [24]  347 	push	ar6
      00007C C0 05            [24]  348 	push	ar5
      00007E 12 01 39         [24]  349 	lcall	_delay_ms
      000081 D0 05            [24]  350 	pop	ar5
      000083 D0 06            [24]  351 	pop	ar6
      000085 D0 07            [24]  352 	pop	ar7
                                    353 ;	./src/main.c:53: if (but1 == 1)continue;
      000087 20 B2 E2         [24]  354 	jb	_INT0,00142$
                                    355 ;	./src/main.c:54: delay_ms(1000);
      00008A 90 03 E8         [24]  356 	mov	dptr,#0x03e8
      00008D C0 07            [24]  357 	push	ar7
      00008F C0 06            [24]  358 	push	ar6
      000091 C0 05            [24]  359 	push	ar5
      000093 12 01 39         [24]  360 	lcall	_delay_ms
      000096 D0 05            [24]  361 	pop	ar5
      000098 D0 06            [24]  362 	pop	ar6
      00009A D0 07            [24]  363 	pop	ar7
                                    364 ;	./src/main.c:56: if(but1 == 0) { // long press
      00009C 20 B2 19         [24]  365 	jb	_INT0,00116$
                                    366 ;	./src/main.c:57: while (but1 == 0);
      00009F                        367 00103$:
      00009F 30 B2 FD         [24]  368 	jnb	_INT0,00103$
                                    369 ;	./src/main.c:58: if (patt == 0x01)patt = 0x40;
      0000A2 BF 01 04         [24]  370 	cjne	r7,#0x01,00110$
      0000A5 7F 40            [12]  371 	mov	r7,#0x40
      0000A7 80 1A            [24]  372 	sjmp	00119$
      0000A9                        373 00110$:
                                    374 ;	./src/main.c:59: else if (patt == 0x02)patt = 0x80;
      0000A9 BF 02 04         [24]  375 	cjne	r7,#0x02,00107$
      0000AC 7F 80            [12]  376 	mov	r7,#0x80
      0000AE 80 13            [24]  377 	sjmp	00119$
      0000B0                        378 00107$:
                                    379 ;	./src/main.c:61: patt >>= 2;
      0000B0 EF               [12]  380 	mov	a,r7
      0000B1 03               [12]  381 	rr	a
      0000B2 03               [12]  382 	rr	a
      0000B3 54 3F            [12]  383 	anl	a,#0x3f
      0000B5 FF               [12]  384 	mov	r7,a
      0000B6 80 0B            [24]  385 	sjmp	00119$
      0000B8                        386 00116$:
                                    387 ;	./src/main.c:63: if (patt == 0x01)patt = 0x80;
      0000B8 BF 01 04         [24]  388 	cjne	r7,#0x01,00113$
      0000BB 7F 80            [12]  389 	mov	r7,#0x80
      0000BD 80 04            [24]  390 	sjmp	00119$
      0000BF                        391 00113$:
                                    392 ;	./src/main.c:64: else patt>>=1;
      0000BF EF               [12]  393 	mov	a,r7
      0000C0 C3               [12]  394 	clr	c
      0000C1 13               [12]  395 	rrc	a
      0000C2 FF               [12]  396 	mov	r7,a
      0000C3                        397 00119$:
                                    398 ;	./src/main.c:69: if((but2 == 0) && (prebut1 == 1)) {
      0000C3 20 B3 51         [24]  399 	jb	_INT1,00139$
      0000C6 BD 01 4E         [24]  400 	cjne	r5,#0x01,00139$
      0000C9 BE 00 4B         [24]  401 	cjne	r6,#0x00,00139$
                                    402 ;	./src/main.c:70: delay_ms(10);
      0000CC 90 00 0A         [24]  403 	mov	dptr,#0x000a
      0000CF C0 07            [24]  404 	push	ar7
      0000D1 C0 06            [24]  405 	push	ar6
      0000D3 C0 05            [24]  406 	push	ar5
      0000D5 12 01 39         [24]  407 	lcall	_delay_ms
      0000D8 D0 05            [24]  408 	pop	ar5
      0000DA D0 06            [24]  409 	pop	ar6
      0000DC D0 07            [24]  410 	pop	ar7
                                    411 ;	./src/main.c:71: if (but2 == 1)continue;
      0000DE 30 B3 03         [24]  412 	jnb	_INT1,00229$
      0000E1 02 00 6C         [24]  413 	ljmp	00142$
      0000E4                        414 00229$:
                                    415 ;	./src/main.c:72: delay_ms(1000);
      0000E4 90 03 E8         [24]  416 	mov	dptr,#0x03e8
      0000E7 C0 07            [24]  417 	push	ar7
      0000E9 12 01 39         [24]  418 	lcall	_delay_ms
      0000EC D0 07            [24]  419 	pop	ar7
                                    420 ;	./src/main.c:73: if(but2 == 0) { // long press
      0000EE 20 B3 1A         [24]  421 	jb	_INT1,00136$
                                    422 ;	./src/main.c:74: while(but2 == 0);
      0000F1                        423 00123$:
      0000F1 30 B3 FD         [24]  424 	jnb	_INT1,00123$
                                    425 ;	./src/main.c:75: if (patt == 0x40)patt = 0x01;
      0000F4 BF 40 04         [24]  426 	cjne	r7,#0x40,00130$
      0000F7 7F 01            [12]  427 	mov	r7,#0x01
      0000F9 80 1C            [24]  428 	sjmp	00139$
      0000FB                        429 00130$:
                                    430 ;	./src/main.c:76: else if (patt == 0x80)patt = 0x02;
      0000FB BF 80 04         [24]  431 	cjne	r7,#0x80,00127$
      0000FE 7F 02            [12]  432 	mov	r7,#0x02
      000100 80 15            [24]  433 	sjmp	00139$
      000102                        434 00127$:
                                    435 ;	./src/main.c:78: patt <<= 2;
      000102 8F 04            [24]  436 	mov	ar4,r7
      000104 EC               [12]  437 	mov	a,r4
      000105 2C               [12]  438 	add	a,r4
      000106 25 E0            [12]  439 	add	a,acc
      000108 FF               [12]  440 	mov	r7,a
      000109 80 0C            [24]  441 	sjmp	00139$
      00010B                        442 00136$:
                                    443 ;	./src/main.c:80: if (patt == 0x80)patt = 0x01;
      00010B BF 80 04         [24]  444 	cjne	r7,#0x80,00133$
      00010E 7F 01            [12]  445 	mov	r7,#0x01
      000110 80 05            [24]  446 	sjmp	00139$
      000112                        447 00133$:
                                    448 ;	./src/main.c:81: else patt <<=1;
      000112 8F 04            [24]  449 	mov	ar4,r7
      000114 EC               [12]  450 	mov	a,r4
      000115 2C               [12]  451 	add	a,r4
      000116 FF               [12]  452 	mov	r7,a
      000117                        453 00139$:
                                    454 ;	./src/main.c:85: led = ~patt;	
      000117 EF               [12]  455 	mov	a,r7
      000118 F4               [12]  456 	cpl	a
      000119 F5 90            [12]  457 	mov	_P1,a
                                    458 ;	./src/main.c:86: prebut1 = but1;
      00011B A2 B2            [12]  459 	mov	c,_INT0
      00011D E4               [12]  460 	clr	a
      00011E 33               [12]  461 	rlc	a
      00011F FD               [12]  462 	mov	r5,a
      000120 7E 00            [12]  463 	mov	r6,#0x00
                                    464 ;	./src/main.c:87: prebut2 = but2;
      000122 A2 B3            [12]  465 	mov	c,_INT1
                                    466 ;	./src/main.c:88: delay_ms(10);
      000124 90 00 0A         [24]  467 	mov	dptr,#0x000a
      000127 C0 07            [24]  468 	push	ar7
      000129 C0 06            [24]  469 	push	ar6
      00012B C0 05            [24]  470 	push	ar5
      00012D 12 01 39         [24]  471 	lcall	_delay_ms
      000130 D0 05            [24]  472 	pop	ar5
      000132 D0 06            [24]  473 	pop	ar6
      000134 D0 07            [24]  474 	pop	ar7
                                    475 ;	./src/main.c:90: }
      000136 02 00 6C         [24]  476 	ljmp	00142$
                                    477 	.area CSEG    (CODE)
                                    478 	.area CONST   (CODE)
                                    479 	.area XINIT   (CODE)
                                    480 	.area CABS    (ABS,CODE)
