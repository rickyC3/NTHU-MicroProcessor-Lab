                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.4.4 #15011 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-small
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
                                    230 	.area SSEG
      00000A                        231 __start__stack:
      00000A                        232 	.ds	1
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
                                    252 ; uninitialized external ram data
                                    253 ;--------------------------------------------------------
                                    254 	.area XSEG    (XDATA)
                                    255 ;--------------------------------------------------------
                                    256 ; absolute external ram data
                                    257 ;--------------------------------------------------------
                                    258 	.area XABS    (ABS,XDATA)
                                    259 ;--------------------------------------------------------
                                    260 ; initialized external ram data
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
      000000 02 00 4C         [24]  278 	ljmp	__sdcc_gsinit_startup
                                    279 ; restartable atomic support routines
      000003                        280 	.ds	5
      000008                        281 sdcc_atomic_exchange_rollback_start::
      000008 00               [12]  282 	nop
      000009 00               [12]  283 	nop
      00000A                        284 sdcc_atomic_exchange_pdata_impl:
      00000A E2               [24]  285 	movx	a, @r0
      00000B FB               [12]  286 	mov	r3, a
      00000C EA               [12]  287 	mov	a, r2
      00000D F2               [24]  288 	movx	@r0, a
      00000E 80 2C            [24]  289 	sjmp	sdcc_atomic_exchange_exit
      000010 00               [12]  290 	nop
      000011 00               [12]  291 	nop
      000012                        292 sdcc_atomic_exchange_xdata_impl:
      000012 E0               [24]  293 	movx	a, @dptr
      000013 FB               [12]  294 	mov	r3, a
      000014 EA               [12]  295 	mov	a, r2
      000015 F0               [24]  296 	movx	@dptr, a
      000016 80 24            [24]  297 	sjmp	sdcc_atomic_exchange_exit
      000018                        298 sdcc_atomic_compare_exchange_idata_impl:
      000018 E6               [12]  299 	mov	a, @r0
      000019 B5 02 02         [24]  300 	cjne	a, ar2, .+#5
      00001C EB               [12]  301 	mov	a, r3
      00001D F6               [12]  302 	mov	@r0, a
      00001E 22               [24]  303 	ret
      00001F 00               [12]  304 	nop
      000020                        305 sdcc_atomic_compare_exchange_pdata_impl:
      000020 E2               [24]  306 	movx	a, @r0
      000021 B5 02 02         [24]  307 	cjne	a, ar2, .+#5
      000024 EB               [12]  308 	mov	a, r3
      000025 F2               [24]  309 	movx	@r0, a
      000026 22               [24]  310 	ret
      000027 00               [12]  311 	nop
      000028                        312 sdcc_atomic_compare_exchange_xdata_impl:
      000028 E0               [24]  313 	movx	a, @dptr
      000029 B5 02 02         [24]  314 	cjne	a, ar2, .+#5
      00002C EB               [12]  315 	mov	a, r3
      00002D F0               [24]  316 	movx	@dptr, a
      00002E 22               [24]  317 	ret
      00002F                        318 sdcc_atomic_exchange_rollback_end::
                                    319 
      00002F                        320 sdcc_atomic_exchange_gptr_impl::
      00002F 30 F6 E0         [24]  321 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      000032 A8 82            [24]  322 	mov	r0, dpl
      000034 20 F5 D3         [24]  323 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      000037                        324 sdcc_atomic_exchange_idata_impl:
      000037 EA               [12]  325 	mov	a, r2
      000038 C6               [12]  326 	xch	a, @r0
      000039 F5 82            [12]  327 	mov	dpl, a
      00003B 22               [24]  328 	ret
      00003C                        329 sdcc_atomic_exchange_exit:
      00003C 8B 82            [24]  330 	mov	dpl, r3
      00003E 22               [24]  331 	ret
      00003F                        332 sdcc_atomic_compare_exchange_gptr_impl::
      00003F 30 F6 E6         [24]  333 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      000042 A8 82            [24]  334 	mov	r0, dpl
      000044 20 F5 D9         [24]  335 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      000047 80 CF            [24]  336 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    337 ;--------------------------------------------------------
                                    338 ; global & static initialisations
                                    339 ;--------------------------------------------------------
                                    340 	.area HOME    (CODE)
                                    341 	.area GSINIT  (CODE)
                                    342 	.area GSFINAL (CODE)
                                    343 	.area GSINIT  (CODE)
                                    344 	.globl __sdcc_gsinit_startup
                                    345 	.globl __sdcc_program_startup
                                    346 	.globl __start__stack
                                    347 	.globl __mcs51_genXINIT
                                    348 	.globl __mcs51_genXRAMCLEAR
                                    349 	.globl __mcs51_genRAMCLEAR
                                    350 	.area GSFINAL (CODE)
      0000A5 02 00 49         [24]  351 	ljmp	__sdcc_program_startup
                                    352 ;--------------------------------------------------------
                                    353 ; Home
                                    354 ;--------------------------------------------------------
                                    355 	.area HOME    (CODE)
                                    356 	.area HOME    (CODE)
      000049                        357 __sdcc_program_startup:
      000049 02 00 A8         [24]  358 	ljmp	_main
                                    359 ;	return from main will return to caller
                                    360 ;--------------------------------------------------------
                                    361 ; code
                                    362 ;--------------------------------------------------------
                                    363 	.area CSEG    (CODE)
                                    364 ;------------------------------------------------------------
                                    365 ;Allocation info for local variables in function 'main'
                                    366 ;------------------------------------------------------------
                                    367 ;patt                      Allocated to registers r7 
                                    368 ;t                         Allocated to registers 
                                    369 ;way                       Allocated to registers r5 r6 
                                    370 ;------------------------------------------------------------
                                    371 ;	./src/main.c:4: void main(void)
                                    372 ;	-----------------------------------------
                                    373 ;	 function main
                                    374 ;	-----------------------------------------
      0000A8                        375 _main:
                           000007   376 	ar7 = 0x07
                           000006   377 	ar6 = 0x06
                           000005   378 	ar5 = 0x05
                           000004   379 	ar4 = 0x04
                           000003   380 	ar3 = 0x03
                           000002   381 	ar2 = 0x02
                           000001   382 	ar1 = 0x01
                           000000   383 	ar0 = 0x00
                                    384 ;	./src/main.c:7: unsigned char patt=0x80; // led value
      0000A8 7F 80            [12]  385 	mov	r7,#0x80
                                    386 ;	./src/main.c:9: int way = 1;
      0000AA 7D 01            [12]  387 	mov	r5,#0x01
      0000AC 7E 00            [12]  388 	mov	r6,#0x00
                                    389 ;	./src/main.c:11: while(1) {  
      0000AE                        390 00110$:
                                    391 ;	./src/main.c:12: P1 = ~patt;		// actual inverse value 
      0000AE EF               [12]  392 	mov	a,r7
      0000AF F4               [12]  393 	cpl	a
      0000B0 F5 90            [12]  394 	mov	_P1,a
                                    395 ;	./src/main.c:14: if(way == 1) {
      0000B2 BD 01 09         [24]  396 	cjne	r5,#0x01,00102$
      0000B5 BE 00 06         [24]  397 	cjne	r6,#0x00,00102$
                                    398 ;	./src/main.c:15: patt = patt >> 1; 	// shift right
      0000B8 EF               [12]  399 	mov	a,r7
      0000B9 C3               [12]  400 	clr	c
      0000BA 13               [12]  401 	rrc	a
      0000BB FF               [12]  402 	mov	r7,a
      0000BC 80 03            [24]  403 	sjmp	00103$
      0000BE                        404 00102$:
                                    405 ;	./src/main.c:18: patt = patt << 1;	// shift left
      0000BE EF               [12]  406 	mov	a,r7
      0000BF 2F               [12]  407 	add	a,r7
      0000C0 FF               [12]  408 	mov	r7,a
      0000C1                        409 00103$:
                                    410 ;	./src/main.c:21: if(patt == 0x00) {
      0000C1 EF               [12]  411 	mov	a,r7
      0000C2 70 12            [24]  412 	jnz	00108$
                                    413 ;	./src/main.c:22: if(way == 1) {		// reverse from right
      0000C4 BD 01 07         [24]  414 	cjne	r5,#0x01,00105$
      0000C7 BE 00 04         [24]  415 	cjne	r6,#0x00,00105$
                                    416 ;	./src/main.c:23: patt = 0x01;
      0000CA 7F 01            [12]  417 	mov	r7,#0x01
      0000CC 80 02            [24]  418 	sjmp	00106$
      0000CE                        419 00105$:
                                    420 ;	./src/main.c:26: patt = 0x80;	// reverse from left
      0000CE 7F 80            [12]  421 	mov	r7,#0x80
      0000D0                        422 00106$:
                                    423 ;	./src/main.c:28: way = ~way;			// change way
      0000D0 ED               [12]  424 	mov	a,r5
      0000D1 F4               [12]  425 	cpl	a
      0000D2 FD               [12]  426 	mov	r5,a
      0000D3 EE               [12]  427 	mov	a,r6
      0000D4 F4               [12]  428 	cpl	a
      0000D5 FE               [12]  429 	mov	r6,a
      0000D6                        430 00108$:
                                    431 ;	./src/main.c:31: delay_ms(P0*20);
      0000D6 85 80 08         [24]  432 	mov	__mulint_PARM_2,_P0
      0000D9 75 09 00         [24]  433 	mov	(__mulint_PARM_2 + 1),#0x00
      0000DC 90 00 14         [24]  434 	mov	dptr,#0x0014
      0000DF C0 07            [24]  435 	push	ar7
      0000E1 C0 06            [24]  436 	push	ar6
      0000E3 C0 05            [24]  437 	push	ar5
      0000E5 12 01 1A         [24]  438 	lcall	__mulint
      0000E8 12 00 F3         [24]  439 	lcall	_delay_ms
      0000EB D0 05            [24]  440 	pop	ar5
      0000ED D0 06            [24]  441 	pop	ar6
      0000EF D0 07            [24]  442 	pop	ar7
                                    443 ;	./src/main.c:33: }
      0000F1 80 BB            [24]  444 	sjmp	00110$
                                    445 	.area CSEG    (CODE)
                                    446 	.area CONST   (CODE)
                                    447 	.area XINIT   (CODE)
                                    448 	.area CABS    (ABS,CODE)
