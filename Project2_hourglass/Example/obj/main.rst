                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.2 #14374 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _Sendbyte7219_PARM_4
                                     12 	.globl _Sendbyte7219_PARM_3
                                     13 	.globl _Sendbyte7219_PARM_2
                                     14 	.globl _main
                                     15 	.globl _T0_isr
                                     16 	.globl _Shift
                                     17 	.globl _Call
                                     18 	.globl _Sendbyte7219
                                     19 	.globl _Single_ReadI2C
                                     20 	.globl _Single_WriteI2C
                                     21 	.globl _CY
                                     22 	.globl _AC
                                     23 	.globl _F0
                                     24 	.globl _RS1
                                     25 	.globl _RS0
                                     26 	.globl _OV
                                     27 	.globl _F1
                                     28 	.globl _P
                                     29 	.globl _PS
                                     30 	.globl _PT1
                                     31 	.globl _PX1
                                     32 	.globl _PT0
                                     33 	.globl _PX0
                                     34 	.globl _RD
                                     35 	.globl _WR
                                     36 	.globl _T1
                                     37 	.globl _T0
                                     38 	.globl _INT1
                                     39 	.globl _INT0
                                     40 	.globl _TXD
                                     41 	.globl _RXD
                                     42 	.globl _P3_7
                                     43 	.globl _P3_6
                                     44 	.globl _P3_5
                                     45 	.globl _P3_4
                                     46 	.globl _P3_3
                                     47 	.globl _P3_2
                                     48 	.globl _P3_1
                                     49 	.globl _P3_0
                                     50 	.globl _EA
                                     51 	.globl _ES
                                     52 	.globl _ET1
                                     53 	.globl _EX1
                                     54 	.globl _ET0
                                     55 	.globl _EX0
                                     56 	.globl _P2_7
                                     57 	.globl _P2_6
                                     58 	.globl _P2_5
                                     59 	.globl _P2_4
                                     60 	.globl _P2_3
                                     61 	.globl _P2_2
                                     62 	.globl _P2_1
                                     63 	.globl _P2_0
                                     64 	.globl _SM0
                                     65 	.globl _SM1
                                     66 	.globl _SM2
                                     67 	.globl _REN
                                     68 	.globl _TB8
                                     69 	.globl _RB8
                                     70 	.globl _TI
                                     71 	.globl _RI
                                     72 	.globl _P1_7
                                     73 	.globl _P1_6
                                     74 	.globl _P1_5
                                     75 	.globl _P1_4
                                     76 	.globl _P1_3
                                     77 	.globl _P1_2
                                     78 	.globl _P1_1
                                     79 	.globl _P1_0
                                     80 	.globl _TF1
                                     81 	.globl _TR1
                                     82 	.globl _TF0
                                     83 	.globl _TR0
                                     84 	.globl _IE1
                                     85 	.globl _IT1
                                     86 	.globl _IE0
                                     87 	.globl _IT0
                                     88 	.globl _P0_7
                                     89 	.globl _P0_6
                                     90 	.globl _P0_5
                                     91 	.globl _P0_4
                                     92 	.globl _P0_3
                                     93 	.globl _P0_2
                                     94 	.globl _P0_1
                                     95 	.globl _P0_0
                                     96 	.globl _B
                                     97 	.globl _ACC
                                     98 	.globl _PSW
                                     99 	.globl _IP
                                    100 	.globl _P3
                                    101 	.globl _IE
                                    102 	.globl _P2
                                    103 	.globl _SBUF
                                    104 	.globl _SCON
                                    105 	.globl _P1
                                    106 	.globl _TH1
                                    107 	.globl _TH0
                                    108 	.globl _TL1
                                    109 	.globl _TL0
                                    110 	.globl _TMOD
                                    111 	.globl _TCON
                                    112 	.globl _PCON
                                    113 	.globl _DPH
                                    114 	.globl _DPL
                                    115 	.globl _SP
                                    116 	.globl _P0
                                    117 	.globl _ud
                                    118 	.globl _cnt
                                    119 	.globl _accel
                                    120 	.globl _m
                                    121 	.globl _m_1
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
      000022                        251 _m_1::
      000022                        252 	.ds 20
      000036                        253 _m::
      000036                        254 	.ds 20
      00004A                        255 _accel::
      00004A                        256 	.ds 2
      00004C                        257 _cnt::
      00004C                        258 	.ds 2
      00004E                        259 _ud::
      00004E                        260 	.ds 2
                                    261 ;--------------------------------------------------------
                                    262 ; overlayable items in internal ram
                                    263 ;--------------------------------------------------------
                                    264 	.area	OSEG    (OVR,DATA)
      00000B                        265 _Sendbyte7219_PARM_2:
      00000B                        266 	.ds 1
      00000C                        267 _Sendbyte7219_PARM_3:
      00000C                        268 	.ds 1
      00000D                        269 _Sendbyte7219_PARM_4:
      00000D                        270 	.ds 1
                                    271 	.area	OSEG    (OVR,DATA)
                                    272 ;--------------------------------------------------------
                                    273 ; Stack segment in internal ram
                                    274 ;--------------------------------------------------------
                                    275 	.area SSEG
      000050                        276 __start__stack:
      000050                        277 	.ds	1
                                    278 
                                    279 ;--------------------------------------------------------
                                    280 ; indirectly addressable internal ram data
                                    281 ;--------------------------------------------------------
                                    282 	.area ISEG    (DATA)
                                    283 ;--------------------------------------------------------
                                    284 ; absolute internal ram data
                                    285 ;--------------------------------------------------------
                                    286 	.area IABS    (ABS,DATA)
                                    287 	.area IABS    (ABS,DATA)
                                    288 ;--------------------------------------------------------
                                    289 ; bit data
                                    290 ;--------------------------------------------------------
                                    291 	.area BSEG    (BIT)
                                    292 ;--------------------------------------------------------
                                    293 ; paged external ram data
                                    294 ;--------------------------------------------------------
                                    295 	.area PSEG    (PAG,XDATA)
                                    296 ;--------------------------------------------------------
                                    297 ; uninitialized external ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area XSEG    (XDATA)
                                    300 ;--------------------------------------------------------
                                    301 ; absolute external ram data
                                    302 ;--------------------------------------------------------
                                    303 	.area XABS    (ABS,XDATA)
                                    304 ;--------------------------------------------------------
                                    305 ; initialized external ram data
                                    306 ;--------------------------------------------------------
                                    307 	.area XISEG   (XDATA)
                                    308 	.area HOME    (CODE)
                                    309 	.area GSINIT0 (CODE)
                                    310 	.area GSINIT1 (CODE)
                                    311 	.area GSINIT2 (CODE)
                                    312 	.area GSINIT3 (CODE)
                                    313 	.area GSINIT4 (CODE)
                                    314 	.area GSINIT5 (CODE)
                                    315 	.area GSINIT  (CODE)
                                    316 	.area GSFINAL (CODE)
                                    317 	.area CSEG    (CODE)
                                    318 ;--------------------------------------------------------
                                    319 ; interrupt vector
                                    320 ;--------------------------------------------------------
                                    321 	.area HOME    (CODE)
      000000                        322 __interrupt_vect:
      000000 02 00 11         [24]  323 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  324 	reti
      000004                        325 	.ds	7
      00000B 02 01 7F         [24]  326 	ljmp	_T0_isr
                                    327 ;--------------------------------------------------------
                                    328 ; global & static initialisations
                                    329 ;--------------------------------------------------------
                                    330 	.area HOME    (CODE)
                                    331 	.area GSINIT  (CODE)
                                    332 	.area GSFINAL (CODE)
                                    333 	.area GSINIT  (CODE)
                                    334 	.globl __sdcc_gsinit_startup
                                    335 	.globl __sdcc_program_startup
                                    336 	.globl __start__stack
                                    337 	.globl __mcs51_genXINIT
                                    338 	.globl __mcs51_genXRAMCLEAR
                                    339 	.globl __mcs51_genRAMCLEAR
                                    340 ;	./src/main.c:29: unsigned char m_1[20], m[20] = {0,255,255,255,255,255,255,255,255};
      00006A 75 36 00         [24]  341 	mov	_m,#0x00
      00006D 75 37 FF         [24]  342 	mov	(_m + 0x0001),#0xff
      000070 75 38 FF         [24]  343 	mov	(_m + 0x0002),#0xff
      000073 75 39 FF         [24]  344 	mov	(_m + 0x0003),#0xff
      000076 75 3A FF         [24]  345 	mov	(_m + 0x0004),#0xff
      000079 75 3B FF         [24]  346 	mov	(_m + 0x0005),#0xff
      00007C 75 3C FF         [24]  347 	mov	(_m + 0x0006),#0xff
      00007F 75 3D FF         [24]  348 	mov	(_m + 0x0007),#0xff
      000082 75 3E FF         [24]  349 	mov	(_m + 0x0008),#0xff
                                    350 ;	./src/main.c:30: int accel, cnt = 0, ud;
      000085 E4               [12]  351 	clr	a
      000086 F5 4C            [12]  352 	mov	_cnt,a
      000088 F5 4D            [12]  353 	mov	(_cnt + 1),a
                                    354 	.area GSFINAL (CODE)
      00008A 02 00 0E         [24]  355 	ljmp	__sdcc_program_startup
                                    356 ;--------------------------------------------------------
                                    357 ; Home
                                    358 ;--------------------------------------------------------
                                    359 	.area HOME    (CODE)
                                    360 	.area HOME    (CODE)
      00000E                        361 __sdcc_program_startup:
      00000E 02 03 E1         [24]  362 	ljmp	_main
                                    363 ;	return from main will return to caller
                                    364 ;--------------------------------------------------------
                                    365 ; code
                                    366 ;--------------------------------------------------------
                                    367 	.area CSEG    (CODE)
                                    368 ;------------------------------------------------------------
                                    369 ;Allocation info for local variables in function 'Sendbyte7219'
                                    370 ;------------------------------------------------------------
                                    371 ;dat_1                     Allocated with name '_Sendbyte7219_PARM_2'
                                    372 ;add_2                     Allocated with name '_Sendbyte7219_PARM_3'
                                    373 ;dat_2                     Allocated with name '_Sendbyte7219_PARM_4'
                                    374 ;add_1                     Allocated to registers r7 
                                    375 ;i                         Allocated to registers r5 
                                    376 ;j                         Allocated to registers r6 
                                    377 ;------------------------------------------------------------
                                    378 ;	./src/main.c:37: void Sendbyte7219(char add_1, char dat_1, char add_2, char dat_2) {
                                    379 ;	-----------------------------------------
                                    380 ;	 function Sendbyte7219
                                    381 ;	-----------------------------------------
      00008D                        382 _Sendbyte7219:
                           000007   383 	ar7 = 0x07
                           000006   384 	ar6 = 0x06
                           000005   385 	ar5 = 0x05
                           000004   386 	ar4 = 0x04
                           000003   387 	ar3 = 0x03
                           000002   388 	ar2 = 0x02
                           000001   389 	ar1 = 0x01
                           000000   390 	ar0 = 0x00
      00008D AF 82            [24]  391 	mov	r7,dpl
                                    392 ;	./src/main.c:40: LOAD = 0;
                                    393 ;	assignBit
      00008F C2 A1            [12]  394 	clr	_P2_1
                                    395 ;	./src/main.c:41: for (j = 0; j < 4; j++) {
      000091 7E 00            [12]  396 	mov	r6,#0x00
      000093                        397 00105$:
                                    398 ;	./src/main.c:42: for (i = 128; i > 0; i >>= 1) {
      000093 7D 80            [12]  399 	mov	r5,#0x80
      000095                        400 00103$:
                                    401 ;	./src/main.c:43: CLK = 0;
                                    402 ;	assignBit
      000095 C2 A0            [12]  403 	clr	_P2_0
                                    404 ;	./src/main.c:44: DIN = (add_2 & i);
      000097 ED               [12]  405 	mov	a,r5
      000098 55 0C            [12]  406 	anl	a,_Sendbyte7219_PARM_3
                                    407 ;	assignBit
      00009A 24 FF            [12]  408 	add	a,#0xff
      00009C 92 A2            [24]  409 	mov	_P2_2,c
                                    410 ;	./src/main.c:45: CLK = 1;
                                    411 ;	assignBit
      00009E D2 A0            [12]  412 	setb	_P2_0
                                    413 ;	./src/main.c:42: for (i = 128; i > 0; i >>= 1) {
      0000A0 ED               [12]  414 	mov	a,r5
      0000A1 C3               [12]  415 	clr	c
      0000A2 13               [12]  416 	rrc	a
      0000A3 FD               [12]  417 	mov	r5,a
      0000A4 70 EF            [24]  418 	jnz	00103$
                                    419 ;	./src/main.c:47: add_2 = dat_2;
      0000A6 85 0D 0C         [24]  420 	mov	_Sendbyte7219_PARM_3,_Sendbyte7219_PARM_4
                                    421 ;	./src/main.c:48: dat_2 = add_1;
      0000A9 8F 0D            [24]  422 	mov	_Sendbyte7219_PARM_4,r7
                                    423 ;	./src/main.c:49: add_1 = dat_1;
      0000AB AF 0B            [24]  424 	mov	r7,_Sendbyte7219_PARM_2
                                    425 ;	./src/main.c:41: for (j = 0; j < 4; j++) {
      0000AD 0E               [12]  426 	inc	r6
      0000AE BE 04 00         [24]  427 	cjne	r6,#0x04,00137$
      0000B1                        428 00137$:
      0000B1 40 E0            [24]  429 	jc	00105$
                                    430 ;	./src/main.c:52: LOAD = 1;
                                    431 ;	assignBit
      0000B3 D2 A1            [12]  432 	setb	_P2_1
                                    433 ;	./src/main.c:53: }
      0000B5 22               [24]  434 	ret
                                    435 ;------------------------------------------------------------
                                    436 ;Allocation info for local variables in function 'Call'
                                    437 ;------------------------------------------------------------
                                    438 ;j                         Allocated to registers r6 r7 
                                    439 ;k                         Allocated to registers r4 r5 
                                    440 ;------------------------------------------------------------
                                    441 ;	./src/main.c:55: void Call(void) {
                                    442 ;	-----------------------------------------
                                    443 ;	 function Call
                                    444 ;	-----------------------------------------
      0000B6                        445 _Call:
                                    446 ;	./src/main.c:58: for (j = 0; j < 100; j++) { 
      0000B6 7E 00            [12]  447 	mov	r6,#0x00
      0000B8 7F 00            [12]  448 	mov	r7,#0x00
      0000BA                        449 00110$:
                                    450 ;	./src/main.c:59: P3_7 = 0; 
                                    451 ;	assignBit
      0000BA C2 B7            [12]  452 	clr	_P3_7
                                    453 ;	./src/main.c:60: for (k = 0; k < 100; k++);
      0000BC 7C 64            [12]  454 	mov	r4,#0x64
      0000BE 7D 00            [12]  455 	mov	r5,#0x00
      0000C0                        456 00106$:
      0000C0 1C               [12]  457 	dec	r4
      0000C1 BC FF 01         [24]  458 	cjne	r4,#0xff,00147$
      0000C4 1D               [12]  459 	dec	r5
      0000C5                        460 00147$:
      0000C5 EC               [12]  461 	mov	a,r4
      0000C6 4D               [12]  462 	orl	a,r5
      0000C7 70 F7            [24]  463 	jnz	00106$
                                    464 ;	./src/main.c:61: P3_7 = 1; 
                                    465 ;	assignBit
      0000C9 D2 B7            [12]  466 	setb	_P3_7
                                    467 ;	./src/main.c:62: for (k = 0; k < 100; k++);
      0000CB 7C 64            [12]  468 	mov	r4,#0x64
      0000CD 7D 00            [12]  469 	mov	r5,#0x00
      0000CF                        470 00109$:
      0000CF 1C               [12]  471 	dec	r4
      0000D0 BC FF 01         [24]  472 	cjne	r4,#0xff,00149$
      0000D3 1D               [12]  473 	dec	r5
      0000D4                        474 00149$:
      0000D4 EC               [12]  475 	mov	a,r4
      0000D5 4D               [12]  476 	orl	a,r5
      0000D6 70 F7            [24]  477 	jnz	00109$
                                    478 ;	./src/main.c:58: for (j = 0; j < 100; j++) { 
      0000D8 0E               [12]  479 	inc	r6
      0000D9 BE 00 01         [24]  480 	cjne	r6,#0x00,00151$
      0000DC 0F               [12]  481 	inc	r7
      0000DD                        482 00151$:
      0000DD C3               [12]  483 	clr	c
      0000DE EE               [12]  484 	mov	a,r6
      0000DF 94 64            [12]  485 	subb	a,#0x64
      0000E1 EF               [12]  486 	mov	a,r7
      0000E2 64 80            [12]  487 	xrl	a,#0x80
      0000E4 94 80            [12]  488 	subb	a,#0x80
      0000E6 40 D2            [24]  489 	jc	00110$
                                    490 ;	./src/main.c:64: }
      0000E8 22               [24]  491 	ret
                                    492 ;------------------------------------------------------------
                                    493 ;Allocation info for local variables in function 'Shift'
                                    494 ;------------------------------------------------------------
                                    495 ;i                         Allocated to registers r6 
                                    496 ;------------------------------------------------------------
                                    497 ;	./src/main.c:66: void Shift(void) {
                                    498 ;	-----------------------------------------
                                    499 ;	 function Shift
                                    500 ;	-----------------------------------------
      0000E9                        501 _Shift:
                                    502 ;	./src/main.c:69: for (i = (17 * ud + 19) >> 1; ud != 0 && i != (-19 * ud + 19)>>1; i -= ud) {
      0000E9 85 4E 0B         [24]  503 	mov	__mulint_PARM_2,_ud
      0000EC 85 4F 0C         [24]  504 	mov	(__mulint_PARM_2 + 1),(_ud + 1)
      0000EF 90 00 11         [24]  505 	mov	dptr,#0x0011
      0000F2 12 04 FC         [24]  506 	lcall	__mulint
      0000F5 E5 82            [12]  507 	mov	a,dpl
      0000F7 85 83 F0         [24]  508 	mov	b,dph
      0000FA 24 13            [12]  509 	add	a,#0x13
      0000FC FE               [12]  510 	mov	r6,a
      0000FD E4               [12]  511 	clr	a
      0000FE 35 F0            [12]  512 	addc	a,b
      000100 A2 E7            [12]  513 	mov	c,acc.7
      000102 13               [12]  514 	rrc	a
      000103 CE               [12]  515 	xch	a,r6
      000104 13               [12]  516 	rrc	a
      000105 CE               [12]  517 	xch	a,r6
      000106 FF               [12]  518 	mov	r7,a
      000107                        519 00107$:
      000107 E5 4E            [12]  520 	mov	a,_ud
      000109 45 4F            [12]  521 	orl	a,(_ud + 1)
      00010B 70 01            [24]  522 	jnz	00135$
      00010D 22               [24]  523 	ret
      00010E                        524 00135$:
      00010E 85 4E 0B         [24]  525 	mov	__mulint_PARM_2,_ud
      000111 85 4F 0C         [24]  526 	mov	(__mulint_PARM_2 + 1),(_ud + 1)
      000114 90 FF ED         [24]  527 	mov	dptr,#0xffed
      000117 C0 06            [24]  528 	push	ar6
      000119 12 04 FC         [24]  529 	lcall	__mulint
      00011C E5 82            [12]  530 	mov	a,dpl
      00011E 85 83 F0         [24]  531 	mov	b,dph
      000121 D0 06            [24]  532 	pop	ar6
      000123 24 13            [12]  533 	add	a,#0x13
      000125 FD               [12]  534 	mov	r5,a
      000126 E4               [12]  535 	clr	a
      000127 35 F0            [12]  536 	addc	a,b
      000129 A2 E7            [12]  537 	mov	c,acc.7
      00012B 13               [12]  538 	rrc	a
      00012C CD               [12]  539 	xch	a,r5
      00012D 13               [12]  540 	rrc	a
      00012E CD               [12]  541 	xch	a,r5
      00012F FF               [12]  542 	mov	r7,a
      000130 8E 03            [24]  543 	mov	ar3,r6
      000132 7C 00            [12]  544 	mov	r4,#0x00
      000134 EB               [12]  545 	mov	a,r3
      000135 B5 05 05         [24]  546 	cjne	a,ar5,00136$
      000138 EC               [12]  547 	mov	a,r4
      000139 B5 07 01         [24]  548 	cjne	a,ar7,00136$
      00013C 22               [24]  549 	ret
      00013D                        550 00136$:
                                    551 ;	./src/main.c:70: if (i > 10 || i < 9) { 
      00013D EE               [12]  552 	mov	a,r6
      00013E 24 F5            [12]  553 	add	a,#0xff - 0x0a
      000140 40 05            [24]  554 	jc	00101$
      000142 BE 09 00         [24]  555 	cjne	r6,#0x09,00138$
      000145                        556 00138$:
      000145 50 2D            [24]  557 	jnc	00108$
      000147                        558 00101$:
                                    559 ;	./src/main.c:71: m_1[i] = m_1[i + ud] & m[i];
      000147 EE               [12]  560 	mov	a,r6
      000148 24 22            [12]  561 	add	a,#_m_1
      00014A F9               [12]  562 	mov	r1,a
      00014B AF 4E            [24]  563 	mov	r7,_ud
      00014D 8E 05            [24]  564 	mov	ar5,r6
      00014F EF               [12]  565 	mov	a,r7
      000150 2D               [12]  566 	add	a,r5
      000151 24 22            [12]  567 	add	a,#_m_1
      000153 F8               [12]  568 	mov	r0,a
      000154 86 07            [24]  569 	mov	ar7,@r0
      000156 EE               [12]  570 	mov	a,r6
      000157 24 36            [12]  571 	add	a,#_m
      000159 F8               [12]  572 	mov	r0,a
      00015A E6               [12]  573 	mov	a,@r0
      00015B 5F               [12]  574 	anl	a,r7
      00015C F7               [12]  575 	mov	@r1,a
                                    576 ;	./src/main.c:72: m[i] = (m_1[i + ud] & m[i]) | m[i - ud]; 
      00015D E5 4E            [12]  577 	mov	a,_ud
      00015F FF               [12]  578 	mov	r7,a
      000160 2D               [12]  579 	add	a,r5
      000161 24 22            [12]  580 	add	a,#_m_1
      000163 F9               [12]  581 	mov	r1,a
      000164 87 04            [24]  582 	mov	ar4,@r1
      000166 E6               [12]  583 	mov	a,@r0
      000167 FB               [12]  584 	mov	r3,a
      000168 52 04            [12]  585 	anl	ar4,a
      00016A ED               [12]  586 	mov	a,r5
      00016B C3               [12]  587 	clr	c
      00016C 9F               [12]  588 	subb	a,r7
      00016D 24 36            [12]  589 	add	a,#_m
      00016F F9               [12]  590 	mov	r1,a
      000170 E7               [12]  591 	mov	a,@r1
      000171 FF               [12]  592 	mov	r7,a
      000172 4C               [12]  593 	orl	a,r4
      000173 F6               [12]  594 	mov	@r0,a
      000174                        595 00108$:
                                    596 ;	./src/main.c:69: for (i = (17 * ud + 19) >> 1; ud != 0 && i != (-19 * ud + 19)>>1; i -= ud) {
      000174 AF 4E            [24]  597 	mov	r7,_ud
      000176 8E 05            [24]  598 	mov	ar5,r6
      000178 ED               [12]  599 	mov	a,r5
      000179 C3               [12]  600 	clr	c
      00017A 9F               [12]  601 	subb	a,r7
      00017B FE               [12]  602 	mov	r6,a
                                    603 ;	./src/main.c:75: }
      00017C 02 01 07         [24]  604 	ljmp	00107$
                                    605 ;------------------------------------------------------------
                                    606 ;Allocation info for local variables in function 'T0_isr'
                                    607 ;------------------------------------------------------------
                                    608 ;i                         Allocated to registers r7 
                                    609 ;j                         Allocated to registers r6 
                                    610 ;------------------------------------------------------------
                                    611 ;	./src/main.c:77: void T0_isr(void) __interrupt (1) {
                                    612 ;	-----------------------------------------
                                    613 ;	 function T0_isr
                                    614 ;	-----------------------------------------
      00017F                        615 _T0_isr:
      00017F C0 21            [24]  616 	push	bits
      000181 C0 E0            [24]  617 	push	acc
      000183 C0 F0            [24]  618 	push	b
      000185 C0 82            [24]  619 	push	dpl
      000187 C0 83            [24]  620 	push	dph
      000189 C0 07            [24]  621 	push	(0+7)
      00018B C0 06            [24]  622 	push	(0+6)
      00018D C0 05            [24]  623 	push	(0+5)
      00018F C0 04            [24]  624 	push	(0+4)
      000191 C0 03            [24]  625 	push	(0+3)
      000193 C0 02            [24]  626 	push	(0+2)
      000195 C0 01            [24]  627 	push	(0+1)
      000197 C0 00            [24]  628 	push	(0+0)
      000199 C0 D0            [24]  629 	push	psw
      00019B 75 D0 00         [24]  630 	mov	psw,#0x00
                                    631 ;	./src/main.c:80: TH0 = (65536 - 50000) / 256;
      00019E 75 8C 3C         [24]  632 	mov	_TH0,#0x3c
                                    633 ;	./src/main.c:81: TL0 = (65536 - 50000) % 256;
      0001A1 75 8A B0         [24]  634 	mov	_TL0,#0xb0
                                    635 ;	./src/main.c:83: accel = (int)(((int)Single_ReadI2C(208, 0x3D) << 8) | Single_ReadI2C(208, 0x3E));
      0001A4 75 0A 3D         [24]  636 	mov	_Single_ReadI2C_PARM_2,#0x3d
      0001A7 75 82 D0         [24]  637 	mov	dpl,#0xd0
      0001AA 12 04 C2         [24]  638 	lcall	_Single_ReadI2C
      0001AD AE 82            [24]  639 	mov	r6,dpl
      0001AF 7F 00            [12]  640 	mov	r7,#0x00
      0001B1 75 0A 3E         [24]  641 	mov	_Single_ReadI2C_PARM_2,#0x3e
      0001B4 75 82 D0         [24]  642 	mov	dpl,#0xd0
      0001B7 C0 07            [24]  643 	push	ar7
      0001B9 C0 06            [24]  644 	push	ar6
      0001BB 12 04 C2         [24]  645 	lcall	_Single_ReadI2C
      0001BE AD 82            [24]  646 	mov	r5,dpl
      0001C0 D0 06            [24]  647 	pop	ar6
      0001C2 D0 07            [24]  648 	pop	ar7
      0001C4 7C 00            [12]  649 	mov	r4,#0x00
      0001C6 ED               [12]  650 	mov	a,r5
      0001C7 4F               [12]  651 	orl	a,r7
      0001C8 F5 4A            [12]  652 	mov	_accel,a
      0001CA EC               [12]  653 	mov	a,r4
      0001CB 4E               [12]  654 	orl	a,r6
      0001CC F5 4B            [12]  655 	mov	(_accel + 1),a
                                    656 ;	./src/main.c:84: ud = 0;
      0001CE E4               [12]  657 	clr	a
      0001CF F5 4E            [12]  658 	mov	_ud,a
      0001D1 F5 4F            [12]  659 	mov	(_ud + 1),a
                                    660 ;	./src/main.c:85: if (accel > 5000) {
      0001D3 C3               [12]  661 	clr	c
      0001D4 74 88            [12]  662 	mov	a,#0x88
      0001D6 95 4A            [12]  663 	subb	a,_accel
      0001D8 74 93            [12]  664 	mov	a,#(0x13 ^ 0x80)
      0001DA 85 4B F0         [24]  665 	mov	b,(_accel + 1)
      0001DD 63 F0 80         [24]  666 	xrl	b,#0x80
      0001E0 95 F0            [12]  667 	subb	a,b
      0001E2 50 12            [24]  668 	jnc	00102$
                                    669 ;	./src/main.c:86: ud = 1;
      0001E4 75 4E 01         [24]  670 	mov	_ud,#0x01
      0001E7 75 4F 00         [24]  671 	mov	(_ud + 1),#0x00
                                    672 ;	./src/main.c:87: m_1[9] = m_1[19] = 255;
      0001EA 75 35 FF         [24]  673 	mov	(_m_1 + 0x0013),#0xff
      0001ED 75 2B FF         [24]  674 	mov	(_m_1 + 0x0009),#0xff
                                    675 ;	./src/main.c:88: m[0] = m[10] = 0;
      0001F0 75 40 00         [24]  676 	mov	(_m + 0x000a),#0x00
      0001F3 75 36 00         [24]  677 	mov	_m,#0x00
      0001F6                        678 00102$:
                                    679 ;	./src/main.c:90: if (accel < -5000) {
      0001F6 C3               [12]  680 	clr	c
      0001F7 E5 4A            [12]  681 	mov	a,_accel
      0001F9 94 78            [12]  682 	subb	a,#0x78
      0001FB E5 4B            [12]  683 	mov	a,(_accel + 1)
      0001FD 64 80            [12]  684 	xrl	a,#0x80
      0001FF 94 6C            [12]  685 	subb	a,#0x6c
      000201 50 12            [24]  686 	jnc	00104$
                                    687 ;	./src/main.c:91: ud = -1;
      000203 75 4E FF         [24]  688 	mov	_ud,#0xff
      000206 75 4F FF         [24]  689 	mov	(_ud + 1),#0xff
                                    690 ;	./src/main.c:92: m[9] = m[19] = 0;
      000209 75 49 00         [24]  691 	mov	(_m + 0x0013),#0x00
      00020C 75 3F 00         [24]  692 	mov	(_m + 0x0009),#0x00
                                    693 ;	./src/main.c:93: m_1[0] = m_1[10] = 255;
      00020F 75 2C FF         [24]  694 	mov	(_m_1 + 0x000a),#0xff
      000212 75 22 FF         [24]  695 	mov	_m_1,#0xff
      000215                        696 00104$:
                                    697 ;	./src/main.c:95: if (cnt % 10 == 0) {
      000215 75 0B 0A         [24]  698 	mov	__modsint_PARM_2,#0x0a
      000218 75 0C 00         [24]  699 	mov	(__modsint_PARM_2 + 1),#0x00
      00021B 85 4C 82         [24]  700 	mov	dpl,_cnt
      00021E 85 4D 83         [24]  701 	mov	dph,(_cnt + 1)
      000221 12 05 66         [24]  702 	lcall	__modsint
      000224 E5 82            [12]  703 	mov	a,dpl
      000226 85 83 F0         [24]  704 	mov	b,dph
      000229 45 F0            [12]  705 	orl	a,b
      00022B 60 03            [24]  706 	jz	00340$
      00022D 02 03 8A         [24]  707 	ljmp	00131$
      000230                        708 00340$:
                                    709 ;	./src/main.c:96: if (cnt % 40 == 0 && m[8] << 7 && ud == 1) {m[8] -= 1; m[11] += 128;}
      000230 75 0B 28         [24]  710 	mov	__modsint_PARM_2,#0x28
      000233 75 0C 00         [24]  711 	mov	(__modsint_PARM_2 + 1),#0x00
      000236 85 4C 82         [24]  712 	mov	dpl,_cnt
      000239 85 4D 83         [24]  713 	mov	dph,(_cnt + 1)
      00023C 12 05 66         [24]  714 	lcall	__modsint
      00023F E5 82            [12]  715 	mov	a,dpl
      000241 85 83 F0         [24]  716 	mov	b,dph
      000244 45 F0            [12]  717 	orl	a,b
      000246 70 2A            [24]  718 	jnz	00106$
      000248 AF 3E            [24]  719 	mov	r7,(_m + 0x0008)
      00024A 8F 05            [24]  720 	mov	ar5,r7
      00024C E4               [12]  721 	clr	a
      00024D 54 01            [12]  722 	anl	a,#0x01
      00024F A2 E0            [12]  723 	mov	c,acc.0
      000251 CD               [12]  724 	xch	a,r5
      000252 13               [12]  725 	rrc	a
      000253 CD               [12]  726 	xch	a,r5
      000254 13               [12]  727 	rrc	a
      000255 CD               [12]  728 	xch	a,r5
      000256 FE               [12]  729 	mov	r6,a
      000257 4D               [12]  730 	orl	a,r5
      000258 60 18            [24]  731 	jz	00106$
      00025A 74 01            [12]  732 	mov	a,#0x01
      00025C B5 4E 06         [24]  733 	cjne	a,_ud,00343$
      00025F 14               [12]  734 	dec	a
      000260 B5 4F 02         [24]  735 	cjne	a,(_ud + 1),00343$
      000263 80 02            [24]  736 	sjmp	00344$
      000265                        737 00343$:
      000265 80 0B            [24]  738 	sjmp	00106$
      000267                        739 00344$:
      000267 EF               [12]  740 	mov	a,r7
      000268 14               [12]  741 	dec	a
      000269 F5 3E            [12]  742 	mov	(_m + 0x0008),a
      00026B AF 41            [24]  743 	mov	r7,(_m + 0x000b)
      00026D 74 80            [12]  744 	mov	a,#0x80
      00026F 2F               [12]  745 	add	a,r7
      000270 F5 41            [12]  746 	mov	(_m + 0x000b),a
      000272                        747 00106$:
                                    748 ;	./src/main.c:97: if (cnt % 40 == 0 && m[11] >> 7 && ud == -1) {m[11] -= 128; m[8] += 1;}
      000272 75 0B 28         [24]  749 	mov	__modsint_PARM_2,#0x28
      000275 75 0C 00         [24]  750 	mov	(__modsint_PARM_2 + 1),#0x00
      000278 85 4C 82         [24]  751 	mov	dpl,_cnt
      00027B 85 4D 83         [24]  752 	mov	dph,(_cnt + 1)
      00027E 12 05 66         [24]  753 	lcall	__modsint
      000281 E5 82            [12]  754 	mov	a,dpl
      000283 85 83 F0         [24]  755 	mov	b,dph
      000286 45 F0            [12]  756 	orl	a,b
      000288 70 1C            [24]  757 	jnz	00163$
      00028A E5 41            [12]  758 	mov	a,(_m + 0x000b)
      00028C FF               [12]  759 	mov	r7,a
      00028D 23               [12]  760 	rl	a
      00028E 54 01            [12]  761 	anl	a,#0x01
      000290 FE               [12]  762 	mov	r6,a
      000291 60 13            [24]  763 	jz	00163$
      000293 74 FF            [12]  764 	mov	a,#0xff
      000295 B5 4E 0E         [24]  765 	cjne	a,_ud,00163$
      000298 B5 4F 0B         [24]  766 	cjne	a,(_ud + 1),00163$
      00029B EF               [12]  767 	mov	a,r7
      00029C 24 80            [12]  768 	add	a,#0x80
      00029E F5 41            [12]  769 	mov	(_m + 0x000b),a
      0002A0 E5 3E            [12]  770 	mov	a,(_m + 0x0008)
      0002A2 FF               [12]  771 	mov	r7,a
      0002A3 04               [12]  772 	inc	a
      0002A4 F5 3E            [12]  773 	mov	(_m + 0x0008),a
                                    774 ;	./src/main.c:98: for (i = 1; i < 9; i++) Sendbyte7219(i, m[i], i, m[i + 10]);
      0002A6                        775 00163$:
      0002A6 7F 01            [12]  776 	mov	r7,#0x01
      0002A8                        777 00138$:
      0002A8 EF               [12]  778 	mov	a,r7
      0002A9 24 36            [12]  779 	add	a,#_m
      0002AB F9               [12]  780 	mov	r1,a
      0002AC 87 0B            [24]  781 	mov	_Sendbyte7219_PARM_2,@r1
      0002AE 8F 06            [24]  782 	mov	ar6,r7
      0002B0 74 0A            [12]  783 	mov	a,#0x0a
      0002B2 2E               [12]  784 	add	a,r6
      0002B3 24 36            [12]  785 	add	a,#_m
      0002B5 F9               [12]  786 	mov	r1,a
      0002B6 87 0D            [24]  787 	mov	_Sendbyte7219_PARM_4,@r1
      0002B8 8F 0C            [24]  788 	mov	_Sendbyte7219_PARM_3,r7
      0002BA 8F 82            [24]  789 	mov	dpl,r7
      0002BC C0 07            [24]  790 	push	ar7
      0002BE 12 00 8D         [24]  791 	lcall	_Sendbyte7219
      0002C1 D0 07            [24]  792 	pop	ar7
      0002C3 0F               [12]  793 	inc	r7
      0002C4 BF 09 00         [24]  794 	cjne	r7,#0x09,00349$
      0002C7                        795 00349$:
      0002C7 40 DF            [24]  796 	jc	00138$
                                    797 ;	./src/main.c:99: if (cnt % 30 == 0 || cnt % 50 == 0) Shift();
      0002C9 75 0B 1E         [24]  798 	mov	__modsint_PARM_2,#0x1e
      0002CC 75 0C 00         [24]  799 	mov	(__modsint_PARM_2 + 1),#0x00
      0002CF 85 4C 82         [24]  800 	mov	dpl,_cnt
      0002D2 85 4D 83         [24]  801 	mov	dph,(_cnt + 1)
      0002D5 12 05 66         [24]  802 	lcall	__modsint
      0002D8 E5 82            [12]  803 	mov	a,dpl
      0002DA 85 83 F0         [24]  804 	mov	b,dph
      0002DD 45 F0            [12]  805 	orl	a,b
      0002DF 60 18            [24]  806 	jz	00114$
      0002E1 75 0B 32         [24]  807 	mov	__modsint_PARM_2,#0x32
      0002E4 75 0C 00         [24]  808 	mov	(__modsint_PARM_2 + 1),#0x00
      0002E7 85 4C 82         [24]  809 	mov	dpl,_cnt
      0002EA 85 4D 83         [24]  810 	mov	dph,(_cnt + 1)
      0002ED 12 05 66         [24]  811 	lcall	__modsint
      0002F0 E5 82            [12]  812 	mov	a,dpl
      0002F2 85 83 F0         [24]  813 	mov	b,dph
      0002F5 45 F0            [12]  814 	orl	a,b
      0002F7 70 03            [24]  815 	jnz	00173$
      0002F9                        816 00114$:
      0002F9 12 00 E9         [24]  817 	lcall	_Shift
                                    818 ;	./src/main.c:100: for (i = 1; i < 19; i++) {
      0002FC                        819 00173$:
      0002FC 7F 01            [12]  820 	mov	r7,#0x01
      0002FE                        821 00146$:
                                    822 ;	./src/main.c:101: if (ud == 1) { 
      0002FE 74 01            [12]  823 	mov	a,#0x01
      000300 B5 4E 06         [24]  824 	cjne	a,_ud,00353$
      000303 14               [12]  825 	dec	a
      000304 B5 4F 02         [24]  826 	cjne	a,(_ud + 1),00353$
      000307 80 02            [24]  827 	sjmp	00354$
      000309                        828 00353$:
      000309 80 1D            [24]  829 	sjmp	00124$
      00030B                        830 00354$:
                                    831 ;	./src/main.c:102: for (j = 1; (m[i] & j) > 0; j <<= 1); 
      00030B 7E 01            [12]  832 	mov	r6,#0x01
      00030D EF               [12]  833 	mov	a,r7
      00030E 24 36            [12]  834 	add	a,#_m
      000310 F9               [12]  835 	mov	r1,a
      000311                        836 00141$:
      000311 87 05            [24]  837 	mov	ar5,@r1
      000313 EE               [12]  838 	mov	a,r6
      000314 5D               [12]  839 	anl	a,r5
      000315 60 07            [24]  840 	jz	00117$
      000317 8E 04            [24]  841 	mov	ar4,r6
      000319 EC               [12]  842 	mov	a,r4
      00031A 2C               [12]  843 	add	a,r4
      00031B FE               [12]  844 	mov	r6,a
      00031C 80 F3            [24]  845 	sjmp	00141$
      00031E                        846 00117$:
                                    847 ;	./src/main.c:103: m[i] = m[i] >> 1  | (j - 1);
      00031E ED               [12]  848 	mov	a,r5
      00031F C3               [12]  849 	clr	c
      000320 13               [12]  850 	rrc	a
      000321 FD               [12]  851 	mov	r5,a
      000322 EE               [12]  852 	mov	a,r6
      000323 14               [12]  853 	dec	a
      000324 4D               [12]  854 	orl	a,r5
      000325 F7               [12]  855 	mov	@r1,a
      000326 80 29            [24]  856 	sjmp	00147$
      000328                        857 00124$:
                                    858 ;	./src/main.c:104: } else if (ud == -1) { 
      000328 74 FF            [12]  859 	mov	a,#0xff
      00032A B5 4E 24         [24]  860 	cjne	a,_ud,00147$
      00032D B5 4F 21         [24]  861 	cjne	a,(_ud + 1),00147$
                                    862 ;	./src/main.c:105: for (j = 128; (m[i] & j) > 0; j >>= 1); 
      000330 7E 80            [12]  863 	mov	r6,#0x80
      000332 EF               [12]  864 	mov	a,r7
      000333 24 36            [12]  865 	add	a,#_m
      000335 F9               [12]  866 	mov	r1,a
      000336                        867 00144$:
      000336 87 05            [24]  868 	mov	ar5,@r1
      000338 EE               [12]  869 	mov	a,r6
      000339 5D               [12]  870 	anl	a,r5
      00033A 60 06            [24]  871 	jz	00118$
      00033C EE               [12]  872 	mov	a,r6
      00033D C3               [12]  873 	clr	c
      00033E 13               [12]  874 	rrc	a
      00033F FE               [12]  875 	mov	r6,a
      000340 80 F4            [24]  876 	sjmp	00144$
      000342                        877 00118$:
                                    878 ;	./src/main.c:106: if (j != 0) m[i] = (m[i] << 1) | (128 - j) << 1; 
      000342 EE               [12]  879 	mov	a,r6
      000343 60 0C            [24]  880 	jz	00147$
      000345 ED               [12]  881 	mov	a,r5
      000346 2D               [12]  882 	add	a,r5
      000347 FD               [12]  883 	mov	r5,a
      000348 74 80            [12]  884 	mov	a,#0x80
      00034A C3               [12]  885 	clr	c
      00034B 9E               [12]  886 	subb	a,r6
      00034C 25 E0            [12]  887 	add	a,acc
      00034E FE               [12]  888 	mov	r6,a
      00034F 4D               [12]  889 	orl	a,r5
      000350 F7               [12]  890 	mov	@r1,a
      000351                        891 00147$:
                                    892 ;	./src/main.c:100: for (i = 1; i < 19; i++) {
      000351 0F               [12]  893 	inc	r7
      000352 BF 13 00         [24]  894 	cjne	r7,#0x13,00360$
      000355                        895 00360$:
      000355 40 A7            [24]  896 	jc	00146$
                                    897 ;	./src/main.c:109: if (cnt % 30 != 0 && cnt % 50 != 0) Shift();
      000357 75 0B 1E         [24]  898 	mov	__modsint_PARM_2,#0x1e
      00035A 75 0C 00         [24]  899 	mov	(__modsint_PARM_2 + 1),#0x00
      00035D 85 4C 82         [24]  900 	mov	dpl,_cnt
      000360 85 4D 83         [24]  901 	mov	dph,(_cnt + 1)
      000363 12 05 66         [24]  902 	lcall	__modsint
      000366 E5 82            [12]  903 	mov	a,dpl
      000368 85 83 F0         [24]  904 	mov	b,dph
      00036B 45 F0            [12]  905 	orl	a,b
      00036D 60 1B            [24]  906 	jz	00131$
      00036F 75 0B 32         [24]  907 	mov	__modsint_PARM_2,#0x32
      000372 75 0C 00         [24]  908 	mov	(__modsint_PARM_2 + 1),#0x00
      000375 85 4C 82         [24]  909 	mov	dpl,_cnt
      000378 85 4D 83         [24]  910 	mov	dph,(_cnt + 1)
      00037B 12 05 66         [24]  911 	lcall	__modsint
      00037E E5 82            [12]  912 	mov	a,dpl
      000380 85 83 F0         [24]  913 	mov	b,dph
      000383 45 F0            [12]  914 	orl	a,b
      000385 60 03            [24]  915 	jz	00131$
      000387 12 00 E9         [24]  916 	lcall	_Shift
      00038A                        917 00131$:
                                    918 ;	./src/main.c:111: if (++cnt == 2560 || cnt == 2570 || cnt == 2580) Call();
      00038A 05 4C            [12]  919 	inc	_cnt
      00038C E4               [12]  920 	clr	a
      00038D B5 4C 02         [24]  921 	cjne	a,_cnt,00364$
      000390 05 4D            [12]  922 	inc	(_cnt + 1)
      000392                        923 00364$:
      000392 E4               [12]  924 	clr	a
      000393 B5 4C 07         [24]  925 	cjne	a,_cnt,00365$
      000396 74 0A            [12]  926 	mov	a,#0x0a
      000398 B5 4D 02         [24]  927 	cjne	a,(_cnt + 1),00365$
      00039B 80 14            [24]  928 	sjmp	00132$
      00039D                        929 00365$:
      00039D 74 0A            [12]  930 	mov	a,#0x0a
      00039F B5 4C 05         [24]  931 	cjne	a,_cnt,00366$
      0003A2 B5 4D 02         [24]  932 	cjne	a,(_cnt + 1),00366$
      0003A5 80 0A            [24]  933 	sjmp	00132$
      0003A7                        934 00366$:
      0003A7 74 14            [12]  935 	mov	a,#0x14
      0003A9 B5 4C 08         [24]  936 	cjne	a,_cnt,00133$
      0003AC 74 0A            [12]  937 	mov	a,#0x0a
      0003AE B5 4D 03         [24]  938 	cjne	a,(_cnt + 1),00133$
      0003B1                        939 00132$:
      0003B1 12 00 B6         [24]  940 	lcall	_Call
      0003B4                        941 00133$:
                                    942 ;	./src/main.c:112: if (cnt == 2580) cnt = 20;
      0003B4 74 14            [12]  943 	mov	a,#0x14
      0003B6 B5 4C 0B         [24]  944 	cjne	a,_cnt,00148$
      0003B9 74 0A            [12]  945 	mov	a,#0x0a
      0003BB B5 4D 06         [24]  946 	cjne	a,(_cnt + 1),00148$
      0003BE 75 4C 14         [24]  947 	mov	_cnt,#0x14
      0003C1 75 4D 00         [24]  948 	mov	(_cnt + 1),#0x00
      0003C4                        949 00148$:
                                    950 ;	./src/main.c:113: }
      0003C4 D0 D0            [24]  951 	pop	psw
      0003C6 D0 00            [24]  952 	pop	(0+0)
      0003C8 D0 01            [24]  953 	pop	(0+1)
      0003CA D0 02            [24]  954 	pop	(0+2)
      0003CC D0 03            [24]  955 	pop	(0+3)
      0003CE D0 04            [24]  956 	pop	(0+4)
      0003D0 D0 05            [24]  957 	pop	(0+5)
      0003D2 D0 06            [24]  958 	pop	(0+6)
      0003D4 D0 07            [24]  959 	pop	(0+7)
      0003D6 D0 83            [24]  960 	pop	dph
      0003D8 D0 82            [24]  961 	pop	dpl
      0003DA D0 F0            [24]  962 	pop	b
      0003DC D0 E0            [24]  963 	pop	acc
      0003DE D0 21            [24]  964 	pop	bits
      0003E0 32               [24]  965 	reti
                                    966 ;------------------------------------------------------------
                                    967 ;Allocation info for local variables in function 'main'
                                    968 ;------------------------------------------------------------
                                    969 ;	./src/main.c:115: void main(void) {
                                    970 ;	-----------------------------------------
                                    971 ;	 function main
                                    972 ;	-----------------------------------------
      0003E1                        973 _main:
                                    974 ;	./src/main.c:117: Sendbyte7219(0x0C, 0x01, 0x0C, 0x01);
      0003E1 75 0B 01         [24]  975 	mov	_Sendbyte7219_PARM_2,#0x01
      0003E4 75 0C 0C         [24]  976 	mov	_Sendbyte7219_PARM_3,#0x0c
      0003E7 75 0D 01         [24]  977 	mov	_Sendbyte7219_PARM_4,#0x01
      0003EA 75 82 0C         [24]  978 	mov	dpl,#0x0c
      0003ED 12 00 8D         [24]  979 	lcall	_Sendbyte7219
                                    980 ;	./src/main.c:118: Sendbyte7219(0x0F, 0x00, 0x0F, 0x00);
      0003F0 75 0B 00         [24]  981 	mov	_Sendbyte7219_PARM_2,#0x00
      0003F3 75 0C 0F         [24]  982 	mov	_Sendbyte7219_PARM_3,#0x0f
      0003F6 75 0D 00         [24]  983 	mov	_Sendbyte7219_PARM_4,#0x00
      0003F9 75 82 0F         [24]  984 	mov	dpl,#0x0f
      0003FC 12 00 8D         [24]  985 	lcall	_Sendbyte7219
                                    986 ;	./src/main.c:119: Sendbyte7219(0x09, 0x00, 0x09, 0x00);
      0003FF 75 0B 00         [24]  987 	mov	_Sendbyte7219_PARM_2,#0x00
      000402 75 0C 09         [24]  988 	mov	_Sendbyte7219_PARM_3,#0x09
      000405 75 0D 00         [24]  989 	mov	_Sendbyte7219_PARM_4,#0x00
      000408 75 82 09         [24]  990 	mov	dpl,#0x09
      00040B 12 00 8D         [24]  991 	lcall	_Sendbyte7219
                                    992 ;	./src/main.c:120: Sendbyte7219(0x0B, 0x07, 0x0B, 0x07);
      00040E 75 0B 07         [24]  993 	mov	_Sendbyte7219_PARM_2,#0x07
      000411 75 0C 0B         [24]  994 	mov	_Sendbyte7219_PARM_3,#0x0b
      000414 75 0D 07         [24]  995 	mov	_Sendbyte7219_PARM_4,#0x07
      000417 75 82 0B         [24]  996 	mov	dpl,#0x0b
      00041A 12 00 8D         [24]  997 	lcall	_Sendbyte7219
                                    998 ;	./src/main.c:121: Sendbyte7219(0x0A, 0x00, 0x0A, 0x00);
      00041D 75 0B 00         [24]  999 	mov	_Sendbyte7219_PARM_2,#0x00
      000420 75 0C 0A         [24] 1000 	mov	_Sendbyte7219_PARM_3,#0x0a
      000423 75 0D 00         [24] 1001 	mov	_Sendbyte7219_PARM_4,#0x00
      000426 75 82 0A         [24] 1002 	mov	dpl,#0x0a
      000429 12 00 8D         [24] 1003 	lcall	_Sendbyte7219
                                   1004 ;	./src/main.c:126: Single_WriteI2C(208, 0x6B, 0);
      00042C 75 08 6B         [24] 1005 	mov	_Single_WriteI2C_PARM_2,#0x6b
      00042F 75 09 00         [24] 1006 	mov	_Single_WriteI2C_PARM_3,#0x00
      000432 75 82 D0         [24] 1007 	mov	dpl,#0xd0
      000435 12 04 A5         [24] 1008 	lcall	_Single_WriteI2C
                                   1009 ;	./src/main.c:138: TMOD = 0x01;						// Set Timer 1 to  mode 0 & Timer 0 mode 1. (16-bit timer)
      000438 75 89 01         [24] 1010 	mov	_TMOD,#0x01
                                   1011 ;	./src/main.c:139: TH0  = (65536 - 50000) / 256;		// Load initial higher 8 bits into Timer 0
      00043B 75 8C 3C         [24] 1012 	mov	_TH0,#0x3c
                                   1013 ;	./src/main.c:140: TL0  = (65536 - 50000) % 256;		// Load initial lower 8 bits into Timer 0
      00043E 75 8A B0         [24] 1014 	mov	_TL0,#0xb0
                                   1015 ;	./src/main.c:141: ET0  = 1;							// Enable Timer 0 interrupt
                                   1016 ;	assignBit
      000441 D2 A9            [12] 1017 	setb	_ET0
                                   1018 ;	./src/main.c:142: EA   = 1;							// Enable all interrupt
                                   1019 ;	assignBit
      000443 D2 AF            [12] 1020 	setb	_EA
                                   1021 ;	./src/main.c:143: TR0  = 1;							// Start Timer 0
                                   1022 ;	assignBit
      000445 D2 8C            [12] 1023 	setb	_TR0
                                   1024 ;	./src/main.c:145: while(1);
      000447                       1025 00102$:
                                   1026 ;	./src/main.c:146: }
      000447 80 FE            [24] 1027 	sjmp	00102$
                                   1028 	.area CSEG    (CODE)
                                   1029 	.area CONST   (CODE)
                                   1030 	.area XINIT   (CODE)
                                   1031 	.area CABS    (ABS,CODE)
