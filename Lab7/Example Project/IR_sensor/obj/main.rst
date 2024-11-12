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
                                     13 	.globl _Initial
                                     14 	.globl _Write7219
                                     15 	.globl _read_adc3202
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
                                    112 ;--------------------------------------------------------
                                    113 ; special function registers
                                    114 ;--------------------------------------------------------
                                    115 	.area RSEG    (ABS,DATA)
      000000                        116 	.org 0x0000
                           000080   117 _P0	=	0x0080
                           000081   118 _SP	=	0x0081
                           000082   119 _DPL	=	0x0082
                           000083   120 _DPH	=	0x0083
                           000087   121 _PCON	=	0x0087
                           000088   122 _TCON	=	0x0088
                           000089   123 _TMOD	=	0x0089
                           00008A   124 _TL0	=	0x008a
                           00008B   125 _TL1	=	0x008b
                           00008C   126 _TH0	=	0x008c
                           00008D   127 _TH1	=	0x008d
                           000090   128 _P1	=	0x0090
                           000098   129 _SCON	=	0x0098
                           000099   130 _SBUF	=	0x0099
                           0000A0   131 _P2	=	0x00a0
                           0000A8   132 _IE	=	0x00a8
                           0000B0   133 _P3	=	0x00b0
                           0000B8   134 _IP	=	0x00b8
                           0000D0   135 _PSW	=	0x00d0
                           0000E0   136 _ACC	=	0x00e0
                           0000F0   137 _B	=	0x00f0
                                    138 ;--------------------------------------------------------
                                    139 ; special function bits
                                    140 ;--------------------------------------------------------
                                    141 	.area RSEG    (ABS,DATA)
      000000                        142 	.org 0x0000
                           000080   143 _P0_0	=	0x0080
                           000081   144 _P0_1	=	0x0081
                           000082   145 _P0_2	=	0x0082
                           000083   146 _P0_3	=	0x0083
                           000084   147 _P0_4	=	0x0084
                           000085   148 _P0_5	=	0x0085
                           000086   149 _P0_6	=	0x0086
                           000087   150 _P0_7	=	0x0087
                           000088   151 _IT0	=	0x0088
                           000089   152 _IE0	=	0x0089
                           00008A   153 _IT1	=	0x008a
                           00008B   154 _IE1	=	0x008b
                           00008C   155 _TR0	=	0x008c
                           00008D   156 _TF0	=	0x008d
                           00008E   157 _TR1	=	0x008e
                           00008F   158 _TF1	=	0x008f
                           000090   159 _P1_0	=	0x0090
                           000091   160 _P1_1	=	0x0091
                           000092   161 _P1_2	=	0x0092
                           000093   162 _P1_3	=	0x0093
                           000094   163 _P1_4	=	0x0094
                           000095   164 _P1_5	=	0x0095
                           000096   165 _P1_6	=	0x0096
                           000097   166 _P1_7	=	0x0097
                           000098   167 _RI	=	0x0098
                           000099   168 _TI	=	0x0099
                           00009A   169 _RB8	=	0x009a
                           00009B   170 _TB8	=	0x009b
                           00009C   171 _REN	=	0x009c
                           00009D   172 _SM2	=	0x009d
                           00009E   173 _SM1	=	0x009e
                           00009F   174 _SM0	=	0x009f
                           0000A0   175 _P2_0	=	0x00a0
                           0000A1   176 _P2_1	=	0x00a1
                           0000A2   177 _P2_2	=	0x00a2
                           0000A3   178 _P2_3	=	0x00a3
                           0000A4   179 _P2_4	=	0x00a4
                           0000A5   180 _P2_5	=	0x00a5
                           0000A6   181 _P2_6	=	0x00a6
                           0000A7   182 _P2_7	=	0x00a7
                           0000A8   183 _EX0	=	0x00a8
                           0000A9   184 _ET0	=	0x00a9
                           0000AA   185 _EX1	=	0x00aa
                           0000AB   186 _ET1	=	0x00ab
                           0000AC   187 _ES	=	0x00ac
                           0000AF   188 _EA	=	0x00af
                           0000B0   189 _P3_0	=	0x00b0
                           0000B1   190 _P3_1	=	0x00b1
                           0000B2   191 _P3_2	=	0x00b2
                           0000B3   192 _P3_3	=	0x00b3
                           0000B4   193 _P3_4	=	0x00b4
                           0000B5   194 _P3_5	=	0x00b5
                           0000B6   195 _P3_6	=	0x00b6
                           0000B7   196 _P3_7	=	0x00b7
                           0000B0   197 _RXD	=	0x00b0
                           0000B1   198 _TXD	=	0x00b1
                           0000B2   199 _INT0	=	0x00b2
                           0000B3   200 _INT1	=	0x00b3
                           0000B4   201 _T0	=	0x00b4
                           0000B5   202 _T1	=	0x00b5
                           0000B6   203 _WR	=	0x00b6
                           0000B7   204 _RD	=	0x00b7
                           0000B8   205 _PX0	=	0x00b8
                           0000B9   206 _PT0	=	0x00b9
                           0000BA   207 _PX1	=	0x00ba
                           0000BB   208 _PT1	=	0x00bb
                           0000BC   209 _PS	=	0x00bc
                           0000D0   210 _P	=	0x00d0
                           0000D1   211 _F1	=	0x00d1
                           0000D2   212 _OV	=	0x00d2
                           0000D3   213 _RS0	=	0x00d3
                           0000D4   214 _RS1	=	0x00d4
                           0000D5   215 _F0	=	0x00d5
                           0000D6   216 _AC	=	0x00d6
                           0000D7   217 _CY	=	0x00d7
                                    218 ;--------------------------------------------------------
                                    219 ; overlayable register banks
                                    220 ;--------------------------------------------------------
                                    221 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        222 	.ds 8
                                    223 ;--------------------------------------------------------
                                    224 ; internal ram data
                                    225 ;--------------------------------------------------------
                                    226 	.area DSEG    (DATA)
      000008                        227 _main_seg_65536_8:
      000008                        228 	.ds 10
                                    229 ;--------------------------------------------------------
                                    230 ; overlayable items in internal ram 
                                    231 ;--------------------------------------------------------
                                    232 ;--------------------------------------------------------
                                    233 ; Stack segment in internal ram 
                                    234 ;--------------------------------------------------------
                                    235 	.area	SSEG
      000015                        236 __start__stack:
      000015                        237 	.ds	1
                                    238 
                                    239 ;--------------------------------------------------------
                                    240 ; indirectly addressable internal ram data
                                    241 ;--------------------------------------------------------
                                    242 	.area ISEG    (DATA)
                                    243 ;--------------------------------------------------------
                                    244 ; absolute internal ram data
                                    245 ;--------------------------------------------------------
                                    246 	.area IABS    (ABS,DATA)
                                    247 	.area IABS    (ABS,DATA)
                                    248 ;--------------------------------------------------------
                                    249 ; bit data
                                    250 ;--------------------------------------------------------
                                    251 	.area BSEG    (BIT)
                                    252 ;--------------------------------------------------------
                                    253 ; paged external ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area PSEG    (PAG,XDATA)
                                    256 ;--------------------------------------------------------
                                    257 ; external ram data
                                    258 ;--------------------------------------------------------
                                    259 	.area XSEG    (XDATA)
                                    260 ;--------------------------------------------------------
                                    261 ; absolute external ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area XABS    (ABS,XDATA)
                                    264 ;--------------------------------------------------------
                                    265 ; external initialized ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area XISEG   (XDATA)
                                    268 	.area HOME    (CODE)
                                    269 	.area GSINIT0 (CODE)
                                    270 	.area GSINIT1 (CODE)
                                    271 	.area GSINIT2 (CODE)
                                    272 	.area GSINIT3 (CODE)
                                    273 	.area GSINIT4 (CODE)
                                    274 	.area GSINIT5 (CODE)
                                    275 	.area GSINIT  (CODE)
                                    276 	.area GSFINAL (CODE)
                                    277 	.area CSEG    (CODE)
                                    278 ;--------------------------------------------------------
                                    279 ; interrupt vector 
                                    280 ;--------------------------------------------------------
                                    281 	.area HOME    (CODE)
      000000                        282 __interrupt_vect:
      000000 02 00 06         [24]  283 	ljmp	__sdcc_gsinit_startup
                                    284 ;--------------------------------------------------------
                                    285 ; global & static initialisations
                                    286 ;--------------------------------------------------------
                                    287 	.area HOME    (CODE)
                                    288 	.area GSINIT  (CODE)
                                    289 	.area GSFINAL (CODE)
                                    290 	.area GSINIT  (CODE)
                                    291 	.globl __sdcc_gsinit_startup
                                    292 	.globl __sdcc_program_startup
                                    293 	.globl __start__stack
                                    294 	.globl __mcs51_genXINIT
                                    295 	.globl __mcs51_genXRAMCLEAR
                                    296 	.globl __mcs51_genRAMCLEAR
                                    297 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  298 	ljmp	__sdcc_program_startup
                                    299 ;--------------------------------------------------------
                                    300 ; Home
                                    301 ;--------------------------------------------------------
                                    302 	.area HOME    (CODE)
                                    303 	.area HOME    (CODE)
      000003                        304 __sdcc_program_startup:
      000003 02 00 62         [24]  305 	ljmp	_main
                                    306 ;	return from main will return to caller
                                    307 ;--------------------------------------------------------
                                    308 ; code
                                    309 ;--------------------------------------------------------
                                    310 	.area CSEG    (CODE)
                                    311 ;------------------------------------------------------------
                                    312 ;Allocation info for local variables in function 'main'
                                    313 ;------------------------------------------------------------
                                    314 ;adc_value                 Allocated to registers 
                                    315 ;voltage                   Allocated to registers r6 r7 
                                    316 ;seg                       Allocated with name '_main_seg_65536_8'
                                    317 ;------------------------------------------------------------
                                    318 ;	./src/main.c:8: void main() {
                                    319 ;	-----------------------------------------
                                    320 ;	 function main
                                    321 ;	-----------------------------------------
      000062                        322 _main:
                           000007   323 	ar7 = 0x07
                           000006   324 	ar6 = 0x06
                           000005   325 	ar5 = 0x05
                           000004   326 	ar4 = 0x04
                           000003   327 	ar3 = 0x03
                           000002   328 	ar2 = 0x02
                           000001   329 	ar1 = 0x01
                           000000   330 	ar0 = 0x00
                                    331 ;	./src/main.c:10: unsigned char seg[10] = {
      000062 75 08 7E         [24]  332 	mov	_main_seg_65536_8,#0x7e
      000065 75 09 30         [24]  333 	mov	(_main_seg_65536_8 + 0x0001),#0x30
      000068 75 0A 6D         [24]  334 	mov	(_main_seg_65536_8 + 0x0002),#0x6d
      00006B 75 0B 79         [24]  335 	mov	(_main_seg_65536_8 + 0x0003),#0x79
      00006E 75 0C 33         [24]  336 	mov	(_main_seg_65536_8 + 0x0004),#0x33
      000071 75 0D 5B         [24]  337 	mov	(_main_seg_65536_8 + 0x0005),#0x5b
      000074 75 0E 5F         [24]  338 	mov	(_main_seg_65536_8 + 0x0006),#0x5f
      000077 75 0F 70         [24]  339 	mov	(_main_seg_65536_8 + 0x0007),#0x70
      00007A 75 10 7F         [24]  340 	mov	(_main_seg_65536_8 + 0x0008),#0x7f
      00007D 75 11 7B         [24]  341 	mov	(_main_seg_65536_8 + 0x0009),#0x7b
                                    342 ;	./src/main.c:23: DOUT = 1; //Setting gpio input mode
                                    343 ;	assignBit
      000080 D2 A2            [12]  344 	setb	_P2_2
                                    345 ;	./src/main.c:24: LOAD = 1; 
                                    346 ;	assignBit
      000082 D2 A3            [12]  347 	setb	_P2_3
                                    348 ;	./src/main.c:25: CLK = 0;
                                    349 ;	assignBit
      000084 C2 A0            [12]  350 	clr	_P2_0
                                    351 ;	./src/main.c:26: DIN = 0;
                                    352 ;	assignBit
      000086 C2 A1            [12]  353 	clr	_P2_1
                                    354 ;	./src/main.c:27: Initial();
      000088 12 02 57         [24]  355 	lcall	_Initial
                                    356 ;	./src/main.c:29: while(1) {
      00008B                        357 00102$:
                                    358 ;	./src/main.c:30: adc_value = read_adc3202(1);                    // Read voltage from ADC channel 1
      00008B 75 82 01         [24]  359 	mov	dpl,#0x01
      00008E 12 01 B6         [24]  360 	lcall	_read_adc3202
                                    361 ;	./src/main.c:31: voltage = adc_value * (VDD * 1000.0 / 4096.0);
      000091 12 04 2A         [24]  362 	lcall	___uint2fs
      000094 AC 82            [24]  363 	mov	r4,dpl
      000096 AD 83            [24]  364 	mov	r5,dph
      000098 AE F0            [24]  365 	mov	r6,b
      00009A FF               [12]  366 	mov	r7,a
      00009B C0 04            [24]  367 	push	ar4
      00009D C0 05            [24]  368 	push	ar5
      00009F C0 06            [24]  369 	push	ar6
      0000A1 C0 07            [24]  370 	push	ar7
      0000A3 90 40 00         [24]  371 	mov	dptr,#0x4000
      0000A6 75 F0 9C         [24]  372 	mov	b,#0x9c
      0000A9 74 3F            [12]  373 	mov	a,#0x3f
      0000AB 12 02 D9         [24]  374 	lcall	___fsmul
      0000AE AC 82            [24]  375 	mov	r4,dpl
      0000B0 AD 83            [24]  376 	mov	r5,dph
      0000B2 AE F0            [24]  377 	mov	r6,b
      0000B4 FF               [12]  378 	mov	r7,a
      0000B5 E5 81            [12]  379 	mov	a,sp
      0000B7 24 FC            [12]  380 	add	a,#0xfc
      0000B9 F5 81            [12]  381 	mov	sp,a
      0000BB 8C 82            [24]  382 	mov	dpl,r4
      0000BD 8D 83            [24]  383 	mov	dph,r5
      0000BF 8E F0            [24]  384 	mov	b,r6
      0000C1 EF               [12]  385 	mov	a,r7
      0000C2 12 04 36         [24]  386 	lcall	___fs2uint
                                    387 ;	./src/main.c:32: Write7219(0x04, seg[voltage / 1000] | 0x80);    // Display on MAX7219
      0000C5 AE 82            [24]  388 	mov	r6,dpl
      0000C7 AF 83            [24]  389 	mov	r7,dph
      0000C9 75 13 E8         [24]  390 	mov	__divuint_PARM_2,#0xe8
      0000CC 75 14 03         [24]  391 	mov	(__divuint_PARM_2 + 1),#0x03
      0000CF C0 07            [24]  392 	push	ar7
      0000D1 C0 06            [24]  393 	push	ar6
      0000D3 12 02 B0         [24]  394 	lcall	__divuint
      0000D6 E5 82            [12]  395 	mov	a,dpl
      0000D8 24 08            [12]  396 	add	a,#_main_seg_65536_8
      0000DA F9               [12]  397 	mov	r1,a
      0000DB 87 05            [24]  398 	mov	ar5,@r1
      0000DD 74 80            [12]  399 	mov	a,#0x80
      0000DF 4D               [12]  400 	orl	a,r5
      0000E0 F5 12            [12]  401 	mov	_Write7219_PARM_2,a
      0000E2 75 82 04         [24]  402 	mov	dpl,#0x04
      0000E5 12 02 38         [24]  403 	lcall	_Write7219
      0000E8 D0 06            [24]  404 	pop	ar6
      0000EA D0 07            [24]  405 	pop	ar7
                                    406 ;	./src/main.c:33: Write7219(0x03, seg[voltage % 1000 / 100]);
      0000EC 75 13 E8         [24]  407 	mov	__moduint_PARM_2,#0xe8
      0000EF 75 14 03         [24]  408 	mov	(__moduint_PARM_2 + 1),#0x03
      0000F2 8E 82            [24]  409 	mov	dpl,r6
      0000F4 8F 83            [24]  410 	mov	dph,r7
      0000F6 C0 07            [24]  411 	push	ar7
      0000F8 C0 06            [24]  412 	push	ar6
      0000FA 12 03 DD         [24]  413 	lcall	__moduint
      0000FD 75 13 64         [24]  414 	mov	__divuint_PARM_2,#0x64
      000100 75 14 00         [24]  415 	mov	(__divuint_PARM_2 + 1),#0x00
      000103 12 02 B0         [24]  416 	lcall	__divuint
      000106 E5 82            [12]  417 	mov	a,dpl
      000108 24 08            [12]  418 	add	a,#_main_seg_65536_8
      00010A F9               [12]  419 	mov	r1,a
      00010B 87 12            [24]  420 	mov	_Write7219_PARM_2,@r1
      00010D 75 82 03         [24]  421 	mov	dpl,#0x03
      000110 12 02 38         [24]  422 	lcall	_Write7219
      000113 D0 06            [24]  423 	pop	ar6
      000115 D0 07            [24]  424 	pop	ar7
                                    425 ;	./src/main.c:34: Write7219(0x02, seg[voltage % 100 / 10]);
      000117 75 13 64         [24]  426 	mov	__moduint_PARM_2,#0x64
      00011A 75 14 00         [24]  427 	mov	(__moduint_PARM_2 + 1),#0x00
      00011D 8E 82            [24]  428 	mov	dpl,r6
      00011F 8F 83            [24]  429 	mov	dph,r7
      000121 C0 07            [24]  430 	push	ar7
      000123 C0 06            [24]  431 	push	ar6
      000125 12 03 DD         [24]  432 	lcall	__moduint
      000128 75 13 0A         [24]  433 	mov	__divuint_PARM_2,#0x0a
      00012B 75 14 00         [24]  434 	mov	(__divuint_PARM_2 + 1),#0x00
      00012E 12 02 B0         [24]  435 	lcall	__divuint
      000131 E5 82            [12]  436 	mov	a,dpl
      000133 24 08            [12]  437 	add	a,#_main_seg_65536_8
      000135 F9               [12]  438 	mov	r1,a
      000136 87 12            [24]  439 	mov	_Write7219_PARM_2,@r1
      000138 75 82 02         [24]  440 	mov	dpl,#0x02
      00013B 12 02 38         [24]  441 	lcall	_Write7219
      00013E D0 06            [24]  442 	pop	ar6
      000140 D0 07            [24]  443 	pop	ar7
                                    444 ;	./src/main.c:35: Write7219(0x01, seg[voltage % 10]);
      000142 75 13 0A         [24]  445 	mov	__moduint_PARM_2,#0x0a
      000145 75 14 00         [24]  446 	mov	(__moduint_PARM_2 + 1),#0x00
      000148 8E 82            [24]  447 	mov	dpl,r6
      00014A 8F 83            [24]  448 	mov	dph,r7
      00014C 12 03 DD         [24]  449 	lcall	__moduint
      00014F E5 82            [12]  450 	mov	a,dpl
      000151 24 08            [12]  451 	add	a,#_main_seg_65536_8
      000153 F9               [12]  452 	mov	r1,a
      000154 87 12            [24]  453 	mov	_Write7219_PARM_2,@r1
      000156 75 82 01         [24]  454 	mov	dpl,#0x01
      000159 12 02 38         [24]  455 	lcall	_Write7219
                                    456 ;	./src/main.c:36: delay_ms(200);
      00015C 90 00 C8         [24]  457 	mov	dptr,#0x00c8
      00015F 12 02 99         [24]  458 	lcall	_delay_ms
                                    459 ;	./src/main.c:38: }
      000162 02 00 8B         [24]  460 	ljmp	00102$
                                    461 	.area CSEG    (CODE)
                                    462 	.area CONST   (CODE)
                                    463 	.area XINIT   (CODE)
                                    464 	.area CABS    (ABS,CODE)
