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
                                     13 	.globl _Get_Key
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
                                    110 	.globl _opr
                                    111 	.globl _num2
                                    112 	.globl _num1
                                    113 	.globl _prek
                                    114 	.globl _key
                                    115 	.globl _mode
                                    116 	.globl _Mode_1
                                    117 	.globl _Mode_2
                                    118 	.globl _Mode_3
                                    119 	.globl _num_opr
                                    120 	.globl _Sendbyte7219
                                    121 	.globl _Display
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
                                    234 ; internal ram data
                                    235 ;--------------------------------------------------------
                                    236 	.area DSEG    (DATA)
      000008                        237 _mode::
      000008                        238 	.ds 1
      000009                        239 _key::
      000009                        240 	.ds 1
      00000A                        241 _prek::
      00000A                        242 	.ds 1
      00000B                        243 _num1::
      00000B                        244 	.ds 4
      00000F                        245 _num2::
      00000F                        246 	.ds 4
      000013                        247 _opr::
      000013                        248 	.ds 1
      000014                        249 _Display_num_65536_35:
      000014                        250 	.ds 4
                                    251 ;--------------------------------------------------------
                                    252 ; overlayable items in internal ram 
                                    253 ;--------------------------------------------------------
                                    254 	.area	OSEG    (OVR,DATA)
      000018                        255 _Sendbyte7219_PARM_2:
      000018                        256 	.ds 1
                                    257 ;--------------------------------------------------------
                                    258 ; Stack segment in internal ram 
                                    259 ;--------------------------------------------------------
                                    260 	.area	SSEG
      00001C                        261 __start__stack:
      00001C                        262 	.ds	1
                                    263 
                                    264 ;--------------------------------------------------------
                                    265 ; indirectly addressable internal ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area ISEG    (DATA)
                                    268 ;--------------------------------------------------------
                                    269 ; absolute internal ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area IABS    (ABS,DATA)
                                    272 	.area IABS    (ABS,DATA)
                                    273 ;--------------------------------------------------------
                                    274 ; bit data
                                    275 ;--------------------------------------------------------
                                    276 	.area BSEG    (BIT)
                                    277 ;--------------------------------------------------------
                                    278 ; paged external ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area PSEG    (PAG,XDATA)
                                    281 ;--------------------------------------------------------
                                    282 ; external ram data
                                    283 ;--------------------------------------------------------
                                    284 	.area XSEG    (XDATA)
                                    285 ;--------------------------------------------------------
                                    286 ; absolute external ram data
                                    287 ;--------------------------------------------------------
                                    288 	.area XABS    (ABS,XDATA)
                                    289 ;--------------------------------------------------------
                                    290 ; external initialized ram data
                                    291 ;--------------------------------------------------------
                                    292 	.area XISEG   (XDATA)
                                    293 	.area HOME    (CODE)
                                    294 	.area GSINIT0 (CODE)
                                    295 	.area GSINIT1 (CODE)
                                    296 	.area GSINIT2 (CODE)
                                    297 	.area GSINIT3 (CODE)
                                    298 	.area GSINIT4 (CODE)
                                    299 	.area GSINIT5 (CODE)
                                    300 	.area GSINIT  (CODE)
                                    301 	.area GSFINAL (CODE)
                                    302 	.area CSEG    (CODE)
                                    303 ;--------------------------------------------------------
                                    304 ; interrupt vector 
                                    305 ;--------------------------------------------------------
                                    306 	.area HOME    (CODE)
      000000                        307 __interrupt_vect:
      000000 02 00 06         [24]  308 	ljmp	__sdcc_gsinit_startup
                                    309 ;--------------------------------------------------------
                                    310 ; global & static initialisations
                                    311 ;--------------------------------------------------------
                                    312 	.area HOME    (CODE)
                                    313 	.area GSINIT  (CODE)
                                    314 	.area GSFINAL (CODE)
                                    315 	.area GSINIT  (CODE)
                                    316 	.globl __sdcc_gsinit_startup
                                    317 	.globl __sdcc_program_startup
                                    318 	.globl __start__stack
                                    319 	.globl __mcs51_genXINIT
                                    320 	.globl __mcs51_genXRAMCLEAR
                                    321 	.globl __mcs51_genRAMCLEAR
                                    322 ;	./src/main.c:7: unsigned char mode = 1; // 1~3: , in1, opr, in2
      00005F 75 08 01         [24]  323 	mov	_mode,#0x01
                                    324 ;	./src/main.c:8: unsigned char key = 15;
      000062 75 09 0F         [24]  325 	mov	_key,#0x0f
                                    326 ;	./src/main.c:9: unsigned char prek = 15;
      000065 75 0A 0F         [24]  327 	mov	_prek,#0x0f
                                    328 ;	./src/main.c:12: unsigned long num1 = 0;
      000068 E4               [12]  329 	clr	a
      000069 F5 0B            [12]  330 	mov	_num1,a
      00006B F5 0C            [12]  331 	mov	(_num1 + 1),a
      00006D F5 0D            [12]  332 	mov	(_num1 + 2),a
      00006F F5 0E            [12]  333 	mov	(_num1 + 3),a
                                    334 ;	./src/main.c:13: unsigned long num2 = 0;
      000071 F5 0F            [12]  335 	mov	_num2,a
      000073 F5 10            [12]  336 	mov	(_num2 + 1),a
      000075 F5 11            [12]  337 	mov	(_num2 + 2),a
      000077 F5 12            [12]  338 	mov	(_num2 + 3),a
                                    339 ;	./src/main.c:14: unsigned char opr = 0;
                                    340 ;	1-genFromRTrack replaced	mov	_opr,#0x00
      000079 F5 13            [12]  341 	mov	_opr,a
                                    342 	.area GSFINAL (CODE)
      00007B 02 00 03         [24]  343 	ljmp	__sdcc_program_startup
                                    344 ;--------------------------------------------------------
                                    345 ; Home
                                    346 ;--------------------------------------------------------
                                    347 	.area HOME    (CODE)
                                    348 	.area HOME    (CODE)
      000003                        349 __sdcc_program_startup:
      000003 02 00 7E         [24]  350 	ljmp	_main
                                    351 ;	return from main will return to caller
                                    352 ;--------------------------------------------------------
                                    353 ; code
                                    354 ;--------------------------------------------------------
                                    355 	.area CSEG    (CODE)
                                    356 ;------------------------------------------------------------
                                    357 ;Allocation info for local variables in function 'main'
                                    358 ;------------------------------------------------------------
                                    359 ;	./src/main.c:25: void main(void){
                                    360 ;	-----------------------------------------
                                    361 ;	 function main
                                    362 ;	-----------------------------------------
      00007E                        363 _main:
                           000007   364 	ar7 = 0x07
                           000006   365 	ar6 = 0x06
                           000005   366 	ar5 = 0x05
                           000004   367 	ar4 = 0x04
                           000003   368 	ar3 = 0x03
                           000002   369 	ar2 = 0x02
                           000001   370 	ar1 = 0x01
                           000000   371 	ar0 = 0x00
                                    372 ;	./src/main.c:27: Sendbyte7219(SHUT_DOWN,    0x01);
      00007E 75 18 01         [24]  373 	mov	_Sendbyte7219_PARM_2,#0x01
      000081 75 82 0C         [24]  374 	mov	dpl,#0x0c
      000084 12 03 22         [24]  375 	lcall	_Sendbyte7219
                                    376 ;	./src/main.c:28: Sendbyte7219(DISPLAY_TEST, 0x00);
      000087 75 18 00         [24]  377 	mov	_Sendbyte7219_PARM_2,#0x00
      00008A 75 82 0F         [24]  378 	mov	dpl,#0x0f
      00008D 12 03 22         [24]  379 	lcall	_Sendbyte7219
                                    380 ;	./src/main.c:29: Sendbyte7219(DECODE_MODE,  0xff);
      000090 75 18 FF         [24]  381 	mov	_Sendbyte7219_PARM_2,#0xff
      000093 75 82 09         [24]  382 	mov	dpl,#0x09
      000096 12 03 22         [24]  383 	lcall	_Sendbyte7219
                                    384 ;	./src/main.c:30: Sendbyte7219(SCAN_LIMIT,   0x07);
      000099 75 18 07         [24]  385 	mov	_Sendbyte7219_PARM_2,#0x07
      00009C 75 82 0B         [24]  386 	mov	dpl,#0x0b
      00009F 12 03 22         [24]  387 	lcall	_Sendbyte7219
                                    388 ;	./src/main.c:31: Sendbyte7219(INTENSITY,    0x00);
      0000A2 75 18 00         [24]  389 	mov	_Sendbyte7219_PARM_2,#0x00
      0000A5 75 82 0A         [24]  390 	mov	dpl,#0x0a
      0000A8 12 03 22         [24]  391 	lcall	_Sendbyte7219
                                    392 ;	./src/main.c:34: while (1){
      0000AB                        393 00118$:
                                    394 ;	./src/main.c:35: key = Get_Key();
      0000AB 12 04 41         [24]  395 	lcall	_Get_Key
      0000AE 85 82 09         [24]  396 	mov	_key,dpl
                                    397 ;	./src/main.c:36: if (key != 15 && prek != key){ // 0 ~ 9
      0000B1 74 0F            [12]  398 	mov	a,#0x0f
      0000B3 B5 09 02         [24]  399 	cjne	a,_key,00154$
      0000B6 80 35            [24]  400 	sjmp	00112$
      0000B8                        401 00154$:
      0000B8 E5 09            [12]  402 	mov	a,_key
      0000BA B5 0A 02         [24]  403 	cjne	a,_prek,00155$
      0000BD 80 2E            [24]  404 	sjmp	00112$
      0000BF                        405 00155$:
                                    406 ;	./src/main.c:38: if (key != Get_Key())continue;
      0000BF 12 04 41         [24]  407 	lcall	_Get_Key
      0000C2 E5 82            [12]  408 	mov	a,dpl
      0000C4 FF               [12]  409 	mov	r7,a
      0000C5 B5 09 E3         [24]  410 	cjne	a,_key,00118$
                                    411 ;	./src/main.c:39: if (mode == 1){
      0000C8 74 01            [12]  412 	mov	a,#0x01
      0000CA B5 08 08         [24]  413 	cjne	a,_mode,00109$
                                    414 ;	./src/main.c:40: Mode_1(key);
      0000CD 85 09 82         [24]  415 	mov	dpl,_key
      0000D0 12 01 15         [24]  416 	lcall	_Mode_1
      0000D3 80 18            [24]  417 	sjmp	00112$
      0000D5                        418 00109$:
                                    419 ;	./src/main.c:41: }else if (mode == 2){
      0000D5 74 02            [12]  420 	mov	a,#0x02
      0000D7 B5 08 08         [24]  421 	cjne	a,_mode,00106$
                                    422 ;	./src/main.c:42: Mode_2(key);
      0000DA 85 09 82         [24]  423 	mov	dpl,_key
      0000DD 12 01 A2         [24]  424 	lcall	_Mode_2
      0000E0 80 0B            [24]  425 	sjmp	00112$
      0000E2                        426 00106$:
                                    427 ;	./src/main.c:43: }else if (mode == 3){
      0000E2 74 03            [12]  428 	mov	a,#0x03
      0000E4 B5 08 06         [24]  429 	cjne	a,_mode,00112$
                                    430 ;	./src/main.c:44: Mode_3(key);
      0000E7 85 09 82         [24]  431 	mov	dpl,_key
      0000EA 12 01 F0         [24]  432 	lcall	_Mode_3
      0000ED                        433 00112$:
                                    434 ;	./src/main.c:48: Display();
      0000ED 12 03 5D         [24]  435 	lcall	_Display
                                    436 ;	./src/main.c:49: prek = key;
      0000F0 85 09 0A         [24]  437 	mov	_prek,_key
                                    438 ;	./src/main.c:50: if (mode == 2) LED = ~(1<<(opr+4));
      0000F3 74 02            [12]  439 	mov	a,#0x02
      0000F5 B5 08 18         [24]  440 	cjne	a,_mode,00115$
      0000F8 AF 13            [24]  441 	mov	r7,_opr
      0000FA 74 04            [12]  442 	mov	a,#0x04
      0000FC 2F               [12]  443 	add	a,r7
      0000FD F5 F0            [12]  444 	mov	b,a
      0000FF 05 F0            [12]  445 	inc	b
      000101 74 01            [12]  446 	mov	a,#0x01
      000103 80 02            [24]  447 	sjmp	00168$
      000105                        448 00166$:
      000105 25 E0            [12]  449 	add	a,acc
      000107                        450 00168$:
      000107 D5 F0 FB         [24]  451 	djnz	b,00166$
      00010A FF               [12]  452 	mov	r7,a
      00010B F4               [12]  453 	cpl	a
      00010C F5 90            [12]  454 	mov	_P1,a
      00010E 80 9B            [24]  455 	sjmp	00118$
      000110                        456 00115$:
                                    457 ;	./src/main.c:51: else LED = 0xff;
      000110 75 90 FF         [24]  458 	mov	_P1,#0xff
                                    459 ;	./src/main.c:54: }
      000113 80 96            [24]  460 	sjmp	00118$
                                    461 ;------------------------------------------------------------
                                    462 ;Allocation info for local variables in function 'Mode_1'
                                    463 ;------------------------------------------------------------
                                    464 ;k                         Allocated to registers r7 
                                    465 ;------------------------------------------------------------
                                    466 ;	./src/main.c:56: void Mode_1(unsigned char k){ // in1
                                    467 ;	-----------------------------------------
                                    468 ;	 function Mode_1
                                    469 ;	-----------------------------------------
      000115                        470 _Mode_1:
      000115 AF 82            [24]  471 	mov	r7,dpl
                                    472 ;	./src/main.c:57: switch (k){
      000117 BF 0A 02         [24]  473 	cjne	r7,#0x0a,00125$
      00011A 80 0E            [24]  474 	sjmp	00101$
      00011C                        475 00125$:
      00011C BF 0B 02         [24]  476 	cjne	r7,#0x0b,00126$
      00011F 80 10            [24]  477 	sjmp	00102$
      000121                        478 00126$:
      000121 BF 0C 02         [24]  479 	cjne	r7,#0x0c,00127$
      000124 80 2F            [24]  480 	sjmp	00103$
      000126                        481 00127$:
                                    482 ;	./src/main.c:58: case 10: // op
      000126 BF 0D 42         [24]  483 	cjne	r7,#0x0d,00105$
      000129 22               [24]  484 	ret
      00012A                        485 00101$:
                                    486 ;	./src/main.c:59: opr = 0;
      00012A 75 13 00         [24]  487 	mov	_opr,#0x00
                                    488 ;	./src/main.c:60: mode = 2;
      00012D 75 08 02         [24]  489 	mov	_mode,#0x02
                                    490 ;	./src/main.c:61: break; 
                                    491 ;	./src/main.c:62: case 11: // back
      000130 22               [24]  492 	ret
      000131                        493 00102$:
                                    494 ;	./src/main.c:63: num1 /= 10;
      000131 75 18 0A         [24]  495 	mov	__divulong_PARM_2,#0x0a
      000134 E4               [12]  496 	clr	a
      000135 F5 19            [12]  497 	mov	(__divulong_PARM_2 + 1),a
      000137 F5 1A            [12]  498 	mov	(__divulong_PARM_2 + 2),a
      000139 F5 1B            [12]  499 	mov	(__divulong_PARM_2 + 3),a
      00013B 85 0B 82         [24]  500 	mov	dpl,_num1
      00013E 85 0C 83         [24]  501 	mov	dph,(_num1 + 1)
      000141 85 0D F0         [24]  502 	mov	b,(_num1 + 2)
      000144 E5 0E            [12]  503 	mov	a,(_num1 + 3)
      000146 12 05 77         [24]  504 	lcall	__divulong
      000149 85 82 0B         [24]  505 	mov	_num1,dpl
      00014C 85 83 0C         [24]  506 	mov	(_num1 + 1),dph
      00014F 85 F0 0D         [24]  507 	mov	(_num1 + 2),b
      000152 F5 0E            [12]  508 	mov	(_num1 + 3),a
                                    509 ;	./src/main.c:64: break; 
                                    510 ;	./src/main.c:65: case 12: // ac
      000154 22               [24]  511 	ret
      000155                        512 00103$:
                                    513 ;	./src/main.c:66: num1 = 0;num2 = 0;
      000155 E4               [12]  514 	clr	a
      000156 F5 0B            [12]  515 	mov	_num1,a
      000158 F5 0C            [12]  516 	mov	(_num1 + 1),a
      00015A F5 0D            [12]  517 	mov	(_num1 + 2),a
      00015C F5 0E            [12]  518 	mov	(_num1 + 3),a
      00015E F5 0F            [12]  519 	mov	_num2,a
      000160 F5 10            [12]  520 	mov	(_num2 + 1),a
      000162 F5 11            [12]  521 	mov	(_num2 + 2),a
      000164 F5 12            [12]  522 	mov	(_num2 + 3),a
                                    523 ;	./src/main.c:67: mode = 1;
      000166 75 08 01         [24]  524 	mov	_mode,#0x01
                                    525 ;	./src/main.c:68: break; 
                                    526 ;	./src/main.c:69: case 13: // equal
      000169 22               [24]  527 	ret
                                    528 ;	./src/main.c:70: num1 = num1;
                                    529 ;	./src/main.c:71: break; 
                                    530 ;	./src/main.c:72: default:
      00016A 22               [24]  531 	ret
      00016B                        532 00105$:
                                    533 ;	./src/main.c:73: num1 = num1 * 10 + k;
      00016B 85 0B 18         [24]  534 	mov	__mullong_PARM_2,_num1
      00016E 85 0C 19         [24]  535 	mov	(__mullong_PARM_2 + 1),(_num1 + 1)
      000171 85 0D 1A         [24]  536 	mov	(__mullong_PARM_2 + 2),(_num1 + 2)
      000174 85 0E 1B         [24]  537 	mov	(__mullong_PARM_2 + 3),(_num1 + 3)
      000177 90 00 0A         [24]  538 	mov	dptr,#(0x0a&0x00ff)
      00017A E4               [12]  539 	clr	a
      00017B F5 F0            [12]  540 	mov	b,a
      00017D C0 07            [24]  541 	push	ar7
      00017F 12 05 DC         [24]  542 	lcall	__mullong
      000182 AB 82            [24]  543 	mov	r3,dpl
      000184 AC 83            [24]  544 	mov	r4,dph
      000186 AD F0            [24]  545 	mov	r5,b
      000188 FE               [12]  546 	mov	r6,a
      000189 D0 07            [24]  547 	pop	ar7
      00018B 8F 00            [24]  548 	mov	ar0,r7
      00018D E4               [12]  549 	clr	a
      00018E F9               [12]  550 	mov	r1,a
      00018F FA               [12]  551 	mov	r2,a
      000190 FF               [12]  552 	mov	r7,a
      000191 E8               [12]  553 	mov	a,r0
      000192 2B               [12]  554 	add	a,r3
      000193 F5 0B            [12]  555 	mov	_num1,a
      000195 E9               [12]  556 	mov	a,r1
      000196 3C               [12]  557 	addc	a,r4
      000197 F5 0C            [12]  558 	mov	(_num1 + 1),a
      000199 EA               [12]  559 	mov	a,r2
      00019A 3D               [12]  560 	addc	a,r5
      00019B F5 0D            [12]  561 	mov	(_num1 + 2),a
      00019D EF               [12]  562 	mov	a,r7
      00019E 3E               [12]  563 	addc	a,r6
      00019F F5 0E            [12]  564 	mov	(_num1 + 3),a
                                    565 ;	./src/main.c:75: }
                                    566 ;	./src/main.c:76: }
      0001A1 22               [24]  567 	ret
                                    568 ;------------------------------------------------------------
                                    569 ;Allocation info for local variables in function 'Mode_2'
                                    570 ;------------------------------------------------------------
                                    571 ;k                         Allocated to registers r7 
                                    572 ;------------------------------------------------------------
                                    573 ;	./src/main.c:78: void Mode_2(unsigned char k){ // opr
                                    574 ;	-----------------------------------------
                                    575 ;	 function Mode_2
                                    576 ;	-----------------------------------------
      0001A2                        577 _Mode_2:
      0001A2 AF 82            [24]  578 	mov	r7,dpl
                                    579 ;	./src/main.c:79: switch (k){
      0001A4 BF 0A 02         [24]  580 	cjne	r7,#0x0a,00125$
      0001A7 80 0D            [24]  581 	sjmp	00101$
      0001A9                        582 00125$:
      0001A9 BF 0B 01         [24]  583 	cjne	r7,#0x0b,00126$
      0001AC 22               [24]  584 	ret
      0001AD                        585 00126$:
      0001AD BF 0C 02         [24]  586 	cjne	r7,#0x0c,00127$
      0001B0 80 1A            [24]  587 	sjmp	00103$
      0001B2                        588 00127$:
                                    589 ;	./src/main.c:80: case 10: // op
      0001B2 BF 0D 2C         [24]  590 	cjne	r7,#0x0d,00105$
      0001B5 22               [24]  591 	ret
      0001B6                        592 00101$:
                                    593 ;	./src/main.c:81: opr = (opr + 1)%4;
      0001B6 AD 13            [24]  594 	mov	r5,_opr
      0001B8 7E 00            [12]  595 	mov	r6,#0x00
      0001BA 8D 82            [24]  596 	mov	dpl,r5
      0001BC 8E 83            [24]  597 	mov	dph,r6
      0001BE A3               [24]  598 	inc	dptr
      0001BF 75 18 04         [24]  599 	mov	__modsint_PARM_2,#0x04
                                    600 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      0001C2 8E 19            [24]  601 	mov	(__modsint_PARM_2 + 1),r6
      0001C4 12 06 97         [24]  602 	lcall	__modsint
      0001C7 AD 82            [24]  603 	mov	r5,dpl
      0001C9 8D 13            [24]  604 	mov	_opr,r5
                                    605 ;	./src/main.c:82: break; 
                                    606 ;	./src/main.c:84: case 12: // ac
      0001CB 22               [24]  607 	ret
      0001CC                        608 00103$:
                                    609 ;	./src/main.c:85: num1 = 0;num2 = 0;
      0001CC E4               [12]  610 	clr	a
      0001CD F5 0B            [12]  611 	mov	_num1,a
      0001CF F5 0C            [12]  612 	mov	(_num1 + 1),a
      0001D1 F5 0D            [12]  613 	mov	(_num1 + 2),a
      0001D3 F5 0E            [12]  614 	mov	(_num1 + 3),a
      0001D5 F5 0F            [12]  615 	mov	_num2,a
      0001D7 F5 10            [12]  616 	mov	(_num2 + 1),a
      0001D9 F5 11            [12]  617 	mov	(_num2 + 2),a
      0001DB F5 12            [12]  618 	mov	(_num2 + 3),a
                                    619 ;	./src/main.c:86: mode = 1;
      0001DD 75 08 01         [24]  620 	mov	_mode,#0x01
                                    621 ;	./src/main.c:87: break; 
                                    622 ;	./src/main.c:90: default:
      0001E0 22               [24]  623 	ret
      0001E1                        624 00105$:
                                    625 ;	./src/main.c:91: num2 = k;
      0001E1 8F 0F            [24]  626 	mov	_num2,r7
      0001E3 75 10 00         [24]  627 	mov	(_num2 + 1),#0x00
      0001E6 75 11 00         [24]  628 	mov	(_num2 + 2),#0x00
      0001E9 75 12 00         [24]  629 	mov	(_num2 + 3),#0x00
                                    630 ;	./src/main.c:92: mode = 3;
      0001EC 75 08 03         [24]  631 	mov	_mode,#0x03
                                    632 ;	./src/main.c:94: }
                                    633 ;	./src/main.c:95: }
      0001EF 22               [24]  634 	ret
                                    635 ;------------------------------------------------------------
                                    636 ;Allocation info for local variables in function 'Mode_3'
                                    637 ;------------------------------------------------------------
                                    638 ;k                         Allocated to registers r7 
                                    639 ;------------------------------------------------------------
                                    640 ;	./src/main.c:97: void Mode_3(unsigned char k){ // in2
                                    641 ;	-----------------------------------------
                                    642 ;	 function Mode_3
                                    643 ;	-----------------------------------------
      0001F0                        644 _Mode_3:
      0001F0 AF 82            [24]  645 	mov	r7,dpl
                                    646 ;	./src/main.c:98: switch (k){
      0001F2 BF 0A 02         [24]  647 	cjne	r7,#0x0a,00125$
      0001F5 80 0F            [24]  648 	sjmp	00101$
      0001F7                        649 00125$:
      0001F7 BF 0B 02         [24]  650 	cjne	r7,#0x0b,00126$
      0001FA 80 1F            [24]  651 	sjmp	00102$
      0001FC                        652 00126$:
      0001FC BF 0C 02         [24]  653 	cjne	r7,#0x0c,00127$
      0001FF 80 3E            [24]  654 	sjmp	00103$
      000201                        655 00127$:
                                    656 ;	./src/main.c:99: case 10: // op
      000201 BF 0D 64         [24]  657 	cjne	r7,#0x0d,00105$
      000204 80 50            [24]  658 	sjmp	00104$
      000206                        659 00101$:
                                    660 ;	./src/main.c:100: num1  = num_opr();
      000206 12 02 9F         [24]  661 	lcall	_num_opr
      000209 85 82 0B         [24]  662 	mov	_num1,dpl
      00020C 85 83 0C         [24]  663 	mov	(_num1 + 1),dph
      00020F 85 F0 0D         [24]  664 	mov	(_num1 + 2),b
      000212 F5 0E            [12]  665 	mov	(_num1 + 3),a
                                    666 ;	./src/main.c:101: opr = 0;
      000214 75 13 00         [24]  667 	mov	_opr,#0x00
                                    668 ;	./src/main.c:102: mode = 2;
      000217 75 08 02         [24]  669 	mov	_mode,#0x02
                                    670 ;	./src/main.c:103: break; 
      00021A 22               [24]  671 	ret
                                    672 ;	./src/main.c:104: case 11: // back
      00021B                        673 00102$:
                                    674 ;	./src/main.c:105: num2 /= 10;
      00021B 75 18 0A         [24]  675 	mov	__divulong_PARM_2,#0x0a
      00021E E4               [12]  676 	clr	a
      00021F F5 19            [12]  677 	mov	(__divulong_PARM_2 + 1),a
      000221 F5 1A            [12]  678 	mov	(__divulong_PARM_2 + 2),a
      000223 F5 1B            [12]  679 	mov	(__divulong_PARM_2 + 3),a
      000225 85 0F 82         [24]  680 	mov	dpl,_num2
      000228 85 10 83         [24]  681 	mov	dph,(_num2 + 1)
      00022B 85 11 F0         [24]  682 	mov	b,(_num2 + 2)
      00022E E5 12            [12]  683 	mov	a,(_num2 + 3)
      000230 12 05 77         [24]  684 	lcall	__divulong
      000233 85 82 0F         [24]  685 	mov	_num2,dpl
      000236 85 83 10         [24]  686 	mov	(_num2 + 1),dph
      000239 85 F0 11         [24]  687 	mov	(_num2 + 2),b
      00023C F5 12            [12]  688 	mov	(_num2 + 3),a
                                    689 ;	./src/main.c:106: break; 
                                    690 ;	./src/main.c:107: case 12: // ac
      00023E 22               [24]  691 	ret
      00023F                        692 00103$:
                                    693 ;	./src/main.c:108: num1 = 0;num2 = 0;opr = 0;
      00023F E4               [12]  694 	clr	a
      000240 F5 0B            [12]  695 	mov	_num1,a
      000242 F5 0C            [12]  696 	mov	(_num1 + 1),a
      000244 F5 0D            [12]  697 	mov	(_num1 + 2),a
      000246 F5 0E            [12]  698 	mov	(_num1 + 3),a
      000248 F5 0F            [12]  699 	mov	_num2,a
      00024A F5 10            [12]  700 	mov	(_num2 + 1),a
      00024C F5 11            [12]  701 	mov	(_num2 + 2),a
      00024E F5 12            [12]  702 	mov	(_num2 + 3),a
                                    703 ;	1-genFromRTrack replaced	mov	_opr,#0x00
      000250 F5 13            [12]  704 	mov	_opr,a
                                    705 ;	./src/main.c:109: mode = 1;
      000252 75 08 01         [24]  706 	mov	_mode,#0x01
                                    707 ;	./src/main.c:110: break; 
                                    708 ;	./src/main.c:111: case 13: // equal
      000255 22               [24]  709 	ret
      000256                        710 00104$:
                                    711 ;	./src/main.c:112: num1 = num_opr();
      000256 12 02 9F         [24]  712 	lcall	_num_opr
      000259 85 82 0B         [24]  713 	mov	_num1,dpl
      00025C 85 83 0C         [24]  714 	mov	(_num1 + 1),dph
      00025F 85 F0 0D         [24]  715 	mov	(_num1 + 2),b
      000262 F5 0E            [12]  716 	mov	(_num1 + 3),a
                                    717 ;	./src/main.c:114: mode = 1;
      000264 75 08 01         [24]  718 	mov	_mode,#0x01
                                    719 ;	./src/main.c:115: break; 
                                    720 ;	./src/main.c:117: default:
      000267 22               [24]  721 	ret
      000268                        722 00105$:
                                    723 ;	./src/main.c:118: num2 = num2*10 + k;
      000268 85 0F 18         [24]  724 	mov	__mullong_PARM_2,_num2
      00026B 85 10 19         [24]  725 	mov	(__mullong_PARM_2 + 1),(_num2 + 1)
      00026E 85 11 1A         [24]  726 	mov	(__mullong_PARM_2 + 2),(_num2 + 2)
      000271 85 12 1B         [24]  727 	mov	(__mullong_PARM_2 + 3),(_num2 + 3)
      000274 90 00 0A         [24]  728 	mov	dptr,#(0x0a&0x00ff)
      000277 E4               [12]  729 	clr	a
      000278 F5 F0            [12]  730 	mov	b,a
      00027A C0 07            [24]  731 	push	ar7
      00027C 12 05 DC         [24]  732 	lcall	__mullong
      00027F AB 82            [24]  733 	mov	r3,dpl
      000281 AC 83            [24]  734 	mov	r4,dph
      000283 AD F0            [24]  735 	mov	r5,b
      000285 FE               [12]  736 	mov	r6,a
      000286 D0 07            [24]  737 	pop	ar7
      000288 8F 00            [24]  738 	mov	ar0,r7
      00028A E4               [12]  739 	clr	a
      00028B F9               [12]  740 	mov	r1,a
      00028C FA               [12]  741 	mov	r2,a
      00028D FF               [12]  742 	mov	r7,a
      00028E E8               [12]  743 	mov	a,r0
      00028F 2B               [12]  744 	add	a,r3
      000290 F5 0F            [12]  745 	mov	_num2,a
      000292 E9               [12]  746 	mov	a,r1
      000293 3C               [12]  747 	addc	a,r4
      000294 F5 10            [12]  748 	mov	(_num2 + 1),a
      000296 EA               [12]  749 	mov	a,r2
      000297 3D               [12]  750 	addc	a,r5
      000298 F5 11            [12]  751 	mov	(_num2 + 2),a
      00029A EF               [12]  752 	mov	a,r7
      00029B 3E               [12]  753 	addc	a,r6
      00029C F5 12            [12]  754 	mov	(_num2 + 3),a
                                    755 ;	./src/main.c:120: }
                                    756 ;	./src/main.c:121: }
      00029E 22               [24]  757 	ret
                                    758 ;------------------------------------------------------------
                                    759 ;Allocation info for local variables in function 'num_opr'
                                    760 ;------------------------------------------------------------
                                    761 ;	./src/main.c:123: unsigned long num_opr(void){
                                    762 ;	-----------------------------------------
                                    763 ;	 function num_opr
                                    764 ;	-----------------------------------------
      00029F                        765 _num_opr:
                                    766 ;	./src/main.c:124: if (opr == 0)
      00029F E5 13            [12]  767 	mov	a,_opr
      0002A1 70 1A            [24]  768 	jnz	00110$
                                    769 ;	./src/main.c:125: return num1 + num2;
      0002A3 E5 0F            [12]  770 	mov	a,_num2
      0002A5 25 0B            [12]  771 	add	a,_num1
      0002A7 FC               [12]  772 	mov	r4,a
      0002A8 E5 10            [12]  773 	mov	a,(_num2 + 1)
      0002AA 35 0C            [12]  774 	addc	a,(_num1 + 1)
      0002AC FD               [12]  775 	mov	r5,a
      0002AD E5 11            [12]  776 	mov	a,(_num2 + 2)
      0002AF 35 0D            [12]  777 	addc	a,(_num1 + 2)
      0002B1 FE               [12]  778 	mov	r6,a
      0002B2 E5 12            [12]  779 	mov	a,(_num2 + 3)
      0002B4 35 0E            [12]  780 	addc	a,(_num1 + 3)
      0002B6 8C 82            [24]  781 	mov	dpl,r4
      0002B8 8D 83            [24]  782 	mov	dph,r5
      0002BA 8E F0            [24]  783 	mov	b,r6
      0002BC 22               [24]  784 	ret
      0002BD                        785 00110$:
                                    786 ;	./src/main.c:126: else if (opr == 1)
      0002BD 74 01            [12]  787 	mov	a,#0x01
      0002BF B5 13 1B         [24]  788 	cjne	a,_opr,00107$
                                    789 ;	./src/main.c:127: return num1 - num2;
      0002C2 E5 0B            [12]  790 	mov	a,_num1
      0002C4 C3               [12]  791 	clr	c
      0002C5 95 0F            [12]  792 	subb	a,_num2
      0002C7 FC               [12]  793 	mov	r4,a
      0002C8 E5 0C            [12]  794 	mov	a,(_num1 + 1)
      0002CA 95 10            [12]  795 	subb	a,(_num2 + 1)
      0002CC FD               [12]  796 	mov	r5,a
      0002CD E5 0D            [12]  797 	mov	a,(_num1 + 2)
      0002CF 95 11            [12]  798 	subb	a,(_num2 + 2)
      0002D1 FE               [12]  799 	mov	r6,a
      0002D2 E5 0E            [12]  800 	mov	a,(_num1 + 3)
      0002D4 95 12            [12]  801 	subb	a,(_num2 + 3)
      0002D6 8C 82            [24]  802 	mov	dpl,r4
      0002D8 8D 83            [24]  803 	mov	dph,r5
      0002DA 8E F0            [24]  804 	mov	b,r6
      0002DC 22               [24]  805 	ret
      0002DD                        806 00107$:
                                    807 ;	./src/main.c:128: else if (opr == 2)
      0002DD 74 02            [12]  808 	mov	a,#0x02
      0002DF B5 13 1A         [24]  809 	cjne	a,_opr,00104$
                                    810 ;	./src/main.c:129: return num1 * num2;
      0002E2 85 0F 18         [24]  811 	mov	__mullong_PARM_2,_num2
      0002E5 85 10 19         [24]  812 	mov	(__mullong_PARM_2 + 1),(_num2 + 1)
      0002E8 85 11 1A         [24]  813 	mov	(__mullong_PARM_2 + 2),(_num2 + 2)
      0002EB 85 12 1B         [24]  814 	mov	(__mullong_PARM_2 + 3),(_num2 + 3)
      0002EE 85 0B 82         [24]  815 	mov	dpl,_num1
      0002F1 85 0C 83         [24]  816 	mov	dph,(_num1 + 1)
      0002F4 85 0D F0         [24]  817 	mov	b,(_num1 + 2)
      0002F7 E5 0E            [12]  818 	mov	a,(_num1 + 3)
      0002F9 02 05 DC         [24]  819 	ljmp	__mullong
      0002FC                        820 00104$:
                                    821 ;	./src/main.c:130: else if (opr == 3)
      0002FC 74 03            [12]  822 	mov	a,#0x03
      0002FE B5 13 1A         [24]  823 	cjne	a,_opr,00108$
                                    824 ;	./src/main.c:131: return num1 / num2;
      000301 85 0F 18         [24]  825 	mov	__divulong_PARM_2,_num2
      000304 85 10 19         [24]  826 	mov	(__divulong_PARM_2 + 1),(_num2 + 1)
      000307 85 11 1A         [24]  827 	mov	(__divulong_PARM_2 + 2),(_num2 + 2)
      00030A 85 12 1B         [24]  828 	mov	(__divulong_PARM_2 + 3),(_num2 + 3)
      00030D 85 0B 82         [24]  829 	mov	dpl,_num1
      000310 85 0C 83         [24]  830 	mov	dph,(_num1 + 1)
      000313 85 0D F0         [24]  831 	mov	b,(_num1 + 2)
      000316 E5 0E            [12]  832 	mov	a,(_num1 + 3)
      000318 02 05 77         [24]  833 	ljmp	__divulong
      00031B                        834 00108$:
                                    835 ;	./src/main.c:132: return 0;
      00031B 90 00 00         [24]  836 	mov	dptr,#(0x00&0x00ff)
      00031E E4               [12]  837 	clr	a
      00031F F5 F0            [12]  838 	mov	b,a
                                    839 ;	./src/main.c:133: }
      000321 22               [24]  840 	ret
                                    841 ;------------------------------------------------------------
                                    842 ;Allocation info for local variables in function 'Sendbyte7219'
                                    843 ;------------------------------------------------------------
                                    844 ;dat                       Allocated with name '_Sendbyte7219_PARM_2'
                                    845 ;address                   Allocated to registers r7 
                                    846 ;i                         Allocated to registers r6 
                                    847 ;------------------------------------------------------------
                                    848 ;	./src/main.c:135: void Sendbyte7219 (unsigned char address, unsigned char dat) {
                                    849 ;	-----------------------------------------
                                    850 ;	 function Sendbyte7219
                                    851 ;	-----------------------------------------
      000322                        852 _Sendbyte7219:
      000322 AF 82            [24]  853 	mov	r7,dpl
                                    854 ;	./src/main.c:136: LOAD = 0;
                                    855 ;	assignBit
      000324 C2 A6            [12]  856 	clr	_P2_6
                                    857 ;	./src/main.c:139: for (i = 0; i < 8; i++) {        // get last 8 bits(address)
      000326 7E 00            [12]  858 	mov	r6,#0x00
      000328                        859 00103$:
                                    860 ;	./src/main.c:140: CLK = 0;
                                    861 ;	assignBit
      000328 C2 A5            [12]  862 	clr	_P2_5
                                    863 ;	./src/main.c:141: DOUT = (address & 0x80);      // get msb and shift left
      00032A EF               [12]  864 	mov	a,r7
      00032B 23               [12]  865 	rl	a
      00032C 54 01            [12]  866 	anl	a,#0x01
                                    867 ;	assignBit
      00032E 24 FF            [12]  868 	add	a,#0xff
      000330 92 A7            [24]  869 	mov	_P2_7,c
                                    870 ;	./src/main.c:142: address <<= 1; 
      000332 8F 05            [24]  871 	mov	ar5,r7
      000334 ED               [12]  872 	mov	a,r5
      000335 2D               [12]  873 	add	a,r5
      000336 FF               [12]  874 	mov	r7,a
                                    875 ;	./src/main.c:143: CLK = 1;
                                    876 ;	assignBit
      000337 D2 A5            [12]  877 	setb	_P2_5
                                    878 ;	./src/main.c:139: for (i = 0; i < 8; i++) {        // get last 8 bits(address)
      000339 0E               [12]  879 	inc	r6
      00033A BE 08 00         [24]  880 	cjne	r6,#0x08,00127$
      00033D                        881 00127$:
      00033D 40 E9            [24]  882 	jc	00103$
                                    883 ;	./src/main.c:145: for (i = 0; i < 8; i++) {        // get first 8 bits(data)
      00033F 7F 00            [12]  884 	mov	r7,#0x00
      000341                        885 00105$:
                                    886 ;	./src/main.c:146: CLK = 0;
                                    887 ;	assignBit
      000341 C2 A5            [12]  888 	clr	_P2_5
                                    889 ;	./src/main.c:147: DOUT = (dat & 0x80);          // get msb and shit left
      000343 E5 18            [12]  890 	mov	a,_Sendbyte7219_PARM_2
      000345 23               [12]  891 	rl	a
      000346 54 01            [12]  892 	anl	a,#0x01
                                    893 ;	assignBit
      000348 24 FF            [12]  894 	add	a,#0xff
      00034A 92 A7            [24]  895 	mov	_P2_7,c
                                    896 ;	./src/main.c:148: dat <<= 1;
      00034C E5 18            [12]  897 	mov	a,_Sendbyte7219_PARM_2
      00034E 25 E0            [12]  898 	add	a,acc
      000350 F5 18            [12]  899 	mov	_Sendbyte7219_PARM_2,a
                                    900 ;	./src/main.c:149: CLK = 1;
                                    901 ;	assignBit
      000352 D2 A5            [12]  902 	setb	_P2_5
                                    903 ;	./src/main.c:145: for (i = 0; i < 8; i++) {        // get first 8 bits(data)
      000354 0F               [12]  904 	inc	r7
      000355 BF 08 00         [24]  905 	cjne	r7,#0x08,00129$
      000358                        906 00129$:
      000358 40 E7            [24]  907 	jc	00105$
                                    908 ;	./src/main.c:150: }LOAD = 1;
                                    909 ;	assignBit
      00035A D2 A6            [12]  910 	setb	_P2_6
                                    911 ;	./src/main.c:151: }
      00035C 22               [24]  912 	ret
                                    913 ;------------------------------------------------------------
                                    914 ;Allocation info for local variables in function 'Display'
                                    915 ;------------------------------------------------------------
                                    916 ;num                       Allocated with name '_Display_num_65536_35'
                                    917 ;i                         Allocated to registers r3 
                                    918 ;------------------------------------------------------------
                                    919 ;	./src/main.c:153: void Display(void){
                                    920 ;	-----------------------------------------
                                    921 ;	 function Display
                                    922 ;	-----------------------------------------
      00035D                        923 _Display:
                                    924 ;	./src/main.c:155: unsigned long num = 0;
                                    925 ;	./src/main.c:156: if (mode == 1 || mode == 2)num = num1;
      00035D E4               [12]  926 	clr	a
      00035E FC               [12]  927 	mov	r4,a
      00035F FD               [12]  928 	mov	r5,a
      000360 FE               [12]  929 	mov	r6,a
      000361 FF               [12]  930 	mov	r7,a
      000362 74 01            [12]  931 	mov	a,#0x01
      000364 B5 08 02         [24]  932 	cjne	a,_mode,00135$
      000367 80 05            [24]  933 	sjmp	00101$
      000369                        934 00135$:
      000369 74 02            [12]  935 	mov	a,#0x02
      00036B B5 08 08         [24]  936 	cjne	a,_mode,00102$
      00036E                        937 00101$:
      00036E AC 0B            [24]  938 	mov	r4,_num1
      000370 AD 0C            [24]  939 	mov	r5,(_num1 + 1)
      000372 AE 0D            [24]  940 	mov	r6,(_num1 + 2)
      000374 AF 0E            [24]  941 	mov	r7,(_num1 + 3)
      000376                        942 00102$:
                                    943 ;	./src/main.c:157: if (mode == 3)num = num2;
      000376 74 03            [12]  944 	mov	a,#0x03
      000378 B5 08 08         [24]  945 	cjne	a,_mode,00105$
      00037B AC 0F            [24]  946 	mov	r4,_num2
      00037D AD 10            [24]  947 	mov	r5,(_num2 + 1)
      00037F AE 11            [24]  948 	mov	r6,(_num2 + 2)
      000381 AF 12            [24]  949 	mov	r7,(_num2 + 3)
      000383                        950 00105$:
                                    951 ;	./src/main.c:159: Sendbyte7219(1, num%10);num/=10;
      000383 75 18 0A         [24]  952 	mov	__modulong_PARM_2,#0x0a
      000386 E4               [12]  953 	clr	a
      000387 F5 19            [12]  954 	mov	(__modulong_PARM_2 + 1),a
      000389 F5 1A            [12]  955 	mov	(__modulong_PARM_2 + 2),a
      00038B F5 1B            [12]  956 	mov	(__modulong_PARM_2 + 3),a
      00038D 8C 82            [24]  957 	mov	dpl,r4
      00038F 8D 83            [24]  958 	mov	dph,r5
      000391 8E F0            [24]  959 	mov	b,r6
      000393 EF               [12]  960 	mov	a,r7
      000394 C0 07            [24]  961 	push	ar7
      000396 C0 06            [24]  962 	push	ar6
      000398 C0 05            [24]  963 	push	ar5
      00039A C0 04            [24]  964 	push	ar4
      00039C 12 04 F4         [24]  965 	lcall	__modulong
      00039F A8 82            [24]  966 	mov	r0,dpl
      0003A1 88 18            [24]  967 	mov	_Sendbyte7219_PARM_2,r0
      0003A3 75 82 01         [24]  968 	mov	dpl,#0x01
      0003A6 12 03 22         [24]  969 	lcall	_Sendbyte7219
      0003A9 D0 04            [24]  970 	pop	ar4
      0003AB D0 05            [24]  971 	pop	ar5
      0003AD D0 06            [24]  972 	pop	ar6
      0003AF D0 07            [24]  973 	pop	ar7
      0003B1 75 18 0A         [24]  974 	mov	__divulong_PARM_2,#0x0a
      0003B4 E4               [12]  975 	clr	a
      0003B5 F5 19            [12]  976 	mov	(__divulong_PARM_2 + 1),a
      0003B7 F5 1A            [12]  977 	mov	(__divulong_PARM_2 + 2),a
      0003B9 F5 1B            [12]  978 	mov	(__divulong_PARM_2 + 3),a
      0003BB 8C 82            [24]  979 	mov	dpl,r4
      0003BD 8D 83            [24]  980 	mov	dph,r5
      0003BF 8E F0            [24]  981 	mov	b,r6
      0003C1 EF               [12]  982 	mov	a,r7
      0003C2 12 05 77         [24]  983 	lcall	__divulong
      0003C5 85 82 14         [24]  984 	mov	_Display_num_65536_35,dpl
      0003C8 85 83 15         [24]  985 	mov	(_Display_num_65536_35 + 1),dph
      0003CB 85 F0 16         [24]  986 	mov	(_Display_num_65536_35 + 2),b
      0003CE F5 17            [12]  987 	mov	(_Display_num_65536_35 + 3),a
                                    988 ;	./src/main.c:160: for (i = 2;i<9;i++){
      0003D0 7B 02            [12]  989 	mov	r3,#0x02
      0003D2                        990 00110$:
                                    991 ;	./src/main.c:161: if (num) Sendbyte7219(i, num%10);
      0003D2 E5 14            [12]  992 	mov	a,_Display_num_65536_35
      0003D4 45 15            [12]  993 	orl	a,(_Display_num_65536_35 + 1)
      0003D6 45 16            [12]  994 	orl	a,(_Display_num_65536_35 + 2)
      0003D8 45 17            [12]  995 	orl	a,(_Display_num_65536_35 + 3)
      0003DA 60 2B            [24]  996 	jz	00107$
      0003DC 75 18 0A         [24]  997 	mov	__modulong_PARM_2,#0x0a
      0003DF E4               [12]  998 	clr	a
      0003E0 F5 19            [12]  999 	mov	(__modulong_PARM_2 + 1),a
      0003E2 F5 1A            [12] 1000 	mov	(__modulong_PARM_2 + 2),a
      0003E4 F5 1B            [12] 1001 	mov	(__modulong_PARM_2 + 3),a
      0003E6 85 14 82         [24] 1002 	mov	dpl,_Display_num_65536_35
      0003E9 85 15 83         [24] 1003 	mov	dph,(_Display_num_65536_35 + 1)
      0003EC 85 16 F0         [24] 1004 	mov	b,(_Display_num_65536_35 + 2)
      0003EF E5 17            [12] 1005 	mov	a,(_Display_num_65536_35 + 3)
      0003F1 C0 03            [24] 1006 	push	ar3
      0003F3 12 04 F4         [24] 1007 	lcall	__modulong
      0003F6 A8 82            [24] 1008 	mov	r0,dpl
      0003F8 D0 03            [24] 1009 	pop	ar3
      0003FA 88 18            [24] 1010 	mov	_Sendbyte7219_PARM_2,r0
      0003FC 8B 82            [24] 1011 	mov	dpl,r3
      0003FE C0 03            [24] 1012 	push	ar3
      000400 12 03 22         [24] 1013 	lcall	_Sendbyte7219
      000403 D0 03            [24] 1014 	pop	ar3
      000405 80 0C            [24] 1015 	sjmp	00108$
      000407                       1016 00107$:
                                   1017 ;	./src/main.c:162: else Sendbyte7219(i, 0x0f);
      000407 75 18 0F         [24] 1018 	mov	_Sendbyte7219_PARM_2,#0x0f
      00040A 8B 82            [24] 1019 	mov	dpl,r3
      00040C C0 03            [24] 1020 	push	ar3
      00040E 12 03 22         [24] 1021 	lcall	_Sendbyte7219
      000411 D0 03            [24] 1022 	pop	ar3
      000413                       1023 00108$:
                                   1024 ;	./src/main.c:163: num/=10;
      000413 75 18 0A         [24] 1025 	mov	__divulong_PARM_2,#0x0a
      000416 E4               [12] 1026 	clr	a
      000417 F5 19            [12] 1027 	mov	(__divulong_PARM_2 + 1),a
      000419 F5 1A            [12] 1028 	mov	(__divulong_PARM_2 + 2),a
      00041B F5 1B            [12] 1029 	mov	(__divulong_PARM_2 + 3),a
      00041D 85 14 82         [24] 1030 	mov	dpl,_Display_num_65536_35
      000420 85 15 83         [24] 1031 	mov	dph,(_Display_num_65536_35 + 1)
      000423 85 16 F0         [24] 1032 	mov	b,(_Display_num_65536_35 + 2)
      000426 E5 17            [12] 1033 	mov	a,(_Display_num_65536_35 + 3)
      000428 C0 03            [24] 1034 	push	ar3
      00042A 12 05 77         [24] 1035 	lcall	__divulong
      00042D 85 82 14         [24] 1036 	mov	_Display_num_65536_35,dpl
      000430 85 83 15         [24] 1037 	mov	(_Display_num_65536_35 + 1),dph
      000433 85 F0 16         [24] 1038 	mov	(_Display_num_65536_35 + 2),b
      000436 F5 17            [12] 1039 	mov	(_Display_num_65536_35 + 3),a
      000438 D0 03            [24] 1040 	pop	ar3
                                   1041 ;	./src/main.c:160: for (i = 2;i<9;i++){
      00043A 0B               [12] 1042 	inc	r3
      00043B BB 09 00         [24] 1043 	cjne	r3,#0x09,00141$
      00043E                       1044 00141$:
      00043E 40 92            [24] 1045 	jc	00110$
                                   1046 ;	./src/main.c:167: }
      000440 22               [24] 1047 	ret
                                   1048 	.area CSEG    (CODE)
                                   1049 	.area CONST   (CODE)
                                   1050 	.area XINIT   (CODE)
                                   1051 	.area CABS    (ABS,CODE)
