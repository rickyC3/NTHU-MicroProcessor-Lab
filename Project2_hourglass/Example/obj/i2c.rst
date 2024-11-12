                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.2 #14374 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module i2c
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CY
                                     12 	.globl _AC
                                     13 	.globl _F0
                                     14 	.globl _RS1
                                     15 	.globl _RS0
                                     16 	.globl _OV
                                     17 	.globl _F1
                                     18 	.globl _P
                                     19 	.globl _PS
                                     20 	.globl _PT1
                                     21 	.globl _PX1
                                     22 	.globl _PT0
                                     23 	.globl _PX0
                                     24 	.globl _RD
                                     25 	.globl _WR
                                     26 	.globl _T1
                                     27 	.globl _T0
                                     28 	.globl _INT1
                                     29 	.globl _INT0
                                     30 	.globl _TXD
                                     31 	.globl _RXD
                                     32 	.globl _P3_7
                                     33 	.globl _P3_6
                                     34 	.globl _P3_5
                                     35 	.globl _P3_4
                                     36 	.globl _P3_3
                                     37 	.globl _P3_2
                                     38 	.globl _P3_1
                                     39 	.globl _P3_0
                                     40 	.globl _EA
                                     41 	.globl _ES
                                     42 	.globl _ET1
                                     43 	.globl _EX1
                                     44 	.globl _ET0
                                     45 	.globl _EX0
                                     46 	.globl _P2_7
                                     47 	.globl _P2_6
                                     48 	.globl _P2_5
                                     49 	.globl _P2_4
                                     50 	.globl _P2_3
                                     51 	.globl _P2_2
                                     52 	.globl _P2_1
                                     53 	.globl _P2_0
                                     54 	.globl _SM0
                                     55 	.globl _SM1
                                     56 	.globl _SM2
                                     57 	.globl _REN
                                     58 	.globl _TB8
                                     59 	.globl _RB8
                                     60 	.globl _TI
                                     61 	.globl _RI
                                     62 	.globl _P1_7
                                     63 	.globl _P1_6
                                     64 	.globl _P1_5
                                     65 	.globl _P1_4
                                     66 	.globl _P1_3
                                     67 	.globl _P1_2
                                     68 	.globl _P1_1
                                     69 	.globl _P1_0
                                     70 	.globl _TF1
                                     71 	.globl _TR1
                                     72 	.globl _TF0
                                     73 	.globl _TR0
                                     74 	.globl _IE1
                                     75 	.globl _IT1
                                     76 	.globl _IE0
                                     77 	.globl _IT0
                                     78 	.globl _P0_7
                                     79 	.globl _P0_6
                                     80 	.globl _P0_5
                                     81 	.globl _P0_4
                                     82 	.globl _P0_3
                                     83 	.globl _P0_2
                                     84 	.globl _P0_1
                                     85 	.globl _P0_0
                                     86 	.globl _B
                                     87 	.globl _ACC
                                     88 	.globl _PSW
                                     89 	.globl _IP
                                     90 	.globl _P3
                                     91 	.globl _IE
                                     92 	.globl _P2
                                     93 	.globl _SBUF
                                     94 	.globl _SCON
                                     95 	.globl _P1
                                     96 	.globl _TH1
                                     97 	.globl _TH0
                                     98 	.globl _TL1
                                     99 	.globl _TL0
                                    100 	.globl _TMOD
                                    101 	.globl _TCON
                                    102 	.globl _PCON
                                    103 	.globl _DPH
                                    104 	.globl _DPL
                                    105 	.globl _SP
                                    106 	.globl _P0
                                    107 	.globl _I2C_SendACK_PARM_1
                                    108 	.globl _Single_ReadI2C_PARM_2
                                    109 	.globl _Single_WriteI2C_PARM_3
                                    110 	.globl _Single_WriteI2C_PARM_2
                                    111 	.globl _I2C_Start
                                    112 	.globl _I2C_Stop
                                    113 	.globl _I2C_SendACK
                                    114 	.globl _I2C_RecvACK
                                    115 	.globl _I2C_SendByte
                                    116 	.globl _I2C_RecvByte
                                    117 	.globl _Single_WriteI2C
                                    118 	.globl _Single_ReadI2C
                                    119 ;--------------------------------------------------------
                                    120 ; special function registers
                                    121 ;--------------------------------------------------------
                                    122 	.area RSEG    (ABS,DATA)
      000000                        123 	.org 0x0000
                           000080   124 _P0	=	0x0080
                           000081   125 _SP	=	0x0081
                           000082   126 _DPL	=	0x0082
                           000083   127 _DPH	=	0x0083
                           000087   128 _PCON	=	0x0087
                           000088   129 _TCON	=	0x0088
                           000089   130 _TMOD	=	0x0089
                           00008A   131 _TL0	=	0x008a
                           00008B   132 _TL1	=	0x008b
                           00008C   133 _TH0	=	0x008c
                           00008D   134 _TH1	=	0x008d
                           000090   135 _P1	=	0x0090
                           000098   136 _SCON	=	0x0098
                           000099   137 _SBUF	=	0x0099
                           0000A0   138 _P2	=	0x00a0
                           0000A8   139 _IE	=	0x00a8
                           0000B0   140 _P3	=	0x00b0
                           0000B8   141 _IP	=	0x00b8
                           0000D0   142 _PSW	=	0x00d0
                           0000E0   143 _ACC	=	0x00e0
                           0000F0   144 _B	=	0x00f0
                                    145 ;--------------------------------------------------------
                                    146 ; special function bits
                                    147 ;--------------------------------------------------------
                                    148 	.area RSEG    (ABS,DATA)
      000000                        149 	.org 0x0000
                           000080   150 _P0_0	=	0x0080
                           000081   151 _P0_1	=	0x0081
                           000082   152 _P0_2	=	0x0082
                           000083   153 _P0_3	=	0x0083
                           000084   154 _P0_4	=	0x0084
                           000085   155 _P0_5	=	0x0085
                           000086   156 _P0_6	=	0x0086
                           000087   157 _P0_7	=	0x0087
                           000088   158 _IT0	=	0x0088
                           000089   159 _IE0	=	0x0089
                           00008A   160 _IT1	=	0x008a
                           00008B   161 _IE1	=	0x008b
                           00008C   162 _TR0	=	0x008c
                           00008D   163 _TF0	=	0x008d
                           00008E   164 _TR1	=	0x008e
                           00008F   165 _TF1	=	0x008f
                           000090   166 _P1_0	=	0x0090
                           000091   167 _P1_1	=	0x0091
                           000092   168 _P1_2	=	0x0092
                           000093   169 _P1_3	=	0x0093
                           000094   170 _P1_4	=	0x0094
                           000095   171 _P1_5	=	0x0095
                           000096   172 _P1_6	=	0x0096
                           000097   173 _P1_7	=	0x0097
                           000098   174 _RI	=	0x0098
                           000099   175 _TI	=	0x0099
                           00009A   176 _RB8	=	0x009a
                           00009B   177 _TB8	=	0x009b
                           00009C   178 _REN	=	0x009c
                           00009D   179 _SM2	=	0x009d
                           00009E   180 _SM1	=	0x009e
                           00009F   181 _SM0	=	0x009f
                           0000A0   182 _P2_0	=	0x00a0
                           0000A1   183 _P2_1	=	0x00a1
                           0000A2   184 _P2_2	=	0x00a2
                           0000A3   185 _P2_3	=	0x00a3
                           0000A4   186 _P2_4	=	0x00a4
                           0000A5   187 _P2_5	=	0x00a5
                           0000A6   188 _P2_6	=	0x00a6
                           0000A7   189 _P2_7	=	0x00a7
                           0000A8   190 _EX0	=	0x00a8
                           0000A9   191 _ET0	=	0x00a9
                           0000AA   192 _EX1	=	0x00aa
                           0000AB   193 _ET1	=	0x00ab
                           0000AC   194 _ES	=	0x00ac
                           0000AF   195 _EA	=	0x00af
                           0000B0   196 _P3_0	=	0x00b0
                           0000B1   197 _P3_1	=	0x00b1
                           0000B2   198 _P3_2	=	0x00b2
                           0000B3   199 _P3_3	=	0x00b3
                           0000B4   200 _P3_4	=	0x00b4
                           0000B5   201 _P3_5	=	0x00b5
                           0000B6   202 _P3_6	=	0x00b6
                           0000B7   203 _P3_7	=	0x00b7
                           0000B0   204 _RXD	=	0x00b0
                           0000B1   205 _TXD	=	0x00b1
                           0000B2   206 _INT0	=	0x00b2
                           0000B3   207 _INT1	=	0x00b3
                           0000B4   208 _T0	=	0x00b4
                           0000B5   209 _T1	=	0x00b5
                           0000B6   210 _WR	=	0x00b6
                           0000B7   211 _RD	=	0x00b7
                           0000B8   212 _PX0	=	0x00b8
                           0000B9   213 _PT0	=	0x00b9
                           0000BA   214 _PX1	=	0x00ba
                           0000BB   215 _PT1	=	0x00bb
                           0000BC   216 _PS	=	0x00bc
                           0000D0   217 _P	=	0x00d0
                           0000D1   218 _F1	=	0x00d1
                           0000D2   219 _OV	=	0x00d2
                           0000D3   220 _RS0	=	0x00d3
                           0000D4   221 _RS1	=	0x00d4
                           0000D5   222 _F0	=	0x00d5
                           0000D6   223 _AC	=	0x00d6
                           0000D7   224 _CY	=	0x00d7
                                    225 ;--------------------------------------------------------
                                    226 ; overlayable register banks
                                    227 ;--------------------------------------------------------
                                    228 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        229 	.ds 8
                                    230 ;--------------------------------------------------------
                                    231 ; internal ram data
                                    232 ;--------------------------------------------------------
                                    233 	.area DSEG    (DATA)
      000008                        234 _Single_WriteI2C_PARM_2:
      000008                        235 	.ds 1
      000009                        236 _Single_WriteI2C_PARM_3:
      000009                        237 	.ds 1
      00000A                        238 _Single_ReadI2C_PARM_2:
      00000A                        239 	.ds 1
                                    240 ;--------------------------------------------------------
                                    241 ; overlayable items in internal ram
                                    242 ;--------------------------------------------------------
                                    243 	.area	OSEG    (OVR,DATA)
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
      000000                        257 _I2C_SendACK_PARM_1:
      000000                        258 	.ds 1
                                    259 ;--------------------------------------------------------
                                    260 ; paged external ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area PSEG    (PAG,XDATA)
                                    263 ;--------------------------------------------------------
                                    264 ; uninitialized external ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area XSEG    (XDATA)
                                    267 ;--------------------------------------------------------
                                    268 ; absolute external ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area XABS    (ABS,XDATA)
                                    271 ;--------------------------------------------------------
                                    272 ; initialized external ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area XISEG   (XDATA)
                                    275 	.area HOME    (CODE)
                                    276 	.area GSINIT0 (CODE)
                                    277 	.area GSINIT1 (CODE)
                                    278 	.area GSINIT2 (CODE)
                                    279 	.area GSINIT3 (CODE)
                                    280 	.area GSINIT4 (CODE)
                                    281 	.area GSINIT5 (CODE)
                                    282 	.area GSINIT  (CODE)
                                    283 	.area GSFINAL (CODE)
                                    284 	.area CSEG    (CODE)
                                    285 ;--------------------------------------------------------
                                    286 ; global & static initialisations
                                    287 ;--------------------------------------------------------
                                    288 	.area HOME    (CODE)
                                    289 	.area GSINIT  (CODE)
                                    290 	.area GSFINAL (CODE)
                                    291 	.area GSINIT  (CODE)
                                    292 ;--------------------------------------------------------
                                    293 ; Home
                                    294 ;--------------------------------------------------------
                                    295 	.area HOME    (CODE)
                                    296 	.area HOME    (CODE)
                                    297 ;--------------------------------------------------------
                                    298 ; code
                                    299 ;--------------------------------------------------------
                                    300 	.area CSEG    (CODE)
                                    301 ;------------------------------------------------------------
                                    302 ;Allocation info for local variables in function 'I2C_Start'
                                    303 ;------------------------------------------------------------
                                    304 ;	./src/i2c.c:19: void I2C_Start(void)
                                    305 ;	-----------------------------------------
                                    306 ;	 function I2C_Start
                                    307 ;	-----------------------------------------
      000449                        308 _I2C_Start:
                           000007   309 	ar7 = 0x07
                           000006   310 	ar6 = 0x06
                           000005   311 	ar5 = 0x05
                           000004   312 	ar4 = 0x04
                           000003   313 	ar3 = 0x03
                           000002   314 	ar2 = 0x02
                           000001   315 	ar1 = 0x01
                           000000   316 	ar0 = 0x00
                                    317 ;	./src/i2c.c:21: SDA = 1;
                                    318 ;	assignBit
      000449 D2 81            [12]  319 	setb	_P0_1
                                    320 ;	./src/i2c.c:22: SCL = 1;
                                    321 ;	assignBit
      00044B D2 80            [12]  322 	setb	_P0_0
                                    323 ;	./src/i2c.c:24: SDA = 0;
                                    324 ;	assignBit
      00044D C2 81            [12]  325 	clr	_P0_1
                                    326 ;	./src/i2c.c:26: SCL = 0;
                                    327 ;	assignBit
      00044F C2 80            [12]  328 	clr	_P0_0
                                    329 ;	./src/i2c.c:27: }
      000451 22               [24]  330 	ret
                                    331 ;------------------------------------------------------------
                                    332 ;Allocation info for local variables in function 'I2C_Stop'
                                    333 ;------------------------------------------------------------
                                    334 ;	./src/i2c.c:30: void I2C_Stop(void)
                                    335 ;	-----------------------------------------
                                    336 ;	 function I2C_Stop
                                    337 ;	-----------------------------------------
      000452                        338 _I2C_Stop:
                                    339 ;	./src/i2c.c:32: SDA = 0;
                                    340 ;	assignBit
      000452 C2 81            [12]  341 	clr	_P0_1
                                    342 ;	./src/i2c.c:33: SCL = 1;
                                    343 ;	assignBit
      000454 D2 80            [12]  344 	setb	_P0_0
                                    345 ;	./src/i2c.c:35: SDA = 1;
                                    346 ;	assignBit
      000456 D2 81            [12]  347 	setb	_P0_1
                                    348 ;	./src/i2c.c:37: }
      000458 22               [24]  349 	ret
                                    350 ;------------------------------------------------------------
                                    351 ;Allocation info for local variables in function 'I2C_SendACK'
                                    352 ;------------------------------------------------------------
                                    353 ;	./src/i2c.c:40: void I2C_SendACK(__bit ack)
                                    354 ;	-----------------------------------------
                                    355 ;	 function I2C_SendACK
                                    356 ;	-----------------------------------------
      000459                        357 _I2C_SendACK:
                                    358 ;	./src/i2c.c:42: SDA = ack;
                                    359 ;	assignBit
      000459 A2 00            [12]  360 	mov	c,_I2C_SendACK_PARM_1
      00045B 92 81            [24]  361 	mov	_P0_1,c
                                    362 ;	./src/i2c.c:43: SCL = 1;
                                    363 ;	assignBit
      00045D D2 80            [12]  364 	setb	_P0_0
                                    365 ;	./src/i2c.c:45: SCL = 0;
                                    366 ;	assignBit
      00045F C2 80            [12]  367 	clr	_P0_0
                                    368 ;	./src/i2c.c:47: }
      000461 22               [24]  369 	ret
                                    370 ;------------------------------------------------------------
                                    371 ;Allocation info for local variables in function 'I2C_RecvACK'
                                    372 ;------------------------------------------------------------
                                    373 ;	./src/i2c.c:50: __bit I2C_RecvACK(void)
                                    374 ;	-----------------------------------------
                                    375 ;	 function I2C_RecvACK
                                    376 ;	-----------------------------------------
      000462                        377 _I2C_RecvACK:
                                    378 ;	./src/i2c.c:52: SCL = 1;
                                    379 ;	assignBit
      000462 D2 80            [12]  380 	setb	_P0_0
                                    381 ;	./src/i2c.c:54: CY = SDA;
                                    382 ;	assignBit
      000464 A2 81            [12]  383 	mov	c,_P0_1
      000466 92 D7            [24]  384 	mov	_CY,c
                                    385 ;	./src/i2c.c:55: SCL = 0;
                                    386 ;	assignBit
      000468 C2 80            [12]  387 	clr	_P0_0
                                    388 ;	./src/i2c.c:57: return CY;
      00046A A2 D7            [12]  389 	mov	c,_CY
                                    390 ;	./src/i2c.c:58: }
      00046C 22               [24]  391 	ret
                                    392 ;------------------------------------------------------------
                                    393 ;Allocation info for local variables in function 'I2C_SendByte'
                                    394 ;------------------------------------------------------------
                                    395 ;dat                       Allocated to registers r7 
                                    396 ;i                         Allocated to registers r6 
                                    397 ;------------------------------------------------------------
                                    398 ;	./src/i2c.c:61: void I2C_SendByte(uint8_t dat)
                                    399 ;	-----------------------------------------
                                    400 ;	 function I2C_SendByte
                                    401 ;	-----------------------------------------
      00046D                        402 _I2C_SendByte:
      00046D AF 82            [24]  403 	mov	r7,dpl
                                    404 ;	./src/i2c.c:64: for (i=0; i<8; i++)
      00046F 7E 00            [12]  405 	mov	r6,#0x00
      000471                        406 00102$:
                                    407 ;	./src/i2c.c:66: dat <<= 1;
      000471 8F 05            [24]  408 	mov	ar5,r7
      000473 ED               [12]  409 	mov	a,r5
      000474 2D               [12]  410 	add	a,r5
      000475 FF               [12]  411 	mov	r7,a
                                    412 ;	./src/i2c.c:67: SDA = CY;
                                    413 ;	assignBit
      000476 A2 D7            [12]  414 	mov	c,_CY
      000478 92 81            [24]  415 	mov	_P0_1,c
                                    416 ;	./src/i2c.c:68: SCL = 1;
                                    417 ;	assignBit
      00047A D2 80            [12]  418 	setb	_P0_0
                                    419 ;	./src/i2c.c:70: SCL = 0;
                                    420 ;	assignBit
      00047C C2 80            [12]  421 	clr	_P0_0
                                    422 ;	./src/i2c.c:64: for (i=0; i<8; i++)
      00047E 0E               [12]  423 	inc	r6
      00047F BE 08 00         [24]  424 	cjne	r6,#0x08,00119$
      000482                        425 00119$:
      000482 40 ED            [24]  426 	jc	00102$
                                    427 ;	./src/i2c.c:73: I2C_RecvACK();
                                    428 ;	./src/i2c.c:74: }
      000484 02 04 62         [24]  429 	ljmp	_I2C_RecvACK
                                    430 ;------------------------------------------------------------
                                    431 ;Allocation info for local variables in function 'I2C_RecvByte'
                                    432 ;------------------------------------------------------------
                                    433 ;i                         Allocated to registers r6 
                                    434 ;dat                       Allocated to registers r5 
                                    435 ;------------------------------------------------------------
                                    436 ;	./src/i2c.c:77: uint8_t I2C_RecvByte(void)
                                    437 ;	-----------------------------------------
                                    438 ;	 function I2C_RecvByte
                                    439 ;	-----------------------------------------
      000487                        440 _I2C_RecvByte:
                                    441 ;	./src/i2c.c:80: uint8_t dat = 0;
      000487 7F 00            [12]  442 	mov	r7,#0x00
                                    443 ;	./src/i2c.c:81: SDA = 1;
                                    444 ;	assignBit
      000489 D2 81            [12]  445 	setb	_P0_1
                                    446 ;	./src/i2c.c:82: for (i=0; i<8; i++)
      00048B 7E 00            [12]  447 	mov	r6,#0x00
      00048D                        448 00102$:
                                    449 ;	./src/i2c.c:84: dat <<= 1;
      00048D 8F 05            [24]  450 	mov	ar5,r7
      00048F ED               [12]  451 	mov	a,r5
      000490 2D               [12]  452 	add	a,r5
      000491 FD               [12]  453 	mov	r5,a
                                    454 ;	./src/i2c.c:85: SCL = 1;
                                    455 ;	assignBit
      000492 D2 80            [12]  456 	setb	_P0_0
                                    457 ;	./src/i2c.c:87: dat |= SDA;             
      000494 A2 81            [12]  458 	mov	c,_P0_1
      000496 E4               [12]  459 	clr	a
      000497 33               [12]  460 	rlc	a
      000498 4D               [12]  461 	orl	a,r5
      000499 FF               [12]  462 	mov	r7,a
                                    463 ;	./src/i2c.c:88: SCL = 0;
                                    464 ;	assignBit
      00049A C2 80            [12]  465 	clr	_P0_0
                                    466 ;	./src/i2c.c:82: for (i=0; i<8; i++)
      00049C 0E               [12]  467 	inc	r6
      00049D BE 08 00         [24]  468 	cjne	r6,#0x08,00121$
      0004A0                        469 00121$:
      0004A0 40 EB            [24]  470 	jc	00102$
                                    471 ;	./src/i2c.c:91: return dat;
      0004A2 8F 82            [24]  472 	mov	dpl,r7
                                    473 ;	./src/i2c.c:92: }
      0004A4 22               [24]  474 	ret
                                    475 ;------------------------------------------------------------
                                    476 ;Allocation info for local variables in function 'Single_WriteI2C'
                                    477 ;------------------------------------------------------------
                                    478 ;REG_Address               Allocated with name '_Single_WriteI2C_PARM_2'
                                    479 ;REG_data                  Allocated with name '_Single_WriteI2C_PARM_3'
                                    480 ;SlaveAddress              Allocated to registers r7 
                                    481 ;------------------------------------------------------------
                                    482 ;	./src/i2c.c:95: void Single_WriteI2C(uint8_t SlaveAddress, uint8_t REG_Address,uint8_t REG_data)
                                    483 ;	-----------------------------------------
                                    484 ;	 function Single_WriteI2C
                                    485 ;	-----------------------------------------
      0004A5                        486 _Single_WriteI2C:
      0004A5 AF 82            [24]  487 	mov	r7,dpl
                                    488 ;	./src/i2c.c:97: I2C_Start();
      0004A7 C0 07            [24]  489 	push	ar7
      0004A9 12 04 49         [24]  490 	lcall	_I2C_Start
      0004AC D0 07            [24]  491 	pop	ar7
                                    492 ;	./src/i2c.c:98: I2C_SendByte(SlaveAddress);
      0004AE 8F 82            [24]  493 	mov	dpl,r7
      0004B0 12 04 6D         [24]  494 	lcall	_I2C_SendByte
                                    495 ;	./src/i2c.c:99: I2C_SendByte(REG_Address);
      0004B3 85 08 82         [24]  496 	mov	dpl,_Single_WriteI2C_PARM_2
      0004B6 12 04 6D         [24]  497 	lcall	_I2C_SendByte
                                    498 ;	./src/i2c.c:100: I2C_SendByte(REG_data);
      0004B9 85 09 82         [24]  499 	mov	dpl,_Single_WriteI2C_PARM_3
      0004BC 12 04 6D         [24]  500 	lcall	_I2C_SendByte
                                    501 ;	./src/i2c.c:101: I2C_Stop();
                                    502 ;	./src/i2c.c:102: }
      0004BF 02 04 52         [24]  503 	ljmp	_I2C_Stop
                                    504 ;------------------------------------------------------------
                                    505 ;Allocation info for local variables in function 'Single_ReadI2C'
                                    506 ;------------------------------------------------------------
                                    507 ;REG_Address               Allocated with name '_Single_ReadI2C_PARM_2'
                                    508 ;SlaveAddress              Allocated to registers r7 
                                    509 ;REG_data                  Allocated to registers r7 
                                    510 ;------------------------------------------------------------
                                    511 ;	./src/i2c.c:105: uint8_t Single_ReadI2C(uint8_t SlaveAddress, uint8_t REG_Address)
                                    512 ;	-----------------------------------------
                                    513 ;	 function Single_ReadI2C
                                    514 ;	-----------------------------------------
      0004C2                        515 _Single_ReadI2C:
      0004C2 AF 82            [24]  516 	mov	r7,dpl
                                    517 ;	./src/i2c.c:108: I2C_Start();
      0004C4 C0 07            [24]  518 	push	ar7
      0004C6 12 04 49         [24]  519 	lcall	_I2C_Start
      0004C9 D0 07            [24]  520 	pop	ar7
                                    521 ;	./src/i2c.c:109: I2C_SendByte(SlaveAddress);
      0004CB 8F 82            [24]  522 	mov	dpl,r7
      0004CD C0 07            [24]  523 	push	ar7
      0004CF 12 04 6D         [24]  524 	lcall	_I2C_SendByte
                                    525 ;	./src/i2c.c:110: I2C_SendByte(REG_Address);
      0004D2 85 0A 82         [24]  526 	mov	dpl,_Single_ReadI2C_PARM_2
      0004D5 12 04 6D         [24]  527 	lcall	_I2C_SendByte
                                    528 ;	./src/i2c.c:111: I2C_Stop();
      0004D8 12 04 52         [24]  529 	lcall	_I2C_Stop
                                    530 ;	./src/i2c.c:113: I2C_Start();
      0004DB 12 04 49         [24]  531 	lcall	_I2C_Start
      0004DE D0 07            [24]  532 	pop	ar7
                                    533 ;	./src/i2c.c:114: I2C_SendByte(SlaveAddress|0x01);  // R/W#: 1 means read mode
      0004E0 74 01            [12]  534 	mov	a,#0x01
      0004E2 4F               [12]  535 	orl	a,r7
      0004E3 F5 82            [12]  536 	mov	dpl,a
      0004E5 12 04 6D         [24]  537 	lcall	_I2C_SendByte
                                    538 ;	./src/i2c.c:115: REG_data=I2C_RecvByte();
      0004E8 12 04 87         [24]  539 	lcall	_I2C_RecvByte
      0004EB AF 82            [24]  540 	mov	r7,dpl
                                    541 ;	./src/i2c.c:116: I2C_SendACK(1);
                                    542 ;	assignBit
      0004ED D2 00            [12]  543 	setb	_I2C_SendACK_PARM_1
      0004EF C0 07            [24]  544 	push	ar7
      0004F1 12 04 59         [24]  545 	lcall	_I2C_SendACK
                                    546 ;	./src/i2c.c:117: I2C_Stop();
      0004F4 12 04 52         [24]  547 	lcall	_I2C_Stop
      0004F7 D0 07            [24]  548 	pop	ar7
                                    549 ;	./src/i2c.c:118: return REG_data;
      0004F9 8F 82            [24]  550 	mov	dpl,r7
                                    551 ;	./src/i2c.c:119: }
      0004FB 22               [24]  552 	ret
                                    553 	.area CSEG    (CODE)
                                    554 	.area CONST   (CODE)
                                    555 	.area XINIT   (CODE)
                                    556 	.area CABS    (ABS,CODE)
