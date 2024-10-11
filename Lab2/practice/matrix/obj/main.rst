                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.0 #14184 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _Move_PARM_2
                                     12 	.globl _main
                                     13 	.globl _Initial7219
                                     14 	.globl _Writesingle7219
                                     15 	.globl _delay_ms
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
                                    112 	.globl _Move
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
      000008                        228 _main_m_65536_8:
      000008                        229 	.ds 8
                                    230 ;--------------------------------------------------------
                                    231 ; overlayable items in internal ram
                                    232 ;--------------------------------------------------------
                                    233 	.area	OSEG    (OVR,DATA)
      000013                        234 _Move_PARM_2:
      000013                        235 	.ds 1
      000014                        236 _Move_m_65536_12:
      000014                        237 	.ds 3
      000017                        238 _Move_sloc0_1_0:
      000017                        239 	.ds 3
                                    240 ;--------------------------------------------------------
                                    241 ; Stack segment in internal ram
                                    242 ;--------------------------------------------------------
                                    243 	.area SSEG
      00001A                        244 __start__stack:
      00001A                        245 	.ds	1
                                    246 
                                    247 ;--------------------------------------------------------
                                    248 ; indirectly addressable internal ram data
                                    249 ;--------------------------------------------------------
                                    250 	.area ISEG    (DATA)
                                    251 ;--------------------------------------------------------
                                    252 ; absolute internal ram data
                                    253 ;--------------------------------------------------------
                                    254 	.area IABS    (ABS,DATA)
                                    255 	.area IABS    (ABS,DATA)
                                    256 ;--------------------------------------------------------
                                    257 ; bit data
                                    258 ;--------------------------------------------------------
                                    259 	.area BSEG    (BIT)
                                    260 ;--------------------------------------------------------
                                    261 ; paged external ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area PSEG    (PAG,XDATA)
                                    264 ;--------------------------------------------------------
                                    265 ; uninitialized external ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area XSEG    (XDATA)
                                    268 ;--------------------------------------------------------
                                    269 ; absolute external ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area XABS    (ABS,XDATA)
                                    272 ;--------------------------------------------------------
                                    273 ; initialized external ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area XISEG   (XDATA)
                                    276 	.area HOME    (CODE)
                                    277 	.area GSINIT0 (CODE)
                                    278 	.area GSINIT1 (CODE)
                                    279 	.area GSINIT2 (CODE)
                                    280 	.area GSINIT3 (CODE)
                                    281 	.area GSINIT4 (CODE)
                                    282 	.area GSINIT5 (CODE)
                                    283 	.area GSINIT  (CODE)
                                    284 	.area GSFINAL (CODE)
                                    285 	.area CSEG    (CODE)
                                    286 ;--------------------------------------------------------
                                    287 ; interrupt vector
                                    288 ;--------------------------------------------------------
                                    289 	.area HOME    (CODE)
      000000                        290 __interrupt_vect:
      000000 02 00 06         [24]  291 	ljmp	__sdcc_gsinit_startup
                                    292 ;--------------------------------------------------------
                                    293 ; global & static initialisations
                                    294 ;--------------------------------------------------------
                                    295 	.area HOME    (CODE)
                                    296 	.area GSINIT  (CODE)
                                    297 	.area GSFINAL (CODE)
                                    298 	.area GSINIT  (CODE)
                                    299 	.globl __sdcc_gsinit_startup
                                    300 	.globl __sdcc_program_startup
                                    301 	.globl __start__stack
                                    302 	.globl __mcs51_genXINIT
                                    303 	.globl __mcs51_genXRAMCLEAR
                                    304 	.globl __mcs51_genRAMCLEAR
                                    305 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  306 	ljmp	__sdcc_program_startup
                                    307 ;--------------------------------------------------------
                                    308 ; Home
                                    309 ;--------------------------------------------------------
                                    310 	.area HOME    (CODE)
                                    311 	.area HOME    (CODE)
      000003                        312 __sdcc_program_startup:
      000003 02 00 62         [24]  313 	ljmp	_main
                                    314 ;	return from main will return to caller
                                    315 ;--------------------------------------------------------
                                    316 ; code
                                    317 ;--------------------------------------------------------
                                    318 	.area CSEG    (CODE)
                                    319 ;------------------------------------------------------------
                                    320 ;Allocation info for local variables in function 'main'
                                    321 ;------------------------------------------------------------
                                    322 ;m                         Allocated with name '_main_m_65536_8'
                                    323 ;i                         Allocated to registers r6 
                                    324 ;cnt                       Allocated to registers 
                                    325 ;------------------------------------------------------------
                                    326 ;	./src/main.c:20: void main(void)
                                    327 ;	-----------------------------------------
                                    328 ;	 function main
                                    329 ;	-----------------------------------------
      000062                        330 _main:
                           000007   331 	ar7 = 0x07
                           000006   332 	ar6 = 0x06
                           000005   333 	ar5 = 0x05
                           000004   334 	ar4 = 0x04
                           000003   335 	ar3 = 0x03
                           000002   336 	ar2 = 0x02
                           000001   337 	ar1 = 0x01
                           000000   338 	ar0 = 0x00
                                    339 ;	./src/main.c:22: unsigned char m[8] = {0x40, 0, 0, 0, 0, 0, 0, 0};
      000062 75 08 40         [24]  340 	mov	_main_m_65536_8,#0x40
      000065 75 09 00         [24]  341 	mov	(_main_m_65536_8 + 0x0001),#0x00
      000068 75 0A 00         [24]  342 	mov	(_main_m_65536_8 + 0x0002),#0x00
      00006B 75 0B 00         [24]  343 	mov	(_main_m_65536_8 + 0x0003),#0x00
      00006E 75 0C 00         [24]  344 	mov	(_main_m_65536_8 + 0x0004),#0x00
      000071 75 0D 00         [24]  345 	mov	(_main_m_65536_8 + 0x0005),#0x00
      000074 75 0E 00         [24]  346 	mov	(_main_m_65536_8 + 0x0006),#0x00
      000077 75 0F 00         [24]  347 	mov	(_main_m_65536_8 + 0x0007),#0x00
                                    348 ;	./src/main.c:25: Initial7219();				 	// MAX7219 initialize
      00007A 12 03 06         [24]  349 	lcall	_Initial7219
                                    350 ;	./src/main.c:26: while (1) {
      00007D 7F 00            [12]  351 	mov	r7,#0x00
      00007F                        352 00103$:
                                    353 ;	./src/main.c:27: Move(m, (cnt++ / 7) % 4);
      00007F 8F 05            [24]  354 	mov	ar5,r7
      000081 7E 00            [12]  355 	mov	r6,#0x00
      000083 0F               [12]  356 	inc	r7
      000084 75 13 07         [24]  357 	mov	__divsint_PARM_2,#0x07
      000087 8E 14            [24]  358 	mov	(__divsint_PARM_2 + 1),r6
      000089 8D 82            [24]  359 	mov	dpl,r5
      00008B 8E 83            [24]  360 	mov	dph,r6
      00008D C0 07            [24]  361 	push	ar7
      00008F 12 04 2B         [24]  362 	lcall	__divsint
      000092 75 13 04         [24]  363 	mov	__modsint_PARM_2,#0x04
      000095 75 14 00         [24]  364 	mov	(__modsint_PARM_2 + 1),#0x00
      000098 12 03 F5         [24]  365 	lcall	__modsint
      00009B AD 82            [24]  366 	mov	r5,dpl
      00009D 8D 13            [24]  367 	mov	_Move_PARM_2,r5
      00009F 90 00 08         [24]  368 	mov	dptr,#_main_m_65536_8
      0000A2 75 F0 40         [24]  369 	mov	b,#0x40
      0000A5 12 00 D7         [24]  370 	lcall	_Move
      0000A8 D0 07            [24]  371 	pop	ar7
                                    372 ;	./src/main.c:28: for (i = 8; i >= 1; i--) {
      0000AA 7E 08            [12]  373 	mov	r6,#0x08
      0000AC                        374 00105$:
                                    375 ;	./src/main.c:29: Writesingle7219(1, i, m[i - 1]);
      0000AC 8E 05            [24]  376 	mov	ar5,r6
      0000AE ED               [12]  377 	mov	a,r5
      0000AF 14               [12]  378 	dec	a
      0000B0 24 08            [12]  379 	add	a,#_main_m_65536_8
      0000B2 F9               [12]  380 	mov	r1,a
      0000B3 87 12            [24]  381 	mov	_Writesingle7219_PARM_3,@r1
      0000B5 8E 11            [24]  382 	mov	_Writesingle7219_PARM_2,r6
      0000B7 75 82 01         [24]  383 	mov	dpl,#0x01
      0000BA C0 07            [24]  384 	push	ar7
      0000BC C0 06            [24]  385 	push	ar6
      0000BE 12 02 C3         [24]  386 	lcall	_Writesingle7219
      0000C1 D0 06            [24]  387 	pop	ar6
      0000C3 D0 07            [24]  388 	pop	ar7
                                    389 ;	./src/main.c:28: for (i = 8; i >= 1; i--) {
      0000C5 1E               [12]  390 	dec	r6
      0000C6 BE 01 00         [24]  391 	cjne	r6,#0x01,00122$
      0000C9                        392 00122$:
      0000C9 50 E1            [24]  393 	jnc	00105$
                                    394 ;	./src/main.c:31: delay_ms(200);
      0000CB 90 00 C8         [24]  395 	mov	dptr,#0x00c8
      0000CE C0 07            [24]  396 	push	ar7
      0000D0 12 02 46         [24]  397 	lcall	_delay_ms
      0000D3 D0 07            [24]  398 	pop	ar7
                                    399 ;	./src/main.c:33: }
      0000D5 80 A8            [24]  400 	sjmp	00103$
                                    401 ;------------------------------------------------------------
                                    402 ;Allocation info for local variables in function 'Move'
                                    403 ;------------------------------------------------------------
                                    404 ;dir                       Allocated with name '_Move_PARM_2'
                                    405 ;m                         Allocated with name '_Move_m_65536_12'
                                    406 ;i                         Allocated to registers r6 r7 
                                    407 ;sloc0                     Allocated with name '_Move_sloc0_1_0'
                                    408 ;------------------------------------------------------------
                                    409 ;	./src/main.c:35: void Move(unsigned char* m, char dir) {
                                    410 ;	-----------------------------------------
                                    411 ;	 function Move
                                    412 ;	-----------------------------------------
      0000D7                        413 _Move:
      0000D7 85 82 14         [24]  414 	mov	_Move_m_65536_12,dpl
      0000DA 85 83 15         [24]  415 	mov	(_Move_m_65536_12 + 1),dph
      0000DD 85 F0 16         [24]  416 	mov	(_Move_m_65536_12 + 2),b
                                    417 ;	./src/main.c:37: if (dir == 0){
      0000E0 E5 13            [12]  418 	mov	a,_Move_PARM_2
      0000E2 70 41            [24]  419 	jnz	00118$
                                    420 ;	./src/main.c:38: if (m[0] == 0x01){
      0000E4 85 14 82         [24]  421 	mov	dpl,_Move_m_65536_12
      0000E7 85 15 83         [24]  422 	mov	dph,(_Move_m_65536_12 + 1)
      0000EA 85 16 F0         [24]  423 	mov	b,(_Move_m_65536_12 + 2)
      0000ED 12 03 D9         [24]  424 	lcall	__gptrget
      0000F0 FC               [12]  425 	mov	r4,a
      0000F1 BC 01 22         [24]  426 	cjne	r4,#0x01,00102$
                                    427 ;	./src/main.c:39: m[1] = m[0];m[0] = 0x00;return;
      0000F4 74 01            [12]  428 	mov	a,#0x01
      0000F6 25 14            [12]  429 	add	a,_Move_m_65536_12
      0000F8 F9               [12]  430 	mov	r1,a
      0000F9 E4               [12]  431 	clr	a
      0000FA 35 15            [12]  432 	addc	a,(_Move_m_65536_12 + 1)
      0000FC FA               [12]  433 	mov	r2,a
      0000FD AB 16            [24]  434 	mov	r3,(_Move_m_65536_12 + 2)
      0000FF 89 82            [24]  435 	mov	dpl,r1
      000101 8A 83            [24]  436 	mov	dph,r2
      000103 8B F0            [24]  437 	mov	b,r3
      000105 EC               [12]  438 	mov	a,r4
      000106 12 03 48         [24]  439 	lcall	__gptrput
      000109 85 14 82         [24]  440 	mov	dpl,_Move_m_65536_12
      00010C 85 15 83         [24]  441 	mov	dph,(_Move_m_65536_12 + 1)
      00010F 85 16 F0         [24]  442 	mov	b,(_Move_m_65536_12 + 2)
      000112 E4               [12]  443 	clr	a
      000113 02 03 48         [24]  444 	ljmp	__gptrput
      000116                        445 00102$:
                                    446 ;	./src/main.c:41: m[0] >>= 1;
      000116 EC               [12]  447 	mov	a,r4
      000117 C3               [12]  448 	clr	c
      000118 13               [12]  449 	rrc	a
      000119 85 14 82         [24]  450 	mov	dpl,_Move_m_65536_12
      00011C 85 15 83         [24]  451 	mov	dph,(_Move_m_65536_12 + 1)
      00011F 85 16 F0         [24]  452 	mov	b,(_Move_m_65536_12 + 2)
      000122 02 03 48         [24]  453 	ljmp	__gptrput
      000125                        454 00118$:
                                    455 ;	./src/main.c:42: }else if (dir == 1){
      000125 74 01            [12]  456 	mov	a,#0x01
      000127 B5 13 6B         [24]  457 	cjne	a,_Move_PARM_2,00115$
                                    458 ;	./src/main.c:43: if (m[7] == 0x01){
      00012A 74 07            [12]  459 	mov	a,#0x07
      00012C 25 14            [12]  460 	add	a,_Move_m_65536_12
      00012E FA               [12]  461 	mov	r2,a
      00012F E4               [12]  462 	clr	a
      000130 35 15            [12]  463 	addc	a,(_Move_m_65536_12 + 1)
      000132 FB               [12]  464 	mov	r3,a
      000133 AC 16            [24]  465 	mov	r4,(_Move_m_65536_12 + 2)
      000135 8A 82            [24]  466 	mov	dpl,r2
      000137 8B 83            [24]  467 	mov	dph,r3
      000139 8C F0            [24]  468 	mov	b,r4
      00013B 12 03 D9         [24]  469 	lcall	__gptrget
      00013E F9               [12]  470 	mov	r1,a
      00013F B9 01 0B         [24]  471 	cjne	r1,#0x01,00104$
                                    472 ;	./src/main.c:44: m[7] <<= 1;
      000142 E9               [12]  473 	mov	a,r1
      000143 29               [12]  474 	add	a,r1
      000144 8A 82            [24]  475 	mov	dpl,r2
      000146 8B 83            [24]  476 	mov	dph,r3
      000148 8C F0            [24]  477 	mov	b,r4
                                    478 ;	./src/main.c:45: return;
      00014A 02 03 48         [24]  479 	ljmp	__gptrput
      00014D                        480 00104$:
                                    481 ;	./src/main.c:47: for (i = 7;i>=1;i--)
      00014D 7B 07            [12]  482 	mov	r3,#0x07
      00014F 7C 00            [12]  483 	mov	r4,#0x00
      000151                        484 00120$:
                                    485 ;	./src/main.c:48: m[i] = m[i-1];
      000151 EB               [12]  486 	mov	a,r3
      000152 25 14            [12]  487 	add	a,_Move_m_65536_12
      000154 F5 17            [12]  488 	mov	_Move_sloc0_1_0,a
      000156 EC               [12]  489 	mov	a,r4
      000157 35 15            [12]  490 	addc	a,(_Move_m_65536_12 + 1)
      000159 F5 18            [12]  491 	mov	(_Move_sloc0_1_0 + 1),a
      00015B 85 16 19         [24]  492 	mov	(_Move_sloc0_1_0 + 2),(_Move_m_65536_12 + 2)
      00015E EB               [12]  493 	mov	a,r3
      00015F 24 FF            [12]  494 	add	a,#0xff
      000161 FE               [12]  495 	mov	r6,a
      000162 EC               [12]  496 	mov	a,r4
      000163 34 FF            [12]  497 	addc	a,#0xff
      000165 FF               [12]  498 	mov	r7,a
      000166 EE               [12]  499 	mov	a,r6
      000167 25 14            [12]  500 	add	a,_Move_m_65536_12
      000169 F9               [12]  501 	mov	r1,a
      00016A EF               [12]  502 	mov	a,r7
      00016B 35 15            [12]  503 	addc	a,(_Move_m_65536_12 + 1)
      00016D FA               [12]  504 	mov	r2,a
      00016E AD 16            [24]  505 	mov	r5,(_Move_m_65536_12 + 2)
      000170 89 82            [24]  506 	mov	dpl,r1
      000172 8A 83            [24]  507 	mov	dph,r2
      000174 8D F0            [24]  508 	mov	b,r5
      000176 12 03 D9         [24]  509 	lcall	__gptrget
      000179 85 17 82         [24]  510 	mov	dpl,_Move_sloc0_1_0
      00017C 85 18 83         [24]  511 	mov	dph,(_Move_sloc0_1_0 + 1)
      00017F 85 19 F0         [24]  512 	mov	b,(_Move_sloc0_1_0 + 2)
      000182 12 03 48         [24]  513 	lcall	__gptrput
                                    514 ;	./src/main.c:47: for (i = 7;i>=1;i--)
      000185 8E 03            [24]  515 	mov	ar3,r6
      000187 8F 04            [24]  516 	mov	ar4,r7
      000189 C3               [12]  517 	clr	c
      00018A EB               [12]  518 	mov	a,r3
      00018B 94 01            [12]  519 	subb	a,#0x01
      00018D EC               [12]  520 	mov	a,r4
      00018E 64 80            [12]  521 	xrl	a,#0x80
      000190 94 80            [12]  522 	subb	a,#0x80
      000192 50 BD            [24]  523 	jnc	00120$
      000194 22               [24]  524 	ret
      000195                        525 00115$:
                                    526 ;	./src/main.c:49: }else if (dir == 2){
      000195 74 02            [12]  527 	mov	a,#0x02
      000197 B5 13 42         [24]  528 	cjne	a,_Move_PARM_2,00112$
                                    529 ;	./src/main.c:50: if (m[7] == 0x80){
      00019A 74 07            [12]  530 	mov	a,#0x07
      00019C 25 14            [12]  531 	add	a,_Move_m_65536_12
      00019E FD               [12]  532 	mov	r5,a
      00019F E4               [12]  533 	clr	a
      0001A0 35 15            [12]  534 	addc	a,(_Move_m_65536_12 + 1)
      0001A2 FE               [12]  535 	mov	r6,a
      0001A3 AF 16            [24]  536 	mov	r7,(_Move_m_65536_12 + 2)
      0001A5 8D 82            [24]  537 	mov	dpl,r5
      0001A7 8E 83            [24]  538 	mov	dph,r6
      0001A9 8F F0            [24]  539 	mov	b,r7
      0001AB 12 03 D9         [24]  540 	lcall	__gptrget
      0001AE FC               [12]  541 	mov	r4,a
      0001AF BC 80 1F         [24]  542 	cjne	r4,#0x80,00107$
                                    543 ;	./src/main.c:51: m[6] = m[7];m[7] = 0x00;return;
      0001B2 74 06            [12]  544 	mov	a,#0x06
      0001B4 25 14            [12]  545 	add	a,_Move_m_65536_12
      0001B6 F9               [12]  546 	mov	r1,a
      0001B7 E4               [12]  547 	clr	a
      0001B8 35 15            [12]  548 	addc	a,(_Move_m_65536_12 + 1)
      0001BA FA               [12]  549 	mov	r2,a
      0001BB AB 16            [24]  550 	mov	r3,(_Move_m_65536_12 + 2)
      0001BD 89 82            [24]  551 	mov	dpl,r1
      0001BF 8A 83            [24]  552 	mov	dph,r2
      0001C1 8B F0            [24]  553 	mov	b,r3
      0001C3 EC               [12]  554 	mov	a,r4
      0001C4 12 03 48         [24]  555 	lcall	__gptrput
      0001C7 8D 82            [24]  556 	mov	dpl,r5
      0001C9 8E 83            [24]  557 	mov	dph,r6
      0001CB 8F F0            [24]  558 	mov	b,r7
      0001CD E4               [12]  559 	clr	a
      0001CE 02 03 48         [24]  560 	ljmp	__gptrput
      0001D1                        561 00107$:
                                    562 ;	./src/main.c:53: m[7] <<= 1;
      0001D1 EC               [12]  563 	mov	a,r4
      0001D2 2C               [12]  564 	add	a,r4
      0001D3 8D 82            [24]  565 	mov	dpl,r5
      0001D5 8E 83            [24]  566 	mov	dph,r6
      0001D7 8F F0            [24]  567 	mov	b,r7
      0001D9 02 03 48         [24]  568 	ljmp	__gptrput
      0001DC                        569 00112$:
                                    570 ;	./src/main.c:55: if (m[0] == 0x80){
      0001DC 85 14 82         [24]  571 	mov	dpl,_Move_m_65536_12
      0001DF 85 15 83         [24]  572 	mov	dph,(_Move_m_65536_12 + 1)
      0001E2 85 16 F0         [24]  573 	mov	b,(_Move_m_65536_12 + 2)
      0001E5 12 03 D9         [24]  574 	lcall	__gptrget
      0001E8 FF               [12]  575 	mov	r7,a
      0001E9 BF 80 0F         [24]  576 	cjne	r7,#0x80,00109$
                                    577 ;	./src/main.c:56: m[0] >>= 1;
      0001EC EF               [12]  578 	mov	a,r7
      0001ED C3               [12]  579 	clr	c
      0001EE 13               [12]  580 	rrc	a
      0001EF 85 14 82         [24]  581 	mov	dpl,_Move_m_65536_12
      0001F2 85 15 83         [24]  582 	mov	dph,(_Move_m_65536_12 + 1)
      0001F5 85 16 F0         [24]  583 	mov	b,(_Move_m_65536_12 + 2)
                                    584 ;	./src/main.c:57: return;
      0001F8 02 03 48         [24]  585 	ljmp	__gptrput
      0001FB                        586 00109$:
                                    587 ;	./src/main.c:59: for (i = 0;i<= 6;i++)
      0001FB 7E 00            [12]  588 	mov	r6,#0x00
      0001FD 7F 00            [12]  589 	mov	r7,#0x00
      0001FF                        590 00122$:
                                    591 ;	./src/main.c:60: m[i] = m[i+1];
      0001FF EE               [12]  592 	mov	a,r6
      000200 25 14            [12]  593 	add	a,_Move_m_65536_12
      000202 F5 17            [12]  594 	mov	_Move_sloc0_1_0,a
      000204 EF               [12]  595 	mov	a,r7
      000205 35 15            [12]  596 	addc	a,(_Move_m_65536_12 + 1)
      000207 F5 18            [12]  597 	mov	(_Move_sloc0_1_0 + 1),a
      000209 85 16 19         [24]  598 	mov	(_Move_sloc0_1_0 + 2),(_Move_m_65536_12 + 2)
      00020C 74 01            [12]  599 	mov	a,#0x01
      00020E 2E               [12]  600 	add	a,r6
      00020F F9               [12]  601 	mov	r1,a
      000210 E4               [12]  602 	clr	a
      000211 3F               [12]  603 	addc	a,r7
      000212 FA               [12]  604 	mov	r2,a
      000213 E9               [12]  605 	mov	a,r1
      000214 25 14            [12]  606 	add	a,_Move_m_65536_12
      000216 F8               [12]  607 	mov	r0,a
      000217 EA               [12]  608 	mov	a,r2
      000218 35 15            [12]  609 	addc	a,(_Move_m_65536_12 + 1)
      00021A FC               [12]  610 	mov	r4,a
      00021B AD 16            [24]  611 	mov	r5,(_Move_m_65536_12 + 2)
      00021D 88 82            [24]  612 	mov	dpl,r0
      00021F 8C 83            [24]  613 	mov	dph,r4
      000221 8D F0            [24]  614 	mov	b,r5
      000223 12 03 D9         [24]  615 	lcall	__gptrget
      000226 85 17 82         [24]  616 	mov	dpl,_Move_sloc0_1_0
      000229 85 18 83         [24]  617 	mov	dph,(_Move_sloc0_1_0 + 1)
      00022C 85 19 F0         [24]  618 	mov	b,(_Move_sloc0_1_0 + 2)
      00022F 12 03 48         [24]  619 	lcall	__gptrput
                                    620 ;	./src/main.c:59: for (i = 0;i<= 6;i++)
      000232 89 06            [24]  621 	mov	ar6,r1
      000234 8A 07            [24]  622 	mov	ar7,r2
      000236 C3               [12]  623 	clr	c
      000237 74 06            [12]  624 	mov	a,#0x06
      000239 9E               [12]  625 	subb	a,r6
      00023A 74 80            [12]  626 	mov	a,#(0x00 ^ 0x80)
      00023C 8F F0            [24]  627 	mov	b,r7
      00023E 63 F0 80         [24]  628 	xrl	b,#0x80
      000241 95 F0            [12]  629 	subb	a,b
      000243 50 BA            [24]  630 	jnc	00122$
                                    631 ;	./src/main.c:63: }
      000245 22               [24]  632 	ret
                                    633 	.area CSEG    (CODE)
                                    634 	.area CONST   (CODE)
                                    635 	.area XINIT   (CODE)
                                    636 	.area CABS    (ABS,CODE)
