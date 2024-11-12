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
                                     13 	.globl _Initial
                                     14 	.globl _Write7219
                                     15 	.globl _read_adc3202
                                     16 	.globl _CY
                                     17 	.globl _AC
                                     18 	.globl _F0
                                     19 	.globl _RS1
                                     20 	.globl _RS0
                                     21 	.globl _OV
                                     22 	.globl _F1
                                     23 	.globl _P
                                     24 	.globl _PS
                                     25 	.globl _PT1
                                     26 	.globl _PX1
                                     27 	.globl _PT0
                                     28 	.globl _PX0
                                     29 	.globl _RD
                                     30 	.globl _WR
                                     31 	.globl _T1
                                     32 	.globl _T0
                                     33 	.globl _INT1
                                     34 	.globl _INT0
                                     35 	.globl _TXD
                                     36 	.globl _RXD
                                     37 	.globl _P3_7
                                     38 	.globl _P3_6
                                     39 	.globl _P3_5
                                     40 	.globl _P3_4
                                     41 	.globl _P3_3
                                     42 	.globl _P3_2
                                     43 	.globl _P3_1
                                     44 	.globl _P3_0
                                     45 	.globl _EA
                                     46 	.globl _ES
                                     47 	.globl _ET1
                                     48 	.globl _EX1
                                     49 	.globl _ET0
                                     50 	.globl _EX0
                                     51 	.globl _P2_7
                                     52 	.globl _P2_6
                                     53 	.globl _P2_5
                                     54 	.globl _P2_4
                                     55 	.globl _P2_3
                                     56 	.globl _P2_2
                                     57 	.globl _P2_1
                                     58 	.globl _P2_0
                                     59 	.globl _SM0
                                     60 	.globl _SM1
                                     61 	.globl _SM2
                                     62 	.globl _REN
                                     63 	.globl _TB8
                                     64 	.globl _RB8
                                     65 	.globl _TI
                                     66 	.globl _RI
                                     67 	.globl _P1_7
                                     68 	.globl _P1_6
                                     69 	.globl _P1_5
                                     70 	.globl _P1_4
                                     71 	.globl _P1_3
                                     72 	.globl _P1_2
                                     73 	.globl _P1_1
                                     74 	.globl _P1_0
                                     75 	.globl _TF1
                                     76 	.globl _TR1
                                     77 	.globl _TF0
                                     78 	.globl _TR0
                                     79 	.globl _IE1
                                     80 	.globl _IT1
                                     81 	.globl _IE0
                                     82 	.globl _IT0
                                     83 	.globl _P0_7
                                     84 	.globl _P0_6
                                     85 	.globl _P0_5
                                     86 	.globl _P0_4
                                     87 	.globl _P0_3
                                     88 	.globl _P0_2
                                     89 	.globl _P0_1
                                     90 	.globl _P0_0
                                     91 	.globl _B
                                     92 	.globl _ACC
                                     93 	.globl _PSW
                                     94 	.globl _IP
                                     95 	.globl _P3
                                     96 	.globl _IE
                                     97 	.globl _P2
                                     98 	.globl _SBUF
                                     99 	.globl _SCON
                                    100 	.globl _P1
                                    101 	.globl _TH1
                                    102 	.globl _TH0
                                    103 	.globl _TL1
                                    104 	.globl _TL0
                                    105 	.globl _TMOD
                                    106 	.globl _TCON
                                    107 	.globl _PCON
                                    108 	.globl _DPH
                                    109 	.globl _DPL
                                    110 	.globl _SP
                                    111 	.globl _P0
                                    112 	.globl _seg
                                    113 ;--------------------------------------------------------
                                    114 ; special function registers
                                    115 ;--------------------------------------------------------
                                    116 	.area RSEG    (ABS,DATA)
      000000                        117 	.org 0x0000
                           000080   118 _P0	=	0x0080
                           000081   119 _SP	=	0x0081
                           000082   120 _DPL	=	0x0082
                           000083   121 _DPH	=	0x0083
                           000087   122 _PCON	=	0x0087
                           000088   123 _TCON	=	0x0088
                           000089   124 _TMOD	=	0x0089
                           00008A   125 _TL0	=	0x008a
                           00008B   126 _TL1	=	0x008b
                           00008C   127 _TH0	=	0x008c
                           00008D   128 _TH1	=	0x008d
                           000090   129 _P1	=	0x0090
                           000098   130 _SCON	=	0x0098
                           000099   131 _SBUF	=	0x0099
                           0000A0   132 _P2	=	0x00a0
                           0000A8   133 _IE	=	0x00a8
                           0000B0   134 _P3	=	0x00b0
                           0000B8   135 _IP	=	0x00b8
                           0000D0   136 _PSW	=	0x00d0
                           0000E0   137 _ACC	=	0x00e0
                           0000F0   138 _B	=	0x00f0
                                    139 ;--------------------------------------------------------
                                    140 ; special function bits
                                    141 ;--------------------------------------------------------
                                    142 	.area RSEG    (ABS,DATA)
      000000                        143 	.org 0x0000
                           000080   144 _P0_0	=	0x0080
                           000081   145 _P0_1	=	0x0081
                           000082   146 _P0_2	=	0x0082
                           000083   147 _P0_3	=	0x0083
                           000084   148 _P0_4	=	0x0084
                           000085   149 _P0_5	=	0x0085
                           000086   150 _P0_6	=	0x0086
                           000087   151 _P0_7	=	0x0087
                           000088   152 _IT0	=	0x0088
                           000089   153 _IE0	=	0x0089
                           00008A   154 _IT1	=	0x008a
                           00008B   155 _IE1	=	0x008b
                           00008C   156 _TR0	=	0x008c
                           00008D   157 _TF0	=	0x008d
                           00008E   158 _TR1	=	0x008e
                           00008F   159 _TF1	=	0x008f
                           000090   160 _P1_0	=	0x0090
                           000091   161 _P1_1	=	0x0091
                           000092   162 _P1_2	=	0x0092
                           000093   163 _P1_3	=	0x0093
                           000094   164 _P1_4	=	0x0094
                           000095   165 _P1_5	=	0x0095
                           000096   166 _P1_6	=	0x0096
                           000097   167 _P1_7	=	0x0097
                           000098   168 _RI	=	0x0098
                           000099   169 _TI	=	0x0099
                           00009A   170 _RB8	=	0x009a
                           00009B   171 _TB8	=	0x009b
                           00009C   172 _REN	=	0x009c
                           00009D   173 _SM2	=	0x009d
                           00009E   174 _SM1	=	0x009e
                           00009F   175 _SM0	=	0x009f
                           0000A0   176 _P2_0	=	0x00a0
                           0000A1   177 _P2_1	=	0x00a1
                           0000A2   178 _P2_2	=	0x00a2
                           0000A3   179 _P2_3	=	0x00a3
                           0000A4   180 _P2_4	=	0x00a4
                           0000A5   181 _P2_5	=	0x00a5
                           0000A6   182 _P2_6	=	0x00a6
                           0000A7   183 _P2_7	=	0x00a7
                           0000A8   184 _EX0	=	0x00a8
                           0000A9   185 _ET0	=	0x00a9
                           0000AA   186 _EX1	=	0x00aa
                           0000AB   187 _ET1	=	0x00ab
                           0000AC   188 _ES	=	0x00ac
                           0000AF   189 _EA	=	0x00af
                           0000B0   190 _P3_0	=	0x00b0
                           0000B1   191 _P3_1	=	0x00b1
                           0000B2   192 _P3_2	=	0x00b2
                           0000B3   193 _P3_3	=	0x00b3
                           0000B4   194 _P3_4	=	0x00b4
                           0000B5   195 _P3_5	=	0x00b5
                           0000B6   196 _P3_6	=	0x00b6
                           0000B7   197 _P3_7	=	0x00b7
                           0000B0   198 _RXD	=	0x00b0
                           0000B1   199 _TXD	=	0x00b1
                           0000B2   200 _INT0	=	0x00b2
                           0000B3   201 _INT1	=	0x00b3
                           0000B4   202 _T0	=	0x00b4
                           0000B5   203 _T1	=	0x00b5
                           0000B6   204 _WR	=	0x00b6
                           0000B7   205 _RD	=	0x00b7
                           0000B8   206 _PX0	=	0x00b8
                           0000B9   207 _PT0	=	0x00b9
                           0000BA   208 _PX1	=	0x00ba
                           0000BB   209 _PT1	=	0x00bb
                           0000BC   210 _PS	=	0x00bc
                           0000D0   211 _P	=	0x00d0
                           0000D1   212 _F1	=	0x00d1
                           0000D2   213 _OV	=	0x00d2
                           0000D3   214 _RS0	=	0x00d3
                           0000D4   215 _RS1	=	0x00d4
                           0000D5   216 _F0	=	0x00d5
                           0000D6   217 _AC	=	0x00d6
                           0000D7   218 _CY	=	0x00d7
                                    219 ;--------------------------------------------------------
                                    220 ; overlayable register banks
                                    221 ;--------------------------------------------------------
                                    222 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        223 	.ds 8
                                    224 ;--------------------------------------------------------
                                    225 ; internal ram data
                                    226 ;--------------------------------------------------------
                                    227 	.area DSEG    (DATA)
      000008                        228 _seg::
      000008                        229 	.ds 10
                                    230 ;--------------------------------------------------------
                                    231 ; overlayable items in internal ram 
                                    232 ;--------------------------------------------------------
                                    233 ;--------------------------------------------------------
                                    234 ; Stack segment in internal ram 
                                    235 ;--------------------------------------------------------
                                    236 	.area	SSEG
      000015                        237 __start__stack:
      000015                        238 	.ds	1
                                    239 
                                    240 ;--------------------------------------------------------
                                    241 ; indirectly addressable internal ram data
                                    242 ;--------------------------------------------------------
                                    243 	.area ISEG    (DATA)
                                    244 ;--------------------------------------------------------
                                    245 ; absolute internal ram data
                                    246 ;--------------------------------------------------------
                                    247 	.area IABS    (ABS,DATA)
                                    248 	.area IABS    (ABS,DATA)
                                    249 ;--------------------------------------------------------
                                    250 ; bit data
                                    251 ;--------------------------------------------------------
                                    252 	.area BSEG    (BIT)
                                    253 ;--------------------------------------------------------
                                    254 ; paged external ram data
                                    255 ;--------------------------------------------------------
                                    256 	.area PSEG    (PAG,XDATA)
                                    257 ;--------------------------------------------------------
                                    258 ; external ram data
                                    259 ;--------------------------------------------------------
                                    260 	.area XSEG    (XDATA)
                                    261 ;--------------------------------------------------------
                                    262 ; absolute external ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area XABS    (ABS,XDATA)
                                    265 ;--------------------------------------------------------
                                    266 ; external initialized ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area XISEG   (XDATA)
                                    269 	.area HOME    (CODE)
                                    270 	.area GSINIT0 (CODE)
                                    271 	.area GSINIT1 (CODE)
                                    272 	.area GSINIT2 (CODE)
                                    273 	.area GSINIT3 (CODE)
                                    274 	.area GSINIT4 (CODE)
                                    275 	.area GSINIT5 (CODE)
                                    276 	.area GSINIT  (CODE)
                                    277 	.area GSFINAL (CODE)
                                    278 	.area CSEG    (CODE)
                                    279 ;--------------------------------------------------------
                                    280 ; interrupt vector 
                                    281 ;--------------------------------------------------------
                                    282 	.area HOME    (CODE)
      000000                        283 __interrupt_vect:
      000000 02 00 06         [24]  284 	ljmp	__sdcc_gsinit_startup
                                    285 ;--------------------------------------------------------
                                    286 ; global & static initialisations
                                    287 ;--------------------------------------------------------
                                    288 	.area HOME    (CODE)
                                    289 	.area GSINIT  (CODE)
                                    290 	.area GSFINAL (CODE)
                                    291 	.area GSINIT  (CODE)
                                    292 	.globl __sdcc_gsinit_startup
                                    293 	.globl __sdcc_program_startup
                                    294 	.globl __start__stack
                                    295 	.globl __mcs51_genXINIT
                                    296 	.globl __mcs51_genXRAMCLEAR
                                    297 	.globl __mcs51_genRAMCLEAR
                                    298 ;	./src/main.c:7: unsigned char seg[10] = {
      00005F 75 08 7E         [24]  299 	mov	_seg,#0x7e
      000062 75 09 30         [24]  300 	mov	(_seg + 0x0001),#0x30
      000065 75 0A 6D         [24]  301 	mov	(_seg + 0x0002),#0x6d
      000068 75 0B 79         [24]  302 	mov	(_seg + 0x0003),#0x79
      00006B 75 0C 33         [24]  303 	mov	(_seg + 0x0004),#0x33
      00006E 75 0D 5B         [24]  304 	mov	(_seg + 0x0005),#0x5b
      000071 75 0E 5F         [24]  305 	mov	(_seg + 0x0006),#0x5f
      000074 75 0F 70         [24]  306 	mov	(_seg + 0x0007),#0x70
      000077 75 10 7F         [24]  307 	mov	(_seg + 0x0008),#0x7f
      00007A 75 11 7B         [24]  308 	mov	(_seg + 0x0009),#0x7b
                                    309 	.area GSFINAL (CODE)
      00007D 02 00 03         [24]  310 	ljmp	__sdcc_program_startup
                                    311 ;--------------------------------------------------------
                                    312 ; Home
                                    313 ;--------------------------------------------------------
                                    314 	.area HOME    (CODE)
                                    315 	.area HOME    (CODE)
      000003                        316 __sdcc_program_startup:
      000003 02 00 80         [24]  317 	ljmp	_main
                                    318 ;	return from main will return to caller
                                    319 ;--------------------------------------------------------
                                    320 ; code
                                    321 ;--------------------------------------------------------
                                    322 	.area CSEG    (CODE)
                                    323 ;------------------------------------------------------------
                                    324 ;Allocation info for local variables in function 'main'
                                    325 ;------------------------------------------------------------
                                    326 ;adc_value                 Allocated to registers 
                                    327 ;volatge                   Allocated to registers r6 r7 
                                    328 ;distance                  Allocated to registers r4 r5 
                                    329 ;------------------------------------------------------------
                                    330 ;	./src/main.c:20: void main()
                                    331 ;	-----------------------------------------
                                    332 ;	 function main
                                    333 ;	-----------------------------------------
      000080                        334 _main:
                           000007   335 	ar7 = 0x07
                           000006   336 	ar6 = 0x06
                           000005   337 	ar5 = 0x05
                           000004   338 	ar4 = 0x04
                           000003   339 	ar3 = 0x03
                           000002   340 	ar2 = 0x02
                           000001   341 	ar1 = 0x01
                           000000   342 	ar0 = 0x00
                                    343 ;	./src/main.c:24: Initial();
      000080 12 03 F6         [24]  344 	lcall	_Initial
                                    345 ;	./src/main.c:26: while (1){
      000083                        346 00105$:
                                    347 ;	./src/main.c:27: adc_value = read_adc3202(1);
      000083 75 82 01         [24]  348 	mov	dpl,#0x01
      000086 12 03 3E         [24]  349 	lcall	_read_adc3202
                                    350 ;	./src/main.c:28: volatge = adc_value * (VCC * 1000.0 / 4096.0);
      000089 12 06 16         [24]  351 	lcall	___uint2fs
      00008C AC 82            [24]  352 	mov	r4,dpl
      00008E AD 83            [24]  353 	mov	r5,dph
      000090 AE F0            [24]  354 	mov	r6,b
      000092 FF               [12]  355 	mov	r7,a
      000093 C0 04            [24]  356 	push	ar4
      000095 C0 05            [24]  357 	push	ar5
      000097 C0 06            [24]  358 	push	ar6
      000099 C0 07            [24]  359 	push	ar7
      00009B 90 40 00         [24]  360 	mov	dptr,#0x4000
      00009E 75 F0 9C         [24]  361 	mov	b,#0x9c
      0000A1 74 3F            [12]  362 	mov	a,#0x3f
      0000A3 12 04 6C         [24]  363 	lcall	___fsmul
      0000A6 AC 82            [24]  364 	mov	r4,dpl
      0000A8 AD 83            [24]  365 	mov	r5,dph
      0000AA AE F0            [24]  366 	mov	r6,b
      0000AC FF               [12]  367 	mov	r7,a
      0000AD E5 81            [12]  368 	mov	a,sp
      0000AF 24 FC            [12]  369 	add	a,#0xfc
      0000B1 F5 81            [12]  370 	mov	sp,a
      0000B3 8C 82            [24]  371 	mov	dpl,r4
      0000B5 8D 83            [24]  372 	mov	dph,r5
      0000B7 8E F0            [24]  373 	mov	b,r6
      0000B9 EF               [12]  374 	mov	a,r7
      0000BA 12 06 22         [24]  375 	lcall	___fs2uint
                                    376 ;	./src/main.c:29: distance = (6228.4 / volatge - 1.4069)*100;
      0000BD AE 82            [24]  377 	mov	r6,dpl
      0000BF AF 83            [24]  378 	mov  r7,dph
      0000C1 C0 07            [24]  379 	push	ar7
      0000C3 C0 06            [24]  380 	push	ar6
      0000C5 12 06 16         [24]  381 	lcall	___uint2fs
      0000C8 AA 82            [24]  382 	mov	r2,dpl
      0000CA AB 83            [24]  383 	mov	r3,dph
      0000CC AC F0            [24]  384 	mov	r4,b
      0000CE FD               [12]  385 	mov	r5,a
      0000CF C0 02            [24]  386 	push	ar2
      0000D1 C0 03            [24]  387 	push	ar3
      0000D3 C0 04            [24]  388 	push	ar4
      0000D5 C0 05            [24]  389 	push	ar5
      0000D7 90 A3 33         [24]  390 	mov	dptr,#0xa333
      0000DA 75 F0 C2         [24]  391 	mov	b,#0xc2
      0000DD 74 45            [12]  392 	mov	a,#0x45
      0000DF 12 06 96         [24]  393 	lcall	___fsdiv
      0000E2 AA 82            [24]  394 	mov	r2,dpl
      0000E4 AB 83            [24]  395 	mov	r3,dph
      0000E6 AC F0            [24]  396 	mov	r4,b
      0000E8 FD               [12]  397 	mov	r5,a
      0000E9 E5 81            [12]  398 	mov	a,sp
      0000EB 24 FC            [12]  399 	add	a,#0xfc
      0000ED F5 81            [12]  400 	mov	sp,a
      0000EF 74 4D            [12]  401 	mov	a,#0x4d
      0000F1 C0 E0            [24]  402 	push	acc
      0000F3 74 15            [12]  403 	mov	a,#0x15
      0000F5 C0 E0            [24]  404 	push	acc
      0000F7 74 B4            [12]  405 	mov	a,#0xb4
      0000F9 C0 E0            [24]  406 	push	acc
      0000FB 74 3F            [12]  407 	mov	a,#0x3f
      0000FD C0 E0            [24]  408 	push	acc
      0000FF 8A 82            [24]  409 	mov	dpl,r2
      000101 8B 83            [24]  410 	mov	dph,r3
      000103 8C F0            [24]  411 	mov	b,r4
      000105 ED               [12]  412 	mov	a,r5
      000106 12 04 38         [24]  413 	lcall	___fssub
      000109 AA 82            [24]  414 	mov	r2,dpl
      00010B AB 83            [24]  415 	mov	r3,dph
      00010D AC F0            [24]  416 	mov	r4,b
      00010F FD               [12]  417 	mov	r5,a
      000110 E5 81            [12]  418 	mov	a,sp
      000112 24 FC            [12]  419 	add	a,#0xfc
      000114 F5 81            [12]  420 	mov	sp,a
      000116 C0 02            [24]  421 	push	ar2
      000118 C0 03            [24]  422 	push	ar3
      00011A C0 04            [24]  423 	push	ar4
      00011C C0 05            [24]  424 	push	ar5
      00011E 90 00 00         [24]  425 	mov	dptr,#0x0000
      000121 75 F0 C8         [24]  426 	mov	b,#0xc8
      000124 74 42            [12]  427 	mov	a,#0x42
      000126 12 04 6C         [24]  428 	lcall	___fsmul
      000129 AA 82            [24]  429 	mov	r2,dpl
      00012B AB 83            [24]  430 	mov	r3,dph
      00012D AC F0            [24]  431 	mov	r4,b
      00012F FD               [12]  432 	mov	r5,a
      000130 E5 81            [12]  433 	mov	a,sp
      000132 24 FC            [12]  434 	add	a,#0xfc
      000134 F5 81            [12]  435 	mov	sp,a
      000136 8A 82            [24]  436 	mov	dpl,r2
      000138 8B 83            [24]  437 	mov	dph,r3
      00013A 8C F0            [24]  438 	mov	b,r4
      00013C ED               [12]  439 	mov	a,r5
      00013D 12 06 22         [24]  440 	lcall	___fs2uint
      000140 AC 82            [24]  441 	mov	r4,dpl
      000142 AD 83            [24]  442 	mov	r5,dph
      000144 D0 06            [24]  443 	pop	ar6
      000146 D0 07            [24]  444 	pop	ar7
                                    445 ;	./src/main.c:31: Write7219(1, seg[volatge%10]);
      000148 75 13 0A         [24]  446 	mov	__moduint_PARM_2,#0x0a
      00014B 75 14 00         [24]  447 	mov	(__moduint_PARM_2 + 1),#0x00
      00014E 8E 82            [24]  448 	mov	dpl,r6
      000150 8F 83            [24]  449 	mov	dph,r7
      000152 C0 07            [24]  450 	push	ar7
      000154 C0 06            [24]  451 	push	ar6
      000156 C0 05            [24]  452 	push	ar5
      000158 C0 04            [24]  453 	push	ar4
      00015A 12 05 70         [24]  454 	lcall	__moduint
      00015D E5 82            [12]  455 	mov	a,dpl
      00015F 24 08            [12]  456 	add	a,#_seg
      000161 F9               [12]  457 	mov	r1,a
      000162 87 12            [24]  458 	mov	_Write7219_PARM_2,@r1
      000164 75 82 01         [24]  459 	mov	dpl,#0x01
      000167 12 03 D7         [24]  460 	lcall	_Write7219
      00016A D0 04            [24]  461 	pop	ar4
      00016C D0 05            [24]  462 	pop	ar5
      00016E D0 06            [24]  463 	pop	ar6
      000170 D0 07            [24]  464 	pop	ar7
                                    465 ;	./src/main.c:32: Write7219(2, seg[(volatge/10)%10]);
      000172 75 13 0A         [24]  466 	mov	__divuint_PARM_2,#0x0a
      000175 75 14 00         [24]  467 	mov	(__divuint_PARM_2 + 1),#0x00
      000178 8E 82            [24]  468 	mov	dpl,r6
      00017A 8F 83            [24]  469 	mov	dph,r7
      00017C C0 07            [24]  470 	push	ar7
      00017E C0 06            [24]  471 	push	ar6
      000180 C0 05            [24]  472 	push	ar5
      000182 C0 04            [24]  473 	push	ar4
      000184 12 04 43         [24]  474 	lcall	__divuint
      000187 75 13 0A         [24]  475 	mov	__moduint_PARM_2,#0x0a
      00018A 75 14 00         [24]  476 	mov	(__moduint_PARM_2 + 1),#0x00
      00018D 12 05 70         [24]  477 	lcall	__moduint
      000190 E5 82            [12]  478 	mov	a,dpl
      000192 24 08            [12]  479 	add	a,#_seg
      000194 F9               [12]  480 	mov	r1,a
      000195 87 12            [24]  481 	mov	_Write7219_PARM_2,@r1
      000197 75 82 02         [24]  482 	mov	dpl,#0x02
      00019A 12 03 D7         [24]  483 	lcall	_Write7219
      00019D D0 04            [24]  484 	pop	ar4
      00019F D0 05            [24]  485 	pop	ar5
      0001A1 D0 06            [24]  486 	pop	ar6
      0001A3 D0 07            [24]  487 	pop	ar7
                                    488 ;	./src/main.c:33: Write7219(3, seg[(volatge/100)%10]);
      0001A5 75 13 64         [24]  489 	mov	__divuint_PARM_2,#0x64
      0001A8 75 14 00         [24]  490 	mov	(__divuint_PARM_2 + 1),#0x00
      0001AB 8E 82            [24]  491 	mov	dpl,r6
      0001AD 8F 83            [24]  492 	mov	dph,r7
      0001AF C0 07            [24]  493 	push	ar7
      0001B1 C0 06            [24]  494 	push	ar6
      0001B3 C0 05            [24]  495 	push	ar5
      0001B5 C0 04            [24]  496 	push	ar4
      0001B7 12 04 43         [24]  497 	lcall	__divuint
      0001BA 75 13 0A         [24]  498 	mov	__moduint_PARM_2,#0x0a
      0001BD 75 14 00         [24]  499 	mov	(__moduint_PARM_2 + 1),#0x00
      0001C0 12 05 70         [24]  500 	lcall	__moduint
      0001C3 E5 82            [12]  501 	mov	a,dpl
      0001C5 24 08            [12]  502 	add	a,#_seg
      0001C7 F9               [12]  503 	mov	r1,a
      0001C8 87 12            [24]  504 	mov	_Write7219_PARM_2,@r1
      0001CA 75 82 03         [24]  505 	mov	dpl,#0x03
      0001CD 12 03 D7         [24]  506 	lcall	_Write7219
      0001D0 D0 04            [24]  507 	pop	ar4
      0001D2 D0 05            [24]  508 	pop	ar5
      0001D4 D0 06            [24]  509 	pop	ar6
      0001D6 D0 07            [24]  510 	pop	ar7
                                    511 ;	./src/main.c:34: Write7219(4, seg[(volatge/1000)%10] | 0x80);
      0001D8 75 13 E8         [24]  512 	mov	__divuint_PARM_2,#0xe8
      0001DB 75 14 03         [24]  513 	mov	(__divuint_PARM_2 + 1),#0x03
      0001DE 8E 82            [24]  514 	mov	dpl,r6
      0001E0 8F 83            [24]  515 	mov	dph,r7
      0001E2 C0 05            [24]  516 	push	ar5
      0001E4 C0 04            [24]  517 	push	ar4
      0001E6 12 04 43         [24]  518 	lcall	__divuint
      0001E9 75 13 0A         [24]  519 	mov	__moduint_PARM_2,#0x0a
      0001EC 75 14 00         [24]  520 	mov	(__moduint_PARM_2 + 1),#0x00
      0001EF 12 05 70         [24]  521 	lcall	__moduint
      0001F2 E5 82            [12]  522 	mov	a,dpl
      0001F4 24 08            [12]  523 	add	a,#_seg
      0001F6 F9               [12]  524 	mov	r1,a
      0001F7 87 07            [24]  525 	mov	ar7,@r1
      0001F9 74 80            [12]  526 	mov	a,#0x80
      0001FB 4F               [12]  527 	orl	a,r7
      0001FC F5 12            [12]  528 	mov	_Write7219_PARM_2,a
      0001FE 75 82 04         [24]  529 	mov	dpl,#0x04
      000201 12 03 D7         [24]  530 	lcall	_Write7219
      000204 D0 04            [24]  531 	pop	ar4
      000206 D0 05            [24]  532 	pop	ar5
                                    533 ;	./src/main.c:35: if (distance <= 1500){
      000208 C3               [12]  534 	clr	c
      000209 74 DC            [12]  535 	mov	a,#0xdc
      00020B 9C               [12]  536 	subb	a,r4
      00020C 74 05            [12]  537 	mov	a,#0x05
      00020E 9D               [12]  538 	subb	a,r5
      00020F 50 03            [24]  539 	jnc	00117$
      000211 02 02 BD         [24]  540 	ljmp	00102$
      000214                        541 00117$:
                                    542 ;	./src/main.c:36: Write7219(5, seg[distance%10]);
      000214 75 13 0A         [24]  543 	mov	__moduint_PARM_2,#0x0a
      000217 75 14 00         [24]  544 	mov	(__moduint_PARM_2 + 1),#0x00
      00021A 8C 82            [24]  545 	mov	dpl,r4
      00021C 8D 83            [24]  546 	mov	dph,r5
      00021E C0 05            [24]  547 	push	ar5
      000220 C0 04            [24]  548 	push	ar4
      000222 12 05 70         [24]  549 	lcall	__moduint
      000225 E5 82            [12]  550 	mov	a,dpl
      000227 24 08            [12]  551 	add	a,#_seg
      000229 F9               [12]  552 	mov	r1,a
      00022A 87 12            [24]  553 	mov	_Write7219_PARM_2,@r1
      00022C 75 82 05         [24]  554 	mov	dpl,#0x05
      00022F 12 03 D7         [24]  555 	lcall	_Write7219
      000232 D0 04            [24]  556 	pop	ar4
      000234 D0 05            [24]  557 	pop	ar5
                                    558 ;	./src/main.c:37: Write7219(6, seg[(distance/10)%10]);
      000236 75 13 0A         [24]  559 	mov	__divuint_PARM_2,#0x0a
      000239 75 14 00         [24]  560 	mov	(__divuint_PARM_2 + 1),#0x00
      00023C 8C 82            [24]  561 	mov	dpl,r4
      00023E 8D 83            [24]  562 	mov	dph,r5
      000240 C0 05            [24]  563 	push	ar5
      000242 C0 04            [24]  564 	push	ar4
      000244 12 04 43         [24]  565 	lcall	__divuint
      000247 75 13 0A         [24]  566 	mov	__moduint_PARM_2,#0x0a
      00024A 75 14 00         [24]  567 	mov	(__moduint_PARM_2 + 1),#0x00
      00024D 12 05 70         [24]  568 	lcall	__moduint
      000250 E5 82            [12]  569 	mov	a,dpl
      000252 24 08            [12]  570 	add	a,#_seg
      000254 F9               [12]  571 	mov	r1,a
      000255 87 12            [24]  572 	mov	_Write7219_PARM_2,@r1
      000257 75 82 06         [24]  573 	mov	dpl,#0x06
      00025A 12 03 D7         [24]  574 	lcall	_Write7219
      00025D D0 04            [24]  575 	pop	ar4
      00025F D0 05            [24]  576 	pop	ar5
                                    577 ;	./src/main.c:38: Write7219(7, seg[(distance/100)%10] | 0x80);
      000261 75 13 64         [24]  578 	mov	__divuint_PARM_2,#0x64
      000264 75 14 00         [24]  579 	mov	(__divuint_PARM_2 + 1),#0x00
      000267 8C 82            [24]  580 	mov	dpl,r4
      000269 8D 83            [24]  581 	mov	dph,r5
      00026B C0 05            [24]  582 	push	ar5
      00026D C0 04            [24]  583 	push	ar4
      00026F 12 04 43         [24]  584 	lcall	__divuint
      000272 75 13 0A         [24]  585 	mov	__moduint_PARM_2,#0x0a
      000275 75 14 00         [24]  586 	mov	(__moduint_PARM_2 + 1),#0x00
      000278 12 05 70         [24]  587 	lcall	__moduint
      00027B E5 82            [12]  588 	mov	a,dpl
      00027D 24 08            [12]  589 	add	a,#_seg
      00027F F9               [12]  590 	mov	r1,a
      000280 87 07            [24]  591 	mov	ar7,@r1
      000282 74 80            [12]  592 	mov	a,#0x80
      000284 4F               [12]  593 	orl	a,r7
      000285 F5 12            [12]  594 	mov	_Write7219_PARM_2,a
      000287 75 82 07         [24]  595 	mov	dpl,#0x07
      00028A 12 03 D7         [24]  596 	lcall	_Write7219
      00028D D0 04            [24]  597 	pop	ar4
      00028F D0 05            [24]  598 	pop	ar5
                                    599 ;	./src/main.c:39: Write7219(8, seg[(distance/1000)%10]);
      000291 75 13 E8         [24]  600 	mov	__divuint_PARM_2,#0xe8
      000294 75 14 03         [24]  601 	mov	(__divuint_PARM_2 + 1),#0x03
      000297 8C 82            [24]  602 	mov	dpl,r4
      000299 8D 83            [24]  603 	mov	dph,r5
      00029B 12 04 43         [24]  604 	lcall	__divuint
      00029E 75 13 0A         [24]  605 	mov	__moduint_PARM_2,#0x0a
      0002A1 75 14 00         [24]  606 	mov	(__moduint_PARM_2 + 1),#0x00
      0002A4 12 05 70         [24]  607 	lcall	__moduint
      0002A7 E5 82            [12]  608 	mov	a,dpl
      0002A9 24 08            [12]  609 	add	a,#_seg
      0002AB F9               [12]  610 	mov	r1,a
      0002AC 87 12            [24]  611 	mov	_Write7219_PARM_2,@r1
      0002AE 75 82 08         [24]  612 	mov	dpl,#0x08
      0002B1 12 03 D7         [24]  613 	lcall	_Write7219
                                    614 ;	./src/main.c:40: delay_ms(200);
      0002B4 90 00 C8         [24]  615 	mov	dptr,#0x00c8
      0002B7 12 03 89         [24]  616 	lcall	_delay_ms
                                    617 ;	./src/main.c:41: continue;
      0002BA 02 00 83         [24]  618 	ljmp	00105$
      0002BD                        619 00102$:
                                    620 ;	./src/main.c:43: Write7219(5, seg[0]);
      0002BD 85 08 12         [24]  621 	mov	_Write7219_PARM_2,_seg
      0002C0 75 82 05         [24]  622 	mov	dpl,#0x05
      0002C3 12 03 D7         [24]  623 	lcall	_Write7219
                                    624 ;	./src/main.c:44: Write7219(6, seg[0]);
      0002C6 85 08 12         [24]  625 	mov	_Write7219_PARM_2,_seg
      0002C9 75 82 06         [24]  626 	mov	dpl,#0x06
      0002CC 12 03 D7         [24]  627 	lcall	_Write7219
                                    628 ;	./src/main.c:45: Write7219(7, seg[9] | 0x80);
      0002CF 74 80            [12]  629 	mov	a,#0x80
      0002D1 45 11            [12]  630 	orl	a,(_seg + 0x0009)
      0002D3 F5 12            [12]  631 	mov	_Write7219_PARM_2,a
      0002D5 75 82 07         [24]  632 	mov	dpl,#0x07
      0002D8 12 03 D7         [24]  633 	lcall	_Write7219
                                    634 ;	./src/main.c:46: Write7219(8, seg[9]);
      0002DB 85 11 12         [24]  635 	mov	_Write7219_PARM_2,(_seg + 0x0009)
      0002DE 75 82 08         [24]  636 	mov	dpl,#0x08
      0002E1 12 03 D7         [24]  637 	lcall	_Write7219
                                    638 ;	./src/main.c:47: delay_ms(200);
      0002E4 90 00 C8         [24]  639 	mov	dptr,#0x00c8
      0002E7 12 03 89         [24]  640 	lcall	_delay_ms
                                    641 ;	./src/main.c:51: }
      0002EA 02 00 83         [24]  642 	ljmp	00105$
                                    643 	.area CSEG    (CODE)
                                    644 	.area CONST   (CODE)
                                    645 	.area XINIT   (CODE)
                                    646 	.area CABS    (ABS,CODE)
