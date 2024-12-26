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
                                     12 	.globl _Get_Key
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
                                    110 ;--------------------------------------------------------
                                    111 ; special function registers
                                    112 ;--------------------------------------------------------
                                    113 	.area RSEG    (ABS,DATA)
      000000                        114 	.org 0x0000
                           000080   115 _P0	=	0x0080
                           000081   116 _SP	=	0x0081
                           000082   117 _DPL	=	0x0082
                           000083   118 _DPH	=	0x0083
                           000087   119 _PCON	=	0x0087
                           000088   120 _TCON	=	0x0088
                           000089   121 _TMOD	=	0x0089
                           00008A   122 _TL0	=	0x008a
                           00008B   123 _TL1	=	0x008b
                           00008C   124 _TH0	=	0x008c
                           00008D   125 _TH1	=	0x008d
                           000090   126 _P1	=	0x0090
                           000098   127 _SCON	=	0x0098
                           000099   128 _SBUF	=	0x0099
                           0000A0   129 _P2	=	0x00a0
                           0000A8   130 _IE	=	0x00a8
                           0000B0   131 _P3	=	0x00b0
                           0000B8   132 _IP	=	0x00b8
                           0000D0   133 _PSW	=	0x00d0
                           0000E0   134 _ACC	=	0x00e0
                           0000F0   135 _B	=	0x00f0
                                    136 ;--------------------------------------------------------
                                    137 ; special function bits
                                    138 ;--------------------------------------------------------
                                    139 	.area RSEG    (ABS,DATA)
      000000                        140 	.org 0x0000
                           000080   141 _P0_0	=	0x0080
                           000081   142 _P0_1	=	0x0081
                           000082   143 _P0_2	=	0x0082
                           000083   144 _P0_3	=	0x0083
                           000084   145 _P0_4	=	0x0084
                           000085   146 _P0_5	=	0x0085
                           000086   147 _P0_6	=	0x0086
                           000087   148 _P0_7	=	0x0087
                           000088   149 _IT0	=	0x0088
                           000089   150 _IE0	=	0x0089
                           00008A   151 _IT1	=	0x008a
                           00008B   152 _IE1	=	0x008b
                           00008C   153 _TR0	=	0x008c
                           00008D   154 _TF0	=	0x008d
                           00008E   155 _TR1	=	0x008e
                           00008F   156 _TF1	=	0x008f
                           000090   157 _P1_0	=	0x0090
                           000091   158 _P1_1	=	0x0091
                           000092   159 _P1_2	=	0x0092
                           000093   160 _P1_3	=	0x0093
                           000094   161 _P1_4	=	0x0094
                           000095   162 _P1_5	=	0x0095
                           000096   163 _P1_6	=	0x0096
                           000097   164 _P1_7	=	0x0097
                           000098   165 _RI	=	0x0098
                           000099   166 _TI	=	0x0099
                           00009A   167 _RB8	=	0x009a
                           00009B   168 _TB8	=	0x009b
                           00009C   169 _REN	=	0x009c
                           00009D   170 _SM2	=	0x009d
                           00009E   171 _SM1	=	0x009e
                           00009F   172 _SM0	=	0x009f
                           0000A0   173 _P2_0	=	0x00a0
                           0000A1   174 _P2_1	=	0x00a1
                           0000A2   175 _P2_2	=	0x00a2
                           0000A3   176 _P2_3	=	0x00a3
                           0000A4   177 _P2_4	=	0x00a4
                           0000A5   178 _P2_5	=	0x00a5
                           0000A6   179 _P2_6	=	0x00a6
                           0000A7   180 _P2_7	=	0x00a7
                           0000A8   181 _EX0	=	0x00a8
                           0000A9   182 _ET0	=	0x00a9
                           0000AA   183 _EX1	=	0x00aa
                           0000AB   184 _ET1	=	0x00ab
                           0000AC   185 _ES	=	0x00ac
                           0000AF   186 _EA	=	0x00af
                           0000B0   187 _P3_0	=	0x00b0
                           0000B1   188 _P3_1	=	0x00b1
                           0000B2   189 _P3_2	=	0x00b2
                           0000B3   190 _P3_3	=	0x00b3
                           0000B4   191 _P3_4	=	0x00b4
                           0000B5   192 _P3_5	=	0x00b5
                           0000B6   193 _P3_6	=	0x00b6
                           0000B7   194 _P3_7	=	0x00b7
                           0000B0   195 _RXD	=	0x00b0
                           0000B1   196 _TXD	=	0x00b1
                           0000B2   197 _INT0	=	0x00b2
                           0000B3   198 _INT1	=	0x00b3
                           0000B4   199 _T0	=	0x00b4
                           0000B5   200 _T1	=	0x00b5
                           0000B6   201 _WR	=	0x00b6
                           0000B7   202 _RD	=	0x00b7
                           0000B8   203 _PX0	=	0x00b8
                           0000B9   204 _PT0	=	0x00b9
                           0000BA   205 _PX1	=	0x00ba
                           0000BB   206 _PT1	=	0x00bb
                           0000BC   207 _PS	=	0x00bc
                           0000D0   208 _P	=	0x00d0
                           0000D1   209 _F1	=	0x00d1
                           0000D2   210 _OV	=	0x00d2
                           0000D3   211 _RS0	=	0x00d3
                           0000D4   212 _RS1	=	0x00d4
                           0000D5   213 _F0	=	0x00d5
                           0000D6   214 _AC	=	0x00d6
                           0000D7   215 _CY	=	0x00d7
                                    216 ;--------------------------------------------------------
                                    217 ; overlayable register banks
                                    218 ;--------------------------------------------------------
                                    219 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        220 	.ds 8
                                    221 ;--------------------------------------------------------
                                    222 ; internal ram data
                                    223 ;--------------------------------------------------------
                                    224 	.area DSEG    (DATA)
                                    225 ;--------------------------------------------------------
                                    226 ; overlayable items in internal ram
                                    227 ;--------------------------------------------------------
                                    228 ;--------------------------------------------------------
                                    229 ; Stack segment in internal ram
                                    230 ;--------------------------------------------------------
                                    231 	.area SSEG
      000008                        232 __start__stack:
      000008                        233 	.ds	1
                                    234 
                                    235 ;--------------------------------------------------------
                                    236 ; indirectly addressable internal ram data
                                    237 ;--------------------------------------------------------
                                    238 	.area ISEG    (DATA)
                                    239 ;--------------------------------------------------------
                                    240 ; absolute internal ram data
                                    241 ;--------------------------------------------------------
                                    242 	.area IABS    (ABS,DATA)
                                    243 	.area IABS    (ABS,DATA)
                                    244 ;--------------------------------------------------------
                                    245 ; bit data
                                    246 ;--------------------------------------------------------
                                    247 	.area BSEG    (BIT)
                                    248 ;--------------------------------------------------------
                                    249 ; paged external ram data
                                    250 ;--------------------------------------------------------
                                    251 	.area PSEG    (PAG,XDATA)
                                    252 ;--------------------------------------------------------
                                    253 ; uninitialized external ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area XSEG    (XDATA)
                                    256 ;--------------------------------------------------------
                                    257 ; absolute external ram data
                                    258 ;--------------------------------------------------------
                                    259 	.area XABS    (ABS,XDATA)
                                    260 ;--------------------------------------------------------
                                    261 ; initialized external ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area XISEG   (XDATA)
                                    264 	.area HOME    (CODE)
                                    265 	.area GSINIT0 (CODE)
                                    266 	.area GSINIT1 (CODE)
                                    267 	.area GSINIT2 (CODE)
                                    268 	.area GSINIT3 (CODE)
                                    269 	.area GSINIT4 (CODE)
                                    270 	.area GSINIT5 (CODE)
                                    271 	.area GSINIT  (CODE)
                                    272 	.area GSFINAL (CODE)
                                    273 	.area CSEG    (CODE)
                                    274 ;--------------------------------------------------------
                                    275 ; interrupt vector
                                    276 ;--------------------------------------------------------
                                    277 	.area HOME    (CODE)
      000000                        278 __interrupt_vect:
      000000 02 00 4C         [24]  279 	ljmp	__sdcc_gsinit_startup
                                    280 ; restartable atomic support routines
      000003                        281 	.ds	5
      000008                        282 sdcc_atomic_exchange_rollback_start::
      000008 00               [12]  283 	nop
      000009 00               [12]  284 	nop
      00000A                        285 sdcc_atomic_exchange_pdata_impl:
      00000A E2               [24]  286 	movx	a, @r0
      00000B FB               [12]  287 	mov	r3, a
      00000C EA               [12]  288 	mov	a, r2
      00000D F2               [24]  289 	movx	@r0, a
      00000E 80 2C            [24]  290 	sjmp	sdcc_atomic_exchange_exit
      000010 00               [12]  291 	nop
      000011 00               [12]  292 	nop
      000012                        293 sdcc_atomic_exchange_xdata_impl:
      000012 E0               [24]  294 	movx	a, @dptr
      000013 FB               [12]  295 	mov	r3, a
      000014 EA               [12]  296 	mov	a, r2
      000015 F0               [24]  297 	movx	@dptr, a
      000016 80 24            [24]  298 	sjmp	sdcc_atomic_exchange_exit
      000018                        299 sdcc_atomic_compare_exchange_idata_impl:
      000018 E6               [12]  300 	mov	a, @r0
      000019 B5 02 02         [24]  301 	cjne	a, ar2, .+#5
      00001C EB               [12]  302 	mov	a, r3
      00001D F6               [12]  303 	mov	@r0, a
      00001E 22               [24]  304 	ret
      00001F 00               [12]  305 	nop
      000020                        306 sdcc_atomic_compare_exchange_pdata_impl:
      000020 E2               [24]  307 	movx	a, @r0
      000021 B5 02 02         [24]  308 	cjne	a, ar2, .+#5
      000024 EB               [12]  309 	mov	a, r3
      000025 F2               [24]  310 	movx	@r0, a
      000026 22               [24]  311 	ret
      000027 00               [12]  312 	nop
      000028                        313 sdcc_atomic_compare_exchange_xdata_impl:
      000028 E0               [24]  314 	movx	a, @dptr
      000029 B5 02 02         [24]  315 	cjne	a, ar2, .+#5
      00002C EB               [12]  316 	mov	a, r3
      00002D F0               [24]  317 	movx	@dptr, a
      00002E 22               [24]  318 	ret
      00002F                        319 sdcc_atomic_exchange_rollback_end::
                                    320 
      00002F                        321 sdcc_atomic_exchange_gptr_impl::
      00002F 30 F6 E0         [24]  322 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      000032 A8 82            [24]  323 	mov	r0, dpl
      000034 20 F5 D3         [24]  324 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      000037                        325 sdcc_atomic_exchange_idata_impl:
      000037 EA               [12]  326 	mov	a, r2
      000038 C6               [12]  327 	xch	a, @r0
      000039 F5 82            [12]  328 	mov	dpl, a
      00003B 22               [24]  329 	ret
      00003C                        330 sdcc_atomic_exchange_exit:
      00003C 8B 82            [24]  331 	mov	dpl, r3
      00003E 22               [24]  332 	ret
      00003F                        333 sdcc_atomic_compare_exchange_gptr_impl::
      00003F 30 F6 E6         [24]  334 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      000042 A8 82            [24]  335 	mov	r0, dpl
      000044 20 F5 D9         [24]  336 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      000047 80 CF            [24]  337 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    338 ;--------------------------------------------------------
                                    339 ; global & static initialisations
                                    340 ;--------------------------------------------------------
                                    341 	.area HOME    (CODE)
                                    342 	.area GSINIT  (CODE)
                                    343 	.area GSFINAL (CODE)
                                    344 	.area GSINIT  (CODE)
                                    345 	.globl __sdcc_gsinit_startup
                                    346 	.globl __sdcc_program_startup
                                    347 	.globl __start__stack
                                    348 	.globl __mcs51_genXINIT
                                    349 	.globl __mcs51_genXRAMCLEAR
                                    350 	.globl __mcs51_genRAMCLEAR
                                    351 	.area GSFINAL (CODE)
      0000A5 02 00 49         [24]  352 	ljmp	__sdcc_program_startup
                                    353 ;--------------------------------------------------------
                                    354 ; Home
                                    355 ;--------------------------------------------------------
                                    356 	.area HOME    (CODE)
                                    357 	.area HOME    (CODE)
      000049                        358 __sdcc_program_startup:
      000049 02 00 A8         [24]  359 	ljmp	_main
                                    360 ;	return from main will return to caller
                                    361 ;--------------------------------------------------------
                                    362 ; code
                                    363 ;--------------------------------------------------------
                                    364 	.area CSEG    (CODE)
                                    365 ;------------------------------------------------------------
                                    366 ;Allocation info for local variables in function 'main'
                                    367 ;------------------------------------------------------------
                                    368 ;patt                      Allocated to registers r7 
                                    369 ;preKey                    Allocated to registers 
                                    370 ;Key                       Allocated to registers r3 r4 
                                    371 ;cnt                       Allocated to registers r5 r6 
                                    372 ;------------------------------------------------------------
                                    373 ;	./src/main.c:14: void main(void)
                                    374 ;	-----------------------------------------
                                    375 ;	 function main
                                    376 ;	-----------------------------------------
      0000A8                        377 _main:
                           000007   378 	ar7 = 0x07
                           000006   379 	ar6 = 0x06
                           000005   380 	ar5 = 0x05
                           000004   381 	ar4 = 0x04
                           000003   382 	ar3 = 0x03
                           000002   383 	ar2 = 0x02
                           000001   384 	ar1 = 0x01
                           000000   385 	ar0 = 0x00
                                    386 ;	./src/main.c:16: unsigned char patt = 0x00;
      0000A8 7F 00            [12]  387 	mov	r7,#0x00
                                    388 ;	./src/main.c:20: while (1){
      0000AA                        389 00182$:
                                    390 ;	./src/main.c:22: Key = Get_Key();
      0000AA C0 07            [24]  391 	push	ar7
      0000AC 12 02 96         [24]  392 	lcall	_Get_Key
      0000AF AD 82            [24]  393 	mov	r5, dpl
      0000B1 AE 83            [24]  394 	mov	r6, dph
      0000B3 D0 07            [24]  395 	pop	ar7
                                    396 ;	./src/main.c:24: if (Key == 1){
      0000B5 BD 01 5B         [24]  397 	cjne	r5,#0x01,00179$
      0000B8 BE 00 58         [24]  398 	cjne	r6,#0x00,00179$
                                    399 ;	./src/main.c:25: delay_ms(30);
      0000BB 90 00 1E         [24]  400 	mov	dptr,#0x001e
      0000BE C0 07            [24]  401 	push	ar7
      0000C0 12 02 F1         [24]  402 	lcall	_delay_ms
                                    403 ;	./src/main.c:26: Key = Get_Key();
      0000C3 12 02 96         [24]  404 	lcall	_Get_Key
      0000C6 AB 82            [24]  405 	mov	r3, dpl
      0000C8 AC 83            [24]  406 	mov	r4, dph
      0000CA D0 07            [24]  407 	pop	ar7
                                    408 ;	./src/main.c:27: if (Key != 1){
      0000CC BB 01 05         [24]  409 	cjne	r3,#0x01,00428$
      0000CF BC 00 02         [24]  410 	cjne	r4,#0x00,00428$
      0000D2 80 10            [24]  411 	sjmp	00104$
      0000D4                        412 00428$:
                                    413 ;	./src/main.c:28: patt = (patt == 0x01) ? patt = 0x80:patt >> 1;
      0000D4 BF 01 04         [24]  414 	cjne	r7,#0x01,00186$
      0000D7 7C 80            [12]  415 	mov	r4,#0x80
      0000D9 80 04            [24]  416 	sjmp	00187$
      0000DB                        417 00186$:
      0000DB EF               [12]  418 	mov	a,r7
      0000DC C3               [12]  419 	clr	c
      0000DD 13               [12]  420 	rrc	a
      0000DE FC               [12]  421 	mov	r4,a
      0000DF                        422 00187$:
      0000DF 8C 07            [24]  423 	mov	ar7,r4
      0000E1 02 02 8F         [24]  424 	ljmp	00180$
                                    425 ;	./src/main.c:30: while (1){
      0000E4                        426 00104$:
                                    427 ;	./src/main.c:31: delay_ms(100);
      0000E4 90 00 64         [24]  428 	mov	dptr,#0x0064
      0000E7 C0 07            [24]  429 	push	ar7
      0000E9 12 02 F1         [24]  430 	lcall	_delay_ms
                                    431 ;	./src/main.c:32: Key = Get_Key();
      0000EC 12 02 96         [24]  432 	lcall	_Get_Key
      0000EF AB 82            [24]  433 	mov	r3, dpl
      0000F1 AC 83            [24]  434 	mov	r4, dph
      0000F3 D0 07            [24]  435 	pop	ar7
                                    436 ;	./src/main.c:33: if (Key != 1)break;
      0000F5 BB 01 05         [24]  437 	cjne	r3,#0x01,00431$
      0000F8 BC 00 02         [24]  438 	cjne	r4,#0x00,00431$
      0000FB 80 03            [24]  439 	sjmp	00432$
      0000FD                        440 00431$:
      0000FD 02 02 8F         [24]  441 	ljmp	00180$
      000100                        442 00432$:
                                    443 ;	./src/main.c:34: patt = (patt == 0x01) ? patt = 0x80:patt>>1;
      000100 BF 01 04         [24]  444 	cjne	r7,#0x01,00188$
      000103 7C 80            [12]  445 	mov	r4,#0x80
      000105 80 04            [24]  446 	sjmp	00189$
      000107                        447 00188$:
      000107 EF               [12]  448 	mov	a,r7
      000108 C3               [12]  449 	clr	c
      000109 13               [12]  450 	rrc	a
      00010A FC               [12]  451 	mov	r4,a
      00010B                        452 00189$:
      00010B 8C 07            [24]  453 	mov	ar7,r4
                                    454 ;	./src/main.c:35: led = ~patt;
      00010D EF               [12]  455 	mov	a,r7
      00010E F4               [12]  456 	cpl	a
      00010F F5 90            [12]  457 	mov	_P1,a
      000111 80 D1            [24]  458 	sjmp	00104$
      000113                        459 00179$:
                                    460 ;	./src/main.c:38: }else if (Key == 2){
      000113 BD 02 08         [24]  461 	cjne	r5,#0x02,00176$
      000116 BE 00 05         [24]  462 	cjne	r6,#0x00,00176$
                                    463 ;	./src/main.c:39: patt = 0x01;
      000119 7F 01            [12]  464 	mov	r7,#0x01
      00011B 02 02 8F         [24]  465 	ljmp	00180$
      00011E                        466 00176$:
                                    467 ;	./src/main.c:40: }else if (Key == 3){
      00011E BD 03 08         [24]  468 	cjne	r5,#0x03,00173$
      000121 BE 00 05         [24]  469 	cjne	r6,#0x00,00173$
                                    470 ;	./src/main.c:41: patt = 0x02;
      000124 7F 02            [12]  471 	mov	r7,#0x02
      000126 02 02 8F         [24]  472 	ljmp	00180$
      000129                        473 00173$:
                                    474 ;	./src/main.c:42: }else if (Key == 4){
      000129 BD 04 08         [24]  475 	cjne	r5,#0x04,00170$
      00012C BE 00 05         [24]  476 	cjne	r6,#0x00,00170$
                                    477 ;	./src/main.c:43: patt = 0x04;
      00012F 7F 04            [12]  478 	mov	r7,#0x04
      000131 02 02 8F         [24]  479 	ljmp	00180$
      000134                        480 00170$:
                                    481 ;	./src/main.c:44: }else if (Key == 5){
      000134 BD 05 59         [24]  482 	cjne	r5,#0x05,00167$
      000137 BE 00 56         [24]  483 	cjne	r6,#0x00,00167$
                                    484 ;	./src/main.c:45: delay_ms(30);
      00013A 90 00 1E         [24]  485 	mov	dptr,#0x001e
      00013D C0 07            [24]  486 	push	ar7
      00013F 12 02 F1         [24]  487 	lcall	_delay_ms
                                    488 ;	./src/main.c:46: Key = Get_Key();
      000142 12 02 96         [24]  489 	lcall	_Get_Key
      000145 AB 82            [24]  490 	mov	r3, dpl
      000147 AC 83            [24]  491 	mov	r4, dph
      000149 D0 07            [24]  492 	pop	ar7
                                    493 ;	./src/main.c:47: if (Key != 5){
      00014B BB 05 05         [24]  494 	cjne	r3,#0x05,00443$
      00014E BC 00 02         [24]  495 	cjne	r4,#0x00,00443$
      000151 80 0F            [24]  496 	sjmp	00112$
      000153                        497 00443$:
                                    498 ;	./src/main.c:48: patt = (patt == 0x80)? patt = 0x01:patt << 1;
      000153 BF 80 04         [24]  499 	cjne	r7,#0x80,00190$
      000156 7C 01            [12]  500 	mov	r4,#0x01
      000158 80 03            [24]  501 	sjmp	00191$
      00015A                        502 00190$:
      00015A EF               [12]  503 	mov	a,r7
      00015B 2F               [12]  504 	add	a,r7
      00015C FC               [12]  505 	mov	r4,a
      00015D                        506 00191$:
      00015D 8C 07            [24]  507 	mov	ar7,r4
      00015F 02 02 8F         [24]  508 	ljmp	00180$
                                    509 ;	./src/main.c:50: while (1){
      000162                        510 00112$:
                                    511 ;	./src/main.c:51: delay_ms(100);
      000162 90 00 64         [24]  512 	mov	dptr,#0x0064
      000165 C0 07            [24]  513 	push	ar7
      000167 12 02 F1         [24]  514 	lcall	_delay_ms
                                    515 ;	./src/main.c:52: Key = Get_Key();
      00016A 12 02 96         [24]  516 	lcall	_Get_Key
      00016D AB 82            [24]  517 	mov	r3, dpl
      00016F AC 83            [24]  518 	mov	r4, dph
      000171 D0 07            [24]  519 	pop	ar7
                                    520 ;	./src/main.c:53: if (Key != 5)break;
      000173 BB 05 05         [24]  521 	cjne	r3,#0x05,00446$
      000176 BC 00 02         [24]  522 	cjne	r4,#0x00,00446$
      000179 80 03            [24]  523 	sjmp	00447$
      00017B                        524 00446$:
      00017B 02 02 8F         [24]  525 	ljmp	00180$
      00017E                        526 00447$:
                                    527 ;	./src/main.c:54: patt = (patt == 0x80)? patt = 0x01:patt << 1; // right shift
      00017E BF 80 04         [24]  528 	cjne	r7,#0x80,00192$
      000181 7C 01            [12]  529 	mov	r4,#0x01
      000183 80 03            [24]  530 	sjmp	00193$
      000185                        531 00192$:
      000185 EF               [12]  532 	mov	a,r7
      000186 2F               [12]  533 	add	a,r7
      000187 FC               [12]  534 	mov	r4,a
      000188                        535 00193$:
      000188 8C 07            [24]  536 	mov	ar7,r4
                                    537 ;	./src/main.c:55: led = ~patt;
      00018A EF               [12]  538 	mov	a,r7
      00018B F4               [12]  539 	cpl	a
      00018C F5 90            [12]  540 	mov	_P1,a
      00018E 80 D2            [24]  541 	sjmp	00112$
      000190                        542 00167$:
                                    543 ;	./src/main.c:58: }else if (Key == 6){
      000190 BD 06 08         [24]  544 	cjne	r5,#0x06,00164$
      000193 BE 00 05         [24]  545 	cjne	r6,#0x00,00164$
                                    546 ;	./src/main.c:59: patt = 0x10;
      000196 7F 10            [12]  547 	mov	r7,#0x10
      000198 02 02 8F         [24]  548 	ljmp	00180$
      00019B                        549 00164$:
                                    550 ;	./src/main.c:60: }else if (Key == 7){
      00019B BD 07 08         [24]  551 	cjne	r5,#0x07,00161$
      00019E BE 00 05         [24]  552 	cjne	r6,#0x00,00161$
                                    553 ;	./src/main.c:61: patt = 0x20;
      0001A1 7F 20            [12]  554 	mov	r7,#0x20
      0001A3 02 02 8F         [24]  555 	ljmp	00180$
      0001A6                        556 00161$:
                                    557 ;	./src/main.c:62: }else if (Key == 8){
      0001A6 BD 08 08         [24]  558 	cjne	r5,#0x08,00158$
      0001A9 BE 00 05         [24]  559 	cjne	r6,#0x00,00158$
                                    560 ;	./src/main.c:63: patt = 0x40;
      0001AC 7F 40            [12]  561 	mov	r7,#0x40
      0001AE 02 02 8F         [24]  562 	ljmp	00180$
      0001B1                        563 00158$:
                                    564 ;	./src/main.c:64: }else if (Key == 9){
      0001B1 BD 09 05         [24]  565 	cjne	r5,#0x09,00456$
      0001B4 BE 00 02         [24]  566 	cjne	r6,#0x00,00456$
      0001B7 80 03            [24]  567 	sjmp	00457$
      0001B9                        568 00456$:
      0001B9 02 02 8F         [24]  569 	ljmp	00180$
      0001BC                        570 00457$:
                                    571 ;	./src/main.c:65: delay_ms(100);
      0001BC 90 00 64         [24]  572 	mov	dptr,#0x0064
      0001BF C0 07            [24]  573 	push	ar7
      0001C1 12 02 F1         [24]  574 	lcall	_delay_ms
      0001C4 D0 07            [24]  575 	pop	ar7
                                    576 ;	./src/main.c:66: if ((but1 & but2 & but3)){
      0001C6 A2 A2            [12]  577 	mov	c,_P2_2
      0001C8 E4               [12]  578 	clr	a
      0001C9 33               [12]  579 	rlc	a
      0001CA FE               [12]  580 	mov	r6,a
      0001CB A2 A3            [12]  581 	mov	c,_P2_3
      0001CD E4               [12]  582 	clr	a
      0001CE 33               [12]  583 	rlc	a
      0001CF 52 06            [12]  584 	anl	ar6,a
      0001D1 A2 A4            [12]  585 	mov	c,_P2_4
      0001D3 E4               [12]  586 	clr	a
      0001D4 33               [12]  587 	rlc	a
      0001D5 5E               [12]  588 	anl	a,r6
      0001D6 60 1B            [24]  589 	jz	00127$
                                    590 ;	./src/main.c:67: if (patt == 0x01)
      0001D8 BF 01 04         [24]  591 	cjne	r7,#0x01,00124$
                                    592 ;	./src/main.c:68: patt = 0x20;
      0001DB 7F 20            [12]  593 	mov	r7,#0x20
      0001DD 80 14            [24]  594 	sjmp	00127$
      0001DF                        595 00124$:
                                    596 ;	./src/main.c:69: else if (patt == 0x02)
      0001DF BF 02 04         [24]  597 	cjne	r7,#0x02,00121$
                                    598 ;	./src/main.c:70: patt = 0x40;
      0001E2 7F 40            [12]  599 	mov	r7,#0x40
      0001E4 80 0D            [24]  600 	sjmp	00127$
      0001E6                        601 00121$:
                                    602 ;	./src/main.c:71: else if (patt == 0x04)
      0001E6 BF 04 04         [24]  603 	cjne	r7,#0x04,00118$
                                    604 ;	./src/main.c:72: patt = 0x80;
      0001E9 7F 80            [12]  605 	mov	r7,#0x80
      0001EB 80 06            [24]  606 	sjmp	00127$
      0001ED                        607 00118$:
                                    608 ;	./src/main.c:74: patt = patt >> 3;
      0001ED EF               [12]  609 	mov	a,r7
      0001EE C4               [12]  610 	swap	a
      0001EF 23               [12]  611 	rl	a
      0001F0 54 1F            [12]  612 	anl	a,#0x1f
      0001F2 FF               [12]  613 	mov	r7,a
      0001F3                        614 00127$:
                                    615 ;	./src/main.c:76: }delay_ms(100);
      0001F3 90 00 64         [24]  616 	mov	dptr,#0x0064
      0001F6 C0 07            [24]  617 	push	ar7
      0001F8 12 02 F1         [24]  618 	lcall	_delay_ms
      0001FB D0 07            [24]  619 	pop	ar7
                                    620 ;	./src/main.c:77: if ((but1 & but2 & but3)){
      0001FD A2 A2            [12]  621 	mov	c,_P2_2
      0001FF E4               [12]  622 	clr	a
      000200 33               [12]  623 	rlc	a
      000201 FE               [12]  624 	mov	r6,a
      000202 A2 A3            [12]  625 	mov	c,_P2_3
      000204 E4               [12]  626 	clr	a
      000205 33               [12]  627 	rlc	a
      000206 52 06            [12]  628 	anl	ar6,a
      000208 A2 A4            [12]  629 	mov	c,_P2_4
      00020A E4               [12]  630 	clr	a
      00020B 33               [12]  631 	rlc	a
      00020C 5E               [12]  632 	anl	a,r6
      00020D 60 0D            [24]  633 	jz	00220$
                                    634 ;	./src/main.c:78: if (patt == 0x01)patt = 0x80;
      00020F BF 01 04         [24]  635 	cjne	r7,#0x01,00129$
      000212 7F 80            [12]  636 	mov	r7,#0x80
      000214 80 79            [24]  637 	sjmp	00180$
      000216                        638 00129$:
                                    639 ;	./src/main.c:79: else patt = patt >> 1;
      000216 EF               [12]  640 	mov	a,r7
      000217 C3               [12]  641 	clr	c
      000218 13               [12]  642 	rrc	a
      000219 FF               [12]  643 	mov	r7,a
                                    644 ;	./src/main.c:82: while (1){
      00021A 80 73            [24]  645 	sjmp	00180$
      00021C                        646 00220$:
      00021C 7D 00            [12]  647 	mov	r5,#0x00
      00021E 7E 00            [12]  648 	mov	r6,#0x00
      000220                        649 00136$:
                                    650 ;	./src/main.c:83: delay_ms(100);
      000220 90 00 64         [24]  651 	mov	dptr,#0x0064
      000223 C0 07            [24]  652 	push	ar7
      000225 C0 06            [24]  653 	push	ar6
      000227 C0 05            [24]  654 	push	ar5
      000229 12 02 F1         [24]  655 	lcall	_delay_ms
                                    656 ;	./src/main.c:84: Key = Get_Key();
      00022C 12 02 96         [24]  657 	lcall	_Get_Key
      00022F AB 82            [24]  658 	mov	r3, dpl
      000231 AC 83            [24]  659 	mov	r4, dph
      000233 D0 05            [24]  660 	pop	ar5
      000235 D0 06            [24]  661 	pop	ar6
      000237 D0 07            [24]  662 	pop	ar7
                                    663 ;	./src/main.c:85: if (Key != 9)break;
      000239 BB 09 13         [24]  664 	cjne	r3,#0x09,00137$
      00023C BC 00 10         [24]  665 	cjne	r4,#0x00,00137$
                                    666 ;	./src/main.c:86: cnt++;
      00023F 0D               [12]  667 	inc	r5
      000240 BD 00 01         [24]  668 	cjne	r5,#0x00,00470$
      000243 0E               [12]  669 	inc	r6
      000244                        670 00470$:
                                    671 ;	./src/main.c:87: if (cnt >= 4)break;
      000244 C3               [12]  672 	clr	c
      000245 ED               [12]  673 	mov	a,r5
      000246 94 04            [12]  674 	subb	a,#0x04
      000248 EE               [12]  675 	mov	a,r6
      000249 64 80            [12]  676 	xrl	a,#0x80
      00024B 94 80            [12]  677 	subb	a,#0x80
      00024D 40 D1            [24]  678 	jc	00136$
      00024F                        679 00137$:
                                    680 ;	./src/main.c:88: }if (cnt >= 4){
      00024F C3               [12]  681 	clr	c
      000250 ED               [12]  682 	mov	a,r5
      000251 94 04            [12]  683 	subb	a,#0x04
      000253 EE               [12]  684 	mov	a,r6
      000254 64 80            [12]  685 	xrl	a,#0x80
      000256 94 80            [12]  686 	subb	a,#0x80
      000258 40 18            [24]  687 	jc	00149$
                                    688 ;	./src/main.c:89: if (patt == 0x01){
      00025A BF 01 04         [24]  689 	cjne	r7,#0x01,00142$
                                    690 ;	./src/main.c:90: patt = 0x40;
      00025D 7F 40            [12]  691 	mov	r7,#0x40
      00025F 80 0D            [24]  692 	sjmp	00143$
      000261                        693 00142$:
                                    694 ;	./src/main.c:91: }else if (patt == 0x02){
      000261 BF 02 04         [24]  695 	cjne	r7,#0x02,00139$
                                    696 ;	./src/main.c:92: patt = 0x80;
      000264 7F 80            [12]  697 	mov	r7,#0x80
      000266 80 06            [24]  698 	sjmp	00143$
      000268                        699 00139$:
                                    700 ;	./src/main.c:94: patt = patt >> 2;
      000268 EF               [12]  701 	mov	a,r7
      000269 03               [12]  702 	rr	a
      00026A 03               [12]  703 	rr	a
      00026B 54 3F            [12]  704 	anl	a,#0x3f
      00026D FF               [12]  705 	mov	r7,a
      00026E                        706 00143$:
                                    707 ;	./src/main.c:96: led = ~patt;
      00026E EF               [12]  708 	mov	a,r7
      00026F F4               [12]  709 	cpl	a
      000270 F5 90            [12]  710 	mov	_P1,a
                                    711 ;	./src/main.c:98: }while (1){
      000272                        712 00149$:
                                    713 ;	./src/main.c:99: Key = Get_Key();
      000272 C0 07            [24]  714 	push	ar7
      000274 12 02 96         [24]  715 	lcall	_Get_Key
      000277 AD 82            [24]  716 	mov	r5, dpl
      000279 AE 83            [24]  717 	mov	r6, dph
      00027B D0 07            [24]  718 	pop	ar7
                                    719 ;	./src/main.c:100: if (Key != 9)break;
      00027D BD 09 0F         [24]  720 	cjne	r5,#0x09,00180$
      000280 BE 00 0C         [24]  721 	cjne	r6,#0x00,00180$
                                    722 ;	./src/main.c:101: delay_ms(10);
      000283 90 00 0A         [24]  723 	mov	dptr,#0x000a
      000286 C0 07            [24]  724 	push	ar7
      000288 12 02 F1         [24]  725 	lcall	_delay_ms
      00028B D0 07            [24]  726 	pop	ar7
                                    727 ;	./src/main.c:106: patt = patt;
      00028D 80 E3            [24]  728 	sjmp	00149$
      00028F                        729 00180$:
                                    730 ;	./src/main.c:109: led = ~patt;
      00028F EF               [12]  731 	mov	a,r7
      000290 F4               [12]  732 	cpl	a
      000291 F5 90            [12]  733 	mov	_P1,a
                                    734 ;	./src/main.c:113: }
      000293 02 00 AA         [24]  735 	ljmp	00182$
                                    736 	.area CSEG    (CODE)
                                    737 	.area CONST   (CODE)
                                    738 	.area XINIT   (CODE)
                                    739 	.area CABS    (ABS,CODE)
