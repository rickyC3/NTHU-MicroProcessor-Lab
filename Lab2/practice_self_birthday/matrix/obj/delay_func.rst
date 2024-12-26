                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module delay_func
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _delay_ms
                                     12 	.globl _CY
                                     13 	.globl _AC
                                     14 	.globl _F0
                                     15 	.globl _RS1
                                     16 	.globl _RS0
                                     17 	.globl _OV
                                     18 	.globl _F1
                                     19 	.globl _P
                                     20 	.globl _PS
                                     21 	.globl _PT1
                                     22 	.globl _PX1
                                     23 	.globl _PT0
                                     24 	.globl _PX0
                                     25 	.globl _RD
                                     26 	.globl _WR
                                     27 	.globl _T1
                                     28 	.globl _T0
                                     29 	.globl _INT1
                                     30 	.globl _INT0
                                     31 	.globl _TXD
                                     32 	.globl _RXD
                                     33 	.globl _P3_7
                                     34 	.globl _P3_6
                                     35 	.globl _P3_5
                                     36 	.globl _P3_4
                                     37 	.globl _P3_3
                                     38 	.globl _P3_2
                                     39 	.globl _P3_1
                                     40 	.globl _P3_0
                                     41 	.globl _EA
                                     42 	.globl _ES
                                     43 	.globl _ET1
                                     44 	.globl _EX1
                                     45 	.globl _ET0
                                     46 	.globl _EX0
                                     47 	.globl _P2_7
                                     48 	.globl _P2_6
                                     49 	.globl _P2_5
                                     50 	.globl _P2_4
                                     51 	.globl _P2_3
                                     52 	.globl _P2_2
                                     53 	.globl _P2_1
                                     54 	.globl _P2_0
                                     55 	.globl _SM0
                                     56 	.globl _SM1
                                     57 	.globl _SM2
                                     58 	.globl _REN
                                     59 	.globl _TB8
                                     60 	.globl _RB8
                                     61 	.globl _TI
                                     62 	.globl _RI
                                     63 	.globl _P1_7
                                     64 	.globl _P1_6
                                     65 	.globl _P1_5
                                     66 	.globl _P1_4
                                     67 	.globl _P1_3
                                     68 	.globl _P1_2
                                     69 	.globl _P1_1
                                     70 	.globl _P1_0
                                     71 	.globl _TF1
                                     72 	.globl _TR1
                                     73 	.globl _TF0
                                     74 	.globl _TR0
                                     75 	.globl _IE1
                                     76 	.globl _IT1
                                     77 	.globl _IE0
                                     78 	.globl _IT0
                                     79 	.globl _P0_7
                                     80 	.globl _P0_6
                                     81 	.globl _P0_5
                                     82 	.globl _P0_4
                                     83 	.globl _P0_3
                                     84 	.globl _P0_2
                                     85 	.globl _P0_1
                                     86 	.globl _P0_0
                                     87 	.globl _B
                                     88 	.globl _ACC
                                     89 	.globl _PSW
                                     90 	.globl _IP
                                     91 	.globl _P3
                                     92 	.globl _IE
                                     93 	.globl _P2
                                     94 	.globl _SBUF
                                     95 	.globl _SCON
                                     96 	.globl _P1
                                     97 	.globl _TH1
                                     98 	.globl _TH0
                                     99 	.globl _TL1
                                    100 	.globl _TL0
                                    101 	.globl _TMOD
                                    102 	.globl _TCON
                                    103 	.globl _PCON
                                    104 	.globl _DPH
                                    105 	.globl _DPL
                                    106 	.globl _SP
                                    107 	.globl _P0
                                    108 	.globl _Delay_Do
                                    109 	.globl _Delay_Re
                                    110 	.globl _Delay_Mi
                                    111 	.globl _Delay_Fa
                                    112 	.globl _Delay_So
                                    113 	.globl _Delay_La
                                    114 	.globl _Delay_Si
                                    115 	.globl _Play_Music
                                    116 ;--------------------------------------------------------
                                    117 ; special function registers
                                    118 ;--------------------------------------------------------
                                    119 	.area RSEG    (ABS,DATA)
      000000                        120 	.org 0x0000
                           000080   121 _P0	=	0x0080
                           000081   122 _SP	=	0x0081
                           000082   123 _DPL	=	0x0082
                           000083   124 _DPH	=	0x0083
                           000087   125 _PCON	=	0x0087
                           000088   126 _TCON	=	0x0088
                           000089   127 _TMOD	=	0x0089
                           00008A   128 _TL0	=	0x008a
                           00008B   129 _TL1	=	0x008b
                           00008C   130 _TH0	=	0x008c
                           00008D   131 _TH1	=	0x008d
                           000090   132 _P1	=	0x0090
                           000098   133 _SCON	=	0x0098
                           000099   134 _SBUF	=	0x0099
                           0000A0   135 _P2	=	0x00a0
                           0000A8   136 _IE	=	0x00a8
                           0000B0   137 _P3	=	0x00b0
                           0000B8   138 _IP	=	0x00b8
                           0000D0   139 _PSW	=	0x00d0
                           0000E0   140 _ACC	=	0x00e0
                           0000F0   141 _B	=	0x00f0
                                    142 ;--------------------------------------------------------
                                    143 ; special function bits
                                    144 ;--------------------------------------------------------
                                    145 	.area RSEG    (ABS,DATA)
      000000                        146 	.org 0x0000
                           000080   147 _P0_0	=	0x0080
                           000081   148 _P0_1	=	0x0081
                           000082   149 _P0_2	=	0x0082
                           000083   150 _P0_3	=	0x0083
                           000084   151 _P0_4	=	0x0084
                           000085   152 _P0_5	=	0x0085
                           000086   153 _P0_6	=	0x0086
                           000087   154 _P0_7	=	0x0087
                           000088   155 _IT0	=	0x0088
                           000089   156 _IE0	=	0x0089
                           00008A   157 _IT1	=	0x008a
                           00008B   158 _IE1	=	0x008b
                           00008C   159 _TR0	=	0x008c
                           00008D   160 _TF0	=	0x008d
                           00008E   161 _TR1	=	0x008e
                           00008F   162 _TF1	=	0x008f
                           000090   163 _P1_0	=	0x0090
                           000091   164 _P1_1	=	0x0091
                           000092   165 _P1_2	=	0x0092
                           000093   166 _P1_3	=	0x0093
                           000094   167 _P1_4	=	0x0094
                           000095   168 _P1_5	=	0x0095
                           000096   169 _P1_6	=	0x0096
                           000097   170 _P1_7	=	0x0097
                           000098   171 _RI	=	0x0098
                           000099   172 _TI	=	0x0099
                           00009A   173 _RB8	=	0x009a
                           00009B   174 _TB8	=	0x009b
                           00009C   175 _REN	=	0x009c
                           00009D   176 _SM2	=	0x009d
                           00009E   177 _SM1	=	0x009e
                           00009F   178 _SM0	=	0x009f
                           0000A0   179 _P2_0	=	0x00a0
                           0000A1   180 _P2_1	=	0x00a1
                           0000A2   181 _P2_2	=	0x00a2
                           0000A3   182 _P2_3	=	0x00a3
                           0000A4   183 _P2_4	=	0x00a4
                           0000A5   184 _P2_5	=	0x00a5
                           0000A6   185 _P2_6	=	0x00a6
                           0000A7   186 _P2_7	=	0x00a7
                           0000A8   187 _EX0	=	0x00a8
                           0000A9   188 _ET0	=	0x00a9
                           0000AA   189 _EX1	=	0x00aa
                           0000AB   190 _ET1	=	0x00ab
                           0000AC   191 _ES	=	0x00ac
                           0000AF   192 _EA	=	0x00af
                           0000B0   193 _P3_0	=	0x00b0
                           0000B1   194 _P3_1	=	0x00b1
                           0000B2   195 _P3_2	=	0x00b2
                           0000B3   196 _P3_3	=	0x00b3
                           0000B4   197 _P3_4	=	0x00b4
                           0000B5   198 _P3_5	=	0x00b5
                           0000B6   199 _P3_6	=	0x00b6
                           0000B7   200 _P3_7	=	0x00b7
                           0000B0   201 _RXD	=	0x00b0
                           0000B1   202 _TXD	=	0x00b1
                           0000B2   203 _INT0	=	0x00b2
                           0000B3   204 _INT1	=	0x00b3
                           0000B4   205 _T0	=	0x00b4
                           0000B5   206 _T1	=	0x00b5
                           0000B6   207 _WR	=	0x00b6
                           0000B7   208 _RD	=	0x00b7
                           0000B8   209 _PX0	=	0x00b8
                           0000B9   210 _PT0	=	0x00b9
                           0000BA   211 _PX1	=	0x00ba
                           0000BB   212 _PT1	=	0x00bb
                           0000BC   213 _PS	=	0x00bc
                           0000D0   214 _P	=	0x00d0
                           0000D1   215 _F1	=	0x00d1
                           0000D2   216 _OV	=	0x00d2
                           0000D3   217 _RS0	=	0x00d3
                           0000D4   218 _RS1	=	0x00d4
                           0000D5   219 _F0	=	0x00d5
                           0000D6   220 _AC	=	0x00d6
                           0000D7   221 _CY	=	0x00d7
                                    222 ;--------------------------------------------------------
                                    223 ; overlayable register banks
                                    224 ;--------------------------------------------------------
                                    225 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        226 	.ds 8
                                    227 ;--------------------------------------------------------
                                    228 ; internal ram data
                                    229 ;--------------------------------------------------------
                                    230 	.area DSEG    (DATA)
                                    231 ;--------------------------------------------------------
                                    232 ; overlayable items in internal ram 
                                    233 ;--------------------------------------------------------
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
                                    274 ; global & static initialisations
                                    275 ;--------------------------------------------------------
                                    276 	.area HOME    (CODE)
                                    277 	.area GSINIT  (CODE)
                                    278 	.area GSFINAL (CODE)
                                    279 	.area GSINIT  (CODE)
                                    280 ;--------------------------------------------------------
                                    281 ; Home
                                    282 ;--------------------------------------------------------
                                    283 	.area HOME    (CODE)
                                    284 	.area HOME    (CODE)
                                    285 ;--------------------------------------------------------
                                    286 ; code
                                    287 ;--------------------------------------------------------
                                    288 	.area CSEG    (CODE)
                                    289 ;------------------------------------------------------------
                                    290 ;Allocation info for local variables in function 'Delay_Do'
                                    291 ;------------------------------------------------------------
                                    292 ;	./src/delay_func.c:5: void Delay_Do(void) {
                                    293 ;	-----------------------------------------
                                    294 ;	 function Delay_Do
                                    295 ;	-----------------------------------------
      00027E                        296 _Delay_Do:
                           000007   297 	ar7 = 0x07
                           000006   298 	ar6 = 0x06
                           000005   299 	ar5 = 0x05
                           000004   300 	ar4 = 0x04
                           000003   301 	ar3 = 0x03
                           000002   302 	ar2 = 0x02
                           000001   303 	ar1 = 0x01
                           000000   304 	ar0 = 0x00
                                    305 ;	./src/delay_func.c:30: __endasm;
      00027E                        306 	 DELAY_Do:
      00027E 7E 0A            [12]  307 	MOV	R6,#10
      000280                        308 	 DELAY_Do_DL1:
      000280 7F 13            [12]  309 	MOV	R7,#19
      000282                        310 	 STEP1:
      000282 DF FE            [24]  311 	DJNZ	R7,STEP1
      000284 DE FA            [24]  312 	DJNZ	R6,DELAY_Do_DL1
      000286 7F 0D            [12]  313 	MOV	R7,#13
      000288                        314 	 STEP2:
      000288 DF FE            [24]  315 	DJNZ	R7,STEP2
      00028A 22               [24]  316 	RET
                                    317 ;	./src/delay_func.c:32: }
      00028B 22               [24]  318 	ret
                                    319 ;------------------------------------------------------------
                                    320 ;Allocation info for local variables in function 'Delay_Re'
                                    321 ;------------------------------------------------------------
                                    322 ;	./src/delay_func.c:34: void Delay_Re(void) {
                                    323 ;	-----------------------------------------
                                    324 ;	 function Delay_Re
                                    325 ;	-----------------------------------------
      00028C                        326 _Delay_Re:
                                    327 ;	./src/delay_func.c:59: __endasm;
      00028C                        328 	 DELAY_RE:
      00028C 7E 0A            [12]  329 	MOV	R6,#10
      00028E                        330 	 DELAY_RE_DL1:
      00028E 7F 11            [12]  331 	MOV	R7,#17
      000290                        332 	 STEP3:
      000290 DF FE            [24]  333 	DJNZ	R7,STEP3
      000292 DE FA            [24]  334 	DJNZ	R6,DELAY_RE_DL1
      000294 7F 09            [12]  335 	MOV	R7,#9
      000296                        336 	 STEP4:
      000296 DF FE            [24]  337 	DJNZ	R7,STEP4
      000298 22               [24]  338 	RET
                                    339 ;	./src/delay_func.c:60: }
      000299 22               [24]  340 	ret
                                    341 ;------------------------------------------------------------
                                    342 ;Allocation info for local variables in function 'Delay_Mi'
                                    343 ;------------------------------------------------------------
                                    344 ;	./src/delay_func.c:62: void Delay_Mi(void) {
                                    345 ;	-----------------------------------------
                                    346 ;	 function Delay_Mi
                                    347 ;	-----------------------------------------
      00029A                        348 _Delay_Mi:
                                    349 ;	./src/delay_func.c:87: __endasm;
      00029A                        350 	 DELAY_MI:
      00029A 7E 0A            [12]  351 	MOV	R6,#10
      00029C                        352 	 DELAY_MI_DL1:
      00029C 7F 0F            [12]  353 	MOV	R7,#15
      00029E                        354 	 STEP5:
      00029E DF FE            [24]  355 	DJNZ	R7,STEP5
      0002A0 DE FA            [24]  356 	DJNZ	R6,DELAY_MI_DL1
      0002A2 7F 07            [12]  357 	MOV	R7,#7
      0002A4                        358 	 STEP6:
      0002A4 DF FE            [24]  359 	DJNZ	R7,STEP6
      0002A6 22               [24]  360 	RET
                                    361 ;	./src/delay_func.c:88: }
      0002A7 22               [24]  362 	ret
                                    363 ;------------------------------------------------------------
                                    364 ;Allocation info for local variables in function 'Delay_Fa'
                                    365 ;------------------------------------------------------------
                                    366 ;	./src/delay_func.c:90: void Delay_Fa(void) {
                                    367 ;	-----------------------------------------
                                    368 ;	 function Delay_Fa
                                    369 ;	-----------------------------------------
      0002A8                        370 _Delay_Fa:
                                    371 ;	./src/delay_func.c:121: __endasm;
      0002A8                        372 	 DELAY_FA:
      0002A8 7E 0A            [12]  373 	MOV	R6,#10
      0002AA                        374 	 DELAY_FA_DL1:
      0002AA 7F 0E            [12]  375 	MOV	R7,#14
      0002AC                        376 	 STEP7:
      0002AC DF FE            [24]  377 	DJNZ	R7,STEP7
      0002AE DE FA            [24]  378 	DJNZ	R6,DELAY_FA_DL1
      0002B0 7F 08            [12]  379 	MOV	R7,#8
      0002B2                        380 	 STEP8:
      0002B2 DF FE            [24]  381 	DJNZ	R7,STEP8
      0002B4 7F 01            [12]  382 	MOV	R7, #1 ;
      0002B6 22               [24]  383 	RET
                                    384 ;	./src/delay_func.c:122: }
      0002B7 22               [24]  385 	ret
                                    386 ;------------------------------------------------------------
                                    387 ;Allocation info for local variables in function 'Delay_So'
                                    388 ;------------------------------------------------------------
                                    389 ;	./src/delay_func.c:124: void Delay_So(void) {
                                    390 ;	-----------------------------------------
                                    391 ;	 function Delay_So
                                    392 ;	-----------------------------------------
      0002B8                        393 _Delay_So:
                                    394 ;	./src/delay_func.c:151: __endasm;
      0002B8                        395 	 DELAY_SO:
      0002B8 7E 0A            [12]  396 	MOV	R6,#10
      0002BA                        397 	 DELAY_SO_DL1:
      0002BA 7F 0D            [12]  398 	MOV	R7,#13
      0002BC                        399 	 STEP9:
      0002BC DF FE            [24]  400 	DJNZ	R7,STEP9
      0002BE DE FA            [24]  401 	DJNZ	R6,DELAY_SO_DL1
      0002C0 7F 01            [12]  402 	MOV	R7, #1
      0002C2 7F 01            [12]  403 	MOV	R7, #1
      0002C4 22               [24]  404 	RET
                                    405 ;	./src/delay_func.c:152: }
      0002C5 22               [24]  406 	ret
                                    407 ;------------------------------------------------------------
                                    408 ;Allocation info for local variables in function 'Delay_La'
                                    409 ;------------------------------------------------------------
                                    410 ;	./src/delay_func.c:154: void Delay_La(void) {
                                    411 ;	-----------------------------------------
                                    412 ;	 function Delay_La
                                    413 ;	-----------------------------------------
      0002C6                        414 _Delay_La:
                                    415 ;	./src/delay_func.c:186: __endasm;
      0002C6                        416 	 DELAY_LA:
      0002C6 7E 0A            [12]  417 	MOV	R6,#10
      0002C8                        418 	 DELAY_LA_DL1:
      0002C8 7F 0B            [12]  419 	MOV	R7,#11
      0002CA                        420 	 STEP10:
      0002CA DF FE            [24]  421 	DJNZ	R7,STEP10
      0002CC DE FA            [24]  422 	DJNZ	R6,DELAY_LA_DL1
      0002CE 7F 04            [12]  423 	MOV	R7,#4
      0002D0                        424 	 STEP11:
      0002D0 DF FE            [24]  425 	DJNZ	R7,STEP11
      0002D2 7F 01            [12]  426 	MOV	R7, #1
      0002D4 22               [24]  427 	RET
                                    428 ;	./src/delay_func.c:187: }
      0002D5 22               [24]  429 	ret
                                    430 ;------------------------------------------------------------
                                    431 ;Allocation info for local variables in function 'Delay_Si'
                                    432 ;------------------------------------------------------------
                                    433 ;	./src/delay_func.c:189: void Delay_Si(void) {
                                    434 ;	-----------------------------------------
                                    435 ;	 function Delay_Si
                                    436 ;	-----------------------------------------
      0002D6                        437 _Delay_Si:
                                    438 ;	./src/delay_func.c:212: __endasm;
      0002D6                        439 	 DELAY_SI:
      0002D6 7E 0A            [12]  440 	MOV	R6, #10
      0002D8                        441 	 DELAY_SI_DL1:
      0002D8 7F 0A            [12]  442 	MOV	R7, #10
      0002DA                        443 	 STEP12:
      0002DA DF FE            [24]  444 	DJNZ	R7, STEP12
      0002DC DE FA            [24]  445 	DJNZ	R6, DELAY_SI_DL1
      0002DE 7F 01            [12]  446 	MOV	R7, #1
      0002E0 22               [24]  447 	RET
                                    448 ;	./src/delay_func.c:213: }
      0002E1 22               [24]  449 	ret
                                    450 ;------------------------------------------------------------
                                    451 ;Allocation info for local variables in function 'Play_Music'
                                    452 ;------------------------------------------------------------
                                    453 ;x                         Allocated to registers r7 
                                    454 ;tar                       Allocated to registers 
                                    455 ;j                         Allocated to registers r5 r6 
                                    456 ;------------------------------------------------------------
                                    457 ;	./src/delay_func.c:215: void Play_Music(char x){
                                    458 ;	-----------------------------------------
                                    459 ;	 function Play_Music
                                    460 ;	-----------------------------------------
      0002E2                        461 _Play_Music:
      0002E2 AF 82            [24]  462 	mov	r7,dpl
                                    463 ;	./src/delay_func.c:217: if (x == '0'){
      0002E4 BF 30 06         [24]  464 	cjne	r7,#0x30,00129$
                                    465 ;	./src/delay_func.c:218: delay_ms(200);
      0002E7 90 00 C8         [24]  466 	mov	dptr,#0x00c8
      0002EA 02 02 57         [24]  467 	ljmp	_delay_ms
      0002ED                        468 00129$:
                                    469 ;	./src/delay_func.c:219: }else if (x == '1'){
      0002ED BF 31 29         [24]  470 	cjne	r7,#0x31,00126$
                                    471 ;	./src/delay_func.c:221: for (j=0;j < tar;j++){
      0002F0 7D 00            [12]  472 	mov	r5,#0x00
      0002F2 7E 00            [12]  473 	mov	r6,#0x00
      0002F4                        474 00132$:
      0002F4 C3               [12]  475 	clr	c
      0002F5 ED               [12]  476 	mov	a,r5
      0002F6 94 0B            [12]  477 	subb	a,#0x0b
      0002F8 EE               [12]  478 	mov	a,r6
      0002F9 64 80            [12]  479 	xrl	a,#0x80
      0002FB 94 82            [12]  480 	subb	a,#0x82
      0002FD 40 01            [24]  481 	jc	00253$
      0002FF 22               [24]  482 	ret
      000300                        483 00253$:
                                    484 ;	./src/delay_func.c:222: P3_7 = 1;
                                    485 ;	assignBit
      000300 D2 B7            [12]  486 	setb	_P3_7
                                    487 ;	./src/delay_func.c:223: Delay_Do();
      000302 C0 06            [24]  488 	push	ar6
      000304 C0 05            [24]  489 	push	ar5
      000306 12 02 7E         [24]  490 	lcall	_Delay_Do
                                    491 ;	./src/delay_func.c:224: P3_7 = 0;
                                    492 ;	assignBit
      000309 C2 B7            [12]  493 	clr	_P3_7
                                    494 ;	./src/delay_func.c:225: Delay_Do();
      00030B 12 02 7E         [24]  495 	lcall	_Delay_Do
      00030E D0 05            [24]  496 	pop	ar5
      000310 D0 06            [24]  497 	pop	ar6
                                    498 ;	./src/delay_func.c:221: for (j=0;j < tar;j++){
      000312 0D               [12]  499 	inc	r5
      000313 BD 00 DE         [24]  500 	cjne	r5,#0x00,00132$
      000316 0E               [12]  501 	inc	r6
      000317 80 DB            [24]  502 	sjmp	00132$
      000319                        503 00126$:
                                    504 ;	./src/delay_func.c:227: }else if (x == '2'){
      000319 BF 32 29         [24]  505 	cjne	r7,#0x32,00123$
                                    506 ;	./src/delay_func.c:230: for (j = 0;j<tar;j++){
      00031C 7D 00            [12]  507 	mov	r5,#0x00
      00031E 7E 00            [12]  508 	mov	r6,#0x00
      000320                        509 00135$:
      000320 C3               [12]  510 	clr	c
      000321 ED               [12]  511 	mov	a,r5
      000322 94 4C            [12]  512 	subb	a,#0x4c
      000324 EE               [12]  513 	mov	a,r6
      000325 64 80            [12]  514 	xrl	a,#0x80
      000327 94 82            [12]  515 	subb	a,#0x82
      000329 40 01            [24]  516 	jc	00257$
      00032B 22               [24]  517 	ret
      00032C                        518 00257$:
                                    519 ;	./src/delay_func.c:231: P3_7 = 1;
                                    520 ;	assignBit
      00032C D2 B7            [12]  521 	setb	_P3_7
                                    522 ;	./src/delay_func.c:232: Delay_Re();
      00032E C0 06            [24]  523 	push	ar6
      000330 C0 05            [24]  524 	push	ar5
      000332 12 02 8C         [24]  525 	lcall	_Delay_Re
                                    526 ;	./src/delay_func.c:233: P3_7 = 0;
                                    527 ;	assignBit
      000335 C2 B7            [12]  528 	clr	_P3_7
                                    529 ;	./src/delay_func.c:234: Delay_Re();
      000337 12 02 8C         [24]  530 	lcall	_Delay_Re
      00033A D0 05            [24]  531 	pop	ar5
      00033C D0 06            [24]  532 	pop	ar6
                                    533 ;	./src/delay_func.c:230: for (j = 0;j<tar;j++){
      00033E 0D               [12]  534 	inc	r5
      00033F BD 00 DE         [24]  535 	cjne	r5,#0x00,00135$
      000342 0E               [12]  536 	inc	r6
      000343 80 DB            [24]  537 	sjmp	00135$
      000345                        538 00123$:
                                    539 ;	./src/delay_func.c:236: }else if (x == '3'){
      000345 BF 33 29         [24]  540 	cjne	r7,#0x33,00120$
                                    541 ;	./src/delay_func.c:239: for (j=0;j<tar;j++){
      000348 7D 00            [12]  542 	mov	r5,#0x00
      00034A 7E 00            [12]  543 	mov	r6,#0x00
      00034C                        544 00138$:
      00034C C3               [12]  545 	clr	c
      00034D ED               [12]  546 	mov	a,r5
      00034E 94 94            [12]  547 	subb	a,#0x94
      000350 EE               [12]  548 	mov	a,r6
      000351 64 80            [12]  549 	xrl	a,#0x80
      000353 94 82            [12]  550 	subb	a,#0x82
      000355 40 01            [24]  551 	jc	00261$
      000357 22               [24]  552 	ret
      000358                        553 00261$:
                                    554 ;	./src/delay_func.c:240: P3_7 = 1;
                                    555 ;	assignBit
      000358 D2 B7            [12]  556 	setb	_P3_7
                                    557 ;	./src/delay_func.c:241: Delay_Mi();
      00035A C0 06            [24]  558 	push	ar6
      00035C C0 05            [24]  559 	push	ar5
      00035E 12 02 9A         [24]  560 	lcall	_Delay_Mi
                                    561 ;	./src/delay_func.c:242: P3_7 = 0;
                                    562 ;	assignBit
      000361 C2 B7            [12]  563 	clr	_P3_7
                                    564 ;	./src/delay_func.c:243: Delay_Mi();
      000363 12 02 9A         [24]  565 	lcall	_Delay_Mi
      000366 D0 05            [24]  566 	pop	ar5
      000368 D0 06            [24]  567 	pop	ar6
                                    568 ;	./src/delay_func.c:239: for (j=0;j<tar;j++){
      00036A 0D               [12]  569 	inc	r5
      00036B BD 00 DE         [24]  570 	cjne	r5,#0x00,00138$
      00036E 0E               [12]  571 	inc	r6
      00036F 80 DB            [24]  572 	sjmp	00138$
      000371                        573 00120$:
                                    574 ;	./src/delay_func.c:245: }else if (x == '4'){
      000371 BF 34 29         [24]  575 	cjne	r7,#0x34,00117$
                                    576 ;	./src/delay_func.c:248: for (j=0;j<tar;j++){
      000374 7D 00            [12]  577 	mov	r5,#0x00
      000376 7E 00            [12]  578 	mov	r6,#0x00
      000378                        579 00141$:
      000378 C3               [12]  580 	clr	c
      000379 ED               [12]  581 	mov	a,r5
      00037A 94 BB            [12]  582 	subb	a,#0xbb
      00037C EE               [12]  583 	mov	a,r6
      00037D 64 80            [12]  584 	xrl	a,#0x80
      00037F 94 82            [12]  585 	subb	a,#0x82
      000381 40 01            [24]  586 	jc	00265$
      000383 22               [24]  587 	ret
      000384                        588 00265$:
                                    589 ;	./src/delay_func.c:249: P3_7 = 1;
                                    590 ;	assignBit
      000384 D2 B7            [12]  591 	setb	_P3_7
                                    592 ;	./src/delay_func.c:250: Delay_Fa();
      000386 C0 06            [24]  593 	push	ar6
      000388 C0 05            [24]  594 	push	ar5
      00038A 12 02 A8         [24]  595 	lcall	_Delay_Fa
                                    596 ;	./src/delay_func.c:251: P3_7 = 0;
                                    597 ;	assignBit
      00038D C2 B7            [12]  598 	clr	_P3_7
                                    599 ;	./src/delay_func.c:252: Delay_Fa();
      00038F 12 02 A8         [24]  600 	lcall	_Delay_Fa
      000392 D0 05            [24]  601 	pop	ar5
      000394 D0 06            [24]  602 	pop	ar6
                                    603 ;	./src/delay_func.c:248: for (j=0;j<tar;j++){
      000396 0D               [12]  604 	inc	r5
      000397 BD 00 DE         [24]  605 	cjne	r5,#0x00,00141$
      00039A 0E               [12]  606 	inc	r6
      00039B 80 DB            [24]  607 	sjmp	00141$
      00039D                        608 00117$:
                                    609 ;	./src/delay_func.c:254: }else if (x == '5'){
      00039D BF 35 29         [24]  610 	cjne	r7,#0x35,00114$
                                    611 ;	./src/delay_func.c:257: for (j=0;j<tar;j++){ 
      0003A0 7D 00            [12]  612 	mov	r5,#0x00
      0003A2 7E 00            [12]  613 	mov	r6,#0x00
      0003A4                        614 00144$:
      0003A4 C3               [12]  615 	clr	c
      0003A5 ED               [12]  616 	mov	a,r5
      0003A6 94 10            [12]  617 	subb	a,#0x10
      0003A8 EE               [12]  618 	mov	a,r6
      0003A9 64 80            [12]  619 	xrl	a,#0x80
      0003AB 94 83            [12]  620 	subb	a,#0x83
      0003AD 40 01            [24]  621 	jc	00269$
      0003AF 22               [24]  622 	ret
      0003B0                        623 00269$:
                                    624 ;	./src/delay_func.c:258: P3_7 = 1;
                                    625 ;	assignBit
      0003B0 D2 B7            [12]  626 	setb	_P3_7
                                    627 ;	./src/delay_func.c:259: Delay_So();
      0003B2 C0 06            [24]  628 	push	ar6
      0003B4 C0 05            [24]  629 	push	ar5
      0003B6 12 02 B8         [24]  630 	lcall	_Delay_So
                                    631 ;	./src/delay_func.c:260: P3_7 = 0;
                                    632 ;	assignBit
      0003B9 C2 B7            [12]  633 	clr	_P3_7
                                    634 ;	./src/delay_func.c:261: Delay_So();
      0003BB 12 02 B8         [24]  635 	lcall	_Delay_So
      0003BE D0 05            [24]  636 	pop	ar5
      0003C0 D0 06            [24]  637 	pop	ar6
                                    638 ;	./src/delay_func.c:257: for (j=0;j<tar;j++){ 
      0003C2 0D               [12]  639 	inc	r5
      0003C3 BD 00 DE         [24]  640 	cjne	r5,#0x00,00144$
      0003C6 0E               [12]  641 	inc	r6
      0003C7 80 DB            [24]  642 	sjmp	00144$
      0003C9                        643 00114$:
                                    644 ;	./src/delay_func.c:263: }else if (x == '6'){
      0003C9 BF 36 28         [24]  645 	cjne	r7,#0x36,00111$
                                    646 ;	./src/delay_func.c:266: for (j=0;j<tar;j++){
      0003CC 7D 00            [12]  647 	mov	r5,#0x00
      0003CE 7E 00            [12]  648 	mov	r6,#0x00
      0003D0                        649 00147$:
      0003D0 C3               [12]  650 	clr	c
      0003D1 ED               [12]  651 	mov	a,r5
      0003D2 94 70            [12]  652 	subb	a,#0x70
      0003D4 EE               [12]  653 	mov	a,r6
      0003D5 64 80            [12]  654 	xrl	a,#0x80
      0003D7 94 83            [12]  655 	subb	a,#0x83
      0003D9 50 44            [24]  656 	jnc	00152$
                                    657 ;	./src/delay_func.c:267: P3_7 = 1;
                                    658 ;	assignBit
      0003DB D2 B7            [12]  659 	setb	_P3_7
                                    660 ;	./src/delay_func.c:268: Delay_La();
      0003DD C0 06            [24]  661 	push	ar6
      0003DF C0 05            [24]  662 	push	ar5
      0003E1 12 02 C6         [24]  663 	lcall	_Delay_La
                                    664 ;	./src/delay_func.c:269: P3_7 = 0;
                                    665 ;	assignBit
      0003E4 C2 B7            [12]  666 	clr	_P3_7
                                    667 ;	./src/delay_func.c:270: Delay_La();   
      0003E6 12 02 C6         [24]  668 	lcall	_Delay_La
      0003E9 D0 05            [24]  669 	pop	ar5
      0003EB D0 06            [24]  670 	pop	ar6
                                    671 ;	./src/delay_func.c:266: for (j=0;j<tar;j++){
      0003ED 0D               [12]  672 	inc	r5
      0003EE BD 00 DF         [24]  673 	cjne	r5,#0x00,00147$
      0003F1 0E               [12]  674 	inc	r6
      0003F2 80 DC            [24]  675 	sjmp	00147$
      0003F4                        676 00111$:
                                    677 ;	./src/delay_func.c:272: }else if (x == '7'){
      0003F4 BF 37 28         [24]  678 	cjne	r7,#0x37,00152$
                                    679 ;	./src/delay_func.c:274: for (j=0;j<tar;j++){   
      0003F7 7E 00            [12]  680 	mov	r6,#0x00
      0003F9 7F 00            [12]  681 	mov	r7,#0x00
      0003FB                        682 00150$:
      0003FB C3               [12]  683 	clr	c
      0003FC EE               [12]  684 	mov	a,r6
      0003FD 94 DC            [12]  685 	subb	a,#0xdc
      0003FF EF               [12]  686 	mov	a,r7
      000400 64 80            [12]  687 	xrl	a,#0x80
      000402 94 83            [12]  688 	subb	a,#0x83
      000404 50 19            [24]  689 	jnc	00152$
                                    690 ;	./src/delay_func.c:275: P3_7 = 1;
                                    691 ;	assignBit
      000406 D2 B7            [12]  692 	setb	_P3_7
                                    693 ;	./src/delay_func.c:276: Delay_Si();
      000408 C0 07            [24]  694 	push	ar7
      00040A C0 06            [24]  695 	push	ar6
      00040C 12 02 D6         [24]  696 	lcall	_Delay_Si
                                    697 ;	./src/delay_func.c:277: P3_7 = 0;
                                    698 ;	assignBit
      00040F C2 B7            [12]  699 	clr	_P3_7
                                    700 ;	./src/delay_func.c:278: Delay_Si();  
      000411 12 02 D6         [24]  701 	lcall	_Delay_Si
      000414 D0 06            [24]  702 	pop	ar6
      000416 D0 07            [24]  703 	pop	ar7
                                    704 ;	./src/delay_func.c:274: for (j=0;j<tar;j++){   
      000418 0E               [12]  705 	inc	r6
      000419 BE 00 DF         [24]  706 	cjne	r6,#0x00,00150$
      00041C 0F               [12]  707 	inc	r7
      00041D 80 DC            [24]  708 	sjmp	00150$
      00041F                        709 00152$:
                                    710 ;	./src/delay_func.c:282: }
      00041F 22               [24]  711 	ret
                                    712 	.area CSEG    (CODE)
                                    713 	.area CONST   (CODE)
                                    714 	.area XINIT   (CODE)
                                    715 	.area CABS    (ABS,CODE)
