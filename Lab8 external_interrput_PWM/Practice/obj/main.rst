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
                                     11 	.globl _EX1_int
                                     12 	.globl _EX0_int
                                     13 	.globl _PWM_Dimming_LED
                                     14 	.globl _main
                                     15 	.globl _delay_ms
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
                                    112 	.globl _dir
                                    113 	.globl _mode
                                    114 	.globl _duty_cycle
                                    115 	.globl _pwm_count
                                    116 	.globl _led
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
                                    229 ; overlayable bit register bank
                                    230 ;--------------------------------------------------------
                                    231 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        232 bits:
      000020                        233 	.ds 1
                           008000   234 	b0 = bits[0]
                           008100   235 	b1 = bits[1]
                           008200   236 	b2 = bits[2]
                           008300   237 	b3 = bits[3]
                           008400   238 	b4 = bits[4]
                           008500   239 	b5 = bits[5]
                           008600   240 	b6 = bits[6]
                           008700   241 	b7 = bits[7]
                                    242 ;--------------------------------------------------------
                                    243 ; internal ram data
                                    244 ;--------------------------------------------------------
                                    245 	.area DSEG    (DATA)
      000008                        246 _led::
      000008                        247 	.ds 1
      000009                        248 _pwm_count::
      000009                        249 	.ds 2
      00000B                        250 _duty_cycle::
      00000B                        251 	.ds 2
      00000D                        252 _mode::
      00000D                        253 	.ds 2
      00000F                        254 _dir::
      00000F                        255 	.ds 2
                                    256 ;--------------------------------------------------------
                                    257 ; overlayable items in internal ram 
                                    258 ;--------------------------------------------------------
                                    259 ;--------------------------------------------------------
                                    260 ; Stack segment in internal ram 
                                    261 ;--------------------------------------------------------
                                    262 	.area	SSEG
      000021                        263 __start__stack:
      000021                        264 	.ds	1
                                    265 
                                    266 ;--------------------------------------------------------
                                    267 ; indirectly addressable internal ram data
                                    268 ;--------------------------------------------------------
                                    269 	.area ISEG    (DATA)
                                    270 ;--------------------------------------------------------
                                    271 ; absolute internal ram data
                                    272 ;--------------------------------------------------------
                                    273 	.area IABS    (ABS,DATA)
                                    274 	.area IABS    (ABS,DATA)
                                    275 ;--------------------------------------------------------
                                    276 ; bit data
                                    277 ;--------------------------------------------------------
                                    278 	.area BSEG    (BIT)
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
      000000 02 00 19         [24]  310 	ljmp	__sdcc_gsinit_startup
      000003 02 01 E2         [24]  311 	ljmp	_EX0_int
      000006                        312 	.ds	5
      00000B 02 01 95         [24]  313 	ljmp	_PWM_Dimming_LED
      00000E                        314 	.ds	5
      000013 02 02 3E         [24]  315 	ljmp	_EX1_int
                                    316 ;--------------------------------------------------------
                                    317 ; global & static initialisations
                                    318 ;--------------------------------------------------------
                                    319 	.area HOME    (CODE)
                                    320 	.area GSINIT  (CODE)
                                    321 	.area GSFINAL (CODE)
                                    322 	.area GSINIT  (CODE)
                                    323 	.globl __sdcc_gsinit_startup
                                    324 	.globl __sdcc_program_startup
                                    325 	.globl __start__stack
                                    326 	.globl __mcs51_genXINIT
                                    327 	.globl __mcs51_genXRAMCLEAR
                                    328 	.globl __mcs51_genRAMCLEAR
                                    329 ;	./src/main.c:6: char led = 0x80; 
      000072 75 08 80         [24]  330 	mov	_led,#0x80
                                    331 ;	./src/main.c:7: int pwm_count=0;
      000075 E4               [12]  332 	clr	a
      000076 F5 09            [12]  333 	mov	_pwm_count,a
      000078 F5 0A            [12]  334 	mov	(_pwm_count + 1),a
                                    335 ;	./src/main.c:8: int duty_cycle = 0;
      00007A F5 0B            [12]  336 	mov	_duty_cycle,a
      00007C F5 0C            [12]  337 	mov	(_duty_cycle + 1),a
                                    338 ;	./src/main.c:9: int mode = 0;
      00007E F5 0D            [12]  339 	mov	_mode,a
      000080 F5 0E            [12]  340 	mov	(_mode + 1),a
                                    341 ;	./src/main.c:10: int dir = 1; // <<
      000082 75 0F 01         [24]  342 	mov	_dir,#0x01
                                    343 ;	1-genFromRTrack replaced	mov	(_dir + 1),#0x00
      000085 F5 10            [12]  344 	mov	(_dir + 1),a
                                    345 	.area GSFINAL (CODE)
      000087 02 00 16         [24]  346 	ljmp	__sdcc_program_startup
                                    347 ;--------------------------------------------------------
                                    348 ; Home
                                    349 ;--------------------------------------------------------
                                    350 	.area HOME    (CODE)
                                    351 	.area HOME    (CODE)
      000016                        352 __sdcc_program_startup:
      000016 02 00 8A         [24]  353 	ljmp	_main
                                    354 ;	return from main will return to caller
                                    355 ;--------------------------------------------------------
                                    356 ; code
                                    357 ;--------------------------------------------------------
                                    358 	.area CSEG    (CODE)
                                    359 ;------------------------------------------------------------
                                    360 ;Allocation info for local variables in function 'main'
                                    361 ;------------------------------------------------------------
                                    362 ;i                         Allocated to registers r6 r7 
                                    363 ;------------------------------------------------------------
                                    364 ;	./src/main.c:12: int main(void)
                                    365 ;	-----------------------------------------
                                    366 ;	 function main
                                    367 ;	-----------------------------------------
      00008A                        368 _main:
                           000007   369 	ar7 = 0x07
                           000006   370 	ar6 = 0x06
                           000005   371 	ar5 = 0x05
                           000004   372 	ar4 = 0x04
                           000003   373 	ar3 = 0x03
                           000002   374 	ar2 = 0x02
                           000001   375 	ar1 = 0x01
                           000000   376 	ar0 = 0x00
                                    377 ;	./src/main.c:14: led = 0x01;
      00008A 75 08 01         [24]  378 	mov	_led,#0x01
                                    379 ;	./src/main.c:17: TMOD = 0x01;            // 16 bit timer
      00008D 75 89 01         [24]  380 	mov	_TMOD,#0x01
                                    381 ;	./src/main.c:18: TH0 = freq >> 8;        
      000090 75 8C FF         [24]  382 	mov	_TH0,#0xff
                                    383 ;	./src/main.c:19: TL0 = freq & 0xFF;  
      000093 75 8A 9C         [24]  384 	mov	_TL0,#0x9c
                                    385 ;	./src/main.c:20: ET0 = 1;				// timer 0 overflow enable				
                                    386 ;	assignBit
      000096 D2 A9            [12]  387 	setb	_ET0
                                    388 ;	./src/main.c:21: TR0 = 1;                // timer 0 turn on
                                    389 ;	assignBit
      000098 D2 8C            [12]  390 	setb	_TR0
                                    391 ;	./src/main.c:24: EA = 1;					// enable all interrupt
                                    392 ;	assignBit
      00009A D2 AF            [12]  393 	setb	_EA
                                    394 ;	./src/main.c:25: EX0=1;          // INT0 enable
                                    395 ;	assignBit
      00009C D2 A8            [12]  396 	setb	_EX0
                                    397 ;	./src/main.c:26: EX1=1;	        // INT1 enable
                                    398 ;	assignBit
      00009E D2 AA            [12]  399 	setb	_EX1
                                    400 ;	./src/main.c:27: IT1 = 0;        // INT0 edge trigger INT1 level trigger
                                    401 ;	assignBit
      0000A0 C2 8A            [12]  402 	clr	_IT1
                                    403 ;	./src/main.c:28: IT0 = 0;           
                                    404 ;	assignBit
      0000A2 C2 88            [12]  405 	clr	_IT0
                                    406 ;	./src/main.c:33: while (1){
      0000A4                        407 00122$:
                                    408 ;	./src/main.c:34: if (mode == 0){
      0000A4 E5 0D            [12]  409 	mov	a,_mode
      0000A6 45 0E            [12]  410 	orl	a,(_mode + 1)
      0000A8 70 03            [24]  411 	jnz	00117$
                                    412 ;	./src/main.c:35: led = led;
      0000AA 02 01 49         [24]  413 	ljmp	00147$
      0000AD                        414 00117$:
                                    415 ;	./src/main.c:36: }else if (mode == 1){
      0000AD 74 01            [12]  416 	mov	a,#0x01
      0000AF B5 0D 06         [24]  417 	cjne	a,_mode,00203$
      0000B2 14               [12]  418 	dec	a
      0000B3 B5 0E 02         [24]  419 	cjne	a,(_mode + 1),00203$
      0000B6 80 02            [24]  420 	sjmp	00204$
      0000B8                        421 00203$:
      0000B8 80 18            [24]  422 	sjmp	00114$
      0000BA                        423 00204$:
                                    424 ;	./src/main.c:37: led = (led == 0x01)? 0x80:led>>1;
      0000BA 74 01            [12]  425 	mov	a,#0x01
      0000BC B5 08 06         [24]  426 	cjne	a,_led,00130$
      0000BF 7E 80            [12]  427 	mov	r6,#0x80
      0000C1 7F 00            [12]  428 	mov	r7,#0x00
      0000C3 80 08            [24]  429 	sjmp	00131$
      0000C5                        430 00130$:
      0000C5 E5 08            [12]  431 	mov	a,_led
      0000C7 C3               [12]  432 	clr	c
      0000C8 13               [12]  433 	rrc	a
      0000C9 FD               [12]  434 	mov	r5,a
      0000CA FE               [12]  435 	mov	r6,a
      0000CB 7F 00            [12]  436 	mov	r7,#0x00
      0000CD                        437 00131$:
      0000CD 8E 08            [24]  438 	mov	_led,r6
      0000CF 02 01 49         [24]  439 	ljmp	00147$
      0000D2                        440 00114$:
                                    441 ;	./src/main.c:38: }else if (mode == 2){
      0000D2 74 02            [12]  442 	mov	a,#0x02
      0000D4 B5 0D 06         [24]  443 	cjne	a,_mode,00207$
      0000D7 E4               [12]  444 	clr	a
      0000D8 B5 0E 02         [24]  445 	cjne	a,(_mode + 1),00207$
      0000DB 80 02            [24]  446 	sjmp	00208$
      0000DD                        447 00207$:
      0000DD 80 1F            [24]  448 	sjmp	00111$
      0000DF                        449 00208$:
                                    450 ;	./src/main.c:39: led = (led == 0x80)? 0x01:led<<1;
      0000DF 74 80            [12]  451 	mov	a,#0x80
      0000E1 B5 08 06         [24]  452 	cjne	a,_led,00132$
      0000E4 7E 01            [12]  453 	mov	r6,#0x01
      0000E6 7F 00            [12]  454 	mov	r7,#0x00
      0000E8 80 0A            [24]  455 	sjmp	00133$
      0000EA                        456 00132$:
      0000EA E5 08            [12]  457 	mov	a,_led
      0000EC 25 E0            [12]  458 	add	a,acc
      0000EE FD               [12]  459 	mov	r5,a
      0000EF FE               [12]  460 	mov	r6,a
      0000F0 33               [12]  461 	rlc	a
      0000F1 95 E0            [12]  462 	subb	a,acc
      0000F3 FF               [12]  463 	mov	r7,a
      0000F4                        464 00133$:
      0000F4 8E 08            [24]  465 	mov	_led,r6
                                    466 ;	./src/main.c:40: dir = 1;
      0000F6 75 0F 01         [24]  467 	mov	_dir,#0x01
      0000F9 75 10 00         [24]  468 	mov	(_dir + 1),#0x00
      0000FC 80 4B            [24]  469 	sjmp	00147$
      0000FE                        470 00111$:
                                    471 ;	./src/main.c:41: }else if (mode == 3){
      0000FE 74 03            [12]  472 	mov	a,#0x03
      000100 B5 0D 06         [24]  473 	cjne	a,_mode,00211$
      000103 E4               [12]  474 	clr	a
      000104 B5 0E 02         [24]  475 	cjne	a,(_mode + 1),00211$
      000107 80 02            [24]  476 	sjmp	00212$
      000109                        477 00211$:
      000109 80 3E            [24]  478 	sjmp	00147$
      00010B                        479 00212$:
                                    480 ;	./src/main.c:42: if (dir == 1 && led == 0x80){
      00010B 74 01            [12]  481 	mov	a,#0x01
      00010D B5 0F 06         [24]  482 	cjne	a,_dir,00213$
      000110 14               [12]  483 	dec	a
      000111 B5 10 02         [24]  484 	cjne	a,(_dir + 1),00213$
      000114 80 02            [24]  485 	sjmp	00214$
      000116                        486 00213$:
      000116 80 0C            [24]  487 	sjmp	00105$
      000118                        488 00214$:
      000118 74 80            [12]  489 	mov	a,#0x80
      00011A B5 08 07         [24]  490 	cjne	a,_led,00105$
                                    491 ;	./src/main.c:43: dir = 0;
      00011D E4               [12]  492 	clr	a
      00011E F5 0F            [12]  493 	mov	_dir,a
      000120 F5 10            [12]  494 	mov	(_dir + 1),a
      000122 80 11            [24]  495 	sjmp	00106$
      000124                        496 00105$:
                                    497 ;	./src/main.c:44: }else if (dir == 0 && led == 0x01){
      000124 E5 0F            [12]  498 	mov	a,_dir
      000126 45 10            [12]  499 	orl	a,(_dir + 1)
      000128 70 0B            [24]  500 	jnz	00106$
      00012A 74 01            [12]  501 	mov	a,#0x01
      00012C B5 08 06         [24]  502 	cjne	a,_led,00106$
                                    503 ;	./src/main.c:45: dir = 1;
      00012F 75 0F 01         [24]  504 	mov	_dir,#0x01
      000132 75 10 00         [24]  505 	mov	(_dir + 1),#0x00
      000135                        506 00106$:
                                    507 ;	./src/main.c:47: led = (dir)? led << 1 : led >> 1;
      000135 E5 0F            [12]  508 	mov	a,_dir
      000137 45 10            [12]  509 	orl	a,(_dir + 1)
      000139 60 07            [24]  510 	jz	00134$
      00013B E5 08            [12]  511 	mov	a,_led
      00013D 25 E0            [12]  512 	add	a,acc
      00013F FF               [12]  513 	mov	r7,a
      000140 80 05            [24]  514 	sjmp	00135$
      000142                        515 00134$:
      000142 E5 08            [12]  516 	mov	a,_led
      000144 C3               [12]  517 	clr	c
      000145 13               [12]  518 	rrc	a
      000146 FF               [12]  519 	mov	r7,a
      000147                        520 00135$:
      000147 8F 08            [24]  521 	mov	_led,r7
                                    522 ;	./src/main.c:49: for (i=0;i<PWM_CNT_UPPER;i+=2){
      000149                        523 00147$:
      000149 7E 00            [12]  524 	mov	r6,#0x00
      00014B 7F 00            [12]  525 	mov	r7,#0x00
      00014D                        526 00124$:
                                    527 ;	./src/main.c:50: duty_cycle = i;
      00014D 8E 0B            [24]  528 	mov	_duty_cycle,r6
      00014F 8F 0C            [24]  529 	mov	(_duty_cycle + 1),r7
                                    530 ;	./src/main.c:51: delay_ms(10);
      000151 90 00 0A         [24]  531 	mov	dptr,#0x000a
      000154 C0 07            [24]  532 	push	ar7
      000156 C0 06            [24]  533 	push	ar6
      000158 12 02 8F         [24]  534 	lcall	_delay_ms
      00015B D0 06            [24]  535 	pop	ar6
      00015D D0 07            [24]  536 	pop	ar7
                                    537 ;	./src/main.c:49: for (i=0;i<PWM_CNT_UPPER;i+=2){
      00015F 74 02            [12]  538 	mov	a,#0x02
      000161 2E               [12]  539 	add	a,r6
      000162 FE               [12]  540 	mov	r6,a
      000163 E4               [12]  541 	clr	a
      000164 3F               [12]  542 	addc	a,r7
      000165 FF               [12]  543 	mov	r7,a
      000166 C3               [12]  544 	clr	c
      000167 EE               [12]  545 	mov	a,r6
      000168 94 64            [12]  546 	subb	a,#0x64
      00016A EF               [12]  547 	mov	a,r7
      00016B 64 80            [12]  548 	xrl	a,#0x80
      00016D 94 80            [12]  549 	subb	a,#0x80
      00016F 40 DC            [24]  550 	jc	00124$
                                    551 ;	./src/main.c:53: for (i = PWM_CNT_UPPER-1;i>=0;i-=2){
      000171 7E 63            [12]  552 	mov	r6,#0x63
      000173 7F 00            [12]  553 	mov	r7,#0x00
      000175                        554 00126$:
                                    555 ;	./src/main.c:54: duty_cycle = i;
      000175 8E 0B            [24]  556 	mov	_duty_cycle,r6
      000177 8F 0C            [24]  557 	mov	(_duty_cycle + 1),r7
                                    558 ;	./src/main.c:55: delay_ms(10);
      000179 90 00 0A         [24]  559 	mov	dptr,#0x000a
      00017C C0 07            [24]  560 	push	ar7
      00017E C0 06            [24]  561 	push	ar6
      000180 12 02 8F         [24]  562 	lcall	_delay_ms
      000183 D0 06            [24]  563 	pop	ar6
      000185 D0 07            [24]  564 	pop	ar7
                                    565 ;	./src/main.c:53: for (i = PWM_CNT_UPPER-1;i>=0;i-=2){
      000187 EE               [12]  566 	mov	a,r6
      000188 24 FE            [12]  567 	add	a,#0xfe
      00018A FE               [12]  568 	mov	r6,a
      00018B EF               [12]  569 	mov	a,r7
      00018C 34 FF            [12]  570 	addc	a,#0xff
      00018E FF               [12]  571 	mov	r7,a
      00018F 30 E7 E3         [24]  572 	jnb	acc.7,00126$
                                    573 ;	./src/main.c:58: }
      000192 02 00 A4         [24]  574 	ljmp	00122$
                                    575 ;------------------------------------------------------------
                                    576 ;Allocation info for local variables in function 'PWM_Dimming_LED'
                                    577 ;------------------------------------------------------------
                                    578 ;	./src/main.c:60: void PWM_Dimming_LED(void) __interrupt (1)  
                                    579 ;	-----------------------------------------
                                    580 ;	 function PWM_Dimming_LED
                                    581 ;	-----------------------------------------
      000195                        582 _PWM_Dimming_LED:
      000195 C0 E0            [24]  583 	push	acc
      000197 C0 F0            [24]  584 	push	b
      000199 C0 D0            [24]  585 	push	psw
                                    586 ;	./src/main.c:62: TH0 = freq >> 8;
      00019B 75 8C FF         [24]  587 	mov	_TH0,#0xff
                                    588 ;	./src/main.c:63: TL0 = freq & 0xFF;   
      00019E 75 8A 9C         [24]  589 	mov	_TL0,#0x9c
                                    590 ;	./src/main.c:65: pwm_count+=2;
      0001A1 74 02            [12]  591 	mov	a,#0x02
      0001A3 25 09            [12]  592 	add	a,_pwm_count
      0001A5 F5 09            [12]  593 	mov	_pwm_count,a
      0001A7 E4               [12]  594 	clr	a
      0001A8 35 0A            [12]  595 	addc	a,(_pwm_count + 1)
      0001AA F5 0A            [12]  596 	mov	(_pwm_count + 1),a
                                    597 ;	./src/main.c:66: if(pwm_count >= PWM_CNT_UPPER) // 固定跑100次
      0001AC C3               [12]  598 	clr	c
      0001AD E5 09            [12]  599 	mov	a,_pwm_count
      0001AF 94 64            [12]  600 	subb	a,#0x64
      0001B1 E5 0A            [12]  601 	mov	a,(_pwm_count + 1)
      0001B3 64 80            [12]  602 	xrl	a,#0x80
      0001B5 94 80            [12]  603 	subb	a,#0x80
      0001B7 40 05            [24]  604 	jc	00102$
                                    605 ;	./src/main.c:67: pwm_count = 0;
      0001B9 E4               [12]  606 	clr	a
      0001BA F5 09            [12]  607 	mov	_pwm_count,a
      0001BC F5 0A            [12]  608 	mov	(_pwm_count + 1),a
      0001BE                        609 00102$:
                                    610 ;	./src/main.c:69: if(duty_cycle > pwm_count){
      0001BE C3               [12]  611 	clr	c
      0001BF E5 09            [12]  612 	mov	a,_pwm_count
      0001C1 95 0B            [12]  613 	subb	a,_duty_cycle
      0001C3 E5 0A            [12]  614 	mov	a,(_pwm_count + 1)
      0001C5 64 80            [12]  615 	xrl	a,#0x80
      0001C7 85 0C F0         [24]  616 	mov	b,(_duty_cycle + 1)
      0001CA 63 F0 80         [24]  617 	xrl	b,#0x80
      0001CD 95 F0            [12]  618 	subb	a,b
      0001CF 50 07            [24]  619 	jnc	00104$
                                    620 ;	./src/main.c:70: P1 = ~led;
      0001D1 E5 08            [12]  621 	mov	a,_led
      0001D3 F4               [12]  622 	cpl	a
      0001D4 F5 90            [12]  623 	mov	_P1,a
      0001D6 80 03            [24]  624 	sjmp	00106$
      0001D8                        625 00104$:
                                    626 ;	./src/main.c:72: P1 = 0xff;
      0001D8 75 90 FF         [24]  627 	mov	_P1,#0xff
      0001DB                        628 00106$:
                                    629 ;	./src/main.c:75: }
      0001DB D0 D0            [24]  630 	pop	psw
      0001DD D0 F0            [24]  631 	pop	b
      0001DF D0 E0            [24]  632 	pop	acc
      0001E1 32               [24]  633 	reti
                                    634 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    635 ;	eliminated unneeded push/pop dpl
                                    636 ;	eliminated unneeded push/pop dph
                                    637 ;------------------------------------------------------------
                                    638 ;Allocation info for local variables in function 'EX0_int'
                                    639 ;------------------------------------------------------------
                                    640 ;	./src/main.c:78: void EX0_int(void) __interrupt (0) // External interrupt 0
                                    641 ;	-----------------------------------------
                                    642 ;	 function EX0_int
                                    643 ;	-----------------------------------------
      0001E2                        644 _EX0_int:
      0001E2 C0 20            [24]  645 	push	bits
      0001E4 C0 E0            [24]  646 	push	acc
      0001E6 C0 F0            [24]  647 	push	b
      0001E8 C0 82            [24]  648 	push	dpl
      0001EA C0 83            [24]  649 	push	dph
      0001EC C0 07            [24]  650 	push	(0+7)
      0001EE C0 06            [24]  651 	push	(0+6)
      0001F0 C0 05            [24]  652 	push	(0+5)
      0001F2 C0 04            [24]  653 	push	(0+4)
      0001F4 C0 03            [24]  654 	push	(0+3)
      0001F6 C0 02            [24]  655 	push	(0+2)
      0001F8 C0 01            [24]  656 	push	(0+1)
      0001FA C0 00            [24]  657 	push	(0+0)
      0001FC C0 D0            [24]  658 	push	psw
      0001FE 75 D0 00         [24]  659 	mov	psw,#0x00
                                    660 ;	./src/main.c:80: mode++;
      000201 05 0D            [12]  661 	inc	_mode
      000203 E4               [12]  662 	clr	a
      000204 B5 0D 02         [24]  663 	cjne	a,_mode,00109$
      000207 05 0E            [12]  664 	inc	(_mode + 1)
      000209                        665 00109$:
                                    666 ;	./src/main.c:81: if (mode == 4)mode = 0;
      000209 74 04            [12]  667 	mov	a,#0x04
      00020B B5 0D 06         [24]  668 	cjne	a,_mode,00110$
      00020E E4               [12]  669 	clr	a
      00020F B5 0E 02         [24]  670 	cjne	a,(_mode + 1),00110$
      000212 80 02            [24]  671 	sjmp	00111$
      000214                        672 00110$:
      000214 80 05            [24]  673 	sjmp	00102$
      000216                        674 00111$:
      000216 E4               [12]  675 	clr	a
      000217 F5 0D            [12]  676 	mov	_mode,a
      000219 F5 0E            [12]  677 	mov	(_mode + 1),a
      00021B                        678 00102$:
                                    679 ;	./src/main.c:82: delay_ms(1000);
      00021B 90 03 E8         [24]  680 	mov	dptr,#0x03e8
      00021E 12 02 8F         [24]  681 	lcall	_delay_ms
                                    682 ;	./src/main.c:83: } 
      000221 D0 D0            [24]  683 	pop	psw
      000223 D0 00            [24]  684 	pop	(0+0)
      000225 D0 01            [24]  685 	pop	(0+1)
      000227 D0 02            [24]  686 	pop	(0+2)
      000229 D0 03            [24]  687 	pop	(0+3)
      00022B D0 04            [24]  688 	pop	(0+4)
      00022D D0 05            [24]  689 	pop	(0+5)
      00022F D0 06            [24]  690 	pop	(0+6)
      000231 D0 07            [24]  691 	pop	(0+7)
      000233 D0 83            [24]  692 	pop	dph
      000235 D0 82            [24]  693 	pop	dpl
      000237 D0 F0            [24]  694 	pop	b
      000239 D0 E0            [24]  695 	pop	acc
      00023B D0 20            [24]  696 	pop	bits
      00023D 32               [24]  697 	reti
                                    698 ;------------------------------------------------------------
                                    699 ;Allocation info for local variables in function 'EX1_int'
                                    700 ;------------------------------------------------------------
                                    701 ;j                         Allocated to registers r7 
                                    702 ;------------------------------------------------------------
                                    703 ;	./src/main.c:85: void EX1_int(void) __interrupt (2) // External interrupt 1 level trigger
                                    704 ;	-----------------------------------------
                                    705 ;	 function EX1_int
                                    706 ;	-----------------------------------------
      00023E                        707 _EX1_int:
      00023E C0 20            [24]  708 	push	bits
      000240 C0 E0            [24]  709 	push	acc
      000242 C0 F0            [24]  710 	push	b
      000244 C0 82            [24]  711 	push	dpl
      000246 C0 83            [24]  712 	push	dph
      000248 C0 07            [24]  713 	push	(0+7)
      00024A C0 06            [24]  714 	push	(0+6)
      00024C C0 05            [24]  715 	push	(0+5)
      00024E C0 04            [24]  716 	push	(0+4)
      000250 C0 03            [24]  717 	push	(0+3)
      000252 C0 02            [24]  718 	push	(0+2)
      000254 C0 01            [24]  719 	push	(0+1)
      000256 C0 00            [24]  720 	push	(0+0)
      000258 C0 D0            [24]  721 	push	psw
      00025A 75 D0 00         [24]  722 	mov	psw,#0x00
                                    723 ;	./src/main.c:88: j=led;      	
      00025D AF 08            [24]  724 	mov	r7,_led
                                    725 ;	./src/main.c:89: P1=0x00;
      00025F 75 90 00         [24]  726 	mov	_P1,#0x00
                                    727 ;	./src/main.c:90: delay_ms(10000); 
      000262 90 27 10         [24]  728 	mov	dptr,#0x2710
      000265 C0 07            [24]  729 	push	ar7
      000267 12 02 8F         [24]  730 	lcall	_delay_ms
      00026A D0 07            [24]  731 	pop	ar7
                                    732 ;	./src/main.c:91: led=j;
                                    733 ;	./src/main.c:92: P1 = ~led;
      00026C EF               [12]  734 	mov	a,r7
      00026D F5 08            [12]  735 	mov	_led,a
      00026F F4               [12]  736 	cpl	a
      000270 F5 90            [12]  737 	mov	_P1,a
                                    738 ;	./src/main.c:93: } 	
      000272 D0 D0            [24]  739 	pop	psw
      000274 D0 00            [24]  740 	pop	(0+0)
      000276 D0 01            [24]  741 	pop	(0+1)
      000278 D0 02            [24]  742 	pop	(0+2)
      00027A D0 03            [24]  743 	pop	(0+3)
      00027C D0 04            [24]  744 	pop	(0+4)
      00027E D0 05            [24]  745 	pop	(0+5)
      000280 D0 06            [24]  746 	pop	(0+6)
      000282 D0 07            [24]  747 	pop	(0+7)
      000284 D0 83            [24]  748 	pop	dph
      000286 D0 82            [24]  749 	pop	dpl
      000288 D0 F0            [24]  750 	pop	b
      00028A D0 E0            [24]  751 	pop	acc
      00028C D0 20            [24]  752 	pop	bits
      00028E 32               [24]  753 	reti
                                    754 	.area CSEG    (CODE)
                                    755 	.area CONST   (CODE)
                                    756 	.area XINIT   (CODE)
                                    757 	.area CABS    (ABS,CODE)
