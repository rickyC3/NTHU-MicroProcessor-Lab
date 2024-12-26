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
                                     11 	.globl _uart_isr
                                     12 	.globl _main
                                     13 	.globl _Initial7219
                                     14 	.globl _Write7219
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
                                    112 	.globl _send_num
                                    113 	.globl _idx_table
                                    114 	.globl _seg
                                    115 	.globl _send_flag
                                    116 	.globl _send_data
                                    117 	.globl _received_flag
                                    118 	.globl _received_data
                                    119 	.globl _UART_init
                                    120 	.globl _Delay_Do
                                    121 ;--------------------------------------------------------
                                    122 ; special function registers
                                    123 ;--------------------------------------------------------
                                    124 	.area RSEG    (ABS,DATA)
      000000                        125 	.org 0x0000
                           000080   126 _P0	=	0x0080
                           000081   127 _SP	=	0x0081
                           000082   128 _DPL	=	0x0082
                           000083   129 _DPH	=	0x0083
                           000087   130 _PCON	=	0x0087
                           000088   131 _TCON	=	0x0088
                           000089   132 _TMOD	=	0x0089
                           00008A   133 _TL0	=	0x008a
                           00008B   134 _TL1	=	0x008b
                           00008C   135 _TH0	=	0x008c
                           00008D   136 _TH1	=	0x008d
                           000090   137 _P1	=	0x0090
                           000098   138 _SCON	=	0x0098
                           000099   139 _SBUF	=	0x0099
                           0000A0   140 _P2	=	0x00a0
                           0000A8   141 _IE	=	0x00a8
                           0000B0   142 _P3	=	0x00b0
                           0000B8   143 _IP	=	0x00b8
                           0000D0   144 _PSW	=	0x00d0
                           0000E0   145 _ACC	=	0x00e0
                           0000F0   146 _B	=	0x00f0
                                    147 ;--------------------------------------------------------
                                    148 ; special function bits
                                    149 ;--------------------------------------------------------
                                    150 	.area RSEG    (ABS,DATA)
      000000                        151 	.org 0x0000
                           000080   152 _P0_0	=	0x0080
                           000081   153 _P0_1	=	0x0081
                           000082   154 _P0_2	=	0x0082
                           000083   155 _P0_3	=	0x0083
                           000084   156 _P0_4	=	0x0084
                           000085   157 _P0_5	=	0x0085
                           000086   158 _P0_6	=	0x0086
                           000087   159 _P0_7	=	0x0087
                           000088   160 _IT0	=	0x0088
                           000089   161 _IE0	=	0x0089
                           00008A   162 _IT1	=	0x008a
                           00008B   163 _IE1	=	0x008b
                           00008C   164 _TR0	=	0x008c
                           00008D   165 _TF0	=	0x008d
                           00008E   166 _TR1	=	0x008e
                           00008F   167 _TF1	=	0x008f
                           000090   168 _P1_0	=	0x0090
                           000091   169 _P1_1	=	0x0091
                           000092   170 _P1_2	=	0x0092
                           000093   171 _P1_3	=	0x0093
                           000094   172 _P1_4	=	0x0094
                           000095   173 _P1_5	=	0x0095
                           000096   174 _P1_6	=	0x0096
                           000097   175 _P1_7	=	0x0097
                           000098   176 _RI	=	0x0098
                           000099   177 _TI	=	0x0099
                           00009A   178 _RB8	=	0x009a
                           00009B   179 _TB8	=	0x009b
                           00009C   180 _REN	=	0x009c
                           00009D   181 _SM2	=	0x009d
                           00009E   182 _SM1	=	0x009e
                           00009F   183 _SM0	=	0x009f
                           0000A0   184 _P2_0	=	0x00a0
                           0000A1   185 _P2_1	=	0x00a1
                           0000A2   186 _P2_2	=	0x00a2
                           0000A3   187 _P2_3	=	0x00a3
                           0000A4   188 _P2_4	=	0x00a4
                           0000A5   189 _P2_5	=	0x00a5
                           0000A6   190 _P2_6	=	0x00a6
                           0000A7   191 _P2_7	=	0x00a7
                           0000A8   192 _EX0	=	0x00a8
                           0000A9   193 _ET0	=	0x00a9
                           0000AA   194 _EX1	=	0x00aa
                           0000AB   195 _ET1	=	0x00ab
                           0000AC   196 _ES	=	0x00ac
                           0000AF   197 _EA	=	0x00af
                           0000B0   198 _P3_0	=	0x00b0
                           0000B1   199 _P3_1	=	0x00b1
                           0000B2   200 _P3_2	=	0x00b2
                           0000B3   201 _P3_3	=	0x00b3
                           0000B4   202 _P3_4	=	0x00b4
                           0000B5   203 _P3_5	=	0x00b5
                           0000B6   204 _P3_6	=	0x00b6
                           0000B7   205 _P3_7	=	0x00b7
                           0000B0   206 _RXD	=	0x00b0
                           0000B1   207 _TXD	=	0x00b1
                           0000B2   208 _INT0	=	0x00b2
                           0000B3   209 _INT1	=	0x00b3
                           0000B4   210 _T0	=	0x00b4
                           0000B5   211 _T1	=	0x00b5
                           0000B6   212 _WR	=	0x00b6
                           0000B7   213 _RD	=	0x00b7
                           0000B8   214 _PX0	=	0x00b8
                           0000B9   215 _PT0	=	0x00b9
                           0000BA   216 _PX1	=	0x00ba
                           0000BB   217 _PT1	=	0x00bb
                           0000BC   218 _PS	=	0x00bc
                           0000D0   219 _P	=	0x00d0
                           0000D1   220 _F1	=	0x00d1
                           0000D2   221 _OV	=	0x00d2
                           0000D3   222 _RS0	=	0x00d3
                           0000D4   223 _RS1	=	0x00d4
                           0000D5   224 _F0	=	0x00d5
                           0000D6   225 _AC	=	0x00d6
                           0000D7   226 _CY	=	0x00d7
                                    227 ;--------------------------------------------------------
                                    228 ; overlayable register banks
                                    229 ;--------------------------------------------------------
                                    230 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        231 	.ds 8
                                    232 ;--------------------------------------------------------
                                    233 ; internal ram data
                                    234 ;--------------------------------------------------------
                                    235 	.area DSEG    (DATA)
      000008                        236 _received_data::
      000008                        237 	.ds 1
      000009                        238 _received_flag::
      000009                        239 	.ds 1
      00000A                        240 _send_data::
      00000A                        241 	.ds 1
      00000B                        242 _send_flag::
      00000B                        243 	.ds 1
      00000C                        244 _seg::
      00000C                        245 	.ds 10
      000016                        246 _idx_table::
      000016                        247 	.ds 9
      00001F                        248 _send_num::
      00001F                        249 	.ds 10
                                    250 ;--------------------------------------------------------
                                    251 ; overlayable items in internal ram 
                                    252 ;--------------------------------------------------------
                                    253 ;--------------------------------------------------------
                                    254 ; Stack segment in internal ram 
                                    255 ;--------------------------------------------------------
                                    256 	.area	SSEG
      00002D                        257 __start__stack:
      00002D                        258 	.ds	1
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
      000000 02 00 29         [24]  304 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  305 	reti
      000004                        306 	.ds	7
      00000B 32               [24]  307 	reti
      00000C                        308 	.ds	7
      000013 32               [24]  309 	reti
      000014                        310 	.ds	7
      00001B 32               [24]  311 	reti
      00001C                        312 	.ds	7
      000023 02 02 2F         [24]  313 	ljmp	_uart_isr
                                    314 ;--------------------------------------------------------
                                    315 ; global & static initialisations
                                    316 ;--------------------------------------------------------
                                    317 	.area HOME    (CODE)
                                    318 	.area GSINIT  (CODE)
                                    319 	.area GSFINAL (CODE)
                                    320 	.area GSINIT  (CODE)
                                    321 	.globl __sdcc_gsinit_startup
                                    322 	.globl __sdcc_program_startup
                                    323 	.globl __start__stack
                                    324 	.globl __mcs51_genXINIT
                                    325 	.globl __mcs51_genXRAMCLEAR
                                    326 	.globl __mcs51_genRAMCLEAR
                                    327 ;	./src/main.c:10: unsigned char received_flag = 0;
      000082 75 09 00         [24]  328 	mov	_received_flag,#0x00
                                    329 ;	./src/main.c:13: unsigned char send_flag = 0;
      000085 75 0B 00         [24]  330 	mov	_send_flag,#0x00
                                    331 ;	./src/main.c:15: unsigned char seg[10] = {
      000088 75 0C 7E         [24]  332 	mov	_seg,#0x7e
      00008B 75 0D 30         [24]  333 	mov	(_seg + 0x0001),#0x30
      00008E 75 0E 6D         [24]  334 	mov	(_seg + 0x0002),#0x6d
      000091 75 0F 79         [24]  335 	mov	(_seg + 0x0003),#0x79
      000094 75 10 33         [24]  336 	mov	(_seg + 0x0004),#0x33
      000097 75 11 5B         [24]  337 	mov	(_seg + 0x0005),#0x5b
      00009A 75 12 5F         [24]  338 	mov	(_seg + 0x0006),#0x5f
      00009D 75 13 70         [24]  339 	mov	(_seg + 0x0007),#0x70
      0000A0 75 14 7F         [24]  340 	mov	(_seg + 0x0008),#0x7f
      0000A3 75 15 7B         [24]  341 	mov	(_seg + 0x0009),#0x7b
                                    342 ;	./src/main.c:28: unsigned char idx_table[9] = {
      0000A6 75 16 00         [24]  343 	mov	_idx_table,#0x00
      0000A9 75 17 10         [24]  344 	mov	(_idx_table + 0x0001),#0x10
      0000AC 75 18 20         [24]  345 	mov	(_idx_table + 0x0002),#0x20
      0000AF 75 19 30         [24]  346 	mov	(_idx_table + 0x0003),#0x30
      0000B2 75 1A 40         [24]  347 	mov	(_idx_table + 0x0004),#0x40
      0000B5 75 1B 50         [24]  348 	mov	(_idx_table + 0x0005),#0x50
      0000B8 75 1C 60         [24]  349 	mov	(_idx_table + 0x0006),#0x60
      0000BB 75 1D 70         [24]  350 	mov	(_idx_table + 0x0007),#0x70
      0000BE 75 1E 80         [24]  351 	mov	(_idx_table + 0x0008),#0x80
                                    352 ;	./src/main.c:41: unsigned char send_num[10] = {
      0000C1 75 1F 00         [24]  353 	mov	_send_num,#0x00
      0000C4 75 20 01         [24]  354 	mov	(_send_num + 0x0001),#0x01
      0000C7 75 21 02         [24]  355 	mov	(_send_num + 0x0002),#0x02
      0000CA 75 22 03         [24]  356 	mov	(_send_num + 0x0003),#0x03
      0000CD 75 23 04         [24]  357 	mov	(_send_num + 0x0004),#0x04
      0000D0 75 24 05         [24]  358 	mov	(_send_num + 0x0005),#0x05
      0000D3 75 25 06         [24]  359 	mov	(_send_num + 0x0006),#0x06
      0000D6 75 26 07         [24]  360 	mov	(_send_num + 0x0007),#0x07
      0000D9 75 27 08         [24]  361 	mov	(_send_num + 0x0008),#0x08
      0000DC 75 28 09         [24]  362 	mov	(_send_num + 0x0009),#0x09
                                    363 	.area GSFINAL (CODE)
      0000DF 02 00 26         [24]  364 	ljmp	__sdcc_program_startup
                                    365 ;--------------------------------------------------------
                                    366 ; Home
                                    367 ;--------------------------------------------------------
                                    368 	.area HOME    (CODE)
                                    369 	.area HOME    (CODE)
      000026                        370 __sdcc_program_startup:
      000026 02 00 E2         [24]  371 	ljmp	_main
                                    372 ;	return from main will return to caller
                                    373 ;--------------------------------------------------------
                                    374 ; code
                                    375 ;--------------------------------------------------------
                                    376 	.area CSEG    (CODE)
                                    377 ;------------------------------------------------------------
                                    378 ;Allocation info for local variables in function 'main'
                                    379 ;------------------------------------------------------------
                                    380 ;i                         Allocated to registers r4 
                                    381 ;j                         Allocated to registers r2 r3 
                                    382 ;tar                       Allocated to registers 
                                    383 ;idx                       Allocated to registers r7 
                                    384 ;guess_idx                 Allocated to registers r6 
                                    385 ;num                       Allocated to registers r5 
                                    386 ;i                         Allocated to registers r3 r4 
                                    387 ;------------------------------------------------------------
                                    388 ;	./src/main.c:54: void main(void)
                                    389 ;	-----------------------------------------
                                    390 ;	 function main
                                    391 ;	-----------------------------------------
      0000E2                        392 _main:
                           000007   393 	ar7 = 0x07
                           000006   394 	ar6 = 0x06
                           000005   395 	ar5 = 0x05
                           000004   396 	ar4 = 0x04
                           000003   397 	ar3 = 0x03
                           000002   398 	ar2 = 0x02
                           000001   399 	ar1 = 0x01
                           000000   400 	ar0 = 0x00
                                    401 ;	./src/main.c:56: EA  = 1;		/* Enable global interrupt */
                                    402 ;	assignBit
      0000E2 D2 AF            [12]  403 	setb	_EA
                                    404 ;	./src/main.c:57: ES = 1;  		/* Enable serial interrupt */
                                    405 ;	assignBit
      0000E4 D2 AC            [12]  406 	setb	_ES
                                    407 ;	./src/main.c:59: UART_init(); 	//9600 bps
      0000E6 12 02 23         [24]  408 	lcall	_UART_init
                                    409 ;	./src/main.c:63: send_data = 0x11;	// send data to SBUF 
      0000E9 75 0A 11         [24]  410 	mov	_send_data,#0x11
                                    411 ;	./src/main.c:64: send_flag = 1;
      0000EC 75 0B 01         [24]  412 	mov	_send_flag,#0x01
                                    413 ;	./src/main.c:65: char idx = 8;
      0000EF 7F 08            [12]  414 	mov	r7,#0x08
                                    415 ;	./src/main.c:66: char guess_idx = 1;
      0000F1 7E 01            [12]  416 	mov	r6,#0x01
                                    417 ;	./src/main.c:67: char num = 0;
      0000F3 7D 00            [12]  418 	mov	r5,#0x00
                                    419 ;	./src/main.c:69: Initial7219();
      0000F5 C0 07            [24]  420 	push	ar7
      0000F7 C0 06            [24]  421 	push	ar6
      0000F9 C0 05            [24]  422 	push	ar5
      0000FB 12 03 16         [24]  423 	lcall	_Initial7219
      0000FE D0 05            [24]  424 	pop	ar5
      000100 D0 06            [24]  425 	pop	ar6
      000102 D0 07            [24]  426 	pop	ar7
                                    427 ;	./src/main.c:70: while(but1 == 1);
      000104                        428 00101$:
      000104 20 B2 FD         [24]  429 	jb	_P3_2,00101$
                                    430 ;	./src/main.c:71: while(1) 
      000107                        431 00127$:
                                    432 ;	./src/main.c:74: if (but1 == 0){
      000107 20 B2 4A         [24]  433 	jb	_P3_2,00111$
                                    434 ;	./src/main.c:75: delay_ms(10);
      00010A 90 00 0A         [24]  435 	mov	dptr,#0x000a
      00010D 12 02 56         [24]  436 	lcall	_delay_ms
                                    437 ;	./src/main.c:76: if (but1 == 0){
      000110 20 B2 29         [24]  438 	jb	_P3_2,00109$
                                    439 ;	./src/main.c:77: while (but1 == 0);
      000113                        440 00104$:
      000113 30 B2 FD         [24]  441 	jnb	_P3_2,00104$
                                    442 ;	./src/main.c:78: for (int i=8;i>=1;i--){
      000116 7B 08            [12]  443 	mov	r3,#0x08
      000118 7C 00            [12]  444 	mov	r4,#0x00
      00011A                        445 00130$:
      00011A C3               [12]  446 	clr	c
      00011B EB               [12]  447 	mov	a,r3
      00011C 94 01            [12]  448 	subb	a,#0x01
      00011E EC               [12]  449 	mov	a,r4
      00011F 64 80            [12]  450 	xrl	a,#0x80
      000121 94 80            [12]  451 	subb	a,#0x80
      000123 40 17            [24]  452 	jc	00109$
                                    453 ;	./src/main.c:80: Write7219(i, 0x01);
      000125 8B 82            [24]  454 	mov	dpl,r3
      000127 75 29 01         [24]  455 	mov	_Write7219_PARM_2,#0x01
      00012A C0 04            [24]  456 	push	ar4
      00012C C0 03            [24]  457 	push	ar3
      00012E 12 02 B4         [24]  458 	lcall	_Write7219
      000131 D0 03            [24]  459 	pop	ar3
      000133 D0 04            [24]  460 	pop	ar4
                                    461 ;	./src/main.c:78: for (int i=8;i>=1;i--){
      000135 1B               [12]  462 	dec	r3
      000136 BB FF 01         [24]  463 	cjne	r3,#0xff,00211$
      000139 1C               [12]  464 	dec	r4
      00013A                        465 00211$:
      00013A 80 DE            [24]  466 	sjmp	00130$
      00013C                        467 00109$:
                                    468 ;	./src/main.c:83: idx = 8;
      00013C 7F 08            [12]  469 	mov	r7,#0x08
                                    470 ;	./src/main.c:84: guess_idx = 1;
      00013E 7E 01            [12]  471 	mov	r6,#0x01
                                    472 ;	./src/main.c:85: num = 0;
      000140 7D 00            [12]  473 	mov	r5,#0x00
                                    474 ;	./src/main.c:86: delay_ms(100);
      000142 90 00 64         [24]  475 	mov	dptr,#0x0064
      000145 C0 07            [24]  476 	push	ar7
      000147 C0 06            [24]  477 	push	ar6
      000149 C0 05            [24]  478 	push	ar5
      00014B 12 02 56         [24]  479 	lcall	_delay_ms
      00014E D0 05            [24]  480 	pop	ar5
      000150 D0 06            [24]  481 	pop	ar6
      000152 D0 07            [24]  482 	pop	ar7
      000154                        483 00111$:
                                    484 ;	./src/main.c:88: if(received_flag == 1)
      000154 74 01            [12]  485 	mov	a,#0x01
      000156 B5 09 34         [24]  486 	cjne	a,_received_flag,00116$
                                    487 ;	./src/main.c:90: if(received_data == 'Y'){
      000159 74 59            [12]  488 	mov	a,#0x59
      00015B B5 08 2B         [24]  489 	cjne	a,_received_data,00113$
                                    490 ;	./src/main.c:91: Write7219(idx, seg[num]);
      00015E ED               [12]  491 	mov	a,r5
      00015F 24 0C            [12]  492 	add	a,#_seg
      000161 F9               [12]  493 	mov	r1,a
      000162 87 29            [24]  494 	mov	_Write7219_PARM_2,@r1
      000164 8F 82            [24]  495 	mov	dpl,r7
      000166 C0 07            [24]  496 	push	ar7
      000168 C0 06            [24]  497 	push	ar6
      00016A 12 02 B4         [24]  498 	lcall	_Write7219
      00016D D0 06            [24]  499 	pop	ar6
      00016F D0 07            [24]  500 	pop	ar7
                                    501 ;	./src/main.c:92: guess_idx++;
      000171 0E               [12]  502 	inc	r6
                                    503 ;	./src/main.c:93: idx--;
      000172 1F               [12]  504 	dec	r7
                                    505 ;	./src/main.c:94: num = 0;
      000173 7D 00            [12]  506 	mov	r5,#0x00
                                    507 ;	./src/main.c:95: delay_ms(100);
      000175 90 00 64         [24]  508 	mov	dptr,#0x0064
      000178 C0 07            [24]  509 	push	ar7
      00017A C0 06            [24]  510 	push	ar6
      00017C C0 05            [24]  511 	push	ar5
      00017E 12 02 56         [24]  512 	lcall	_delay_ms
      000181 D0 05            [24]  513 	pop	ar5
      000183 D0 06            [24]  514 	pop	ar6
      000185 D0 07            [24]  515 	pop	ar7
      000187 80 01            [24]  516 	sjmp	00114$
      000189                        517 00113$:
                                    518 ;	./src/main.c:97: num++;
      000189 0D               [12]  519 	inc	r5
      00018A                        520 00114$:
                                    521 ;	./src/main.c:100: received_flag = 0;
      00018A 75 09 00         [24]  522 	mov	_received_flag,#0x00
      00018D                        523 00116$:
                                    524 ;	./src/main.c:106: if (guess_idx >= 9){
      00018D BE 09 00         [24]  525 	cjne	r6,#0x09,00216$
      000190                        526 00216$:
      000190 40 5F            [24]  527 	jc	00122$
                                    528 ;	./src/main.c:107: if (guess_idx == 9){
      000192 BE 09 57         [24]  529 	cjne	r6,#0x09,00120$
                                    530 ;	./src/main.c:108: for (i=0;i<3;i++){
      000195 7C 00            [12]  531 	mov	r4,#0x00
                                    532 ;	./src/main.c:109: for (j=0;j < tar;j++){
      000197                        533 00150$:
      000197 7A 00            [12]  534 	mov	r2,#0x00
      000199 7B 00            [12]  535 	mov	r3,#0x00
      00019B                        536 00133$:
      00019B C3               [12]  537 	clr	c
      00019C EA               [12]  538 	mov	a,r2
      00019D 94 0B            [12]  539 	subb	a,#0x0b
      00019F EB               [12]  540 	mov	a,r3
      0001A0 64 80            [12]  541 	xrl	a,#0x80
      0001A2 94 82            [12]  542 	subb	a,#0x82
      0001A4 50 29            [24]  543 	jnc	00117$
                                    544 ;	./src/main.c:110: P3_7 = 1;
                                    545 ;	assignBit
      0001A6 D2 B7            [12]  546 	setb	_P3_7
                                    547 ;	./src/main.c:111: Delay_Do();
      0001A8 C0 07            [24]  548 	push	ar7
      0001AA C0 06            [24]  549 	push	ar6
      0001AC C0 05            [24]  550 	push	ar5
      0001AE C0 04            [24]  551 	push	ar4
      0001B0 C0 03            [24]  552 	push	ar3
      0001B2 C0 02            [24]  553 	push	ar2
      0001B4 12 02 48         [24]  554 	lcall	_Delay_Do
                                    555 ;	./src/main.c:112: P3_7 = 0;
                                    556 ;	assignBit
      0001B7 C2 B7            [12]  557 	clr	_P3_7
                                    558 ;	./src/main.c:113: Delay_Do();
      0001B9 12 02 48         [24]  559 	lcall	_Delay_Do
      0001BC D0 02            [24]  560 	pop	ar2
      0001BE D0 03            [24]  561 	pop	ar3
      0001C0 D0 04            [24]  562 	pop	ar4
      0001C2 D0 05            [24]  563 	pop	ar5
      0001C4 D0 06            [24]  564 	pop	ar6
      0001C6 D0 07            [24]  565 	pop	ar7
                                    566 ;	./src/main.c:109: for (j=0;j < tar;j++){
      0001C8 0A               [12]  567 	inc	r2
      0001C9 BA 00 CF         [24]  568 	cjne	r2,#0x00,00133$
      0001CC 0B               [12]  569 	inc	r3
      0001CD 80 CC            [24]  570 	sjmp	00133$
      0001CF                        571 00117$:
                                    572 ;	./src/main.c:115: delay_ms(1000);
      0001CF 90 03 E8         [24]  573 	mov	dptr,#0x03e8
      0001D2 C0 07            [24]  574 	push	ar7
      0001D4 C0 06            [24]  575 	push	ar6
      0001D6 C0 05            [24]  576 	push	ar5
      0001D8 C0 04            [24]  577 	push	ar4
      0001DA 12 02 56         [24]  578 	lcall	_delay_ms
      0001DD D0 04            [24]  579 	pop	ar4
      0001DF D0 05            [24]  580 	pop	ar5
      0001E1 D0 06            [24]  581 	pop	ar6
      0001E3 D0 07            [24]  582 	pop	ar7
                                    583 ;	./src/main.c:108: for (i=0;i<3;i++){
      0001E5 0C               [12]  584 	inc	r4
      0001E6 BC 03 00         [24]  585 	cjne	r4,#0x03,00222$
      0001E9                        586 00222$:
      0001E9 40 AC            [24]  587 	jc	00150$
                                    588 ;	./src/main.c:117: guess_idx++;
      0001EB 0E               [12]  589 	inc	r6
      0001EC                        590 00120$:
                                    591 ;	./src/main.c:119: send_data = 0x00;
      0001EC 75 0A 00         [24]  592 	mov	_send_data,#0x00
      0001EF 80 12            [24]  593 	sjmp	00123$
      0001F1                        594 00122$:
                                    595 ;	./src/main.c:123: send_data = idx_table[guess_idx] | send_num[num];
      0001F1 EE               [12]  596 	mov	a,r6
      0001F2 24 16            [12]  597 	add	a,#_idx_table
      0001F4 F9               [12]  598 	mov	r1,a
      0001F5 87 04            [24]  599 	mov	ar4,@r1
      0001F7 ED               [12]  600 	mov	a,r5
      0001F8 24 1F            [12]  601 	add	a,#_send_num
      0001FA F9               [12]  602 	mov	r1,a
      0001FB E7               [12]  603 	mov	a,@r1
      0001FC FB               [12]  604 	mov	r3,a
      0001FD 4C               [12]  605 	orl	a,r4
      0001FE F5 0A            [12]  606 	mov	_send_data,a
                                    607 ;	./src/main.c:124: send_flag = 1;
      000200 75 0B 01         [24]  608 	mov	_send_flag,#0x01
      000203                        609 00123$:
                                    610 ;	./src/main.c:126: if (send_flag == 1)
      000203 74 01            [12]  611 	mov	a,#0x01
      000205 B5 0B 06         [24]  612 	cjne	a,_send_flag,00125$
                                    613 ;	./src/main.c:128: SBUF = send_data;	// send data to SBUF
      000208 85 0A 99         [24]  614 	mov	_SBUF,_send_data
                                    615 ;	./src/main.c:129: send_flag = 0;
      00020B 75 0B 00         [24]  616 	mov	_send_flag,#0x00
      00020E                        617 00125$:
                                    618 ;	./src/main.c:130: }delay_ms(500);
      00020E 90 01 F4         [24]  619 	mov	dptr,#0x01f4
      000211 C0 07            [24]  620 	push	ar7
      000213 C0 06            [24]  621 	push	ar6
      000215 C0 05            [24]  622 	push	ar5
      000217 12 02 56         [24]  623 	lcall	_delay_ms
      00021A D0 05            [24]  624 	pop	ar5
      00021C D0 06            [24]  625 	pop	ar6
      00021E D0 07            [24]  626 	pop	ar7
                                    627 ;	./src/main.c:133: }
      000220 02 01 07         [24]  628 	ljmp	00127$
                                    629 ;------------------------------------------------------------
                                    630 ;Allocation info for local variables in function 'UART_init'
                                    631 ;------------------------------------------------------------
                                    632 ;	./src/main.c:136: void UART_init(void) 	//9600 bps
                                    633 ;	-----------------------------------------
                                    634 ;	 function UART_init
                                    635 ;	-----------------------------------------
      000223                        636 _UART_init:
                                    637 ;	./src/main.c:138: TMOD = 0x20;		/* Timer 1, 8-bit auto reload mode */
      000223 75 89 20         [24]  638 	mov	_TMOD,#0x20
                                    639 ;	./src/main.c:139: TH1 = 0xFD;		/* Load value for 9600 baud rate */
      000226 75 8D FD         [24]  640 	mov	_TH1,#0xfd
                                    641 ;	./src/main.c:140: SCON = 0x50;		/* Mode 1, reception enable */
      000229 75 98 50         [24]  642 	mov	_SCON,#0x50
                                    643 ;	./src/main.c:141: TR1 = 1;		/* Start timer 1 */
                                    644 ;	assignBit
      00022C D2 8E            [12]  645 	setb	_TR1
                                    646 ;	./src/main.c:142: }
      00022E 22               [24]  647 	ret
                                    648 ;------------------------------------------------------------
                                    649 ;Allocation info for local variables in function 'uart_isr'
                                    650 ;------------------------------------------------------------
                                    651 ;	./src/main.c:144: void uart_isr(void) __interrupt (4) 
                                    652 ;	-----------------------------------------
                                    653 ;	 function uart_isr
                                    654 ;	-----------------------------------------
      00022F                        655 _uart_isr:
      00022F C0 E0            [24]  656 	push	acc
                                    657 ;	./src/main.c:146: if(RI == 1) 
                                    658 ;	./src/main.c:148: RI = 0;                  // refresh RI
                                    659 ;	assignBit
      000231 10 98 02         [24]  660 	jbc	_RI,00121$
      000234 80 0A            [24]  661 	sjmp	00104$
      000236                        662 00121$:
                                    663 ;	./src/main.c:149: if(received_flag == 0)
      000236 E5 09            [12]  664 	mov	a,_received_flag
      000238 70 06            [24]  665 	jnz	00104$
                                    666 ;	./src/main.c:151: received_data = SBUF;    // receive data from SBUF
      00023A 85 99 08         [24]  667 	mov	_received_data,_SBUF
                                    668 ;	./src/main.c:152: received_flag = 1;       // receiving finished
      00023D 75 09 01         [24]  669 	mov	_received_flag,#0x01
      000240                        670 00104$:
                                    671 ;	./src/main.c:155: if (TI == 1)
                                    672 ;	./src/main.c:156: TI = 0;
                                    673 ;	assignBit
      000240 10 99 02         [24]  674 	jbc	_TI,00123$
      000243 80 00            [24]  675 	sjmp	00107$
      000245                        676 00123$:
      000245                        677 00107$:
                                    678 ;	./src/main.c:157: }
      000245 D0 E0            [24]  679 	pop	acc
      000247 32               [24]  680 	reti
                                    681 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    682 ;	eliminated unneeded push/pop not_psw
                                    683 ;	eliminated unneeded push/pop dpl
                                    684 ;	eliminated unneeded push/pop dph
                                    685 ;	eliminated unneeded push/pop b
                                    686 ;------------------------------------------------------------
                                    687 ;Allocation info for local variables in function 'Delay_Do'
                                    688 ;------------------------------------------------------------
                                    689 ;	./src/main.c:159: void Delay_Do(void) {
                                    690 ;	-----------------------------------------
                                    691 ;	 function Delay_Do
                                    692 ;	-----------------------------------------
      000248                        693 _Delay_Do:
                                    694 ;	./src/main.c:184: __endasm;
      000248                        695 	 DELAY_Do:
      000248 7E 0A            [12]  696 	MOV	R6,#10
      00024A                        697 	 DELAY_Do_DL1:
      00024A 7F 13            [12]  698 	MOV	R7,#19
      00024C                        699 	 STEP1:
      00024C DF FE            [24]  700 	DJNZ	R7,STEP1
      00024E DE FA            [24]  701 	DJNZ	R6,DELAY_Do_DL1
      000250 7F 0D            [12]  702 	MOV	R7,#13
      000252                        703 	 STEP2:
      000252 DF FE            [24]  704 	DJNZ	R7,STEP2
      000254 22               [24]  705 	RET
                                    706 ;	./src/main.c:186: }
      000255 22               [24]  707 	ret
                                    708 	.area CSEG    (CODE)
                                    709 	.area CONST   (CODE)
                                    710 	.area XINIT   (CODE)
                                    711 	.area CABS    (ABS,CODE)
