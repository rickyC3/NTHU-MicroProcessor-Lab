                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.0 #14184 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module GetKey
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
                                    107 	.globl _Get_Key
                                    108 ;--------------------------------------------------------
                                    109 ; special function registers
                                    110 ;--------------------------------------------------------
                                    111 	.area RSEG    (ABS,DATA)
      000000                        112 	.org 0x0000
                           000080   113 _P0	=	0x0080
                           000081   114 _SP	=	0x0081
                           000082   115 _DPL	=	0x0082
                           000083   116 _DPH	=	0x0083
                           000087   117 _PCON	=	0x0087
                           000088   118 _TCON	=	0x0088
                           000089   119 _TMOD	=	0x0089
                           00008A   120 _TL0	=	0x008a
                           00008B   121 _TL1	=	0x008b
                           00008C   122 _TH0	=	0x008c
                           00008D   123 _TH1	=	0x008d
                           000090   124 _P1	=	0x0090
                           000098   125 _SCON	=	0x0098
                           000099   126 _SBUF	=	0x0099
                           0000A0   127 _P2	=	0x00a0
                           0000A8   128 _IE	=	0x00a8
                           0000B0   129 _P3	=	0x00b0
                           0000B8   130 _IP	=	0x00b8
                           0000D0   131 _PSW	=	0x00d0
                           0000E0   132 _ACC	=	0x00e0
                           0000F0   133 _B	=	0x00f0
                                    134 ;--------------------------------------------------------
                                    135 ; special function bits
                                    136 ;--------------------------------------------------------
                                    137 	.area RSEG    (ABS,DATA)
      000000                        138 	.org 0x0000
                           000080   139 _P0_0	=	0x0080
                           000081   140 _P0_1	=	0x0081
                           000082   141 _P0_2	=	0x0082
                           000083   142 _P0_3	=	0x0083
                           000084   143 _P0_4	=	0x0084
                           000085   144 _P0_5	=	0x0085
                           000086   145 _P0_6	=	0x0086
                           000087   146 _P0_7	=	0x0087
                           000088   147 _IT0	=	0x0088
                           000089   148 _IE0	=	0x0089
                           00008A   149 _IT1	=	0x008a
                           00008B   150 _IE1	=	0x008b
                           00008C   151 _TR0	=	0x008c
                           00008D   152 _TF0	=	0x008d
                           00008E   153 _TR1	=	0x008e
                           00008F   154 _TF1	=	0x008f
                           000090   155 _P1_0	=	0x0090
                           000091   156 _P1_1	=	0x0091
                           000092   157 _P1_2	=	0x0092
                           000093   158 _P1_3	=	0x0093
                           000094   159 _P1_4	=	0x0094
                           000095   160 _P1_5	=	0x0095
                           000096   161 _P1_6	=	0x0096
                           000097   162 _P1_7	=	0x0097
                           000098   163 _RI	=	0x0098
                           000099   164 _TI	=	0x0099
                           00009A   165 _RB8	=	0x009a
                           00009B   166 _TB8	=	0x009b
                           00009C   167 _REN	=	0x009c
                           00009D   168 _SM2	=	0x009d
                           00009E   169 _SM1	=	0x009e
                           00009F   170 _SM0	=	0x009f
                           0000A0   171 _P2_0	=	0x00a0
                           0000A1   172 _P2_1	=	0x00a1
                           0000A2   173 _P2_2	=	0x00a2
                           0000A3   174 _P2_3	=	0x00a3
                           0000A4   175 _P2_4	=	0x00a4
                           0000A5   176 _P2_5	=	0x00a5
                           0000A6   177 _P2_6	=	0x00a6
                           0000A7   178 _P2_7	=	0x00a7
                           0000A8   179 _EX0	=	0x00a8
                           0000A9   180 _ET0	=	0x00a9
                           0000AA   181 _EX1	=	0x00aa
                           0000AB   182 _ET1	=	0x00ab
                           0000AC   183 _ES	=	0x00ac
                           0000AF   184 _EA	=	0x00af
                           0000B0   185 _P3_0	=	0x00b0
                           0000B1   186 _P3_1	=	0x00b1
                           0000B2   187 _P3_2	=	0x00b2
                           0000B3   188 _P3_3	=	0x00b3
                           0000B4   189 _P3_4	=	0x00b4
                           0000B5   190 _P3_5	=	0x00b5
                           0000B6   191 _P3_6	=	0x00b6
                           0000B7   192 _P3_7	=	0x00b7
                           0000B0   193 _RXD	=	0x00b0
                           0000B1   194 _TXD	=	0x00b1
                           0000B2   195 _INT0	=	0x00b2
                           0000B3   196 _INT1	=	0x00b3
                           0000B4   197 _T0	=	0x00b4
                           0000B5   198 _T1	=	0x00b5
                           0000B6   199 _WR	=	0x00b6
                           0000B7   200 _RD	=	0x00b7
                           0000B8   201 _PX0	=	0x00b8
                           0000B9   202 _PT0	=	0x00b9
                           0000BA   203 _PX1	=	0x00ba
                           0000BB   204 _PT1	=	0x00bb
                           0000BC   205 _PS	=	0x00bc
                           0000D0   206 _P	=	0x00d0
                           0000D1   207 _F1	=	0x00d1
                           0000D2   208 _OV	=	0x00d2
                           0000D3   209 _RS0	=	0x00d3
                           0000D4   210 _RS1	=	0x00d4
                           0000D5   211 _F0	=	0x00d5
                           0000D6   212 _AC	=	0x00d6
                           0000D7   213 _CY	=	0x00d7
                                    214 ;--------------------------------------------------------
                                    215 ; overlayable register banks
                                    216 ;--------------------------------------------------------
                                    217 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        218 	.ds 8
                                    219 ;--------------------------------------------------------
                                    220 ; internal ram data
                                    221 ;--------------------------------------------------------
                                    222 	.area DSEG    (DATA)
                                    223 ;--------------------------------------------------------
                                    224 ; overlayable items in internal ram
                                    225 ;--------------------------------------------------------
                                    226 ;--------------------------------------------------------
                                    227 ; indirectly addressable internal ram data
                                    228 ;--------------------------------------------------------
                                    229 	.area ISEG    (DATA)
                                    230 ;--------------------------------------------------------
                                    231 ; absolute internal ram data
                                    232 ;--------------------------------------------------------
                                    233 	.area IABS    (ABS,DATA)
                                    234 	.area IABS    (ABS,DATA)
                                    235 ;--------------------------------------------------------
                                    236 ; bit data
                                    237 ;--------------------------------------------------------
                                    238 	.area BSEG    (BIT)
                                    239 ;--------------------------------------------------------
                                    240 ; paged external ram data
                                    241 ;--------------------------------------------------------
                                    242 	.area PSEG    (PAG,XDATA)
                                    243 ;--------------------------------------------------------
                                    244 ; uninitialized external ram data
                                    245 ;--------------------------------------------------------
                                    246 	.area XSEG    (XDATA)
                                    247 ;--------------------------------------------------------
                                    248 ; absolute external ram data
                                    249 ;--------------------------------------------------------
                                    250 	.area XABS    (ABS,XDATA)
                                    251 ;--------------------------------------------------------
                                    252 ; initialized external ram data
                                    253 ;--------------------------------------------------------
                                    254 	.area XISEG   (XDATA)
                                    255 	.area HOME    (CODE)
                                    256 	.area GSINIT0 (CODE)
                                    257 	.area GSINIT1 (CODE)
                                    258 	.area GSINIT2 (CODE)
                                    259 	.area GSINIT3 (CODE)
                                    260 	.area GSINIT4 (CODE)
                                    261 	.area GSINIT5 (CODE)
                                    262 	.area GSINIT  (CODE)
                                    263 	.area GSFINAL (CODE)
                                    264 	.area CSEG    (CODE)
                                    265 ;--------------------------------------------------------
                                    266 ; global & static initialisations
                                    267 ;--------------------------------------------------------
                                    268 	.area HOME    (CODE)
                                    269 	.area GSINIT  (CODE)
                                    270 	.area GSFINAL (CODE)
                                    271 	.area GSINIT  (CODE)
                                    272 ;--------------------------------------------------------
                                    273 ; Home
                                    274 ;--------------------------------------------------------
                                    275 	.area HOME    (CODE)
                                    276 	.area HOME    (CODE)
                                    277 ;--------------------------------------------------------
                                    278 ; code
                                    279 ;--------------------------------------------------------
                                    280 	.area CSEG    (CODE)
                                    281 ;------------------------------------------------------------
                                    282 ;Allocation info for local variables in function 'Get_Key'
                                    283 ;------------------------------------------------------------
                                    284 ;	./src/GetKey.c:12: int Get_Key(void){
                                    285 ;	-----------------------------------------
                                    286 ;	 function Get_Key
                                    287 ;	-----------------------------------------
      000200                        288 _Get_Key:
                           000007   289 	ar7 = 0x07
                           000006   290 	ar6 = 0x06
                           000005   291 	ar5 = 0x05
                           000004   292 	ar4 = 0x04
                           000003   293 	ar3 = 0x03
                           000002   294 	ar2 = 0x02
                           000001   295 	ar1 = 0x01
                           000000   296 	ar0 = 0x00
                                    297 ;	./src/GetKey.c:13: but1 = 1;
                                    298 ;	assignBit
      000200 D2 81            [12]  299 	setb	_P0_1
                                    300 ;	./src/GetKey.c:14: but2 = 1;
                                    301 ;	assignBit
      000202 D2 82            [12]  302 	setb	_P0_2
                                    303 ;	./src/GetKey.c:15: but3 = 1;
                                    304 ;	assignBit
      000204 D2 83            [12]  305 	setb	_P0_3
                                    306 ;	./src/GetKey.c:16: o1 = 0;
                                    307 ;	assignBit
      000206 C2 84            [12]  308 	clr	_P0_4
                                    309 ;	./src/GetKey.c:17: o2 = 1;
                                    310 ;	assignBit
      000208 D2 85            [12]  311 	setb	_P0_5
                                    312 ;	./src/GetKey.c:18: o3 = 1;
                                    313 ;	assignBit
      00020A D2 86            [12]  314 	setb	_P0_6
                                    315 ;	./src/GetKey.c:19: if (but1 == 0){
      00020C 20 81 04         [24]  316 	jb	_P0_1,00102$
                                    317 ;	./src/GetKey.c:20: return 1;
      00020F 90 00 01         [24]  318 	mov	dptr,#0x0001
      000212 22               [24]  319 	ret
      000213                        320 00102$:
                                    321 ;	./src/GetKey.c:22: if (but2 == 0){
      000213 20 82 04         [24]  322 	jb	_P0_2,00104$
                                    323 ;	./src/GetKey.c:23: return 2;
      000216 90 00 02         [24]  324 	mov	dptr,#0x0002
      000219 22               [24]  325 	ret
      00021A                        326 00104$:
                                    327 ;	./src/GetKey.c:25: if (but3 == 0){
      00021A 20 83 04         [24]  328 	jb	_P0_3,00106$
                                    329 ;	./src/GetKey.c:26: return 3;
      00021D 90 00 03         [24]  330 	mov	dptr,#0x0003
      000220 22               [24]  331 	ret
      000221                        332 00106$:
                                    333 ;	./src/GetKey.c:29: o1 = 1;
                                    334 ;	assignBit
      000221 D2 84            [12]  335 	setb	_P0_4
                                    336 ;	./src/GetKey.c:30: o2 = 0;
                                    337 ;	assignBit
      000223 C2 85            [12]  338 	clr	_P0_5
                                    339 ;	./src/GetKey.c:31: o3 = 1;
                                    340 ;	assignBit
      000225 D2 86            [12]  341 	setb	_P0_6
                                    342 ;	./src/GetKey.c:32: if (but1 == 0){
      000227 20 81 04         [24]  343 	jb	_P0_1,00108$
                                    344 ;	./src/GetKey.c:33: return 4;
      00022A 90 00 04         [24]  345 	mov	dptr,#0x0004
      00022D 22               [24]  346 	ret
      00022E                        347 00108$:
                                    348 ;	./src/GetKey.c:35: if (but2 == 0){
      00022E 20 82 04         [24]  349 	jb	_P0_2,00110$
                                    350 ;	./src/GetKey.c:36: return 5;
      000231 90 00 05         [24]  351 	mov	dptr,#0x0005
      000234 22               [24]  352 	ret
      000235                        353 00110$:
                                    354 ;	./src/GetKey.c:38: if (but3 == 0){
      000235 20 83 04         [24]  355 	jb	_P0_3,00112$
                                    356 ;	./src/GetKey.c:39: return 6;
      000238 90 00 06         [24]  357 	mov	dptr,#0x0006
      00023B 22               [24]  358 	ret
      00023C                        359 00112$:
                                    360 ;	./src/GetKey.c:42: o1 = 1;
                                    361 ;	assignBit
      00023C D2 84            [12]  362 	setb	_P0_4
                                    363 ;	./src/GetKey.c:43: o2 = 1;
                                    364 ;	assignBit
      00023E D2 85            [12]  365 	setb	_P0_5
                                    366 ;	./src/GetKey.c:44: o3 = 0;
                                    367 ;	assignBit
      000240 C2 86            [12]  368 	clr	_P0_6
                                    369 ;	./src/GetKey.c:45: if (but1 == 0){
      000242 20 81 04         [24]  370 	jb	_P0_1,00114$
                                    371 ;	./src/GetKey.c:46: return 7;
      000245 90 00 07         [24]  372 	mov	dptr,#0x0007
      000248 22               [24]  373 	ret
      000249                        374 00114$:
                                    375 ;	./src/GetKey.c:48: if (but2 == 0){
      000249 20 82 04         [24]  376 	jb	_P0_2,00116$
                                    377 ;	./src/GetKey.c:49: return 8;
      00024C 90 00 08         [24]  378 	mov	dptr,#0x0008
      00024F 22               [24]  379 	ret
      000250                        380 00116$:
                                    381 ;	./src/GetKey.c:51: if (but3 == 0){
      000250 20 83 04         [24]  382 	jb	_P0_3,00118$
                                    383 ;	./src/GetKey.c:52: return 9;
      000253 90 00 09         [24]  384 	mov	dptr,#0x0009
      000256 22               [24]  385 	ret
      000257                        386 00118$:
                                    387 ;	./src/GetKey.c:55: return 0;
      000257 90 00 00         [24]  388 	mov	dptr,#0x0000
                                    389 ;	./src/GetKey.c:56: }
      00025A 22               [24]  390 	ret
                                    391 	.area CSEG    (CODE)
                                    392 	.area CONST   (CODE)
                                    393 	.area XINIT   (CODE)
                                    394 	.area CABS    (ABS,CODE)
