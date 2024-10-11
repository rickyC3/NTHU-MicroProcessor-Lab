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
                                     11 	.globl _Sendbyte7219_PARM_2
                                     12 	.globl _main
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
                                    109 	.globl _Calculate_PARM_3
                                    110 	.globl _Calculate_PARM_2
                                    111 	.globl _Sendbyte7219
                                    112 	.globl _Display
                                    113 	.globl _Calculate
                                    114 ;--------------------------------------------------------
                                    115 ; special function registers
                                    116 ;--------------------------------------------------------
                                    117 	.area RSEG    (ABS,DATA)
      000000                        118 	.org 0x0000
                           000080   119 _P0	=	0x0080
                           000081   120 _SP	=	0x0081
                           000082   121 _DPL	=	0x0082
                           000083   122 _DPH	=	0x0083
                           000087   123 _PCON	=	0x0087
                           000088   124 _TCON	=	0x0088
                           000089   125 _TMOD	=	0x0089
                           00008A   126 _TL0	=	0x008a
                           00008B   127 _TL1	=	0x008b
                           00008C   128 _TH0	=	0x008c
                           00008D   129 _TH1	=	0x008d
                           000090   130 _P1	=	0x0090
                           000098   131 _SCON	=	0x0098
                           000099   132 _SBUF	=	0x0099
                           0000A0   133 _P2	=	0x00a0
                           0000A8   134 _IE	=	0x00a8
                           0000B0   135 _P3	=	0x00b0
                           0000B8   136 _IP	=	0x00b8
                           0000D0   137 _PSW	=	0x00d0
                           0000E0   138 _ACC	=	0x00e0
                           0000F0   139 _B	=	0x00f0
                                    140 ;--------------------------------------------------------
                                    141 ; special function bits
                                    142 ;--------------------------------------------------------
                                    143 	.area RSEG    (ABS,DATA)
      000000                        144 	.org 0x0000
                           000080   145 _P0_0	=	0x0080
                           000081   146 _P0_1	=	0x0081
                           000082   147 _P0_2	=	0x0082
                           000083   148 _P0_3	=	0x0083
                           000084   149 _P0_4	=	0x0084
                           000085   150 _P0_5	=	0x0085
                           000086   151 _P0_6	=	0x0086
                           000087   152 _P0_7	=	0x0087
                           000088   153 _IT0	=	0x0088
                           000089   154 _IE0	=	0x0089
                           00008A   155 _IT1	=	0x008a
                           00008B   156 _IE1	=	0x008b
                           00008C   157 _TR0	=	0x008c
                           00008D   158 _TF0	=	0x008d
                           00008E   159 _TR1	=	0x008e
                           00008F   160 _TF1	=	0x008f
                           000090   161 _P1_0	=	0x0090
                           000091   162 _P1_1	=	0x0091
                           000092   163 _P1_2	=	0x0092
                           000093   164 _P1_3	=	0x0093
                           000094   165 _P1_4	=	0x0094
                           000095   166 _P1_5	=	0x0095
                           000096   167 _P1_6	=	0x0096
                           000097   168 _P1_7	=	0x0097
                           000098   169 _RI	=	0x0098
                           000099   170 _TI	=	0x0099
                           00009A   171 _RB8	=	0x009a
                           00009B   172 _TB8	=	0x009b
                           00009C   173 _REN	=	0x009c
                           00009D   174 _SM2	=	0x009d
                           00009E   175 _SM1	=	0x009e
                           00009F   176 _SM0	=	0x009f
                           0000A0   177 _P2_0	=	0x00a0
                           0000A1   178 _P2_1	=	0x00a1
                           0000A2   179 _P2_2	=	0x00a2
                           0000A3   180 _P2_3	=	0x00a3
                           0000A4   181 _P2_4	=	0x00a4
                           0000A5   182 _P2_5	=	0x00a5
                           0000A6   183 _P2_6	=	0x00a6
                           0000A7   184 _P2_7	=	0x00a7
                           0000A8   185 _EX0	=	0x00a8
                           0000A9   186 _ET0	=	0x00a9
                           0000AA   187 _EX1	=	0x00aa
                           0000AB   188 _ET1	=	0x00ab
                           0000AC   189 _ES	=	0x00ac
                           0000AF   190 _EA	=	0x00af
                           0000B0   191 _P3_0	=	0x00b0
                           0000B1   192 _P3_1	=	0x00b1
                           0000B2   193 _P3_2	=	0x00b2
                           0000B3   194 _P3_3	=	0x00b3
                           0000B4   195 _P3_4	=	0x00b4
                           0000B5   196 _P3_5	=	0x00b5
                           0000B6   197 _P3_6	=	0x00b6
                           0000B7   198 _P3_7	=	0x00b7
                           0000B0   199 _RXD	=	0x00b0
                           0000B1   200 _TXD	=	0x00b1
                           0000B2   201 _INT0	=	0x00b2
                           0000B3   202 _INT1	=	0x00b3
                           0000B4   203 _T0	=	0x00b4
                           0000B5   204 _T1	=	0x00b5
                           0000B6   205 _WR	=	0x00b6
                           0000B7   206 _RD	=	0x00b7
                           0000B8   207 _PX0	=	0x00b8
                           0000B9   208 _PT0	=	0x00b9
                           0000BA   209 _PX1	=	0x00ba
                           0000BB   210 _PT1	=	0x00bb
                           0000BC   211 _PS	=	0x00bc
                           0000D0   212 _P	=	0x00d0
                           0000D1   213 _F1	=	0x00d1
                           0000D2   214 _OV	=	0x00d2
                           0000D3   215 _RS0	=	0x00d3
                           0000D4   216 _RS1	=	0x00d4
                           0000D5   217 _F0	=	0x00d5
                           0000D6   218 _AC	=	0x00d6
                           0000D7   219 _CY	=	0x00d7
                                    220 ;--------------------------------------------------------
                                    221 ; overlayable register banks
                                    222 ;--------------------------------------------------------
                                    223 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        224 	.ds 8
                                    225 ;--------------------------------------------------------
                                    226 ; internal ram data
                                    227 ;--------------------------------------------------------
                                    228 	.area DSEG    (DATA)
      000008                        229 _main_num2_65536_5:
      000008                        230 	.ds 4
      00000C                        231 _main_operator_65536_5:
      00000C                        232 	.ds 1
      00000D                        233 _main_state_65536_5:
      00000D                        234 	.ds 1
      00000E                        235 _main_push_65536_5:
      00000E                        236 	.ds 1
      00000F                        237 _main_pre_65536_5:
      00000F                        238 	.ds 1
      000010                        239 _main_sloc0_1_0:
      000010                        240 	.ds 4
      000014                        241 _Display_num_65536_18:
      000014                        242 	.ds 4
      000018                        243 _Calculate_PARM_2:
      000018                        244 	.ds 1
      000019                        245 _Calculate_PARM_3:
      000019                        246 	.ds 4
                                    247 ;--------------------------------------------------------
                                    248 ; overlayable items in internal ram 
                                    249 ;--------------------------------------------------------
                                    250 	.area	OSEG    (OVR,DATA)
      00001D                        251 _Sendbyte7219_PARM_2:
      00001D                        252 	.ds 1
                                    253 ;--------------------------------------------------------
                                    254 ; Stack segment in internal ram 
                                    255 ;--------------------------------------------------------
                                    256 	.area	SSEG
      000021                        257 __start__stack:
      000021                        258 	.ds	1
                                    259 
                                    260 ;--------------------------------------------------------
                                    261 ; indirectly addressable internal ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area ISEG    (DATA)
                                    264 ;--------------------------------------------------------
                                    265 ; absolute internal ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area IABS    (ABS,DATA)
                                    268 	.area IABS    (ABS,DATA)
                                    269 ;--------------------------------------------------------
                                    270 ; bit data
                                    271 ;--------------------------------------------------------
                                    272 	.area BSEG    (BIT)
                                    273 ;--------------------------------------------------------
                                    274 ; paged external ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area PSEG    (PAG,XDATA)
                                    277 ;--------------------------------------------------------
                                    278 ; external ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area XSEG    (XDATA)
                                    281 ;--------------------------------------------------------
                                    282 ; absolute external ram data
                                    283 ;--------------------------------------------------------
                                    284 	.area XABS    (ABS,XDATA)
                                    285 ;--------------------------------------------------------
                                    286 ; external initialized ram data
                                    287 ;--------------------------------------------------------
                                    288 	.area XISEG   (XDATA)
                                    289 	.area HOME    (CODE)
                                    290 	.area GSINIT0 (CODE)
                                    291 	.area GSINIT1 (CODE)
                                    292 	.area GSINIT2 (CODE)
                                    293 	.area GSINIT3 (CODE)
                                    294 	.area GSINIT4 (CODE)
                                    295 	.area GSINIT5 (CODE)
                                    296 	.area GSINIT  (CODE)
                                    297 	.area GSFINAL (CODE)
                                    298 	.area CSEG    (CODE)
                                    299 ;--------------------------------------------------------
                                    300 ; interrupt vector 
                                    301 ;--------------------------------------------------------
                                    302 	.area HOME    (CODE)
      000000                        303 __interrupt_vect:
      000000 02 00 06         [24]  304 	ljmp	__sdcc_gsinit_startup
                                    305 ;--------------------------------------------------------
                                    306 ; global & static initialisations
                                    307 ;--------------------------------------------------------
                                    308 	.area HOME    (CODE)
                                    309 	.area GSINIT  (CODE)
                                    310 	.area GSFINAL (CODE)
                                    311 	.area GSINIT  (CODE)
                                    312 	.globl __sdcc_gsinit_startup
                                    313 	.globl __sdcc_program_startup
                                    314 	.globl __start__stack
                                    315 	.globl __mcs51_genXINIT
                                    316 	.globl __mcs51_genXRAMCLEAR
                                    317 	.globl __mcs51_genRAMCLEAR
                                    318 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  319 	ljmp	__sdcc_program_startup
                                    320 ;--------------------------------------------------------
                                    321 ; Home
                                    322 ;--------------------------------------------------------
                                    323 	.area HOME    (CODE)
                                    324 	.area HOME    (CODE)
      000003                        325 __sdcc_program_startup:
      000003 02 00 62         [24]  326 	ljmp	_main
                                    327 ;	return from main will return to caller
                                    328 ;--------------------------------------------------------
                                    329 ; code
                                    330 ;--------------------------------------------------------
                                    331 	.area CSEG    (CODE)
                                    332 ;------------------------------------------------------------
                                    333 ;Allocation info for local variables in function 'main'
                                    334 ;------------------------------------------------------------
                                    335 ;num1                      Allocated to registers r4 r5 r6 r7 
                                    336 ;num2                      Allocated with name '_main_num2_65536_5'
                                    337 ;operator                  Allocated with name '_main_operator_65536_5'
                                    338 ;state                     Allocated with name '_main_state_65536_5'
                                    339 ;push                      Allocated with name '_main_push_65536_5'
                                    340 ;pre                       Allocated with name '_main_pre_65536_5'
                                    341 ;i                         Allocated to registers 
                                    342 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                    343 ;------------------------------------------------------------
                                    344 ;	./src/main.c:9: void main(void) {
                                    345 ;	-----------------------------------------
                                    346 ;	 function main
                                    347 ;	-----------------------------------------
      000062                        348 _main:
                           000007   349 	ar7 = 0x07
                           000006   350 	ar6 = 0x06
                           000005   351 	ar5 = 0x05
                           000004   352 	ar4 = 0x04
                           000003   353 	ar3 = 0x03
                           000002   354 	ar2 = 0x02
                           000001   355 	ar1 = 0x01
                           000000   356 	ar0 = 0x00
                                    357 ;	./src/main.c:10: unsigned long num1 = 0, num2 = 0;
      000062 E4               [12]  358 	clr	a
      000063 FC               [12]  359 	mov	r4,a
      000064 FD               [12]  360 	mov	r5,a
      000065 FE               [12]  361 	mov	r6,a
      000066 FF               [12]  362 	mov	r7,a
      000067 F5 08            [12]  363 	mov	_main_num2_65536_5,a
      000069 F5 09            [12]  364 	mov	(_main_num2_65536_5 + 1),a
      00006B F5 0A            [12]  365 	mov	(_main_num2_65536_5 + 2),a
      00006D F5 0B            [12]  366 	mov	(_main_num2_65536_5 + 3),a
                                    367 ;	./src/main.c:11: unsigned char operator = 0, state = INPUT1, push, pre = IDLE, i;
                                    368 ;	1-genFromRTrack replaced	mov	_main_operator_65536_5,#0x00
      00006F F5 0C            [12]  369 	mov	_main_operator_65536_5,a
      000071 75 0D 02         [24]  370 	mov	_main_state_65536_5,#0x02
      000074 75 0F 0E         [24]  371 	mov	_main_pre_65536_5,#0x0e
                                    372 ;	./src/main.c:13: R1 = R2 = R3 = R4 = 1;
                                    373 ;	assignBit
      000077 D2 87            [12]  374 	setb	_P0_7
                                    375 ;	assignBit
      000079 A2 87            [12]  376 	mov	c,_P0_7
      00007B 92 86            [24]  377 	mov	_P0_6,c
                                    378 ;	assignBit
      00007D A2 86            [12]  379 	mov	c,_P0_6
      00007F 92 85            [24]  380 	mov	_P0_5,c
                                    381 ;	assignBit
      000081 A2 85            [12]  382 	mov	c,_P0_5
      000083 92 84            [24]  383 	mov	_P0_4,c
                                    384 ;	./src/main.c:14: Sendbyte7219(SHUT_DOWN,    0x01);
      000085 75 1D 01         [24]  385 	mov	_Sendbyte7219_PARM_2,#0x01
      000088 75 82 0C         [24]  386 	mov	dpl,#0x0c
      00008B C0 07            [24]  387 	push	ar7
      00008D C0 06            [24]  388 	push	ar6
      00008F C0 05            [24]  389 	push	ar5
      000091 C0 04            [24]  390 	push	ar4
      000093 12 02 7A         [24]  391 	lcall	_Sendbyte7219
                                    392 ;	./src/main.c:15: Sendbyte7219(DISPLAY_TEST, 0x00);
      000096 75 1D 00         [24]  393 	mov	_Sendbyte7219_PARM_2,#0x00
      000099 75 82 0F         [24]  394 	mov	dpl,#0x0f
      00009C 12 02 7A         [24]  395 	lcall	_Sendbyte7219
                                    396 ;	./src/main.c:16: Sendbyte7219(DECODE_MODE,  0xff);
      00009F 75 1D FF         [24]  397 	mov	_Sendbyte7219_PARM_2,#0xff
      0000A2 75 82 09         [24]  398 	mov	dpl,#0x09
      0000A5 12 02 7A         [24]  399 	lcall	_Sendbyte7219
                                    400 ;	./src/main.c:17: Sendbyte7219(SCAN_LIMIT,   0x07);
      0000A8 75 1D 07         [24]  401 	mov	_Sendbyte7219_PARM_2,#0x07
      0000AB 75 82 0B         [24]  402 	mov	dpl,#0x0b
      0000AE 12 02 7A         [24]  403 	lcall	_Sendbyte7219
                                    404 ;	./src/main.c:18: Sendbyte7219(INTENSITY,    0x00);
      0000B1 75 1D 00         [24]  405 	mov	_Sendbyte7219_PARM_2,#0x00
      0000B4 75 82 0A         [24]  406 	mov	dpl,#0x0a
      0000B7 12 02 7A         [24]  407 	lcall	_Sendbyte7219
      0000BA D0 04            [24]  408 	pop	ar4
      0000BC D0 05            [24]  409 	pop	ar5
      0000BE D0 06            [24]  410 	pop	ar6
      0000C0 D0 07            [24]  411 	pop	ar7
                                    412 ;	./src/main.c:20: while (1) {
      0000C2                        413 00143$:
                                    414 ;	./src/main.c:21: push = IDLE;
      0000C2 75 0E 0E         [24]  415 	mov	_main_push_65536_5,#0x0e
                                    416 ;	./src/main.c:22: if (BUT1 == 0) push = OP;
      0000C5 20 B2 03         [24]  417 	jb	_P3_2,00102$
      0000C8 75 0E 0A         [24]  418 	mov	_main_push_65536_5,#0x0a
      0000CB                        419 00102$:
                                    420 ;	./src/main.c:23: if (BUT2 == 0) push = BACK;
      0000CB 20 B3 03         [24]  421 	jb	_P3_3,00104$
      0000CE 75 0E 0B         [24]  422 	mov	_main_push_65536_5,#0x0b
      0000D1                        423 00104$:
                                    424 ;	./src/main.c:24: if (BUT3 == 0) push = AC;
      0000D1 20 A0 03         [24]  425 	jb	_P2_0,00106$
      0000D4 75 0E 0C         [24]  426 	mov	_main_push_65536_5,#0x0c
      0000D7                        427 00106$:
                                    428 ;	./src/main.c:25: if (BUT4 == 0) push = EQ;
      0000D7 20 A1 03         [24]  429 	jb	_P2_1,00108$
      0000DA 75 0E 0D         [24]  430 	mov	_main_push_65536_5,#0x0d
      0000DD                        431 00108$:
                                    432 ;	./src/main.c:26: C1 = 0; C2 = C3 = 1;
                                    433 ;	assignBit
      0000DD C2 81            [12]  434 	clr	_P0_1
                                    435 ;	assignBit
      0000DF D2 83            [12]  436 	setb	_P0_3
                                    437 ;	assignBit
      0000E1 A2 83            [12]  438 	mov	c,_P0_3
      0000E3 92 82            [24]  439 	mov	_P0_2,c
                                    440 ;	./src/main.c:27: for (i = 1; i < 4; i++) {
      0000E5 79 01            [12]  441 	mov	r1,#0x01
      0000E7                        442 00145$:
                                    443 ;	./src/main.c:28: if (R1 == 0) push = 6 + i;
      0000E7 20 84 07         [24]  444 	jb	_P0_4,00110$
      0000EA 89 03            [24]  445 	mov	ar3,r1
      0000EC 74 06            [12]  446 	mov	a,#0x06
      0000EE 2B               [12]  447 	add	a,r3
      0000EF F5 0E            [12]  448 	mov	_main_push_65536_5,a
      0000F1                        449 00110$:
                                    450 ;	./src/main.c:29: if (R2 == 0) push = 3 + i;
      0000F1 20 85 07         [24]  451 	jb	_P0_5,00112$
      0000F4 89 03            [24]  452 	mov	ar3,r1
      0000F6 74 03            [12]  453 	mov	a,#0x03
      0000F8 2B               [12]  454 	add	a,r3
      0000F9 F5 0E            [12]  455 	mov	_main_push_65536_5,a
      0000FB                        456 00112$:
                                    457 ;	./src/main.c:30: if (R3 == 0) push = i;
      0000FB 20 86 02         [24]  458 	jb	_P0_6,00114$
      0000FE 89 0E            [24]  459 	mov	_main_push_65536_5,r1
      000100                        460 00114$:
                                    461 ;	./src/main.c:31: if (R4 == 0) push = 0;
      000100 20 87 03         [24]  462 	jb	_P0_7,00116$
      000103 75 0E 00         [24]  463 	mov	_main_push_65536_5,#0x00
      000106                        464 00116$:
                                    465 ;	./src/main.c:32: C3 = C2; C2 = C1; C1 = 1;
                                    466 ;	assignBit
      000106 A2 82            [12]  467 	mov	c,_P0_2
      000108 92 83            [24]  468 	mov	_P0_3,c
                                    469 ;	assignBit
      00010A A2 81            [12]  470 	mov	c,_P0_1
      00010C 92 82            [24]  471 	mov	_P0_2,c
                                    472 ;	assignBit
      00010E D2 81            [12]  473 	setb	_P0_1
                                    474 ;	./src/main.c:27: for (i = 1; i < 4; i++) {
      000110 09               [12]  475 	inc	r1
      000111 B9 04 00         [24]  476 	cjne	r1,#0x04,00260$
      000114                        477 00260$:
      000114 40 D1            [24]  478 	jc	00145$
                                    479 ;	./src/main.c:35: if (push != pre) {
      000116 E5 0F            [12]  480 	mov	a,_main_pre_65536_5
      000118 B5 0E 03         [24]  481 	cjne	a,_main_push_65536_5,00262$
      00011B 02 02 47         [24]  482 	ljmp	00141$
      00011E                        483 00262$:
                                    484 ;	./src/main.c:36: switch (push) {
      00011E 74 0A            [12]  485 	mov	a,#0x0a
      000120 B5 0E 02         [24]  486 	cjne	a,_main_push_65536_5,00263$
      000123 80 24            [24]  487 	sjmp	00119$
      000125                        488 00263$:
      000125 74 0B            [12]  489 	mov	a,#0x0b
      000127 B5 0E 02         [24]  490 	cjne	a,_main_push_65536_5,00264$
      00012A 80 5F            [24]  491 	sjmp	00126$
      00012C                        492 00264$:
      00012C 74 0C            [12]  493 	mov	a,#0x0c
      00012E B5 0E 03         [24]  494 	cjne	a,_main_push_65536_5,00265$
      000131 02 01 B2         [24]  495 	ljmp	00129$
      000134                        496 00265$:
      000134 74 0D            [12]  497 	mov	a,#0x0d
      000136 B5 0E 03         [24]  498 	cjne	a,_main_push_65536_5,00266$
      000139 02 01 C7         [24]  499 	ljmp	00130$
      00013C                        500 00266$:
      00013C 74 0E            [12]  501 	mov	a,#0x0e
      00013E B5 0E 02         [24]  502 	cjne	a,_main_push_65536_5,00267$
      000141 80 03            [24]  503 	sjmp	00268$
      000143                        504 00267$:
      000143 02 01 F1         [24]  505 	ljmp	00133$
      000146                        506 00268$:
                                    507 ;	./src/main.c:37: case IDLE: break;
      000146 02 02 47         [24]  508 	ljmp	00141$
                                    509 ;	./src/main.c:38: case OP: 
      000149                        510 00119$:
                                    511 ;	./src/main.c:39: if (state == INPUT2) num1 = Calculate(num2, operator, num1);
      000149 74 03            [12]  512 	mov	a,#0x03
      00014B B5 0D 20         [24]  513 	cjne	a,_main_state_65536_5,00121$
      00014E 85 0C 18         [24]  514 	mov	_Calculate_PARM_2,_main_operator_65536_5
      000151 8C 19            [24]  515 	mov	_Calculate_PARM_3,r4
      000153 8D 1A            [24]  516 	mov	(_Calculate_PARM_3 + 1),r5
      000155 8E 1B            [24]  517 	mov	(_Calculate_PARM_3 + 2),r6
      000157 8F 1C            [24]  518 	mov	(_Calculate_PARM_3 + 3),r7
      000159 85 08 82         [24]  519 	mov	dpl,_main_num2_65536_5
      00015C 85 09 83         [24]  520 	mov	dph,(_main_num2_65536_5 + 1)
      00015F 85 0A F0         [24]  521 	mov	b,(_main_num2_65536_5 + 2)
      000162 E5 0B            [12]  522 	mov	a,(_main_num2_65536_5 + 3)
      000164 12 03 35         [24]  523 	lcall	_Calculate
      000167 AC 82            [24]  524 	mov	r4,dpl
      000169 AD 83            [24]  525 	mov	r5,dph
      00016B AE F0            [24]  526 	mov	r6,b
      00016D FF               [12]  527 	mov	r7,a
      00016E                        528 00121$:
                                    529 ;	./src/main.c:40: if (state == OPERATION && operator < 128) operator <<= 1;
      00016E 74 01            [12]  530 	mov	a,#0x01
      000170 B5 0D 0F         [24]  531 	cjne	a,_main_state_65536_5,00123$
      000173 74 80            [12]  532 	mov	a,#0x100 - 0x80
      000175 25 0C            [12]  533 	add	a,_main_operator_65536_5
      000177 40 09            [24]  534 	jc	00123$
      000179 E5 0C            [12]  535 	mov	a,_main_operator_65536_5
      00017B FB               [12]  536 	mov	r3,a
      00017C 25 E0            [12]  537 	add	a,acc
      00017E F5 0C            [12]  538 	mov	_main_operator_65536_5,a
      000180 80 03            [24]  539 	sjmp	00124$
      000182                        540 00123$:
                                    541 ;	./src/main.c:41: else operator = 16;
      000182 75 0C 10         [24]  542 	mov	_main_operator_65536_5,#0x10
      000185                        543 00124$:
                                    544 ;	./src/main.c:42: state = OPERATION;
      000185 75 0D 01         [24]  545 	mov	_main_state_65536_5,#0x01
                                    546 ;	./src/main.c:43: break;
      000188 02 02 47         [24]  547 	ljmp	00141$
                                    548 ;	./src/main.c:44: case BACK: 
      00018B                        549 00126$:
                                    550 ;	./src/main.c:45: if (state > OPERATION) num1 /= 10;
      00018B E5 0D            [12]  551 	mov	a,_main_state_65536_5
      00018D 24 FE            [12]  552 	add	a,#0xff - 0x01
      00018F 40 03            [24]  553 	jc	00274$
      000191 02 02 47         [24]  554 	ljmp	00141$
      000194                        555 00274$:
      000194 75 1D 0A         [24]  556 	mov	__divulong_PARM_2,#0x0a
      000197 E4               [12]  557 	clr	a
      000198 F5 1E            [12]  558 	mov	(__divulong_PARM_2 + 1),a
      00019A F5 1F            [12]  559 	mov	(__divulong_PARM_2 + 2),a
      00019C F5 20            [12]  560 	mov	(__divulong_PARM_2 + 3),a
      00019E 8C 82            [24]  561 	mov	dpl,r4
      0001A0 8D 83            [24]  562 	mov	dph,r5
      0001A2 8E F0            [24]  563 	mov	b,r6
      0001A4 EF               [12]  564 	mov	a,r7
      0001A5 12 04 3D         [24]  565 	lcall	__divulong
      0001A8 AC 82            [24]  566 	mov	r4,dpl
      0001AA AD 83            [24]  567 	mov	r5,dph
      0001AC AE F0            [24]  568 	mov	r6,b
      0001AE FF               [12]  569 	mov	r7,a
                                    570 ;	./src/main.c:46: break;
      0001AF 02 02 47         [24]  571 	ljmp	00141$
                                    572 ;	./src/main.c:47: case AC:
      0001B2                        573 00129$:
                                    574 ;	./src/main.c:48: state = INPUT1; num1 = num2 = 0; 
      0001B2 75 0D 02         [24]  575 	mov	_main_state_65536_5,#0x02
      0001B5 E4               [12]  576 	clr	a
      0001B6 F5 08            [12]  577 	mov	_main_num2_65536_5,a
      0001B8 F5 09            [12]  578 	mov	(_main_num2_65536_5 + 1),a
      0001BA F5 0A            [12]  579 	mov	(_main_num2_65536_5 + 2),a
      0001BC F5 0B            [12]  580 	mov	(_main_num2_65536_5 + 3),a
      0001BE FC               [12]  581 	mov	r4,a
      0001BF FD               [12]  582 	mov	r5,a
      0001C0 7E 00            [12]  583 	mov	r6,#0x00
      0001C2 7F 00            [12]  584 	mov	r7,#0x00
                                    585 ;	./src/main.c:49: break;
      0001C4 02 02 47         [24]  586 	ljmp	00141$
                                    587 ;	./src/main.c:50: case EQ:
      0001C7                        588 00130$:
                                    589 ;	./src/main.c:51: if (state == INPUT2) num1 = Calculate(num2, operator, num1);
      0001C7 74 03            [12]  590 	mov	a,#0x03
      0001C9 B5 0D 20         [24]  591 	cjne	a,_main_state_65536_5,00132$
      0001CC 85 0C 18         [24]  592 	mov	_Calculate_PARM_2,_main_operator_65536_5
      0001CF 8C 19            [24]  593 	mov	_Calculate_PARM_3,r4
      0001D1 8D 1A            [24]  594 	mov	(_Calculate_PARM_3 + 1),r5
      0001D3 8E 1B            [24]  595 	mov	(_Calculate_PARM_3 + 2),r6
      0001D5 8F 1C            [24]  596 	mov	(_Calculate_PARM_3 + 3),r7
      0001D7 85 08 82         [24]  597 	mov	dpl,_main_num2_65536_5
      0001DA 85 09 83         [24]  598 	mov	dph,(_main_num2_65536_5 + 1)
      0001DD 85 0A F0         [24]  599 	mov	b,(_main_num2_65536_5 + 2)
      0001E0 E5 0B            [12]  600 	mov	a,(_main_num2_65536_5 + 3)
      0001E2 12 03 35         [24]  601 	lcall	_Calculate
      0001E5 AC 82            [24]  602 	mov	r4,dpl
      0001E7 AD 83            [24]  603 	mov	r5,dph
      0001E9 AE F0            [24]  604 	mov	r6,b
      0001EB FF               [12]  605 	mov	r7,a
      0001EC                        606 00132$:
                                    607 ;	./src/main.c:52: state = ANSWER;
      0001EC 75 0D 00         [24]  608 	mov	_main_state_65536_5,#0x00
                                    609 ;	./src/main.c:53: break;
                                    610 ;	./src/main.c:54: default: 
      0001EF 80 56            [24]  611 	sjmp	00141$
      0001F1                        612 00133$:
                                    613 ;	./src/main.c:55: if (state == OPERATION) num2 = num1;
      0001F1 74 01            [12]  614 	mov	a,#0x01
      0001F3 B5 0D 08         [24]  615 	cjne	a,_main_state_65536_5,00135$
      0001F6 8C 08            [24]  616 	mov	_main_num2_65536_5,r4
      0001F8 8D 09            [24]  617 	mov	(_main_num2_65536_5 + 1),r5
      0001FA 8E 0A            [24]  618 	mov	(_main_num2_65536_5 + 2),r6
      0001FC 8F 0B            [24]  619 	mov	(_main_num2_65536_5 + 3),r7
      0001FE                        620 00135$:
                                    621 ;	./src/main.c:56: if (state > OPERATION) num1 = 10 * num1 + push;
      0001FE E5 0D            [12]  622 	mov	a,_main_state_65536_5
      000200 24 FE            [12]  623 	add	a,#0xff - 0x01
      000202 50 34            [24]  624 	jnc	00137$
      000204 8C 1D            [24]  625 	mov	__mullong_PARM_2,r4
      000206 8D 1E            [24]  626 	mov	(__mullong_PARM_2 + 1),r5
      000208 8E 1F            [24]  627 	mov	(__mullong_PARM_2 + 2),r6
      00020A 8F 20            [24]  628 	mov	(__mullong_PARM_2 + 3),r7
      00020C 90 00 0A         [24]  629 	mov	dptr,#(0x0a&0x00ff)
      00020F E4               [12]  630 	clr	a
      000210 F5 F0            [12]  631 	mov	b,a
      000212 12 04 A2         [24]  632 	lcall	__mullong
      000215 85 82 10         [24]  633 	mov	_main_sloc0_1_0,dpl
      000218 85 83 11         [24]  634 	mov	(_main_sloc0_1_0 + 1),dph
      00021B 85 F0 12         [24]  635 	mov	(_main_sloc0_1_0 + 2),b
      00021E F5 13            [12]  636 	mov	(_main_sloc0_1_0 + 3),a
      000220 A8 0E            [24]  637 	mov	r0,_main_push_65536_5
      000222 E4               [12]  638 	clr	a
      000223 F9               [12]  639 	mov	r1,a
      000224 FA               [12]  640 	mov	r2,a
      000225 FB               [12]  641 	mov	r3,a
      000226 E8               [12]  642 	mov	a,r0
      000227 25 10            [12]  643 	add	a,_main_sloc0_1_0
      000229 FC               [12]  644 	mov	r4,a
      00022A E9               [12]  645 	mov	a,r1
      00022B 35 11            [12]  646 	addc	a,(_main_sloc0_1_0 + 1)
      00022D FD               [12]  647 	mov	r5,a
      00022E EA               [12]  648 	mov	a,r2
      00022F 35 12            [12]  649 	addc	a,(_main_sloc0_1_0 + 2)
      000231 FE               [12]  650 	mov	r6,a
      000232 EB               [12]  651 	mov	a,r3
      000233 35 13            [12]  652 	addc	a,(_main_sloc0_1_0 + 3)
      000235 FF               [12]  653 	mov	r7,a
      000236 80 0F            [24]  654 	sjmp	00141$
      000238                        655 00137$:
                                    656 ;	./src/main.c:58: state += 2; 
      000238 AA 0D            [24]  657 	mov	r2,_main_state_65536_5
      00023A 74 02            [12]  658 	mov	a,#0x02
      00023C 2A               [12]  659 	add	a,r2
      00023D F5 0D            [12]  660 	mov	_main_state_65536_5,a
                                    661 ;	./src/main.c:59: num1 = push;
      00023F AC 0E            [24]  662 	mov	r4,_main_push_65536_5
      000241 7D 00            [12]  663 	mov	r5,#0x00
      000243 7E 00            [12]  664 	mov	r6,#0x00
      000245 7F 00            [12]  665 	mov	r7,#0x00
                                    666 ;	./src/main.c:61: }
      000247                        667 00141$:
                                    668 ;	./src/main.c:63: Display(num1);
      000247 8C 82            [24]  669 	mov	dpl,r4
      000249 8D 83            [24]  670 	mov	dph,r5
      00024B 8E F0            [24]  671 	mov	b,r6
      00024D EF               [12]  672 	mov	a,r7
      00024E C0 07            [24]  673 	push	ar7
      000250 C0 06            [24]  674 	push	ar6
      000252 C0 05            [24]  675 	push	ar5
      000254 C0 04            [24]  676 	push	ar4
      000256 12 02 B6         [24]  677 	lcall	_Display
      000259 D0 04            [24]  678 	pop	ar4
      00025B D0 05            [24]  679 	pop	ar5
      00025D D0 06            [24]  680 	pop	ar6
      00025F D0 07            [24]  681 	pop	ar7
                                    682 ;	./src/main.c:64: LED = state == 1 ? ~operator : 0xff;
      000261 74 01            [12]  683 	mov	a,#0x01
      000263 B5 0D 08         [24]  684 	cjne	a,_main_state_65536_5,00149$
      000266 E5 0C            [12]  685 	mov	a,_main_operator_65536_5
      000268 F4               [12]  686 	cpl	a
      000269 FA               [12]  687 	mov	r2,a
      00026A 7B 00            [12]  688 	mov	r3,#0x00
      00026C 80 04            [24]  689 	sjmp	00150$
      00026E                        690 00149$:
      00026E 7A FF            [12]  691 	mov	r2,#0xff
      000270 7B 00            [12]  692 	mov	r3,#0x00
      000272                        693 00150$:
      000272 8A 90            [24]  694 	mov	_P1,r2
                                    695 ;	./src/main.c:65: pre = push;
      000274 85 0E 0F         [24]  696 	mov	_main_pre_65536_5,_main_push_65536_5
                                    697 ;	./src/main.c:67: }
      000277 02 00 C2         [24]  698 	ljmp	00143$
                                    699 ;------------------------------------------------------------
                                    700 ;Allocation info for local variables in function 'Sendbyte7219'
                                    701 ;------------------------------------------------------------
                                    702 ;dat                       Allocated with name '_Sendbyte7219_PARM_2'
                                    703 ;address                   Allocated to registers r7 
                                    704 ;i                         Allocated to registers r6 
                                    705 ;------------------------------------------------------------
                                    706 ;	./src/main.c:69: void Sendbyte7219(char address, unsigned char dat) {
                                    707 ;	-----------------------------------------
                                    708 ;	 function Sendbyte7219
                                    709 ;	-----------------------------------------
      00027A                        710 _Sendbyte7219:
      00027A AF 82            [24]  711 	mov	r7,dpl
                                    712 ;	./src/main.c:71: LOAD = 0;
                                    713 ;	assignBit
      00027C C2 A6            [12]  714 	clr	_P2_6
      00027E 7E 00            [12]  715 	mov	r6,#0x00
      000280                        716 00104$:
                                    717 ;	./src/main.c:72: for (; i < 8; i++) {
      000280 BE 08 00         [24]  718 	cjne	r6,#0x08,00128$
      000283                        719 00128$:
      000283 50 13            [24]  720 	jnc	00101$
                                    721 ;	./src/main.c:73: CLK = 0;
                                    722 ;	assignBit
      000285 C2 A5            [12]  723 	clr	_P2_5
                                    724 ;	./src/main.c:74: DIN = (address & 0x80);
      000287 EF               [12]  725 	mov	a,r7
      000288 23               [12]  726 	rl	a
      000289 54 01            [12]  727 	anl	a,#0x01
                                    728 ;	assignBit
      00028B FD               [12]  729 	mov	r5,a
      00028C 24 FF            [12]  730 	add	a,#0xff
      00028E 92 A7            [24]  731 	mov	_P2_7,c
                                    732 ;	./src/main.c:75: address *= 2;
      000290 EF               [12]  733 	mov	a,r7
      000291 2F               [12]  734 	add	a,r7
      000292 FF               [12]  735 	mov	r7,a
                                    736 ;	./src/main.c:76: CLK = 1;
                                    737 ;	assignBit
      000293 D2 A5            [12]  738 	setb	_P2_5
                                    739 ;	./src/main.c:72: for (; i < 8; i++) {
      000295 0E               [12]  740 	inc	r6
      000296 80 E8            [24]  741 	sjmp	00104$
      000298                        742 00101$:
                                    743 ;	./src/main.c:78: for (i = 0; i < 8; i++) {
      000298 7F 00            [12]  744 	mov	r7,#0x00
      00029A                        745 00106$:
                                    746 ;	./src/main.c:79: CLK = 0;
                                    747 ;	assignBit
      00029A C2 A5            [12]  748 	clr	_P2_5
                                    749 ;	./src/main.c:80: DIN = (dat & 0x80);
      00029C E5 1D            [12]  750 	mov	a,_Sendbyte7219_PARM_2
      00029E 23               [12]  751 	rl	a
      00029F 54 01            [12]  752 	anl	a,#0x01
                                    753 ;	assignBit
      0002A1 24 FF            [12]  754 	add	a,#0xff
      0002A3 92 A7            [24]  755 	mov	_P2_7,c
                                    756 ;	./src/main.c:81: dat *= 2;
      0002A5 E5 1D            [12]  757 	mov	a,_Sendbyte7219_PARM_2
      0002A7 25 E0            [12]  758 	add	a,acc
      0002A9 F5 1D            [12]  759 	mov	_Sendbyte7219_PARM_2,a
                                    760 ;	./src/main.c:82: CLK = 1;
                                    761 ;	assignBit
      0002AB D2 A5            [12]  762 	setb	_P2_5
                                    763 ;	./src/main.c:78: for (i = 0; i < 8; i++) {
      0002AD 0F               [12]  764 	inc	r7
      0002AE BF 08 00         [24]  765 	cjne	r7,#0x08,00130$
      0002B1                        766 00130$:
      0002B1 40 E7            [24]  767 	jc	00106$
                                    768 ;	./src/main.c:84: LOAD = 1;
                                    769 ;	assignBit
      0002B3 D2 A6            [12]  770 	setb	_P2_6
                                    771 ;	./src/main.c:85: }
      0002B5 22               [24]  772 	ret
                                    773 ;------------------------------------------------------------
                                    774 ;Allocation info for local variables in function 'Display'
                                    775 ;------------------------------------------------------------
                                    776 ;num                       Allocated with name '_Display_num_65536_18'
                                    777 ;i                         Allocated to registers r3 
                                    778 ;------------------------------------------------------------
                                    779 ;	./src/main.c:89: void Display(unsigned long num) {
                                    780 ;	-----------------------------------------
                                    781 ;	 function Display
                                    782 ;	-----------------------------------------
      0002B6                        783 _Display:
      0002B6 85 82 14         [24]  784 	mov	_Display_num_65536_18,dpl
      0002B9 85 83 15         [24]  785 	mov	(_Display_num_65536_18 + 1),dph
      0002BC 85 F0 16         [24]  786 	mov	(_Display_num_65536_18 + 2),b
      0002BF F5 17            [12]  787 	mov	(_Display_num_65536_18 + 3),a
                                    788 ;	./src/main.c:91: for (i = 1; i < 9; i++) {
      0002C1 7B 01            [12]  789 	mov	r3,#0x01
      0002C3                        790 00106$:
                                    791 ;	./src/main.c:92: if (num || i == 1) Sendbyte7219(i, num % 10);
      0002C3 E5 14            [12]  792 	mov	a,_Display_num_65536_18
      0002C5 45 15            [12]  793 	orl	a,(_Display_num_65536_18 + 1)
      0002C7 45 16            [12]  794 	orl	a,(_Display_num_65536_18 + 2)
      0002C9 45 17            [12]  795 	orl	a,(_Display_num_65536_18 + 3)
      0002CB 70 03            [24]  796 	jnz	00101$
      0002CD BB 01 2B         [24]  797 	cjne	r3,#0x01,00102$
      0002D0                        798 00101$:
      0002D0 75 1D 0A         [24]  799 	mov	__modulong_PARM_2,#0x0a
      0002D3 E4               [12]  800 	clr	a
      0002D4 F5 1E            [12]  801 	mov	(__modulong_PARM_2 + 1),a
      0002D6 F5 1F            [12]  802 	mov	(__modulong_PARM_2 + 2),a
      0002D8 F5 20            [12]  803 	mov	(__modulong_PARM_2 + 3),a
      0002DA 85 14 82         [24]  804 	mov	dpl,_Display_num_65536_18
      0002DD 85 15 83         [24]  805 	mov	dph,(_Display_num_65536_18 + 1)
      0002E0 85 16 F0         [24]  806 	mov	b,(_Display_num_65536_18 + 2)
      0002E3 E5 17            [12]  807 	mov	a,(_Display_num_65536_18 + 3)
      0002E5 C0 03            [24]  808 	push	ar3
      0002E7 12 03 BA         [24]  809 	lcall	__modulong
      0002EA A8 82            [24]  810 	mov	r0,dpl
      0002EC D0 03            [24]  811 	pop	ar3
      0002EE 88 1D            [24]  812 	mov	_Sendbyte7219_PARM_2,r0
      0002F0 8B 82            [24]  813 	mov	dpl,r3
      0002F2 C0 03            [24]  814 	push	ar3
      0002F4 12 02 7A         [24]  815 	lcall	_Sendbyte7219
      0002F7 D0 03            [24]  816 	pop	ar3
      0002F9 80 0C            [24]  817 	sjmp	00103$
      0002FB                        818 00102$:
                                    819 ;	./src/main.c:93: else Sendbyte7219(i, 0x0f);
      0002FB 75 1D 0F         [24]  820 	mov	_Sendbyte7219_PARM_2,#0x0f
      0002FE 8B 82            [24]  821 	mov	dpl,r3
      000300 C0 03            [24]  822 	push	ar3
      000302 12 02 7A         [24]  823 	lcall	_Sendbyte7219
      000305 D0 03            [24]  824 	pop	ar3
      000307                        825 00103$:
                                    826 ;	./src/main.c:94: num /= 10;
      000307 75 1D 0A         [24]  827 	mov	__divulong_PARM_2,#0x0a
      00030A E4               [12]  828 	clr	a
      00030B F5 1E            [12]  829 	mov	(__divulong_PARM_2 + 1),a
      00030D F5 1F            [12]  830 	mov	(__divulong_PARM_2 + 2),a
      00030F F5 20            [12]  831 	mov	(__divulong_PARM_2 + 3),a
      000311 85 14 82         [24]  832 	mov	dpl,_Display_num_65536_18
      000314 85 15 83         [24]  833 	mov	dph,(_Display_num_65536_18 + 1)
      000317 85 16 F0         [24]  834 	mov	b,(_Display_num_65536_18 + 2)
      00031A E5 17            [12]  835 	mov	a,(_Display_num_65536_18 + 3)
      00031C C0 03            [24]  836 	push	ar3
      00031E 12 04 3D         [24]  837 	lcall	__divulong
      000321 85 82 14         [24]  838 	mov	_Display_num_65536_18,dpl
      000324 85 83 15         [24]  839 	mov	(_Display_num_65536_18 + 1),dph
      000327 85 F0 16         [24]  840 	mov	(_Display_num_65536_18 + 2),b
      00032A F5 17            [12]  841 	mov	(_Display_num_65536_18 + 3),a
      00032C D0 03            [24]  842 	pop	ar3
                                    843 ;	./src/main.c:91: for (i = 1; i < 9; i++) {
      00032E 0B               [12]  844 	inc	r3
      00032F BB 09 00         [24]  845 	cjne	r3,#0x09,00122$
      000332                        846 00122$:
      000332 40 8F            [24]  847 	jc	00106$
                                    848 ;	./src/main.c:96: }
      000334 22               [24]  849 	ret
                                    850 ;------------------------------------------------------------
                                    851 ;Allocation info for local variables in function 'Calculate'
                                    852 ;------------------------------------------------------------
                                    853 ;operator                  Allocated with name '_Calculate_PARM_2'
                                    854 ;num2                      Allocated with name '_Calculate_PARM_3'
                                    855 ;num1                      Allocated to registers r0 r1 r2 r3 
                                    856 ;------------------------------------------------------------
                                    857 ;	./src/main.c:98: unsigned long Calculate(unsigned long num1, char operator, unsigned long num2) {
                                    858 ;	-----------------------------------------
                                    859 ;	 function Calculate
                                    860 ;	-----------------------------------------
      000335                        861 _Calculate:
      000335 AC 82            [24]  862 	mov	r4,dpl
      000337 AD 83            [24]  863 	mov	r5,dph
      000339 AE F0            [24]  864 	mov	r6,b
      00033B FF               [12]  865 	mov	r7,a
                                    866 ;	./src/main.c:99: switch (operator) {
      00033C 74 10            [12]  867 	mov	a,#0x10
      00033E B5 18 02         [24]  868 	cjne	a,_Calculate_PARM_2,00123$
      000341 80 0E            [24]  869 	sjmp	00101$
      000343                        870 00123$:
      000343 74 20            [12]  871 	mov	a,#0x20
      000345 B5 18 02         [24]  872 	cjne	a,_Calculate_PARM_2,00124$
      000348 80 19            [24]  873 	sjmp	00102$
      00034A                        874 00124$:
      00034A 74 40            [12]  875 	mov	a,#0x40
                                    876 ;	./src/main.c:100: case 16: num1 += num2; break;
      00034C B5 18 46         [24]  877 	cjne	a,_Calculate_PARM_2,00104$
      00034F 80 25            [24]  878 	sjmp	00103$
      000351                        879 00101$:
      000351 E5 19            [12]  880 	mov	a,_Calculate_PARM_3
      000353 2C               [12]  881 	add	a,r4
      000354 F8               [12]  882 	mov	r0,a
      000355 E5 1A            [12]  883 	mov	a,(_Calculate_PARM_3 + 1)
      000357 3D               [12]  884 	addc	a,r5
      000358 F9               [12]  885 	mov	r1,a
      000359 E5 1B            [12]  886 	mov	a,(_Calculate_PARM_3 + 2)
      00035B 3E               [12]  887 	addc	a,r6
      00035C FA               [12]  888 	mov	r2,a
      00035D E5 1C            [12]  889 	mov	a,(_Calculate_PARM_3 + 3)
      00035F 3F               [12]  890 	addc	a,r7
      000360 FB               [12]  891 	mov	r3,a
                                    892 ;	./src/main.c:101: case 32: num1 -= num2; break;
      000361 80 4F            [24]  893 	sjmp	00105$
      000363                        894 00102$:
      000363 EC               [12]  895 	mov	a,r4
      000364 C3               [12]  896 	clr	c
      000365 95 19            [12]  897 	subb	a,_Calculate_PARM_3
      000367 F8               [12]  898 	mov	r0,a
      000368 ED               [12]  899 	mov	a,r5
      000369 95 1A            [12]  900 	subb	a,(_Calculate_PARM_3 + 1)
      00036B F9               [12]  901 	mov	r1,a
      00036C EE               [12]  902 	mov	a,r6
      00036D 95 1B            [12]  903 	subb	a,(_Calculate_PARM_3 + 2)
      00036F FA               [12]  904 	mov	r2,a
      000370 EF               [12]  905 	mov	a,r7
      000371 95 1C            [12]  906 	subb	a,(_Calculate_PARM_3 + 3)
      000373 FB               [12]  907 	mov	r3,a
                                    908 ;	./src/main.c:102: case 64: num1 *= num2; break;
      000374 80 3C            [24]  909 	sjmp	00105$
      000376                        910 00103$:
      000376 85 19 1D         [24]  911 	mov	__mullong_PARM_2,_Calculate_PARM_3
      000379 85 1A 1E         [24]  912 	mov	(__mullong_PARM_2 + 1),(_Calculate_PARM_3 + 1)
      00037C 85 1B 1F         [24]  913 	mov	(__mullong_PARM_2 + 2),(_Calculate_PARM_3 + 2)
      00037F 85 1C 20         [24]  914 	mov	(__mullong_PARM_2 + 3),(_Calculate_PARM_3 + 3)
      000382 8C 82            [24]  915 	mov	dpl,r4
      000384 8D 83            [24]  916 	mov	dph,r5
      000386 8E F0            [24]  917 	mov	b,r6
      000388 EF               [12]  918 	mov	a,r7
      000389 12 04 A2         [24]  919 	lcall	__mullong
      00038C A8 82            [24]  920 	mov	r0,dpl
      00038E A9 83            [24]  921 	mov	r1,dph
      000390 AA F0            [24]  922 	mov	r2,b
      000392 FB               [12]  923 	mov	r3,a
                                    924 ;	./src/main.c:103: default: num1 /= num2;
      000393 80 1D            [24]  925 	sjmp	00105$
      000395                        926 00104$:
      000395 85 19 1D         [24]  927 	mov	__divulong_PARM_2,_Calculate_PARM_3
      000398 85 1A 1E         [24]  928 	mov	(__divulong_PARM_2 + 1),(_Calculate_PARM_3 + 1)
      00039B 85 1B 1F         [24]  929 	mov	(__divulong_PARM_2 + 2),(_Calculate_PARM_3 + 2)
      00039E 85 1C 20         [24]  930 	mov	(__divulong_PARM_2 + 3),(_Calculate_PARM_3 + 3)
      0003A1 8C 82            [24]  931 	mov	dpl,r4
      0003A3 8D 83            [24]  932 	mov	dph,r5
      0003A5 8E F0            [24]  933 	mov	b,r6
      0003A7 EF               [12]  934 	mov	a,r7
      0003A8 12 04 3D         [24]  935 	lcall	__divulong
      0003AB A8 82            [24]  936 	mov	r0,dpl
      0003AD A9 83            [24]  937 	mov	r1,dph
      0003AF AA F0            [24]  938 	mov	r2,b
      0003B1 FB               [12]  939 	mov	r3,a
                                    940 ;	./src/main.c:104: }
      0003B2                        941 00105$:
                                    942 ;	./src/main.c:105: return num1;
      0003B2 88 82            [24]  943 	mov	dpl,r0
      0003B4 89 83            [24]  944 	mov	dph,r1
      0003B6 8A F0            [24]  945 	mov	b,r2
      0003B8 EB               [12]  946 	mov	a,r3
                                    947 ;	./src/main.c:106: }
      0003B9 22               [24]  948 	ret
                                    949 	.area CSEG    (CODE)
                                    950 	.area CONST   (CODE)
                                    951 	.area XINIT   (CODE)
                                    952 	.area CABS    (ABS,CODE)
