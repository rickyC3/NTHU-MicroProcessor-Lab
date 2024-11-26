                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module program
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _hex_size
                                     12 	.globl _hex_file
                                     13 	.globl _delay_ms
                                     14 	.globl _AT89S51_Read_Byte
                                     15 	.globl _AT89S51_Write_Byte
                                     16 	.globl _AT89S51_Chip_Erase
                                     17 	.globl _AT89S51_Prog_En
                                     18 	.globl _CY
                                     19 	.globl _AC
                                     20 	.globl _F0
                                     21 	.globl _RS1
                                     22 	.globl _RS0
                                     23 	.globl _OV
                                     24 	.globl _F1
                                     25 	.globl _P
                                     26 	.globl _PS
                                     27 	.globl _PT1
                                     28 	.globl _PX1
                                     29 	.globl _PT0
                                     30 	.globl _PX0
                                     31 	.globl _RD
                                     32 	.globl _WR
                                     33 	.globl _T1
                                     34 	.globl _T0
                                     35 	.globl _INT1
                                     36 	.globl _INT0
                                     37 	.globl _TXD
                                     38 	.globl _RXD
                                     39 	.globl _P3_7
                                     40 	.globl _P3_6
                                     41 	.globl _P3_5
                                     42 	.globl _P3_4
                                     43 	.globl _P3_3
                                     44 	.globl _P3_2
                                     45 	.globl _P3_1
                                     46 	.globl _P3_0
                                     47 	.globl _EA
                                     48 	.globl _ES
                                     49 	.globl _ET1
                                     50 	.globl _EX1
                                     51 	.globl _ET0
                                     52 	.globl _EX0
                                     53 	.globl _P2_7
                                     54 	.globl _P2_6
                                     55 	.globl _P2_5
                                     56 	.globl _P2_4
                                     57 	.globl _P2_3
                                     58 	.globl _P2_2
                                     59 	.globl _P2_1
                                     60 	.globl _P2_0
                                     61 	.globl _SM0
                                     62 	.globl _SM1
                                     63 	.globl _SM2
                                     64 	.globl _REN
                                     65 	.globl _TB8
                                     66 	.globl _RB8
                                     67 	.globl _TI
                                     68 	.globl _RI
                                     69 	.globl _P1_7
                                     70 	.globl _P1_6
                                     71 	.globl _P1_5
                                     72 	.globl _P1_4
                                     73 	.globl _P1_3
                                     74 	.globl _P1_2
                                     75 	.globl _P1_1
                                     76 	.globl _P1_0
                                     77 	.globl _TF1
                                     78 	.globl _TR1
                                     79 	.globl _TF0
                                     80 	.globl _TR0
                                     81 	.globl _IE1
                                     82 	.globl _IT1
                                     83 	.globl _IE0
                                     84 	.globl _IT0
                                     85 	.globl _P0_7
                                     86 	.globl _P0_6
                                     87 	.globl _P0_5
                                     88 	.globl _P0_4
                                     89 	.globl _P0_3
                                     90 	.globl _P0_2
                                     91 	.globl _P0_1
                                     92 	.globl _P0_0
                                     93 	.globl _B
                                     94 	.globl _ACC
                                     95 	.globl _PSW
                                     96 	.globl _IP
                                     97 	.globl _P3
                                     98 	.globl _IE
                                     99 	.globl _P2
                                    100 	.globl _SBUF
                                    101 	.globl _SCON
                                    102 	.globl _P1
                                    103 	.globl _TH1
                                    104 	.globl _TH0
                                    105 	.globl _TL1
                                    106 	.globl _TL0
                                    107 	.globl _TMOD
                                    108 	.globl _TCON
                                    109 	.globl _PCON
                                    110 	.globl _DPH
                                    111 	.globl _DPL
                                    112 	.globl _SP
                                    113 	.globl _P0
                                    114 	.globl _AT89S51_Program_write
                                    115 	.globl _AT89S51_Program_read
                                    116 	.globl _AT89S51_Program_erase
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
                                    232 ;--------------------------------------------------------
                                    233 ; overlayable items in internal ram 
                                    234 ;--------------------------------------------------------
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
                                    253 ; external ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area XSEG    (XDATA)
                                    256 ;--------------------------------------------------------
                                    257 ; absolute external ram data
                                    258 ;--------------------------------------------------------
                                    259 	.area XABS    (ABS,XDATA)
                                    260 ;--------------------------------------------------------
                                    261 ; external initialized ram data
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
                                    275 ; global & static initialisations
                                    276 ;--------------------------------------------------------
                                    277 	.area HOME    (CODE)
                                    278 	.area GSINIT  (CODE)
                                    279 	.area GSFINAL (CODE)
                                    280 	.area GSINIT  (CODE)
                                    281 ;--------------------------------------------------------
                                    282 ; Home
                                    283 ;--------------------------------------------------------
                                    284 	.area HOME    (CODE)
                                    285 	.area HOME    (CODE)
                                    286 ;--------------------------------------------------------
                                    287 ; code
                                    288 ;--------------------------------------------------------
                                    289 	.area CSEG    (CODE)
                                    290 ;------------------------------------------------------------
                                    291 ;Allocation info for local variables in function 'AT89S51_Program_write'
                                    292 ;------------------------------------------------------------
                                    293 ;spr_r_buf                 Allocated to registers r7 
                                    294 ;program_cnt               Allocated to registers r6 r7 
                                    295 ;------------------------------------------------------------
                                    296 ;	./src/program.c:7: unsigned char AT89S51_Program_write(void)
                                    297 ;	-----------------------------------------
                                    298 ;	 function AT89S51_Program_write
                                    299 ;	-----------------------------------------
      0001C8                        300 _AT89S51_Program_write:
                           000007   301 	ar7 = 0x07
                           000006   302 	ar6 = 0x06
                           000005   303 	ar5 = 0x05
                           000004   304 	ar4 = 0x04
                           000003   305 	ar3 = 0x03
                           000002   306 	ar2 = 0x02
                           000001   307 	ar1 = 0x01
                           000000   308 	ar0 = 0x00
                                    309 ;	./src/program.c:13: AT8051_MOSI = 0;
                                    310 ;	assignBit
      0001C8 C2 80            [12]  311 	clr	_P0_0
                                    312 ;	./src/program.c:14: AT8051_SCK = 0;
                                    313 ;	assignBit
      0001CA C2 82            [12]  314 	clr	_P0_2
                                    315 ;	./src/program.c:15: delay_ms(1);
      0001CC 90 00 01         [24]  316 	mov	dptr,#0x0001
      0001CF 12 04 01         [24]  317 	lcall	_delay_ms
                                    318 ;	./src/program.c:16: AT8051_RST = 1;
                                    319 ;	assignBit
      0001D2 D2 83            [12]  320 	setb	_P0_3
                                    321 ;	./src/program.c:17: delay_ms(10);
      0001D4 90 00 0A         [24]  322 	mov	dptr,#0x000a
      0001D7 12 04 01         [24]  323 	lcall	_delay_ms
                                    324 ;	./src/program.c:20: spr_r_buf = AT89S51_Prog_En();
      0001DA 12 04 C1         [24]  325 	lcall	_AT89S51_Prog_En
      0001DD AF 82            [24]  326 	mov	r7,dpl
                                    327 ;	./src/program.c:21: if (spr_r_buf != 0x69) {
      0001DF BF 69 02         [24]  328 	cjne	r7,#0x69,00122$
      0001E2 80 16            [24]  329 	sjmp	00102$
      0001E4                        330 00122$:
                                    331 ;	./src/program.c:22: AT8051_RST = 0;
                                    332 ;	assignBit
      0001E4 C2 83            [12]  333 	clr	_P0_3
                                    334 ;	./src/program.c:23: delay_ms(100);
      0001E6 90 00 64         [24]  335 	mov	dptr,#0x0064
      0001E9 12 04 01         [24]  336 	lcall	_delay_ms
                                    337 ;	./src/program.c:24: AT8051_MOSI = 1;
                                    338 ;	assignBit
      0001EC D2 80            [12]  339 	setb	_P0_0
                                    340 ;	./src/program.c:25: AT8051_SCK = 1;
                                    341 ;	assignBit
      0001EE D2 82            [12]  342 	setb	_P0_2
                                    343 ;	./src/program.c:26: delay_ms(1000);
      0001F0 90 03 E8         [24]  344 	mov	dptr,#0x03e8
      0001F3 12 04 01         [24]  345 	lcall	_delay_ms
                                    346 ;	./src/program.c:28: return HAL_Prog_En_ERROR;
      0001F6 75 82 01         [24]  347 	mov	dpl,#0x01
      0001F9 22               [24]  348 	ret
      0001FA                        349 00102$:
                                    350 ;	./src/program.c:32: AT89S51_Chip_Erase();
      0001FA 12 04 EE         [24]  351 	lcall	_AT89S51_Chip_Erase
                                    352 ;	./src/program.c:33: delay_ms(1000);
      0001FD 90 03 E8         [24]  353 	mov	dptr,#0x03e8
      000200 12 04 01         [24]  354 	lcall	_delay_ms
                                    355 ;	./src/program.c:36: for (program_cnt = 0; program_cnt < hex_size; program_cnt ++) {
      000203 7E 00            [12]  356 	mov	r6,#0x00
      000205 7F 00            [12]  357 	mov	r7,#0x00
      000207                        358 00105$:
      000207 90 06 1D         [24]  359 	mov	dptr,#_hex_size
      00020A E4               [12]  360 	clr	a
      00020B 93               [24]  361 	movc	a,@a+dptr
      00020C FC               [12]  362 	mov	r4,a
      00020D 74 01            [12]  363 	mov	a,#0x01
      00020F 93               [24]  364 	movc	a,@a+dptr
      000210 FD               [12]  365 	mov	r5,a
      000211 C3               [12]  366 	clr	c
      000212 EE               [12]  367 	mov	a,r6
      000213 9C               [12]  368 	subb	a,r4
      000214 EF               [12]  369 	mov	a,r7
      000215 9D               [12]  370 	subb	a,r5
      000216 50 2A            [24]  371 	jnc	00103$
                                    372 ;	./src/program.c:37: AT89S51_Write_Byte(program_cnt + 0x0000, hex_file[program_cnt]);
      000218 EE               [12]  373 	mov	a,r6
      000219 24 CD            [12]  374 	add	a,#_hex_file
      00021B F5 82            [12]  375 	mov	dpl,a
      00021D EF               [12]  376 	mov	a,r7
      00021E 34 05            [12]  377 	addc	a,#(_hex_file >> 8)
      000220 F5 83            [12]  378 	mov	dph,a
      000222 E4               [12]  379 	clr	a
      000223 93               [24]  380 	movc	a,@a+dptr
      000224 F5 0C            [12]  381 	mov	_AT89S51_Write_Byte_PARM_2,a
      000226 8E 82            [24]  382 	mov	dpl,r6
      000228 8F 83            [24]  383 	mov	dph,r7
      00022A C0 07            [24]  384 	push	ar7
      00022C C0 06            [24]  385 	push	ar6
      00022E 12 04 6B         [24]  386 	lcall	_AT89S51_Write_Byte
                                    387 ;	./src/program.c:38: delay_ms(1);
      000231 90 00 01         [24]  388 	mov	dptr,#0x0001
      000234 12 04 01         [24]  389 	lcall	_delay_ms
      000237 D0 06            [24]  390 	pop	ar6
      000239 D0 07            [24]  391 	pop	ar7
                                    392 ;	./src/program.c:36: for (program_cnt = 0; program_cnt < hex_size; program_cnt ++) {
      00023B 0E               [12]  393 	inc	r6
      00023C BE 00 C8         [24]  394 	cjne	r6,#0x00,00105$
      00023F 0F               [12]  395 	inc	r7
      000240 80 C5            [24]  396 	sjmp	00105$
      000242                        397 00103$:
                                    398 ;	./src/program.c:42: AT8051_RST = 0;
                                    399 ;	assignBit
      000242 C2 83            [12]  400 	clr	_P0_3
                                    401 ;	./src/program.c:43: delay_ms(100);
      000244 90 00 64         [24]  402 	mov	dptr,#0x0064
      000247 12 04 01         [24]  403 	lcall	_delay_ms
                                    404 ;	./src/program.c:44: AT8051_MOSI = 1;
                                    405 ;	assignBit
      00024A D2 80            [12]  406 	setb	_P0_0
                                    407 ;	./src/program.c:45: AT8051_SCK = 1;
                                    408 ;	assignBit
      00024C D2 82            [12]  409 	setb	_P0_2
                                    410 ;	./src/program.c:46: delay_ms(1000);
      00024E 90 03 E8         [24]  411 	mov	dptr,#0x03e8
      000251 12 04 01         [24]  412 	lcall	_delay_ms
                                    413 ;	./src/program.c:48: return HAL_OK;
      000254 75 82 00         [24]  414 	mov	dpl,#0x00
                                    415 ;	./src/program.c:49: }
      000257 22               [24]  416 	ret
                                    417 ;------------------------------------------------------------
                                    418 ;Allocation info for local variables in function 'AT89S51_Program_read'
                                    419 ;------------------------------------------------------------
                                    420 ;spr_r_buf                 Allocated to registers r5 
                                    421 ;program_cnt               Allocated to registers r6 r7 
                                    422 ;------------------------------------------------------------
                                    423 ;	./src/program.c:51: unsigned char AT89S51_Program_read(void)
                                    424 ;	-----------------------------------------
                                    425 ;	 function AT89S51_Program_read
                                    426 ;	-----------------------------------------
      000258                        427 _AT89S51_Program_read:
                                    428 ;	./src/program.c:57: AT8051_MOSI = 0;
                                    429 ;	assignBit
      000258 C2 80            [12]  430 	clr	_P0_0
                                    431 ;	./src/program.c:58: AT8051_SCK = 0;
                                    432 ;	assignBit
      00025A C2 82            [12]  433 	clr	_P0_2
                                    434 ;	./src/program.c:59: delay_ms(1);
      00025C 90 00 01         [24]  435 	mov	dptr,#0x0001
      00025F 12 04 01         [24]  436 	lcall	_delay_ms
                                    437 ;	./src/program.c:60: AT8051_RST = 1;
                                    438 ;	assignBit
      000262 D2 83            [12]  439 	setb	_P0_3
                                    440 ;	./src/program.c:61: delay_ms(10);
      000264 90 00 0A         [24]  441 	mov	dptr,#0x000a
      000267 12 04 01         [24]  442 	lcall	_delay_ms
                                    443 ;	./src/program.c:64: spr_r_buf = AT89S51_Prog_En();
      00026A 12 04 C1         [24]  444 	lcall	_AT89S51_Prog_En
      00026D AF 82            [24]  445 	mov	r7,dpl
                                    446 ;	./src/program.c:65: if (spr_r_buf != 0x69) {
      00026F BF 69 02         [24]  447 	cjne	r7,#0x69,00131$
      000272 80 16            [24]  448 	sjmp	00114$
      000274                        449 00131$:
                                    450 ;	./src/program.c:66: AT8051_RST = 0;
                                    451 ;	assignBit
      000274 C2 83            [12]  452 	clr	_P0_3
                                    453 ;	./src/program.c:67: delay_ms(100);	
      000276 90 00 64         [24]  454 	mov	dptr,#0x0064
      000279 12 04 01         [24]  455 	lcall	_delay_ms
                                    456 ;	./src/program.c:68: AT8051_MOSI = 1;
                                    457 ;	assignBit
      00027C D2 80            [12]  458 	setb	_P0_0
                                    459 ;	./src/program.c:69: AT8051_SCK = 1;
                                    460 ;	assignBit
      00027E D2 82            [12]  461 	setb	_P0_2
                                    462 ;	./src/program.c:70: delay_ms(1000);	
      000280 90 03 E8         [24]  463 	mov	dptr,#0x03e8
      000283 12 04 01         [24]  464 	lcall	_delay_ms
                                    465 ;	./src/program.c:71: return HAL_Prog_En_ERROR;
      000286 75 82 01         [24]  466 	mov	dpl,#0x01
      000289 22               [24]  467 	ret
                                    468 ;	./src/program.c:75: for (program_cnt = 0; program_cnt < hex_size; program_cnt ++) {
      00028A                        469 00114$:
      00028A 7E 00            [12]  470 	mov	r6,#0x00
      00028C 7F 00            [12]  471 	mov	r7,#0x00
      00028E                        472 00107$:
      00028E 90 06 1D         [24]  473 	mov	dptr,#_hex_size
      000291 E4               [12]  474 	clr	a
      000292 93               [24]  475 	movc	a,@a+dptr
      000293 FC               [12]  476 	mov	r4,a
      000294 74 01            [12]  477 	mov	a,#0x01
      000296 93               [24]  478 	movc	a,@a+dptr
      000297 FD               [12]  479 	mov	r5,a
      000298 C3               [12]  480 	clr	c
      000299 EE               [12]  481 	mov	a,r6
      00029A 9C               [12]  482 	subb	a,r4
      00029B EF               [12]  483 	mov	a,r7
      00029C 9D               [12]  484 	subb	a,r5
      00029D 50 4B            [24]  485 	jnc	00105$
                                    486 ;	./src/program.c:76: spr_r_buf = AT89S51_Read_Byte(program_cnt + 0x0000);
      00029F 8E 82            [24]  487 	mov	dpl,r6
      0002A1 8F 83            [24]  488 	mov	dph,r7
      0002A3 C0 07            [24]  489 	push	ar7
      0002A5 C0 06            [24]  490 	push	ar6
      0002A7 12 04 2C         [24]  491 	lcall	_AT89S51_Read_Byte
      0002AA AD 82            [24]  492 	mov	r5,dpl
                                    493 ;	./src/program.c:77: delay_ms(1);
      0002AC 90 00 01         [24]  494 	mov	dptr,#0x0001
      0002AF C0 05            [24]  495 	push	ar5
      0002B1 12 04 01         [24]  496 	lcall	_delay_ms
      0002B4 D0 05            [24]  497 	pop	ar5
      0002B6 D0 06            [24]  498 	pop	ar6
      0002B8 D0 07            [24]  499 	pop	ar7
                                    500 ;	./src/program.c:80: if(spr_r_buf != hex_file[program_cnt])
      0002BA EE               [12]  501 	mov	a,r6
      0002BB 24 CD            [12]  502 	add	a,#_hex_file
      0002BD F5 82            [12]  503 	mov	dpl,a
      0002BF EF               [12]  504 	mov	a,r7
      0002C0 34 05            [12]  505 	addc	a,#(_hex_file >> 8)
      0002C2 F5 83            [12]  506 	mov	dph,a
      0002C4 E4               [12]  507 	clr	a
      0002C5 93               [24]  508 	movc	a,@a+dptr
      0002C6 FC               [12]  509 	mov	r4,a
      0002C7 ED               [12]  510 	mov	a,r5
      0002C8 B5 04 02         [24]  511 	cjne	a,ar4,00133$
      0002CB 80 16            [24]  512 	sjmp	00108$
      0002CD                        513 00133$:
                                    514 ;	./src/program.c:82: AT8051_RST = 0;
                                    515 ;	assignBit
      0002CD C2 83            [12]  516 	clr	_P0_3
                                    517 ;	./src/program.c:83: delay_ms(100);
      0002CF 90 00 64         [24]  518 	mov	dptr,#0x0064
      0002D2 12 04 01         [24]  519 	lcall	_delay_ms
                                    520 ;	./src/program.c:84: AT8051_MOSI = 1;
                                    521 ;	assignBit
      0002D5 D2 80            [12]  522 	setb	_P0_0
                                    523 ;	./src/program.c:85: AT8051_SCK = 1;
                                    524 ;	assignBit
      0002D7 D2 82            [12]  525 	setb	_P0_2
                                    526 ;	./src/program.c:86: delay_ms(1000);
      0002D9 90 03 E8         [24]  527 	mov	dptr,#0x03e8
      0002DC 12 04 01         [24]  528 	lcall	_delay_ms
                                    529 ;	./src/program.c:88: return HAL_Verify_ERROR;
      0002DF 75 82 02         [24]  530 	mov	dpl,#0x02
      0002E2 22               [24]  531 	ret
      0002E3                        532 00108$:
                                    533 ;	./src/program.c:75: for (program_cnt = 0; program_cnt < hex_size; program_cnt ++) {
      0002E3 0E               [12]  534 	inc	r6
      0002E4 BE 00 A7         [24]  535 	cjne	r6,#0x00,00107$
      0002E7 0F               [12]  536 	inc	r7
      0002E8 80 A4            [24]  537 	sjmp	00107$
      0002EA                        538 00105$:
                                    539 ;	./src/program.c:93: AT8051_RST = 0;
                                    540 ;	assignBit
      0002EA C2 83            [12]  541 	clr	_P0_3
                                    542 ;	./src/program.c:94: delay_ms(100);
      0002EC 90 00 64         [24]  543 	mov	dptr,#0x0064
      0002EF 12 04 01         [24]  544 	lcall	_delay_ms
                                    545 ;	./src/program.c:95: AT8051_MOSI = 1;
                                    546 ;	assignBit
      0002F2 D2 80            [12]  547 	setb	_P0_0
                                    548 ;	./src/program.c:96: AT8051_SCK = 1;
                                    549 ;	assignBit
      0002F4 D2 82            [12]  550 	setb	_P0_2
                                    551 ;	./src/program.c:97: delay_ms(1000);
      0002F6 90 03 E8         [24]  552 	mov	dptr,#0x03e8
      0002F9 12 04 01         [24]  553 	lcall	_delay_ms
                                    554 ;	./src/program.c:99: return HAL_OK;
      0002FC 75 82 00         [24]  555 	mov	dpl,#0x00
                                    556 ;	./src/program.c:100: }
      0002FF 22               [24]  557 	ret
                                    558 ;------------------------------------------------------------
                                    559 ;Allocation info for local variables in function 'AT89S51_Program_erase'
                                    560 ;------------------------------------------------------------
                                    561 ;spr_r_buf                 Allocated to registers r7 
                                    562 ;program_cnt               Allocated to registers 
                                    563 ;------------------------------------------------------------
                                    564 ;	./src/program.c:102: unsigned char AT89S51_Program_erase(void)
                                    565 ;	-----------------------------------------
                                    566 ;	 function AT89S51_Program_erase
                                    567 ;	-----------------------------------------
      000300                        568 _AT89S51_Program_erase:
                                    569 ;	./src/program.c:108: AT8051_MOSI = 0;
                                    570 ;	assignBit
      000300 C2 80            [12]  571 	clr	_P0_0
                                    572 ;	./src/program.c:109: AT8051_SCK = 0;
                                    573 ;	assignBit
      000302 C2 82            [12]  574 	clr	_P0_2
                                    575 ;	./src/program.c:110: delay_ms(1);
      000304 90 00 01         [24]  576 	mov	dptr,#0x0001
      000307 12 04 01         [24]  577 	lcall	_delay_ms
                                    578 ;	./src/program.c:111: AT8051_RST = 1;
                                    579 ;	assignBit
      00030A D2 83            [12]  580 	setb	_P0_3
                                    581 ;	./src/program.c:112: delay_ms(10);
      00030C 90 00 0A         [24]  582 	mov	dptr,#0x000a
      00030F 12 04 01         [24]  583 	lcall	_delay_ms
                                    584 ;	./src/program.c:115: spr_r_buf = AT89S51_Prog_En();
      000312 12 04 C1         [24]  585 	lcall	_AT89S51_Prog_En
      000315 AF 82            [24]  586 	mov	r7,dpl
                                    587 ;	./src/program.c:116: if(spr_r_buf != 0x69)
      000317 BF 69 02         [24]  588 	cjne	r7,#0x69,00109$
      00031A 80 16            [24]  589 	sjmp	00102$
      00031C                        590 00109$:
                                    591 ;	./src/program.c:118: AT8051_RST = 0;
                                    592 ;	assignBit
      00031C C2 83            [12]  593 	clr	_P0_3
                                    594 ;	./src/program.c:119: delay_ms(100);
      00031E 90 00 64         [24]  595 	mov	dptr,#0x0064
      000321 12 04 01         [24]  596 	lcall	_delay_ms
                                    597 ;	./src/program.c:120: AT8051_MOSI = 1;
                                    598 ;	assignBit
      000324 D2 80            [12]  599 	setb	_P0_0
                                    600 ;	./src/program.c:121: AT8051_SCK = 1;
                                    601 ;	assignBit
      000326 D2 82            [12]  602 	setb	_P0_2
                                    603 ;	./src/program.c:122: delay_ms(1000);
      000328 90 03 E8         [24]  604 	mov	dptr,#0x03e8
      00032B 12 04 01         [24]  605 	lcall	_delay_ms
                                    606 ;	./src/program.c:124: return HAL_Prog_En_ERROR;
      00032E 75 82 01         [24]  607 	mov	dpl,#0x01
      000331 22               [24]  608 	ret
      000332                        609 00102$:
                                    610 ;	./src/program.c:128: AT89S51_Chip_Erase();
      000332 12 04 EE         [24]  611 	lcall	_AT89S51_Chip_Erase
                                    612 ;	./src/program.c:129: delay_ms(1000);
      000335 90 03 E8         [24]  613 	mov	dptr,#0x03e8
      000338 12 04 01         [24]  614 	lcall	_delay_ms
                                    615 ;	./src/program.c:132: AT8051_RST = 0;
                                    616 ;	assignBit
      00033B C2 83            [12]  617 	clr	_P0_3
                                    618 ;	./src/program.c:133: delay_ms(100);
      00033D 90 00 64         [24]  619 	mov	dptr,#0x0064
      000340 12 04 01         [24]  620 	lcall	_delay_ms
                                    621 ;	./src/program.c:134: AT8051_MOSI = 1;
                                    622 ;	assignBit
      000343 D2 80            [12]  623 	setb	_P0_0
                                    624 ;	./src/program.c:135: AT8051_SCK = 1;
                                    625 ;	assignBit
      000345 D2 82            [12]  626 	setb	_P0_2
                                    627 ;	./src/program.c:136: delay_ms(1000);
      000347 90 03 E8         [24]  628 	mov	dptr,#0x03e8
      00034A 12 04 01         [24]  629 	lcall	_delay_ms
                                    630 ;	./src/program.c:138: return HAL_OK;
      00034D 75 82 00         [24]  631 	mov	dpl,#0x00
                                    632 ;	./src/program.c:139: }
      000350 22               [24]  633 	ret
                                    634 	.area CSEG    (CODE)
                                    635 	.area CONST   (CODE)
      0005CD                        636 _hex_file:
      0005CD 02                     637 	.db #0x02	; 2
      0005CE 00                     638 	.db #0x00	; 0
      0005CF 30                     639 	.db #0x30	; 48	'0'
      0005D0 FF                     640 	.db #0xff	; 255
      0005D1 FF                     641 	.db #0xff	; 255
      0005D2 FF                     642 	.db #0xff	; 255
      0005D3 FF                     643 	.db #0xff	; 255
      0005D4 FF                     644 	.db #0xff	; 255
      0005D5 FF                     645 	.db #0xff	; 255
      0005D6 FF                     646 	.db #0xff	; 255
      0005D7 FF                     647 	.db #0xff	; 255
      0005D8 FF                     648 	.db #0xff	; 255
      0005D9 FF                     649 	.db #0xff	; 255
      0005DA FF                     650 	.db #0xff	; 255
      0005DB FF                     651 	.db #0xff	; 255
      0005DC FF                     652 	.db #0xff	; 255
      0005DD FF                     653 	.db #0xff	; 255
      0005DE FF                     654 	.db #0xff	; 255
      0005DF FF                     655 	.db #0xff	; 255
      0005E0 C2                     656 	.db #0xc2	; 194
      0005E1 90                     657 	.db #0x90	; 144
      0005E2 7C                     658 	.db #0x7c	; 124
      0005E3 0A                     659 	.db #0x0a	; 10
      0005E4 32                     660 	.db #0x32	; 50	'2'
      0005E5 FF                     661 	.db #0xff	; 255
      0005E6 FF                     662 	.db #0xff	; 255
      0005E7 FF                     663 	.db #0xff	; 255
      0005E8 FF                     664 	.db #0xff	; 255
      0005E9 FF                     665 	.db #0xff	; 255
      0005EA FF                     666 	.db #0xff	; 255
      0005EB FF                     667 	.db #0xff	; 255
      0005EC FF                     668 	.db #0xff	; 255
      0005ED FF                     669 	.db #0xff	; 255
      0005EE FF                     670 	.db #0xff	; 255
      0005EF FF                     671 	.db #0xff	; 255
      0005F0 FF                     672 	.db #0xff	; 255
      0005F1 FF                     673 	.db #0xff	; 255
      0005F2 FF                     674 	.db #0xff	; 255
      0005F3 FF                     675 	.db #0xff	; 255
      0005F4 FF                     676 	.db #0xff	; 255
      0005F5 FF                     677 	.db #0xff	; 255
      0005F6 FF                     678 	.db #0xff	; 255
      0005F7 FF                     679 	.db #0xff	; 255
      0005F8 FF                     680 	.db #0xff	; 255
      0005F9 FF                     681 	.db #0xff	; 255
      0005FA FF                     682 	.db #0xff	; 255
      0005FB FF                     683 	.db #0xff	; 255
      0005FC FF                     684 	.db #0xff	; 255
      0005FD D2                     685 	.db #0xd2	; 210
      0005FE 90                     686 	.db #0x90	; 144
      0005FF D2                     687 	.db #0xd2	; 210
      000600 8A                     688 	.db #0x8a	; 138
      000601 75                     689 	.db #0x75	; 117	'u'
      000602 A8                     690 	.db #0xa8	; 168
      000603 84                     691 	.db #0x84	; 132
      000604 BC                     692 	.db #0xbc	; 188
      000605 00                     693 	.db #0x00	; 0
      000606 02                     694 	.db #0x02	; 2
      000607 D2                     695 	.db #0xd2	; 210
      000608 90                     696 	.db #0x90	; 144
      000609 12                     697 	.db #0x12	; 18
      00060A 00                     698 	.db #0x00	; 0
      00060B 43                     699 	.db #0x43	; 67	'C'
      00060C DC                     700 	.db #0xdc	; 220
      00060D FB                     701 	.db #0xfb	; 251
      00060E 80                     702 	.db #0x80	; 128
      00060F F4                     703 	.db #0xf4	; 244
      000610 7D                     704 	.db #0x7d	; 125
      000611 64                     705 	.db #0x64	; 100	'd'
      000612 7E                     706 	.db #0x7e	; 126
      000613 02                     707 	.db #0x02	; 2
      000614 7F                     708 	.db #0x7f	; 127
      000615 E4                     709 	.db #0xe4	; 228
      000616 DF                     710 	.db #0xdf	; 223
      000617 FE                     711 	.db #0xfe	; 254
      000618 DE                     712 	.db #0xde	; 222
      000619 FA                     713 	.db #0xfa	; 250
      00061A DD                     714 	.db #0xdd	; 221
      00061B F6                     715 	.db #0xf6	; 246
      00061C 22                     716 	.db #0x22	; 34
      00061D                        717 _hex_size:
      00061D 50 00                  718 	.byte #0x50, #0x00	; 80
                                    719 	.area XINIT   (CODE)
                                    720 	.area CABS    (ABS,CODE)
