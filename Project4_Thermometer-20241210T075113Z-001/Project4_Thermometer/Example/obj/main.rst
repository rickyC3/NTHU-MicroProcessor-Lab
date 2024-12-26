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
                                     12 	.globl _T0_isr
                                     13 	.globl _Initial7219
                                     14 	.globl _read_adc3202
                                     15 	.globl _I2C_RecvByte
                                     16 	.globl _I2C_SendByte
                                     17 	.globl _I2C_SendACK
                                     18 	.globl _I2C_Stop
                                     19 	.globl _I2C_Start
                                     20 	.globl _delay_ms
                                     21 	.globl _OLED_SetCursor
                                     22 	.globl _OLED_DisplayChar
                                     23 	.globl _OLED_Init
                                     24 	.globl _CY
                                     25 	.globl _AC
                                     26 	.globl _F0
                                     27 	.globl _RS1
                                     28 	.globl _RS0
                                     29 	.globl _OV
                                     30 	.globl _F1
                                     31 	.globl _P
                                     32 	.globl _PS
                                     33 	.globl _PT1
                                     34 	.globl _PX1
                                     35 	.globl _PT0
                                     36 	.globl _PX0
                                     37 	.globl _RD
                                     38 	.globl _WR
                                     39 	.globl _T1
                                     40 	.globl _T0
                                     41 	.globl _INT1
                                     42 	.globl _INT0
                                     43 	.globl _TXD
                                     44 	.globl _RXD
                                     45 	.globl _P3_7
                                     46 	.globl _P3_6
                                     47 	.globl _P3_5
                                     48 	.globl _P3_4
                                     49 	.globl _P3_3
                                     50 	.globl _P3_2
                                     51 	.globl _P3_1
                                     52 	.globl _P3_0
                                     53 	.globl _EA
                                     54 	.globl _ES
                                     55 	.globl _ET1
                                     56 	.globl _EX1
                                     57 	.globl _ET0
                                     58 	.globl _EX0
                                     59 	.globl _P2_7
                                     60 	.globl _P2_6
                                     61 	.globl _P2_5
                                     62 	.globl _P2_4
                                     63 	.globl _P2_3
                                     64 	.globl _P2_2
                                     65 	.globl _P2_1
                                     66 	.globl _P2_0
                                     67 	.globl _SM0
                                     68 	.globl _SM1
                                     69 	.globl _SM2
                                     70 	.globl _REN
                                     71 	.globl _TB8
                                     72 	.globl _RB8
                                     73 	.globl _TI
                                     74 	.globl _RI
                                     75 	.globl _P1_7
                                     76 	.globl _P1_6
                                     77 	.globl _P1_5
                                     78 	.globl _P1_4
                                     79 	.globl _P1_3
                                     80 	.globl _P1_2
                                     81 	.globl _P1_1
                                     82 	.globl _P1_0
                                     83 	.globl _TF1
                                     84 	.globl _TR1
                                     85 	.globl _TF0
                                     86 	.globl _TR0
                                     87 	.globl _IE1
                                     88 	.globl _IT1
                                     89 	.globl _IE0
                                     90 	.globl _IT0
                                     91 	.globl _P0_7
                                     92 	.globl _P0_6
                                     93 	.globl _P0_5
                                     94 	.globl _P0_4
                                     95 	.globl _P0_3
                                     96 	.globl _P0_2
                                     97 	.globl _P0_1
                                     98 	.globl _P0_0
                                     99 	.globl _B
                                    100 	.globl _ACC
                                    101 	.globl _PSW
                                    102 	.globl _IP
                                    103 	.globl _P3
                                    104 	.globl _IE
                                    105 	.globl _P2
                                    106 	.globl _SBUF
                                    107 	.globl _SCON
                                    108 	.globl _P1
                                    109 	.globl _TH1
                                    110 	.globl _TH0
                                    111 	.globl _TL1
                                    112 	.globl _TL0
                                    113 	.globl _TMOD
                                    114 	.globl _TCON
                                    115 	.globl _PCON
                                    116 	.globl _DPH
                                    117 	.globl _DPL
                                    118 	.globl _SP
                                    119 	.globl _P0
                                    120 	.globl _adc_value
                                    121 	.globl _temp
                                    122 	.globl _oled_out
                                    123 	.globl _cnt2
                                    124 	.globl _cnt
                                    125 	.globl _data_buf2
                                    126 	.globl _data_buf1
                                    127 	.globl __addr
                                    128 	.globl _readObjectTemp
                                    129 	.globl _readAmbientTemp
                                    130 	.globl _readTemp
                                    131 ;--------------------------------------------------------
                                    132 ; special function registers
                                    133 ;--------------------------------------------------------
                                    134 	.area RSEG    (ABS,DATA)
      000000                        135 	.org 0x0000
                           000080   136 _P0	=	0x0080
                           000081   137 _SP	=	0x0081
                           000082   138 _DPL	=	0x0082
                           000083   139 _DPH	=	0x0083
                           000087   140 _PCON	=	0x0087
                           000088   141 _TCON	=	0x0088
                           000089   142 _TMOD	=	0x0089
                           00008A   143 _TL0	=	0x008a
                           00008B   144 _TL1	=	0x008b
                           00008C   145 _TH0	=	0x008c
                           00008D   146 _TH1	=	0x008d
                           000090   147 _P1	=	0x0090
                           000098   148 _SCON	=	0x0098
                           000099   149 _SBUF	=	0x0099
                           0000A0   150 _P2	=	0x00a0
                           0000A8   151 _IE	=	0x00a8
                           0000B0   152 _P3	=	0x00b0
                           0000B8   153 _IP	=	0x00b8
                           0000D0   154 _PSW	=	0x00d0
                           0000E0   155 _ACC	=	0x00e0
                           0000F0   156 _B	=	0x00f0
                                    157 ;--------------------------------------------------------
                                    158 ; special function bits
                                    159 ;--------------------------------------------------------
                                    160 	.area RSEG    (ABS,DATA)
      000000                        161 	.org 0x0000
                           000080   162 _P0_0	=	0x0080
                           000081   163 _P0_1	=	0x0081
                           000082   164 _P0_2	=	0x0082
                           000083   165 _P0_3	=	0x0083
                           000084   166 _P0_4	=	0x0084
                           000085   167 _P0_5	=	0x0085
                           000086   168 _P0_6	=	0x0086
                           000087   169 _P0_7	=	0x0087
                           000088   170 _IT0	=	0x0088
                           000089   171 _IE0	=	0x0089
                           00008A   172 _IT1	=	0x008a
                           00008B   173 _IE1	=	0x008b
                           00008C   174 _TR0	=	0x008c
                           00008D   175 _TF0	=	0x008d
                           00008E   176 _TR1	=	0x008e
                           00008F   177 _TF1	=	0x008f
                           000090   178 _P1_0	=	0x0090
                           000091   179 _P1_1	=	0x0091
                           000092   180 _P1_2	=	0x0092
                           000093   181 _P1_3	=	0x0093
                           000094   182 _P1_4	=	0x0094
                           000095   183 _P1_5	=	0x0095
                           000096   184 _P1_6	=	0x0096
                           000097   185 _P1_7	=	0x0097
                           000098   186 _RI	=	0x0098
                           000099   187 _TI	=	0x0099
                           00009A   188 _RB8	=	0x009a
                           00009B   189 _TB8	=	0x009b
                           00009C   190 _REN	=	0x009c
                           00009D   191 _SM2	=	0x009d
                           00009E   192 _SM1	=	0x009e
                           00009F   193 _SM0	=	0x009f
                           0000A0   194 _P2_0	=	0x00a0
                           0000A1   195 _P2_1	=	0x00a1
                           0000A2   196 _P2_2	=	0x00a2
                           0000A3   197 _P2_3	=	0x00a3
                           0000A4   198 _P2_4	=	0x00a4
                           0000A5   199 _P2_5	=	0x00a5
                           0000A6   200 _P2_6	=	0x00a6
                           0000A7   201 _P2_7	=	0x00a7
                           0000A8   202 _EX0	=	0x00a8
                           0000A9   203 _ET0	=	0x00a9
                           0000AA   204 _EX1	=	0x00aa
                           0000AB   205 _ET1	=	0x00ab
                           0000AC   206 _ES	=	0x00ac
                           0000AF   207 _EA	=	0x00af
                           0000B0   208 _P3_0	=	0x00b0
                           0000B1   209 _P3_1	=	0x00b1
                           0000B2   210 _P3_2	=	0x00b2
                           0000B3   211 _P3_3	=	0x00b3
                           0000B4   212 _P3_4	=	0x00b4
                           0000B5   213 _P3_5	=	0x00b5
                           0000B6   214 _P3_6	=	0x00b6
                           0000B7   215 _P3_7	=	0x00b7
                           0000B0   216 _RXD	=	0x00b0
                           0000B1   217 _TXD	=	0x00b1
                           0000B2   218 _INT0	=	0x00b2
                           0000B3   219 _INT1	=	0x00b3
                           0000B4   220 _T0	=	0x00b4
                           0000B5   221 _T1	=	0x00b5
                           0000B6   222 _WR	=	0x00b6
                           0000B7   223 _RD	=	0x00b7
                           0000B8   224 _PX0	=	0x00b8
                           0000B9   225 _PT0	=	0x00b9
                           0000BA   226 _PX1	=	0x00ba
                           0000BB   227 _PT1	=	0x00bb
                           0000BC   228 _PS	=	0x00bc
                           0000D0   229 _P	=	0x00d0
                           0000D1   230 _F1	=	0x00d1
                           0000D2   231 _OV	=	0x00d2
                           0000D3   232 _RS0	=	0x00d3
                           0000D4   233 _RS1	=	0x00d4
                           0000D5   234 _F0	=	0x00d5
                           0000D6   235 _AC	=	0x00d6
                           0000D7   236 _CY	=	0x00d7
                                    237 ;--------------------------------------------------------
                                    238 ; overlayable register banks
                                    239 ;--------------------------------------------------------
                                    240 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        241 	.ds 8
                                    242 ;--------------------------------------------------------
                                    243 ; internal ram data
                                    244 ;--------------------------------------------------------
                                    245 	.area DSEG    (DATA)
      000008                        246 __addr::
      000008                        247 	.ds 1
      000009                        248 _data_buf1::
      000009                        249 	.ds 2
      00000B                        250 _data_buf2::
      00000B                        251 	.ds 2
      00000D                        252 _cnt::
      00000D                        253 	.ds 2
      00000F                        254 _cnt2::
      00000F                        255 	.ds 2
      000011                        256 _oled_out::
      000011                        257 	.ds 2
      000013                        258 _temp::
      000013                        259 	.ds 4
      000017                        260 _adc_value::
      000017                        261 	.ds 2
                                    262 ;--------------------------------------------------------
                                    263 ; overlayable items in internal ram 
                                    264 ;--------------------------------------------------------
                                    265 ;--------------------------------------------------------
                                    266 ; Stack segment in internal ram 
                                    267 ;--------------------------------------------------------
                                    268 	.area	SSEG
      000023                        269 __start__stack:
      000023                        270 	.ds	1
                                    271 
                                    272 ;--------------------------------------------------------
                                    273 ; indirectly addressable internal ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area ISEG    (DATA)
                                    276 ;--------------------------------------------------------
                                    277 ; absolute internal ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area IABS    (ABS,DATA)
                                    280 	.area IABS    (ABS,DATA)
                                    281 ;--------------------------------------------------------
                                    282 ; bit data
                                    283 ;--------------------------------------------------------
                                    284 	.area BSEG    (BIT)
      000000                        285 _T0_isr_sloc0_1_0:
      000000                        286 	.ds 1
                                    287 ;--------------------------------------------------------
                                    288 ; paged external ram data
                                    289 ;--------------------------------------------------------
                                    290 	.area PSEG    (PAG,XDATA)
                                    291 ;--------------------------------------------------------
                                    292 ; external ram data
                                    293 ;--------------------------------------------------------
                                    294 	.area XSEG    (XDATA)
                                    295 ;--------------------------------------------------------
                                    296 ; absolute external ram data
                                    297 ;--------------------------------------------------------
                                    298 	.area XABS    (ABS,XDATA)
                                    299 ;--------------------------------------------------------
                                    300 ; external initialized ram data
                                    301 ;--------------------------------------------------------
                                    302 	.area XISEG   (XDATA)
                                    303 	.area HOME    (CODE)
                                    304 	.area GSINIT0 (CODE)
                                    305 	.area GSINIT1 (CODE)
                                    306 	.area GSINIT2 (CODE)
                                    307 	.area GSINIT3 (CODE)
                                    308 	.area GSINIT4 (CODE)
                                    309 	.area GSINIT5 (CODE)
                                    310 	.area GSINIT  (CODE)
                                    311 	.area GSFINAL (CODE)
                                    312 	.area CSEG    (CODE)
                                    313 ;--------------------------------------------------------
                                    314 ; interrupt vector 
                                    315 ;--------------------------------------------------------
                                    316 	.area HOME    (CODE)
      000000                        317 __interrupt_vect:
      000000 02 00 11         [24]  318 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  319 	reti
      000004                        320 	.ds	7
      00000B 02 01 6D         [24]  321 	ljmp	_T0_isr
                                    322 ;--------------------------------------------------------
                                    323 ; global & static initialisations
                                    324 ;--------------------------------------------------------
                                    325 	.area HOME    (CODE)
                                    326 	.area GSINIT  (CODE)
                                    327 	.area GSFINAL (CODE)
                                    328 	.area GSINIT  (CODE)
                                    329 	.globl __sdcc_gsinit_startup
                                    330 	.globl __sdcc_program_startup
                                    331 	.globl __start__stack
                                    332 	.globl __mcs51_genXINIT
                                    333 	.globl __mcs51_genXRAMCLEAR
                                    334 	.globl __mcs51_genRAMCLEAR
                                    335 ;	./inc/MLX90614.h:16: uint8_t  _addr = 0xb4;    // 0x5a --> 0xb4
      00006A 75 08 B4         [24]  336 	mov	__addr,#0xb4
                                    337 ;	./src/main.c:10: int data_buf1, data_buf2, cnt = 0, cnt2 = 0, oled_out = 0;
      00006D E4               [12]  338 	clr	a
      00006E F5 0D            [12]  339 	mov	_cnt,a
      000070 F5 0E            [12]  340 	mov	(_cnt + 1),a
                                    341 ;	./src/main.c:10: float temp = 0.0;
      000072 F5 0F            [12]  342 	mov	_cnt2,a
      000074 F5 10            [12]  343 	mov	(_cnt2 + 1),a
                                    344 ;	./src/main.c:10: int data_buf1, data_buf2, cnt = 0, cnt2 = 0, oled_out = 0;
      000076 F5 11            [12]  345 	mov	_oled_out,a
      000078 F5 12            [12]  346 	mov	(_oled_out + 1),a
                                    347 ;	./src/main.c:11: float temp = 0.0;
      00007A F5 13            [12]  348 	mov	_temp,a
      00007C F5 14            [12]  349 	mov	(_temp + 1),a
      00007E F5 15            [12]  350 	mov	(_temp + 2),a
      000080 F5 16            [12]  351 	mov	(_temp + 3),a
                                    352 	.area GSFINAL (CODE)
      000082 02 00 0E         [24]  353 	ljmp	__sdcc_program_startup
                                    354 ;--------------------------------------------------------
                                    355 ; Home
                                    356 ;--------------------------------------------------------
                                    357 	.area HOME    (CODE)
                                    358 	.area HOME    (CODE)
      00000E                        359 __sdcc_program_startup:
      00000E 02 01 E9         [24]  360 	ljmp	_main
                                    361 ;	return from main will return to caller
                                    362 ;--------------------------------------------------------
                                    363 ; code
                                    364 ;--------------------------------------------------------
                                    365 	.area CSEG    (CODE)
                                    366 ;------------------------------------------------------------
                                    367 ;Allocation info for local variables in function 'readObjectTemp'
                                    368 ;------------------------------------------------------------
                                    369 ;	./inc/MLX90614.h:18: float readObjectTemp(void) {
                                    370 ;	-----------------------------------------
                                    371 ;	 function readObjectTemp
                                    372 ;	-----------------------------------------
      000085                        373 _readObjectTemp:
                           000007   374 	ar7 = 0x07
                           000006   375 	ar6 = 0x06
                           000005   376 	ar5 = 0x05
                           000004   377 	ar4 = 0x04
                           000003   378 	ar3 = 0x03
                           000002   379 	ar2 = 0x02
                           000001   380 	ar1 = 0x01
                           000000   381 	ar0 = 0x00
                                    382 ;	./inc/MLX90614.h:19: return readTemp(OBJECT_TEMP);
      000085 75 82 07         [24]  383 	mov	dpl,#0x07
                                    384 ;	./inc/MLX90614.h:20: }
      000088 02 00 91         [24]  385 	ljmp	_readTemp
                                    386 ;------------------------------------------------------------
                                    387 ;Allocation info for local variables in function 'readAmbientTemp'
                                    388 ;------------------------------------------------------------
                                    389 ;	./inc/MLX90614.h:22: float readAmbientTemp(void) {
                                    390 ;	-----------------------------------------
                                    391 ;	 function readAmbientTemp
                                    392 ;	-----------------------------------------
      00008B                        393 _readAmbientTemp:
                                    394 ;	./inc/MLX90614.h:23: return readTemp(AMBIENT_TEMP);
      00008B 75 82 06         [24]  395 	mov	dpl,#0x06
                                    396 ;	./inc/MLX90614.h:24: }
      00008E 02 00 91         [24]  397 	ljmp	_readTemp
                                    398 ;------------------------------------------------------------
                                    399 ;Allocation info for local variables in function 'readTemp'
                                    400 ;------------------------------------------------------------
                                    401 ;reg                       Allocated to registers r7 
                                    402 ;temp                      Allocated to registers r4 r5 r6 r7 
                                    403 ;tempData                  Allocated to registers r5 r4 
                                    404 ;pec                       Allocated to registers 
                                    405 ;------------------------------------------------------------
                                    406 ;	./inc/MLX90614.h:26: float readTemp(uint8_t reg) {
                                    407 ;	-----------------------------------------
                                    408 ;	 function readTemp
                                    409 ;	-----------------------------------------
      000091                        410 _readTemp:
      000091 AF 82            [24]  411 	mov	r7,dpl
                                    412 ;	./inc/MLX90614.h:31: I2C_Start();
      000093 C0 07            [24]  413 	push	ar7
      000095 12 05 DC         [24]  414 	lcall	_I2C_Start
                                    415 ;	./inc/MLX90614.h:32: I2C_SendByte(_addr);            // 0xb4
      000098 85 08 82         [24]  416 	mov	dpl,__addr
      00009B 12 06 16         [24]  417 	lcall	_I2C_SendByte
      00009E D0 07            [24]  418 	pop	ar7
                                    419 ;	./inc/MLX90614.h:33: I2C_SendByte(reg);
      0000A0 8F 82            [24]  420 	mov	dpl,r7
      0000A2 12 06 16         [24]  421 	lcall	_I2C_SendByte
                                    422 ;	./inc/MLX90614.h:34: SDA = 1;                        // pull up 2 wires to restart
                                    423 ;	assignBit
      0000A5 D2 81            [12]  424 	setb	_P0_1
                                    425 ;	./inc/MLX90614.h:35: SCL = 1;                        
                                    426 ;	assignBit
      0000A7 D2 80            [12]  427 	setb	_P0_0
                                    428 ;	./inc/MLX90614.h:36: I2C_Start();                    // restart
      0000A9 12 05 DC         [24]  429 	lcall	_I2C_Start
                                    430 ;	./inc/MLX90614.h:37: I2C_SendByte(_addr|0x01);       // 0xb4 --> 0xb5
      0000AC E5 08            [12]  431 	mov	a,__addr
      0000AE 44 01            [12]  432 	orl	a,#0x01
      0000B0 F5 82            [12]  433 	mov	dpl,a
      0000B2 12 06 16         [24]  434 	lcall	_I2C_SendByte
                                    435 ;	./inc/MLX90614.h:38: tempData = I2C_RecvByte();      // LSByte
      0000B5 12 06 3E         [24]  436 	lcall	_I2C_RecvByte
      0000B8 AF 82            [24]  437 	mov	r7,dpl
      0000BA 7E 00            [12]  438 	mov	r6,#0x00
                                    439 ;	./inc/MLX90614.h:39: I2C_SendACK(0);
                                    440 ;	assignBit
      0000BC C2 01            [12]  441 	clr	_I2C_SendACK_PARM_1
      0000BE C0 07            [24]  442 	push	ar7
      0000C0 C0 06            [24]  443 	push	ar6
      0000C2 12 05 F7         [24]  444 	lcall	_I2C_SendACK
                                    445 ;	./inc/MLX90614.h:40: tempData |= I2C_RecvByte() << 8;  // { MSByte , LSByte } 
      0000C5 12 06 3E         [24]  446 	lcall	_I2C_RecvByte
      0000C8 AD 82            [24]  447 	mov	r5,dpl
      0000CA D0 06            [24]  448 	pop	ar6
      0000CC D0 07            [24]  449 	pop	ar7
      0000CE 8D 04            [24]  450 	mov	ar4,r5
      0000D0 7D 00            [12]  451 	mov	r5,#0x00
      0000D2 EF               [12]  452 	mov	a,r7
      0000D3 42 05            [12]  453 	orl	ar5,a
      0000D5 EE               [12]  454 	mov	a,r6
      0000D6 42 04            [12]  455 	orl	ar4,a
                                    456 ;	./inc/MLX90614.h:41: I2C_SendACK(0);
                                    457 ;	assignBit
      0000D8 C2 01            [12]  458 	clr	_I2C_SendACK_PARM_1
      0000DA C0 05            [24]  459 	push	ar5
      0000DC C0 04            [24]  460 	push	ar4
      0000DE 12 05 F7         [24]  461 	lcall	_I2C_SendACK
                                    462 ;	./inc/MLX90614.h:42: pec = I2C_RecvByte();           // 8-bit pec 
      0000E1 12 06 3E         [24]  463 	lcall	_I2C_RecvByte
                                    464 ;	./inc/MLX90614.h:43: I2C_SendACK(1);
                                    465 ;	assignBit
      0000E4 D2 01            [12]  466 	setb	_I2C_SendACK_PARM_1
      0000E6 12 05 F7         [24]  467 	lcall	_I2C_SendACK
                                    468 ;	./inc/MLX90614.h:44: I2C_Stop();
      0000E9 12 05 EB         [24]  469 	lcall	_I2C_Stop
      0000EC D0 04            [24]  470 	pop	ar4
      0000EE D0 05            [24]  471 	pop	ar5
                                    472 ;	./inc/MLX90614.h:45: temp = tempData;               // raw 16-bit tempData 
      0000F0 8D 82            [24]  473 	mov	dpl,r5
      0000F2 8C 83            [24]  474 	mov	dph,r4
      0000F4 12 0A 5B         [24]  475 	lcall	___uint2fs
      0000F7 AC 82            [24]  476 	mov	r4,dpl
      0000F9 AD 83            [24]  477 	mov	r5,dph
      0000FB AE F0            [24]  478 	mov	r6,b
      0000FD FF               [12]  479 	mov	r7,a
                                    480 ;	./inc/MLX90614.h:46: temp *= 0.02;                  // calculate temperature in Celsius 
      0000FE C0 04            [24]  481 	push	ar4
      000100 C0 05            [24]  482 	push	ar5
      000102 C0 06            [24]  483 	push	ar6
      000104 C0 07            [24]  484 	push	ar7
      000106 90 D7 0A         [24]  485 	mov	dptr,#0xd70a
      000109 75 F0 A3         [24]  486 	mov	b,#0xa3
      00010C 74 3C            [12]  487 	mov	a,#0x3c
      00010E 12 08 37         [24]  488 	lcall	___fsmul
      000111 AC 82            [24]  489 	mov	r4,dpl
      000113 AD 83            [24]  490 	mov	r5,dph
      000115 AE F0            [24]  491 	mov	r6,b
      000117 FF               [12]  492 	mov	r7,a
      000118 E5 81            [12]  493 	mov	a,sp
      00011A 24 FC            [12]  494 	add	a,#0xfc
      00011C F5 81            [12]  495 	mov	sp,a
                                    496 ;	./inc/MLX90614.h:47: temp -= 273.15;
      00011E 74 33            [12]  497 	mov	a,#0x33
      000120 C0 E0            [24]  498 	push	acc
      000122 74 93            [12]  499 	mov	a,#0x93
      000124 C0 E0            [24]  500 	push	acc
      000126 74 88            [12]  501 	mov	a,#0x88
      000128 C0 E0            [24]  502 	push	acc
      00012A 74 43            [12]  503 	mov	a,#0x43
      00012C C0 E0            [24]  504 	push	acc
      00012E 8C 82            [24]  505 	mov	dpl,r4
      000130 8D 83            [24]  506 	mov	dph,r5
      000132 8E F0            [24]  507 	mov	b,r6
      000134 EF               [12]  508 	mov	a,r7
      000135 12 08 2C         [24]  509 	lcall	___fssub
      000138 AC 82            [24]  510 	mov	r4,dpl
      00013A AD 83            [24]  511 	mov	r5,dph
      00013C AE F0            [24]  512 	mov	r6,b
      00013E FF               [12]  513 	mov	r7,a
      00013F E5 81            [12]  514 	mov	a,sp
      000141 24 FC            [12]  515 	add	a,#0xfc
      000143 F5 81            [12]  516 	mov	sp,a
                                    517 ;	./inc/MLX90614.h:48: temp = temp * 10 ;             // in order to show 1 decimal bit
      000145 C0 04            [24]  518 	push	ar4
      000147 C0 05            [24]  519 	push	ar5
      000149 C0 06            [24]  520 	push	ar6
      00014B C0 07            [24]  521 	push	ar7
      00014D 90 00 00         [24]  522 	mov	dptr,#0x0000
      000150 75 F0 20         [24]  523 	mov	b,#0x20
      000153 74 41            [12]  524 	mov	a,#0x41
      000155 12 08 37         [24]  525 	lcall	___fsmul
      000158 AC 82            [24]  526 	mov	r4,dpl
      00015A AD 83            [24]  527 	mov	r5,dph
      00015C AE F0            [24]  528 	mov	r6,b
      00015E FF               [12]  529 	mov	r7,a
      00015F E5 81            [12]  530 	mov	a,sp
      000161 24 FC            [12]  531 	add	a,#0xfc
      000163 F5 81            [12]  532 	mov	sp,a
                                    533 ;	./inc/MLX90614.h:50: return temp;
      000165 8C 82            [24]  534 	mov	dpl,r4
      000167 8D 83            [24]  535 	mov	dph,r5
      000169 8E F0            [24]  536 	mov	b,r6
      00016B EF               [12]  537 	mov	a,r7
                                    538 ;	./inc/MLX90614.h:51: }
      00016C 22               [24]  539 	ret
                                    540 ;------------------------------------------------------------
                                    541 ;Allocation info for local variables in function 'T0_isr'
                                    542 ;------------------------------------------------------------
                                    543 ;	./src/main.c:14: void T0_isr(void) __interrupt (1)
                                    544 ;	-----------------------------------------
                                    545 ;	 function T0_isr
                                    546 ;	-----------------------------------------
      00016D                        547 _T0_isr:
      00016D C0 E0            [24]  548 	push	acc
      00016F C0 F0            [24]  549 	push	b
      000171 C0 07            [24]  550 	push	ar7
      000173 C0 06            [24]  551 	push	ar6
      000175 C0 D0            [24]  552 	push	psw
      000177 75 D0 00         [24]  553 	mov	psw,#0x00
                                    554 ;	./src/main.c:17: TH0 = (65536-1000) >> 8;
      00017A 75 8C FC         [24]  555 	mov	_TH0,#0xfc
                                    556 ;	./src/main.c:18: TL0 = (65536-1000) & 0xff;
      00017D 75 8A 18         [24]  557 	mov	_TL0,#0x18
                                    558 ;	./src/main.c:19: cnt++;
      000180 05 0D            [12]  559 	inc	_cnt
      000182 E4               [12]  560 	clr	a
      000183 B5 0D 02         [24]  561 	cjne	a,_cnt,00134$
      000186 05 0E            [12]  562 	inc	(_cnt + 1)
      000188                        563 00134$:
                                    564 ;	./src/main.c:20: if (cnt2 <= 8) P3_7 = (cnt2 & 1) ? (P3_7 ? 0 : 1) : 0;
      000188 C3               [12]  565 	clr	c
      000189 74 08            [12]  566 	mov	a,#0x08
      00018B 95 0F            [12]  567 	subb	a,_cnt2
      00018D 74 80            [12]  568 	mov	a,#(0x00 ^ 0x80)
      00018F 85 10 F0         [24]  569 	mov	b,(_cnt2 + 1)
      000192 63 F0 80         [24]  570 	xrl	b,#0x80
      000195 95 F0            [12]  571 	subb	a,b
      000197 92 00            [24]  572 	mov	_T0_isr_sloc0_1_0,c
      000199 40 1E            [24]  573 	jc	00102$
      00019B E5 0F            [12]  574 	mov	a,_cnt2
      00019D 30 E0 0F         [24]  575 	jnb	acc.0,00110$
      0001A0 30 B7 06         [24]  576 	jnb	_P3_7,00112$
      0001A3 7E 00            [12]  577 	mov	r6,#0x00
      0001A5 7F 00            [12]  578 	mov	r7,#0x00
      0001A7 80 0A            [24]  579 	sjmp	00111$
      0001A9                        580 00112$:
      0001A9 7E 01            [12]  581 	mov	r6,#0x01
      0001AB 7F 00            [12]  582 	mov	r7,#0x00
      0001AD 80 04            [24]  583 	sjmp	00111$
      0001AF                        584 00110$:
      0001AF 7E 00            [12]  585 	mov	r6,#0x00
      0001B1 7F 00            [12]  586 	mov	r7,#0x00
      0001B3                        587 00111$:
                                    588 ;	assignBit
      0001B3 EE               [12]  589 	mov	a,r6
      0001B4 4F               [12]  590 	orl	a,r7
      0001B5 24 FF            [12]  591 	add	a,#0xff
      0001B7 92 B7            [24]  592 	mov	_P3_7,c
      0001B9                        593 00102$:
                                    594 ;	./src/main.c:21: if (cnt >= 500) {
      0001B9 C3               [12]  595 	clr	c
      0001BA E5 0D            [12]  596 	mov	a,_cnt
      0001BC 94 F4            [12]  597 	subb	a,#0xf4
      0001BE E5 0E            [12]  598 	mov	a,(_cnt + 1)
      0001C0 64 80            [12]  599 	xrl	a,#0x80
      0001C2 94 81            [12]  600 	subb	a,#0x81
      0001C4 40 18            [24]  601 	jc	00108$
                                    602 ;	./src/main.c:22: cnt = 0;
      0001C6 E4               [12]  603 	clr	a
      0001C7 F5 0D            [12]  604 	mov	_cnt,a
      0001C9 F5 0E            [12]  605 	mov	(_cnt + 1),a
                                    606 ;	./src/main.c:23: if (cnt2 <= 8) 
      0001CB 20 00 0A         [24]  607 	jb	_T0_isr_sloc0_1_0,00104$
                                    608 ;	./src/main.c:24: cnt2++;
      0001CE 05 0F            [12]  609 	inc	_cnt2
      0001D0 E4               [12]  610 	clr	a
      0001D1 B5 0F 0A         [24]  611 	cjne	a,_cnt2,00108$
      0001D4 05 10            [12]  612 	inc	(_cnt2 + 1)
      0001D6 80 06            [24]  613 	sjmp	00108$
      0001D8                        614 00104$:
                                    615 ;	./src/main.c:25: else cnt2 = 9;
      0001D8 75 0F 09         [24]  616 	mov	_cnt2,#0x09
      0001DB 75 10 00         [24]  617 	mov	(_cnt2 + 1),#0x00
      0001DE                        618 00108$:
                                    619 ;	./src/main.c:27: }
      0001DE D0 D0            [24]  620 	pop	psw
      0001E0 D0 06            [24]  621 	pop	ar6
      0001E2 D0 07            [24]  622 	pop	ar7
      0001E4 D0 F0            [24]  623 	pop	b
      0001E6 D0 E0            [24]  624 	pop	acc
      0001E8 32               [24]  625 	reti
                                    626 ;	eliminated unneeded push/pop dpl
                                    627 ;	eliminated unneeded push/pop dph
                                    628 ;------------------------------------------------------------
                                    629 ;Allocation info for local variables in function 'main'
                                    630 ;------------------------------------------------------------
                                    631 ;	./src/main.c:29: int main() {
                                    632 ;	-----------------------------------------
                                    633 ;	 function main
                                    634 ;	-----------------------------------------
      0001E9                        635 _main:
                                    636 ;	./src/main.c:30: TMOD = 0x01;						//set Timer1 mode0 & Timer0 mode1
      0001E9 75 89 01         [24]  637 	mov	_TMOD,#0x01
                                    638 ;	./src/main.c:31: TH0 = (65536-1000) / 256;
      0001EC 75 8C FC         [24]  639 	mov	_TH0,#0xfc
                                    640 ;	./src/main.c:32: TL0 = (65536-1000) % 256;
      0001EF 75 8A 18         [24]  641 	mov	_TL0,#0x18
                                    642 ;	./src/main.c:33: ET0 = 1;							//Enable Timer0 interrupt
                                    643 ;	assignBit
      0001F2 D2 A9            [12]  644 	setb	_ET0
                                    645 ;	./src/main.c:34: EA = 1;								//Enable all interrupt
                                    646 ;	assignBit
      0001F4 D2 AF            [12]  647 	setb	_EA
                                    648 ;	./src/main.c:35: TR0 = 0;							//Enable Timer0
                                    649 ;	assignBit
      0001F6 C2 8C            [12]  650 	clr	_TR0
                                    651 ;	./src/main.c:36: P3_7 = 0;
                                    652 ;	assignBit
      0001F8 C2 B7            [12]  653 	clr	_P3_7
                                    654 ;	./src/main.c:37: TR0 = 0;    
                                    655 ;	assignBit
      0001FA C2 8C            [12]  656 	clr	_TR0
                                    657 ;	./src/main.c:39: DOUT = 1;                           //Setting gpio input mode
                                    658 ;	assignBit
      0001FC D2 A2            [12]  659 	setb	_P2_2
                                    660 ;	./src/main.c:40: LOAD = 1;  
                                    661 ;	assignBit
      0001FE D2 A1            [12]  662 	setb	_P2_1
                                    663 ;	./src/main.c:41: CLK = 0;
                                    664 ;	assignBit
      000200 C2 A0            [12]  665 	clr	_P2_0
                                    666 ;	./src/main.c:42: DIN = 0;
                                    667 ;	assignBit
      000202 C2 A1            [12]  668 	clr	_P2_1
                                    669 ;	./src/main.c:44: OLED_Init();		                // Check oled_i2c.c file for SCL,SDA pin connection
      000204 12 06 CE         [24]  670 	lcall	_OLED_Init
                                    671 ;	./src/main.c:45: OLED_SetCursor(0,0);                // Set cursor at 0th-line 0th-Position
      000207 75 1F 00         [24]  672 	mov	_OLED_SetCursor_PARM_2,#0x00
      00020A 75 82 00         [24]  673 	mov	dpl,#0x00
      00020D 12 07 E4         [24]  674 	lcall	_OLED_SetCursor
                                    675 ;	./src/main.c:46: Initial7219();
      000210 12 05 9A         [24]  676 	lcall	_Initial7219
                                    677 ;	./src/main.c:48: while(1) {
      000213                        678 00110$:
                                    679 ;	./src/main.c:49: data_buf1 = readAmbientTemp();
      000213 12 00 8B         [24]  680 	lcall	_readAmbientTemp
      000216 12 0A 27         [24]  681 	lcall	___fs2sint
      000219 85 82 09         [24]  682 	mov	_data_buf1,dpl
      00021C 85 83 0A         [24]  683 	mov	(_data_buf1 + 1),dph
                                    684 ;	./src/main.c:50: data_buf2 = readObjectTemp();
      00021F 12 00 85         [24]  685 	lcall	_readObjectTemp
      000222 12 0A 27         [24]  686 	lcall	___fs2sint
      000225 85 82 0B         [24]  687 	mov	_data_buf2,dpl
      000228 85 83 0C         [24]  688 	mov	(_data_buf2 + 1),dph
                                    689 ;	./src/main.c:51: adc_value = read_adc3202(1);
      00022B 75 82 01         [24]  690 	mov	dpl,#0x01
      00022E 12 04 9F         [24]  691 	lcall	_read_adc3202
                                    692 ;	./src/main.c:53: oled_out = 62284 / (adc_value * (5 * 1000.0 / 4096.0)) - 14;
      000231 85 82 17         [24]  693 	mov	_adc_value,dpl
      000234 85 83 18         [24]  694 	mov  (_adc_value + 1),dph
      000237 12 0A 5B         [24]  695 	lcall	___uint2fs
      00023A AC 82            [24]  696 	mov	r4,dpl
      00023C AD 83            [24]  697 	mov	r5,dph
      00023E AE F0            [24]  698 	mov	r6,b
      000240 FF               [12]  699 	mov	r7,a
      000241 C0 04            [24]  700 	push	ar4
      000243 C0 05            [24]  701 	push	ar5
      000245 C0 06            [24]  702 	push	ar6
      000247 C0 07            [24]  703 	push	ar7
      000249 90 40 00         [24]  704 	mov	dptr,#0x4000
      00024C 75 F0 9C         [24]  705 	mov	b,#0x9c
      00024F 74 3F            [12]  706 	mov	a,#0x3f
      000251 12 08 37         [24]  707 	lcall	___fsmul
      000254 AC 82            [24]  708 	mov	r4,dpl
      000256 AD 83            [24]  709 	mov	r5,dph
      000258 AE F0            [24]  710 	mov	r6,b
      00025A FF               [12]  711 	mov	r7,a
      00025B E5 81            [12]  712 	mov	a,sp
      00025D 24 FC            [12]  713 	add	a,#0xfc
      00025F F5 81            [12]  714 	mov	sp,a
      000261 C0 04            [24]  715 	push	ar4
      000263 C0 05            [24]  716 	push	ar5
      000265 C0 06            [24]  717 	push	ar6
      000267 C0 07            [24]  718 	push	ar7
      000269 90 4C 00         [24]  719 	mov	dptr,#0x4c00
      00026C 75 F0 73         [24]  720 	mov	b,#0x73
      00026F 74 47            [12]  721 	mov	a,#0x47
      000271 12 0A D0         [24]  722 	lcall	___fsdiv
      000274 AC 82            [24]  723 	mov	r4,dpl
      000276 AD 83            [24]  724 	mov	r5,dph
      000278 AE F0            [24]  725 	mov	r6,b
      00027A FF               [12]  726 	mov	r7,a
      00027B E5 81            [12]  727 	mov	a,sp
      00027D 24 FC            [12]  728 	add	a,#0xfc
      00027F F5 81            [12]  729 	mov	sp,a
      000281 E4               [12]  730 	clr	a
      000282 C0 E0            [24]  731 	push	acc
      000284 C0 E0            [24]  732 	push	acc
      000286 74 60            [12]  733 	mov	a,#0x60
      000288 C0 E0            [24]  734 	push	acc
      00028A 74 41            [12]  735 	mov	a,#0x41
      00028C C0 E0            [24]  736 	push	acc
      00028E 8C 82            [24]  737 	mov	dpl,r4
      000290 8D 83            [24]  738 	mov	dph,r5
      000292 8E F0            [24]  739 	mov	b,r6
      000294 EF               [12]  740 	mov	a,r7
      000295 12 08 2C         [24]  741 	lcall	___fssub
      000298 AC 82            [24]  742 	mov	r4,dpl
      00029A AD 83            [24]  743 	mov	r5,dph
      00029C AE F0            [24]  744 	mov	r6,b
      00029E FF               [12]  745 	mov	r7,a
      00029F E5 81            [12]  746 	mov	a,sp
      0002A1 24 FC            [12]  747 	add	a,#0xfc
      0002A3 F5 81            [12]  748 	mov	sp,a
      0002A5 8C 82            [24]  749 	mov	dpl,r4
      0002A7 8D 83            [24]  750 	mov	dph,r5
      0002A9 8E F0            [24]  751 	mov	b,r6
      0002AB EF               [12]  752 	mov	a,r7
      0002AC 12 0A 27         [24]  753 	lcall	___fs2sint
      0002AF 85 82 11         [24]  754 	mov	_oled_out,dpl
      0002B2 85 83 12         [24]  755 	mov	(_oled_out + 1),dph
                                    756 ;	./src/main.c:54: OLED_SetCursor(0, 60);
      0002B5 75 1F 3C         [24]  757 	mov	_OLED_SetCursor_PARM_2,#0x3c
      0002B8 75 82 00         [24]  758 	mov	dpl,#0x00
      0002BB 12 07 E4         [24]  759 	lcall	_OLED_SetCursor
                                    760 ;	./src/main.c:55: if (oled_out > 0) {
      0002BE C3               [12]  761 	clr	c
      0002BF E4               [12]  762 	clr	a
      0002C0 95 11            [12]  763 	subb	a,_oled_out
      0002C2 74 80            [12]  764 	mov	a,#(0x00 ^ 0x80)
      0002C4 85 12 F0         [24]  765 	mov	b,(_oled_out + 1)
      0002C7 63 F0 80         [24]  766 	xrl	b,#0x80
      0002CA 95 F0            [12]  767 	subb	a,b
      0002CC 50 63            [24]  768 	jnc	00102$
                                    769 ;	./src/main.c:56: OLED_DisplayChar(oled_out % 1000 / 100 + '0');
      0002CE 75 21 E8         [24]  770 	mov	__modsint_PARM_2,#0xe8
      0002D1 75 22 03         [24]  771 	mov	(__modsint_PARM_2 + 1),#0x03
      0002D4 85 11 82         [24]  772 	mov	dpl,_oled_out
      0002D7 85 12 83         [24]  773 	mov	dph,(_oled_out + 1)
      0002DA 12 0B AF         [24]  774 	lcall	__modsint
      0002DD 75 21 64         [24]  775 	mov	__divsint_PARM_2,#0x64
      0002E0 75 22 00         [24]  776 	mov	(__divsint_PARM_2 + 1),#0x00
      0002E3 12 0B F8         [24]  777 	lcall	__divsint
      0002E6 AE 82            [24]  778 	mov	r6,dpl
      0002E8 74 30            [12]  779 	mov	a,#0x30
      0002EA 2E               [12]  780 	add	a,r6
      0002EB F5 82            [12]  781 	mov	dpl,a
      0002ED 12 07 3D         [24]  782 	lcall	_OLED_DisplayChar
                                    783 ;	./src/main.c:57: OLED_DisplayChar(oled_out % 100 / 10 + '0');
      0002F0 75 21 64         [24]  784 	mov	__modsint_PARM_2,#0x64
      0002F3 75 22 00         [24]  785 	mov	(__modsint_PARM_2 + 1),#0x00
      0002F6 85 11 82         [24]  786 	mov	dpl,_oled_out
      0002F9 85 12 83         [24]  787 	mov	dph,(_oled_out + 1)
      0002FC 12 0B AF         [24]  788 	lcall	__modsint
      0002FF 75 21 0A         [24]  789 	mov	__divsint_PARM_2,#0x0a
      000302 75 22 00         [24]  790 	mov	(__divsint_PARM_2 + 1),#0x00
      000305 12 0B F8         [24]  791 	lcall	__divsint
      000308 AE 82            [24]  792 	mov	r6,dpl
      00030A 74 30            [12]  793 	mov	a,#0x30
      00030C 2E               [12]  794 	add	a,r6
      00030D F5 82            [12]  795 	mov	dpl,a
      00030F 12 07 3D         [24]  796 	lcall	_OLED_DisplayChar
                                    797 ;	./src/main.c:58: OLED_DisplayChar('.');
      000312 75 82 2E         [24]  798 	mov	dpl,#0x2e
      000315 12 07 3D         [24]  799 	lcall	_OLED_DisplayChar
                                    800 ;	./src/main.c:59: OLED_DisplayChar(oled_out % 10 / 1 + '0');
      000318 75 21 0A         [24]  801 	mov	__modsint_PARM_2,#0x0a
      00031B 75 22 00         [24]  802 	mov	(__modsint_PARM_2 + 1),#0x00
      00031E 85 11 82         [24]  803 	mov	dpl,_oled_out
      000321 85 12 83         [24]  804 	mov	dph,(_oled_out + 1)
      000324 12 0B AF         [24]  805 	lcall	__modsint
      000327 AE 82            [24]  806 	mov	r6,dpl
      000329 74 30            [12]  807 	mov	a,#0x30
      00032B 2E               [12]  808 	add	a,r6
      00032C F5 82            [12]  809 	mov	dpl,a
      00032E 12 07 3D         [24]  810 	lcall	_OLED_DisplayChar
      000331                        811 00102$:
                                    812 ;	./src/main.c:62: OLED_SetCursor(2, 60);
      000331 75 1F 3C         [24]  813 	mov	_OLED_SetCursor_PARM_2,#0x3c
      000334 75 82 02         [24]  814 	mov	dpl,#0x02
      000337 12 07 E4         [24]  815 	lcall	_OLED_SetCursor
                                    816 ;	./src/main.c:63: OLED_DisplayChar(data_buf2 % 1000 / 100 + '0');
      00033A 75 21 E8         [24]  817 	mov	__modsint_PARM_2,#0xe8
      00033D 75 22 03         [24]  818 	mov	(__modsint_PARM_2 + 1),#0x03
      000340 85 0B 82         [24]  819 	mov	dpl,_data_buf2
      000343 85 0C 83         [24]  820 	mov	dph,(_data_buf2 + 1)
      000346 12 0B AF         [24]  821 	lcall	__modsint
      000349 75 21 64         [24]  822 	mov	__divsint_PARM_2,#0x64
      00034C 75 22 00         [24]  823 	mov	(__divsint_PARM_2 + 1),#0x00
      00034F 12 0B F8         [24]  824 	lcall	__divsint
      000352 AE 82            [24]  825 	mov	r6,dpl
      000354 74 30            [12]  826 	mov	a,#0x30
      000356 2E               [12]  827 	add	a,r6
      000357 F5 82            [12]  828 	mov	dpl,a
      000359 12 07 3D         [24]  829 	lcall	_OLED_DisplayChar
                                    830 ;	./src/main.c:64: OLED_DisplayChar(data_buf2 % 100 / 10 + '0');
      00035C 75 21 64         [24]  831 	mov	__modsint_PARM_2,#0x64
      00035F 75 22 00         [24]  832 	mov	(__modsint_PARM_2 + 1),#0x00
      000362 85 0B 82         [24]  833 	mov	dpl,_data_buf2
      000365 85 0C 83         [24]  834 	mov	dph,(_data_buf2 + 1)
      000368 12 0B AF         [24]  835 	lcall	__modsint
      00036B 75 21 0A         [24]  836 	mov	__divsint_PARM_2,#0x0a
      00036E 75 22 00         [24]  837 	mov	(__divsint_PARM_2 + 1),#0x00
      000371 12 0B F8         [24]  838 	lcall	__divsint
      000374 AE 82            [24]  839 	mov	r6,dpl
      000376 74 30            [12]  840 	mov	a,#0x30
      000378 2E               [12]  841 	add	a,r6
      000379 F5 82            [12]  842 	mov	dpl,a
      00037B 12 07 3D         [24]  843 	lcall	_OLED_DisplayChar
                                    844 ;	./src/main.c:65: OLED_DisplayChar('.');
      00037E 75 82 2E         [24]  845 	mov	dpl,#0x2e
      000381 12 07 3D         [24]  846 	lcall	_OLED_DisplayChar
                                    847 ;	./src/main.c:66: OLED_DisplayChar(data_buf2 % 10 / 1 + '0');
      000384 75 21 0A         [24]  848 	mov	__modsint_PARM_2,#0x0a
      000387 75 22 00         [24]  849 	mov	(__modsint_PARM_2 + 1),#0x00
      00038A 85 0B 82         [24]  850 	mov	dpl,_data_buf2
      00038D 85 0C 83         [24]  851 	mov	dph,(_data_buf2 + 1)
      000390 12 0B AF         [24]  852 	lcall	__modsint
      000393 AE 82            [24]  853 	mov	r6,dpl
      000395 74 30            [12]  854 	mov	a,#0x30
      000397 2E               [12]  855 	add	a,r6
      000398 F5 82            [12]  856 	mov	dpl,a
      00039A 12 07 3D         [24]  857 	lcall	_OLED_DisplayChar
                                    858 ;	./src/main.c:69: if (oled_out > 10 && oled_out < 50) {
      00039D C3               [12]  859 	clr	c
      00039E 74 0A            [12]  860 	mov	a,#0x0a
      0003A0 95 11            [12]  861 	subb	a,_oled_out
      0003A2 74 80            [12]  862 	mov	a,#(0x00 ^ 0x80)
      0003A4 85 12 F0         [24]  863 	mov	b,(_oled_out + 1)
      0003A7 63 F0 80         [24]  864 	xrl	b,#0x80
      0003AA 95 F0            [12]  865 	subb	a,b
      0003AC 40 03            [24]  866 	jc	00135$
      0003AE 02 04 3E         [24]  867 	ljmp	00106$
      0003B1                        868 00135$:
      0003B1 C3               [12]  869 	clr	c
      0003B2 E5 11            [12]  870 	mov	a,_oled_out
      0003B4 94 32            [12]  871 	subb	a,#0x32
      0003B6 E5 12            [12]  872 	mov	a,(_oled_out + 1)
      0003B8 64 80            [12]  873 	xrl	a,#0x80
      0003BA 94 80            [12]  874 	subb	a,#0x80
      0003BC 40 03            [24]  875 	jc	00136$
      0003BE 02 04 3E         [24]  876 	ljmp	00106$
      0003C1                        877 00136$:
                                    878 ;	./src/main.c:70: TR0 = 1;
                                    879 ;	assignBit
      0003C1 D2 8C            [12]  880 	setb	_TR0
                                    881 ;	./src/main.c:71: if (cnt2 == 8) {
      0003C3 74 08            [12]  882 	mov	a,#0x08
      0003C5 B5 0F 06         [24]  883 	cjne	a,_cnt2,00137$
      0003C8 E4               [12]  884 	clr	a
      0003C9 B5 10 02         [24]  885 	cjne	a,(_cnt2 + 1),00137$
      0003CC 80 02            [24]  886 	sjmp	00138$
      0003CE                        887 00137$:
      0003CE 80 75            [24]  888 	sjmp	00107$
      0003D0                        889 00138$:
                                    890 ;	./src/main.c:72: OLED_SetCursor(6, 60);
      0003D0 75 1F 3C         [24]  891 	mov	_OLED_SetCursor_PARM_2,#0x3c
      0003D3 75 82 06         [24]  892 	mov	dpl,#0x06
      0003D6 12 07 E4         [24]  893 	lcall	_OLED_SetCursor
                                    894 ;	./src/main.c:73: OLED_DisplayChar(data_buf2 % 1000 / 100 + '0');
      0003D9 75 21 E8         [24]  895 	mov	__modsint_PARM_2,#0xe8
      0003DC 75 22 03         [24]  896 	mov	(__modsint_PARM_2 + 1),#0x03
      0003DF 85 0B 82         [24]  897 	mov	dpl,_data_buf2
      0003E2 85 0C 83         [24]  898 	mov	dph,(_data_buf2 + 1)
      0003E5 12 0B AF         [24]  899 	lcall	__modsint
      0003E8 75 21 64         [24]  900 	mov	__divsint_PARM_2,#0x64
      0003EB 75 22 00         [24]  901 	mov	(__divsint_PARM_2 + 1),#0x00
      0003EE 12 0B F8         [24]  902 	lcall	__divsint
      0003F1 AE 82            [24]  903 	mov	r6,dpl
      0003F3 74 30            [12]  904 	mov	a,#0x30
      0003F5 2E               [12]  905 	add	a,r6
      0003F6 F5 82            [12]  906 	mov	dpl,a
      0003F8 12 07 3D         [24]  907 	lcall	_OLED_DisplayChar
                                    908 ;	./src/main.c:74: OLED_DisplayChar(data_buf2 % 100 / 10 + '0');
      0003FB 75 21 64         [24]  909 	mov	__modsint_PARM_2,#0x64
      0003FE 75 22 00         [24]  910 	mov	(__modsint_PARM_2 + 1),#0x00
      000401 85 0B 82         [24]  911 	mov	dpl,_data_buf2
      000404 85 0C 83         [24]  912 	mov	dph,(_data_buf2 + 1)
      000407 12 0B AF         [24]  913 	lcall	__modsint
      00040A 75 21 0A         [24]  914 	mov	__divsint_PARM_2,#0x0a
      00040D 75 22 00         [24]  915 	mov	(__divsint_PARM_2 + 1),#0x00
      000410 12 0B F8         [24]  916 	lcall	__divsint
      000413 AE 82            [24]  917 	mov	r6,dpl
      000415 74 30            [12]  918 	mov	a,#0x30
      000417 2E               [12]  919 	add	a,r6
      000418 F5 82            [12]  920 	mov	dpl,a
      00041A 12 07 3D         [24]  921 	lcall	_OLED_DisplayChar
                                    922 ;	./src/main.c:75: OLED_DisplayChar('.');
      00041D 75 82 2E         [24]  923 	mov	dpl,#0x2e
      000420 12 07 3D         [24]  924 	lcall	_OLED_DisplayChar
                                    925 ;	./src/main.c:76: OLED_DisplayChar(data_buf2 % 10 / 1 + '0');
      000423 75 21 0A         [24]  926 	mov	__modsint_PARM_2,#0x0a
      000426 75 22 00         [24]  927 	mov	(__modsint_PARM_2 + 1),#0x00
      000429 85 0B 82         [24]  928 	mov	dpl,_data_buf2
      00042C 85 0C 83         [24]  929 	mov	dph,(_data_buf2 + 1)
      00042F 12 0B AF         [24]  930 	lcall	__modsint
      000432 AE 82            [24]  931 	mov	r6,dpl
      000434 74 30            [12]  932 	mov	a,#0x30
      000436 2E               [12]  933 	add	a,r6
      000437 F5 82            [12]  934 	mov	dpl,a
      000439 12 07 3D         [24]  935 	lcall	_OLED_DisplayChar
      00043C 80 07            [24]  936 	sjmp	00107$
      00043E                        937 00106$:
                                    938 ;	./src/main.c:79: TR0 = 0;
                                    939 ;	assignBit
      00043E C2 8C            [12]  940 	clr	_TR0
                                    941 ;	./src/main.c:80: cnt2 = 0;
      000440 E4               [12]  942 	clr	a
      000441 F5 0F            [12]  943 	mov	_cnt2,a
      000443 F5 10            [12]  944 	mov	(_cnt2 + 1),a
      000445                        945 00107$:
                                    946 ;	./src/main.c:82: delay_ms(100);
      000445 90 00 64         [24]  947 	mov	dptr,#0x0064
      000448 12 04 EA         [24]  948 	lcall	_delay_ms
                                    949 ;	./src/main.c:84: }
      00044B 02 02 13         [24]  950 	ljmp	00110$
                                    951 	.area CSEG    (CODE)
                                    952 	.area CONST   (CODE)
                                    953 	.area XINIT   (CODE)
                                    954 	.area CABS    (ABS,CODE)
