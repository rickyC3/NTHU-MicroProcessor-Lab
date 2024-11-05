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
                                     13 	.globl _Delay_Si
                                     14 	.globl _Delay_La
                                     15 	.globl _Delay_So
                                     16 	.globl _Delay_Fa
                                     17 	.globl _Delay_Mi
                                     18 	.globl _Delay_Re
                                     19 	.globl _Delay_Do
                                     20 	.globl _CY
                                     21 	.globl _AC
                                     22 	.globl _F0
                                     23 	.globl _RS1
                                     24 	.globl _RS0
                                     25 	.globl _OV
                                     26 	.globl _F1
                                     27 	.globl _P
                                     28 	.globl _PS
                                     29 	.globl _PT1
                                     30 	.globl _PX1
                                     31 	.globl _PT0
                                     32 	.globl _PX0
                                     33 	.globl _RD
                                     34 	.globl _WR
                                     35 	.globl _T1
                                     36 	.globl _T0
                                     37 	.globl _INT1
                                     38 	.globl _INT0
                                     39 	.globl _TXD
                                     40 	.globl _RXD
                                     41 	.globl _P3_7
                                     42 	.globl _P3_6
                                     43 	.globl _P3_5
                                     44 	.globl _P3_4
                                     45 	.globl _P3_3
                                     46 	.globl _P3_2
                                     47 	.globl _P3_1
                                     48 	.globl _P3_0
                                     49 	.globl _EA
                                     50 	.globl _ES
                                     51 	.globl _ET1
                                     52 	.globl _EX1
                                     53 	.globl _ET0
                                     54 	.globl _EX0
                                     55 	.globl _P2_7
                                     56 	.globl _P2_6
                                     57 	.globl _P2_5
                                     58 	.globl _P2_4
                                     59 	.globl _P2_3
                                     60 	.globl _P2_2
                                     61 	.globl _P2_1
                                     62 	.globl _P2_0
                                     63 	.globl _SM0
                                     64 	.globl _SM1
                                     65 	.globl _SM2
                                     66 	.globl _REN
                                     67 	.globl _TB8
                                     68 	.globl _RB8
                                     69 	.globl _TI
                                     70 	.globl _RI
                                     71 	.globl _P1_7
                                     72 	.globl _P1_6
                                     73 	.globl _P1_5
                                     74 	.globl _P1_4
                                     75 	.globl _P1_3
                                     76 	.globl _P1_2
                                     77 	.globl _P1_1
                                     78 	.globl _P1_0
                                     79 	.globl _TF1
                                     80 	.globl _TR1
                                     81 	.globl _TF0
                                     82 	.globl _TR0
                                     83 	.globl _IE1
                                     84 	.globl _IT1
                                     85 	.globl _IE0
                                     86 	.globl _IT0
                                     87 	.globl _P0_7
                                     88 	.globl _P0_6
                                     89 	.globl _P0_5
                                     90 	.globl _P0_4
                                     91 	.globl _P0_3
                                     92 	.globl _P0_2
                                     93 	.globl _P0_1
                                     94 	.globl _P0_0
                                     95 	.globl _B
                                     96 	.globl _ACC
                                     97 	.globl _PSW
                                     98 	.globl _IP
                                     99 	.globl _P3
                                    100 	.globl _IE
                                    101 	.globl _P2
                                    102 	.globl _SBUF
                                    103 	.globl _SCON
                                    104 	.globl _P1
                                    105 	.globl _TH1
                                    106 	.globl _TH0
                                    107 	.globl _TL1
                                    108 	.globl _TL0
                                    109 	.globl _TMOD
                                    110 	.globl _TCON
                                    111 	.globl _PCON
                                    112 	.globl _DPH
                                    113 	.globl _DPL
                                    114 	.globl _SP
                                    115 	.globl _P0
                                    116 	.globl _note
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
                                    229 ; internal ram data
                                    230 ;--------------------------------------------------------
                                    231 	.area DSEG    (DATA)
      000008                        232 _note::
      000008                        233 	.ds 33
                                    234 ;--------------------------------------------------------
                                    235 ; overlayable items in internal ram 
                                    236 ;--------------------------------------------------------
                                    237 ;--------------------------------------------------------
                                    238 ; Stack segment in internal ram 
                                    239 ;--------------------------------------------------------
                                    240 	.area	SSEG
      000029                        241 __start__stack:
      000029                        242 	.ds	1
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
                                    262 ; external ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area XSEG    (XDATA)
                                    265 ;--------------------------------------------------------
                                    266 ; absolute external ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area XABS    (ABS,XDATA)
                                    269 ;--------------------------------------------------------
                                    270 ; external initialized ram data
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
                                    302 ;	./src/main.c:5: char note[33] = {'0', '1', '0', '1', '0', '5', '0', '5', '0', '6', '0', '6', '0', '5', '5', 
      00005F 75 08 30         [24]  303 	mov	_note,#0x30
      000062 75 09 31         [24]  304 	mov	(_note + 0x0001),#0x31
      000065 75 0A 30         [24]  305 	mov	(_note + 0x0002),#0x30
      000068 75 0B 31         [24]  306 	mov	(_note + 0x0003),#0x31
      00006B 75 0C 30         [24]  307 	mov	(_note + 0x0004),#0x30
      00006E 75 0D 35         [24]  308 	mov	(_note + 0x0005),#0x35
      000071 75 0E 30         [24]  309 	mov	(_note + 0x0006),#0x30
      000074 75 0F 35         [24]  310 	mov	(_note + 0x0007),#0x35
      000077 75 10 30         [24]  311 	mov	(_note + 0x0008),#0x30
      00007A 75 11 36         [24]  312 	mov	(_note + 0x0009),#0x36
      00007D 75 12 30         [24]  313 	mov	(_note + 0x000a),#0x30
      000080 75 13 36         [24]  314 	mov	(_note + 0x000b),#0x36
      000083 75 14 30         [24]  315 	mov	(_note + 0x000c),#0x30
      000086 75 15 35         [24]  316 	mov	(_note + 0x000d),#0x35
      000089 75 16 35         [24]  317 	mov	(_note + 0x000e),#0x35
      00008C 75 17 30         [24]  318 	mov	(_note + 0x000f),#0x30
      00008F 75 18 34         [24]  319 	mov	(_note + 0x0010),#0x34
      000092 75 19 30         [24]  320 	mov	(_note + 0x0011),#0x30
      000095 75 1A 34         [24]  321 	mov	(_note + 0x0012),#0x34
      000098 75 1B 30         [24]  322 	mov	(_note + 0x0013),#0x30
      00009B 75 1C 33         [24]  323 	mov	(_note + 0x0014),#0x33
      00009E 75 1D 30         [24]  324 	mov	(_note + 0x0015),#0x30
      0000A1 75 1E 33         [24]  325 	mov	(_note + 0x0016),#0x33
      0000A4 75 1F 30         [24]  326 	mov	(_note + 0x0017),#0x30
      0000A7 75 20 32         [24]  327 	mov	(_note + 0x0018),#0x32
      0000AA 75 21 30         [24]  328 	mov	(_note + 0x0019),#0x30
      0000AD 75 22 32         [24]  329 	mov	(_note + 0x001a),#0x32
      0000B0 75 23 30         [24]  330 	mov	(_note + 0x001b),#0x30
      0000B3 75 24 31         [24]  331 	mov	(_note + 0x001c),#0x31
      0000B6 75 25 31         [24]  332 	mov	(_note + 0x001d),#0x31
      0000B9 75 26 30         [24]  333 	mov	(_note + 0x001e),#0x30
                                    334 	.area GSFINAL (CODE)
      0000BC 02 00 03         [24]  335 	ljmp	__sdcc_program_startup
                                    336 ;--------------------------------------------------------
                                    337 ; Home
                                    338 ;--------------------------------------------------------
                                    339 	.area HOME    (CODE)
                                    340 	.area HOME    (CODE)
      000003                        341 __sdcc_program_startup:
      000003 02 00 BF         [24]  342 	ljmp	_main
                                    343 ;	return from main will return to caller
                                    344 ;--------------------------------------------------------
                                    345 ; code
                                    346 ;--------------------------------------------------------
                                    347 	.area CSEG    (CODE)
                                    348 ;------------------------------------------------------------
                                    349 ;Allocation info for local variables in function 'main'
                                    350 ;------------------------------------------------------------
                                    351 ;x                         Allocated to registers r5 
                                    352 ;i                         Allocated to registers r6 r7 
                                    353 ;j                         Allocated to registers r3 r4 
                                    354 ;tar                       Allocated to registers 
                                    355 ;------------------------------------------------------------
                                    356 ;	./src/main.c:8: int main(void) {
                                    357 ;	-----------------------------------------
                                    358 ;	 function main
                                    359 ;	-----------------------------------------
      0000BF                        360 _main:
                           000007   361 	ar7 = 0x07
                           000006   362 	ar6 = 0x06
                           000005   363 	ar5 = 0x05
                           000004   364 	ar4 = 0x04
                           000003   365 	ar3 = 0x03
                           000002   366 	ar2 = 0x02
                           000001   367 	ar1 = 0x01
                           000000   368 	ar0 = 0x00
                                    369 ;	./src/main.c:16: for (i=0;i<31;i++){
      0000BF 7E 00            [12]  370 	mov	r6,#0x00
      0000C1 7F 00            [12]  371 	mov	r7,#0x00
      0000C3                        372 00153$:
                                    373 ;	./src/main.c:18: x = note[i];
      0000C3 EE               [12]  374 	mov	a,r6
      0000C4 24 08            [12]  375 	add	a,#_note
      0000C6 F9               [12]  376 	mov	r1,a
      0000C7 87 05            [24]  377 	mov	ar5,@r1
                                    378 ;	./src/main.c:20: if (x == '0'){
      0000C9 BD 30 11         [24]  379 	cjne	r5,#0x30,00129$
                                    380 ;	./src/main.c:21: delay_ms(200);
      0000CC 75 82 C8         [24]  381 	mov	dpl,#0xc8
      0000CF C0 07            [24]  382 	push	ar7
      0000D1 C0 06            [24]  383 	push	ar6
      0000D3 12 02 85         [24]  384 	lcall	_delay_ms
      0000D6 D0 06            [24]  385 	pop	ar6
      0000D8 D0 07            [24]  386 	pop	ar7
      0000DA 02 02 6E         [24]  387 	ljmp	00154$
      0000DD                        388 00129$:
                                    389 ;	./src/main.c:22: }else if (x == '1'){
      0000DD BD 31 37         [24]  390 	cjne	r5,#0x31,00126$
                                    391 ;	./src/main.c:23: P1_7 = 0;
                                    392 ;	assignBit
      0000E0 C2 97            [12]  393 	clr	_P1_7
                                    394 ;	./src/main.c:25: for (j=0;j < tar;j++){
      0000E2 7B 00            [12]  395 	mov	r3,#0x00
      0000E4 7C 00            [12]  396 	mov	r4,#0x00
      0000E6                        397 00133$:
      0000E6 C3               [12]  398 	clr	c
      0000E7 EB               [12]  399 	mov	a,r3
      0000E8 94 0B            [12]  400 	subb	a,#0x0b
      0000EA EC               [12]  401 	mov	a,r4
      0000EB 64 80            [12]  402 	xrl	a,#0x80
      0000ED 94 82            [12]  403 	subb	a,#0x82
      0000EF 50 21            [24]  404 	jnc	00101$
                                    405 ;	./src/main.c:26: P3_7 = 1;
                                    406 ;	assignBit
      0000F1 D2 B7            [12]  407 	setb	_P3_7
                                    408 ;	./src/main.c:27: Delay_Do();
      0000F3 C0 07            [24]  409 	push	ar7
      0000F5 C0 06            [24]  410 	push	ar6
      0000F7 C0 04            [24]  411 	push	ar4
      0000F9 C0 03            [24]  412 	push	ar3
      0000FB 12 02 92         [24]  413 	lcall	_Delay_Do
                                    414 ;	./src/main.c:28: P3_7 = 0;
                                    415 ;	assignBit
      0000FE C2 B7            [12]  416 	clr	_P3_7
                                    417 ;	./src/main.c:29: Delay_Do();
      000100 12 02 92         [24]  418 	lcall	_Delay_Do
      000103 D0 03            [24]  419 	pop	ar3
      000105 D0 04            [24]  420 	pop	ar4
      000107 D0 06            [24]  421 	pop	ar6
      000109 D0 07            [24]  422 	pop	ar7
                                    423 ;	./src/main.c:25: for (j=0;j < tar;j++){
      00010B 0B               [12]  424 	inc	r3
      00010C BB 00 D7         [24]  425 	cjne	r3,#0x00,00133$
      00010F 0C               [12]  426 	inc	r4
      000110 80 D4            [24]  427 	sjmp	00133$
      000112                        428 00101$:
                                    429 ;	./src/main.c:30: }P1_7 = 1;
                                    430 ;	assignBit
      000112 D2 97            [12]  431 	setb	_P1_7
      000114 02 02 6E         [24]  432 	ljmp	00154$
      000117                        433 00126$:
                                    434 ;	./src/main.c:31: }else if (x == '2'){
      000117 BD 32 37         [24]  435 	cjne	r5,#0x32,00123$
                                    436 ;	./src/main.c:32: P1_6 = 0;
                                    437 ;	assignBit
      00011A C2 96            [12]  438 	clr	_P1_6
                                    439 ;	./src/main.c:34: for (j = 0;j<tar;j++){
      00011C 7B 00            [12]  440 	mov	r3,#0x00
      00011E 7C 00            [12]  441 	mov	r4,#0x00
      000120                        442 00136$:
      000120 C3               [12]  443 	clr	c
      000121 EB               [12]  444 	mov	a,r3
      000122 94 4C            [12]  445 	subb	a,#0x4c
      000124 EC               [12]  446 	mov	a,r4
      000125 64 80            [12]  447 	xrl	a,#0x80
      000127 94 82            [12]  448 	subb	a,#0x82
      000129 50 21            [24]  449 	jnc	00102$
                                    450 ;	./src/main.c:35: P3_7 = 1;
                                    451 ;	assignBit
      00012B D2 B7            [12]  452 	setb	_P3_7
                                    453 ;	./src/main.c:36: Delay_Re();
      00012D C0 07            [24]  454 	push	ar7
      00012F C0 06            [24]  455 	push	ar6
      000131 C0 04            [24]  456 	push	ar4
      000133 C0 03            [24]  457 	push	ar3
      000135 12 02 A0         [24]  458 	lcall	_Delay_Re
                                    459 ;	./src/main.c:37: P3_7 = 0;
                                    460 ;	assignBit
      000138 C2 B7            [12]  461 	clr	_P3_7
                                    462 ;	./src/main.c:38: Delay_Re();
      00013A 12 02 A0         [24]  463 	lcall	_Delay_Re
      00013D D0 03            [24]  464 	pop	ar3
      00013F D0 04            [24]  465 	pop	ar4
      000141 D0 06            [24]  466 	pop	ar6
      000143 D0 07            [24]  467 	pop	ar7
                                    468 ;	./src/main.c:34: for (j = 0;j<tar;j++){
      000145 0B               [12]  469 	inc	r3
      000146 BB 00 D7         [24]  470 	cjne	r3,#0x00,00136$
      000149 0C               [12]  471 	inc	r4
      00014A 80 D4            [24]  472 	sjmp	00136$
      00014C                        473 00102$:
                                    474 ;	./src/main.c:39: }P1_6 = 1;
                                    475 ;	assignBit
      00014C D2 96            [12]  476 	setb	_P1_6
      00014E 02 02 6E         [24]  477 	ljmp	00154$
      000151                        478 00123$:
                                    479 ;	./src/main.c:40: }else if (x == '3'){
      000151 BD 33 37         [24]  480 	cjne	r5,#0x33,00120$
                                    481 ;	./src/main.c:41: P1_5 = 0;
                                    482 ;	assignBit
      000154 C2 95            [12]  483 	clr	_P1_5
                                    484 ;	./src/main.c:43: for (j=0;j<tar;j++){
      000156 7B 00            [12]  485 	mov	r3,#0x00
      000158 7C 00            [12]  486 	mov	r4,#0x00
      00015A                        487 00139$:
      00015A C3               [12]  488 	clr	c
      00015B EB               [12]  489 	mov	a,r3
      00015C 94 94            [12]  490 	subb	a,#0x94
      00015E EC               [12]  491 	mov	a,r4
      00015F 64 80            [12]  492 	xrl	a,#0x80
      000161 94 82            [12]  493 	subb	a,#0x82
      000163 50 21            [24]  494 	jnc	00103$
                                    495 ;	./src/main.c:44: P3_7 = 1;
                                    496 ;	assignBit
      000165 D2 B7            [12]  497 	setb	_P3_7
                                    498 ;	./src/main.c:45: Delay_Mi();
      000167 C0 07            [24]  499 	push	ar7
      000169 C0 06            [24]  500 	push	ar6
      00016B C0 04            [24]  501 	push	ar4
      00016D C0 03            [24]  502 	push	ar3
      00016F 12 02 AE         [24]  503 	lcall	_Delay_Mi
                                    504 ;	./src/main.c:46: P3_7 = 0;
                                    505 ;	assignBit
      000172 C2 B7            [12]  506 	clr	_P3_7
                                    507 ;	./src/main.c:47: Delay_Mi();
      000174 12 02 AE         [24]  508 	lcall	_Delay_Mi
      000177 D0 03            [24]  509 	pop	ar3
      000179 D0 04            [24]  510 	pop	ar4
      00017B D0 06            [24]  511 	pop	ar6
      00017D D0 07            [24]  512 	pop	ar7
                                    513 ;	./src/main.c:43: for (j=0;j<tar;j++){
      00017F 0B               [12]  514 	inc	r3
      000180 BB 00 D7         [24]  515 	cjne	r3,#0x00,00139$
      000183 0C               [12]  516 	inc	r4
      000184 80 D4            [24]  517 	sjmp	00139$
      000186                        518 00103$:
                                    519 ;	./src/main.c:48: }P1_5 = 1;
                                    520 ;	assignBit
      000186 D2 95            [12]  521 	setb	_P1_5
      000188 02 02 6E         [24]  522 	ljmp	00154$
      00018B                        523 00120$:
                                    524 ;	./src/main.c:49: }else if (x == '4'){
      00018B BD 34 37         [24]  525 	cjne	r5,#0x34,00117$
                                    526 ;	./src/main.c:50: P1_4 = 0;
                                    527 ;	assignBit
      00018E C2 94            [12]  528 	clr	_P1_4
                                    529 ;	./src/main.c:52: for (j=0;j<tar;j++){
      000190 7B 00            [12]  530 	mov	r3,#0x00
      000192 7C 00            [12]  531 	mov	r4,#0x00
      000194                        532 00142$:
      000194 C3               [12]  533 	clr	c
      000195 EB               [12]  534 	mov	a,r3
      000196 94 BB            [12]  535 	subb	a,#0xbb
      000198 EC               [12]  536 	mov	a,r4
      000199 64 80            [12]  537 	xrl	a,#0x80
      00019B 94 82            [12]  538 	subb	a,#0x82
      00019D 50 21            [24]  539 	jnc	00104$
                                    540 ;	./src/main.c:53: P3_7 = 1;
                                    541 ;	assignBit
      00019F D2 B7            [12]  542 	setb	_P3_7
                                    543 ;	./src/main.c:54: Delay_Fa();
      0001A1 C0 07            [24]  544 	push	ar7
      0001A3 C0 06            [24]  545 	push	ar6
      0001A5 C0 04            [24]  546 	push	ar4
      0001A7 C0 03            [24]  547 	push	ar3
      0001A9 12 02 BC         [24]  548 	lcall	_Delay_Fa
                                    549 ;	./src/main.c:55: P3_7 = 0;
                                    550 ;	assignBit
      0001AC C2 B7            [12]  551 	clr	_P3_7
                                    552 ;	./src/main.c:56: Delay_Fa();
      0001AE 12 02 BC         [24]  553 	lcall	_Delay_Fa
      0001B1 D0 03            [24]  554 	pop	ar3
      0001B3 D0 04            [24]  555 	pop	ar4
      0001B5 D0 06            [24]  556 	pop	ar6
      0001B7 D0 07            [24]  557 	pop	ar7
                                    558 ;	./src/main.c:52: for (j=0;j<tar;j++){
      0001B9 0B               [12]  559 	inc	r3
      0001BA BB 00 D7         [24]  560 	cjne	r3,#0x00,00142$
      0001BD 0C               [12]  561 	inc	r4
      0001BE 80 D4            [24]  562 	sjmp	00142$
      0001C0                        563 00104$:
                                    564 ;	./src/main.c:57: }P1_4 = 1;
                                    565 ;	assignBit
      0001C0 D2 94            [12]  566 	setb	_P1_4
      0001C2 02 02 6E         [24]  567 	ljmp	00154$
      0001C5                        568 00117$:
                                    569 ;	./src/main.c:58: }else if (x == '5'){
      0001C5 BD 35 36         [24]  570 	cjne	r5,#0x35,00114$
                                    571 ;	./src/main.c:59: P1_3 = 0;
                                    572 ;	assignBit
      0001C8 C2 93            [12]  573 	clr	_P1_3
                                    574 ;	./src/main.c:61: for (j=0;j<tar;j++){ 
      0001CA 7B 00            [12]  575 	mov	r3,#0x00
      0001CC 7C 00            [12]  576 	mov	r4,#0x00
      0001CE                        577 00145$:
      0001CE C3               [12]  578 	clr	c
      0001CF EB               [12]  579 	mov	a,r3
      0001D0 94 10            [12]  580 	subb	a,#0x10
      0001D2 EC               [12]  581 	mov	a,r4
      0001D3 64 80            [12]  582 	xrl	a,#0x80
      0001D5 94 83            [12]  583 	subb	a,#0x83
      0001D7 50 21            [24]  584 	jnc	00105$
                                    585 ;	./src/main.c:62: P3_7 = 1;
                                    586 ;	assignBit
      0001D9 D2 B7            [12]  587 	setb	_P3_7
                                    588 ;	./src/main.c:63: Delay_So();
      0001DB C0 07            [24]  589 	push	ar7
      0001DD C0 06            [24]  590 	push	ar6
      0001DF C0 04            [24]  591 	push	ar4
      0001E1 C0 03            [24]  592 	push	ar3
      0001E3 12 02 CC         [24]  593 	lcall	_Delay_So
                                    594 ;	./src/main.c:64: P3_7 = 0;
                                    595 ;	assignBit
      0001E6 C2 B7            [12]  596 	clr	_P3_7
                                    597 ;	./src/main.c:65: Delay_So();
      0001E8 12 02 CC         [24]  598 	lcall	_Delay_So
      0001EB D0 03            [24]  599 	pop	ar3
      0001ED D0 04            [24]  600 	pop	ar4
      0001EF D0 06            [24]  601 	pop	ar6
      0001F1 D0 07            [24]  602 	pop	ar7
                                    603 ;	./src/main.c:61: for (j=0;j<tar;j++){ 
      0001F3 0B               [12]  604 	inc	r3
      0001F4 BB 00 D7         [24]  605 	cjne	r3,#0x00,00145$
      0001F7 0C               [12]  606 	inc	r4
      0001F8 80 D4            [24]  607 	sjmp	00145$
      0001FA                        608 00105$:
                                    609 ;	./src/main.c:66: }P1_3 = 1;
                                    610 ;	assignBit
      0001FA D2 93            [12]  611 	setb	_P1_3
      0001FC 80 70            [24]  612 	sjmp	00154$
      0001FE                        613 00114$:
                                    614 ;	./src/main.c:67: }else if (x == '6'){
      0001FE BD 36 36         [24]  615 	cjne	r5,#0x36,00111$
                                    616 ;	./src/main.c:68: P1_2 = 0;
                                    617 ;	assignBit
      000201 C2 92            [12]  618 	clr	_P1_2
                                    619 ;	./src/main.c:70: for (j=0;j<tar;j++){
      000203 7B 00            [12]  620 	mov	r3,#0x00
      000205 7C 00            [12]  621 	mov	r4,#0x00
      000207                        622 00148$:
      000207 C3               [12]  623 	clr	c
      000208 EB               [12]  624 	mov	a,r3
      000209 94 70            [12]  625 	subb	a,#0x70
      00020B EC               [12]  626 	mov	a,r4
      00020C 64 80            [12]  627 	xrl	a,#0x80
      00020E 94 83            [12]  628 	subb	a,#0x83
      000210 50 21            [24]  629 	jnc	00106$
                                    630 ;	./src/main.c:71: P3_7 = 1;
                                    631 ;	assignBit
      000212 D2 B7            [12]  632 	setb	_P3_7
                                    633 ;	./src/main.c:72: Delay_La();
      000214 C0 07            [24]  634 	push	ar7
      000216 C0 06            [24]  635 	push	ar6
      000218 C0 04            [24]  636 	push	ar4
      00021A C0 03            [24]  637 	push	ar3
      00021C 12 02 DA         [24]  638 	lcall	_Delay_La
                                    639 ;	./src/main.c:73: P3_7 = 0;
                                    640 ;	assignBit
      00021F C2 B7            [12]  641 	clr	_P3_7
                                    642 ;	./src/main.c:74: Delay_La();   
      000221 12 02 DA         [24]  643 	lcall	_Delay_La
      000224 D0 03            [24]  644 	pop	ar3
      000226 D0 04            [24]  645 	pop	ar4
      000228 D0 06            [24]  646 	pop	ar6
      00022A D0 07            [24]  647 	pop	ar7
                                    648 ;	./src/main.c:70: for (j=0;j<tar;j++){
      00022C 0B               [12]  649 	inc	r3
      00022D BB 00 D7         [24]  650 	cjne	r3,#0x00,00148$
      000230 0C               [12]  651 	inc	r4
      000231 80 D4            [24]  652 	sjmp	00148$
      000233                        653 00106$:
                                    654 ;	./src/main.c:75: }P1_2 = 1;
                                    655 ;	assignBit
      000233 D2 92            [12]  656 	setb	_P1_2
      000235 80 37            [24]  657 	sjmp	00154$
      000237                        658 00111$:
                                    659 ;	./src/main.c:76: }else if (x == '7'){
      000237 BD 37 34         [24]  660 	cjne	r5,#0x37,00154$
                                    661 ;	./src/main.c:77: P1_1 = 0;
                                    662 ;	assignBit
      00023A C2 91            [12]  663 	clr	_P1_1
                                    664 ;	./src/main.c:79: for (j=0;j<tar;j++){   
      00023C 7C 00            [12]  665 	mov	r4,#0x00
      00023E 7D 00            [12]  666 	mov	r5,#0x00
      000240                        667 00151$:
      000240 C3               [12]  668 	clr	c
      000241 EC               [12]  669 	mov	a,r4
      000242 94 DC            [12]  670 	subb	a,#0xdc
      000244 ED               [12]  671 	mov	a,r5
      000245 64 80            [12]  672 	xrl	a,#0x80
      000247 94 83            [12]  673 	subb	a,#0x83
      000249 50 21            [24]  674 	jnc	00107$
                                    675 ;	./src/main.c:80: P3_7 = 1;
                                    676 ;	assignBit
      00024B D2 B7            [12]  677 	setb	_P3_7
                                    678 ;	./src/main.c:81: Delay_Si();
      00024D C0 07            [24]  679 	push	ar7
      00024F C0 06            [24]  680 	push	ar6
      000251 C0 05            [24]  681 	push	ar5
      000253 C0 04            [24]  682 	push	ar4
      000255 12 02 EA         [24]  683 	lcall	_Delay_Si
                                    684 ;	./src/main.c:82: P3_7 = 0;
                                    685 ;	assignBit
      000258 C2 B7            [12]  686 	clr	_P3_7
                                    687 ;	./src/main.c:83: Delay_Si();  
      00025A 12 02 EA         [24]  688 	lcall	_Delay_Si
      00025D D0 04            [24]  689 	pop	ar4
      00025F D0 05            [24]  690 	pop	ar5
      000261 D0 06            [24]  691 	pop	ar6
      000263 D0 07            [24]  692 	pop	ar7
                                    693 ;	./src/main.c:79: for (j=0;j<tar;j++){   
      000265 0C               [12]  694 	inc	r4
      000266 BC 00 D7         [24]  695 	cjne	r4,#0x00,00151$
      000269 0D               [12]  696 	inc	r5
      00026A 80 D4            [24]  697 	sjmp	00151$
      00026C                        698 00107$:
                                    699 ;	./src/main.c:85: P1_1 = 1;
                                    700 ;	assignBit
      00026C D2 91            [12]  701 	setb	_P1_1
      00026E                        702 00154$:
                                    703 ;	./src/main.c:16: for (i=0;i<31;i++){
      00026E 0E               [12]  704 	inc	r6
      00026F BE 00 01         [24]  705 	cjne	r6,#0x00,00291$
      000272 0F               [12]  706 	inc	r7
      000273                        707 00291$:
      000273 C3               [12]  708 	clr	c
      000274 EE               [12]  709 	mov	a,r6
      000275 94 1F            [12]  710 	subb	a,#0x1f
      000277 EF               [12]  711 	mov	a,r7
      000278 64 80            [12]  712 	xrl	a,#0x80
      00027A 94 80            [12]  713 	subb	a,#0x80
      00027C 50 03            [24]  714 	jnc	00292$
      00027E 02 00 C3         [24]  715 	ljmp	00153$
      000281                        716 00292$:
                                    717 ;	./src/main.c:88: return 0;
      000281 90 00 00         [24]  718 	mov	dptr,#0x0000
                                    719 ;	./src/main.c:89: }
      000284 22               [24]  720 	ret
                                    721 	.area CSEG    (CODE)
                                    722 	.area CONST   (CODE)
                                    723 	.area XINIT   (CODE)
                                    724 	.area CABS    (ABS,CODE)
