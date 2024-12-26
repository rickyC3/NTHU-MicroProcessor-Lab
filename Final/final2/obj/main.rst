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
                                     12 	.globl _readObjectTemp
                                     13 	.globl _Initial7219
                                     14 	.globl _Write7219
                                     15 	.globl _read_adc3202
                                     16 	.globl _delay_ms
                                     17 	.globl _OLED_SetCursor
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
                                    116 	.globl _tmp
                                    117 	.globl _dot
                                    118 ;--------------------------------------------------------
                                    119 ; special function registers
                                    120 ;--------------------------------------------------------
                                    121 	.area RSEG    (ABS,DATA)
      000000                        122 	.org 0x0000
                           000080   123 _P0	=	0x0080
                           000081   124 _SP	=	0x0081
                           000082   125 _DPL	=	0x0082
                           000083   126 _DPH	=	0x0083
                           000087   127 _PCON	=	0x0087
                           000088   128 _TCON	=	0x0088
                           000089   129 _TMOD	=	0x0089
                           00008A   130 _TL0	=	0x008a
                           00008B   131 _TL1	=	0x008b
                           00008C   132 _TH0	=	0x008c
                           00008D   133 _TH1	=	0x008d
                           000090   134 _P1	=	0x0090
                           000098   135 _SCON	=	0x0098
                           000099   136 _SBUF	=	0x0099
                           0000A0   137 _P2	=	0x00a0
                           0000A8   138 _IE	=	0x00a8
                           0000B0   139 _P3	=	0x00b0
                           0000B8   140 _IP	=	0x00b8
                           0000D0   141 _PSW	=	0x00d0
                           0000E0   142 _ACC	=	0x00e0
                           0000F0   143 _B	=	0x00f0
                                    144 ;--------------------------------------------------------
                                    145 ; special function bits
                                    146 ;--------------------------------------------------------
                                    147 	.area RSEG    (ABS,DATA)
      000000                        148 	.org 0x0000
                           000080   149 _P0_0	=	0x0080
                           000081   150 _P0_1	=	0x0081
                           000082   151 _P0_2	=	0x0082
                           000083   152 _P0_3	=	0x0083
                           000084   153 _P0_4	=	0x0084
                           000085   154 _P0_5	=	0x0085
                           000086   155 _P0_6	=	0x0086
                           000087   156 _P0_7	=	0x0087
                           000088   157 _IT0	=	0x0088
                           000089   158 _IE0	=	0x0089
                           00008A   159 _IT1	=	0x008a
                           00008B   160 _IE1	=	0x008b
                           00008C   161 _TR0	=	0x008c
                           00008D   162 _TF0	=	0x008d
                           00008E   163 _TR1	=	0x008e
                           00008F   164 _TF1	=	0x008f
                           000090   165 _P1_0	=	0x0090
                           000091   166 _P1_1	=	0x0091
                           000092   167 _P1_2	=	0x0092
                           000093   168 _P1_3	=	0x0093
                           000094   169 _P1_4	=	0x0094
                           000095   170 _P1_5	=	0x0095
                           000096   171 _P1_6	=	0x0096
                           000097   172 _P1_7	=	0x0097
                           000098   173 _RI	=	0x0098
                           000099   174 _TI	=	0x0099
                           00009A   175 _RB8	=	0x009a
                           00009B   176 _TB8	=	0x009b
                           00009C   177 _REN	=	0x009c
                           00009D   178 _SM2	=	0x009d
                           00009E   179 _SM1	=	0x009e
                           00009F   180 _SM0	=	0x009f
                           0000A0   181 _P2_0	=	0x00a0
                           0000A1   182 _P2_1	=	0x00a1
                           0000A2   183 _P2_2	=	0x00a2
                           0000A3   184 _P2_3	=	0x00a3
                           0000A4   185 _P2_4	=	0x00a4
                           0000A5   186 _P2_5	=	0x00a5
                           0000A6   187 _P2_6	=	0x00a6
                           0000A7   188 _P2_7	=	0x00a7
                           0000A8   189 _EX0	=	0x00a8
                           0000A9   190 _ET0	=	0x00a9
                           0000AA   191 _EX1	=	0x00aa
                           0000AB   192 _ET1	=	0x00ab
                           0000AC   193 _ES	=	0x00ac
                           0000AF   194 _EA	=	0x00af
                           0000B0   195 _P3_0	=	0x00b0
                           0000B1   196 _P3_1	=	0x00b1
                           0000B2   197 _P3_2	=	0x00b2
                           0000B3   198 _P3_3	=	0x00b3
                           0000B4   199 _P3_4	=	0x00b4
                           0000B5   200 _P3_5	=	0x00b5
                           0000B6   201 _P3_6	=	0x00b6
                           0000B7   202 _P3_7	=	0x00b7
                           0000B0   203 _RXD	=	0x00b0
                           0000B1   204 _TXD	=	0x00b1
                           0000B2   205 _INT0	=	0x00b2
                           0000B3   206 _INT1	=	0x00b3
                           0000B4   207 _T0	=	0x00b4
                           0000B5   208 _T1	=	0x00b5
                           0000B6   209 _WR	=	0x00b6
                           0000B7   210 _RD	=	0x00b7
                           0000B8   211 _PX0	=	0x00b8
                           0000B9   212 _PT0	=	0x00b9
                           0000BA   213 _PX1	=	0x00ba
                           0000BB   214 _PT1	=	0x00bb
                           0000BC   215 _PS	=	0x00bc
                           0000D0   216 _P	=	0x00d0
                           0000D1   217 _F1	=	0x00d1
                           0000D2   218 _OV	=	0x00d2
                           0000D3   219 _RS0	=	0x00d3
                           0000D4   220 _RS1	=	0x00d4
                           0000D5   221 _F0	=	0x00d5
                           0000D6   222 _AC	=	0x00d6
                           0000D7   223 _CY	=	0x00d7
                                    224 ;--------------------------------------------------------
                                    225 ; overlayable register banks
                                    226 ;--------------------------------------------------------
                                    227 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        228 	.ds 8
                                    229 ;--------------------------------------------------------
                                    230 ; internal ram data
                                    231 ;--------------------------------------------------------
                                    232 	.area DSEG    (DATA)
      000021                        233 _dot::
      000021                        234 	.ds 9
      00002A                        235 _tmp::
      00002A                        236 	.ds 18
      00003C                        237 _main_max_tmp_65536_32:
      00003C                        238 	.ds 2
      00003E                        239 _main_min_tmp_65536_32:
      00003E                        240 	.ds 2
      000040                        241 _main_sloc0_1_0:
      000040                        242 	.ds 2
                                    243 ;--------------------------------------------------------
                                    244 ; overlayable items in internal ram 
                                    245 ;--------------------------------------------------------
                                    246 ;--------------------------------------------------------
                                    247 ; Stack segment in internal ram 
                                    248 ;--------------------------------------------------------
                                    249 	.area	SSEG
      000042                        250 __start__stack:
      000042                        251 	.ds	1
                                    252 
                                    253 ;--------------------------------------------------------
                                    254 ; indirectly addressable internal ram data
                                    255 ;--------------------------------------------------------
                                    256 	.area ISEG    (DATA)
                                    257 ;--------------------------------------------------------
                                    258 ; absolute internal ram data
                                    259 ;--------------------------------------------------------
                                    260 	.area IABS    (ABS,DATA)
                                    261 	.area IABS    (ABS,DATA)
                                    262 ;--------------------------------------------------------
                                    263 ; bit data
                                    264 ;--------------------------------------------------------
                                    265 	.area BSEG    (BIT)
      000000                        266 _main_sloc1_1_0:
      000000                        267 	.ds 1
                                    268 ;--------------------------------------------------------
                                    269 ; paged external ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area PSEG    (PAG,XDATA)
                                    272 ;--------------------------------------------------------
                                    273 ; external ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area XSEG    (XDATA)
                                    276 ;--------------------------------------------------------
                                    277 ; absolute external ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area XABS    (ABS,XDATA)
                                    280 ;--------------------------------------------------------
                                    281 ; external initialized ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area XISEG   (XDATA)
                                    284 	.area HOME    (CODE)
                                    285 	.area GSINIT0 (CODE)
                                    286 	.area GSINIT1 (CODE)
                                    287 	.area GSINIT2 (CODE)
                                    288 	.area GSINIT3 (CODE)
                                    289 	.area GSINIT4 (CODE)
                                    290 	.area GSINIT5 (CODE)
                                    291 	.area GSINIT  (CODE)
                                    292 	.area GSFINAL (CODE)
                                    293 	.area CSEG    (CODE)
                                    294 ;--------------------------------------------------------
                                    295 ; interrupt vector 
                                    296 ;--------------------------------------------------------
                                    297 	.area HOME    (CODE)
      000000                        298 __interrupt_vect:
      000000 02 00 06         [24]  299 	ljmp	__sdcc_gsinit_startup
                                    300 ;--------------------------------------------------------
                                    301 ; global & static initialisations
                                    302 ;--------------------------------------------------------
                                    303 	.area HOME    (CODE)
                                    304 	.area GSINIT  (CODE)
                                    305 	.area GSFINAL (CODE)
                                    306 	.area GSINIT  (CODE)
                                    307 	.globl __sdcc_gsinit_startup
                                    308 	.globl __sdcc_program_startup
                                    309 	.globl __start__stack
                                    310 	.globl __mcs51_genXINIT
                                    311 	.globl __mcs51_genXRAMCLEAR
                                    312 	.globl __mcs51_genRAMCLEAR
                                    313 ;	./src/main.c:14: unsigned char dot[] = {
      00005F 75 21 00         [24]  314 	mov	_dot,#0x00
      000062 75 22 00         [24]  315 	mov	(_dot + 0x0001),#0x00
      000065 75 23 00         [24]  316 	mov	(_dot + 0x0002),#0x00
      000068 75 24 00         [24]  317 	mov	(_dot + 0x0003),#0x00
      00006B 75 25 00         [24]  318 	mov	(_dot + 0x0004),#0x00
      00006E 75 26 00         [24]  319 	mov	(_dot + 0x0005),#0x00
      000071 75 27 00         [24]  320 	mov	(_dot + 0x0006),#0x00
      000074 75 28 00         [24]  321 	mov	(_dot + 0x0007),#0x00
      000077 75 29 00         [24]  322 	mov	(_dot + 0x0008),#0x00
                                    323 ;	./src/main.c:25: int tmp[9] = {0};
      00007A E4               [12]  324 	clr	a
      00007B F5 2A            [12]  325 	mov	(_tmp + 0),a
      00007D F5 2B            [12]  326 	mov	(_tmp + 1),a
                                    327 	.area GSFINAL (CODE)
      000082 02 00 03         [24]  328 	ljmp	__sdcc_program_startup
                                    329 ;--------------------------------------------------------
                                    330 ; Home
                                    331 ;--------------------------------------------------------
                                    332 	.area HOME    (CODE)
                                    333 	.area HOME    (CODE)
      000003                        334 __sdcc_program_startup:
      000003 02 00 85         [24]  335 	ljmp	_main
                                    336 ;	return from main will return to caller
                                    337 ;--------------------------------------------------------
                                    338 ; code
                                    339 ;--------------------------------------------------------
                                    340 	.area CSEG    (CODE)
                                    341 ;------------------------------------------------------------
                                    342 ;Allocation info for local variables in function 'main'
                                    343 ;------------------------------------------------------------
                                    344 ;max_tmp                   Allocated with name '_main_max_tmp_65536_32'
                                    345 ;min_tmp                   Allocated with name '_main_min_tmp_65536_32'
                                    346 ;adc_value                 Allocated to registers 
                                    347 ;voltage                   Allocated to registers 
                                    348 ;distance                  Allocated to registers r6 r7 
                                    349 ;temp                      Allocated to registers r7 r6 
                                    350 ;cnt                       Allocated to registers 
                                    351 ;i                         Allocated to registers r5 
                                    352 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                    353 ;------------------------------------------------------------
                                    354 ;	./src/main.c:27: int main() 
                                    355 ;	-----------------------------------------
                                    356 ;	 function main
                                    357 ;	-----------------------------------------
      000085                        358 _main:
                           000007   359 	ar7 = 0x07
                           000006   360 	ar6 = 0x06
                           000005   361 	ar5 = 0x05
                           000004   362 	ar4 = 0x04
                           000003   363 	ar3 = 0x03
                           000002   364 	ar2 = 0x02
                           000001   365 	ar1 = 0x01
                           000000   366 	ar0 = 0x00
                                    367 ;	./src/main.c:29: int max_tmp = -1000;
      000085 75 3C 18         [24]  368 	mov	_main_max_tmp_65536_32,#0x18
      000088 75 3D FC         [24]  369 	mov	(_main_max_tmp_65536_32 + 1),#0xfc
                                    370 ;	./src/main.c:30: int min_tmp = 1000;
      00008B 75 3E E8         [24]  371 	mov	_main_min_tmp_65536_32,#0xe8
      00008E 75 3F 03         [24]  372 	mov	(_main_min_tmp_65536_32 + 1),#0x03
                                    373 ;	./src/main.c:33: SDA = 1;
                                    374 ;	assignBit
      000091 D2 81            [12]  375 	setb	_P0_1
                                    376 ;	./src/main.c:34: SCL = 1;
                                    377 ;	assignBit
      000093 D2 80            [12]  378 	setb	_P0_0
                                    379 ;	./src/main.c:35: OLED_Init();		        // Check oled_i2c.c file for SCL,SDA pin connection
      000095 12 09 32         [24]  380 	lcall	_OLED_Init
                                    381 ;	./src/main.c:36: Initial7219();
      000098 12 0B 29         [24]  382 	lcall	_Initial7219
                                    383 ;	./src/main.c:40: while(1) {
      00009B 7B 01            [12]  384 	mov	r3,#0x01
      00009D                        385 00147$:
                                    386 ;	./src/main.c:41: if (cnt >= 9){
      00009D BB 09 00         [24]  387 	cjne	r3,#0x09,00261$
      0000A0                        388 00261$:
      0000A0 50 03            [24]  389 	jnc	00262$
      0000A2 02 02 37         [24]  390 	ljmp	00144$
      0000A5                        391 00262$:
                                    392 ;	./src/main.c:42: OLED_SetCursor(2, 0);
      0000A5 75 0C 00         [24]  393 	mov	_OLED_SetCursor_PARM_2,#0x00
      0000A8 75 82 02         [24]  394 	mov	dpl,#0x02
      0000AB C0 03            [24]  395 	push	ar3
      0000AD 12 0A 48         [24]  396 	lcall	_OLED_SetCursor
                                    397 ;	./src/main.c:43: OLED_DisplayChar(tmp[1] % 1000 / 100 + '0');
      0000B0 85 2C 82         [24]  398 	mov	dpl,((_tmp + 0x0002) + 0)
      0000B3 85 2D 83         [24]  399 	mov	dph,((_tmp + 0x0002) + 1)
      0000B6 75 10 E8         [24]  400 	mov	__modsint_PARM_2,#0xe8
      0000B9 75 11 03         [24]  401 	mov	(__modsint_PARM_2 + 1),#0x03
      0000BC 12 0E F9         [24]  402 	lcall	__modsint
      0000BF 75 10 64         [24]  403 	mov	__divsint_PARM_2,#0x64
      0000C2 75 11 00         [24]  404 	mov	(__divsint_PARM_2 + 1),#0x00
      0000C5 12 0F 42         [24]  405 	lcall	__divsint
      0000C8 AA 82            [24]  406 	mov	r2,dpl
      0000CA 74 30            [12]  407 	mov	a,#0x30
      0000CC 2A               [12]  408 	add	a,r2
      0000CD F5 82            [12]  409 	mov	dpl,a
      0000CF 12 09 A1         [24]  410 	lcall	_OLED_DisplayChar
                                    411 ;	./src/main.c:44: OLED_DisplayChar(tmp[1] % 100 / 10 + '0');
      0000D2 85 2C 82         [24]  412 	mov	dpl,((_tmp + 0x0002) + 0)
      0000D5 85 2D 83         [24]  413 	mov	dph,((_tmp + 0x0002) + 1)
      0000D8 75 10 64         [24]  414 	mov	__modsint_PARM_2,#0x64
      0000DB 75 11 00         [24]  415 	mov	(__modsint_PARM_2 + 1),#0x00
      0000DE 12 0E F9         [24]  416 	lcall	__modsint
      0000E1 75 10 0A         [24]  417 	mov	__divsint_PARM_2,#0x0a
      0000E4 75 11 00         [24]  418 	mov	(__divsint_PARM_2 + 1),#0x00
      0000E7 12 0F 42         [24]  419 	lcall	__divsint
      0000EA AC 82            [24]  420 	mov	r4,dpl
      0000EC 74 30            [12]  421 	mov	a,#0x30
      0000EE 2C               [12]  422 	add	a,r4
      0000EF F5 82            [12]  423 	mov	dpl,a
      0000F1 12 09 A1         [24]  424 	lcall	_OLED_DisplayChar
                                    425 ;	./src/main.c:45: OLED_DisplayChar('.');
      0000F4 75 82 2E         [24]  426 	mov	dpl,#0x2e
      0000F7 12 09 A1         [24]  427 	lcall	_OLED_DisplayChar
                                    428 ;	./src/main.c:46: OLED_DisplayChar(tmp[1] % 10 / 1 + '0');
      0000FA 85 2C 82         [24]  429 	mov	dpl,((_tmp + 0x0002) + 0)
      0000FD 85 2D 83         [24]  430 	mov	dph,((_tmp + 0x0002) + 1)
      000100 75 10 0A         [24]  431 	mov	__modsint_PARM_2,#0x0a
      000103 75 11 00         [24]  432 	mov	(__modsint_PARM_2 + 1),#0x00
      000106 12 0E F9         [24]  433 	lcall	__modsint
      000109 AC 82            [24]  434 	mov	r4,dpl
      00010B 74 30            [12]  435 	mov	a,#0x30
      00010D 2C               [12]  436 	add	a,r4
      00010E F5 82            [12]  437 	mov	dpl,a
      000110 12 09 A1         [24]  438 	lcall	_OLED_DisplayChar
                                    439 ;	./src/main.c:48: OLED_SetCursor(7, 0);
      000113 75 0C 00         [24]  440 	mov	_OLED_SetCursor_PARM_2,#0x00
      000116 75 82 07         [24]  441 	mov	dpl,#0x07
      000119 12 0A 48         [24]  442 	lcall	_OLED_SetCursor
                                    443 ;	./src/main.c:49: OLED_DisplayChar(max_tmp % 1000 / 100 + '0');
      00011C 75 10 E8         [24]  444 	mov	__modsint_PARM_2,#0xe8
      00011F 75 11 03         [24]  445 	mov	(__modsint_PARM_2 + 1),#0x03
      000122 85 3C 82         [24]  446 	mov	dpl,_main_max_tmp_65536_32
      000125 85 3D 83         [24]  447 	mov	dph,(_main_max_tmp_65536_32 + 1)
      000128 12 0E F9         [24]  448 	lcall	__modsint
      00012B 75 10 64         [24]  449 	mov	__divsint_PARM_2,#0x64
      00012E 75 11 00         [24]  450 	mov	(__divsint_PARM_2 + 1),#0x00
      000131 12 0F 42         [24]  451 	lcall	__divsint
      000134 AC 82            [24]  452 	mov	r4,dpl
      000136 74 30            [12]  453 	mov	a,#0x30
      000138 2C               [12]  454 	add	a,r4
      000139 F5 82            [12]  455 	mov	dpl,a
      00013B 12 09 A1         [24]  456 	lcall	_OLED_DisplayChar
                                    457 ;	./src/main.c:50: OLED_DisplayChar(max_tmp % 100 / 10 + '0');
      00013E 75 10 64         [24]  458 	mov	__modsint_PARM_2,#0x64
      000141 75 11 00         [24]  459 	mov	(__modsint_PARM_2 + 1),#0x00
      000144 85 3C 82         [24]  460 	mov	dpl,_main_max_tmp_65536_32
      000147 85 3D 83         [24]  461 	mov	dph,(_main_max_tmp_65536_32 + 1)
      00014A 12 0E F9         [24]  462 	lcall	__modsint
      00014D 75 10 0A         [24]  463 	mov	__divsint_PARM_2,#0x0a
      000150 75 11 00         [24]  464 	mov	(__divsint_PARM_2 + 1),#0x00
      000153 12 0F 42         [24]  465 	lcall	__divsint
      000156 AC 82            [24]  466 	mov	r4,dpl
      000158 74 30            [12]  467 	mov	a,#0x30
      00015A 2C               [12]  468 	add	a,r4
      00015B F5 82            [12]  469 	mov	dpl,a
      00015D 12 09 A1         [24]  470 	lcall	_OLED_DisplayChar
                                    471 ;	./src/main.c:51: OLED_DisplayChar('.');
      000160 75 82 2E         [24]  472 	mov	dpl,#0x2e
      000163 12 09 A1         [24]  473 	lcall	_OLED_DisplayChar
                                    474 ;	./src/main.c:52: OLED_DisplayChar(max_tmp % 10 / 1 + '0');
      000166 75 10 0A         [24]  475 	mov	__modsint_PARM_2,#0x0a
      000169 75 11 00         [24]  476 	mov	(__modsint_PARM_2 + 1),#0x00
      00016C 85 3C 82         [24]  477 	mov	dpl,_main_max_tmp_65536_32
      00016F 85 3D 83         [24]  478 	mov	dph,(_main_max_tmp_65536_32 + 1)
      000172 12 0E F9         [24]  479 	lcall	__modsint
      000175 AC 82            [24]  480 	mov	r4,dpl
      000177 74 30            [12]  481 	mov	a,#0x30
      000179 2C               [12]  482 	add	a,r4
      00017A F5 82            [12]  483 	mov	dpl,a
      00017C 12 09 A1         [24]  484 	lcall	_OLED_DisplayChar
                                    485 ;	./src/main.c:54: OLED_SetCursor(5, 0);
      00017F 75 0C 00         [24]  486 	mov	_OLED_SetCursor_PARM_2,#0x00
      000182 75 82 05         [24]  487 	mov	dpl,#0x05
      000185 12 0A 48         [24]  488 	lcall	_OLED_SetCursor
                                    489 ;	./src/main.c:55: OLED_DisplayChar(min_tmp % 1000 / 100 + '0');
      000188 75 10 E8         [24]  490 	mov	__modsint_PARM_2,#0xe8
      00018B 75 11 03         [24]  491 	mov	(__modsint_PARM_2 + 1),#0x03
      00018E 85 3E 82         [24]  492 	mov	dpl,_main_min_tmp_65536_32
      000191 85 3F 83         [24]  493 	mov	dph,(_main_min_tmp_65536_32 + 1)
      000194 12 0E F9         [24]  494 	lcall	__modsint
      000197 75 10 64         [24]  495 	mov	__divsint_PARM_2,#0x64
      00019A 75 11 00         [24]  496 	mov	(__divsint_PARM_2 + 1),#0x00
      00019D 12 0F 42         [24]  497 	lcall	__divsint
      0001A0 AC 82            [24]  498 	mov	r4,dpl
      0001A2 74 30            [12]  499 	mov	a,#0x30
      0001A4 2C               [12]  500 	add	a,r4
      0001A5 F5 82            [12]  501 	mov	dpl,a
      0001A7 12 09 A1         [24]  502 	lcall	_OLED_DisplayChar
                                    503 ;	./src/main.c:56: OLED_DisplayChar(min_tmp % 100 / 10 + '0');
      0001AA 75 10 64         [24]  504 	mov	__modsint_PARM_2,#0x64
      0001AD 75 11 00         [24]  505 	mov	(__modsint_PARM_2 + 1),#0x00
      0001B0 85 3E 82         [24]  506 	mov	dpl,_main_min_tmp_65536_32
      0001B3 85 3F 83         [24]  507 	mov	dph,(_main_min_tmp_65536_32 + 1)
      0001B6 12 0E F9         [24]  508 	lcall	__modsint
      0001B9 75 10 0A         [24]  509 	mov	__divsint_PARM_2,#0x0a
      0001BC 75 11 00         [24]  510 	mov	(__divsint_PARM_2 + 1),#0x00
      0001BF 12 0F 42         [24]  511 	lcall	__divsint
      0001C2 AC 82            [24]  512 	mov	r4,dpl
      0001C4 74 30            [12]  513 	mov	a,#0x30
      0001C6 2C               [12]  514 	add	a,r4
      0001C7 F5 82            [12]  515 	mov	dpl,a
      0001C9 12 09 A1         [24]  516 	lcall	_OLED_DisplayChar
                                    517 ;	./src/main.c:57: OLED_DisplayChar('.');
      0001CC 75 82 2E         [24]  518 	mov	dpl,#0x2e
      0001CF 12 09 A1         [24]  519 	lcall	_OLED_DisplayChar
                                    520 ;	./src/main.c:58: OLED_DisplayChar(min_tmp % 10 / 1 + '0');
      0001D2 75 10 0A         [24]  521 	mov	__modsint_PARM_2,#0x0a
      0001D5 75 11 00         [24]  522 	mov	(__modsint_PARM_2 + 1),#0x00
      0001D8 85 3E 82         [24]  523 	mov	dpl,_main_min_tmp_65536_32
      0001DB 85 3F 83         [24]  524 	mov	dph,(_main_min_tmp_65536_32 + 1)
      0001DE 12 0E F9         [24]  525 	lcall	__modsint
      0001E1 AC 82            [24]  526 	mov	r4,dpl
      0001E3 74 30            [12]  527 	mov	a,#0x30
      0001E5 2C               [12]  528 	add	a,r4
      0001E6 F5 82            [12]  529 	mov	dpl,a
      0001E8 12 09 A1         [24]  530 	lcall	_OLED_DisplayChar
      0001EB D0 03            [24]  531 	pop	ar3
                                    532 ;	./src/main.c:60: for (i=1;i<=8;i++){
      0001ED 7D 01            [12]  533 	mov	r5,#0x01
      0001EF                        534 00149$:
                                    535 ;	./src/main.c:61: Write7219(i, dot[i]);
      0001EF ED               [12]  536 	mov	a,r5
      0001F0 24 21            [12]  537 	add	a,#_dot
      0001F2 F9               [12]  538 	mov	r1,a
      0001F3 87 0D            [24]  539 	mov	_Write7219_PARM_2,@r1
      0001F5 8D 82            [24]  540 	mov	dpl,r5
      0001F7 C0 05            [24]  541 	push	ar5
      0001F9 C0 03            [24]  542 	push	ar3
      0001FB 12 0A C7         [24]  543 	lcall	_Write7219
      0001FE D0 03            [24]  544 	pop	ar3
      000200 D0 05            [24]  545 	pop	ar5
                                    546 ;	./src/main.c:60: for (i=1;i<=8;i++){
      000202 0D               [12]  547 	inc	r5
      000203 ED               [12]  548 	mov	a,r5
      000204 24 F7            [12]  549 	add	a,#0xff - 0x08
      000206 50 E7            [24]  550 	jnc	00149$
                                    551 ;	./src/main.c:62: }delay_ms(1000);
      000208 90 03 E8         [24]  552 	mov	dptr,#0x03e8
      00020B C0 03            [24]  553 	push	ar3
      00020D 12 08 22         [24]  554 	lcall	_delay_ms
      000210 D0 03            [24]  555 	pop	ar3
                                    556 ;	./src/main.c:63: for (i=1;i<=8;i++){
      000212 7D 01            [12]  557 	mov	r5,#0x01
      000214                        558 00151$:
                                    559 ;	./src/main.c:64: Write7219(i, 0x00);
      000214 75 0D 00         [24]  560 	mov	_Write7219_PARM_2,#0x00
      000217 8D 82            [24]  561 	mov	dpl,r5
      000219 C0 05            [24]  562 	push	ar5
      00021B C0 03            [24]  563 	push	ar3
      00021D 12 0A C7         [24]  564 	lcall	_Write7219
      000220 D0 03            [24]  565 	pop	ar3
      000222 D0 05            [24]  566 	pop	ar5
                                    567 ;	./src/main.c:63: for (i=1;i<=8;i++){
      000224 0D               [12]  568 	inc	r5
      000225 ED               [12]  569 	mov	a,r5
      000226 24 F7            [12]  570 	add	a,#0xff - 0x08
      000228 50 EA            [24]  571 	jnc	00151$
                                    572 ;	./src/main.c:65: }delay_ms(1000);
      00022A 90 03 E8         [24]  573 	mov	dptr,#0x03e8
      00022D C0 03            [24]  574 	push	ar3
      00022F 12 08 22         [24]  575 	lcall	_delay_ms
      000232 D0 03            [24]  576 	pop	ar3
      000234 02 00 9D         [24]  577 	ljmp	00147$
      000237                        578 00144$:
                                    579 ;	./src/main.c:68: adc_value = read_adc3202(1);
      000237 75 82 01         [24]  580 	mov	dpl,#0x01
      00023A C0 03            [24]  581 	push	ar3
      00023C 12 07 D7         [24]  582 	lcall	_read_adc3202
                                    583 ;	./src/main.c:69: voltage = adc_value * (VCC * 1000.0 / 4096.0);
      00023F 12 0D 9A         [24]  584 	lcall	___uint2fs
      000242 AA 82            [24]  585 	mov	r2,dpl
      000244 AC 83            [24]  586 	mov	r4,dph
      000246 AD F0            [24]  587 	mov	r5,b
      000248 FF               [12]  588 	mov	r7,a
      000249 C0 02            [24]  589 	push	ar2
      00024B C0 04            [24]  590 	push	ar4
      00024D C0 05            [24]  591 	push	ar5
      00024F C0 07            [24]  592 	push	ar7
      000251 90 40 00         [24]  593 	mov	dptr,#0x4000
      000254 75 F0 9C         [24]  594 	mov	b,#0x9c
      000257 74 3F            [12]  595 	mov	a,#0x3f
      000259 12 0B 9F         [24]  596 	lcall	___fsmul
      00025C AC 82            [24]  597 	mov	r4,dpl
      00025E AD 83            [24]  598 	mov	r5,dph
      000260 AE F0            [24]  599 	mov	r6,b
      000262 FF               [12]  600 	mov	r7,a
      000263 E5 81            [12]  601 	mov	a,sp
      000265 24 FC            [12]  602 	add	a,#0xfc
      000267 F5 81            [12]  603 	mov	sp,a
      000269 8C 82            [24]  604 	mov	dpl,r4
      00026B 8D 83            [24]  605 	mov	dph,r5
      00026D 8E F0            [24]  606 	mov	b,r6
      00026F EF               [12]  607 	mov	a,r7
      000270 12 0D A6         [24]  608 	lcall	___fs2uint
                                    609 ;	./src/main.c:70: distance = (6228.4 / voltage - 1.4069)*100;
      000273 12 0D 9A         [24]  610 	lcall	___uint2fs
      000276 AC 82            [24]  611 	mov	r4,dpl
      000278 AD 83            [24]  612 	mov	r5,dph
      00027A AE F0            [24]  613 	mov	r6,b
      00027C FF               [12]  614 	mov	r7,a
      00027D C0 04            [24]  615 	push	ar4
      00027F C0 05            [24]  616 	push	ar5
      000281 C0 06            [24]  617 	push	ar6
      000283 C0 07            [24]  618 	push	ar7
      000285 90 A3 33         [24]  619 	mov	dptr,#0xa333
      000288 75 F0 C2         [24]  620 	mov	b,#0xc2
      00028B 74 45            [12]  621 	mov	a,#0x45
      00028D 12 0E 1A         [24]  622 	lcall	___fsdiv
      000290 AC 82            [24]  623 	mov	r4,dpl
      000292 AD 83            [24]  624 	mov	r5,dph
      000294 AE F0            [24]  625 	mov	r6,b
      000296 FF               [12]  626 	mov	r7,a
      000297 E5 81            [12]  627 	mov	a,sp
      000299 24 FC            [12]  628 	add	a,#0xfc
      00029B F5 81            [12]  629 	mov	sp,a
      00029D 74 4D            [12]  630 	mov	a,#0x4d
      00029F C0 E0            [24]  631 	push	acc
      0002A1 74 15            [12]  632 	mov	a,#0x15
      0002A3 C0 E0            [24]  633 	push	acc
      0002A5 74 B4            [12]  634 	mov	a,#0xb4
      0002A7 C0 E0            [24]  635 	push	acc
      0002A9 74 3F            [12]  636 	mov	a,#0x3f
      0002AB C0 E0            [24]  637 	push	acc
      0002AD 8C 82            [24]  638 	mov	dpl,r4
      0002AF 8D 83            [24]  639 	mov	dph,r5
      0002B1 8E F0            [24]  640 	mov	b,r6
      0002B3 EF               [12]  641 	mov	a,r7
      0002B4 12 0B 6B         [24]  642 	lcall	___fssub
      0002B7 AC 82            [24]  643 	mov	r4,dpl
      0002B9 AD 83            [24]  644 	mov	r5,dph
      0002BB AE F0            [24]  645 	mov	r6,b
      0002BD FF               [12]  646 	mov	r7,a
      0002BE E5 81            [12]  647 	mov	a,sp
      0002C0 24 FC            [12]  648 	add	a,#0xfc
      0002C2 F5 81            [12]  649 	mov	sp,a
      0002C4 C0 04            [24]  650 	push	ar4
      0002C6 C0 05            [24]  651 	push	ar5
      0002C8 C0 06            [24]  652 	push	ar6
      0002CA C0 07            [24]  653 	push	ar7
      0002CC 90 00 00         [24]  654 	mov	dptr,#0x0000
      0002CF 75 F0 C8         [24]  655 	mov	b,#0xc8
      0002D2 74 42            [12]  656 	mov	a,#0x42
      0002D4 12 0B 9F         [24]  657 	lcall	___fsmul
      0002D7 AC 82            [24]  658 	mov	r4,dpl
      0002D9 AD 83            [24]  659 	mov	r5,dph
      0002DB AE F0            [24]  660 	mov	r6,b
      0002DD FF               [12]  661 	mov	r7,a
      0002DE E5 81            [12]  662 	mov	a,sp
      0002E0 24 FC            [12]  663 	add	a,#0xfc
      0002E2 F5 81            [12]  664 	mov	sp,a
      0002E4 8C 82            [24]  665 	mov	dpl,r4
      0002E6 8D 83            [24]  666 	mov	dph,r5
      0002E8 8E F0            [24]  667 	mov	b,r6
      0002EA EF               [12]  668 	mov	a,r7
      0002EB 12 0D A6         [24]  669 	lcall	___fs2uint
      0002EE AE 82            [24]  670 	mov	r6,dpl
      0002F0 AF 83            [24]  671 	mov	r7,dph
      0002F2 D0 03            [24]  672 	pop	ar3
                                    673 ;	./src/main.c:71: OLED_SetCursor(1, 0);
      0002F4 75 0C 00         [24]  674 	mov	_OLED_SetCursor_PARM_2,#0x00
      0002F7 75 82 01         [24]  675 	mov	dpl,#0x01
      0002FA C0 07            [24]  676 	push	ar7
      0002FC C0 06            [24]  677 	push	ar6
      0002FE C0 03            [24]  678 	push	ar3
      000300 12 0A 48         [24]  679 	lcall	_OLED_SetCursor
      000303 D0 03            [24]  680 	pop	ar3
      000305 D0 06            [24]  681 	pop	ar6
      000307 D0 07            [24]  682 	pop	ar7
                                    683 ;	./src/main.c:72: OLED_DisplayChar((distance / 1000) % 10 + '0');
      000309 75 10 E8         [24]  684 	mov	__divuint_PARM_2,#0xe8
      00030C 75 11 03         [24]  685 	mov	(__divuint_PARM_2 + 1),#0x03
      00030F 8E 82            [24]  686 	mov	dpl,r6
      000311 8F 83            [24]  687 	mov	dph,r7
      000313 C0 07            [24]  688 	push	ar7
      000315 C0 06            [24]  689 	push	ar6
      000317 C0 03            [24]  690 	push	ar3
      000319 12 0B 76         [24]  691 	lcall	__divuint
      00031C 75 10 0A         [24]  692 	mov	__moduint_PARM_2,#0x0a
      00031F 75 11 00         [24]  693 	mov	(__moduint_PARM_2 + 1),#0x00
      000322 12 0C C0         [24]  694 	lcall	__moduint
      000325 AC 82            [24]  695 	mov	r4,dpl
      000327 74 30            [12]  696 	mov	a,#0x30
      000329 2C               [12]  697 	add	a,r4
      00032A F5 82            [12]  698 	mov	dpl,a
      00032C 12 09 A1         [24]  699 	lcall	_OLED_DisplayChar
      00032F D0 03            [24]  700 	pop	ar3
      000331 D0 06            [24]  701 	pop	ar6
      000333 D0 07            [24]  702 	pop	ar7
                                    703 ;	./src/main.c:73: OLED_DisplayChar((distance / 100) % 10 + '0');
      000335 75 10 64         [24]  704 	mov	__divuint_PARM_2,#0x64
      000338 75 11 00         [24]  705 	mov	(__divuint_PARM_2 + 1),#0x00
      00033B 8E 82            [24]  706 	mov	dpl,r6
      00033D 8F 83            [24]  707 	mov	dph,r7
      00033F C0 07            [24]  708 	push	ar7
      000341 C0 06            [24]  709 	push	ar6
      000343 C0 03            [24]  710 	push	ar3
      000345 12 0B 76         [24]  711 	lcall	__divuint
      000348 75 10 0A         [24]  712 	mov	__moduint_PARM_2,#0x0a
      00034B 75 11 00         [24]  713 	mov	(__moduint_PARM_2 + 1),#0x00
      00034E 12 0C C0         [24]  714 	lcall	__moduint
      000351 AC 82            [24]  715 	mov	r4,dpl
      000353 74 30            [12]  716 	mov	a,#0x30
      000355 2C               [12]  717 	add	a,r4
      000356 F5 82            [12]  718 	mov	dpl,a
      000358 12 09 A1         [24]  719 	lcall	_OLED_DisplayChar
                                    720 ;	./src/main.c:74: OLED_DisplayChar('.');
      00035B 75 82 2E         [24]  721 	mov	dpl,#0x2e
      00035E 12 09 A1         [24]  722 	lcall	_OLED_DisplayChar
      000361 D0 03            [24]  723 	pop	ar3
      000363 D0 06            [24]  724 	pop	ar6
      000365 D0 07            [24]  725 	pop	ar7
                                    726 ;	./src/main.c:75: OLED_DisplayChar((distance / 10) % 10 + '0');
      000367 75 10 0A         [24]  727 	mov	__divuint_PARM_2,#0x0a
      00036A 75 11 00         [24]  728 	mov	(__divuint_PARM_2 + 1),#0x00
      00036D 8E 82            [24]  729 	mov	dpl,r6
      00036F 8F 83            [24]  730 	mov	dph,r7
      000371 C0 07            [24]  731 	push	ar7
      000373 C0 06            [24]  732 	push	ar6
      000375 C0 03            [24]  733 	push	ar3
      000377 12 0B 76         [24]  734 	lcall	__divuint
      00037A 75 10 0A         [24]  735 	mov	__moduint_PARM_2,#0x0a
      00037D 75 11 00         [24]  736 	mov	(__moduint_PARM_2 + 1),#0x00
      000380 12 0C C0         [24]  737 	lcall	__moduint
      000383 AC 82            [24]  738 	mov	r4,dpl
      000385 74 30            [12]  739 	mov	a,#0x30
      000387 2C               [12]  740 	add	a,r4
      000388 F5 82            [12]  741 	mov	dpl,a
      00038A 12 09 A1         [24]  742 	lcall	_OLED_DisplayChar
      00038D D0 03            [24]  743 	pop	ar3
      00038F D0 06            [24]  744 	pop	ar6
      000391 D0 07            [24]  745 	pop	ar7
                                    746 ;	./src/main.c:76: OLED_DisplayChar((distance %10 + '0'));
      000393 75 10 0A         [24]  747 	mov	__moduint_PARM_2,#0x0a
      000396 75 11 00         [24]  748 	mov	(__moduint_PARM_2 + 1),#0x00
      000399 8E 82            [24]  749 	mov	dpl,r6
      00039B 8F 83            [24]  750 	mov	dph,r7
      00039D C0 07            [24]  751 	push	ar7
      00039F C0 06            [24]  752 	push	ar6
      0003A1 C0 03            [24]  753 	push	ar3
      0003A3 12 0C C0         [24]  754 	lcall	__moduint
      0003A6 AC 82            [24]  755 	mov	r4,dpl
      0003A8 74 30            [12]  756 	mov	a,#0x30
      0003AA 2C               [12]  757 	add	a,r4
      0003AB F5 82            [12]  758 	mov	dpl,a
      0003AD 12 09 A1         [24]  759 	lcall	_OLED_DisplayChar
      0003B0 D0 03            [24]  760 	pop	ar3
      0003B2 D0 06            [24]  761 	pop	ar6
      0003B4 D0 07            [24]  762 	pop	ar7
                                    763 ;	./src/main.c:78: P1 = 0xff;
      0003B6 75 90 FF         [24]  764 	mov	_P1,#0xff
                                    765 ;	./src/main.c:79: if (distance > 2000)continue;
      0003B9 C3               [12]  766 	clr	c
      0003BA 74 D0            [12]  767 	mov	a,#0xd0
      0003BC 9E               [12]  768 	subb	a,r6
      0003BD 74 07            [12]  769 	mov	a,#0x07
      0003BF 9F               [12]  770 	subb	a,r7
      0003C0 50 03            [24]  771 	jnc	00265$
      0003C2 02 00 9D         [24]  772 	ljmp	00147$
      0003C5                        773 00265$:
                                    774 ;	./src/main.c:80: if (distance <= 2000){
      0003C5 C3               [12]  775 	clr	c
      0003C6 74 D0            [12]  776 	mov	a,#0xd0
      0003C8 9E               [12]  777 	subb	a,r6
      0003C9 74 07            [12]  778 	mov	a,#0x07
      0003CB 9F               [12]  779 	subb	a,r7
      0003CC 50 03            [24]  780 	jnc	00266$
      0003CE 02 00 9D         [24]  781 	ljmp	00147$
      0003D1                        782 00266$:
                                    783 ;	./src/main.c:81: P1 = ~(1<<cnt);
      0003D1 8B 07            [24]  784 	mov	ar7,r3
      0003D3 8F F0            [24]  785 	mov	b,r7
      0003D5 05 F0            [12]  786 	inc	b
      0003D7 74 01            [12]  787 	mov	a,#0x01
      0003D9 80 02            [24]  788 	sjmp	00269$
      0003DB                        789 00267$:
      0003DB 25 E0            [12]  790 	add	a,acc
      0003DD                        791 00269$:
      0003DD D5 F0 FB         [24]  792 	djnz	b,00267$
      0003E0 F4               [12]  793 	cpl	a
      0003E1 F5 90            [12]  794 	mov	_P1,a
                                    795 ;	./src/main.c:83: tmp[cnt] = readObjectTemp();
      0003E3 EB               [12]  796 	mov	a,r3
      0003E4 2B               [12]  797 	add	a,r3
      0003E5 24 2A            [12]  798 	add	a,#_tmp
      0003E7 F9               [12]  799 	mov	r1,a
      0003E8 C0 03            [24]  800 	push	ar3
      0003EA C0 01            [24]  801 	push	ar1
      0003EC 12 06 9B         [24]  802 	lcall	_readObjectTemp
      0003EF 12 0D 66         [24]  803 	lcall	___fs2sint
      0003F2 E5 82            [12]  804 	mov	a,dpl
      0003F4 85 83 F0         [24]  805 	mov	b,dph
      0003F7 D0 01            [24]  806 	pop	ar1
      0003F9 D0 03            [24]  807 	pop	ar3
      0003FB F7               [12]  808 	mov	@r1,a
      0003FC 09               [12]  809 	inc	r1
      0003FD A7 F0            [24]  810 	mov	@r1,b
      0003FF 19               [12]  811 	dec	r1
                                    812 ;	./src/main.c:84: if (cnt == 1){
      000400 BB 01 70         [24]  813 	cjne	r3,#0x01,00106$
                                    814 ;	./src/main.c:85: OLED_SetCursor(5, 0); 
      000403 75 0C 00         [24]  815 	mov	_OLED_SetCursor_PARM_2,#0x00
      000406 75 82 05         [24]  816 	mov	dpl,#0x05
      000409 C0 03            [24]  817 	push	ar3
      00040B 12 0A 48         [24]  818 	lcall	_OLED_SetCursor
                                    819 ;	./src/main.c:87: OLED_DisplayChar(tmp[1] % 1000 / 100 + '0');
      00040E 85 2C 82         [24]  820 	mov	dpl,((_tmp + 0x0002) + 0)
      000411 85 2D 83         [24]  821 	mov	dph,((_tmp + 0x0002) + 1)
      000414 75 10 E8         [24]  822 	mov	__modsint_PARM_2,#0xe8
      000417 75 11 03         [24]  823 	mov	(__modsint_PARM_2 + 1),#0x03
      00041A 12 0E F9         [24]  824 	lcall	__modsint
      00041D 75 10 64         [24]  825 	mov	__divsint_PARM_2,#0x64
      000420 75 11 00         [24]  826 	mov	(__divsint_PARM_2 + 1),#0x00
      000423 12 0F 42         [24]  827 	lcall	__divsint
      000426 AE 82            [24]  828 	mov	r6,dpl
      000428 74 30            [12]  829 	mov	a,#0x30
      00042A 2E               [12]  830 	add	a,r6
      00042B F5 82            [12]  831 	mov	dpl,a
      00042D 12 09 A1         [24]  832 	lcall	_OLED_DisplayChar
                                    833 ;	./src/main.c:88: OLED_DisplayChar(tmp[1] % 100 / 10 + '0');
      000430 85 2C 82         [24]  834 	mov	dpl,((_tmp + 0x0002) + 0)
      000433 85 2D 83         [24]  835 	mov	dph,((_tmp + 0x0002) + 1)
      000436 75 10 64         [24]  836 	mov	__modsint_PARM_2,#0x64
      000439 75 11 00         [24]  837 	mov	(__modsint_PARM_2 + 1),#0x00
      00043C 12 0E F9         [24]  838 	lcall	__modsint
      00043F 75 10 0A         [24]  839 	mov	__divsint_PARM_2,#0x0a
      000442 75 11 00         [24]  840 	mov	(__divsint_PARM_2 + 1),#0x00
      000445 12 0F 42         [24]  841 	lcall	__divsint
      000448 AE 82            [24]  842 	mov	r6,dpl
      00044A 74 30            [12]  843 	mov	a,#0x30
      00044C 2E               [12]  844 	add	a,r6
      00044D F5 82            [12]  845 	mov	dpl,a
      00044F 12 09 A1         [24]  846 	lcall	_OLED_DisplayChar
                                    847 ;	./src/main.c:89: OLED_DisplayChar('.');
      000452 75 82 2E         [24]  848 	mov	dpl,#0x2e
      000455 12 09 A1         [24]  849 	lcall	_OLED_DisplayChar
                                    850 ;	./src/main.c:90: OLED_DisplayChar(tmp[1] % 10 / 1 + '0');
      000458 85 2C 82         [24]  851 	mov	dpl,((_tmp + 0x0002) + 0)
      00045B 85 2D 83         [24]  852 	mov	dph,((_tmp + 0x0002) + 1)
      00045E 75 10 0A         [24]  853 	mov	__modsint_PARM_2,#0x0a
      000461 75 11 00         [24]  854 	mov	(__modsint_PARM_2 + 1),#0x00
      000464 12 0E F9         [24]  855 	lcall	__modsint
      000467 AE 82            [24]  856 	mov	r6,dpl
      000469 74 30            [12]  857 	mov	a,#0x30
      00046B 2E               [12]  858 	add	a,r6
      00046C F5 82            [12]  859 	mov	dpl,a
      00046E 12 09 A1         [24]  860 	lcall	_OLED_DisplayChar
      000471 D0 03            [24]  861 	pop	ar3
      000473                        862 00106$:
                                    863 ;	./src/main.c:93: temp = (tmp[cnt] % 1000 / 100)* 100 + (tmp[1] % 100 / 10) * 10 + (tmp[1] % 10 / 1);
      000473 EB               [12]  864 	mov	a,r3
      000474 2B               [12]  865 	add	a,r3
      000475 24 2A            [12]  866 	add	a,#_tmp
      000477 F9               [12]  867 	mov	r1,a
      000478 87 82            [24]  868 	mov	dpl,@r1
      00047A 09               [12]  869 	inc	r1
      00047B 87 83            [24]  870 	mov	dph,@r1
      00047D 19               [12]  871 	dec	r1
      00047E 75 10 E8         [24]  872 	mov	__modsint_PARM_2,#0xe8
      000481 75 11 03         [24]  873 	mov	(__modsint_PARM_2 + 1),#0x03
      000484 C0 03            [24]  874 	push	ar3
      000486 12 0E F9         [24]  875 	lcall	__modsint
      000489 75 10 64         [24]  876 	mov	__divsint_PARM_2,#0x64
      00048C 75 11 00         [24]  877 	mov	(__divsint_PARM_2 + 1),#0x00
      00048F 12 0F 42         [24]  878 	lcall	__divsint
      000492 85 82 10         [24]  879 	mov	__mulint_PARM_2,dpl
      000495 85 83 11         [24]  880 	mov	(__mulint_PARM_2 + 1),dph
      000498 90 00 64         [24]  881 	mov	dptr,#0x0064
      00049B 12 0C A3         [24]  882 	lcall	__mulint
      00049E 85 82 40         [24]  883 	mov	_main_sloc0_1_0,dpl
      0004A1 85 83 41         [24]  884 	mov	(_main_sloc0_1_0 + 1),dph
      0004A4 D0 03            [24]  885 	pop	ar3
      0004A6 AC 2C            [24]  886 	mov	r4,((_tmp + 0x0002) + 0)
      0004A8 AD 2D            [24]  887 	mov	r5,((_tmp + 0x0002) + 1)
      0004AA 75 10 64         [24]  888 	mov	__modsint_PARM_2,#0x64
      0004AD 75 11 00         [24]  889 	mov	(__modsint_PARM_2 + 1),#0x00
      0004B0 8C 82            [24]  890 	mov	dpl,r4
      0004B2 8D 83            [24]  891 	mov	dph,r5
      0004B4 C0 05            [24]  892 	push	ar5
      0004B6 C0 04            [24]  893 	push	ar4
      0004B8 C0 03            [24]  894 	push	ar3
      0004BA 12 0E F9         [24]  895 	lcall	__modsint
      0004BD 75 10 0A         [24]  896 	mov	__divsint_PARM_2,#0x0a
      0004C0 75 11 00         [24]  897 	mov	(__divsint_PARM_2 + 1),#0x00
      0004C3 12 0F 42         [24]  898 	lcall	__divsint
      0004C6 85 82 10         [24]  899 	mov	__mulint_PARM_2,dpl
      0004C9 85 83 11         [24]  900 	mov	(__mulint_PARM_2 + 1),dph
      0004CC 90 00 0A         [24]  901 	mov	dptr,#0x000a
      0004CF 12 0C A3         [24]  902 	lcall	__mulint
      0004D2 AF 82            [24]  903 	mov	r7,dpl
      0004D4 AA 83            [24]  904 	mov	r2,dph
      0004D6 D0 03            [24]  905 	pop	ar3
      0004D8 D0 04            [24]  906 	pop	ar4
      0004DA D0 05            [24]  907 	pop	ar5
      0004DC EF               [12]  908 	mov	a,r7
      0004DD 25 40            [12]  909 	add	a,_main_sloc0_1_0
      0004DF FF               [12]  910 	mov	r7,a
      0004E0 EA               [12]  911 	mov	a,r2
      0004E1 35 41            [12]  912 	addc	a,(_main_sloc0_1_0 + 1)
      0004E3 FA               [12]  913 	mov	r2,a
      0004E4 75 10 0A         [24]  914 	mov	__modsint_PARM_2,#0x0a
      0004E7 75 11 00         [24]  915 	mov	(__modsint_PARM_2 + 1),#0x00
      0004EA 8C 82            [24]  916 	mov	dpl,r4
      0004EC 8D 83            [24]  917 	mov	dph,r5
      0004EE C0 07            [24]  918 	push	ar7
      0004F0 C0 03            [24]  919 	push	ar3
      0004F2 C0 02            [24]  920 	push	ar2
      0004F4 12 0E F9         [24]  921 	lcall	__modsint
      0004F7 AD 82            [24]  922 	mov	r5,dpl
      0004F9 AE 83            [24]  923 	mov	r6,dph
      0004FB D0 02            [24]  924 	pop	ar2
      0004FD D0 03            [24]  925 	pop	ar3
      0004FF D0 07            [24]  926 	pop	ar7
      000501 ED               [12]  927 	mov	a,r5
      000502 2F               [12]  928 	add	a,r7
      000503 FF               [12]  929 	mov	r7,a
      000504 EE               [12]  930 	mov	a,r6
      000505 3A               [12]  931 	addc	a,r2
      000506 FE               [12]  932 	mov	r6,a
                                    933 ;	./src/main.c:95: if (temp>= 380){
      000507 C3               [12]  934 	clr	c
      000508 EF               [12]  935 	mov	a,r7
      000509 94 7C            [12]  936 	subb	a,#0x7c
      00050B EE               [12]  937 	mov	a,r6
      00050C 64 80            [12]  938 	xrl	a,#0x80
      00050E 94 81            [12]  939 	subb	a,#0x81
      000510 40 1B            [24]  940 	jc	00135$
                                    941 ;	./src/main.c:96: dot[1] |= (1 << (9-cnt));
      000512 8B 05            [24]  942 	mov	ar5,r3
      000514 74 09            [12]  943 	mov	a,#0x09
      000516 C3               [12]  944 	clr	c
      000517 9D               [12]  945 	subb	a,r5
      000518 F5 F0            [12]  946 	mov	b,a
      00051A 05 F0            [12]  947 	inc	b
      00051C 74 01            [12]  948 	mov	a,#0x01
      00051E 80 02            [24]  949 	sjmp	00275$
      000520                        950 00273$:
      000520 25 E0            [12]  951 	add	a,acc
      000522                        952 00275$:
      000522 D5 F0 FB         [24]  953 	djnz	b,00273$
      000525 FD               [12]  954 	mov	r5,a
      000526 45 22            [12]  955 	orl	a,(_dot + 0x0001)
      000528 F5 22            [12]  956 	mov	(_dot + 0x0001),a
      00052A 02 06 54         [24]  957 	ljmp	00136$
      00052D                        958 00135$:
                                    959 ;	./src/main.c:97: }else if (temp <= 379 && temp >= 375){
      00052D C3               [12]  960 	clr	c
      00052E 74 7B            [12]  961 	mov	a,#0x7b
      000530 9F               [12]  962 	subb	a,r7
      000531 74 81            [12]  963 	mov	a,#(0x01 ^ 0x80)
      000533 8E F0            [24]  964 	mov	b,r6
      000535 63 F0 80         [24]  965 	xrl	b,#0x80
      000538 95 F0            [12]  966 	subb	a,b
      00053A 92 00            [24]  967 	mov	_main_sloc1_1_0,c
      00053C 40 26            [24]  968 	jc	00131$
      00053E C3               [12]  969 	clr	c
      00053F EF               [12]  970 	mov	a,r7
      000540 94 77            [12]  971 	subb	a,#0x77
      000542 EE               [12]  972 	mov	a,r6
      000543 64 80            [12]  973 	xrl	a,#0x80
      000545 94 81            [12]  974 	subb	a,#0x81
      000547 40 1B            [24]  975 	jc	00131$
                                    976 ;	./src/main.c:98: dot[2] |= (1 << (9-cnt));
      000549 8B 05            [24]  977 	mov	ar5,r3
      00054B 74 09            [12]  978 	mov	a,#0x09
      00054D C3               [12]  979 	clr	c
      00054E 9D               [12]  980 	subb	a,r5
      00054F F5 F0            [12]  981 	mov	b,a
      000551 05 F0            [12]  982 	inc	b
      000553 74 01            [12]  983 	mov	a,#0x01
      000555 80 02            [24]  984 	sjmp	00280$
      000557                        985 00278$:
      000557 25 E0            [12]  986 	add	a,acc
      000559                        987 00280$:
      000559 D5 F0 FB         [24]  988 	djnz	b,00278$
      00055C FD               [12]  989 	mov	r5,a
      00055D 45 23            [12]  990 	orl	a,(_dot + 0x0002)
      00055F F5 23            [12]  991 	mov	(_dot + 0x0002),a
      000561 02 06 54         [24]  992 	ljmp	00136$
      000564                        993 00131$:
                                    994 ;	./src/main.c:99: }else if (temp <= 379 && temp >= 375){
      000564 20 00 26         [24]  995 	jb	_main_sloc1_1_0,00127$
      000567 C3               [12]  996 	clr	c
      000568 EF               [12]  997 	mov	a,r7
      000569 94 77            [12]  998 	subb	a,#0x77
      00056B EE               [12]  999 	mov	a,r6
      00056C 64 80            [12] 1000 	xrl	a,#0x80
      00056E 94 81            [12] 1001 	subb	a,#0x81
      000570 40 1B            [24] 1002 	jc	00127$
                                   1003 ;	./src/main.c:100: dot[3] |= (1 << (9-cnt));
      000572 8B 05            [24] 1004 	mov	ar5,r3
      000574 74 09            [12] 1005 	mov	a,#0x09
      000576 C3               [12] 1006 	clr	c
      000577 9D               [12] 1007 	subb	a,r5
      000578 F5 F0            [12] 1008 	mov	b,a
      00057A 05 F0            [12] 1009 	inc	b
      00057C 74 01            [12] 1010 	mov	a,#0x01
      00057E 80 02            [24] 1011 	sjmp	00285$
      000580                       1012 00283$:
      000580 25 E0            [12] 1013 	add	a,acc
      000582                       1014 00285$:
      000582 D5 F0 FB         [24] 1015 	djnz	b,00283$
      000585 FD               [12] 1016 	mov	r5,a
      000586 45 24            [12] 1017 	orl	a,(_dot + 0x0003)
      000588 F5 24            [12] 1018 	mov	(_dot + 0x0003),a
      00058A 02 06 54         [24] 1019 	ljmp	00136$
      00058D                       1020 00127$:
                                   1021 ;	./src/main.c:101: }else if (temp <= 379 && temp >= 375){
      00058D 20 00 26         [24] 1022 	jb	_main_sloc1_1_0,00123$
      000590 C3               [12] 1023 	clr	c
      000591 EF               [12] 1024 	mov	a,r7
      000592 94 77            [12] 1025 	subb	a,#0x77
      000594 EE               [12] 1026 	mov	a,r6
      000595 64 80            [12] 1027 	xrl	a,#0x80
      000597 94 81            [12] 1028 	subb	a,#0x81
      000599 40 1B            [24] 1029 	jc	00123$
                                   1030 ;	./src/main.c:102: dot[4] |= (1 << (9-cnt));
      00059B 8B 05            [24] 1031 	mov	ar5,r3
      00059D 74 09            [12] 1032 	mov	a,#0x09
      00059F C3               [12] 1033 	clr	c
      0005A0 9D               [12] 1034 	subb	a,r5
      0005A1 F5 F0            [12] 1035 	mov	b,a
      0005A3 05 F0            [12] 1036 	inc	b
      0005A5 74 01            [12] 1037 	mov	a,#0x01
      0005A7 80 02            [24] 1038 	sjmp	00290$
      0005A9                       1039 00288$:
      0005A9 25 E0            [12] 1040 	add	a,acc
      0005AB                       1041 00290$:
      0005AB D5 F0 FB         [24] 1042 	djnz	b,00288$
      0005AE FD               [12] 1043 	mov	r5,a
      0005AF 45 25            [12] 1044 	orl	a,(_dot + 0x0004)
      0005B1 F5 25            [12] 1045 	mov	(_dot + 0x0004),a
      0005B3 02 06 54         [24] 1046 	ljmp	00136$
      0005B6                       1047 00123$:
                                   1048 ;	./src/main.c:103: }else if (temp <= 379 && temp >= 375){
      0005B6 20 00 25         [24] 1049 	jb	_main_sloc1_1_0,00119$
      0005B9 C3               [12] 1050 	clr	c
      0005BA EF               [12] 1051 	mov	a,r7
      0005BB 94 77            [12] 1052 	subb	a,#0x77
      0005BD EE               [12] 1053 	mov	a,r6
      0005BE 64 80            [12] 1054 	xrl	a,#0x80
      0005C0 94 81            [12] 1055 	subb	a,#0x81
      0005C2 40 1A            [24] 1056 	jc	00119$
                                   1057 ;	./src/main.c:104: dot[5] |= (1 << (9-cnt));
      0005C4 8B 05            [24] 1058 	mov	ar5,r3
      0005C6 74 09            [12] 1059 	mov	a,#0x09
      0005C8 C3               [12] 1060 	clr	c
      0005C9 9D               [12] 1061 	subb	a,r5
      0005CA F5 F0            [12] 1062 	mov	b,a
      0005CC 05 F0            [12] 1063 	inc	b
      0005CE 74 01            [12] 1064 	mov	a,#0x01
      0005D0 80 02            [24] 1065 	sjmp	00295$
      0005D2                       1066 00293$:
      0005D2 25 E0            [12] 1067 	add	a,acc
      0005D4                       1068 00295$:
      0005D4 D5 F0 FB         [24] 1069 	djnz	b,00293$
      0005D7 FD               [12] 1070 	mov	r5,a
      0005D8 45 26            [12] 1071 	orl	a,(_dot + 0x0005)
      0005DA F5 26            [12] 1072 	mov	(_dot + 0x0005),a
      0005DC 80 76            [24] 1073 	sjmp	00136$
      0005DE                       1074 00119$:
                                   1075 ;	./src/main.c:105: }else if (temp <= 379 && temp >= 375){
      0005DE 20 00 25         [24] 1076 	jb	_main_sloc1_1_0,00115$
      0005E1 C3               [12] 1077 	clr	c
      0005E2 EF               [12] 1078 	mov	a,r7
      0005E3 94 77            [12] 1079 	subb	a,#0x77
      0005E5 EE               [12] 1080 	mov	a,r6
      0005E6 64 80            [12] 1081 	xrl	a,#0x80
      0005E8 94 81            [12] 1082 	subb	a,#0x81
      0005EA 40 1A            [24] 1083 	jc	00115$
                                   1084 ;	./src/main.c:106: dot[6] |= (1 << (9-cnt));
      0005EC 8B 05            [24] 1085 	mov	ar5,r3
      0005EE 74 09            [12] 1086 	mov	a,#0x09
      0005F0 C3               [12] 1087 	clr	c
      0005F1 9D               [12] 1088 	subb	a,r5
      0005F2 F5 F0            [12] 1089 	mov	b,a
      0005F4 05 F0            [12] 1090 	inc	b
      0005F6 74 01            [12] 1091 	mov	a,#0x01
      0005F8 80 02            [24] 1092 	sjmp	00300$
      0005FA                       1093 00298$:
      0005FA 25 E0            [12] 1094 	add	a,acc
      0005FC                       1095 00300$:
      0005FC D5 F0 FB         [24] 1096 	djnz	b,00298$
      0005FF FD               [12] 1097 	mov	r5,a
      000600 45 27            [12] 1098 	orl	a,(_dot + 0x0006)
      000602 F5 27            [12] 1099 	mov	(_dot + 0x0006),a
      000604 80 4E            [24] 1100 	sjmp	00136$
      000606                       1101 00115$:
                                   1102 ;	./src/main.c:107: }else if (temp <= 379 && temp >= 375){
      000606 20 00 25         [24] 1103 	jb	_main_sloc1_1_0,00111$
      000609 C3               [12] 1104 	clr	c
      00060A EF               [12] 1105 	mov	a,r7
      00060B 94 77            [12] 1106 	subb	a,#0x77
      00060D EE               [12] 1107 	mov	a,r6
      00060E 64 80            [12] 1108 	xrl	a,#0x80
      000610 94 81            [12] 1109 	subb	a,#0x81
      000612 40 1A            [24] 1110 	jc	00111$
                                   1111 ;	./src/main.c:108: dot[7] |= (1 << (9-cnt));
      000614 8B 05            [24] 1112 	mov	ar5,r3
      000616 74 09            [12] 1113 	mov	a,#0x09
      000618 C3               [12] 1114 	clr	c
      000619 9D               [12] 1115 	subb	a,r5
      00061A F5 F0            [12] 1116 	mov	b,a
      00061C 05 F0            [12] 1117 	inc	b
      00061E 74 01            [12] 1118 	mov	a,#0x01
      000620 80 02            [24] 1119 	sjmp	00305$
      000622                       1120 00303$:
      000622 25 E0            [12] 1121 	add	a,acc
      000624                       1122 00305$:
      000624 D5 F0 FB         [24] 1123 	djnz	b,00303$
      000627 FD               [12] 1124 	mov	r5,a
      000628 45 28            [12] 1125 	orl	a,(_dot + 0x0007)
      00062A F5 28            [12] 1126 	mov	(_dot + 0x0007),a
      00062C 80 26            [24] 1127 	sjmp	00136$
      00062E                       1128 00111$:
                                   1129 ;	./src/main.c:109: }else if (temp <= 379 && temp >= 375){
      00062E 20 00 23         [24] 1130 	jb	_main_sloc1_1_0,00136$
      000631 C3               [12] 1131 	clr	c
      000632 EF               [12] 1132 	mov	a,r7
      000633 94 77            [12] 1133 	subb	a,#0x77
      000635 EE               [12] 1134 	mov	a,r6
      000636 64 80            [12] 1135 	xrl	a,#0x80
      000638 94 81            [12] 1136 	subb	a,#0x81
      00063A 40 18            [24] 1137 	jc	00136$
                                   1138 ;	./src/main.c:110: dot[8] |= (1 << (9-cnt));
      00063C 8B 07            [24] 1139 	mov	ar7,r3
      00063E 74 09            [12] 1140 	mov	a,#0x09
      000640 C3               [12] 1141 	clr	c
      000641 9F               [12] 1142 	subb	a,r7
      000642 F5 F0            [12] 1143 	mov	b,a
      000644 05 F0            [12] 1144 	inc	b
      000646 74 01            [12] 1145 	mov	a,#0x01
      000648 80 02            [24] 1146 	sjmp	00310$
      00064A                       1147 00308$:
      00064A 25 E0            [12] 1148 	add	a,acc
      00064C                       1149 00310$:
      00064C D5 F0 FB         [24] 1150 	djnz	b,00308$
      00064F FF               [12] 1151 	mov	r7,a
      000650 45 29            [12] 1152 	orl	a,(_dot + 0x0008)
      000652 F5 29            [12] 1153 	mov	(_dot + 0x0008),a
      000654                       1154 00136$:
                                   1155 ;	./src/main.c:112: if (tmp[cnt] > max_tmp)max_tmp = tmp[cnt];
      000654 EB               [12] 1156 	mov	a,r3
      000655 2B               [12] 1157 	add	a,r3
      000656 24 2A            [12] 1158 	add	a,#_tmp
      000658 F9               [12] 1159 	mov	r1,a
      000659 87 06            [24] 1160 	mov	ar6,@r1
      00065B 09               [12] 1161 	inc	r1
      00065C 87 07            [24] 1162 	mov	ar7,@r1
      00065E 19               [12] 1163 	dec	r1
      00065F C3               [12] 1164 	clr	c
      000660 E5 3C            [12] 1165 	mov	a,_main_max_tmp_65536_32
      000662 9E               [12] 1166 	subb	a,r6
      000663 E5 3D            [12] 1167 	mov	a,(_main_max_tmp_65536_32 + 1)
      000665 64 80            [12] 1168 	xrl	a,#0x80
      000667 8F F0            [24] 1169 	mov	b,r7
      000669 63 F0 80         [24] 1170 	xrl	b,#0x80
      00066C 95 F0            [12] 1171 	subb	a,b
      00066E 50 04            [24] 1172 	jnc	00138$
      000670 8E 3C            [24] 1173 	mov	_main_max_tmp_65536_32,r6
      000672 8F 3D            [24] 1174 	mov	(_main_max_tmp_65536_32 + 1),r7
      000674                       1175 00138$:
                                   1176 ;	./src/main.c:113: if (tmp[cnt] < min_tmp)min_tmp = tmp[cnt];
      000674 EB               [12] 1177 	mov	a,r3
      000675 2B               [12] 1178 	add	a,r3
      000676 24 2A            [12] 1179 	add	a,#_tmp
      000678 F9               [12] 1180 	mov	r1,a
      000679 87 06            [24] 1181 	mov	ar6,@r1
      00067B 09               [12] 1182 	inc	r1
      00067C 87 07            [24] 1183 	mov	ar7,@r1
      00067E 19               [12] 1184 	dec	r1
      00067F C3               [12] 1185 	clr	c
      000680 EE               [12] 1186 	mov	a,r6
      000681 95 3E            [12] 1187 	subb	a,_main_min_tmp_65536_32
      000683 EF               [12] 1188 	mov	a,r7
      000684 64 80            [12] 1189 	xrl	a,#0x80
      000686 85 3F F0         [24] 1190 	mov	b,(_main_min_tmp_65536_32 + 1)
      000689 63 F0 80         [24] 1191 	xrl	b,#0x80
      00068C 95 F0            [12] 1192 	subb	a,b
      00068E 50 04            [24] 1193 	jnc	00140$
      000690 8E 3E            [24] 1194 	mov	_main_min_tmp_65536_32,r6
      000692 8F 3F            [24] 1195 	mov	(_main_min_tmp_65536_32 + 1),r7
      000694                       1196 00140$:
                                   1197 ;	./src/main.c:114: cnt++;
      000694 0B               [12] 1198 	inc	r3
                                   1199 ;	./src/main.c:115: P1 = 0xff;
      000695 75 90 FF         [24] 1200 	mov	_P1,#0xff
                                   1201 ;	./src/main.c:120: }
      000698 02 00 9D         [24] 1202 	ljmp	00147$
                                   1203 	.area CSEG    (CODE)
                                   1204 	.area CONST   (CODE)
                                   1205 	.area XINIT   (CODE)
                                   1206 	.area CABS    (ABS,CODE)
