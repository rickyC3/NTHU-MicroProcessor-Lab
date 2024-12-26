                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module adc
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
                                    107 	.globl _SPI_WR
                                    108 	.globl _read_adc3202
                                    109 ;--------------------------------------------------------
                                    110 ; special function registers
                                    111 ;--------------------------------------------------------
                                    112 	.area RSEG    (ABS,DATA)
      000000                        113 	.org 0x0000
                           000080   114 _P0	=	0x0080
                           000081   115 _SP	=	0x0081
                           000082   116 _DPL	=	0x0082
                           000083   117 _DPH	=	0x0083
                           000087   118 _PCON	=	0x0087
                           000088   119 _TCON	=	0x0088
                           000089   120 _TMOD	=	0x0089
                           00008A   121 _TL0	=	0x008a
                           00008B   122 _TL1	=	0x008b
                           00008C   123 _TH0	=	0x008c
                           00008D   124 _TH1	=	0x008d
                           000090   125 _P1	=	0x0090
                           000098   126 _SCON	=	0x0098
                           000099   127 _SBUF	=	0x0099
                           0000A0   128 _P2	=	0x00a0
                           0000A8   129 _IE	=	0x00a8
                           0000B0   130 _P3	=	0x00b0
                           0000B8   131 _IP	=	0x00b8
                           0000D0   132 _PSW	=	0x00d0
                           0000E0   133 _ACC	=	0x00e0
                           0000F0   134 _B	=	0x00f0
                                    135 ;--------------------------------------------------------
                                    136 ; special function bits
                                    137 ;--------------------------------------------------------
                                    138 	.area RSEG    (ABS,DATA)
      000000                        139 	.org 0x0000
                           000080   140 _P0_0	=	0x0080
                           000081   141 _P0_1	=	0x0081
                           000082   142 _P0_2	=	0x0082
                           000083   143 _P0_3	=	0x0083
                           000084   144 _P0_4	=	0x0084
                           000085   145 _P0_5	=	0x0085
                           000086   146 _P0_6	=	0x0086
                           000087   147 _P0_7	=	0x0087
                           000088   148 _IT0	=	0x0088
                           000089   149 _IE0	=	0x0089
                           00008A   150 _IT1	=	0x008a
                           00008B   151 _IE1	=	0x008b
                           00008C   152 _TR0	=	0x008c
                           00008D   153 _TF0	=	0x008d
                           00008E   154 _TR1	=	0x008e
                           00008F   155 _TF1	=	0x008f
                           000090   156 _P1_0	=	0x0090
                           000091   157 _P1_1	=	0x0091
                           000092   158 _P1_2	=	0x0092
                           000093   159 _P1_3	=	0x0093
                           000094   160 _P1_4	=	0x0094
                           000095   161 _P1_5	=	0x0095
                           000096   162 _P1_6	=	0x0096
                           000097   163 _P1_7	=	0x0097
                           000098   164 _RI	=	0x0098
                           000099   165 _TI	=	0x0099
                           00009A   166 _RB8	=	0x009a
                           00009B   167 _TB8	=	0x009b
                           00009C   168 _REN	=	0x009c
                           00009D   169 _SM2	=	0x009d
                           00009E   170 _SM1	=	0x009e
                           00009F   171 _SM0	=	0x009f
                           0000A0   172 _P2_0	=	0x00a0
                           0000A1   173 _P2_1	=	0x00a1
                           0000A2   174 _P2_2	=	0x00a2
                           0000A3   175 _P2_3	=	0x00a3
                           0000A4   176 _P2_4	=	0x00a4
                           0000A5   177 _P2_5	=	0x00a5
                           0000A6   178 _P2_6	=	0x00a6
                           0000A7   179 _P2_7	=	0x00a7
                           0000A8   180 _EX0	=	0x00a8
                           0000A9   181 _ET0	=	0x00a9
                           0000AA   182 _EX1	=	0x00aa
                           0000AB   183 _ET1	=	0x00ab
                           0000AC   184 _ES	=	0x00ac
                           0000AF   185 _EA	=	0x00af
                           0000B0   186 _P3_0	=	0x00b0
                           0000B1   187 _P3_1	=	0x00b1
                           0000B2   188 _P3_2	=	0x00b2
                           0000B3   189 _P3_3	=	0x00b3
                           0000B4   190 _P3_4	=	0x00b4
                           0000B5   191 _P3_5	=	0x00b5
                           0000B6   192 _P3_6	=	0x00b6
                           0000B7   193 _P3_7	=	0x00b7
                           0000B0   194 _RXD	=	0x00b0
                           0000B1   195 _TXD	=	0x00b1
                           0000B2   196 _INT0	=	0x00b2
                           0000B3   197 _INT1	=	0x00b3
                           0000B4   198 _T0	=	0x00b4
                           0000B5   199 _T1	=	0x00b5
                           0000B6   200 _WR	=	0x00b6
                           0000B7   201 _RD	=	0x00b7
                           0000B8   202 _PX0	=	0x00b8
                           0000B9   203 _PT0	=	0x00b9
                           0000BA   204 _PX1	=	0x00ba
                           0000BB   205 _PT1	=	0x00bb
                           0000BC   206 _PS	=	0x00bc
                           0000D0   207 _P	=	0x00d0
                           0000D1   208 _F1	=	0x00d1
                           0000D2   209 _OV	=	0x00d2
                           0000D3   210 _RS0	=	0x00d3
                           0000D4   211 _RS1	=	0x00d4
                           0000D5   212 _F0	=	0x00d5
                           0000D6   213 _AC	=	0x00d6
                           0000D7   214 _CY	=	0x00d7
                                    215 ;--------------------------------------------------------
                                    216 ; overlayable register banks
                                    217 ;--------------------------------------------------------
                                    218 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        219 	.ds 8
                                    220 ;--------------------------------------------------------
                                    221 ; internal ram data
                                    222 ;--------------------------------------------------------
                                    223 	.area DSEG    (DATA)
                                    224 ;--------------------------------------------------------
                                    225 ; overlayable items in internal ram 
                                    226 ;--------------------------------------------------------
                                    227 ;--------------------------------------------------------
                                    228 ; indirectly addressable internal ram data
                                    229 ;--------------------------------------------------------
                                    230 	.area ISEG    (DATA)
                                    231 ;--------------------------------------------------------
                                    232 ; absolute internal ram data
                                    233 ;--------------------------------------------------------
                                    234 	.area IABS    (ABS,DATA)
                                    235 	.area IABS    (ABS,DATA)
                                    236 ;--------------------------------------------------------
                                    237 ; bit data
                                    238 ;--------------------------------------------------------
                                    239 	.area BSEG    (BIT)
                                    240 ;--------------------------------------------------------
                                    241 ; paged external ram data
                                    242 ;--------------------------------------------------------
                                    243 	.area PSEG    (PAG,XDATA)
                                    244 ;--------------------------------------------------------
                                    245 ; external ram data
                                    246 ;--------------------------------------------------------
                                    247 	.area XSEG    (XDATA)
                                    248 ;--------------------------------------------------------
                                    249 ; absolute external ram data
                                    250 ;--------------------------------------------------------
                                    251 	.area XABS    (ABS,XDATA)
                                    252 ;--------------------------------------------------------
                                    253 ; external initialized ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area XISEG   (XDATA)
                                    256 	.area HOME    (CODE)
                                    257 	.area GSINIT0 (CODE)
                                    258 	.area GSINIT1 (CODE)
                                    259 	.area GSINIT2 (CODE)
                                    260 	.area GSINIT3 (CODE)
                                    261 	.area GSINIT4 (CODE)
                                    262 	.area GSINIT5 (CODE)
                                    263 	.area GSINIT  (CODE)
                                    264 	.area GSFINAL (CODE)
                                    265 	.area CSEG    (CODE)
                                    266 ;--------------------------------------------------------
                                    267 ; global & static initialisations
                                    268 ;--------------------------------------------------------
                                    269 	.area HOME    (CODE)
                                    270 	.area GSINIT  (CODE)
                                    271 	.area GSFINAL (CODE)
                                    272 	.area GSINIT  (CODE)
                                    273 ;--------------------------------------------------------
                                    274 ; Home
                                    275 ;--------------------------------------------------------
                                    276 	.area HOME    (CODE)
                                    277 	.area HOME    (CODE)
                                    278 ;--------------------------------------------------------
                                    279 ; code
                                    280 ;--------------------------------------------------------
                                    281 	.area CSEG    (CODE)
                                    282 ;------------------------------------------------------------
                                    283 ;Allocation info for local variables in function 'SPI_WR'
                                    284 ;------------------------------------------------------------
                                    285 ;data_in                   Allocated to registers r7 
                                    286 ;data_out                  Allocated to registers r6 
                                    287 ;i                         Allocated to registers r5 
                                    288 ;------------------------------------------------------------
                                    289 ;	./src/adc.c:5: char SPI_WR(char data_in) {
                                    290 ;	-----------------------------------------
                                    291 ;	 function SPI_WR
                                    292 ;	-----------------------------------------
      000786                        293 _SPI_WR:
                           000007   294 	ar7 = 0x07
                           000006   295 	ar6 = 0x06
                           000005   296 	ar5 = 0x05
                           000004   297 	ar4 = 0x04
                           000003   298 	ar3 = 0x03
                           000002   299 	ar2 = 0x02
                           000001   300 	ar1 = 0x01
                           000000   301 	ar0 = 0x00
      000786 AF 82            [24]  302 	mov	r7,dpl
                                    303 ;	./src/adc.c:6: char data_out = 0;
      000788 7E 00            [12]  304 	mov	r6,#0x00
                                    305 ;	./src/adc.c:8: for(i = 0; i < 8; i++) {            // 8 bit transaction
      00078A 7D 00            [12]  306 	mov	r5,#0x00
      00078C                        307 00104$:
                                    308 ;	./src/adc.c:9: data_out <<= 1;
      00078C 8E 04            [24]  309 	mov	ar4,r6
      00078E EC               [12]  310 	mov	a,r4
      00078F 2C               [12]  311 	add	a,r4
      000790 FE               [12]  312 	mov	r6,a
                                    313 ;	./src/adc.c:11: CLK = 0;
                                    314 ;	assignBit
      000791 C2 A0            [12]  315 	clr	_P2_0
                                    316 ;	./src/adc.c:12: delay_5();
      000793 C0 07            [24]  317 	push	ar7
      000795 C0 06            [24]  318 	push	ar6
      000797 C0 05            [24]  319 	push	ar5
      000799 12 08 39         [24]  320 	lcall	_delay_5
      00079C D0 05            [24]  321 	pop	ar5
      00079E D0 06            [24]  322 	pop	ar6
      0007A0 D0 07            [24]  323 	pop	ar7
                                    324 ;	./src/adc.c:13: DIN = (data_in & 0x80) ? 1 : 0;   // Send data_in via DIN to ADC (e.g. start bit, mode selection)
      0007A2 8F 03            [24]  325 	mov	ar3,r7
      0007A4 53 03 80         [24]  326 	anl	ar3,#0x80
      0007A7 7C 00            [12]  327 	mov	r4,#0x00
                                    328 ;	assignBit
      0007A9 EB               [12]  329 	mov	a,r3
      0007AA 4C               [12]  330 	orl	a,r4
      0007AB 24 FF            [12]  331 	add	a,#0xff
      0007AD 92 A1            [24]  332 	mov	_P2_1,c
                                    333 ;	./src/adc.c:14: delay_5();
      0007AF C0 07            [24]  334 	push	ar7
      0007B1 C0 06            [24]  335 	push	ar6
      0007B3 C0 05            [24]  336 	push	ar5
      0007B5 12 08 39         [24]  337 	lcall	_delay_5
                                    338 ;	./src/adc.c:15: CLK = 1;
                                    339 ;	assignBit
      0007B8 D2 A0            [12]  340 	setb	_P2_0
                                    341 ;	./src/adc.c:16: delay_5();
      0007BA 12 08 39         [24]  342 	lcall	_delay_5
      0007BD D0 05            [24]  343 	pop	ar5
      0007BF D0 06            [24]  344 	pop	ar6
      0007C1 D0 07            [24]  345 	pop	ar7
                                    346 ;	./src/adc.c:18: if (DOUT == 1) {                  // Read DOUT
      0007C3 30 A2 03         [24]  347 	jnb	_P2_2,00102$
                                    348 ;	./src/adc.c:19: data_out = (data_out | 0x01);   // Store into data_out
      0007C6 43 06 01         [24]  349 	orl	ar6,#0x01
      0007C9                        350 00102$:
                                    351 ;	./src/adc.c:21: data_in <<= 1;
      0007C9 8F 04            [24]  352 	mov	ar4,r7
      0007CB EC               [12]  353 	mov	a,r4
      0007CC 2C               [12]  354 	add	a,r4
      0007CD FF               [12]  355 	mov	r7,a
                                    356 ;	./src/adc.c:8: for(i = 0; i < 8; i++) {            // 8 bit transaction
      0007CE 0D               [12]  357 	inc	r5
      0007CF BD 08 00         [24]  358 	cjne	r5,#0x08,00122$
      0007D2                        359 00122$:
      0007D2 40 B8            [24]  360 	jc	00104$
                                    361 ;	./src/adc.c:23: return data_out;
      0007D4 8E 82            [24]  362 	mov	dpl,r6
                                    363 ;	./src/adc.c:24: }
      0007D6 22               [24]  364 	ret
                                    365 ;------------------------------------------------------------
                                    366 ;Allocation info for local variables in function 'read_adc3202'
                                    367 ;------------------------------------------------------------
                                    368 ;channel                   Allocated to registers r7 
                                    369 ;data_buff                 Allocated to registers r7 r6 
                                    370 ;spi_buff                  Allocated to registers r5 
                                    371 ;------------------------------------------------------------
                                    372 ;	./src/adc.c:26: unsigned int read_adc3202(unsigned char channel) {
                                    373 ;	-----------------------------------------
                                    374 ;	 function read_adc3202
                                    375 ;	-----------------------------------------
      0007D7                        376 _read_adc3202:
      0007D7 AF 82            [24]  377 	mov	r7,dpl
                                    378 ;	./src/adc.c:31: LOAD = 0;
                                    379 ;	assignBit
      0007D9 C2 A3            [12]  380 	clr	_P2_3
                                    381 ;	./src/adc.c:34: SPI_WR(0x01);               // First byte transaction includes start bit
      0007DB 75 82 01         [24]  382 	mov	dpl,#0x01
      0007DE C0 07            [24]  383 	push	ar7
      0007E0 12 07 86         [24]  384 	lcall	_SPI_WR
      0007E3 D0 07            [24]  385 	pop	ar7
                                    386 ;	./src/adc.c:35: if (channel == 1)           // Channel 1: 11100000, to IR sensor
      0007E5 BF 01 0A         [24]  387 	cjne	r7,#0x01,00102$
                                    388 ;	./src/adc.c:36: spi_buff = SPI_WR(0xe0);  // Second byte transaction includes mode selection and higher 4 bit ADC output
      0007E8 75 82 E0         [24]  389 	mov	dpl,#0xe0
      0007EB 12 07 86         [24]  390 	lcall	_SPI_WR
      0007EE AF 82            [24]  391 	mov	r7,dpl
      0007F0 80 08            [24]  392 	sjmp	00103$
      0007F2                        393 00102$:
                                    394 ;	./src/adc.c:38: spi_buff = SPI_WR(0xa0);  // Second byte transaction includes mode selection and higher 4 bit ADC output
      0007F2 75 82 A0         [24]  395 	mov	dpl,#0xa0
      0007F5 12 07 86         [24]  396 	lcall	_SPI_WR
      0007F8 AF 82            [24]  397 	mov	r7,dpl
      0007FA                        398 00103$:
                                    399 ;	./src/adc.c:39: data_buff = spi_buff & 0x0f;
      0007FA 53 07 0F         [24]  400 	anl	ar7,#0x0f
                                    401 ;	./src/adc.c:40: data_buff <<= 8;            // Store higher 4 bit ADC output
      0007FD 8F 06            [24]  402 	mov	ar6,r7
      0007FF 7F 00            [12]  403 	mov	r7,#0x00
                                    404 ;	./src/adc.c:42: spi_buff = SPI_WR(0x00);    // Third byte transaction includes lower 8 bit ADC output
      000801 75 82 00         [24]  405 	mov	dpl,#0x00
      000804 C0 07            [24]  406 	push	ar7
      000806 C0 06            [24]  407 	push	ar6
      000808 12 07 86         [24]  408 	lcall	_SPI_WR
      00080B AD 82            [24]  409 	mov	r5,dpl
      00080D D0 06            [24]  410 	pop	ar6
      00080F D0 07            [24]  411 	pop	ar7
                                    412 ;	./src/adc.c:43: data_buff = data_buff | spi_buff;   // Store higher 4 bit ADC output
      000811 7C 00            [12]  413 	mov	r4,#0x00
      000813 ED               [12]  414 	mov	a,r5
      000814 4F               [12]  415 	orl	a,r7
      000815 F5 82            [12]  416 	mov	dpl,a
      000817 EC               [12]  417 	mov	a,r4
      000818 4E               [12]  418 	orl	a,r6
      000819 F5 83            [12]  419 	mov	dph,a
                                    420 ;	./src/adc.c:45: LOAD = 1;  
                                    421 ;	assignBit
      00081B D2 A3            [12]  422 	setb	_P2_3
                                    423 ;	./src/adc.c:46: CLK = 0;
                                    424 ;	assignBit
      00081D C2 A0            [12]  425 	clr	_P2_0
                                    426 ;	./src/adc.c:47: DIN = 0;
                                    427 ;	assignBit
      00081F C2 A1            [12]  428 	clr	_P2_1
                                    429 ;	./src/adc.c:49: return data_buff;
                                    430 ;	./src/adc.c:50: }
      000821 22               [24]  431 	ret
                                    432 	.area CSEG    (CODE)
                                    433 	.area CONST   (CODE)
                                    434 	.area XINIT   (CODE)
                                    435 	.area CABS    (ABS,CODE)
