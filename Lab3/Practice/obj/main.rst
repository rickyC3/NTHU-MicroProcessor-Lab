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
                                     12 	.globl _delay_ms
                                     13 	.globl _readMPU6050_AccelData
                                     14 	.globl _MPU6050_INIT
                                     15 	.globl _OLED_SetCursor
                                     16 	.globl _OLED_Clear
                                     17 	.globl _OLED_DisplayString
                                     18 	.globl _OLED_DisplayChar
                                     19 	.globl _OLED_Init
                                     20 	.globl _CY
                                     21 	.globl _AC
                                     22 	.globl _F0
                                     23 	.globl _RS1
                                     24 	.globl _RS0
                                     25 	.globl _OV
                                     26 	.globl _F1
                                     27 	.globl _P
                                     28 	.globl _PS
                                     29 	.globl _PT1
                                     30 	.globl _PX1
                                     31 	.globl _PT0
                                     32 	.globl _PX0
                                     33 	.globl _RD
                                     34 	.globl _WR
                                     35 	.globl _T1
                                     36 	.globl _T0
                                     37 	.globl _INT1
                                     38 	.globl _INT0
                                     39 	.globl _TXD
                                     40 	.globl _RXD
                                     41 	.globl _P3_7
                                     42 	.globl _P3_6
                                     43 	.globl _P3_5
                                     44 	.globl _P3_4
                                     45 	.globl _P3_3
                                     46 	.globl _P3_2
                                     47 	.globl _P3_1
                                     48 	.globl _P3_0
                                     49 	.globl _EA
                                     50 	.globl _ES
                                     51 	.globl _ET1
                                     52 	.globl _EX1
                                     53 	.globl _ET0
                                     54 	.globl _EX0
                                     55 	.globl _P2_7
                                     56 	.globl _P2_6
                                     57 	.globl _P2_5
                                     58 	.globl _P2_4
                                     59 	.globl _P2_3
                                     60 	.globl _P2_2
                                     61 	.globl _P2_1
                                     62 	.globl _P2_0
                                     63 	.globl _SM0
                                     64 	.globl _SM1
                                     65 	.globl _SM2
                                     66 	.globl _REN
                                     67 	.globl _TB8
                                     68 	.globl _RB8
                                     69 	.globl _TI
                                     70 	.globl _RI
                                     71 	.globl _P1_7
                                     72 	.globl _P1_6
                                     73 	.globl _P1_5
                                     74 	.globl _P1_4
                                     75 	.globl _P1_3
                                     76 	.globl _P1_2
                                     77 	.globl _P1_1
                                     78 	.globl _P1_0
                                     79 	.globl _TF1
                                     80 	.globl _TR1
                                     81 	.globl _TF0
                                     82 	.globl _TR0
                                     83 	.globl _IE1
                                     84 	.globl _IT1
                                     85 	.globl _IE0
                                     86 	.globl _IT0
                                     87 	.globl _P0_7
                                     88 	.globl _P0_6
                                     89 	.globl _P0_5
                                     90 	.globl _P0_4
                                     91 	.globl _P0_3
                                     92 	.globl _P0_2
                                     93 	.globl _P0_1
                                     94 	.globl _P0_0
                                     95 	.globl _B
                                     96 	.globl _ACC
                                     97 	.globl _PSW
                                     98 	.globl _IP
                                     99 	.globl _P3
                                    100 	.globl _IE
                                    101 	.globl _P2
                                    102 	.globl _SBUF
                                    103 	.globl _SCON
                                    104 	.globl _P1
                                    105 	.globl _TH1
                                    106 	.globl _TH0
                                    107 	.globl _TL1
                                    108 	.globl _TL0
                                    109 	.globl _TMOD
                                    110 	.globl _TCON
                                    111 	.globl _PCON
                                    112 	.globl _DPH
                                    113 	.globl _DPL
                                    114 	.globl _SP
                                    115 	.globl _P0
                                    116 	.globl _gyro_data
                                    117 	.globl _accel_data
                                    118 	.globl _y
                                    119 	.globl _x
                                    120 	.globl _i
                                    121 	.globl _data_buf
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
      000021                        237 _data_buf::
      000021                        238 	.ds 2
      000023                        239 _i::
      000023                        240 	.ds 1
      000024                        241 _x::
      000024                        242 	.ds 2
      000026                        243 _y::
      000026                        244 	.ds 2
      000028                        245 _accel_data::
      000028                        246 	.ds 6
      00002E                        247 _gyro_data::
      00002E                        248 	.ds 6
      000034                        249 _main_ref_y_65537_62:
      000034                        250 	.ds 2
      000036                        251 _main_last_x_65537_62:
      000036                        252 	.ds 2
      000038                        253 _main_last_y_65537_62:
      000038                        254 	.ds 2
                                    255 ;--------------------------------------------------------
                                    256 ; overlayable items in internal ram 
                                    257 ;--------------------------------------------------------
                                    258 ;--------------------------------------------------------
                                    259 ; Stack segment in internal ram 
                                    260 ;--------------------------------------------------------
                                    261 	.area	SSEG
      00003F                        262 __start__stack:
      00003F                        263 	.ds	1
                                    264 
                                    265 ;--------------------------------------------------------
                                    266 ; indirectly addressable internal ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area ISEG    (DATA)
                                    269 ;--------------------------------------------------------
                                    270 ; absolute internal ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area IABS    (ABS,DATA)
                                    273 	.area IABS    (ABS,DATA)
                                    274 ;--------------------------------------------------------
                                    275 ; bit data
                                    276 ;--------------------------------------------------------
                                    277 	.area BSEG    (BIT)
                                    278 ;--------------------------------------------------------
                                    279 ; paged external ram data
                                    280 ;--------------------------------------------------------
                                    281 	.area PSEG    (PAG,XDATA)
                                    282 ;--------------------------------------------------------
                                    283 ; external ram data
                                    284 ;--------------------------------------------------------
                                    285 	.area XSEG    (XDATA)
                                    286 ;--------------------------------------------------------
                                    287 ; absolute external ram data
                                    288 ;--------------------------------------------------------
                                    289 	.area XABS    (ABS,XDATA)
                                    290 ;--------------------------------------------------------
                                    291 ; external initialized ram data
                                    292 ;--------------------------------------------------------
                                    293 	.area XISEG   (XDATA)
                                    294 	.area HOME    (CODE)
                                    295 	.area GSINIT0 (CODE)
                                    296 	.area GSINIT1 (CODE)
                                    297 	.area GSINIT2 (CODE)
                                    298 	.area GSINIT3 (CODE)
                                    299 	.area GSINIT4 (CODE)
                                    300 	.area GSINIT5 (CODE)
                                    301 	.area GSINIT  (CODE)
                                    302 	.area GSFINAL (CODE)
                                    303 	.area CSEG    (CODE)
                                    304 ;--------------------------------------------------------
                                    305 ; interrupt vector 
                                    306 ;--------------------------------------------------------
                                    307 	.area HOME    (CODE)
      000000                        308 __interrupt_vect:
      000000 02 00 06         [24]  309 	ljmp	__sdcc_gsinit_startup
                                    310 ;--------------------------------------------------------
                                    311 ; global & static initialisations
                                    312 ;--------------------------------------------------------
                                    313 	.area HOME    (CODE)
                                    314 	.area GSINIT  (CODE)
                                    315 	.area GSFINAL (CODE)
                                    316 	.area GSINIT  (CODE)
                                    317 	.globl __sdcc_gsinit_startup
                                    318 	.globl __sdcc_program_startup
                                    319 	.globl __start__stack
                                    320 	.globl __mcs51_genXINIT
                                    321 	.globl __mcs51_genXRAMCLEAR
                                    322 	.globl __mcs51_genRAMCLEAR
                                    323 ;	./src/main.c:34: char i = 0;
      00005F 75 23 00         [24]  324 	mov	_i,#0x00
                                    325 ;	./src/main.c:37: int accel_data[3] = {0, 0, 0};  // Stores the 16-bit signed accelerometer sensor output
      000062 E4               [12]  326 	clr	a
      000063 F5 28            [12]  327 	mov	(_accel_data + 0),a
      000065 F5 29            [12]  328 	mov	(_accel_data + 1),a
      000067 F5 2A            [12]  329 	mov	((_accel_data + 0x0002) + 0),a
      000069 F5 2B            [12]  330 	mov	((_accel_data + 0x0002) + 1),a
      00006B F5 2C            [12]  331 	mov	((_accel_data + 0x0004) + 0),a
      00006D F5 2D            [12]  332 	mov	((_accel_data + 0x0004) + 1),a
                                    333 ;	./src/main.c:38: int gyro_data[3] = {0, 0, 0};   // Stores the 16-bit signed gyro sensor output
      00006F F5 2E            [12]  334 	mov	(_gyro_data + 0),a
      000071 F5 2F            [12]  335 	mov	(_gyro_data + 1),a
      000073 F5 30            [12]  336 	mov	((_gyro_data + 0x0002) + 0),a
      000075 F5 31            [12]  337 	mov	((_gyro_data + 0x0002) + 1),a
      000077 F5 32            [12]  338 	mov	((_gyro_data + 0x0004) + 0),a
      000079 F5 33            [12]  339 	mov	((_gyro_data + 0x0004) + 1),a
                                    340 	.area GSFINAL (CODE)
      000087 02 00 03         [24]  341 	ljmp	__sdcc_program_startup
                                    342 ;--------------------------------------------------------
                                    343 ; Home
                                    344 ;--------------------------------------------------------
                                    345 	.area HOME    (CODE)
                                    346 	.area HOME    (CODE)
      000003                        347 __sdcc_program_startup:
      000003 02 00 8A         [24]  348 	ljmp	_main
                                    349 ;	return from main will return to caller
                                    350 ;--------------------------------------------------------
                                    351 ; code
                                    352 ;--------------------------------------------------------
                                    353 	.area CSEG    (CODE)
                                    354 ;------------------------------------------------------------
                                    355 ;Allocation info for local variables in function 'main'
                                    356 ;------------------------------------------------------------
                                    357 ;ref_x                     Allocated to registers r6 r7 
                                    358 ;ref_y                     Allocated with name '_main_ref_y_65537_62'
                                    359 ;last_x                    Allocated with name '_main_last_x_65537_62'
                                    360 ;last_y                    Allocated with name '_main_last_y_65537_62'
                                    361 ;------------------------------------------------------------
                                    362 ;	./src/main.c:40: void main(void)
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
                                    375 ;	./src/main.c:44: SDA = 1;
                                    376 ;	assignBit
      00008A D2 81            [12]  377 	setb	_P0_1
                                    378 ;	./src/main.c:45: SCL = 1;
                                    379 ;	assignBit
      00008C D2 80            [12]  380 	setb	_P0_0
                                    381 ;	./src/main.c:46: OLED_Init();		  // Check oled_i2c.c file for SCL,SDA pin connection
      00008E 12 06 19         [24]  382 	lcall	_OLED_Init
                                    383 ;	./src/main.c:47: MPU6050_INIT();    
      000091 12 02 BF         [24]  384 	lcall	_MPU6050_INIT
                                    385 ;	./src/main.c:59: OLED_SetCursor(3, 60); // right
      000094 75 1E 3C         [24]  386 	mov	_OLED_SetCursor_PARM_2,#0x3c
      000097 75 82 03         [24]  387 	mov	dpl,#0x03
      00009A 12 07 2F         [24]  388 	lcall	_OLED_SetCursor
                                    389 ;	./src/main.c:60: OLED_DisplayString("start");
      00009D 90 08 30         [24]  390 	mov	dptr,#___str_0
      0000A0 75 F0 80         [24]  391 	mov	b,#0x80
      0000A3 12 06 D9         [24]  392 	lcall	_OLED_DisplayString
                                    393 ;	./src/main.c:62: readMPU6050_AccelData(&accel_data[0]);
      0000A6 90 00 28         [24]  394 	mov	dptr,#_accel_data
      0000A9 75 F0 40         [24]  395 	mov	b,#0x40
      0000AC 12 03 5D         [24]  396 	lcall	_readMPU6050_AccelData
                                    397 ;	./src/main.c:64: x = 3;y = 60;
      0000AF 75 24 03         [24]  398 	mov	_x,#0x03
      0000B2 75 25 00         [24]  399 	mov	(_x + 1),#0x00
      0000B5 75 26 3C         [24]  400 	mov	_y,#0x3c
      0000B8 75 27 00         [24]  401 	mov	(_y + 1),#0x00
                                    402 ;	./src/main.c:65: int ref_x = accel_data[0]; // add -> foward,  x--, 
      0000BB AE 28            [24]  403 	mov	r6,(_accel_data + 0)
      0000BD AF 29            [24]  404 	mov	r7,(_accel_data + 1)
                                    405 ;	./src/main.c:66: int ref_y = accel_data[1]; // add -> left , y--
      0000BF 85 2A 34         [24]  406 	mov	_main_ref_y_65537_62,((_accel_data + 0x0002) + 0)
      0000C2 85 2B 35         [24]  407 	mov	(_main_ref_y_65537_62 + 1),((_accel_data + 0x0002) + 1)
                                    408 ;	./src/main.c:67: int last_x = 3;
      0000C5 75 36 03         [24]  409 	mov	_main_last_x_65537_62,#0x03
      0000C8 75 37 00         [24]  410 	mov	(_main_last_x_65537_62 + 1),#0x00
                                    411 ;	./src/main.c:68: int last_y = 60;
      0000CB 75 38 3C         [24]  412 	mov	_main_last_y_65537_62,#0x3c
      0000CE 75 39 00         [24]  413 	mov	(_main_last_y_65537_62 + 1),#0x00
                                    414 ;	./src/main.c:69: OLED_Clear();
      0000D1 C0 07            [24]  415 	push	ar7
      0000D3 C0 06            [24]  416 	push	ar6
      0000D5 12 07 04         [24]  417 	lcall	_OLED_Clear
      0000D8 D0 06            [24]  418 	pop	ar6
      0000DA D0 07            [24]  419 	pop	ar7
                                    420 ;	./src/main.c:70: while(1) {
      0000DC                        421 00127$:
                                    422 ;	./src/main.c:72: OLED_SetCursor(last_x, last_y);
      0000DC 85 36 82         [24]  423 	mov	dpl,_main_last_x_65537_62
      0000DF 85 38 1E         [24]  424 	mov	_OLED_SetCursor_PARM_2,_main_last_y_65537_62
      0000E2 C0 07            [24]  425 	push	ar7
      0000E4 C0 06            [24]  426 	push	ar6
      0000E6 12 07 2F         [24]  427 	lcall	_OLED_SetCursor
                                    428 ;	./src/main.c:73: OLED_DisplayChar(' ');
      0000E9 75 82 20         [24]  429 	mov	dpl,#0x20
      0000EC 12 06 88         [24]  430 	lcall	_OLED_DisplayChar
                                    431 ;	./src/main.c:75: OLED_SetCursor(x, y);
      0000EF 85 24 82         [24]  432 	mov	dpl,_x
      0000F2 85 26 1E         [24]  433 	mov	_OLED_SetCursor_PARM_2,_y
      0000F5 12 07 2F         [24]  434 	lcall	_OLED_SetCursor
                                    435 ;	./src/main.c:76: OLED_DisplayChar('0');
      0000F8 75 82 30         [24]  436 	mov	dpl,#0x30
      0000FB 12 06 88         [24]  437 	lcall	_OLED_DisplayChar
                                    438 ;	./src/main.c:77: last_x = x;last_y = y;
      0000FE 85 24 36         [24]  439 	mov	_main_last_x_65537_62,_x
      000101 85 25 37         [24]  440 	mov	(_main_last_x_65537_62 + 1),(_x + 1)
      000104 85 26 38         [24]  441 	mov	_main_last_y_65537_62,_y
      000107 85 27 39         [24]  442 	mov	(_main_last_y_65537_62 + 1),(_y + 1)
                                    443 ;	./src/main.c:78: readMPU6050_AccelData(&accel_data[0]);     
      00010A 90 00 28         [24]  444 	mov	dptr,#_accel_data
      00010D 75 F0 40         [24]  445 	mov	b,#0x40
      000110 12 03 5D         [24]  446 	lcall	_readMPU6050_AccelData
      000113 D0 06            [24]  447 	pop	ar6
      000115 D0 07            [24]  448 	pop	ar7
                                    449 ;	./src/main.c:80: if (accel_data[0] > ref_x  && x > 0){
      000117 AA 28            [24]  450 	mov	r2,(_accel_data + 0)
      000119 AB 29            [24]  451 	mov	r3,(_accel_data + 1)
      00011B C3               [12]  452 	clr	c
      00011C EE               [12]  453 	mov	a,r6
      00011D 9A               [12]  454 	subb	a,r2
      00011E EF               [12]  455 	mov	a,r7
      00011F 64 80            [12]  456 	xrl	a,#0x80
      000121 8B F0            [24]  457 	mov	b,r3
      000123 63 F0 80         [24]  458 	xrl	b,#0x80
      000126 95 F0            [12]  459 	subb	a,b
      000128 50 3B            [24]  460 	jnc	00104$
      00012A C3               [12]  461 	clr	c
      00012B E4               [12]  462 	clr	a
      00012C 95 24            [12]  463 	subb	a,_x
      00012E 74 80            [12]  464 	mov	a,#(0x00 ^ 0x80)
      000130 85 25 F0         [24]  465 	mov	b,(_x + 1)
      000133 63 F0 80         [24]  466 	xrl	b,#0x80
      000136 95 F0            [12]  467 	subb	a,b
      000138 50 2B            [24]  468 	jnc	00104$
                                    469 ;	./src/main.c:81: x -= (accel_data[0] - ref_x) / 4000;
      00013A EA               [12]  470 	mov	a,r2
      00013B C3               [12]  471 	clr	c
      00013C 9E               [12]  472 	subb	a,r6
      00013D F5 82            [12]  473 	mov	dpl,a
      00013F EB               [12]  474 	mov	a,r3
      000140 9F               [12]  475 	subb	a,r7
      000141 F5 83            [12]  476 	mov	dph,a
      000143 75 3D A0         [24]  477 	mov	__divsint_PARM_2,#0xa0
      000146 75 3E 0F         [24]  478 	mov	(__divsint_PARM_2 + 1),#0x0f
      000149 C0 07            [24]  479 	push	ar7
      00014B C0 06            [24]  480 	push	ar6
      00014D 12 07 F4         [24]  481 	lcall	__divsint
      000150 AA 82            [24]  482 	mov	r2,dpl
      000152 AB 83            [24]  483 	mov	r3,dph
      000154 D0 06            [24]  484 	pop	ar6
      000156 D0 07            [24]  485 	pop	ar7
      000158 E5 24            [12]  486 	mov	a,_x
      00015A C3               [12]  487 	clr	c
      00015B 9A               [12]  488 	subb	a,r2
      00015C F5 24            [12]  489 	mov	_x,a
      00015E E5 25            [12]  490 	mov	a,(_x + 1)
      000160 9B               [12]  491 	subb	a,r3
      000161 F5 25            [12]  492 	mov	(_x + 1),a
      000163 80 4D            [24]  493 	sjmp	00105$
      000165                        494 00104$:
                                    495 ;	./src/main.c:82: }else if (accel_data[0] < ref_x & x < 8){
      000165 AA 28            [24]  496 	mov	r2,(_accel_data + 0)
      000167 AB 29            [24]  497 	mov	r3,(_accel_data + 1)
      000169 C3               [12]  498 	clr	c
      00016A EA               [12]  499 	mov	a,r2
      00016B 9E               [12]  500 	subb	a,r6
      00016C EB               [12]  501 	mov	a,r3
      00016D 64 80            [12]  502 	xrl	a,#0x80
      00016F 8F F0            [24]  503 	mov	b,r7
      000171 63 F0 80         [24]  504 	xrl	b,#0x80
      000174 95 F0            [12]  505 	subb	a,b
      000176 E4               [12]  506 	clr	a
      000177 33               [12]  507 	rlc	a
      000178 FD               [12]  508 	mov	r5,a
      000179 C3               [12]  509 	clr	c
      00017A E5 24            [12]  510 	mov	a,_x
      00017C 94 08            [12]  511 	subb	a,#0x08
      00017E E5 25            [12]  512 	mov	a,(_x + 1)
      000180 64 80            [12]  513 	xrl	a,#0x80
      000182 94 80            [12]  514 	subb	a,#0x80
      000184 E4               [12]  515 	clr	a
      000185 33               [12]  516 	rlc	a
      000186 FC               [12]  517 	mov	r4,a
      000187 5D               [12]  518 	anl	a,r5
      000188 60 28            [24]  519 	jz	00105$
                                    520 ;	./src/main.c:83: x += (ref_x - accel_data[0]) / 4000;;
      00018A EE               [12]  521 	mov	a,r6
      00018B C3               [12]  522 	clr	c
      00018C 9A               [12]  523 	subb	a,r2
      00018D F5 82            [12]  524 	mov	dpl,a
      00018F EF               [12]  525 	mov	a,r7
      000190 9B               [12]  526 	subb	a,r3
      000191 F5 83            [12]  527 	mov	dph,a
      000193 75 3D A0         [24]  528 	mov	__divsint_PARM_2,#0xa0
      000196 75 3E 0F         [24]  529 	mov	(__divsint_PARM_2 + 1),#0x0f
      000199 C0 07            [24]  530 	push	ar7
      00019B C0 06            [24]  531 	push	ar6
      00019D 12 07 F4         [24]  532 	lcall	__divsint
      0001A0 AC 82            [24]  533 	mov	r4,dpl
      0001A2 AD 83            [24]  534 	mov	r5,dph
      0001A4 D0 06            [24]  535 	pop	ar6
      0001A6 D0 07            [24]  536 	pop	ar7
      0001A8 EC               [12]  537 	mov	a,r4
      0001A9 25 24            [12]  538 	add	a,_x
      0001AB F5 24            [12]  539 	mov	_x,a
      0001AD ED               [12]  540 	mov	a,r5
      0001AE 35 25            [12]  541 	addc	a,(_x + 1)
      0001B0 F5 25            [12]  542 	mov	(_x + 1),a
      0001B2                        543 00105$:
                                    544 ;	./src/main.c:85: if (accel_data[1] > ref_y  &&  y > 0){
      0001B2 AC 2A            [24]  545 	mov	r4,((_accel_data + 0x0002) + 0)
      0001B4 AD 2B            [24]  546 	mov	r5,((_accel_data + 0x0002) + 1)
      0001B6 C3               [12]  547 	clr	c
      0001B7 E5 34            [12]  548 	mov	a,_main_ref_y_65537_62
      0001B9 9C               [12]  549 	subb	a,r4
      0001BA E5 35            [12]  550 	mov	a,(_main_ref_y_65537_62 + 1)
      0001BC 64 80            [12]  551 	xrl	a,#0x80
      0001BE 8D F0            [24]  552 	mov	b,r5
      0001C0 63 F0 80         [24]  553 	xrl	b,#0x80
      0001C3 95 F0            [12]  554 	subb	a,b
      0001C5 50 49            [24]  555 	jnc	00111$
      0001C7 C3               [12]  556 	clr	c
      0001C8 E4               [12]  557 	clr	a
      0001C9 95 26            [12]  558 	subb	a,_y
      0001CB 74 80            [12]  559 	mov	a,#(0x00 ^ 0x80)
      0001CD 85 27 F0         [24]  560 	mov	b,(_y + 1)
      0001D0 63 F0 80         [24]  561 	xrl	b,#0x80
      0001D3 95 F0            [12]  562 	subb	a,b
      0001D5 50 39            [24]  563 	jnc	00111$
                                    564 ;	./src/main.c:86: y-=5 * ((accel_data[1] - ref_y)/4000);
      0001D7 EC               [12]  565 	mov	a,r4
      0001D8 C3               [12]  566 	clr	c
      0001D9 95 34            [12]  567 	subb	a,_main_ref_y_65537_62
      0001DB F5 82            [12]  568 	mov	dpl,a
      0001DD ED               [12]  569 	mov	a,r5
      0001DE 95 35            [12]  570 	subb	a,(_main_ref_y_65537_62 + 1)
      0001E0 F5 83            [12]  571 	mov	dph,a
      0001E2 75 3D A0         [24]  572 	mov	__divsint_PARM_2,#0xa0
      0001E5 75 3E 0F         [24]  573 	mov	(__divsint_PARM_2 + 1),#0x0f
      0001E8 C0 07            [24]  574 	push	ar7
      0001EA C0 06            [24]  575 	push	ar6
      0001EC 12 07 F4         [24]  576 	lcall	__divsint
      0001EF 85 82 3D         [24]  577 	mov	__mulint_PARM_2,dpl
      0001F2 85 83 3E         [24]  578 	mov	(__mulint_PARM_2 + 1),dph
      0001F5 90 00 05         [24]  579 	mov	dptr,#0x0005
      0001F8 12 07 92         [24]  580 	lcall	__mulint
      0001FB AC 82            [24]  581 	mov	r4,dpl
      0001FD AD 83            [24]  582 	mov	r5,dph
      0001FF D0 06            [24]  583 	pop	ar6
      000201 D0 07            [24]  584 	pop	ar7
      000203 E5 26            [12]  585 	mov	a,_y
      000205 C3               [12]  586 	clr	c
      000206 9C               [12]  587 	subb	a,r4
      000207 F5 26            [12]  588 	mov	_y,a
      000209 E5 27            [12]  589 	mov	a,(_y + 1)
      00020B 9D               [12]  590 	subb	a,r5
      00020C F5 27            [12]  591 	mov	(_y + 1),a
      00020E 80 58            [24]  592 	sjmp	00112$
      000210                        593 00111$:
                                    594 ;	./src/main.c:87: }else if (accel_data[1] < ref_y  && y < 120){
      000210 AC 2A            [24]  595 	mov	r4,((_accel_data + 0x0002) + 0)
      000212 AD 2B            [24]  596 	mov	r5,((_accel_data + 0x0002) + 1)
      000214 C3               [12]  597 	clr	c
      000215 EC               [12]  598 	mov	a,r4
      000216 95 34            [12]  599 	subb	a,_main_ref_y_65537_62
      000218 ED               [12]  600 	mov	a,r5
      000219 64 80            [12]  601 	xrl	a,#0x80
      00021B 85 35 F0         [24]  602 	mov	b,(_main_ref_y_65537_62 + 1)
      00021E 63 F0 80         [24]  603 	xrl	b,#0x80
      000221 95 F0            [12]  604 	subb	a,b
      000223 50 43            [24]  605 	jnc	00112$
      000225 C3               [12]  606 	clr	c
      000226 E5 26            [12]  607 	mov	a,_y
      000228 94 78            [12]  608 	subb	a,#0x78
      00022A E5 27            [12]  609 	mov	a,(_y + 1)
      00022C 64 80            [12]  610 	xrl	a,#0x80
      00022E 94 80            [12]  611 	subb	a,#0x80
      000230 50 36            [24]  612 	jnc	00112$
                                    613 ;	./src/main.c:88: y+=5 * ((ref_y - accel_data[1])/4000);
      000232 E5 34            [12]  614 	mov	a,_main_ref_y_65537_62
      000234 C3               [12]  615 	clr	c
      000235 9C               [12]  616 	subb	a,r4
      000236 F5 82            [12]  617 	mov	dpl,a
      000238 E5 35            [12]  618 	mov	a,(_main_ref_y_65537_62 + 1)
      00023A 9D               [12]  619 	subb	a,r5
      00023B F5 83            [12]  620 	mov	dph,a
      00023D 75 3D A0         [24]  621 	mov	__divsint_PARM_2,#0xa0
      000240 75 3E 0F         [24]  622 	mov	(__divsint_PARM_2 + 1),#0x0f
      000243 C0 07            [24]  623 	push	ar7
      000245 C0 06            [24]  624 	push	ar6
      000247 12 07 F4         [24]  625 	lcall	__divsint
      00024A 85 82 3D         [24]  626 	mov	__mulint_PARM_2,dpl
      00024D 85 83 3E         [24]  627 	mov	(__mulint_PARM_2 + 1),dph
      000250 90 00 05         [24]  628 	mov	dptr,#0x0005
      000253 12 07 92         [24]  629 	lcall	__mulint
      000256 AC 82            [24]  630 	mov	r4,dpl
      000258 AD 83            [24]  631 	mov	r5,dph
      00025A D0 06            [24]  632 	pop	ar6
      00025C D0 07            [24]  633 	pop	ar7
      00025E EC               [12]  634 	mov	a,r4
      00025F 25 26            [12]  635 	add	a,_y
      000261 F5 26            [12]  636 	mov	_y,a
      000263 ED               [12]  637 	mov	a,r5
      000264 35 27            [12]  638 	addc	a,(_y + 1)
      000266 F5 27            [12]  639 	mov	(_y + 1),a
      000268                        640 00112$:
                                    641 ;	./src/main.c:90: if (y > 120)y = 120;
      000268 C3               [12]  642 	clr	c
      000269 74 78            [12]  643 	mov	a,#0x78
      00026B 95 26            [12]  644 	subb	a,_y
      00026D 74 80            [12]  645 	mov	a,#(0x00 ^ 0x80)
      00026F 85 27 F0         [24]  646 	mov	b,(_y + 1)
      000272 63 F0 80         [24]  647 	xrl	b,#0x80
      000275 95 F0            [12]  648 	subb	a,b
      000277 50 08            [24]  649 	jnc	00118$
      000279 75 26 78         [24]  650 	mov	_y,#0x78
      00027C 75 27 00         [24]  651 	mov	(_y + 1),#0x00
      00027F 80 0A            [24]  652 	sjmp	00119$
      000281                        653 00118$:
                                    654 ;	./src/main.c:91: else if (y < 0) y = 0;
      000281 E5 27            [12]  655 	mov	a,(_y + 1)
      000283 30 E7 05         [24]  656 	jnb	acc.7,00115$
      000286 E4               [12]  657 	clr	a
      000287 F5 26            [12]  658 	mov	_y,a
      000289 F5 27            [12]  659 	mov	(_y + 1),a
                                    660 ;	./src/main.c:92: else y = y;
      00028B                        661 00115$:
      00028B                        662 00119$:
                                    663 ;	./src/main.c:94: if (x > 7)x = 7;
      00028B C3               [12]  664 	clr	c
      00028C 74 07            [12]  665 	mov	a,#0x07
      00028E 95 24            [12]  666 	subb	a,_x
      000290 74 80            [12]  667 	mov	a,#(0x00 ^ 0x80)
      000292 85 25 F0         [24]  668 	mov	b,(_x + 1)
      000295 63 F0 80         [24]  669 	xrl	b,#0x80
      000298 95 F0            [12]  670 	subb	a,b
      00029A 50 08            [24]  671 	jnc	00124$
      00029C 75 24 07         [24]  672 	mov	_x,#0x07
      00029F 75 25 00         [24]  673 	mov	(_x + 1),#0x00
      0002A2 80 0A            [24]  674 	sjmp	00125$
      0002A4                        675 00124$:
                                    676 ;	./src/main.c:95: else if (x < 0) x = 0;
      0002A4 E5 25            [12]  677 	mov	a,(_x + 1)
      0002A6 30 E7 05         [24]  678 	jnb	acc.7,00121$
      0002A9 E4               [12]  679 	clr	a
      0002AA F5 24            [12]  680 	mov	_x,a
      0002AC F5 25            [12]  681 	mov	(_x + 1),a
                                    682 ;	./src/main.c:96: else x = x;
      0002AE                        683 00121$:
      0002AE                        684 00125$:
                                    685 ;	./src/main.c:98: delay_ms(100);
      0002AE 90 00 64         [24]  686 	mov	dptr,#0x0064
      0002B1 C0 07            [24]  687 	push	ar7
      0002B3 C0 06            [24]  688 	push	ar6
      0002B5 12 05 15         [24]  689 	lcall	_delay_ms
      0002B8 D0 06            [24]  690 	pop	ar6
      0002BA D0 07            [24]  691 	pop	ar7
                                    692 ;	./src/main.c:100: }
      0002BC 02 00 DC         [24]  693 	ljmp	00127$
                                    694 	.area CSEG    (CODE)
                                    695 	.area CONST   (CODE)
                                    696 	.area CONST   (CODE)
      000830                        697 ___str_0:
      000830 73 74 61 72 74         698 	.ascii "start"
      000835 00                     699 	.db 0x00
                                    700 	.area CSEG    (CODE)
                                    701 	.area XINIT   (CODE)
                                    702 	.area CABS    (ABS,CODE)
