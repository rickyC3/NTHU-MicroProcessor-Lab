                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.2 #14350 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _T0_isr
                                     13 	.globl _read_adc3202
                                     14 	.globl _I2C_RecvByte
                                     15 	.globl _I2C_SendByte
                                     16 	.globl _I2C_SendACK
                                     17 	.globl _I2C_Stop
                                     18 	.globl _I2C_Start
                                     19 	.globl _delay_ms
                                     20 	.globl _OLED_SetCursor
                                     21 	.globl _OLED_DisplayString
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
                                    268 	.area SSEG
      000021                        269 __start__stack:
      000021                        270 	.ds	1
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
                                    292 ; uninitialized external ram data
                                    293 ;--------------------------------------------------------
                                    294 	.area XSEG    (XDATA)
                                    295 ;--------------------------------------------------------
                                    296 ; absolute external ram data
                                    297 ;--------------------------------------------------------
                                    298 	.area XABS    (ABS,XDATA)
                                    299 ;--------------------------------------------------------
                                    300 ; initialized external ram data
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
                                    337 ;	./src/main.c:9: int data_buf1, data_buf2, cnt = 0, cnt2 = 0, oled_out = 0;
      00006D E4               [12]  338 	clr	a
      00006E F5 0D            [12]  339 	mov	_cnt,a
      000070 F5 0E            [12]  340 	mov	(_cnt + 1),a
                                    341 ;	./src/main.c:9: float temp = 0.0;
      000072 F5 0F            [12]  342 	mov	_cnt2,a
      000074 F5 10            [12]  343 	mov	(_cnt2 + 1),a
                                    344 ;	./src/main.c:9: int data_buf1, data_buf2, cnt = 0, cnt2 = 0, oled_out = 0;
      000076 F5 11            [12]  345 	mov	_oled_out,a
      000078 F5 12            [12]  346 	mov	(_oled_out + 1),a
                                    347 ;	./src/main.c:10: float temp = 0.0;
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
      00000E 02 01 DE         [24]  360 	ljmp	_main
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
      000095 12 05 84         [24]  414 	lcall	_I2C_Start
                                    415 ;	./inc/MLX90614.h:32: I2C_SendByte(_addr);            // 0xb4
      000098 85 08 82         [24]  416 	mov	dpl,__addr
      00009B 12 05 BE         [24]  417 	lcall	_I2C_SendByte
      00009E D0 07            [24]  418 	pop	ar7
                                    419 ;	./inc/MLX90614.h:33: I2C_SendByte(reg);
      0000A0 8F 82            [24]  420 	mov	dpl,r7
      0000A2 12 05 BE         [24]  421 	lcall	_I2C_SendByte
                                    422 ;	./inc/MLX90614.h:34: SDA = 1;                        // pull up 2 wires to restart
                                    423 ;	assignBit
      0000A5 D2 81            [12]  424 	setb	_P0_1
                                    425 ;	./inc/MLX90614.h:35: SCL = 1;                        
                                    426 ;	assignBit
      0000A7 D2 80            [12]  427 	setb	_P0_0
                                    428 ;	./inc/MLX90614.h:36: I2C_Start();                    // restart
      0000A9 12 05 84         [24]  429 	lcall	_I2C_Start
                                    430 ;	./inc/MLX90614.h:37: I2C_SendByte(_addr|0x01);       // 0xb4 --> 0xb5
      0000AC 74 01            [12]  431 	mov	a,#0x01
      0000AE 45 08            [12]  432 	orl	a,__addr
      0000B0 F5 82            [12]  433 	mov	dpl,a
      0000B2 12 05 BE         [24]  434 	lcall	_I2C_SendByte
                                    435 ;	./inc/MLX90614.h:38: tempData = I2C_RecvByte();      // LSByte
      0000B5 12 05 E6         [24]  436 	lcall	_I2C_RecvByte
      0000B8 AF 82            [24]  437 	mov	r7,dpl
      0000BA 7E 00            [12]  438 	mov	r6,#0x00
                                    439 ;	./inc/MLX90614.h:39: I2C_SendACK(0);
                                    440 ;	assignBit
      0000BC C2 01            [12]  441 	clr	_I2C_SendACK_PARM_1
      0000BE C0 07            [24]  442 	push	ar7
      0000C0 C0 06            [24]  443 	push	ar6
      0000C2 12 05 9F         [24]  444 	lcall	_I2C_SendACK
                                    445 ;	./inc/MLX90614.h:40: tempData |= I2C_RecvByte() << 8;  // { MSByte , LSByte } 
      0000C5 12 05 E6         [24]  446 	lcall	_I2C_RecvByte
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
      0000DE 12 05 9F         [24]  461 	lcall	_I2C_SendACK
                                    462 ;	./inc/MLX90614.h:42: pec = I2C_RecvByte();           // 8-bit pec 
      0000E1 12 05 E6         [24]  463 	lcall	_I2C_RecvByte
                                    464 ;	./inc/MLX90614.h:43: I2C_SendACK(1);
                                    465 ;	assignBit
      0000E4 D2 01            [12]  466 	setb	_I2C_SendACK_PARM_1
      0000E6 12 05 9F         [24]  467 	lcall	_I2C_SendACK
                                    468 ;	./inc/MLX90614.h:44: I2C_Stop();
      0000E9 12 05 93         [24]  469 	lcall	_I2C_Stop
      0000EC D0 04            [24]  470 	pop	ar4
      0000EE D0 05            [24]  471 	pop	ar5
                                    472 ;	./inc/MLX90614.h:45: temp = tempData;               // raw 16-bit tempData 
      0000F0 8D 82            [24]  473 	mov	dpl,r5
      0000F2 8C 83            [24]  474 	mov	dph,r4
      0000F4 12 0A 1A         [24]  475 	lcall	___uint2fs
      0000F7 AC 82            [24]  476 	mov	r4,dpl
      0000F9 AD 83            [24]  477 	mov	r5,dph
      0000FB AE F0            [24]  478 	mov	r6,b
      0000FD FF               [12]  479 	mov	r7,a
                                    480 ;	./inc/MLX90614.h:46: temp *= 0.02;                  // calculate temperature in Celsius 
      0000FE C0 04            [24]  481 	push	ar4
      000100 C0 05            [24]  482 	push	ar5
      000102 C0 06            [24]  483 	push	ar6
      000104 C0 07            [24]  484 	push	ar7
                                    485 ;	./inc/MLX90614.h:47: temp -= 273.15;
      000106 90 D7 0A         [24]  486 	mov	dptr,#0xd70a
      000109 75 F0 A3         [24]  487 	mov	b,#0xa3
      00010C 74 3C            [12]  488 	mov	a,#0x3c
      00010E 12 07 F6         [24]  489 	lcall	___fsmul
      000111 AC 82            [24]  490 	mov	r4,dpl
      000113 AD 83            [24]  491 	mov	r5,dph
      000115 AE F0            [24]  492 	mov	r6,b
      000117 FF               [12]  493 	mov	r7,a
      000118 E5 81            [12]  494 	mov	a,sp
      00011A 24 FC            [12]  495 	add	a,#0xfc
      00011C F5 81            [12]  496 	mov	sp,a
      00011E 74 33            [12]  497 	mov	a,#0x33
      000120 C0 E0            [24]  498 	push	acc
      000122 74 93            [12]  499 	mov	a,#0x93
      000124 C0 E0            [24]  500 	push	acc
      000126 74 88            [12]  501 	mov	a,#0x88
      000128 C0 E0            [24]  502 	push	acc
      00012A 74 43            [12]  503 	mov	a,#0x43
      00012C C0 E0            [24]  504 	push	acc
                                    505 ;	./inc/MLX90614.h:48: temp = temp * 10 ;             // in order to show 1 decimal bit
      00012E 8C 82            [24]  506 	mov	dpl,r4
      000130 8D 83            [24]  507 	mov	dph,r5
      000132 8E F0            [24]  508 	mov	b,r6
      000134 EF               [12]  509 	mov	a,r7
      000135 12 07 EB         [24]  510 	lcall	___fssub
      000138 AC 82            [24]  511 	mov	r4,dpl
      00013A AD 83            [24]  512 	mov	r5,dph
      00013C AE F0            [24]  513 	mov	r6,b
      00013E FF               [12]  514 	mov	r7,a
      00013F E5 81            [12]  515 	mov	a,sp
      000141 24 FC            [12]  516 	add	a,#0xfc
      000143 F5 81            [12]  517 	mov	sp,a
      000145 C0 04            [24]  518 	push	ar4
      000147 C0 05            [24]  519 	push	ar5
      000149 C0 06            [24]  520 	push	ar6
      00014B C0 07            [24]  521 	push	ar7
                                    522 ;	./inc/MLX90614.h:50: return temp;
      00014D 90 00 00         [24]  523 	mov	dptr,#0x0000
      000150 75 F0 20         [24]  524 	mov	b,#0x20
      000153 74 41            [12]  525 	mov	a,#0x41
      000155 12 07 F6         [24]  526 	lcall	___fsmul
      000158 AC 82            [24]  527 	mov	r4,dpl
      00015A AD 83            [24]  528 	mov	r5,dph
      00015C AE F0            [24]  529 	mov	r6,b
      00015E FF               [12]  530 	mov	r7,a
      00015F E5 81            [12]  531 	mov	a,sp
      000161 24 FC            [12]  532 	add	a,#0xfc
      000163 F5 81            [12]  533 	mov	sp,a
      000165 8C 82            [24]  534 	mov	dpl,r4
      000167 8D 83            [24]  535 	mov	dph,r5
      000169 8E F0            [24]  536 	mov	b,r6
      00016B EF               [12]  537 	mov	a,r7
                                    538 ;	./inc/MLX90614.h:51: }
      00016C 22               [24]  539 	ret
                                    540 ;------------------------------------------------------------
                                    541 ;Allocation info for local variables in function 'T0_isr'
                                    542 ;------------------------------------------------------------
                                    543 ;	./src/main.c:13: void T0_isr(void) __interrupt (1)
                                    544 ;	-----------------------------------------
                                    545 ;	 function T0_isr
                                    546 ;	-----------------------------------------
      00016D                        547 _T0_isr:
      00016D C0 E0            [24]  548 	push	acc
      00016F C0 F0            [24]  549 	push	b
      000171 C0 07            [24]  550 	push	ar7
      000173 C0 D0            [24]  551 	push	psw
      000175 75 D0 00         [24]  552 	mov	psw,#0x00
                                    553 ;	./src/main.c:16: TH0 = (65536-1000) >> 8;
      000178 75 8C FC         [24]  554 	mov	_TH0,#0xfc
                                    555 ;	./src/main.c:17: TL0 = (65536-1000) & 0xff;
      00017B 75 8A 18         [24]  556 	mov	_TL0,#0x18
                                    557 ;	./src/main.c:18: cnt++;
      00017E 05 0D            [12]  558 	inc	_cnt
      000180 E4               [12]  559 	clr	a
      000181 B5 0D 02         [24]  560 	cjne	a,_cnt,00144$
      000184 05 0E            [12]  561 	inc	(_cnt + 1)
      000186                        562 00144$:
                                    563 ;	./src/main.c:19: if (cnt2 <= 8) P3_7 = (cnt2 & 1) ? (P3_7 ? 0 : 1) : 0;
      000186 C3               [12]  564 	clr	c
      000187 74 08            [12]  565 	mov	a,#0x08
      000189 95 0F            [12]  566 	subb	a,_cnt2
      00018B 74 80            [12]  567 	mov	a,#(0x00 ^ 0x80)
      00018D 85 10 F0         [24]  568 	mov	b,(_cnt2 + 1)
      000190 63 F0 80         [24]  569 	xrl	b,#0x80
      000193 95 F0            [12]  570 	subb	a,b
      000195 92 00            [24]  571 	mov	_T0_isr_sloc0_1_0,c
      000197 40 17            [24]  572 	jc	00102$
      000199 E5 0F            [12]  573 	mov	a,_cnt2
      00019B 30 E0 0B         [24]  574 	jnb	acc.0,00110$
      00019E 30 B7 04         [24]  575 	jnb	_P3_7,00112$
      0001A1 7F 00            [12]  576 	mov	r7,#0x00
      0001A3 80 06            [24]  577 	sjmp	00111$
      0001A5                        578 00112$:
      0001A5 7F 01            [12]  579 	mov	r7,#0x01
      0001A7 80 02            [24]  580 	sjmp	00111$
      0001A9                        581 00110$:
      0001A9 7F 00            [12]  582 	mov	r7,#0x00
      0001AB                        583 00111$:
                                    584 ;	assignBit
      0001AB EF               [12]  585 	mov	a,r7
      0001AC 24 FF            [12]  586 	add	a,#0xff
      0001AE 92 B7            [24]  587 	mov	_P3_7,c
      0001B0                        588 00102$:
                                    589 ;	./src/main.c:20: if (cnt >= 500) {
      0001B0 C3               [12]  590 	clr	c
      0001B1 E5 0D            [12]  591 	mov	a,_cnt
      0001B3 94 F4            [12]  592 	subb	a,#0xf4
      0001B5 E5 0E            [12]  593 	mov	a,(_cnt + 1)
      0001B7 64 80            [12]  594 	xrl	a,#0x80
      0001B9 94 81            [12]  595 	subb	a,#0x81
      0001BB 40 18            [24]  596 	jc	00108$
                                    597 ;	./src/main.c:21: cnt = 0;
      0001BD E4               [12]  598 	clr	a
      0001BE F5 0D            [12]  599 	mov	_cnt,a
      0001C0 F5 0E            [12]  600 	mov	(_cnt + 1),a
                                    601 ;	./src/main.c:22: if (cnt2 <= 8) 
      0001C2 20 00 0A         [24]  602 	jb	_T0_isr_sloc0_1_0,00104$
                                    603 ;	./src/main.c:23: cnt2++;
      0001C5 05 0F            [12]  604 	inc	_cnt2
      0001C7 E4               [12]  605 	clr	a
      0001C8 B5 0F 0A         [24]  606 	cjne	a,_cnt2,00108$
      0001CB 05 10            [12]  607 	inc	(_cnt2 + 1)
      0001CD 80 06            [24]  608 	sjmp	00108$
      0001CF                        609 00104$:
                                    610 ;	./src/main.c:24: else cnt2 = 9;
      0001CF 75 0F 09         [24]  611 	mov	_cnt2,#0x09
      0001D2 75 10 00         [24]  612 	mov	(_cnt2 + 1),#0x00
      0001D5                        613 00108$:
                                    614 ;	./src/main.c:26: }
      0001D5 D0 D0            [24]  615 	pop	psw
      0001D7 D0 07            [24]  616 	pop	ar7
      0001D9 D0 F0            [24]  617 	pop	b
      0001DB D0 E0            [24]  618 	pop	acc
      0001DD 32               [24]  619 	reti
                                    620 ;	eliminated unneeded push/pop dpl
                                    621 ;	eliminated unneeded push/pop dph
                                    622 ;------------------------------------------------------------
                                    623 ;Allocation info for local variables in function 'main'
                                    624 ;------------------------------------------------------------
                                    625 ;	./src/main.c:28: int main() {
                                    626 ;	-----------------------------------------
                                    627 ;	 function main
                                    628 ;	-----------------------------------------
      0001DE                        629 _main:
                                    630 ;	./src/main.c:29: TMOD = 0x01;						//set Timer1 mode0 & Timer0 mode1
      0001DE 75 89 01         [24]  631 	mov	_TMOD,#0x01
                                    632 ;	./src/main.c:30: TH0 = (65536-1000) / 256;
      0001E1 75 8C FC         [24]  633 	mov	_TH0,#0xfc
                                    634 ;	./src/main.c:31: TL0 = (65536-1000) % 256;
      0001E4 75 8A 18         [24]  635 	mov	_TL0,#0x18
                                    636 ;	./src/main.c:32: ET0 = 1;							//Enable Timer0 interrupt
                                    637 ;	assignBit
      0001E7 D2 A9            [12]  638 	setb	_ET0
                                    639 ;	./src/main.c:33: EA = 1;								//Enable all interrupt
                                    640 ;	assignBit
      0001E9 D2 AF            [12]  641 	setb	_EA
                                    642 ;	./src/main.c:34: TR0 = 0;							//Enable Timer0
                                    643 ;	assignBit
      0001EB C2 8C            [12]  644 	clr	_TR0
                                    645 ;	./src/main.c:35: P3_7 = 0;
                                    646 ;	assignBit
      0001ED C2 B7            [12]  647 	clr	_P3_7
                                    648 ;	./src/main.c:36: TR0 = 0;    
                                    649 ;	assignBit
      0001EF C2 8C            [12]  650 	clr	_TR0
                                    651 ;	./src/main.c:38: DOUT = 1;                           //Setting gpio input mode
                                    652 ;	assignBit
      0001F1 D2 A2            [12]  653 	setb	_P2_2
                                    654 ;	./src/main.c:39: LOAD = 1;  
                                    655 ;	assignBit
      0001F3 D2 A3            [12]  656 	setb	_P2_3
                                    657 ;	./src/main.c:40: CLK = 0;
                                    658 ;	assignBit
      0001F5 C2 A0            [12]  659 	clr	_P2_0
                                    660 ;	./src/main.c:41: DIN = 0;
                                    661 ;	assignBit
      0001F7 C2 A1            [12]  662 	clr	_P2_1
                                    663 ;	./src/main.c:43: OLED_Init();		                // Check oled_i2c.c file for SCL,SDA pin connection
      0001F9 12 06 8D         [24]  664 	lcall	_OLED_Init
                                    665 ;	./src/main.c:44: OLED_SetCursor(0,0);                // Set cursor at 0th-line 0th-Position
      0001FC 75 1C 00         [24]  666 	mov	_OLED_SetCursor_PARM_2,#0x00
      0001FF 75 82 00         [24]  667 	mov	dpl,#0x00
      000202 12 07 A3         [24]  668 	lcall	_OLED_SetCursor
                                    669 ;	./src/main.c:45: OLED_DisplayString("Distance:");	 
      000205 90 0C A3         [24]  670 	mov	dptr,#___str_0
      000208 75 F0 80         [24]  671 	mov	b,#0x80
      00020B 12 07 4D         [24]  672 	lcall	_OLED_DisplayString
                                    673 ;	./src/main.c:46: OLED_SetCursor(2, 0); 
      00020E 75 1C 00         [24]  674 	mov	_OLED_SetCursor_PARM_2,#0x00
      000211 75 82 02         [24]  675 	mov	dpl,#0x02
      000214 12 07 A3         [24]  676 	lcall	_OLED_SetCursor
                                    677 ;	./src/main.c:47: OLED_DisplayString("T_object:");
      000217 90 0C AD         [24]  678 	mov	dptr,#___str_1
      00021A 75 F0 80         [24]  679 	mov	b,#0x80
      00021D 12 07 4D         [24]  680 	lcall	_OLED_DisplayString
                                    681 ;	./src/main.c:48: OLED_SetCursor(4, 0);  
      000220 75 1C 00         [24]  682 	mov	_OLED_SetCursor_PARM_2,#0x00
      000223 75 82 04         [24]  683 	mov	dpl,#0x04
      000226 12 07 A3         [24]  684 	lcall	_OLED_SetCursor
                                    685 ;	./src/main.c:49: OLED_DisplayString("T_ambient:");
      000229 90 0C B7         [24]  686 	mov	dptr,#___str_2
      00022C 75 F0 80         [24]  687 	mov	b,#0x80
      00022F 12 07 4D         [24]  688 	lcall	_OLED_DisplayString
                                    689 ;	./src/main.c:50: OLED_SetCursor(6, 0);  
      000232 75 1C 00         [24]  690 	mov	_OLED_SetCursor_PARM_2,#0x00
      000235 75 82 06         [24]  691 	mov	dpl,#0x06
      000238 12 07 A3         [24]  692 	lcall	_OLED_SetCursor
                                    693 ;	./src/main.c:51: OLED_DisplayString("T_last:");
      00023B 90 0C C2         [24]  694 	mov	dptr,#___str_3
      00023E 75 F0 80         [24]  695 	mov	b,#0x80
      000241 12 07 4D         [24]  696 	lcall	_OLED_DisplayString
                                    697 ;	./src/main.c:53: while(1) {
      000244                        698 00110$:
                                    699 ;	./src/main.c:54: data_buf1 = readAmbientTemp();
      000244 12 00 8B         [24]  700 	lcall	_readAmbientTemp
      000247 12 09 E6         [24]  701 	lcall	___fs2sint
      00024A 85 82 09         [24]  702 	mov	_data_buf1,dpl
      00024D 85 83 0A         [24]  703 	mov	(_data_buf1 + 1),dph
                                    704 ;	./src/main.c:55: data_buf2 = readObjectTemp();
      000250 12 00 85         [24]  705 	lcall	_readObjectTemp
      000253 12 09 E6         [24]  706 	lcall	___fs2sint
      000256 85 82 0B         [24]  707 	mov	_data_buf2,dpl
      000259 85 83 0C         [24]  708 	mov	(_data_buf2 + 1),dph
                                    709 ;	./src/main.c:56: adc_value = read_adc3202(1);
      00025C 75 82 01         [24]  710 	mov	dpl,#0x01
      00025F 12 05 39         [24]  711 	lcall	_read_adc3202
                                    712 ;	./src/main.c:58: oled_out = 62284 / (adc_value * (5 * 1000.0 / 4096.0)) - 14;
      000262 85 82 17         [24]  713 	mov	_adc_value,dpl
      000265 85 83 18         [24]  714 	mov  (_adc_value + 1),dph
      000268 12 0A 1A         [24]  715 	lcall	___uint2fs
      00026B AC 82            [24]  716 	mov	r4,dpl
      00026D AD 83            [24]  717 	mov	r5,dph
      00026F AE F0            [24]  718 	mov	r6,b
      000271 FF               [12]  719 	mov	r7,a
      000272 C0 04            [24]  720 	push	ar4
      000274 C0 05            [24]  721 	push	ar5
      000276 C0 06            [24]  722 	push	ar6
      000278 C0 07            [24]  723 	push	ar7
      00027A 90 40 00         [24]  724 	mov	dptr,#0x4000
      00027D 75 F0 9C         [24]  725 	mov	b,#0x9c
      000280 74 3F            [12]  726 	mov	a,#0x3f
      000282 12 07 F6         [24]  727 	lcall	___fsmul
      000285 AC 82            [24]  728 	mov	r4,dpl
      000287 AD 83            [24]  729 	mov	r5,dph
      000289 AE F0            [24]  730 	mov	r6,b
      00028B FF               [12]  731 	mov	r7,a
      00028C E5 81            [12]  732 	mov	a,sp
      00028E 24 FC            [12]  733 	add	a,#0xfc
      000290 F5 81            [12]  734 	mov	sp,a
      000292 C0 04            [24]  735 	push	ar4
      000294 C0 05            [24]  736 	push	ar5
      000296 C0 06            [24]  737 	push	ar6
      000298 C0 07            [24]  738 	push	ar7
      00029A 90 4C 00         [24]  739 	mov	dptr,#0x4c00
      00029D 75 F0 73         [24]  740 	mov	b,#0x73
      0002A0 74 47            [12]  741 	mov	a,#0x47
      0002A2 12 0A 8F         [24]  742 	lcall	___fsdiv
      0002A5 AC 82            [24]  743 	mov	r4,dpl
      0002A7 AD 83            [24]  744 	mov	r5,dph
      0002A9 AE F0            [24]  745 	mov	r6,b
      0002AB FF               [12]  746 	mov	r7,a
      0002AC E5 81            [12]  747 	mov	a,sp
      0002AE 24 FC            [12]  748 	add	a,#0xfc
      0002B0 F5 81            [12]  749 	mov	sp,a
      0002B2 E4               [12]  750 	clr	a
      0002B3 C0 E0            [24]  751 	push	acc
      0002B5 C0 E0            [24]  752 	push	acc
      0002B7 74 60            [12]  753 	mov	a,#0x60
      0002B9 C0 E0            [24]  754 	push	acc
      0002BB 74 41            [12]  755 	mov	a,#0x41
      0002BD C0 E0            [24]  756 	push	acc
      0002BF 8C 82            [24]  757 	mov	dpl,r4
      0002C1 8D 83            [24]  758 	mov	dph,r5
      0002C3 8E F0            [24]  759 	mov	b,r6
      0002C5 EF               [12]  760 	mov	a,r7
      0002C6 12 07 EB         [24]  761 	lcall	___fssub
      0002C9 AC 82            [24]  762 	mov	r4,dpl
      0002CB AD 83            [24]  763 	mov	r5,dph
      0002CD AE F0            [24]  764 	mov	r6,b
      0002CF FF               [12]  765 	mov	r7,a
      0002D0 E5 81            [12]  766 	mov	a,sp
      0002D2 24 FC            [12]  767 	add	a,#0xfc
      0002D4 F5 81            [12]  768 	mov	sp,a
      0002D6 8C 82            [24]  769 	mov	dpl,r4
      0002D8 8D 83            [24]  770 	mov	dph,r5
      0002DA 8E F0            [24]  771 	mov	b,r6
      0002DC EF               [12]  772 	mov	a,r7
      0002DD 12 09 E6         [24]  773 	lcall	___fs2sint
      0002E0 85 82 11         [24]  774 	mov	_oled_out,dpl
      0002E3 85 83 12         [24]  775 	mov	(_oled_out + 1),dph
                                    776 ;	./src/main.c:59: OLED_SetCursor(0, 60);
      0002E6 75 1C 3C         [24]  777 	mov	_OLED_SetCursor_PARM_2,#0x3c
      0002E9 75 82 00         [24]  778 	mov	dpl,#0x00
      0002EC 12 07 A3         [24]  779 	lcall	_OLED_SetCursor
                                    780 ;	./src/main.c:60: if (oled_out > 0) {
      0002EF C3               [12]  781 	clr	c
      0002F0 E4               [12]  782 	clr	a
      0002F1 95 11            [12]  783 	subb	a,_oled_out
      0002F3 74 80            [12]  784 	mov	a,#(0x00 ^ 0x80)
      0002F5 85 12 F0         [24]  785 	mov	b,(_oled_out + 1)
      0002F8 63 F0 80         [24]  786 	xrl	b,#0x80
      0002FB 95 F0            [12]  787 	subb	a,b
      0002FD 50 63            [24]  788 	jnc	00102$
                                    789 ;	./src/main.c:61: OLED_DisplayChar(oled_out % 1000 / 100 + '0');
      0002FF 75 1D E8         [24]  790 	mov	__modsint_PARM_2,#0xe8
      000302 75 1E 03         [24]  791 	mov	(__modsint_PARM_2 + 1),#0x03
      000305 85 11 82         [24]  792 	mov	dpl,_oled_out
      000308 85 12 83         [24]  793 	mov	dph,(_oled_out + 1)
      00030B 12 0B 6E         [24]  794 	lcall	__modsint
      00030E 75 1D 64         [24]  795 	mov	__divsint_PARM_2,#0x64
      000311 75 1E 00         [24]  796 	mov	(__divsint_PARM_2 + 1),#0x00
      000314 12 0B B7         [24]  797 	lcall	__divsint
      000317 AE 82            [24]  798 	mov	r6,dpl
      000319 74 30            [12]  799 	mov	a,#0x30
      00031B 2E               [12]  800 	add	a,r6
      00031C F5 82            [12]  801 	mov	dpl,a
      00031E 12 06 FC         [24]  802 	lcall	_OLED_DisplayChar
                                    803 ;	./src/main.c:62: OLED_DisplayChar(oled_out % 100 / 10 + '0');
      000321 75 1D 64         [24]  804 	mov	__modsint_PARM_2,#0x64
      000324 75 1E 00         [24]  805 	mov	(__modsint_PARM_2 + 1),#0x00
      000327 85 11 82         [24]  806 	mov	dpl,_oled_out
      00032A 85 12 83         [24]  807 	mov	dph,(_oled_out + 1)
      00032D 12 0B 6E         [24]  808 	lcall	__modsint
      000330 75 1D 0A         [24]  809 	mov	__divsint_PARM_2,#0x0a
      000333 75 1E 00         [24]  810 	mov	(__divsint_PARM_2 + 1),#0x00
      000336 12 0B B7         [24]  811 	lcall	__divsint
      000339 AE 82            [24]  812 	mov	r6,dpl
      00033B 74 30            [12]  813 	mov	a,#0x30
      00033D 2E               [12]  814 	add	a,r6
      00033E F5 82            [12]  815 	mov	dpl,a
      000340 12 06 FC         [24]  816 	lcall	_OLED_DisplayChar
                                    817 ;	./src/main.c:63: OLED_DisplayChar('.');
      000343 75 82 2E         [24]  818 	mov	dpl,#0x2e
      000346 12 06 FC         [24]  819 	lcall	_OLED_DisplayChar
                                    820 ;	./src/main.c:64: OLED_DisplayChar(oled_out % 10 / 1 + '0');
      000349 75 1D 0A         [24]  821 	mov	__modsint_PARM_2,#0x0a
      00034C 75 1E 00         [24]  822 	mov	(__modsint_PARM_2 + 1),#0x00
      00034F 85 11 82         [24]  823 	mov	dpl,_oled_out
      000352 85 12 83         [24]  824 	mov	dph,(_oled_out + 1)
      000355 12 0B 6E         [24]  825 	lcall	__modsint
      000358 AE 82            [24]  826 	mov	r6,dpl
      00035A 74 30            [12]  827 	mov	a,#0x30
      00035C 2E               [12]  828 	add	a,r6
      00035D F5 82            [12]  829 	mov	dpl,a
      00035F 12 06 FC         [24]  830 	lcall	_OLED_DisplayChar
      000362                        831 00102$:
                                    832 ;	./src/main.c:67: OLED_SetCursor(2, 60);
      000362 75 1C 3C         [24]  833 	mov	_OLED_SetCursor_PARM_2,#0x3c
      000365 75 82 02         [24]  834 	mov	dpl,#0x02
      000368 12 07 A3         [24]  835 	lcall	_OLED_SetCursor
                                    836 ;	./src/main.c:68: OLED_DisplayChar(data_buf2 % 1000 / 100 + '0');
      00036B 75 1D E8         [24]  837 	mov	__modsint_PARM_2,#0xe8
      00036E 75 1E 03         [24]  838 	mov	(__modsint_PARM_2 + 1),#0x03
      000371 85 0B 82         [24]  839 	mov	dpl,_data_buf2
      000374 85 0C 83         [24]  840 	mov	dph,(_data_buf2 + 1)
      000377 12 0B 6E         [24]  841 	lcall	__modsint
      00037A 75 1D 64         [24]  842 	mov	__divsint_PARM_2,#0x64
      00037D 75 1E 00         [24]  843 	mov	(__divsint_PARM_2 + 1),#0x00
      000380 12 0B B7         [24]  844 	lcall	__divsint
      000383 AE 82            [24]  845 	mov	r6,dpl
      000385 74 30            [12]  846 	mov	a,#0x30
      000387 2E               [12]  847 	add	a,r6
      000388 F5 82            [12]  848 	mov	dpl,a
      00038A 12 06 FC         [24]  849 	lcall	_OLED_DisplayChar
                                    850 ;	./src/main.c:69: OLED_DisplayChar(data_buf2 % 100 / 10 + '0');
      00038D 75 1D 64         [24]  851 	mov	__modsint_PARM_2,#0x64
      000390 75 1E 00         [24]  852 	mov	(__modsint_PARM_2 + 1),#0x00
      000393 85 0B 82         [24]  853 	mov	dpl,_data_buf2
      000396 85 0C 83         [24]  854 	mov	dph,(_data_buf2 + 1)
      000399 12 0B 6E         [24]  855 	lcall	__modsint
      00039C 75 1D 0A         [24]  856 	mov	__divsint_PARM_2,#0x0a
      00039F 75 1E 00         [24]  857 	mov	(__divsint_PARM_2 + 1),#0x00
      0003A2 12 0B B7         [24]  858 	lcall	__divsint
      0003A5 AE 82            [24]  859 	mov	r6,dpl
      0003A7 74 30            [12]  860 	mov	a,#0x30
      0003A9 2E               [12]  861 	add	a,r6
      0003AA F5 82            [12]  862 	mov	dpl,a
      0003AC 12 06 FC         [24]  863 	lcall	_OLED_DisplayChar
                                    864 ;	./src/main.c:70: OLED_DisplayChar('.');
      0003AF 75 82 2E         [24]  865 	mov	dpl,#0x2e
      0003B2 12 06 FC         [24]  866 	lcall	_OLED_DisplayChar
                                    867 ;	./src/main.c:71: OLED_DisplayChar(data_buf2 % 10 / 1 + '0');
      0003B5 75 1D 0A         [24]  868 	mov	__modsint_PARM_2,#0x0a
      0003B8 75 1E 00         [24]  869 	mov	(__modsint_PARM_2 + 1),#0x00
      0003BB 85 0B 82         [24]  870 	mov	dpl,_data_buf2
      0003BE 85 0C 83         [24]  871 	mov	dph,(_data_buf2 + 1)
      0003C1 12 0B 6E         [24]  872 	lcall	__modsint
      0003C4 AE 82            [24]  873 	mov	r6,dpl
      0003C6 74 30            [12]  874 	mov	a,#0x30
      0003C8 2E               [12]  875 	add	a,r6
      0003C9 F5 82            [12]  876 	mov	dpl,a
      0003CB 12 06 FC         [24]  877 	lcall	_OLED_DisplayChar
                                    878 ;	./src/main.c:74: OLED_SetCursor(4,  60);
      0003CE 75 1C 3C         [24]  879 	mov	_OLED_SetCursor_PARM_2,#0x3c
      0003D1 75 82 04         [24]  880 	mov	dpl,#0x04
      0003D4 12 07 A3         [24]  881 	lcall	_OLED_SetCursor
                                    882 ;	./src/main.c:75: OLED_DisplayChar(data_buf1 % 1000 / 100 + '0');
      0003D7 75 1D E8         [24]  883 	mov	__modsint_PARM_2,#0xe8
      0003DA 75 1E 03         [24]  884 	mov	(__modsint_PARM_2 + 1),#0x03
      0003DD 85 09 82         [24]  885 	mov	dpl,_data_buf1
      0003E0 85 0A 83         [24]  886 	mov	dph,(_data_buf1 + 1)
      0003E3 12 0B 6E         [24]  887 	lcall	__modsint
      0003E6 75 1D 64         [24]  888 	mov	__divsint_PARM_2,#0x64
      0003E9 75 1E 00         [24]  889 	mov	(__divsint_PARM_2 + 1),#0x00
      0003EC 12 0B B7         [24]  890 	lcall	__divsint
      0003EF AE 82            [24]  891 	mov	r6,dpl
      0003F1 74 30            [12]  892 	mov	a,#0x30
      0003F3 2E               [12]  893 	add	a,r6
      0003F4 F5 82            [12]  894 	mov	dpl,a
      0003F6 12 06 FC         [24]  895 	lcall	_OLED_DisplayChar
                                    896 ;	./src/main.c:76: OLED_DisplayChar(data_buf1 % 100 / 10 + '0');
      0003F9 75 1D 64         [24]  897 	mov	__modsint_PARM_2,#0x64
      0003FC 75 1E 00         [24]  898 	mov	(__modsint_PARM_2 + 1),#0x00
      0003FF 85 09 82         [24]  899 	mov	dpl,_data_buf1
      000402 85 0A 83         [24]  900 	mov	dph,(_data_buf1 + 1)
      000405 12 0B 6E         [24]  901 	lcall	__modsint
      000408 75 1D 0A         [24]  902 	mov	__divsint_PARM_2,#0x0a
      00040B 75 1E 00         [24]  903 	mov	(__divsint_PARM_2 + 1),#0x00
      00040E 12 0B B7         [24]  904 	lcall	__divsint
      000411 AE 82            [24]  905 	mov	r6,dpl
      000413 74 30            [12]  906 	mov	a,#0x30
      000415 2E               [12]  907 	add	a,r6
      000416 F5 82            [12]  908 	mov	dpl,a
      000418 12 06 FC         [24]  909 	lcall	_OLED_DisplayChar
                                    910 ;	./src/main.c:77: OLED_DisplayChar('.');
      00041B 75 82 2E         [24]  911 	mov	dpl,#0x2e
      00041E 12 06 FC         [24]  912 	lcall	_OLED_DisplayChar
                                    913 ;	./src/main.c:78: OLED_DisplayChar(data_buf1 % 10 / 1 + '0');
      000421 75 1D 0A         [24]  914 	mov	__modsint_PARM_2,#0x0a
      000424 75 1E 00         [24]  915 	mov	(__modsint_PARM_2 + 1),#0x00
      000427 85 09 82         [24]  916 	mov	dpl,_data_buf1
      00042A 85 0A 83         [24]  917 	mov	dph,(_data_buf1 + 1)
      00042D 12 0B 6E         [24]  918 	lcall	__modsint
      000430 AE 82            [24]  919 	mov	r6,dpl
      000432 74 30            [12]  920 	mov	a,#0x30
      000434 2E               [12]  921 	add	a,r6
      000435 F5 82            [12]  922 	mov	dpl,a
      000437 12 06 FC         [24]  923 	lcall	_OLED_DisplayChar
                                    924 ;	./src/main.c:80: if (oled_out > 10 && oled_out < 50) {
      00043A C3               [12]  925 	clr	c
      00043B 74 0A            [12]  926 	mov	a,#0x0a
      00043D 95 11            [12]  927 	subb	a,_oled_out
      00043F 74 80            [12]  928 	mov	a,#(0x00 ^ 0x80)
      000441 85 12 F0         [24]  929 	mov	b,(_oled_out + 1)
      000444 63 F0 80         [24]  930 	xrl	b,#0x80
      000447 95 F0            [12]  931 	subb	a,b
      000449 40 03            [24]  932 	jc	00145$
      00044B 02 04 DB         [24]  933 	ljmp	00106$
      00044E                        934 00145$:
      00044E C3               [12]  935 	clr	c
      00044F E5 11            [12]  936 	mov	a,_oled_out
      000451 94 32            [12]  937 	subb	a,#0x32
      000453 E5 12            [12]  938 	mov	a,(_oled_out + 1)
      000455 64 80            [12]  939 	xrl	a,#0x80
      000457 94 80            [12]  940 	subb	a,#0x80
      000459 40 03            [24]  941 	jc	00146$
      00045B 02 04 DB         [24]  942 	ljmp	00106$
      00045E                        943 00146$:
                                    944 ;	./src/main.c:81: TR0 = 1;
                                    945 ;	assignBit
      00045E D2 8C            [12]  946 	setb	_TR0
                                    947 ;	./src/main.c:82: if (cnt2 == 8) {
      000460 74 08            [12]  948 	mov	a,#0x08
      000462 B5 0F 06         [24]  949 	cjne	a,_cnt2,00147$
      000465 E4               [12]  950 	clr	a
      000466 B5 10 02         [24]  951 	cjne	a,(_cnt2 + 1),00147$
      000469 80 02            [24]  952 	sjmp	00148$
      00046B                        953 00147$:
      00046B 80 75            [24]  954 	sjmp	00107$
      00046D                        955 00148$:
                                    956 ;	./src/main.c:83: OLED_SetCursor(6, 60);
      00046D 75 1C 3C         [24]  957 	mov	_OLED_SetCursor_PARM_2,#0x3c
      000470 75 82 06         [24]  958 	mov	dpl,#0x06
      000473 12 07 A3         [24]  959 	lcall	_OLED_SetCursor
                                    960 ;	./src/main.c:84: OLED_DisplayChar(data_buf2 % 1000 / 100 + '0');
      000476 75 1D E8         [24]  961 	mov	__modsint_PARM_2,#0xe8
      000479 75 1E 03         [24]  962 	mov	(__modsint_PARM_2 + 1),#0x03
      00047C 85 0B 82         [24]  963 	mov	dpl,_data_buf2
      00047F 85 0C 83         [24]  964 	mov	dph,(_data_buf2 + 1)
      000482 12 0B 6E         [24]  965 	lcall	__modsint
      000485 75 1D 64         [24]  966 	mov	__divsint_PARM_2,#0x64
      000488 75 1E 00         [24]  967 	mov	(__divsint_PARM_2 + 1),#0x00
      00048B 12 0B B7         [24]  968 	lcall	__divsint
      00048E AE 82            [24]  969 	mov	r6,dpl
      000490 74 30            [12]  970 	mov	a,#0x30
      000492 2E               [12]  971 	add	a,r6
      000493 F5 82            [12]  972 	mov	dpl,a
      000495 12 06 FC         [24]  973 	lcall	_OLED_DisplayChar
                                    974 ;	./src/main.c:85: OLED_DisplayChar(data_buf2 % 100 / 10 + '0');
      000498 75 1D 64         [24]  975 	mov	__modsint_PARM_2,#0x64
      00049B 75 1E 00         [24]  976 	mov	(__modsint_PARM_2 + 1),#0x00
      00049E 85 0B 82         [24]  977 	mov	dpl,_data_buf2
      0004A1 85 0C 83         [24]  978 	mov	dph,(_data_buf2 + 1)
      0004A4 12 0B 6E         [24]  979 	lcall	__modsint
      0004A7 75 1D 0A         [24]  980 	mov	__divsint_PARM_2,#0x0a
      0004AA 75 1E 00         [24]  981 	mov	(__divsint_PARM_2 + 1),#0x00
      0004AD 12 0B B7         [24]  982 	lcall	__divsint
      0004B0 AE 82            [24]  983 	mov	r6,dpl
      0004B2 74 30            [12]  984 	mov	a,#0x30
      0004B4 2E               [12]  985 	add	a,r6
      0004B5 F5 82            [12]  986 	mov	dpl,a
      0004B7 12 06 FC         [24]  987 	lcall	_OLED_DisplayChar
                                    988 ;	./src/main.c:86: OLED_DisplayChar('.');
      0004BA 75 82 2E         [24]  989 	mov	dpl,#0x2e
      0004BD 12 06 FC         [24]  990 	lcall	_OLED_DisplayChar
                                    991 ;	./src/main.c:87: OLED_DisplayChar(data_buf2 % 10 / 1 + '0');
      0004C0 75 1D 0A         [24]  992 	mov	__modsint_PARM_2,#0x0a
      0004C3 75 1E 00         [24]  993 	mov	(__modsint_PARM_2 + 1),#0x00
      0004C6 85 0B 82         [24]  994 	mov	dpl,_data_buf2
      0004C9 85 0C 83         [24]  995 	mov	dph,(_data_buf2 + 1)
      0004CC 12 0B 6E         [24]  996 	lcall	__modsint
      0004CF AE 82            [24]  997 	mov	r6,dpl
      0004D1 74 30            [12]  998 	mov	a,#0x30
      0004D3 2E               [12]  999 	add	a,r6
      0004D4 F5 82            [12] 1000 	mov	dpl,a
      0004D6 12 06 FC         [24] 1001 	lcall	_OLED_DisplayChar
      0004D9 80 07            [24] 1002 	sjmp	00107$
      0004DB                       1003 00106$:
                                   1004 ;	./src/main.c:90: TR0 = 0;
                                   1005 ;	assignBit
      0004DB C2 8C            [12] 1006 	clr	_TR0
                                   1007 ;	./src/main.c:91: cnt2 = 0;
      0004DD E4               [12] 1008 	clr	a
      0004DE F5 0F            [12] 1009 	mov	_cnt2,a
      0004E0 F5 10            [12] 1010 	mov	(_cnt2 + 1),a
      0004E2                       1011 00107$:
                                   1012 ;	./src/main.c:93: delay_ms(100);
      0004E2 90 00 64         [24] 1013 	mov	dptr,#0x0064
      0004E5 12 06 76         [24] 1014 	lcall	_delay_ms
                                   1015 ;	./src/main.c:95: }
      0004E8 02 02 44         [24] 1016 	ljmp	00110$
                                   1017 	.area CSEG    (CODE)
                                   1018 	.area CONST   (CODE)
                                   1019 	.area CONST   (CODE)
      000CA3                       1020 ___str_0:
      000CA3 44 69 73 74 61 6E 63  1021 	.ascii "Distance:"
             65 3A
      000CAC 00                    1022 	.db 0x00
                                   1023 	.area CSEG    (CODE)
                                   1024 	.area CONST   (CODE)
      000CAD                       1025 ___str_1:
      000CAD 54 5F 6F 62 6A 65 63  1026 	.ascii "T_object:"
             74 3A
      000CB6 00                    1027 	.db 0x00
                                   1028 	.area CSEG    (CODE)
                                   1029 	.area CONST   (CODE)
      000CB7                       1030 ___str_2:
      000CB7 54 5F 61 6D 62 69 65  1031 	.ascii "T_ambient:"
             6E 74 3A
      000CC1 00                    1032 	.db 0x00
                                   1033 	.area CSEG    (CODE)
                                   1034 	.area CONST   (CODE)
      000CC2                       1035 ___str_3:
      000CC2 54 5F 6C 61 73 74 3A  1036 	.ascii "T_last:"
      000CC9 00                    1037 	.db 0x00
                                   1038 	.area CSEG    (CODE)
                                   1039 	.area XINIT   (CODE)
                                   1040 	.area CABS    (ABS,CODE)
