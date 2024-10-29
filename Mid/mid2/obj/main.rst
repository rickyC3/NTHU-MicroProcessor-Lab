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
                                     12 	.globl _Initial7219
                                     13 	.globl _Writesingle7219
                                     14 	.globl _delay_ms
                                     15 	.globl _readMPU6050_GyroData
                                     16 	.globl _readMPU6050_AccelData
                                     17 	.globl _MPU6050_INIT
                                     18 	.globl _OLED_SetCursor
                                     19 	.globl _OLED_DisplayString
                                     20 	.globl _OLED_DisplayChar
                                     21 	.globl _OLED_Init
                                     22 	.globl _CY
                                     23 	.globl _AC
                                     24 	.globl _F0
                                     25 	.globl _RS1
                                     26 	.globl _RS0
                                     27 	.globl _OV
                                     28 	.globl _F1
                                     29 	.globl _P
                                     30 	.globl _PS
                                     31 	.globl _PT1
                                     32 	.globl _PX1
                                     33 	.globl _PT0
                                     34 	.globl _PX0
                                     35 	.globl _RD
                                     36 	.globl _WR
                                     37 	.globl _T1
                                     38 	.globl _T0
                                     39 	.globl _INT1
                                     40 	.globl _INT0
                                     41 	.globl _TXD
                                     42 	.globl _RXD
                                     43 	.globl _P3_7
                                     44 	.globl _P3_6
                                     45 	.globl _P3_5
                                     46 	.globl _P3_4
                                     47 	.globl _P3_3
                                     48 	.globl _P3_2
                                     49 	.globl _P3_1
                                     50 	.globl _P3_0
                                     51 	.globl _EA
                                     52 	.globl _ES
                                     53 	.globl _ET1
                                     54 	.globl _EX1
                                     55 	.globl _ET0
                                     56 	.globl _EX0
                                     57 	.globl _P2_7
                                     58 	.globl _P2_6
                                     59 	.globl _P2_5
                                     60 	.globl _P2_4
                                     61 	.globl _P2_3
                                     62 	.globl _P2_2
                                     63 	.globl _P2_1
                                     64 	.globl _P2_0
                                     65 	.globl _SM0
                                     66 	.globl _SM1
                                     67 	.globl _SM2
                                     68 	.globl _REN
                                     69 	.globl _TB8
                                     70 	.globl _RB8
                                     71 	.globl _TI
                                     72 	.globl _RI
                                     73 	.globl _P1_7
                                     74 	.globl _P1_6
                                     75 	.globl _P1_5
                                     76 	.globl _P1_4
                                     77 	.globl _P1_3
                                     78 	.globl _P1_2
                                     79 	.globl _P1_1
                                     80 	.globl _P1_0
                                     81 	.globl _TF1
                                     82 	.globl _TR1
                                     83 	.globl _TF0
                                     84 	.globl _TR0
                                     85 	.globl _IE1
                                     86 	.globl _IT1
                                     87 	.globl _IE0
                                     88 	.globl _IT0
                                     89 	.globl _P0_7
                                     90 	.globl _P0_6
                                     91 	.globl _P0_5
                                     92 	.globl _P0_4
                                     93 	.globl _P0_3
                                     94 	.globl _P0_2
                                     95 	.globl _P0_1
                                     96 	.globl _P0_0
                                     97 	.globl _B
                                     98 	.globl _ACC
                                     99 	.globl _PSW
                                    100 	.globl _IP
                                    101 	.globl _P3
                                    102 	.globl _IE
                                    103 	.globl _P2
                                    104 	.globl _SBUF
                                    105 	.globl _SCON
                                    106 	.globl _P1
                                    107 	.globl _TH1
                                    108 	.globl _TH0
                                    109 	.globl _TL1
                                    110 	.globl _TL0
                                    111 	.globl _TMOD
                                    112 	.globl _TCON
                                    113 	.globl _PCON
                                    114 	.globl _DPH
                                    115 	.globl _DPL
                                    116 	.globl _SP
                                    117 	.globl _P0
                                    118 	.globl _patt
                                    119 	.globl _gyro_data
                                    120 	.globl _accel_data
                                    121 	.globl _i
                                    122 	.globl _data_buf
                                    123 ;--------------------------------------------------------
                                    124 ; special function registers
                                    125 ;--------------------------------------------------------
                                    126 	.area RSEG    (ABS,DATA)
      000000                        127 	.org 0x0000
                           000080   128 _P0	=	0x0080
                           000081   129 _SP	=	0x0081
                           000082   130 _DPL	=	0x0082
                           000083   131 _DPH	=	0x0083
                           000087   132 _PCON	=	0x0087
                           000088   133 _TCON	=	0x0088
                           000089   134 _TMOD	=	0x0089
                           00008A   135 _TL0	=	0x008a
                           00008B   136 _TL1	=	0x008b
                           00008C   137 _TH0	=	0x008c
                           00008D   138 _TH1	=	0x008d
                           000090   139 _P1	=	0x0090
                           000098   140 _SCON	=	0x0098
                           000099   141 _SBUF	=	0x0099
                           0000A0   142 _P2	=	0x00a0
                           0000A8   143 _IE	=	0x00a8
                           0000B0   144 _P3	=	0x00b0
                           0000B8   145 _IP	=	0x00b8
                           0000D0   146 _PSW	=	0x00d0
                           0000E0   147 _ACC	=	0x00e0
                           0000F0   148 _B	=	0x00f0
                                    149 ;--------------------------------------------------------
                                    150 ; special function bits
                                    151 ;--------------------------------------------------------
                                    152 	.area RSEG    (ABS,DATA)
      000000                        153 	.org 0x0000
                           000080   154 _P0_0	=	0x0080
                           000081   155 _P0_1	=	0x0081
                           000082   156 _P0_2	=	0x0082
                           000083   157 _P0_3	=	0x0083
                           000084   158 _P0_4	=	0x0084
                           000085   159 _P0_5	=	0x0085
                           000086   160 _P0_6	=	0x0086
                           000087   161 _P0_7	=	0x0087
                           000088   162 _IT0	=	0x0088
                           000089   163 _IE0	=	0x0089
                           00008A   164 _IT1	=	0x008a
                           00008B   165 _IE1	=	0x008b
                           00008C   166 _TR0	=	0x008c
                           00008D   167 _TF0	=	0x008d
                           00008E   168 _TR1	=	0x008e
                           00008F   169 _TF1	=	0x008f
                           000090   170 _P1_0	=	0x0090
                           000091   171 _P1_1	=	0x0091
                           000092   172 _P1_2	=	0x0092
                           000093   173 _P1_3	=	0x0093
                           000094   174 _P1_4	=	0x0094
                           000095   175 _P1_5	=	0x0095
                           000096   176 _P1_6	=	0x0096
                           000097   177 _P1_7	=	0x0097
                           000098   178 _RI	=	0x0098
                           000099   179 _TI	=	0x0099
                           00009A   180 _RB8	=	0x009a
                           00009B   181 _TB8	=	0x009b
                           00009C   182 _REN	=	0x009c
                           00009D   183 _SM2	=	0x009d
                           00009E   184 _SM1	=	0x009e
                           00009F   185 _SM0	=	0x009f
                           0000A0   186 _P2_0	=	0x00a0
                           0000A1   187 _P2_1	=	0x00a1
                           0000A2   188 _P2_2	=	0x00a2
                           0000A3   189 _P2_3	=	0x00a3
                           0000A4   190 _P2_4	=	0x00a4
                           0000A5   191 _P2_5	=	0x00a5
                           0000A6   192 _P2_6	=	0x00a6
                           0000A7   193 _P2_7	=	0x00a7
                           0000A8   194 _EX0	=	0x00a8
                           0000A9   195 _ET0	=	0x00a9
                           0000AA   196 _EX1	=	0x00aa
                           0000AB   197 _ET1	=	0x00ab
                           0000AC   198 _ES	=	0x00ac
                           0000AF   199 _EA	=	0x00af
                           0000B0   200 _P3_0	=	0x00b0
                           0000B1   201 _P3_1	=	0x00b1
                           0000B2   202 _P3_2	=	0x00b2
                           0000B3   203 _P3_3	=	0x00b3
                           0000B4   204 _P3_4	=	0x00b4
                           0000B5   205 _P3_5	=	0x00b5
                           0000B6   206 _P3_6	=	0x00b6
                           0000B7   207 _P3_7	=	0x00b7
                           0000B0   208 _RXD	=	0x00b0
                           0000B1   209 _TXD	=	0x00b1
                           0000B2   210 _INT0	=	0x00b2
                           0000B3   211 _INT1	=	0x00b3
                           0000B4   212 _T0	=	0x00b4
                           0000B5   213 _T1	=	0x00b5
                           0000B6   214 _WR	=	0x00b6
                           0000B7   215 _RD	=	0x00b7
                           0000B8   216 _PX0	=	0x00b8
                           0000B9   217 _PT0	=	0x00b9
                           0000BA   218 _PX1	=	0x00ba
                           0000BB   219 _PT1	=	0x00bb
                           0000BC   220 _PS	=	0x00bc
                           0000D0   221 _P	=	0x00d0
                           0000D1   222 _F1	=	0x00d1
                           0000D2   223 _OV	=	0x00d2
                           0000D3   224 _RS0	=	0x00d3
                           0000D4   225 _RS1	=	0x00d4
                           0000D5   226 _F0	=	0x00d5
                           0000D6   227 _AC	=	0x00d6
                           0000D7   228 _CY	=	0x00d7
                                    229 ;--------------------------------------------------------
                                    230 ; overlayable register banks
                                    231 ;--------------------------------------------------------
                                    232 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        233 	.ds 8
                                    234 ;--------------------------------------------------------
                                    235 ; internal ram data
                                    236 ;--------------------------------------------------------
                                    237 	.area DSEG    (DATA)
      000021                        238 _data_buf::
      000021                        239 	.ds 2
      000023                        240 _i::
      000023                        241 	.ds 1
      000024                        242 _accel_data::
      000024                        243 	.ds 6
      00002A                        244 _gyro_data::
      00002A                        245 	.ds 6
      000030                        246 _patt::
      000030                        247 	.ds 1
      000031                        248 _main_seg_65536_37:
      000031                        249 	.ds 9
                                    250 ;--------------------------------------------------------
                                    251 ; overlayable items in internal ram 
                                    252 ;--------------------------------------------------------
                                    253 ;--------------------------------------------------------
                                    254 ; Stack segment in internal ram 
                                    255 ;--------------------------------------------------------
                                    256 	.area	SSEG
      000042                        257 __start__stack:
      000042                        258 	.ds	1
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
                                    318 ;	./src/main.c:37: char i = 0;
      00005F 75 23 00         [24]  319 	mov	_i,#0x00
                                    320 ;	./src/main.c:39: int accel_data[3] = {0, 0, 0};  // Stores the 16-bit signed accelerometer sensor output
      000062 E4               [12]  321 	clr	a
      000063 F5 24            [12]  322 	mov	(_accel_data + 0),a
      000065 F5 25            [12]  323 	mov	(_accel_data + 1),a
      000067 F5 26            [12]  324 	mov	((_accel_data + 0x0002) + 0),a
      000069 F5 27            [12]  325 	mov	((_accel_data + 0x0002) + 1),a
      00006B F5 28            [12]  326 	mov	((_accel_data + 0x0004) + 0),a
      00006D F5 29            [12]  327 	mov	((_accel_data + 0x0004) + 1),a
                                    328 ;	./src/main.c:40: int gyro_data[3] = {0, 0, 0};   // Stores the 16-bit signed gyro sensor output
      00006F F5 2A            [12]  329 	mov	(_gyro_data + 0),a
      000071 F5 2B            [12]  330 	mov	(_gyro_data + 1),a
      000073 F5 2C            [12]  331 	mov	((_gyro_data + 0x0002) + 0),a
      000075 F5 2D            [12]  332 	mov	((_gyro_data + 0x0002) + 1),a
      000077 F5 2E            [12]  333 	mov	((_gyro_data + 0x0004) + 0),a
      000079 F5 2F            [12]  334 	mov	((_gyro_data + 0x0004) + 1),a
                                    335 ;	./src/main.c:41: unsigned char patt = 0x80;	//led value
      00007B 75 30 80         [24]  336 	mov	_patt,#0x80
                                    337 	.area GSFINAL (CODE)
      00008A 02 00 03         [24]  338 	ljmp	__sdcc_program_startup
                                    339 ;--------------------------------------------------------
                                    340 ; Home
                                    341 ;--------------------------------------------------------
                                    342 	.area HOME    (CODE)
                                    343 	.area HOME    (CODE)
      000003                        344 __sdcc_program_startup:
      000003 02 00 8D         [24]  345 	ljmp	_main
                                    346 ;	return from main will return to caller
                                    347 ;--------------------------------------------------------
                                    348 ; code
                                    349 ;--------------------------------------------------------
                                    350 	.area CSEG    (CODE)
                                    351 ;------------------------------------------------------------
                                    352 ;Allocation info for local variables in function 'main'
                                    353 ;------------------------------------------------------------
                                    354 ;seg                       Allocated with name '_main_seg_65536_37'
                                    355 ;------------------------------------------------------------
                                    356 ;	./src/main.c:44: void main(void)
                                    357 ;	-----------------------------------------
                                    358 ;	 function main
                                    359 ;	-----------------------------------------
      00008D                        360 _main:
                           000007   361 	ar7 = 0x07
                           000006   362 	ar6 = 0x06
                           000005   363 	ar5 = 0x05
                           000004   364 	ar4 = 0x04
                           000003   365 	ar3 = 0x03
                           000002   366 	ar2 = 0x02
                           000001   367 	ar1 = 0x01
                           000000   368 	ar0 = 0x00
                                    369 ;	./src/main.c:45: {	unsigned char seg[] = {
      00008D 75 31 00         [24]  370 	mov	_main_seg_65536_37,#0x00
      000090 75 32 00         [24]  371 	mov	(_main_seg_65536_37 + 0x0001),#0x00
      000093 75 33 00         [24]  372 	mov	(_main_seg_65536_37 + 0x0002),#0x00
      000096 75 34 00         [24]  373 	mov	(_main_seg_65536_37 + 0x0003),#0x00
      000099 75 35 00         [24]  374 	mov	(_main_seg_65536_37 + 0x0004),#0x00
      00009C 75 36 00         [24]  375 	mov	(_main_seg_65536_37 + 0x0005),#0x00
      00009F 75 37 00         [24]  376 	mov	(_main_seg_65536_37 + 0x0006),#0x00
      0000A2 75 38 00         [24]  377 	mov	(_main_seg_65536_37 + 0x0007),#0x00
      0000A5 75 39 00         [24]  378 	mov	(_main_seg_65536_37 + 0x0008),#0x00
                                    379 ;	./src/main.c:56: Initial7219();	
      0000A8 12 0B 3E         [24]  380 	lcall	_Initial7219
                                    381 ;	./src/main.c:57: SDA = 1;
                                    382 ;	assignBit
      0000AB D2 81            [12]  383 	setb	_P0_1
                                    384 ;	./src/main.c:58: SCL = 1;
                                    385 ;	assignBit
      0000AD D2 80            [12]  386 	setb	_P0_0
                                    387 ;	./src/main.c:59: OLED_Init();		  // Check oled_i2c.c file for SCL,SDA pin connection
      0000AF 12 08 F5         [24]  388 	lcall	_OLED_Init
                                    389 ;	./src/main.c:60: MPU6050_INIT();
      0000B2 12 05 9B         [24]  390 	lcall	_MPU6050_INIT
                                    391 ;	./src/main.c:62: OLED_SetCursor(0,0);  // Set cursor at 0th-line 0th-Position
      0000B5 75 1E 00         [24]  392 	mov	_OLED_SetCursor_PARM_2,#0x00
      0000B8 75 82 00         [24]  393 	mov	dpl,#0x00
      0000BB 12 0A 5D         [24]  394 	lcall	_OLED_SetCursor
                                    395 ;	./src/main.c:64: OLED_SetCursor(2, 0);  
      0000BE 75 1E 00         [24]  396 	mov	_OLED_SetCursor_PARM_2,#0x00
      0000C1 75 82 02         [24]  397 	mov	dpl,#0x02
      0000C4 12 0A 5D         [24]  398 	lcall	_OLED_SetCursor
                                    399 ;	./src/main.c:65: OLED_DisplayString("AX ");
      0000C7 90 0C BC         [24]  400 	mov	dptr,#___str_0
      0000CA 75 F0 80         [24]  401 	mov	b,#0x80
      0000CD 12 0A 07         [24]  402 	lcall	_OLED_DisplayString
                                    403 ;	./src/main.c:66: OLED_SetCursor(3, 0);  
      0000D0 75 1E 00         [24]  404 	mov	_OLED_SetCursor_PARM_2,#0x00
      0000D3 75 82 03         [24]  405 	mov	dpl,#0x03
      0000D6 12 0A 5D         [24]  406 	lcall	_OLED_SetCursor
                                    407 ;	./src/main.c:67: OLED_DisplayString("AY ");
      0000D9 90 0C C0         [24]  408 	mov	dptr,#___str_1
      0000DC 75 F0 80         [24]  409 	mov	b,#0x80
      0000DF 12 0A 07         [24]  410 	lcall	_OLED_DisplayString
                                    411 ;	./src/main.c:68: OLED_SetCursor(4, 0);  
      0000E2 75 1E 00         [24]  412 	mov	_OLED_SetCursor_PARM_2,#0x00
      0000E5 75 82 04         [24]  413 	mov	dpl,#0x04
      0000E8 12 0A 5D         [24]  414 	lcall	_OLED_SetCursor
                                    415 ;	./src/main.c:69: OLED_DisplayString("AZ ");
      0000EB 90 0C C4         [24]  416 	mov	dptr,#___str_2
      0000EE 75 F0 80         [24]  417 	mov	b,#0x80
      0000F1 12 0A 07         [24]  418 	lcall	_OLED_DisplayString
                                    419 ;	./src/main.c:70: OLED_SetCursor(5, 0);  
      0000F4 75 1E 00         [24]  420 	mov	_OLED_SetCursor_PARM_2,#0x00
      0000F7 75 82 05         [24]  421 	mov	dpl,#0x05
      0000FA 12 0A 5D         [24]  422 	lcall	_OLED_SetCursor
                                    423 ;	./src/main.c:71: OLED_DisplayString("GX ");
      0000FD 90 0C C8         [24]  424 	mov	dptr,#___str_3
      000100 75 F0 80         [24]  425 	mov	b,#0x80
      000103 12 0A 07         [24]  426 	lcall	_OLED_DisplayString
                                    427 ;	./src/main.c:72: OLED_SetCursor(6, 0);  
      000106 75 1E 00         [24]  428 	mov	_OLED_SetCursor_PARM_2,#0x00
      000109 75 82 06         [24]  429 	mov	dpl,#0x06
      00010C 12 0A 5D         [24]  430 	lcall	_OLED_SetCursor
                                    431 ;	./src/main.c:73: OLED_DisplayString("GY ");
      00010F 90 0C CC         [24]  432 	mov	dptr,#___str_4
      000112 75 F0 80         [24]  433 	mov	b,#0x80
      000115 12 0A 07         [24]  434 	lcall	_OLED_DisplayString
                                    435 ;	./src/main.c:74: OLED_SetCursor(7, 0);  
      000118 75 1E 00         [24]  436 	mov	_OLED_SetCursor_PARM_2,#0x00
      00011B 75 82 07         [24]  437 	mov	dpl,#0x07
      00011E 12 0A 5D         [24]  438 	lcall	_OLED_SetCursor
                                    439 ;	./src/main.c:75: OLED_DisplayString("GZ ");
      000121 90 0C D0         [24]  440 	mov	dptr,#___str_5
      000124 75 F0 80         [24]  441 	mov	b,#0x80
      000127 12 0A 07         [24]  442 	lcall	_OLED_DisplayString
                                    443 ;	./src/main.c:77: patt = 0xff;led = ~patt;
      00012A 75 30 FF         [24]  444 	mov	_patt,#0xff
      00012D 75 90 00         [24]  445 	mov	_P1,#0x00
                                    446 ;	./src/main.c:78: delay_ms(2000);
      000130 90 07 D0         [24]  447 	mov	dptr,#0x07d0
      000133 12 07 F1         [24]  448 	lcall	_delay_ms
                                    449 ;	./src/main.c:79: patt = 0x00;led = ~patt;
      000136 75 30 00         [24]  450 	mov	_patt,#0x00
      000139 75 90 FF         [24]  451 	mov	_P1,#0xff
                                    452 ;	./src/main.c:80: while(1) {
      00013C                        453 00152$:
                                    454 ;	./src/main.c:81: readMPU6050_AccelData(&accel_data[0]);
      00013C 90 00 24         [24]  455 	mov	dptr,#_accel_data
      00013F 75 F0 40         [24]  456 	mov	b,#0x40
      000142 12 06 39         [24]  457 	lcall	_readMPU6050_AccelData
                                    458 ;	./src/main.c:82: readMPU6050_GyroData(&gyro_data[0]);
      000145 90 00 2A         [24]  459 	mov	dptr,#_gyro_data
      000148 75 F0 40         [24]  460 	mov	b,#0x40
      00014B 12 07 0C         [24]  461 	lcall	_readMPU6050_GyroData
                                    462 ;	./src/main.c:84: for(i = 0; i < 6; i++) {
      00014E 75 23 00         [24]  463 	mov	_i,#0x00
      000151                        464 00154$:
                                    465 ;	./src/main.c:85: if(i < 3) {
      000151 74 FD            [12]  466 	mov	a,#0x100 - 0x03
      000153 25 23            [12]  467 	add	a,_i
      000155 40 1C            [24]  468 	jc	00102$
                                    469 ;	./src/main.c:86: data_buf = accel_data[i];
      000157 E5 23            [12]  470 	mov	a,_i
      000159 25 23            [12]  471 	add	a,_i
      00015B 24 24            [12]  472 	add	a,#_accel_data
      00015D F9               [12]  473 	mov	r1,a
      00015E 87 21            [24]  474 	mov	_data_buf,@r1
      000160 09               [12]  475 	inc	r1
      000161 87 22            [24]  476 	mov	(_data_buf + 1),@r1
      000163 19               [12]  477 	dec	r1
                                    478 ;	./src/main.c:87: OLED_SetCursor(2 + i, 54); 
      000164 AF 23            [24]  479 	mov	r7,_i
      000166 74 02            [12]  480 	mov	a,#0x02
      000168 2F               [12]  481 	add	a,r7
      000169 F5 82            [12]  482 	mov	dpl,a
      00016B 75 1E 36         [24]  483 	mov	_OLED_SetCursor_PARM_2,#0x36
      00016E 12 0A 5D         [24]  484 	lcall	_OLED_SetCursor
      000171 80 1B            [24]  485 	sjmp	00103$
      000173                        486 00102$:
                                    487 ;	./src/main.c:89: data_buf = gyro_data[i - 3];
      000173 E5 23            [12]  488 	mov	a,_i
      000175 FF               [12]  489 	mov	r7,a
      000176 24 FD            [12]  490 	add	a,#0xfd
      000178 25 E0            [12]  491 	add	a,acc
      00017A 24 2A            [12]  492 	add	a,#_gyro_data
      00017C F9               [12]  493 	mov	r1,a
      00017D 87 21            [24]  494 	mov	_data_buf,@r1
      00017F 09               [12]  495 	inc	r1
      000180 87 22            [24]  496 	mov	(_data_buf + 1),@r1
      000182 19               [12]  497 	dec	r1
                                    498 ;	./src/main.c:90: OLED_SetCursor(2 + i, 54); 
      000183 74 02            [12]  499 	mov	a,#0x02
      000185 2F               [12]  500 	add	a,r7
      000186 F5 82            [12]  501 	mov	dpl,a
      000188 75 1E 36         [24]  502 	mov	_OLED_SetCursor_PARM_2,#0x36
      00018B 12 0A 5D         [24]  503 	lcall	_OLED_SetCursor
      00018E                        504 00103$:
                                    505 ;	./src/main.c:92: if(data_buf < 0) {
      00018E E5 22            [12]  506 	mov	a,(_data_buf + 1)
      000190 30 E7 13         [24]  507 	jnb	acc.7,00105$
                                    508 ;	./src/main.c:93: OLED_DisplayChar('-');
      000193 75 82 2D         [24]  509 	mov	dpl,#0x2d
      000196 12 09 64         [24]  510 	lcall	_OLED_DisplayChar
                                    511 ;	./src/main.c:94: data_buf = data_buf * -1;
      000199 C3               [12]  512 	clr	c
      00019A E4               [12]  513 	clr	a
      00019B 95 21            [12]  514 	subb	a,_data_buf
      00019D F5 21            [12]  515 	mov	_data_buf,a
      00019F E4               [12]  516 	clr	a
      0001A0 95 22            [12]  517 	subb	a,(_data_buf + 1)
      0001A2 F5 22            [12]  518 	mov	(_data_buf + 1),a
      0001A4 80 06            [24]  519 	sjmp	00106$
      0001A6                        520 00105$:
                                    521 ;	./src/main.c:96: OLED_DisplayChar(' ');
      0001A6 75 82 20         [24]  522 	mov	dpl,#0x20
      0001A9 12 09 64         [24]  523 	lcall	_OLED_DisplayChar
      0001AC                        524 00106$:
                                    525 ;	./src/main.c:98: OLED_DisplayChar(data_buf / 10000 + '0');
      0001AC 75 40 10         [24]  526 	mov	__divsint_PARM_2,#0x10
      0001AF 75 41 27         [24]  527 	mov	(__divsint_PARM_2 + 1),#0x27
      0001B2 85 21 82         [24]  528 	mov	dpl,_data_buf
      0001B5 85 22 83         [24]  529 	mov	dph,(_data_buf + 1)
      0001B8 12 0C 80         [24]  530 	lcall	__divsint
      0001BB AE 82            [24]  531 	mov	r6,dpl
      0001BD 74 30            [12]  532 	mov	a,#0x30
      0001BF 2E               [12]  533 	add	a,r6
      0001C0 F5 82            [12]  534 	mov	dpl,a
      0001C2 12 09 64         [24]  535 	lcall	_OLED_DisplayChar
                                    536 ;	./src/main.c:99: OLED_DisplayChar(data_buf % 10000 / 1000 + '0');
      0001C5 75 40 10         [24]  537 	mov	__modsint_PARM_2,#0x10
      0001C8 75 41 27         [24]  538 	mov	(__modsint_PARM_2 + 1),#0x27
      0001CB 85 21 82         [24]  539 	mov	dpl,_data_buf
      0001CE 85 22 83         [24]  540 	mov	dph,(_data_buf + 1)
      0001D1 12 0C 4A         [24]  541 	lcall	__modsint
      0001D4 75 40 E8         [24]  542 	mov	__divsint_PARM_2,#0xe8
      0001D7 75 41 03         [24]  543 	mov	(__divsint_PARM_2 + 1),#0x03
      0001DA 12 0C 80         [24]  544 	lcall	__divsint
      0001DD AE 82            [24]  545 	mov	r6,dpl
      0001DF 74 30            [12]  546 	mov	a,#0x30
      0001E1 2E               [12]  547 	add	a,r6
      0001E2 F5 82            [12]  548 	mov	dpl,a
      0001E4 12 09 64         [24]  549 	lcall	_OLED_DisplayChar
                                    550 ;	./src/main.c:100: OLED_DisplayChar(data_buf % 1000 / 100 + '0');
      0001E7 75 40 E8         [24]  551 	mov	__modsint_PARM_2,#0xe8
      0001EA 75 41 03         [24]  552 	mov	(__modsint_PARM_2 + 1),#0x03
      0001ED 85 21 82         [24]  553 	mov	dpl,_data_buf
      0001F0 85 22 83         [24]  554 	mov	dph,(_data_buf + 1)
      0001F3 12 0C 4A         [24]  555 	lcall	__modsint
      0001F6 75 40 64         [24]  556 	mov	__divsint_PARM_2,#0x64
      0001F9 75 41 00         [24]  557 	mov	(__divsint_PARM_2 + 1),#0x00
      0001FC 12 0C 80         [24]  558 	lcall	__divsint
      0001FF AE 82            [24]  559 	mov	r6,dpl
      000201 74 30            [12]  560 	mov	a,#0x30
      000203 2E               [12]  561 	add	a,r6
      000204 F5 82            [12]  562 	mov	dpl,a
      000206 12 09 64         [24]  563 	lcall	_OLED_DisplayChar
                                    564 ;	./src/main.c:101: OLED_DisplayChar(data_buf % 100 / 10 + '0');
      000209 75 40 64         [24]  565 	mov	__modsint_PARM_2,#0x64
      00020C 75 41 00         [24]  566 	mov	(__modsint_PARM_2 + 1),#0x00
      00020F 85 21 82         [24]  567 	mov	dpl,_data_buf
      000212 85 22 83         [24]  568 	mov	dph,(_data_buf + 1)
      000215 12 0C 4A         [24]  569 	lcall	__modsint
      000218 75 40 0A         [24]  570 	mov	__divsint_PARM_2,#0x0a
      00021B 75 41 00         [24]  571 	mov	(__divsint_PARM_2 + 1),#0x00
      00021E 12 0C 80         [24]  572 	lcall	__divsint
      000221 AE 82            [24]  573 	mov	r6,dpl
      000223 74 30            [12]  574 	mov	a,#0x30
      000225 2E               [12]  575 	add	a,r6
      000226 F5 82            [12]  576 	mov	dpl,a
      000228 12 09 64         [24]  577 	lcall	_OLED_DisplayChar
                                    578 ;	./src/main.c:102: OLED_DisplayChar(data_buf % 10 + '0');
      00022B 75 40 0A         [24]  579 	mov	__modsint_PARM_2,#0x0a
      00022E 75 41 00         [24]  580 	mov	(__modsint_PARM_2 + 1),#0x00
      000231 85 21 82         [24]  581 	mov	dpl,_data_buf
      000234 85 22 83         [24]  582 	mov	dph,(_data_buf + 1)
      000237 12 0C 4A         [24]  583 	lcall	__modsint
      00023A AE 82            [24]  584 	mov	r6,dpl
      00023C 74 30            [12]  585 	mov	a,#0x30
      00023E 2E               [12]  586 	add	a,r6
      00023F F5 82            [12]  587 	mov	dpl,a
      000241 12 09 64         [24]  588 	lcall	_OLED_DisplayChar
                                    589 ;	./src/main.c:84: for(i = 0; i < 6; i++) {
      000244 05 23            [12]  590 	inc	_i
      000246 74 FA            [12]  591 	mov	a,#0x100 - 0x06
      000248 25 23            [12]  592 	add	a,_i
      00024A 40 03            [24]  593 	jc	00330$
      00024C 02 01 51         [24]  594 	ljmp	00154$
      00024F                        595 00330$:
                                    596 ;	./src/main.c:107: data_buf = accel_data[2];
      00024F 85 28 21         [24]  597 	mov	_data_buf,((_accel_data + 0x0004) + 0)
      000252 85 29 22         [24]  598 	mov	(_data_buf + 1),((_accel_data + 0x0004) + 1)
                                    599 ;	./src/main.c:108: while (data_buf >= 16000){
      000255                        600 00116$:
      000255 C3               [12]  601 	clr	c
      000256 E5 21            [12]  602 	mov	a,_data_buf
      000258 94 80            [12]  603 	subb	a,#0x80
      00025A E5 22            [12]  604 	mov	a,(_data_buf + 1)
      00025C 64 80            [12]  605 	xrl	a,#0x80
      00025E 94 BE            [12]  606 	subb	a,#0xbe
      000260 50 03            [24]  607 	jnc	00331$
      000262 02 03 AE         [24]  608 	ljmp	00118$
      000265                        609 00331$:
                                    610 ;	./src/main.c:109: patt = 0x18;led = ~patt;
      000265 75 30 18         [24]  611 	mov	_patt,#0x18
      000268 75 90 E7         [24]  612 	mov	_P1,#0xe7
                                    613 ;	./src/main.c:110: delay_ms(500);
      00026B 90 01 F4         [24]  614 	mov	dptr,#0x01f4
      00026E 12 07 F1         [24]  615 	lcall	_delay_ms
                                    616 ;	./src/main.c:111: patt = 0x00;led = ~patt;
      000271 75 30 00         [24]  617 	mov	_patt,#0x00
      000274 75 90 FF         [24]  618 	mov	_P1,#0xff
                                    619 ;	./src/main.c:112: seg[5] = 0x18;
      000277 75 36 18         [24]  620 	mov	(_main_seg_65536_37 + 0x0005),#0x18
                                    621 ;	./src/main.c:113: seg[4] = 0x18;
      00027A 75 35 18         [24]  622 	mov	(_main_seg_65536_37 + 0x0004),#0x18
                                    623 ;	./src/main.c:114: for (i = 8; i >= 1; i--) {
      00027D 75 23 08         [24]  624 	mov	_i,#0x08
      000280                        625 00156$:
                                    626 ;	./src/main.c:115: Writesingle7219(1,i, seg[i]);
      000280 E5 23            [12]  627 	mov	a,_i
      000282 24 31            [12]  628 	add	a,#_main_seg_65536_37
      000284 F9               [12]  629 	mov	r1,a
      000285 87 3F            [24]  630 	mov	_Writesingle7219_PARM_3,@r1
      000287 85 23 3E         [24]  631 	mov	_Writesingle7219_PARM_2,_i
      00028A 75 82 01         [24]  632 	mov	dpl,#0x01
      00028D 12 0A FB         [24]  633 	lcall	_Writesingle7219
                                    634 ;	./src/main.c:114: for (i = 8; i >= 1; i--) {
      000290 15 23            [12]  635 	dec	_i
      000292 74 FF            [12]  636 	mov	a,#0x100 - 0x01
      000294 25 23            [12]  637 	add	a,_i
      000296 40 E8            [24]  638 	jc	00156$
                                    639 ;	./src/main.c:118: readMPU6050_AccelData(&accel_data[0]);
      000298 90 00 24         [24]  640 	mov	dptr,#_accel_data
      00029B 75 F0 40         [24]  641 	mov	b,#0x40
      00029E 12 06 39         [24]  642 	lcall	_readMPU6050_AccelData
                                    643 ;	./src/main.c:119: readMPU6050_GyroData(&gyro_data[0]);
      0002A1 90 00 2A         [24]  644 	mov	dptr,#_gyro_data
      0002A4 75 F0 40         [24]  645 	mov	b,#0x40
      0002A7 12 07 0C         [24]  646 	lcall	_readMPU6050_GyroData
                                    647 ;	./src/main.c:121: for(i = 0; i < 6; i++) {
      0002AA 75 23 00         [24]  648 	mov	_i,#0x00
      0002AD                        649 00158$:
                                    650 ;	./src/main.c:122: if(i < 3) {
      0002AD 74 FD            [12]  651 	mov	a,#0x100 - 0x03
      0002AF 25 23            [12]  652 	add	a,_i
      0002B1 40 1C            [24]  653 	jc	00110$
                                    654 ;	./src/main.c:123: data_buf = accel_data[i];
      0002B3 E5 23            [12]  655 	mov	a,_i
      0002B5 25 23            [12]  656 	add	a,_i
      0002B7 24 24            [12]  657 	add	a,#_accel_data
      0002B9 F9               [12]  658 	mov	r1,a
      0002BA 87 21            [24]  659 	mov	_data_buf,@r1
      0002BC 09               [12]  660 	inc	r1
      0002BD 87 22            [24]  661 	mov	(_data_buf + 1),@r1
      0002BF 19               [12]  662 	dec	r1
                                    663 ;	./src/main.c:124: OLED_SetCursor(2 + i, 54); 
      0002C0 AF 23            [24]  664 	mov	r7,_i
      0002C2 74 02            [12]  665 	mov	a,#0x02
      0002C4 2F               [12]  666 	add	a,r7
      0002C5 F5 82            [12]  667 	mov	dpl,a
      0002C7 75 1E 36         [24]  668 	mov	_OLED_SetCursor_PARM_2,#0x36
      0002CA 12 0A 5D         [24]  669 	lcall	_OLED_SetCursor
      0002CD 80 1B            [24]  670 	sjmp	00111$
      0002CF                        671 00110$:
                                    672 ;	./src/main.c:126: data_buf = gyro_data[i - 3];
      0002CF E5 23            [12]  673 	mov	a,_i
      0002D1 FF               [12]  674 	mov	r7,a
      0002D2 24 FD            [12]  675 	add	a,#0xfd
      0002D4 25 E0            [12]  676 	add	a,acc
      0002D6 24 2A            [12]  677 	add	a,#_gyro_data
      0002D8 F9               [12]  678 	mov	r1,a
      0002D9 87 21            [24]  679 	mov	_data_buf,@r1
      0002DB 09               [12]  680 	inc	r1
      0002DC 87 22            [24]  681 	mov	(_data_buf + 1),@r1
      0002DE 19               [12]  682 	dec	r1
                                    683 ;	./src/main.c:127: OLED_SetCursor(2 + i, 54); 
      0002DF 74 02            [12]  684 	mov	a,#0x02
      0002E1 2F               [12]  685 	add	a,r7
      0002E2 F5 82            [12]  686 	mov	dpl,a
      0002E4 75 1E 36         [24]  687 	mov	_OLED_SetCursor_PARM_2,#0x36
      0002E7 12 0A 5D         [24]  688 	lcall	_OLED_SetCursor
      0002EA                        689 00111$:
                                    690 ;	./src/main.c:129: if(data_buf < 0) {
      0002EA E5 22            [12]  691 	mov	a,(_data_buf + 1)
      0002EC 30 E7 13         [24]  692 	jnb	acc.7,00113$
                                    693 ;	./src/main.c:130: OLED_DisplayChar('-');
      0002EF 75 82 2D         [24]  694 	mov	dpl,#0x2d
      0002F2 12 09 64         [24]  695 	lcall	_OLED_DisplayChar
                                    696 ;	./src/main.c:131: data_buf = data_buf * -1;
      0002F5 C3               [12]  697 	clr	c
      0002F6 E4               [12]  698 	clr	a
      0002F7 95 21            [12]  699 	subb	a,_data_buf
      0002F9 F5 21            [12]  700 	mov	_data_buf,a
      0002FB E4               [12]  701 	clr	a
      0002FC 95 22            [12]  702 	subb	a,(_data_buf + 1)
      0002FE F5 22            [12]  703 	mov	(_data_buf + 1),a
      000300 80 06            [24]  704 	sjmp	00114$
      000302                        705 00113$:
                                    706 ;	./src/main.c:133: OLED_DisplayChar(' ');
      000302 75 82 20         [24]  707 	mov	dpl,#0x20
      000305 12 09 64         [24]  708 	lcall	_OLED_DisplayChar
      000308                        709 00114$:
                                    710 ;	./src/main.c:135: OLED_DisplayChar(data_buf / 10000 + '0');
      000308 75 40 10         [24]  711 	mov	__divsint_PARM_2,#0x10
      00030B 75 41 27         [24]  712 	mov	(__divsint_PARM_2 + 1),#0x27
      00030E 85 21 82         [24]  713 	mov	dpl,_data_buf
      000311 85 22 83         [24]  714 	mov	dph,(_data_buf + 1)
      000314 12 0C 80         [24]  715 	lcall	__divsint
      000317 AE 82            [24]  716 	mov	r6,dpl
      000319 74 30            [12]  717 	mov	a,#0x30
      00031B 2E               [12]  718 	add	a,r6
      00031C F5 82            [12]  719 	mov	dpl,a
      00031E 12 09 64         [24]  720 	lcall	_OLED_DisplayChar
                                    721 ;	./src/main.c:136: OLED_DisplayChar(data_buf % 10000 / 1000 + '0');
      000321 75 40 10         [24]  722 	mov	__modsint_PARM_2,#0x10
      000324 75 41 27         [24]  723 	mov	(__modsint_PARM_2 + 1),#0x27
      000327 85 21 82         [24]  724 	mov	dpl,_data_buf
      00032A 85 22 83         [24]  725 	mov	dph,(_data_buf + 1)
      00032D 12 0C 4A         [24]  726 	lcall	__modsint
      000330 75 40 E8         [24]  727 	mov	__divsint_PARM_2,#0xe8
      000333 75 41 03         [24]  728 	mov	(__divsint_PARM_2 + 1),#0x03
      000336 12 0C 80         [24]  729 	lcall	__divsint
      000339 AE 82            [24]  730 	mov	r6,dpl
      00033B 74 30            [12]  731 	mov	a,#0x30
      00033D 2E               [12]  732 	add	a,r6
      00033E F5 82            [12]  733 	mov	dpl,a
      000340 12 09 64         [24]  734 	lcall	_OLED_DisplayChar
                                    735 ;	./src/main.c:137: OLED_DisplayChar(data_buf % 1000 / 100 + '0');
      000343 75 40 E8         [24]  736 	mov	__modsint_PARM_2,#0xe8
      000346 75 41 03         [24]  737 	mov	(__modsint_PARM_2 + 1),#0x03
      000349 85 21 82         [24]  738 	mov	dpl,_data_buf
      00034C 85 22 83         [24]  739 	mov	dph,(_data_buf + 1)
      00034F 12 0C 4A         [24]  740 	lcall	__modsint
      000352 75 40 64         [24]  741 	mov	__divsint_PARM_2,#0x64
      000355 75 41 00         [24]  742 	mov	(__divsint_PARM_2 + 1),#0x00
      000358 12 0C 80         [24]  743 	lcall	__divsint
      00035B AE 82            [24]  744 	mov	r6,dpl
      00035D 74 30            [12]  745 	mov	a,#0x30
      00035F 2E               [12]  746 	add	a,r6
      000360 F5 82            [12]  747 	mov	dpl,a
      000362 12 09 64         [24]  748 	lcall	_OLED_DisplayChar
                                    749 ;	./src/main.c:138: OLED_DisplayChar(data_buf % 100 / 10 + '0');
      000365 75 40 64         [24]  750 	mov	__modsint_PARM_2,#0x64
      000368 75 41 00         [24]  751 	mov	(__modsint_PARM_2 + 1),#0x00
      00036B 85 21 82         [24]  752 	mov	dpl,_data_buf
      00036E 85 22 83         [24]  753 	mov	dph,(_data_buf + 1)
      000371 12 0C 4A         [24]  754 	lcall	__modsint
      000374 75 40 0A         [24]  755 	mov	__divsint_PARM_2,#0x0a
      000377 75 41 00         [24]  756 	mov	(__divsint_PARM_2 + 1),#0x00
      00037A 12 0C 80         [24]  757 	lcall	__divsint
      00037D AE 82            [24]  758 	mov	r6,dpl
      00037F 74 30            [12]  759 	mov	a,#0x30
      000381 2E               [12]  760 	add	a,r6
      000382 F5 82            [12]  761 	mov	dpl,a
      000384 12 09 64         [24]  762 	lcall	_OLED_DisplayChar
                                    763 ;	./src/main.c:139: OLED_DisplayChar(data_buf % 10 + '0');
      000387 75 40 0A         [24]  764 	mov	__modsint_PARM_2,#0x0a
      00038A 75 41 00         [24]  765 	mov	(__modsint_PARM_2 + 1),#0x00
      00038D 85 21 82         [24]  766 	mov	dpl,_data_buf
      000390 85 22 83         [24]  767 	mov	dph,(_data_buf + 1)
      000393 12 0C 4A         [24]  768 	lcall	__modsint
      000396 AE 82            [24]  769 	mov	r6,dpl
      000398 74 30            [12]  770 	mov	a,#0x30
      00039A 2E               [12]  771 	add	a,r6
      00039B F5 82            [12]  772 	mov	dpl,a
      00039D 12 09 64         [24]  773 	lcall	_OLED_DisplayChar
                                    774 ;	./src/main.c:121: for(i = 0; i < 6; i++) {
      0003A0 05 23            [12]  775 	inc	_i
      0003A2 74 FA            [12]  776 	mov	a,#0x100 - 0x06
      0003A4 25 23            [12]  777 	add	a,_i
      0003A6 40 03            [24]  778 	jc	00335$
      0003A8 02 02 AD         [24]  779 	ljmp	00158$
      0003AB                        780 00335$:
      0003AB 02 02 55         [24]  781 	ljmp	00116$
      0003AE                        782 00118$:
                                    783 ;	./src/main.c:143: data_buf = accel_data[0];
      0003AE 85 24 21         [24]  784 	mov	_data_buf,(_accel_data + 0)
      0003B1 85 25 22         [24]  785 	mov	(_data_buf + 1),(_accel_data + 1)
                                    786 ;	./src/main.c:144: if (data_buf <= -15000){
      0003B4 C3               [12]  787 	clr	c
      0003B5 74 68            [12]  788 	mov	a,#0x68
      0003B7 95 21            [12]  789 	subb	a,_data_buf
      0003B9 74 45            [12]  790 	mov	a,#(0xc5 ^ 0x80)
      0003BB 85 22 F0         [24]  791 	mov	b,(_data_buf + 1)
      0003BE 63 F0 80         [24]  792 	xrl	b,#0x80
      0003C1 95 F0            [12]  793 	subb	a,b
      0003C3 40 27            [24]  794 	jc	00149$
                                    795 ;	./src/main.c:145: patt = 0b00000011;
      0003C5 75 30 03         [24]  796 	mov	_patt,#0x03
                                    797 ;	./src/main.c:146: seg[5] = 0xC0;
      0003C8 75 36 C0         [24]  798 	mov	(_main_seg_65536_37 + 0x0005),#0xc0
                                    799 ;	./src/main.c:147: seg[4] = 0xC0;
      0003CB 75 35 C0         [24]  800 	mov	(_main_seg_65536_37 + 0x0004),#0xc0
                                    801 ;	./src/main.c:148: for (i = 8; i >= 1; i--) {
      0003CE 75 23 08         [24]  802 	mov	_i,#0x08
      0003D1                        803 00160$:
                                    804 ;	./src/main.c:149: Writesingle7219(1,i, seg[i]);
      0003D1 E5 23            [12]  805 	mov	a,_i
      0003D3 24 31            [12]  806 	add	a,#_main_seg_65536_37
      0003D5 F9               [12]  807 	mov	r1,a
      0003D6 87 3F            [24]  808 	mov	_Writesingle7219_PARM_3,@r1
      0003D8 85 23 3E         [24]  809 	mov	_Writesingle7219_PARM_2,_i
      0003DB 75 82 01         [24]  810 	mov	dpl,#0x01
      0003DE 12 0A FB         [24]  811 	lcall	_Writesingle7219
                                    812 ;	./src/main.c:148: for (i = 8; i >= 1; i--) {
      0003E1 15 23            [12]  813 	dec	_i
      0003E3 74 FF            [12]  814 	mov	a,#0x100 - 0x01
      0003E5 25 23            [12]  815 	add	a,_i
      0003E7 40 E8            [24]  816 	jc	00160$
      0003E9 02 05 8D         [24]  817 	ljmp	00150$
      0003EC                        818 00149$:
                                    819 ;	./src/main.c:151: }else if (data_buf > -15000 && data_buf <= -9000){
      0003EC C3               [12]  820 	clr	c
      0003ED 74 68            [12]  821 	mov	a,#0x68
      0003EF 95 21            [12]  822 	subb	a,_data_buf
      0003F1 74 45            [12]  823 	mov	a,#(0xc5 ^ 0x80)
      0003F3 85 22 F0         [24]  824 	mov	b,(_data_buf + 1)
      0003F6 63 F0 80         [24]  825 	xrl	b,#0x80
      0003F9 95 F0            [12]  826 	subb	a,b
      0003FB 50 38            [24]  827 	jnc	00145$
      0003FD C3               [12]  828 	clr	c
      0003FE 74 D8            [12]  829 	mov	a,#0xd8
      000400 95 21            [12]  830 	subb	a,_data_buf
      000402 74 5C            [12]  831 	mov	a,#(0xdc ^ 0x80)
      000404 85 22 F0         [24]  832 	mov	b,(_data_buf + 1)
      000407 63 F0 80         [24]  833 	xrl	b,#0x80
      00040A 95 F0            [12]  834 	subb	a,b
      00040C 40 27            [24]  835 	jc	00145$
                                    836 ;	./src/main.c:152: patt = 0b00000110;
      00040E 75 30 06         [24]  837 	mov	_patt,#0x06
                                    838 ;	./src/main.c:153: seg[5] = 0x60;
      000411 75 36 60         [24]  839 	mov	(_main_seg_65536_37 + 0x0005),#0x60
                                    840 ;	./src/main.c:154: seg[4] = 0x60;
      000414 75 35 60         [24]  841 	mov	(_main_seg_65536_37 + 0x0004),#0x60
                                    842 ;	./src/main.c:155: for (i = 8; i >= 1; i--) {
      000417 75 23 08         [24]  843 	mov	_i,#0x08
      00041A                        844 00162$:
                                    845 ;	./src/main.c:156: Writesingle7219(1,i, seg[i]);
      00041A E5 23            [12]  846 	mov	a,_i
      00041C 24 31            [12]  847 	add	a,#_main_seg_65536_37
      00041E F9               [12]  848 	mov	r1,a
      00041F 87 3F            [24]  849 	mov	_Writesingle7219_PARM_3,@r1
      000421 85 23 3E         [24]  850 	mov	_Writesingle7219_PARM_2,_i
      000424 75 82 01         [24]  851 	mov	dpl,#0x01
      000427 12 0A FB         [24]  852 	lcall	_Writesingle7219
                                    853 ;	./src/main.c:155: for (i = 8; i >= 1; i--) {
      00042A 15 23            [12]  854 	dec	_i
      00042C 74 FF            [12]  855 	mov	a,#0x100 - 0x01
      00042E 25 23            [12]  856 	add	a,_i
      000430 40 E8            [24]  857 	jc	00162$
      000432 02 05 8D         [24]  858 	ljmp	00150$
      000435                        859 00145$:
                                    860 ;	./src/main.c:158: }else if (data_buf > -9000 && data_buf <= -3200){
      000435 C3               [12]  861 	clr	c
      000436 74 D8            [12]  862 	mov	a,#0xd8
      000438 95 21            [12]  863 	subb	a,_data_buf
      00043A 74 5C            [12]  864 	mov	a,#(0xdc ^ 0x80)
      00043C 85 22 F0         [24]  865 	mov	b,(_data_buf + 1)
      00043F 63 F0 80         [24]  866 	xrl	b,#0x80
      000442 95 F0            [12]  867 	subb	a,b
      000444 50 38            [24]  868 	jnc	00141$
      000446 C3               [12]  869 	clr	c
      000447 74 80            [12]  870 	mov	a,#0x80
      000449 95 21            [12]  871 	subb	a,_data_buf
      00044B 74 73            [12]  872 	mov	a,#(0xf3 ^ 0x80)
      00044D 85 22 F0         [24]  873 	mov	b,(_data_buf + 1)
      000450 63 F0 80         [24]  874 	xrl	b,#0x80
      000453 95 F0            [12]  875 	subb	a,b
      000455 40 27            [24]  876 	jc	00141$
                                    877 ;	./src/main.c:159: patt = 0b001100;
      000457 75 30 0C         [24]  878 	mov	_patt,#0x0c
                                    879 ;	./src/main.c:160: seg[5] = 0x30;
      00045A 75 36 30         [24]  880 	mov	(_main_seg_65536_37 + 0x0005),#0x30
                                    881 ;	./src/main.c:161: seg[4] = 0x30;
      00045D 75 35 30         [24]  882 	mov	(_main_seg_65536_37 + 0x0004),#0x30
                                    883 ;	./src/main.c:162: for (i = 8; i >= 1; i--) {
      000460 75 23 08         [24]  884 	mov	_i,#0x08
      000463                        885 00164$:
                                    886 ;	./src/main.c:163: Writesingle7219(1,i, seg[i]);
      000463 E5 23            [12]  887 	mov	a,_i
      000465 24 31            [12]  888 	add	a,#_main_seg_65536_37
      000467 F9               [12]  889 	mov	r1,a
      000468 87 3F            [24]  890 	mov	_Writesingle7219_PARM_3,@r1
      00046A 85 23 3E         [24]  891 	mov	_Writesingle7219_PARM_2,_i
      00046D 75 82 01         [24]  892 	mov	dpl,#0x01
      000470 12 0A FB         [24]  893 	lcall	_Writesingle7219
                                    894 ;	./src/main.c:162: for (i = 8; i >= 1; i--) {
      000473 15 23            [12]  895 	dec	_i
      000475 74 FF            [12]  896 	mov	a,#0x100 - 0x01
      000477 25 23            [12]  897 	add	a,_i
      000479 40 E8            [24]  898 	jc	00164$
      00047B 02 05 8D         [24]  899 	ljmp	00150$
      00047E                        900 00141$:
                                    901 ;	./src/main.c:165: }else if (data_buf > -3200 && data_buf <= 3200){
      00047E C3               [12]  902 	clr	c
      00047F 74 80            [12]  903 	mov	a,#0x80
      000481 95 21            [12]  904 	subb	a,_data_buf
      000483 74 73            [12]  905 	mov	a,#(0xf3 ^ 0x80)
      000485 85 22 F0         [24]  906 	mov	b,(_data_buf + 1)
      000488 63 F0 80         [24]  907 	xrl	b,#0x80
      00048B 95 F0            [12]  908 	subb	a,b
      00048D 50 38            [24]  909 	jnc	00137$
      00048F C3               [12]  910 	clr	c
      000490 74 80            [12]  911 	mov	a,#0x80
      000492 95 21            [12]  912 	subb	a,_data_buf
      000494 74 8C            [12]  913 	mov	a,#(0x0c ^ 0x80)
      000496 85 22 F0         [24]  914 	mov	b,(_data_buf + 1)
      000499 63 F0 80         [24]  915 	xrl	b,#0x80
      00049C 95 F0            [12]  916 	subb	a,b
      00049E 40 27            [24]  917 	jc	00137$
                                    918 ;	./src/main.c:166: patt = 0x18;
      0004A0 75 30 18         [24]  919 	mov	_patt,#0x18
                                    920 ;	./src/main.c:167: seg[5] = 0x18;
      0004A3 75 36 18         [24]  921 	mov	(_main_seg_65536_37 + 0x0005),#0x18
                                    922 ;	./src/main.c:168: seg[4] = 0x18;            
      0004A6 75 35 18         [24]  923 	mov	(_main_seg_65536_37 + 0x0004),#0x18
                                    924 ;	./src/main.c:169: for (i = 8; i >= 1; i--) {
      0004A9 75 23 08         [24]  925 	mov	_i,#0x08
      0004AC                        926 00166$:
                                    927 ;	./src/main.c:170: Writesingle7219(1,i, seg[i]);
      0004AC E5 23            [12]  928 	mov	a,_i
      0004AE 24 31            [12]  929 	add	a,#_main_seg_65536_37
      0004B0 F9               [12]  930 	mov	r1,a
      0004B1 87 3F            [24]  931 	mov	_Writesingle7219_PARM_3,@r1
      0004B3 85 23 3E         [24]  932 	mov	_Writesingle7219_PARM_2,_i
      0004B6 75 82 01         [24]  933 	mov	dpl,#0x01
      0004B9 12 0A FB         [24]  934 	lcall	_Writesingle7219
                                    935 ;	./src/main.c:169: for (i = 8; i >= 1; i--) {
      0004BC 15 23            [12]  936 	dec	_i
      0004BE 74 FF            [12]  937 	mov	a,#0x100 - 0x01
      0004C0 25 23            [12]  938 	add	a,_i
      0004C2 40 E8            [24]  939 	jc	00166$
      0004C4 02 05 8D         [24]  940 	ljmp	00150$
      0004C7                        941 00137$:
                                    942 ;	./src/main.c:172: }else if (data_buf > 3200 && data_buf <= 9600){
      0004C7 C3               [12]  943 	clr	c
      0004C8 74 80            [12]  944 	mov	a,#0x80
      0004CA 95 21            [12]  945 	subb	a,_data_buf
      0004CC 74 8C            [12]  946 	mov	a,#(0x0c ^ 0x80)
      0004CE 85 22 F0         [24]  947 	mov	b,(_data_buf + 1)
      0004D1 63 F0 80         [24]  948 	xrl	b,#0x80
      0004D4 95 F0            [12]  949 	subb	a,b
      0004D6 50 38            [24]  950 	jnc	00133$
      0004D8 C3               [12]  951 	clr	c
      0004D9 74 80            [12]  952 	mov	a,#0x80
      0004DB 95 21            [12]  953 	subb	a,_data_buf
      0004DD 74 A5            [12]  954 	mov	a,#(0x25 ^ 0x80)
      0004DF 85 22 F0         [24]  955 	mov	b,(_data_buf + 1)
      0004E2 63 F0 80         [24]  956 	xrl	b,#0x80
      0004E5 95 F0            [12]  957 	subb	a,b
      0004E7 40 27            [24]  958 	jc	00133$
                                    959 ;	./src/main.c:173: patt = 0b00110000;
      0004E9 75 30 30         [24]  960 	mov	_patt,#0x30
                                    961 ;	./src/main.c:174: seg[5] = 0x0C;
      0004EC 75 36 0C         [24]  962 	mov	(_main_seg_65536_37 + 0x0005),#0x0c
                                    963 ;	./src/main.c:175: seg[4] = 0x0C;  
      0004EF 75 35 0C         [24]  964 	mov	(_main_seg_65536_37 + 0x0004),#0x0c
                                    965 ;	./src/main.c:176: for (i = 8; i >= 1; i--) {
      0004F2 75 23 08         [24]  966 	mov	_i,#0x08
      0004F5                        967 00168$:
                                    968 ;	./src/main.c:177: Writesingle7219(1,i, seg[i]);
      0004F5 E5 23            [12]  969 	mov	a,_i
      0004F7 24 31            [12]  970 	add	a,#_main_seg_65536_37
      0004F9 F9               [12]  971 	mov	r1,a
      0004FA 87 3F            [24]  972 	mov	_Writesingle7219_PARM_3,@r1
      0004FC 85 23 3E         [24]  973 	mov	_Writesingle7219_PARM_2,_i
      0004FF 75 82 01         [24]  974 	mov	dpl,#0x01
      000502 12 0A FB         [24]  975 	lcall	_Writesingle7219
                                    976 ;	./src/main.c:176: for (i = 8; i >= 1; i--) {
      000505 15 23            [12]  977 	dec	_i
      000507 74 FF            [12]  978 	mov	a,#0x100 - 0x01
      000509 25 23            [12]  979 	add	a,_i
      00050B 40 E8            [24]  980 	jc	00168$
      00050D 02 05 8D         [24]  981 	ljmp	00150$
      000510                        982 00133$:
                                    983 ;	./src/main.c:179: }else if (data_buf > 9600 && data_buf <= 16000){
      000510 C3               [12]  984 	clr	c
      000511 74 80            [12]  985 	mov	a,#0x80
      000513 95 21            [12]  986 	subb	a,_data_buf
      000515 74 A5            [12]  987 	mov	a,#(0x25 ^ 0x80)
      000517 85 22 F0         [24]  988 	mov	b,(_data_buf + 1)
      00051A 63 F0 80         [24]  989 	xrl	b,#0x80
      00051D 95 F0            [12]  990 	subb	a,b
      00051F 50 37            [24]  991 	jnc	00129$
      000521 C3               [12]  992 	clr	c
      000522 74 80            [12]  993 	mov	a,#0x80
      000524 95 21            [12]  994 	subb	a,_data_buf
      000526 74 BE            [12]  995 	mov	a,#(0x3e ^ 0x80)
      000528 85 22 F0         [24]  996 	mov	b,(_data_buf + 1)
      00052B 63 F0 80         [24]  997 	xrl	b,#0x80
      00052E 95 F0            [12]  998 	subb	a,b
      000530 40 26            [24]  999 	jc	00129$
                                   1000 ;	./src/main.c:180: patt = 0b01100000;
      000532 75 30 60         [24] 1001 	mov	_patt,#0x60
                                   1002 ;	./src/main.c:181: seg[5] = 0x06;
      000535 75 36 06         [24] 1003 	mov	(_main_seg_65536_37 + 0x0005),#0x06
                                   1004 ;	./src/main.c:182: seg[4] = 0x06; 
      000538 75 35 06         [24] 1005 	mov	(_main_seg_65536_37 + 0x0004),#0x06
                                   1006 ;	./src/main.c:183: for (i = 8; i >= 1; i--) {
      00053B 75 23 08         [24] 1007 	mov	_i,#0x08
      00053E                       1008 00170$:
                                   1009 ;	./src/main.c:184: Writesingle7219(1,i, seg[i]);
      00053E E5 23            [12] 1010 	mov	a,_i
      000540 24 31            [12] 1011 	add	a,#_main_seg_65536_37
      000542 F9               [12] 1012 	mov	r1,a
      000543 87 3F            [24] 1013 	mov	_Writesingle7219_PARM_3,@r1
      000545 85 23 3E         [24] 1014 	mov	_Writesingle7219_PARM_2,_i
      000548 75 82 01         [24] 1015 	mov	dpl,#0x01
      00054B 12 0A FB         [24] 1016 	lcall	_Writesingle7219
                                   1017 ;	./src/main.c:183: for (i = 8; i >= 1; i--) {
      00054E 15 23            [12] 1018 	dec	_i
      000550 74 FF            [12] 1019 	mov	a,#0x100 - 0x01
      000552 25 23            [12] 1020 	add	a,_i
      000554 40 E8            [24] 1021 	jc	00170$
      000556 80 35            [24] 1022 	sjmp	00150$
      000558                       1023 00129$:
                                   1024 ;	./src/main.c:186: }else if (data_buf > 16000 ){
      000558 C3               [12] 1025 	clr	c
      000559 74 80            [12] 1026 	mov	a,#0x80
      00055B 95 21            [12] 1027 	subb	a,_data_buf
      00055D 74 BE            [12] 1028 	mov	a,#(0x3e ^ 0x80)
      00055F 85 22 F0         [24] 1029 	mov	b,(_data_buf + 1)
      000562 63 F0 80         [24] 1030 	xrl	b,#0x80
      000565 95 F0            [12] 1031 	subb	a,b
      000567 50 24            [24] 1032 	jnc	00150$
                                   1033 ;	./src/main.c:187: patt = 0b11000000;
      000569 75 30 C0         [24] 1034 	mov	_patt,#0xc0
                                   1035 ;	./src/main.c:188: seg[5] = 0x03;
      00056C 75 36 03         [24] 1036 	mov	(_main_seg_65536_37 + 0x0005),#0x03
                                   1037 ;	./src/main.c:189: seg[4] = 0x03; 
      00056F 75 35 03         [24] 1038 	mov	(_main_seg_65536_37 + 0x0004),#0x03
                                   1039 ;	./src/main.c:190: for (i = 8; i >= 1; i--) {
      000572 75 23 08         [24] 1040 	mov	_i,#0x08
      000575                       1041 00172$:
                                   1042 ;	./src/main.c:191: Writesingle7219(1,i, seg[i]);
      000575 E5 23            [12] 1043 	mov	a,_i
      000577 24 31            [12] 1044 	add	a,#_main_seg_65536_37
      000579 F9               [12] 1045 	mov	r1,a
      00057A 87 3F            [24] 1046 	mov	_Writesingle7219_PARM_3,@r1
      00057C 85 23 3E         [24] 1047 	mov	_Writesingle7219_PARM_2,_i
      00057F 75 82 01         [24] 1048 	mov	dpl,#0x01
      000582 12 0A FB         [24] 1049 	lcall	_Writesingle7219
                                   1050 ;	./src/main.c:190: for (i = 8; i >= 1; i--) {
      000585 15 23            [12] 1051 	dec	_i
      000587 74 FF            [12] 1052 	mov	a,#0x100 - 0x01
      000589 25 23            [12] 1053 	add	a,_i
      00058B 40 E8            [24] 1054 	jc	00172$
      00058D                       1055 00150$:
                                   1056 ;	./src/main.c:196: led = ~patt;
      00058D E5 30            [12] 1057 	mov	a,_patt
      00058F F4               [12] 1058 	cpl	a
      000590 F5 90            [12] 1059 	mov	_P1,a
                                   1060 ;	./src/main.c:197: delay_ms(100);
      000592 90 00 64         [24] 1061 	mov	dptr,#0x0064
      000595 12 07 F1         [24] 1062 	lcall	_delay_ms
                                   1063 ;	./src/main.c:199: }
      000598 02 01 3C         [24] 1064 	ljmp	00152$
                                   1065 	.area CSEG    (CODE)
                                   1066 	.area CONST   (CODE)
                                   1067 	.area CONST   (CODE)
      000CBC                       1068 ___str_0:
      000CBC 41 58 20              1069 	.ascii "AX "
      000CBF 00                    1070 	.db 0x00
                                   1071 	.area CSEG    (CODE)
                                   1072 	.area CONST   (CODE)
      000CC0                       1073 ___str_1:
      000CC0 41 59 20              1074 	.ascii "AY "
      000CC3 00                    1075 	.db 0x00
                                   1076 	.area CSEG    (CODE)
                                   1077 	.area CONST   (CODE)
      000CC4                       1078 ___str_2:
      000CC4 41 5A 20              1079 	.ascii "AZ "
      000CC7 00                    1080 	.db 0x00
                                   1081 	.area CSEG    (CODE)
                                   1082 	.area CONST   (CODE)
      000CC8                       1083 ___str_3:
      000CC8 47 58 20              1084 	.ascii "GX "
      000CCB 00                    1085 	.db 0x00
                                   1086 	.area CSEG    (CODE)
                                   1087 	.area CONST   (CODE)
      000CCC                       1088 ___str_4:
      000CCC 47 59 20              1089 	.ascii "GY "
      000CCF 00                    1090 	.db 0x00
                                   1091 	.area CSEG    (CODE)
                                   1092 	.area CONST   (CODE)
      000CD0                       1093 ___str_5:
      000CD0 47 5A 20              1094 	.ascii "GZ "
      000CD3 00                    1095 	.db 0x00
                                   1096 	.area CSEG    (CODE)
                                   1097 	.area XINIT   (CODE)
                                   1098 	.area CABS    (ABS,CODE)
