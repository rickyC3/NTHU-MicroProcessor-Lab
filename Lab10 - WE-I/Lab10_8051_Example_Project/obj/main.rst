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
                                     12 	.globl _oledSendData
                                     13 	.globl _OLED_SetCursor
                                     14 	.globl _OLED_Init
                                     15 	.globl _CY
                                     16 	.globl _AC
                                     17 	.globl _F0
                                     18 	.globl _RS1
                                     19 	.globl _RS0
                                     20 	.globl _OV
                                     21 	.globl _F1
                                     22 	.globl _P
                                     23 	.globl _PS
                                     24 	.globl _PT1
                                     25 	.globl _PX1
                                     26 	.globl _PT0
                                     27 	.globl _PX0
                                     28 	.globl _RD
                                     29 	.globl _WR
                                     30 	.globl _T1
                                     31 	.globl _T0
                                     32 	.globl _INT1
                                     33 	.globl _INT0
                                     34 	.globl _TXD
                                     35 	.globl _RXD
                                     36 	.globl _P3_7
                                     37 	.globl _P3_6
                                     38 	.globl _P3_5
                                     39 	.globl _P3_4
                                     40 	.globl _P3_3
                                     41 	.globl _P3_2
                                     42 	.globl _P3_1
                                     43 	.globl _P3_0
                                     44 	.globl _EA
                                     45 	.globl _ES
                                     46 	.globl _ET1
                                     47 	.globl _EX1
                                     48 	.globl _ET0
                                     49 	.globl _EX0
                                     50 	.globl _P2_7
                                     51 	.globl _P2_6
                                     52 	.globl _P2_5
                                     53 	.globl _P2_4
                                     54 	.globl _P2_3
                                     55 	.globl _P2_2
                                     56 	.globl _P2_1
                                     57 	.globl _P2_0
                                     58 	.globl _SM0
                                     59 	.globl _SM1
                                     60 	.globl _SM2
                                     61 	.globl _REN
                                     62 	.globl _TB8
                                     63 	.globl _RB8
                                     64 	.globl _TI
                                     65 	.globl _RI
                                     66 	.globl _P1_7
                                     67 	.globl _P1_6
                                     68 	.globl _P1_5
                                     69 	.globl _P1_4
                                     70 	.globl _P1_3
                                     71 	.globl _P1_2
                                     72 	.globl _P1_1
                                     73 	.globl _P1_0
                                     74 	.globl _TF1
                                     75 	.globl _TR1
                                     76 	.globl _TF0
                                     77 	.globl _TR0
                                     78 	.globl _IE1
                                     79 	.globl _IT1
                                     80 	.globl _IE0
                                     81 	.globl _IT0
                                     82 	.globl _P0_7
                                     83 	.globl _P0_6
                                     84 	.globl _P0_5
                                     85 	.globl _P0_4
                                     86 	.globl _P0_3
                                     87 	.globl _P0_2
                                     88 	.globl _P0_1
                                     89 	.globl _P0_0
                                     90 	.globl _B
                                     91 	.globl _ACC
                                     92 	.globl _PSW
                                     93 	.globl _IP
                                     94 	.globl _P3
                                     95 	.globl _IE
                                     96 	.globl _P2
                                     97 	.globl _SBUF
                                     98 	.globl _SCON
                                     99 	.globl _P1
                                    100 	.globl _TH1
                                    101 	.globl _TH0
                                    102 	.globl _TL1
                                    103 	.globl _TL0
                                    104 	.globl _TMOD
                                    105 	.globl _TCON
                                    106 	.globl _PCON
                                    107 	.globl _DPH
                                    108 	.globl _DPL
                                    109 	.globl _SP
                                    110 	.globl _P0
                                    111 	.globl _ball_y_location_now
                                    112 	.globl _ball_x_location_now
                                    113 	.globl _ball_vy_speed
                                    114 	.globl _ball_vx_speed
                                    115 	.globl _oled_init_display
                                    116 	.globl _compute_ball_location
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
      000021                        232 _ball_vx_speed::
      000021                        233 	.ds 4
      000025                        234 _ball_vy_speed::
      000025                        235 	.ds 4
      000029                        236 _ball_x_location_now::
      000029                        237 	.ds 4
      00002D                        238 _ball_y_location_now::
      00002D                        239 	.ds 4
      000031                        240 _compute_ball_location_ball_y_location_next_65536_32:
      000031                        241 	.ds 4
      000035                        242 _compute_ball_location_ball_x_location_int_65536_32:
      000035                        243 	.ds 1
      000036                        244 _compute_ball_location_ball_x_cnt_65536_32:
      000036                        245 	.ds 1
      000037                        246 _compute_ball_location_ball_x_i_65536_32:
      000037                        247 	.ds 1
      000038                        248 _compute_ball_location_ball_y_i_last_65536_32:
      000038                        249 	.ds 1
      000039                        250 _compute_ball_location_sloc0_1_0:
      000039                        251 	.ds 1
      00003A                        252 _compute_ball_location_sloc2_1_0:
      00003A                        253 	.ds 2
                                    254 ;--------------------------------------------------------
                                    255 ; overlayable items in internal ram 
                                    256 ;--------------------------------------------------------
                                    257 ;--------------------------------------------------------
                                    258 ; Stack segment in internal ram 
                                    259 ;--------------------------------------------------------
                                    260 	.area	SSEG
      00003C                        261 __start__stack:
      00003C                        262 	.ds	1
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
      000000                        277 _compute_ball_location_sloc1_1_0:
      000000                        278 	.ds 1
                                    279 ;--------------------------------------------------------
                                    280 ; paged external ram data
                                    281 ;--------------------------------------------------------
                                    282 	.area PSEG    (PAG,XDATA)
                                    283 ;--------------------------------------------------------
                                    284 ; external ram data
                                    285 ;--------------------------------------------------------
                                    286 	.area XSEG    (XDATA)
                                    287 ;--------------------------------------------------------
                                    288 ; absolute external ram data
                                    289 ;--------------------------------------------------------
                                    290 	.area XABS    (ABS,XDATA)
                                    291 ;--------------------------------------------------------
                                    292 ; external initialized ram data
                                    293 ;--------------------------------------------------------
                                    294 	.area XISEG   (XDATA)
                                    295 	.area HOME    (CODE)
                                    296 	.area GSINIT0 (CODE)
                                    297 	.area GSINIT1 (CODE)
                                    298 	.area GSINIT2 (CODE)
                                    299 	.area GSINIT3 (CODE)
                                    300 	.area GSINIT4 (CODE)
                                    301 	.area GSINIT5 (CODE)
                                    302 	.area GSINIT  (CODE)
                                    303 	.area GSFINAL (CODE)
                                    304 	.area CSEG    (CODE)
                                    305 ;--------------------------------------------------------
                                    306 ; interrupt vector 
                                    307 ;--------------------------------------------------------
                                    308 	.area HOME    (CODE)
      000000                        309 __interrupt_vect:
      000000 02 00 06         [24]  310 	ljmp	__sdcc_gsinit_startup
                                    311 ;--------------------------------------------------------
                                    312 ; global & static initialisations
                                    313 ;--------------------------------------------------------
                                    314 	.area HOME    (CODE)
                                    315 	.area GSINIT  (CODE)
                                    316 	.area GSFINAL (CODE)
                                    317 	.area GSINIT  (CODE)
                                    318 	.globl __sdcc_gsinit_startup
                                    319 	.globl __sdcc_program_startup
                                    320 	.globl __start__stack
                                    321 	.globl __mcs51_genXINIT
                                    322 	.globl __mcs51_genXRAMCLEAR
                                    323 	.globl __mcs51_genRAMCLEAR
                                    324 ;	./src/main.c:16: float ball_vx_speed = 1.0;				// # move tile along x axis per time
      00005F E4               [12]  325 	clr	a
      000060 F5 21            [12]  326 	mov	_ball_vx_speed,a
      000062 F5 22            [12]  327 	mov	(_ball_vx_speed + 1),a
      000064 75 23 80         [24]  328 	mov	(_ball_vx_speed + 2),#0x80
      000067 75 24 3F         [24]  329 	mov	(_ball_vx_speed + 3),#0x3f
                                    330 ;	./src/main.c:17: float ball_vy_speed = 2.0;				// # move tile along y axis per time
      00006A F5 25            [12]  331 	mov	_ball_vy_speed,a
      00006C F5 26            [12]  332 	mov	(_ball_vy_speed + 1),a
      00006E F5 27            [12]  333 	mov	(_ball_vy_speed + 2),a
      000070 75 28 40         [24]  334 	mov	(_ball_vy_speed + 3),#0x40
                                    335 ;	./src/main.c:19: float ball_x_location_now = 50.0;		// Initial location
      000073 F5 29            [12]  336 	mov	_ball_x_location_now,a
      000075 F5 2A            [12]  337 	mov	(_ball_x_location_now + 1),a
      000077 75 2B 48         [24]  338 	mov	(_ball_x_location_now + 2),#0x48
      00007A 75 2C 42         [24]  339 	mov	(_ball_x_location_now + 3),#0x42
                                    340 ;	./src/main.c:20: float ball_y_location_now = 4.0;		// Initial location
      00007D F5 2D            [12]  341 	mov	_ball_y_location_now,a
      00007F F5 2E            [12]  342 	mov	(_ball_y_location_now + 1),a
      000081 75 2F 80         [24]  343 	mov	(_ball_y_location_now + 2),#0x80
      000084 75 30 40         [24]  344 	mov	(_ball_y_location_now + 3),#0x40
                                    345 	.area GSFINAL (CODE)
      000087 02 00 03         [24]  346 	ljmp	__sdcc_program_startup
                                    347 ;--------------------------------------------------------
                                    348 ; Home
                                    349 ;--------------------------------------------------------
                                    350 	.area HOME    (CODE)
                                    351 	.area HOME    (CODE)
      000003                        352 __sdcc_program_startup:
      000003 02 00 8A         [24]  353 	ljmp	_main
                                    354 ;	return from main will return to caller
                                    355 ;--------------------------------------------------------
                                    356 ; code
                                    357 ;--------------------------------------------------------
                                    358 	.area CSEG    (CODE)
                                    359 ;------------------------------------------------------------
                                    360 ;Allocation info for local variables in function 'main'
                                    361 ;------------------------------------------------------------
                                    362 ;	./src/main.c:22: int main()
                                    363 ;	-----------------------------------------
                                    364 ;	 function main
                                    365 ;	-----------------------------------------
      00008A                        366 _main:
                           000007   367 	ar7 = 0x07
                           000006   368 	ar6 = 0x06
                           000005   369 	ar5 = 0x05
                           000004   370 	ar4 = 0x04
                           000003   371 	ar3 = 0x03
                           000002   372 	ar2 = 0x02
                           000001   373 	ar1 = 0x01
                           000000   374 	ar0 = 0x00
                                    375 ;	./src/main.c:27: SDA = HIGH;
                                    376 ;	assignBit
      00008A D2 81            [12]  377 	setb	_P0_1
                                    378 ;	./src/main.c:28: SCL = HIGH;
                                    379 ;	assignBit
      00008C D2 80            [12]  380 	setb	_P0_0
                                    381 ;	./src/main.c:31: OLED_Init();
      00008E 12 06 65         [24]  382 	lcall	_OLED_Init
                                    383 ;	./src/main.c:32: oled_init_display();
      000091 12 00 99         [24]  384 	lcall	_oled_init_display
                                    385 ;	./src/main.c:34: while(1)
      000094                        386 00102$:
                                    387 ;	./src/main.c:36: compute_ball_location();
      000094 12 01 19         [24]  388 	lcall	_compute_ball_location
                                    389 ;	./src/main.c:38: }
      000097 80 FB            [24]  390 	sjmp	00102$
                                    391 ;------------------------------------------------------------
                                    392 ;Allocation info for local variables in function 'oled_init_display'
                                    393 ;------------------------------------------------------------
                                    394 ;oled_clean_col            Allocated to registers r5 
                                    395 ;oled_clean_page           Allocated to registers r7 
                                    396 ;------------------------------------------------------------
                                    397 ;	./src/main.c:41: void oled_init_display(void)
                                    398 ;	-----------------------------------------
                                    399 ;	 function oled_init_display
                                    400 ;	-----------------------------------------
      000099                        401 _oled_init_display:
                                    402 ;	./src/main.c:44: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page++)
      000099 7F 00            [12]  403 	mov	r7,#0x00
      00009B                        404 00115$:
                                    405 ;	./src/main.c:46: OLED_SetCursor(oled_clean_page, 0);
      00009B 75 0B 00         [24]  406 	mov	_OLED_SetCursor_PARM_2,#0x00
      00009E 8F 82            [24]  407 	mov	dpl,r7
      0000A0 C0 07            [24]  408 	push	ar7
      0000A2 12 07 7B         [24]  409 	lcall	_OLED_SetCursor
      0000A5 D0 07            [24]  410 	pop	ar7
                                    411 ;	./src/main.c:47: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) 
      0000A7 E4               [12]  412 	clr	a
      0000A8 BF 07 01         [24]  413 	cjne	r7,#0x07,00145$
      0000AB 04               [12]  414 	inc	a
      0000AC                        415 00145$:
      0000AC FE               [12]  416 	mov	r6,a
      0000AD 7D 00            [12]  417 	mov	r5,#0x00
      0000AF                        418 00113$:
                                    419 ;	./src/main.c:49: if((oled_clean_col == 0) || (oled_clean_col == 127))
      0000AF ED               [12]  420 	mov	a,r5
      0000B0 60 03            [24]  421 	jz	00107$
      0000B2 BD 7F 14         [24]  422 	cjne	r5,#0x7f,00108$
      0000B5                        423 00107$:
                                    424 ;	./src/main.c:50: oledSendData(0xff);
      0000B5 75 82 FF         [24]  425 	mov	dpl,#0xff
      0000B8 C0 07            [24]  426 	push	ar7
      0000BA C0 06            [24]  427 	push	ar6
      0000BC C0 05            [24]  428 	push	ar5
      0000BE 12 07 B7         [24]  429 	lcall	_oledSendData
      0000C1 D0 05            [24]  430 	pop	ar5
      0000C3 D0 06            [24]  431 	pop	ar6
      0000C5 D0 07            [24]  432 	pop	ar7
      0000C7 80 40            [24]  433 	sjmp	00114$
      0000C9                        434 00108$:
                                    435 ;	./src/main.c:51: else if(oled_clean_page == 0)
      0000C9 EF               [12]  436 	mov	a,r7
      0000CA 70 14            [24]  437 	jnz	00105$
                                    438 ;	./src/main.c:52: oledSendData(0x01);
      0000CC 75 82 01         [24]  439 	mov	dpl,#0x01
      0000CF C0 07            [24]  440 	push	ar7
      0000D1 C0 06            [24]  441 	push	ar6
      0000D3 C0 05            [24]  442 	push	ar5
      0000D5 12 07 B7         [24]  443 	lcall	_oledSendData
      0000D8 D0 05            [24]  444 	pop	ar5
      0000DA D0 06            [24]  445 	pop	ar6
      0000DC D0 07            [24]  446 	pop	ar7
      0000DE 80 29            [24]  447 	sjmp	00114$
      0000E0                        448 00105$:
                                    449 ;	./src/main.c:53: else if(oled_clean_page == 7)
      0000E0 EE               [12]  450 	mov	a,r6
      0000E1 60 14            [24]  451 	jz	00102$
                                    452 ;	./src/main.c:54: oledSendData(0x80);
      0000E3 75 82 80         [24]  453 	mov	dpl,#0x80
      0000E6 C0 07            [24]  454 	push	ar7
      0000E8 C0 06            [24]  455 	push	ar6
      0000EA C0 05            [24]  456 	push	ar5
      0000EC 12 07 B7         [24]  457 	lcall	_oledSendData
      0000EF D0 05            [24]  458 	pop	ar5
      0000F1 D0 06            [24]  459 	pop	ar6
      0000F3 D0 07            [24]  460 	pop	ar7
      0000F5 80 12            [24]  461 	sjmp	00114$
      0000F7                        462 00102$:
                                    463 ;	./src/main.c:56: oledSendData(0x00);
      0000F7 75 82 00         [24]  464 	mov	dpl,#0x00
      0000FA C0 07            [24]  465 	push	ar7
      0000FC C0 06            [24]  466 	push	ar6
      0000FE C0 05            [24]  467 	push	ar5
      000100 12 07 B7         [24]  468 	lcall	_oledSendData
      000103 D0 05            [24]  469 	pop	ar5
      000105 D0 06            [24]  470 	pop	ar6
      000107 D0 07            [24]  471 	pop	ar7
      000109                        472 00114$:
                                    473 ;	./src/main.c:47: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) 
      000109 0D               [12]  474 	inc	r5
      00010A BD 80 00         [24]  475 	cjne	r5,#0x80,00152$
      00010D                        476 00152$:
      00010D 40 A0            [24]  477 	jc	00113$
                                    478 ;	./src/main.c:44: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page++)
      00010F 0F               [12]  479 	inc	r7
      000110 BF 08 00         [24]  480 	cjne	r7,#0x08,00154$
      000113                        481 00154$:
      000113 50 03            [24]  482 	jnc	00155$
      000115 02 00 9B         [24]  483 	ljmp	00115$
      000118                        484 00155$:
                                    485 ;	./src/main.c:60: }
      000118 22               [24]  486 	ret
                                    487 ;------------------------------------------------------------
                                    488 ;Allocation info for local variables in function 'compute_ball_location'
                                    489 ;------------------------------------------------------------
                                    490 ;ball_x_location_next      Allocated to registers r4 r5 r6 r7 
                                    491 ;ball_y_location_next      Allocated with name '_compute_ball_location_ball_y_location_next_65536_32'
                                    492 ;ball_x_location_int       Allocated with name '_compute_ball_location_ball_x_location_int_65536_32'
                                    493 ;ball_y_location_int       Allocated to registers r6 
                                    494 ;ball_x_cnt                Allocated with name '_compute_ball_location_ball_x_cnt_65536_32'
                                    495 ;ball_y_cnt                Allocated to registers r3 
                                    496 ;ball_x_i                  Allocated with name '_compute_ball_location_ball_x_i_65536_32'
                                    497 ;ball_y_i                  Allocated to registers r0 
                                    498 ;ball_y_i_last             Allocated with name '_compute_ball_location_ball_y_i_last_65536_32'
                                    499 ;ball_oled_buf             Allocated to registers r4 
                                    500 ;sloc0                     Allocated with name '_compute_ball_location_sloc0_1_0'
                                    501 ;sloc2                     Allocated with name '_compute_ball_location_sloc2_1_0'
                                    502 ;------------------------------------------------------------
                                    503 ;	./src/main.c:62: void compute_ball_location(void)
                                    504 ;	-----------------------------------------
                                    505 ;	 function compute_ball_location
                                    506 ;	-----------------------------------------
      000119                        507 _compute_ball_location:
                                    508 ;	./src/main.c:81: ball_x_location_int = ball_x_location_now;
      000119 85 29 82         [24]  509 	mov	dpl,_ball_x_location_now
      00011C 85 2A 83         [24]  510 	mov	dph,(_ball_x_location_now + 1)
      00011F 85 2B F0         [24]  511 	mov	b,(_ball_x_location_now + 2)
      000122 E5 2C            [12]  512 	mov	a,(_ball_x_location_now + 3)
      000124 12 09 6B         [24]  513 	lcall	___fs2uchar
      000127 AF 82            [24]  514 	mov	r7,dpl
                                    515 ;	./src/main.c:82: ball_y_location_int = ball_y_location_now;
      000129 85 2D 82         [24]  516 	mov	dpl,_ball_y_location_now
      00012C 85 2E 83         [24]  517 	mov	dph,(_ball_y_location_now + 1)
      00012F 85 2F F0         [24]  518 	mov	b,(_ball_y_location_now + 2)
      000132 E5 30            [12]  519 	mov	a,(_ball_y_location_now + 3)
      000134 C0 07            [24]  520 	push	ar7
      000136 12 09 6B         [24]  521 	lcall	___fs2uchar
      000139 AE 82            [24]  522 	mov	r6,dpl
      00013B D0 07            [24]  523 	pop	ar7
                                    524 ;	./src/main.c:84: for(ball_x_cnt = 0; ball_x_cnt < ball_x_size; ball_x_cnt ++)		// Erase ball from its left to right
      00013D 7D 00            [12]  525 	mov	r5,#0x00
      00013F                        526 00136$:
                                    527 ;	./src/main.c:86: ball_x_i = ball_x_location_int + ball_x_cnt;
      00013F ED               [12]  528 	mov	a,r5
      000140 2F               [12]  529 	add	a,r7
      000141 FC               [12]  530 	mov	r4,a
                                    531 ;	./src/main.c:89: for(ball_y_cnt = 0; ball_y_cnt < ball_y_size; ball_y_cnt ++)	// Erase ball from its top to buttom
      000142 7B 00            [12]  532 	mov	r3,#0x00
      000144                        533 00134$:
                                    534 ;	./src/main.c:91: ball_y_i = ball_y_location_int + ball_y_cnt;
      000144 EB               [12]  535 	mov	a,r3
      000145 2E               [12]  536 	add	a,r6
                                    537 ;	./src/main.c:93: if((ball_y_i / 8) == 0)
      000146 FA               [12]  538 	mov	r2,a
      000147 F8               [12]  539 	mov	r0,a
      000148 79 00            [12]  540 	mov	r1,#0x00
      00014A 75 0C 08         [24]  541 	mov	__divsint_PARM_2,#0x08
                                    542 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      00014D 89 0D            [24]  543 	mov	(__divsint_PARM_2 + 1),r1
      00014F 88 82            [24]  544 	mov	dpl,r0
      000151 89 83            [24]  545 	mov	dph,r1
      000153 C0 07            [24]  546 	push	ar7
      000155 C0 06            [24]  547 	push	ar6
      000157 C0 05            [24]  548 	push	ar5
      000159 C0 04            [24]  549 	push	ar4
      00015B C0 03            [24]  550 	push	ar3
      00015D C0 02            [24]  551 	push	ar2
      00015F 12 09 73         [24]  552 	lcall	__divsint
      000162 A8 82            [24]  553 	mov	r0,dpl
      000164 A9 83            [24]  554 	mov	r1,dph
      000166 D0 02            [24]  555 	pop	ar2
      000168 D0 03            [24]  556 	pop	ar3
      00016A D0 04            [24]  557 	pop	ar4
      00016C D0 05            [24]  558 	pop	ar5
      00016E D0 06            [24]  559 	pop	ar6
      000170 D0 07            [24]  560 	pop	ar7
      000172 E8               [12]  561 	mov	a,r0
      000173 49               [12]  562 	orl	a,r1
      000174 70 05            [24]  563 	jnz	00105$
                                    564 ;	./src/main.c:94: ball_oled_buf =  0x01;									// Erase, but keep the buttom boundary
      000176 75 39 01         [24]  565 	mov	_compute_ball_location_sloc0_1_0,#0x01
      000179 80 0E            [24]  566 	sjmp	00106$
      00017B                        567 00105$:
                                    568 ;	./src/main.c:95: else if((ball_y_i / 8) == 7)
      00017B B8 07 08         [24]  569 	cjne	r0,#0x07,00102$
      00017E B9 00 05         [24]  570 	cjne	r1,#0x00,00102$
                                    571 ;	./src/main.c:96: ball_oled_buf = 0x80;									// Erase, but keep the top boundary
      000181 75 39 80         [24]  572 	mov	_compute_ball_location_sloc0_1_0,#0x80
      000184 80 03            [24]  573 	sjmp	00106$
      000186                        574 00102$:
                                    575 ;	./src/main.c:98: ball_oled_buf = 0x00;									// Erase
      000186 75 39 00         [24]  576 	mov	_compute_ball_location_sloc0_1_0,#0x00
      000189                        577 00106$:
                                    578 ;	./src/main.c:100: OLED_SetCursor(ball_y_i / 8, ball_x_i);
      000189 8A 01            [24]  579 	mov	ar1,r2
      00018B 7A 00            [12]  580 	mov	r2,#0x00
      00018D 75 0C 08         [24]  581 	mov	__divsint_PARM_2,#0x08
                                    582 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000190 8A 0D            [24]  583 	mov	(__divsint_PARM_2 + 1),r2
      000192 89 82            [24]  584 	mov	dpl,r1
      000194 8A 83            [24]  585 	mov	dph,r2
      000196 C0 07            [24]  586 	push	ar7
      000198 C0 06            [24]  587 	push	ar6
      00019A C0 05            [24]  588 	push	ar5
      00019C C0 04            [24]  589 	push	ar4
      00019E C0 03            [24]  590 	push	ar3
      0001A0 12 09 73         [24]  591 	lcall	__divsint
      0001A3 A9 82            [24]  592 	mov	r1,dpl
      0001A5 D0 03            [24]  593 	pop	ar3
      0001A7 D0 04            [24]  594 	pop	ar4
      0001A9 89 82            [24]  595 	mov	dpl,r1
      0001AB 8C 0B            [24]  596 	mov	_OLED_SetCursor_PARM_2,r4
      0001AD C0 04            [24]  597 	push	ar4
      0001AF C0 03            [24]  598 	push	ar3
      0001B1 12 07 7B         [24]  599 	lcall	_OLED_SetCursor
                                    600 ;	./src/main.c:101: oledSendData(ball_oled_buf);
      0001B4 85 39 82         [24]  601 	mov	dpl,_compute_ball_location_sloc0_1_0
      0001B7 12 07 B7         [24]  602 	lcall	_oledSendData
      0001BA D0 03            [24]  603 	pop	ar3
      0001BC D0 04            [24]  604 	pop	ar4
      0001BE D0 05            [24]  605 	pop	ar5
      0001C0 D0 06            [24]  606 	pop	ar6
      0001C2 D0 07            [24]  607 	pop	ar7
                                    608 ;	./src/main.c:89: for(ball_y_cnt = 0; ball_y_cnt < ball_y_size; ball_y_cnt ++)	// Erase ball from its top to buttom
      0001C4 0B               [12]  609 	inc	r3
      0001C5 BB 02 00         [24]  610 	cjne	r3,#0x02,00241$
      0001C8                        611 00241$:
      0001C8 50 03            [24]  612 	jnc	00242$
      0001CA 02 01 44         [24]  613 	ljmp	00134$
      0001CD                        614 00242$:
                                    615 ;	./src/main.c:84: for(ball_x_cnt = 0; ball_x_cnt < ball_x_size; ball_x_cnt ++)		// Erase ball from its left to right
      0001CD 0D               [12]  616 	inc	r5
      0001CE BD 02 00         [24]  617 	cjne	r5,#0x02,00243$
      0001D1                        618 00243$:
      0001D1 50 03            [24]  619 	jnc	00244$
      0001D3 02 01 3F         [24]  620 	ljmp	00136$
      0001D6                        621 00244$:
                                    622 ;	./src/main.c:106: ball_x_location_next = ball_x_location_now + ball_vx_speed;			// Compute next location
      0001D6 C0 21            [24]  623 	push	_ball_vx_speed
      0001D8 C0 22            [24]  624 	push	(_ball_vx_speed + 1)
      0001DA C0 23            [24]  625 	push	(_ball_vx_speed + 2)
      0001DC C0 24            [24]  626 	push	(_ball_vx_speed + 3)
      0001DE 85 29 82         [24]  627 	mov	dpl,_ball_x_location_now
      0001E1 85 2A 83         [24]  628 	mov	dph,(_ball_x_location_now + 1)
      0001E4 85 2B F0         [24]  629 	mov	b,(_ball_x_location_now + 2)
      0001E7 E5 2C            [12]  630 	mov	a,(_ball_x_location_now + 3)
      0001E9 12 08 44         [24]  631 	lcall	___fsadd
      0001EC AC 82            [24]  632 	mov	r4,dpl
      0001EE AD 83            [24]  633 	mov	r5,dph
      0001F0 AE F0            [24]  634 	mov	r6,b
      0001F2 FF               [12]  635 	mov	r7,a
      0001F3 E5 81            [12]  636 	mov	a,sp
      0001F5 24 FC            [12]  637 	add	a,#0xfc
      0001F7 F5 81            [12]  638 	mov	sp,a
                                    639 ;	./src/main.c:107: ball_y_location_next = ball_y_location_now + ball_vy_speed;			// Compute next location
      0001F9 C0 07            [24]  640 	push	ar7
      0001FB C0 06            [24]  641 	push	ar6
      0001FD C0 05            [24]  642 	push	ar5
      0001FF C0 04            [24]  643 	push	ar4
      000201 C0 25            [24]  644 	push	_ball_vy_speed
      000203 C0 26            [24]  645 	push	(_ball_vy_speed + 1)
      000205 C0 27            [24]  646 	push	(_ball_vy_speed + 2)
      000207 C0 28            [24]  647 	push	(_ball_vy_speed + 3)
      000209 85 2D 82         [24]  648 	mov	dpl,_ball_y_location_now
      00020C 85 2E 83         [24]  649 	mov	dph,(_ball_y_location_now + 1)
      00020F 85 2F F0         [24]  650 	mov	b,(_ball_y_location_now + 2)
      000212 E5 30            [12]  651 	mov	a,(_ball_y_location_now + 3)
      000214 12 08 44         [24]  652 	lcall	___fsadd
      000217 85 82 31         [24]  653 	mov	_compute_ball_location_ball_y_location_next_65536_32,dpl
      00021A 85 83 32         [24]  654 	mov	(_compute_ball_location_ball_y_location_next_65536_32 + 1),dph
      00021D 85 F0 33         [24]  655 	mov	(_compute_ball_location_ball_y_location_next_65536_32 + 2),b
      000220 F5 34            [12]  656 	mov	(_compute_ball_location_ball_y_location_next_65536_32 + 3),a
      000222 E5 81            [12]  657 	mov	a,sp
      000224 24 FC            [12]  658 	add	a,#0xfc
      000226 F5 81            [12]  659 	mov	sp,a
      000228 D0 04            [24]  660 	pop	ar4
      00022A D0 05            [24]  661 	pop	ar5
      00022C D0 06            [24]  662 	pop	ar6
      00022E D0 07            [24]  663 	pop	ar7
                                    664 ;	./src/main.c:109: if(ball_x_location_next <= ball_x_boundary1)						// If hit left boundary
      000230 C0 07            [24]  665 	push	ar7
      000232 C0 06            [24]  666 	push	ar6
      000234 C0 05            [24]  667 	push	ar5
      000236 C0 04            [24]  668 	push	ar4
      000238 C0 04            [24]  669 	push	ar4
      00023A C0 05            [24]  670 	push	ar5
      00023C C0 06            [24]  671 	push	ar6
      00023E C0 07            [24]  672 	push	ar7
      000240 90 00 00         [24]  673 	mov	dptr,#(0x00&0x00ff)
      000243 E4               [12]  674 	clr	a
      000244 F5 F0            [12]  675 	mov	b,a
      000246 12 07 CE         [24]  676 	lcall	___fslt
      000249 E5 81            [12]  677 	mov	a,sp
      00024B 24 FC            [12]  678 	add	a,#0xfc
      00024D F5 81            [12]  679 	mov	sp,a
      00024F D0 04            [24]  680 	pop	ar4
      000251 D0 05            [24]  681 	pop	ar5
      000253 D0 06            [24]  682 	pop	ar6
      000255 D0 07            [24]  683 	pop	ar7
      000257 E5 82            [12]  684 	mov	a,dpl
      000259 24 FF            [12]  685 	add	a,#0xff
      00025B 92 00            [24]  686 	mov	_compute_ball_location_sloc1_1_0,c
      00025D 40 29            [24]  687 	jc	00112$
                                    688 ;	./src/main.c:111: ball_x_location_next = ball_x_boundary1 + (ball_x_boundary1 - ball_x_location_next + 1) ;
      00025F C0 04            [24]  689 	push	ar4
      000261 C0 05            [24]  690 	push	ar5
      000263 C0 06            [24]  691 	push	ar6
      000265 C0 07            [24]  692 	push	ar7
      000267 90 00 00         [24]  693 	mov	dptr,#0x0000
      00026A 75 F0 80         [24]  694 	mov	b,#0x80
      00026D 74 3F            [12]  695 	mov	a,#0x3f
      00026F 12 07 C3         [24]  696 	lcall	___fssub
      000272 AC 82            [24]  697 	mov	r4,dpl
      000274 AD 83            [24]  698 	mov	r5,dph
      000276 AE F0            [24]  699 	mov	r6,b
      000278 FF               [12]  700 	mov	r7,a
      000279 E5 81            [12]  701 	mov	a,sp
      00027B 24 FC            [12]  702 	add	a,#0xfc
      00027D F5 81            [12]  703 	mov	sp,a
                                    704 ;	./src/main.c:112: ball_vx_speed = -ball_vx_speed;
      00027F E5 24            [12]  705 	mov	a,(_ball_vx_speed + 3)
      000281 B2 E7            [12]  706 	cpl	acc.7
      000283 F5 24            [12]  707 	mov	(_ball_vx_speed + 3),a
      000285 02 03 07         [24]  708 	ljmp	00113$
      000288                        709 00112$:
                                    710 ;	./src/main.c:114: else if(ball_x_location_next >= ball_x_boundary2)					// If hit right boundary
      000288 C0 07            [24]  711 	push	ar7
      00028A C0 06            [24]  712 	push	ar6
      00028C C0 05            [24]  713 	push	ar5
      00028E C0 04            [24]  714 	push	ar4
      000290 E4               [12]  715 	clr	a
      000291 C0 E0            [24]  716 	push	acc
      000293 C0 E0            [24]  717 	push	acc
      000295 74 FC            [12]  718 	mov	a,#0xfc
      000297 C0 E0            [24]  719 	push	acc
      000299 74 42            [12]  720 	mov	a,#0x42
      00029B C0 E0            [24]  721 	push	acc
      00029D 8C 82            [24]  722 	mov	dpl,r4
      00029F 8D 83            [24]  723 	mov	dph,r5
      0002A1 8E F0            [24]  724 	mov	b,r6
      0002A3 EF               [12]  725 	mov	a,r7
      0002A4 12 07 CE         [24]  726 	lcall	___fslt
      0002A7 E5 81            [12]  727 	mov	a,sp
      0002A9 24 FC            [12]  728 	add	a,#0xfc
      0002AB F5 81            [12]  729 	mov	sp,a
      0002AD D0 04            [24]  730 	pop	ar4
      0002AF D0 05            [24]  731 	pop	ar5
      0002B1 D0 06            [24]  732 	pop	ar6
      0002B3 D0 07            [24]  733 	pop	ar7
      0002B5 E5 82            [12]  734 	mov	a,dpl
      0002B7 24 FF            [12]  735 	add	a,#0xff
      0002B9 92 00            [24]  736 	mov	_compute_ball_location_sloc1_1_0,c
      0002BB 40 4A            [24]  737 	jc	00113$
                                    738 ;	./src/main.c:116: ball_x_location_next = ball_x_boundary2 - (ball_x_location_next - ball_x_boundary2 + 1) ;
      0002BD E4               [12]  739 	clr	a
      0002BE C0 E0            [24]  740 	push	acc
      0002C0 C0 E0            [24]  741 	push	acc
      0002C2 74 FA            [12]  742 	mov	a,#0xfa
      0002C4 C0 E0            [24]  743 	push	acc
      0002C6 74 C2            [12]  744 	mov	a,#0xc2
      0002C8 C0 E0            [24]  745 	push	acc
      0002CA 8C 82            [24]  746 	mov	dpl,r4
      0002CC 8D 83            [24]  747 	mov	dph,r5
      0002CE 8E F0            [24]  748 	mov	b,r6
      0002D0 EF               [12]  749 	mov	a,r7
      0002D1 12 08 44         [24]  750 	lcall	___fsadd
      0002D4 A8 82            [24]  751 	mov	r0,dpl
      0002D6 A9 83            [24]  752 	mov	r1,dph
      0002D8 AA F0            [24]  753 	mov	r2,b
      0002DA FB               [12]  754 	mov	r3,a
      0002DB E5 81            [12]  755 	mov	a,sp
      0002DD 24 FC            [12]  756 	add	a,#0xfc
      0002DF F5 81            [12]  757 	mov	sp,a
      0002E1 C0 00            [24]  758 	push	ar0
      0002E3 C0 01            [24]  759 	push	ar1
      0002E5 C0 02            [24]  760 	push	ar2
      0002E7 C0 03            [24]  761 	push	ar3
      0002E9 90 00 00         [24]  762 	mov	dptr,#0x0000
      0002EC 75 F0 FC         [24]  763 	mov	b,#0xfc
      0002EF 74 42            [12]  764 	mov	a,#0x42
      0002F1 12 07 C3         [24]  765 	lcall	___fssub
      0002F4 AC 82            [24]  766 	mov	r4,dpl
      0002F6 AD 83            [24]  767 	mov	r5,dph
      0002F8 AE F0            [24]  768 	mov	r6,b
      0002FA FF               [12]  769 	mov	r7,a
      0002FB E5 81            [12]  770 	mov	a,sp
      0002FD 24 FC            [12]  771 	add	a,#0xfc
      0002FF F5 81            [12]  772 	mov	sp,a
                                    773 ;	./src/main.c:117: ball_vx_speed = -ball_vx_speed;
      000301 E5 24            [12]  774 	mov	a,(_ball_vx_speed + 3)
      000303 B2 E7            [12]  775 	cpl	acc.7
      000305 F5 24            [12]  776 	mov	(_ball_vx_speed + 3),a
      000307                        777 00113$:
                                    778 ;	./src/main.c:120: if(ball_y_location_next <= ball_y_boundary1)						// If hit top boundary
      000307 C0 07            [24]  779 	push	ar7
      000309 C0 06            [24]  780 	push	ar6
      00030B C0 05            [24]  781 	push	ar5
      00030D C0 04            [24]  782 	push	ar4
      00030F C0 31            [24]  783 	push	_compute_ball_location_ball_y_location_next_65536_32
      000311 C0 32            [24]  784 	push	(_compute_ball_location_ball_y_location_next_65536_32 + 1)
      000313 C0 33            [24]  785 	push	(_compute_ball_location_ball_y_location_next_65536_32 + 2)
      000315 C0 34            [24]  786 	push	(_compute_ball_location_ball_y_location_next_65536_32 + 3)
      000317 90 00 00         [24]  787 	mov	dptr,#(0x00&0x00ff)
      00031A E4               [12]  788 	clr	a
      00031B F5 F0            [12]  789 	mov	b,a
      00031D 12 07 CE         [24]  790 	lcall	___fslt
      000320 E5 81            [12]  791 	mov	a,sp
      000322 24 FC            [12]  792 	add	a,#0xfc
      000324 F5 81            [12]  793 	mov	sp,a
      000326 D0 04            [24]  794 	pop	ar4
      000328 D0 05            [24]  795 	pop	ar5
      00032A D0 06            [24]  796 	pop	ar6
      00032C D0 07            [24]  797 	pop	ar7
      00032E E5 82            [12]  798 	mov	a,dpl
      000330 24 FF            [12]  799 	add	a,#0xff
      000332 92 00            [24]  800 	mov	_compute_ball_location_sloc1_1_0,c
      000334 40 3D            [24]  801 	jc	00117$
                                    802 ;	./src/main.c:122: ball_y_location_next = ball_y_boundary1 + (ball_y_boundary1 - ball_y_location_next + 1) ;
      000336 C0 07            [24]  803 	push	ar7
      000338 C0 06            [24]  804 	push	ar6
      00033A C0 05            [24]  805 	push	ar5
      00033C C0 04            [24]  806 	push	ar4
      00033E C0 31            [24]  807 	push	_compute_ball_location_ball_y_location_next_65536_32
      000340 C0 32            [24]  808 	push	(_compute_ball_location_ball_y_location_next_65536_32 + 1)
      000342 C0 33            [24]  809 	push	(_compute_ball_location_ball_y_location_next_65536_32 + 2)
      000344 C0 34            [24]  810 	push	(_compute_ball_location_ball_y_location_next_65536_32 + 3)
      000346 90 00 00         [24]  811 	mov	dptr,#0x0000
      000349 75 F0 80         [24]  812 	mov	b,#0x80
      00034C 74 3F            [12]  813 	mov	a,#0x3f
      00034E 12 07 C3         [24]  814 	lcall	___fssub
      000351 85 82 31         [24]  815 	mov	_compute_ball_location_ball_y_location_next_65536_32,dpl
      000354 85 83 32         [24]  816 	mov	(_compute_ball_location_ball_y_location_next_65536_32 + 1),dph
      000357 85 F0 33         [24]  817 	mov	(_compute_ball_location_ball_y_location_next_65536_32 + 2),b
      00035A F5 34            [12]  818 	mov	(_compute_ball_location_ball_y_location_next_65536_32 + 3),a
      00035C E5 81            [12]  819 	mov	a,sp
      00035E 24 FC            [12]  820 	add	a,#0xfc
      000360 F5 81            [12]  821 	mov	sp,a
      000362 D0 04            [24]  822 	pop	ar4
      000364 D0 05            [24]  823 	pop	ar5
      000366 D0 06            [24]  824 	pop	ar6
      000368 D0 07            [24]  825 	pop	ar7
                                    826 ;	./src/main.c:123: ball_vy_speed = -ball_vy_speed;
      00036A E5 28            [12]  827 	mov	a,(_ball_vy_speed + 3)
      00036C B2 E7            [12]  828 	cpl	acc.7
      00036E F5 28            [12]  829 	mov	(_ball_vy_speed + 3),a
      000370 02 04 0E         [24]  830 	ljmp	00118$
      000373                        831 00117$:
                                    832 ;	./src/main.c:125: else if(ball_y_location_next >= ball_y_boundary2)					// If hit buttom boundary
      000373 C0 07            [24]  833 	push	ar7
      000375 C0 06            [24]  834 	push	ar6
      000377 C0 05            [24]  835 	push	ar5
      000379 C0 04            [24]  836 	push	ar4
      00037B E4               [12]  837 	clr	a
      00037C C0 E0            [24]  838 	push	acc
      00037E C0 E0            [24]  839 	push	acc
      000380 74 78            [12]  840 	mov	a,#0x78
      000382 C0 E0            [24]  841 	push	acc
      000384 74 42            [12]  842 	mov	a,#0x42
      000386 C0 E0            [24]  843 	push	acc
      000388 85 31 82         [24]  844 	mov	dpl,_compute_ball_location_ball_y_location_next_65536_32
      00038B 85 32 83         [24]  845 	mov	dph,(_compute_ball_location_ball_y_location_next_65536_32 + 1)
      00038E 85 33 F0         [24]  846 	mov	b,(_compute_ball_location_ball_y_location_next_65536_32 + 2)
      000391 E5 34            [12]  847 	mov	a,(_compute_ball_location_ball_y_location_next_65536_32 + 3)
      000393 12 07 CE         [24]  848 	lcall	___fslt
      000396 E5 81            [12]  849 	mov	a,sp
      000398 24 FC            [12]  850 	add	a,#0xfc
      00039A F5 81            [12]  851 	mov	sp,a
      00039C D0 04            [24]  852 	pop	ar4
      00039E D0 05            [24]  853 	pop	ar5
      0003A0 D0 06            [24]  854 	pop	ar6
      0003A2 D0 07            [24]  855 	pop	ar7
      0003A4 E5 82            [12]  856 	mov	a,dpl
      0003A6 24 FF            [12]  857 	add	a,#0xff
      0003A8 92 00            [24]  858 	mov	_compute_ball_location_sloc1_1_0,c
      0003AA 40 62            [24]  859 	jc	00118$
                                    860 ;	./src/main.c:127: ball_y_location_next = ball_y_boundary2 - (ball_y_location_next - ball_y_boundary2 + 1) ;
      0003AC C0 07            [24]  861 	push	ar7
      0003AE C0 06            [24]  862 	push	ar6
      0003B0 C0 05            [24]  863 	push	ar5
      0003B2 C0 04            [24]  864 	push	ar4
      0003B4 E4               [12]  865 	clr	a
      0003B5 C0 E0            [24]  866 	push	acc
      0003B7 C0 E0            [24]  867 	push	acc
      0003B9 74 74            [12]  868 	mov	a,#0x74
      0003BB C0 E0            [24]  869 	push	acc
      0003BD 74 C2            [12]  870 	mov	a,#0xc2
      0003BF C0 E0            [24]  871 	push	acc
      0003C1 85 31 82         [24]  872 	mov	dpl,_compute_ball_location_ball_y_location_next_65536_32
      0003C4 85 32 83         [24]  873 	mov	dph,(_compute_ball_location_ball_y_location_next_65536_32 + 1)
      0003C7 85 33 F0         [24]  874 	mov	b,(_compute_ball_location_ball_y_location_next_65536_32 + 2)
      0003CA E5 34            [12]  875 	mov	a,(_compute_ball_location_ball_y_location_next_65536_32 + 3)
      0003CC 12 08 44         [24]  876 	lcall	___fsadd
      0003CF A8 82            [24]  877 	mov	r0,dpl
      0003D1 A9 83            [24]  878 	mov	r1,dph
      0003D3 AA F0            [24]  879 	mov	r2,b
      0003D5 FB               [12]  880 	mov	r3,a
      0003D6 E5 81            [12]  881 	mov	a,sp
      0003D8 24 FC            [12]  882 	add	a,#0xfc
      0003DA F5 81            [12]  883 	mov	sp,a
      0003DC C0 00            [24]  884 	push	ar0
      0003DE C0 01            [24]  885 	push	ar1
      0003E0 C0 02            [24]  886 	push	ar2
      0003E2 C0 03            [24]  887 	push	ar3
      0003E4 90 00 00         [24]  888 	mov	dptr,#0x0000
      0003E7 75 F0 78         [24]  889 	mov	b,#0x78
      0003EA 74 42            [12]  890 	mov	a,#0x42
      0003EC 12 07 C3         [24]  891 	lcall	___fssub
      0003EF 85 82 31         [24]  892 	mov	_compute_ball_location_ball_y_location_next_65536_32,dpl
      0003F2 85 83 32         [24]  893 	mov	(_compute_ball_location_ball_y_location_next_65536_32 + 1),dph
      0003F5 85 F0 33         [24]  894 	mov	(_compute_ball_location_ball_y_location_next_65536_32 + 2),b
      0003F8 F5 34            [12]  895 	mov	(_compute_ball_location_ball_y_location_next_65536_32 + 3),a
      0003FA E5 81            [12]  896 	mov	a,sp
      0003FC 24 FC            [12]  897 	add	a,#0xfc
      0003FE F5 81            [12]  898 	mov	sp,a
      000400 D0 04            [24]  899 	pop	ar4
      000402 D0 05            [24]  900 	pop	ar5
      000404 D0 06            [24]  901 	pop	ar6
      000406 D0 07            [24]  902 	pop	ar7
                                    903 ;	./src/main.c:128: ball_vy_speed = -ball_vy_speed;
      000408 E5 28            [12]  904 	mov	a,(_ball_vy_speed + 3)
      00040A B2 E7            [12]  905 	cpl	acc.7
      00040C F5 28            [12]  906 	mov	(_ball_vy_speed + 3),a
      00040E                        907 00118$:
                                    908 ;	./src/main.c:131: ball_x_location_now = ball_x_location_next;							// Update current location
      00040E 8C 29            [24]  909 	mov	_ball_x_location_now,r4
      000410 8D 2A            [24]  910 	mov	(_ball_x_location_now + 1),r5
      000412 8E 2B            [24]  911 	mov	(_ball_x_location_now + 2),r6
      000414 8F 2C            [24]  912 	mov	(_ball_x_location_now + 3),r7
                                    913 ;	./src/main.c:132: ball_y_location_now = ball_y_location_next;							// Update current location
      000416 85 31 2D         [24]  914 	mov	_ball_y_location_now,_compute_ball_location_ball_y_location_next_65536_32
      000419 85 32 2E         [24]  915 	mov	(_ball_y_location_now + 1),(_compute_ball_location_ball_y_location_next_65536_32 + 1)
      00041C 85 33 2F         [24]  916 	mov	(_ball_y_location_now + 2),(_compute_ball_location_ball_y_location_next_65536_32 + 2)
      00041F 85 34 30         [24]  917 	mov	(_ball_y_location_now + 3),(_compute_ball_location_ball_y_location_next_65536_32 + 3)
                                    918 ;	./src/main.c:136: ball_x_location_int = ball_x_location_now;
      000422 85 29 82         [24]  919 	mov	dpl,_ball_x_location_now
      000425 85 2A 83         [24]  920 	mov	dph,(_ball_x_location_now + 1)
      000428 85 2B F0         [24]  921 	mov	b,(_ball_x_location_now + 2)
      00042B E5 2C            [12]  922 	mov	a,(_ball_x_location_now + 3)
      00042D 12 09 6B         [24]  923 	lcall	___fs2uchar
      000430 85 82 35         [24]  924 	mov	_compute_ball_location_ball_x_location_int_65536_32,dpl
                                    925 ;	./src/main.c:137: ball_y_location_int = ball_y_location_now;
      000433 85 2D 82         [24]  926 	mov	dpl,_ball_y_location_now
      000436 85 2E 83         [24]  927 	mov	dph,(_ball_y_location_now + 1)
      000439 85 2F F0         [24]  928 	mov	b,(_ball_y_location_now + 2)
      00043C E5 30            [12]  929 	mov	a,(_ball_y_location_now + 3)
      00043E 12 09 6B         [24]  930 	lcall	___fs2uchar
      000441 AE 82            [24]  931 	mov	r6,dpl
                                    932 ;	./src/main.c:139: for(ball_x_cnt = 0; ball_x_cnt < ball_x_size; ball_x_cnt ++)		// Draw ball from its left to right
      000443 75 36 00         [24]  933 	mov	_compute_ball_location_ball_x_cnt_65536_32,#0x00
      000446                        934 00140$:
                                    935 ;	./src/main.c:141: ball_oled_buf = 0x00;
      000446 7C 00            [12]  936 	mov	r4,#0x00
                                    937 ;	./src/main.c:142: ball_x_i = ball_x_location_int + ball_x_cnt;
      000448 E5 36            [12]  938 	mov	a,_compute_ball_location_ball_x_cnt_65536_32
      00044A 25 35            [12]  939 	add	a,_compute_ball_location_ball_x_location_int_65536_32
      00044C F5 37            [12]  940 	mov	_compute_ball_location_ball_x_i_65536_32,a
                                    941 ;	./src/main.c:144: ball_y_i_last = ball_y_location_int;
      00044E 8E 38            [24]  942 	mov	_compute_ball_location_ball_y_i_last_65536_32,r6
                                    943 ;	./src/main.c:147: if((ball_y_i / 8) == 0)
      000450 8E 00            [24]  944 	mov	ar0,r6
      000452 79 00            [12]  945 	mov	r1,#0x00
      000454 75 0C 08         [24]  946 	mov	__divsint_PARM_2,#0x08
                                    947 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000457 8C 0D            [24]  948 	mov	(__divsint_PARM_2 + 1),r4
      000459 88 82            [24]  949 	mov	dpl,r0
      00045B 89 83            [24]  950 	mov	dph,r1
      00045D C0 06            [24]  951 	push	ar6
      00045F C0 04            [24]  952 	push	ar4
      000461 12 09 73         [24]  953 	lcall	__divsint
      000464 A8 82            [24]  954 	mov	r0,dpl
      000466 A9 83            [24]  955 	mov	r1,dph
      000468 D0 04            [24]  956 	pop	ar4
      00046A D0 06            [24]  957 	pop	ar6
      00046C E8               [12]  958 	mov	a,r0
      00046D 49               [12]  959 	orl	a,r1
      00046E 70 04            [24]  960 	jnz	00122$
                                    961 ;	./src/main.c:148: ball_oled_buf = ball_oled_buf | 0x01;
      000470 7C 01            [12]  962 	mov	r4,#0x01
      000472 80 08            [24]  963 	sjmp	00159$
      000474                        964 00122$:
                                    965 ;	./src/main.c:149: else if((ball_y_i / 8) == 7)
      000474 B8 07 05         [24]  966 	cjne	r0,#0x07,00159$
      000477 B9 00 02         [24]  967 	cjne	r1,#0x00,00159$
                                    968 ;	./src/main.c:150: ball_oled_buf = ball_oled_buf | 0x80;
      00047A 7C 80            [12]  969 	mov	r4,#0x80
                                    970 ;	./src/main.c:152: for(ball_y_cnt = 0; ball_y_cnt < ball_y_size; ball_y_cnt ++)	// Draw ball from its top to buttom
      00047C                        971 00159$:
      00047C 79 00            [12]  972 	mov	r1,#0x00
      00047E                        973 00138$:
                                    974 ;	./src/main.c:154: ball_y_i = ball_y_location_int + ball_y_cnt;
      00047E E9               [12]  975 	mov	a,r1
      00047F 2E               [12]  976 	add	a,r6
      000480 F8               [12]  977 	mov	r0,a
                                    978 ;	./src/main.c:156: if((ball_y_i_last / 8) == (ball_y_i / 8))
      000481 AA 38            [24]  979 	mov	r2,_compute_ball_location_ball_y_i_last_65536_32
      000483 7F 00            [12]  980 	mov	r7,#0x00
      000485 75 0C 08         [24]  981 	mov	__divsint_PARM_2,#0x08
                                    982 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000488 8F 0D            [24]  983 	mov	(__divsint_PARM_2 + 1),r7
      00048A 8A 82            [24]  984 	mov	dpl,r2
      00048C 8F 83            [24]  985 	mov	dph,r7
      00048E C0 06            [24]  986 	push	ar6
      000490 C0 04            [24]  987 	push	ar4
      000492 C0 01            [24]  988 	push	ar1
      000494 C0 00            [24]  989 	push	ar0
      000496 12 09 73         [24]  990 	lcall	__divsint
      000499 AA 82            [24]  991 	mov	r2,dpl
      00049B AF 83            [24]  992 	mov	r7,dph
      00049D D0 00            [24]  993 	pop	ar0
      00049F D0 01            [24]  994 	pop	ar1
      0004A1 D0 04            [24]  995 	pop	ar4
      0004A3 D0 06            [24]  996 	pop	ar6
      0004A5 88 3A            [24]  997 	mov	_compute_ball_location_sloc2_1_0,r0
      0004A7 75 3B 00         [24]  998 	mov	(_compute_ball_location_sloc2_1_0 + 1),#0x00
      0004AA 75 0C 08         [24]  999 	mov	__divsint_PARM_2,#0x08
      0004AD 75 0D 00         [24] 1000 	mov	(__divsint_PARM_2 + 1),#0x00
      0004B0 85 3A 82         [24] 1001 	mov	dpl,_compute_ball_location_sloc2_1_0
      0004B3 85 3B 83         [24] 1002 	mov	dph,(_compute_ball_location_sloc2_1_0 + 1)
      0004B6 C0 07            [24] 1003 	push	ar7
      0004B8 C0 06            [24] 1004 	push	ar6
      0004BA C0 04            [24] 1005 	push	ar4
      0004BC C0 02            [24] 1006 	push	ar2
      0004BE C0 01            [24] 1007 	push	ar1
      0004C0 C0 00            [24] 1008 	push	ar0
      0004C2 12 09 73         [24] 1009 	lcall	__divsint
      0004C5 AB 82            [24] 1010 	mov	r3,dpl
      0004C7 AD 83            [24] 1011 	mov	r5,dph
      0004C9 D0 00            [24] 1012 	pop	ar0
      0004CB D0 01            [24] 1013 	pop	ar1
      0004CD D0 02            [24] 1014 	pop	ar2
      0004CF D0 04            [24] 1015 	pop	ar4
      0004D1 D0 06            [24] 1016 	pop	ar6
      0004D3 D0 07            [24] 1017 	pop	ar7
      0004D5 EA               [12] 1018 	mov	a,r2
      0004D6 B5 03 1D         [24] 1019 	cjne	a,ar3,00125$
      0004D9 EF               [12] 1020 	mov	a,r7
      0004DA B5 05 19         [24] 1021 	cjne	a,ar5,00125$
                                   1022 ;	./src/main.c:157: ball_oled_buf = ball_oled_buf | (0x01 << (ball_y_i % 8));
      0004DD 74 07            [12] 1023 	mov	a,#0x07
      0004DF 55 3A            [12] 1024 	anl	a,_compute_ball_location_sloc2_1_0
      0004E1 FD               [12] 1025 	mov	r5,a
      0004E2 7F 00            [12] 1026 	mov	r7,#0x00
      0004E4 8D F0            [24] 1027 	mov	b,r5
      0004E6 05 F0            [12] 1028 	inc	b
      0004E8 74 01            [12] 1029 	mov	a,#0x01
      0004EA 80 02            [24] 1030 	sjmp	00256$
      0004EC                       1031 00254$:
      0004EC 25 E0            [12] 1032 	add	a,acc
      0004EE                       1033 00256$:
      0004EE D5 F0 FB         [24] 1034 	djnz	b,00254$
      0004F1 FD               [12] 1035 	mov	r5,a
      0004F2 42 04            [12] 1036 	orl	ar4,a
      0004F4 80 15            [24] 1037 	sjmp	00126$
      0004F6                       1038 00125$:
                                   1039 ;	./src/main.c:159: ball_oled_buf = (0x01 << (ball_y_i % 8));
      0004F6 74 07            [12] 1040 	mov	a,#0x07
      0004F8 55 3A            [12] 1041 	anl	a,_compute_ball_location_sloc2_1_0
      0004FA FD               [12] 1042 	mov	r5,a
      0004FB 7F 00            [12] 1043 	mov	r7,#0x00
      0004FD 8D F0            [24] 1044 	mov	b,r5
      0004FF 05 F0            [12] 1045 	inc	b
      000501 74 01            [12] 1046 	mov	a,#0x01
      000503 80 02            [24] 1047 	sjmp	00259$
      000505                       1048 00257$:
      000505 25 E0            [12] 1049 	add	a,acc
      000507                       1050 00259$:
      000507 D5 F0 FB         [24] 1051 	djnz	b,00257$
      00050A FC               [12] 1052 	mov	r4,a
      00050B                       1053 00126$:
                                   1054 ;	./src/main.c:161: ball_y_i_last = ball_y_i;
      00050B 88 38            [24] 1055 	mov	_compute_ball_location_ball_y_i_last_65536_32,r0
                                   1056 ;	./src/main.c:163: if((ball_y_i / 8) == 0)
      00050D 7F 00            [12] 1057 	mov	r7,#0x00
      00050F 75 0C 08         [24] 1058 	mov	__divsint_PARM_2,#0x08
                                   1059 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000512 8F 0D            [24] 1060 	mov	(__divsint_PARM_2 + 1),r7
      000514 88 82            [24] 1061 	mov	dpl,r0
      000516 8F 83            [24] 1062 	mov	dph,r7
      000518 C0 06            [24] 1063 	push	ar6
      00051A C0 04            [24] 1064 	push	ar4
      00051C C0 01            [24] 1065 	push	ar1
      00051E 12 09 73         [24] 1066 	lcall	__divsint
      000521 AD 82            [24] 1067 	mov	r5,dpl
      000523 AF 83            [24] 1068 	mov	r7,dph
      000525 D0 01            [24] 1069 	pop	ar1
      000527 D0 04            [24] 1070 	pop	ar4
      000529 D0 06            [24] 1071 	pop	ar6
      00052B ED               [12] 1072 	mov	a,r5
      00052C 4F               [12] 1073 	orl	a,r7
      00052D 70 05            [24] 1074 	jnz	00130$
                                   1075 ;	./src/main.c:164: ball_oled_buf = ball_oled_buf | 0x01;
      00052F 43 04 01         [24] 1076 	orl	ar4,#0x01
      000532 80 09            [24] 1077 	sjmp	00131$
      000534                       1078 00130$:
                                   1079 ;	./src/main.c:165: else if((ball_y_i / 8) == 7)
      000534 BD 07 06         [24] 1080 	cjne	r5,#0x07,00131$
      000537 BF 00 03         [24] 1081 	cjne	r7,#0x00,00131$
                                   1082 ;	./src/main.c:166: ball_oled_buf = ball_oled_buf | 0x80;	
      00053A 43 04 80         [24] 1083 	orl	ar4,#0x80
      00053D                       1084 00131$:
                                   1085 ;	./src/main.c:168: OLED_SetCursor(ball_y_i / 8, ball_x_i);
      00053D 8D 82            [24] 1086 	mov	dpl,r5
      00053F 85 37 0B         [24] 1087 	mov	_OLED_SetCursor_PARM_2,_compute_ball_location_ball_x_i_65536_32
      000542 C0 06            [24] 1088 	push	ar6
      000544 C0 04            [24] 1089 	push	ar4
      000546 C0 01            [24] 1090 	push	ar1
      000548 12 07 7B         [24] 1091 	lcall	_OLED_SetCursor
      00054B D0 01            [24] 1092 	pop	ar1
      00054D D0 04            [24] 1093 	pop	ar4
                                   1094 ;	./src/main.c:169: oledSendData(ball_oled_buf);
      00054F 8C 82            [24] 1095 	mov	dpl,r4
      000551 C0 04            [24] 1096 	push	ar4
      000553 C0 01            [24] 1097 	push	ar1
      000555 12 07 B7         [24] 1098 	lcall	_oledSendData
      000558 D0 01            [24] 1099 	pop	ar1
      00055A D0 04            [24] 1100 	pop	ar4
      00055C D0 06            [24] 1101 	pop	ar6
                                   1102 ;	./src/main.c:152: for(ball_y_cnt = 0; ball_y_cnt < ball_y_size; ball_y_cnt ++)	// Draw ball from its top to buttom
      00055E 09               [12] 1103 	inc	r1
      00055F B9 02 00         [24] 1104 	cjne	r1,#0x02,00263$
      000562                       1105 00263$:
      000562 50 03            [24] 1106 	jnc	00264$
      000564 02 04 7E         [24] 1107 	ljmp	00138$
      000567                       1108 00264$:
                                   1109 ;	./src/main.c:139: for(ball_x_cnt = 0; ball_x_cnt < ball_x_size; ball_x_cnt ++)		// Draw ball from its left to right
      000567 05 36            [12] 1110 	inc	_compute_ball_location_ball_x_cnt_65536_32
      000569 74 FE            [12] 1111 	mov	a,#0x100 - 0x02
      00056B 25 36            [12] 1112 	add	a,_compute_ball_location_ball_x_cnt_65536_32
      00056D 40 03            [24] 1113 	jc	00265$
      00056F 02 04 46         [24] 1114 	ljmp	00140$
      000572                       1115 00265$:
                                   1116 ;	./src/main.c:172: }
      000572 22               [24] 1117 	ret
                                   1118 	.area CSEG    (CODE)
                                   1119 	.area CONST   (CODE)
                                   1120 	.area XINIT   (CODE)
                                   1121 	.area CABS    (ABS,CODE)
