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
                                    368 ;prebut1                   Allocated to registers r6 
                                    369 ;prebut2                   Allocated to registers r5 
                                    370 ;mode                      Allocated to registers r4 
                                    371 ;------------------------------------------------------------
                                    372 ;	./src/main.c:10: void main(void)
                                    373 ;	-----------------------------------------
                                    374 ;	 function main
                                    375 ;	-----------------------------------------
      0000A8                        376 _main:
                           000007   377 	ar7 = 0x07
                           000006   378 	ar6 = 0x06
                           000005   379 	ar5 = 0x05
                           000004   380 	ar4 = 0x04
                           000003   381 	ar3 = 0x03
                           000002   382 	ar2 = 0x02
                           000001   383 	ar1 = 0x01
                           000000   384 	ar0 = 0x00
                                    385 ;	./src/main.c:13: unsigned char patt = 0x80;	//led value
      0000A8 7F 80            [12]  386 	mov	r7,#0x80
                                    387 ;	./src/main.c:14: unsigned int prebut1 = 0;	//debounce
      0000AA 7E 00            [12]  388 	mov	r6,#0x00
                                    389 ;	./src/main.c:15: unsigned int prebut2 = 0;
      0000AC 7D 00            [12]  390 	mov	r5,#0x00
                                    391 ;	./src/main.c:17: but1 = 1;                 	//initialize
                                    392 ;	assignBit
      0000AE D2 A0            [12]  393 	setb	_P2_0
                                    394 ;	./src/main.c:18: but2 = 1;
                                    395 ;	assignBit
      0000B0 D2 A1            [12]  396 	setb	_P2_1
                                    397 ;	./src/main.c:19: mode = 0;
      0000B2 7C 00            [12]  398 	mov	r4,#0x00
                                    399 ;	./src/main.c:21: while(1) {
      0000B4                        400 00139$:
                                    401 ;	./src/main.c:23: if (but3 == 0)		// one bits
      0000B4 20 B2 04         [24]  402 	jb	_INT0,00104$
                                    403 ;	./src/main.c:24: mode = 0;
      0000B7 7C 00            [12]  404 	mov	r4,#0x00
      0000B9 80 05            [24]  405 	sjmp	00105$
      0000BB                        406 00104$:
                                    407 ;	./src/main.c:25: else if(but4 == 0)	// two bits
      0000BB 20 B3 02         [24]  408 	jb	_INT1,00105$
                                    409 ;	./src/main.c:26: mode = 1;
      0000BE 7C 01            [12]  410 	mov	r4,#0x01
      0000C0                        411 00105$:
                                    412 ;	./src/main.c:29: if((but1 == 0) && (prebut1 == 1)) {
      0000C0 20 A0 39         [24]  413 	jb	_P2_0,00120$
      0000C3 BE 01 36         [24]  414 	cjne	r6,#0x01,00120$
                                    415 ;	./src/main.c:30: delay_ms(10);
      0000C6 90 00 0A         [24]  416 	mov	dptr,#0x000a
      0000C9 C0 07            [24]  417 	push	ar7
      0000CB C0 05            [24]  418 	push	ar5
      0000CD C0 04            [24]  419 	push	ar4
      0000CF 12 01 59         [24]  420 	lcall	_delay_ms
      0000D2 D0 04            [24]  421 	pop	ar4
      0000D4 D0 05            [24]  422 	pop	ar5
      0000D6 D0 07            [24]  423 	pop	ar7
                                    424 ;	./src/main.c:31: if(but1 == 0) {
      0000D8 20 A0 21         [24]  425 	jb	_P2_0,00120$
                                    426 ;	./src/main.c:32: if(mode == 0){
      0000DB EC               [12]  427 	mov	a,r4
      0000DC 70 0A            [24]  428 	jnz	00115$
                                    429 ;	./src/main.c:33: patt = patt >> 1;
      0000DE EF               [12]  430 	mov	a,r7
      0000DF C3               [12]  431 	clr	c
      0000E0 13               [12]  432 	rrc	a
                                    433 ;	./src/main.c:34: if(patt == 0x00)	// reset
      0000E1 FF               [12]  434 	mov	r7,a
      0000E2 70 18            [24]  435 	jnz	00120$
                                    436 ;	./src/main.c:35: patt = 0x80;
      0000E4 7F 80            [12]  437 	mov	r7,#0x80
      0000E6 80 14            [24]  438 	sjmp	00120$
      0000E8                        439 00115$:
                                    440 ;	./src/main.c:38: if (patt == 0x01)
      0000E8 BF 01 04         [24]  441 	cjne	r7,#0x01,00112$
                                    442 ;	./src/main.c:39: patt = 0x40;
      0000EB 7F 40            [12]  443 	mov	r7,#0x40
      0000ED 80 0D            [24]  444 	sjmp	00120$
      0000EF                        445 00112$:
                                    446 ;	./src/main.c:40: else if (patt == 0x02)
      0000EF BF 02 04         [24]  447 	cjne	r7,#0x02,00109$
                                    448 ;	./src/main.c:41: patt = 0x80;
      0000F2 7F 80            [12]  449 	mov	r7,#0x80
      0000F4 80 06            [24]  450 	sjmp	00120$
      0000F6                        451 00109$:
                                    452 ;	./src/main.c:43: patt = patt >> 2;
      0000F6 EF               [12]  453 	mov	a,r7
      0000F7 03               [12]  454 	rr	a
      0000F8 03               [12]  455 	rr	a
      0000F9 54 3F            [12]  456 	anl	a,#0x3f
      0000FB FF               [12]  457 	mov	r7,a
      0000FC                        458 00120$:
                                    459 ;	./src/main.c:49: if((but2 == 0) && (prebut2 == 1)) {
      0000FC 20 A1 33         [24]  460 	jb	_P2_1,00136$
      0000FF BD 01 30         [24]  461 	cjne	r5,#0x01,00136$
                                    462 ;	./src/main.c:50: delay_ms(10);
      000102 90 00 0A         [24]  463 	mov	dptr,#0x000a
      000105 C0 07            [24]  464 	push	ar7
      000107 C0 04            [24]  465 	push	ar4
      000109 12 01 59         [24]  466 	lcall	_delay_ms
      00010C D0 04            [24]  467 	pop	ar4
      00010E D0 07            [24]  468 	pop	ar7
                                    469 ;	./src/main.c:51: if(but2 == 0) {
      000110 20 A1 1F         [24]  470 	jb	_P2_1,00136$
                                    471 ;	./src/main.c:52: if(mode == 0) {
      000113 EC               [12]  472 	mov	a,r4
      000114 70 09            [24]  473 	jnz	00131$
                                    474 ;	./src/main.c:53: patt = patt << 1;
      000116 EF               [12]  475 	mov	a,r7
      000117 2F               [12]  476 	add	a,r7
                                    477 ;	./src/main.c:54: if(patt == 0x00)
      000118 FF               [12]  478 	mov	r7,a
      000119 70 17            [24]  479 	jnz	00136$
                                    480 ;	./src/main.c:55: patt = 0x01;
      00011B 7F 01            [12]  481 	mov	r7,#0x01
      00011D 80 13            [24]  482 	sjmp	00136$
      00011F                        483 00131$:
                                    484 ;	./src/main.c:58: if (patt == 0x80)
      00011F BF 80 04         [24]  485 	cjne	r7,#0x80,00128$
                                    486 ;	./src/main.c:59: patt = 0x02;
      000122 7F 02            [12]  487 	mov	r7,#0x02
      000124 80 0C            [24]  488 	sjmp	00136$
      000126                        489 00128$:
                                    490 ;	./src/main.c:60: else if (patt == 0x40)
      000126 BF 40 04         [24]  491 	cjne	r7,#0x40,00125$
                                    492 ;	./src/main.c:61: patt = 0x01;
      000129 7F 01            [12]  493 	mov	r7,#0x01
      00012B 80 05            [24]  494 	sjmp	00136$
      00012D                        495 00125$:
                                    496 ;	./src/main.c:63: patt = patt << 2;
      00012D EF               [12]  497 	mov	a,r7
      00012E 2F               [12]  498 	add	a,r7
      00012F 25 E0            [12]  499 	add	a,acc
      000131 FF               [12]  500 	mov	r7,a
      000132                        501 00136$:
                                    502 ;	./src/main.c:68: led = ~patt;	
      000132 EF               [12]  503 	mov	a,r7
      000133 F4               [12]  504 	cpl	a
      000134 F5 90            [12]  505 	mov	_P1,a
                                    506 ;	./src/main.c:69: prebut1 = but1;
      000136 A2 A0            [12]  507 	mov	c,_P2_0
      000138 E4               [12]  508 	clr	a
      000139 33               [12]  509 	rlc	a
      00013A FE               [12]  510 	mov	r6,a
                                    511 ;	./src/main.c:70: prebut2 = but2;
      00013B A2 A1            [12]  512 	mov	c,_P2_1
      00013D E4               [12]  513 	clr	a
      00013E 33               [12]  514 	rlc	a
      00013F FD               [12]  515 	mov	r5,a
                                    516 ;	./src/main.c:71: delay_ms(10);
      000140 90 00 0A         [24]  517 	mov	dptr,#0x000a
      000143 C0 07            [24]  518 	push	ar7
      000145 C0 06            [24]  519 	push	ar6
      000147 C0 05            [24]  520 	push	ar5
      000149 C0 04            [24]  521 	push	ar4
      00014B 12 01 59         [24]  522 	lcall	_delay_ms
      00014E D0 04            [24]  523 	pop	ar4
      000150 D0 05            [24]  524 	pop	ar5
      000152 D0 06            [24]  525 	pop	ar6
      000154 D0 07            [24]  526 	pop	ar7
                                    527 ;	./src/main.c:73: }
      000156 02 00 B4         [24]  528 	ljmp	00139$
                                    529 	.area CSEG    (CODE)
                                    530 	.area CONST   (CODE)
                                    531 	.area XINIT   (CODE)
                                    532 	.area CABS    (ABS,CODE)
