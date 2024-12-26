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
                                     15 	.globl _Play_Music
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
                                    112 	.globl _hi
                                    113 	.globl _note
                                    114 ;--------------------------------------------------------
                                    115 ; special function registers
                                    116 ;--------------------------------------------------------
                                    117 	.area RSEG    (ABS,DATA)
      000000                        118 	.org 0x0000
                           000080   119 _P0	=	0x0080
                           000081   120 _SP	=	0x0081
                           000082   121 _DPL	=	0x0082
                           000083   122 _DPH	=	0x0083
                           000087   123 _PCON	=	0x0087
                           000088   124 _TCON	=	0x0088
                           000089   125 _TMOD	=	0x0089
                           00008A   126 _TL0	=	0x008a
                           00008B   127 _TL1	=	0x008b
                           00008C   128 _TH0	=	0x008c
                           00008D   129 _TH1	=	0x008d
                           000090   130 _P1	=	0x0090
                           000098   131 _SCON	=	0x0098
                           000099   132 _SBUF	=	0x0099
                           0000A0   133 _P2	=	0x00a0
                           0000A8   134 _IE	=	0x00a8
                           0000B0   135 _P3	=	0x00b0
                           0000B8   136 _IP	=	0x00b8
                           0000D0   137 _PSW	=	0x00d0
                           0000E0   138 _ACC	=	0x00e0
                           0000F0   139 _B	=	0x00f0
                                    140 ;--------------------------------------------------------
                                    141 ; special function bits
                                    142 ;--------------------------------------------------------
                                    143 	.area RSEG    (ABS,DATA)
      000000                        144 	.org 0x0000
                           000080   145 _P0_0	=	0x0080
                           000081   146 _P0_1	=	0x0081
                           000082   147 _P0_2	=	0x0082
                           000083   148 _P0_3	=	0x0083
                           000084   149 _P0_4	=	0x0084
                           000085   150 _P0_5	=	0x0085
                           000086   151 _P0_6	=	0x0086
                           000087   152 _P0_7	=	0x0087
                           000088   153 _IT0	=	0x0088
                           000089   154 _IE0	=	0x0089
                           00008A   155 _IT1	=	0x008a
                           00008B   156 _IE1	=	0x008b
                           00008C   157 _TR0	=	0x008c
                           00008D   158 _TF0	=	0x008d
                           00008E   159 _TR1	=	0x008e
                           00008F   160 _TF1	=	0x008f
                           000090   161 _P1_0	=	0x0090
                           000091   162 _P1_1	=	0x0091
                           000092   163 _P1_2	=	0x0092
                           000093   164 _P1_3	=	0x0093
                           000094   165 _P1_4	=	0x0094
                           000095   166 _P1_5	=	0x0095
                           000096   167 _P1_6	=	0x0096
                           000097   168 _P1_7	=	0x0097
                           000098   169 _RI	=	0x0098
                           000099   170 _TI	=	0x0099
                           00009A   171 _RB8	=	0x009a
                           00009B   172 _TB8	=	0x009b
                           00009C   173 _REN	=	0x009c
                           00009D   174 _SM2	=	0x009d
                           00009E   175 _SM1	=	0x009e
                           00009F   176 _SM0	=	0x009f
                           0000A0   177 _P2_0	=	0x00a0
                           0000A1   178 _P2_1	=	0x00a1
                           0000A2   179 _P2_2	=	0x00a2
                           0000A3   180 _P2_3	=	0x00a3
                           0000A4   181 _P2_4	=	0x00a4
                           0000A5   182 _P2_5	=	0x00a5
                           0000A6   183 _P2_6	=	0x00a6
                           0000A7   184 _P2_7	=	0x00a7
                           0000A8   185 _EX0	=	0x00a8
                           0000A9   186 _ET0	=	0x00a9
                           0000AA   187 _EX1	=	0x00aa
                           0000AB   188 _ET1	=	0x00ab
                           0000AC   189 _ES	=	0x00ac
                           0000AF   190 _EA	=	0x00af
                           0000B0   191 _P3_0	=	0x00b0
                           0000B1   192 _P3_1	=	0x00b1
                           0000B2   193 _P3_2	=	0x00b2
                           0000B3   194 _P3_3	=	0x00b3
                           0000B4   195 _P3_4	=	0x00b4
                           0000B5   196 _P3_5	=	0x00b5
                           0000B6   197 _P3_6	=	0x00b6
                           0000B7   198 _P3_7	=	0x00b7
                           0000B0   199 _RXD	=	0x00b0
                           0000B1   200 _TXD	=	0x00b1
                           0000B2   201 _INT0	=	0x00b2
                           0000B3   202 _INT1	=	0x00b3
                           0000B4   203 _T0	=	0x00b4
                           0000B5   204 _T1	=	0x00b5
                           0000B6   205 _WR	=	0x00b6
                           0000B7   206 _RD	=	0x00b7
                           0000B8   207 _PX0	=	0x00b8
                           0000B9   208 _PT0	=	0x00b9
                           0000BA   209 _PX1	=	0x00ba
                           0000BB   210 _PT1	=	0x00bb
                           0000BC   211 _PS	=	0x00bc
                           0000D0   212 _P	=	0x00d0
                           0000D1   213 _F1	=	0x00d1
                           0000D2   214 _OV	=	0x00d2
                           0000D3   215 _RS0	=	0x00d3
                           0000D4   216 _RS1	=	0x00d4
                           0000D5   217 _F0	=	0x00d5
                           0000D6   218 _AC	=	0x00d6
                           0000D7   219 _CY	=	0x00d7
                                    220 ;--------------------------------------------------------
                                    221 ; overlayable register banks
                                    222 ;--------------------------------------------------------
                                    223 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        224 	.ds 8
                                    225 ;--------------------------------------------------------
                                    226 ; internal ram data
                                    227 ;--------------------------------------------------------
                                    228 	.area DSEG    (DATA)
      000008                        229 _note::
      000008                        230 	.ds 25
      000021                        231 _hi::
      000021                        232 	.ds 78
      00006F                        233 _main_x_65536_15:
      00006F                        234 	.ds 1
                                    235 ;--------------------------------------------------------
                                    236 ; overlayable items in internal ram 
                                    237 ;--------------------------------------------------------
                                    238 ;--------------------------------------------------------
                                    239 ; Stack segment in internal ram 
                                    240 ;--------------------------------------------------------
                                    241 	.area	SSEG
      000075                        242 __start__stack:
      000075                        243 	.ds	1
                                    244 
                                    245 ;--------------------------------------------------------
                                    246 ; indirectly addressable internal ram data
                                    247 ;--------------------------------------------------------
                                    248 	.area ISEG    (DATA)
                                    249 ;--------------------------------------------------------
                                    250 ; absolute internal ram data
                                    251 ;--------------------------------------------------------
                                    252 	.area IABS    (ABS,DATA)
                                    253 	.area IABS    (ABS,DATA)
                                    254 ;--------------------------------------------------------
                                    255 ; bit data
                                    256 ;--------------------------------------------------------
                                    257 	.area BSEG    (BIT)
                                    258 ;--------------------------------------------------------
                                    259 ; paged external ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area PSEG    (PAG,XDATA)
                                    262 ;--------------------------------------------------------
                                    263 ; external ram data
                                    264 ;--------------------------------------------------------
                                    265 	.area XSEG    (XDATA)
                                    266 ;--------------------------------------------------------
                                    267 ; absolute external ram data
                                    268 ;--------------------------------------------------------
                                    269 	.area XABS    (ABS,XDATA)
                                    270 ;--------------------------------------------------------
                                    271 ; external initialized ram data
                                    272 ;--------------------------------------------------------
                                    273 	.area XISEG   (XDATA)
                                    274 	.area HOME    (CODE)
                                    275 	.area GSINIT0 (CODE)
                                    276 	.area GSINIT1 (CODE)
                                    277 	.area GSINIT2 (CODE)
                                    278 	.area GSINIT3 (CODE)
                                    279 	.area GSINIT4 (CODE)
                                    280 	.area GSINIT5 (CODE)
                                    281 	.area GSINIT  (CODE)
                                    282 	.area GSFINAL (CODE)
                                    283 	.area CSEG    (CODE)
                                    284 ;--------------------------------------------------------
                                    285 ; interrupt vector 
                                    286 ;--------------------------------------------------------
                                    287 	.area HOME    (CODE)
      000000                        288 __interrupt_vect:
      000000 02 00 06         [24]  289 	ljmp	__sdcc_gsinit_startup
                                    290 ;--------------------------------------------------------
                                    291 ; global & static initialisations
                                    292 ;--------------------------------------------------------
                                    293 	.area HOME    (CODE)
                                    294 	.area GSINIT  (CODE)
                                    295 	.area GSFINAL (CODE)
                                    296 	.area GSINIT  (CODE)
                                    297 	.globl __sdcc_gsinit_startup
                                    298 	.globl __sdcc_program_startup
                                    299 	.globl __start__stack
                                    300 	.globl __mcs51_genXINIT
                                    301 	.globl __mcs51_genXRAMCLEAR
                                    302 	.globl __mcs51_genRAMCLEAR
                                    303 ;	./src/main.c:20: char note[25] = {'1', '1', '2', '1', '4', '3',
      00005F 75 08 31         [24]  304 	mov	_note,#0x31
      000062 75 09 31         [24]  305 	mov	(_note + 0x0001),#0x31
      000065 75 0A 32         [24]  306 	mov	(_note + 0x0002),#0x32
      000068 75 0B 31         [24]  307 	mov	(_note + 0x0003),#0x31
      00006B 75 0C 34         [24]  308 	mov	(_note + 0x0004),#0x34
      00006E 75 0D 33         [24]  309 	mov	(_note + 0x0005),#0x33
      000071 75 0E 31         [24]  310 	mov	(_note + 0x0006),#0x31
      000074 75 0F 31         [24]  311 	mov	(_note + 0x0007),#0x31
      000077 75 10 32         [24]  312 	mov	(_note + 0x0008),#0x32
      00007A 75 11 31         [24]  313 	mov	(_note + 0x0009),#0x31
      00007D 75 12 35         [24]  314 	mov	(_note + 0x000a),#0x35
      000080 75 13 34         [24]  315 	mov	(_note + 0x000b),#0x34
      000083 75 14 31         [24]  316 	mov	(_note + 0x000c),#0x31
      000086 75 15 31         [24]  317 	mov	(_note + 0x000d),#0x31
      000089 75 16 37         [24]  318 	mov	(_note + 0x000e),#0x37
      00008C 75 17 36         [24]  319 	mov	(_note + 0x000f),#0x36
      00008F 75 18 34         [24]  320 	mov	(_note + 0x0010),#0x34
      000092 75 19 33         [24]  321 	mov	(_note + 0x0011),#0x33
      000095 75 1A 34         [24]  322 	mov	(_note + 0x0012),#0x34
      000098 75 1B 34         [24]  323 	mov	(_note + 0x0013),#0x34
      00009B 75 1C 33         [24]  324 	mov	(_note + 0x0014),#0x33
      00009E 75 1D 31         [24]  325 	mov	(_note + 0x0015),#0x31
      0000A1 75 1E 32         [24]  326 	mov	(_note + 0x0016),#0x32
      0000A4 75 1F 31         [24]  327 	mov	(_note + 0x0017),#0x31
                                    328 ;	./src/main.c:25: unsigned char hi[] = {
      0000A7 75 21 00         [24]  329 	mov	_hi,#0x00
      0000AA 75 22 FE         [24]  330 	mov	(_hi + 0x0001),#0xfe
      0000AD 75 23 10         [24]  331 	mov	(_hi + 0x0002),#0x10
      0000B0 75 24 10         [24]  332 	mov	(_hi + 0x0003),#0x10
      0000B3 75 25 10         [24]  333 	mov	(_hi + 0x0004),#0x10
      0000B6 75 26 FE         [24]  334 	mov	(_hi + 0x0005),#0xfe
      0000B9 75 27 00         [24]  335 	mov	(_hi + 0x0006),#0x00
      0000BC 75 28 7E         [24]  336 	mov	(_hi + 0x0007),#0x7e
      0000BF 75 29 90         [24]  337 	mov	(_hi + 0x0008),#0x90
      0000C2 75 2A 90         [24]  338 	mov	(_hi + 0x0009),#0x90
      0000C5 75 2B 90         [24]  339 	mov	(_hi + 0x000a),#0x90
      0000C8 75 2C 7E         [24]  340 	mov	(_hi + 0x000b),#0x7e
      0000CB 75 2D 00         [24]  341 	mov	(_hi + 0x000c),#0x00
      0000CE 75 2E 70         [24]  342 	mov	(_hi + 0x000d),#0x70
      0000D1 75 2F 90         [24]  343 	mov	(_hi + 0x000e),#0x90
      0000D4 75 30 90         [24]  344 	mov	(_hi + 0x000f),#0x90
      0000D7 75 31 90         [24]  345 	mov	(_hi + 0x0010),#0x90
      0000DA 75 32 FE         [24]  346 	mov	(_hi + 0x0011),#0xfe
      0000DD 75 33 00         [24]  347 	mov	(_hi + 0x0012),#0x00
      0000E0 75 34 60         [24]  348 	mov	(_hi + 0x0013),#0x60
      0000E3 75 35 90         [24]  349 	mov	(_hi + 0x0014),#0x90
      0000E6 75 36 90         [24]  350 	mov	(_hi + 0x0015),#0x90
      0000E9 75 37 90         [24]  351 	mov	(_hi + 0x0016),#0x90
      0000EC 75 38 FE         [24]  352 	mov	(_hi + 0x0017),#0xfe
      0000EF 75 39 00         [24]  353 	mov	(_hi + 0x0018),#0x00
      0000F2 75 3A E0         [24]  354 	mov	(_hi + 0x0019),#0xe0
      0000F5 75 3B 18         [24]  355 	mov	(_hi + 0x001a),#0x18
      0000F8 75 3C 06         [24]  356 	mov	(_hi + 0x001b),#0x06
      0000FB 75 3D 18         [24]  357 	mov	(_hi + 0x001c),#0x18
      0000FE 75 3E E0         [24]  358 	mov	(_hi + 0x001d),#0xe0
      000101 75 3F 00         [24]  359 	mov	(_hi + 0x001e),#0x00
      000104 75 40 6C         [24]  360 	mov	(_hi + 0x001f),#0x6c
      000107 75 41 92         [24]  361 	mov	(_hi + 0x0020),#0x92
      00010A 75 42 92         [24]  362 	mov	(_hi + 0x0021),#0x92
      00010D 75 43 92         [24]  363 	mov	(_hi + 0x0022),#0x92
      000110 75 44 FE         [24]  364 	mov	(_hi + 0x0023),#0xfe
      000113 75 45 00         [24]  365 	mov	(_hi + 0x0024),#0x00
      000116 75 46 82         [24]  366 	mov	(_hi + 0x0025),#0x82
      000119 75 47 82         [24]  367 	mov	(_hi + 0x0026),#0x82
      00011C 75 48 FE         [24]  368 	mov	(_hi + 0x0027),#0xfe
      00011F 75 49 82         [24]  369 	mov	(_hi + 0x0028),#0x82
      000122 75 4A 82         [24]  370 	mov	(_hi + 0x0029),#0x82
      000125 75 4B 00         [24]  371 	mov	(_hi + 0x002a),#0x00
      000128 75 4C 6E         [24]  372 	mov	(_hi + 0x002b),#0x6e
      00012B 75 4D 90         [24]  373 	mov	(_hi + 0x002c),#0x90
      00012E 75 4E 90         [24]  374 	mov	(_hi + 0x002d),#0x90
      000131 75 4F 90         [24]  375 	mov	(_hi + 0x002e),#0x90
      000134 75 50 FE         [24]  376 	mov	(_hi + 0x002f),#0xfe
      000137 75 51 00         [24]  377 	mov	(_hi + 0x0030),#0x00
      00013A 75 52 80         [24]  378 	mov	(_hi + 0x0031),#0x80
      00013D 75 53 80         [24]  379 	mov	(_hi + 0x0032),#0x80
      000140 75 54 FE         [24]  380 	mov	(_hi + 0x0033),#0xfe
      000143 75 55 80         [24]  381 	mov	(_hi + 0x0034),#0x80
      000146 75 56 80         [24]  382 	mov	(_hi + 0x0035),#0x80
      000149 75 57 00         [24]  383 	mov	(_hi + 0x0036),#0x00
      00014C 75 58 FE         [24]  384 	mov	(_hi + 0x0037),#0xfe
      00014F 75 59 10         [24]  385 	mov	(_hi + 0x0038),#0x10
      000152 75 5A 10         [24]  386 	mov	(_hi + 0x0039),#0x10
      000155 75 5B 10         [24]  387 	mov	(_hi + 0x003a),#0x10
      000158 75 5C FE         [24]  388 	mov	(_hi + 0x003b),#0xfe
      00015B 75 5D 00         [24]  389 	mov	(_hi + 0x003c),#0x00
      00015E 75 5E 7C         [24]  390 	mov	(_hi + 0x003d),#0x7c
      000161 75 5F 82         [24]  391 	mov	(_hi + 0x003e),#0x82
      000164 75 60 82         [24]  392 	mov	(_hi + 0x003f),#0x82
      000167 75 61 82         [24]  393 	mov	(_hi + 0x0040),#0x82
      00016A 75 62 FE         [24]  394 	mov	(_hi + 0x0041),#0xfe
      00016D 75 63 00         [24]  395 	mov	(_hi + 0x0042),#0x00
      000170 75 64 7E         [24]  396 	mov	(_hi + 0x0043),#0x7e
      000173 75 65 90         [24]  397 	mov	(_hi + 0x0044),#0x90
      000176 75 66 90         [24]  398 	mov	(_hi + 0x0045),#0x90
      000179 75 67 90         [24]  399 	mov	(_hi + 0x0046),#0x90
      00017C 75 68 7E         [24]  400 	mov	(_hi + 0x0047),#0x7e
      00017F 75 69 00         [24]  401 	mov	(_hi + 0x0048),#0x00
      000182 75 6A E0         [24]  402 	mov	(_hi + 0x0049),#0xe0
      000185 75 6B 18         [24]  403 	mov	(_hi + 0x004a),#0x18
      000188 75 6C 06         [24]  404 	mov	(_hi + 0x004b),#0x06
      00018B 75 6D 18         [24]  405 	mov	(_hi + 0x004c),#0x18
      00018E 75 6E E0         [24]  406 	mov	(_hi + 0x004d),#0xe0
                                    407 	.area GSFINAL (CODE)
      000191 02 00 03         [24]  408 	ljmp	__sdcc_program_startup
                                    409 ;--------------------------------------------------------
                                    410 ; Home
                                    411 ;--------------------------------------------------------
                                    412 	.area HOME    (CODE)
                                    413 	.area HOME    (CODE)
      000003                        414 __sdcc_program_startup:
      000003 02 01 94         [24]  415 	ljmp	_main
                                    416 ;	return from main will return to caller
                                    417 ;--------------------------------------------------------
                                    418 ; code
                                    419 ;--------------------------------------------------------
                                    420 	.area CSEG    (CODE)
                                    421 ;------------------------------------------------------------
                                    422 ;Allocation info for local variables in function 'main'
                                    423 ;------------------------------------------------------------
                                    424 ;shift                     Allocated to registers r7 
                                    425 ;i                         Allocated to registers r5 
                                    426 ;x                         Allocated with name '_main_x_65536_15'
                                    427 ;------------------------------------------------------------
                                    428 ;	./src/main.c:109: void main(void)
                                    429 ;	-----------------------------------------
                                    430 ;	 function main
                                    431 ;	-----------------------------------------
      000194                        432 _main:
                           000007   433 	ar7 = 0x07
                           000006   434 	ar6 = 0x06
                           000005   435 	ar5 = 0x05
                           000004   436 	ar4 = 0x04
                           000003   437 	ar3 = 0x03
                           000002   438 	ar2 = 0x02
                           000001   439 	ar1 = 0x01
                           000000   440 	ar0 = 0x00
                                    441 ;	./src/main.c:111: unsigned char shift = 0;
      000194 7F 00            [12]  442 	mov	r7,#0x00
                                    443 ;	./src/main.c:113: unsigned char x = 0;
                                    444 ;	1-genFromRTrack replaced	mov	_main_x_65536_15,#0x00
      000196 8F 6F            [24]  445 	mov	_main_x_65536_15,r7
                                    446 ;	./src/main.c:121: Initial7219();				 // MAX7219 initialize
      000198 C0 07            [24]  447 	push	ar7
      00019A 12 04 B9         [24]  448 	lcall	_Initial7219
                                    449 ;	./src/main.c:122: delay_ms(2000);
      00019D 90 07 D0         [24]  450 	mov	dptr,#0x07d0
      0001A0 12 02 57         [24]  451 	lcall	_delay_ms
      0001A3 D0 07            [24]  452 	pop	ar7
                                    453 ;	./src/main.c:124: for (i = 8; i >= 1; i--) {
      0001A5                        454 00111$:
      0001A5 7D 08            [12]  455 	mov	r5,#0x08
      0001A7                        456 00107$:
                                    457 ;	./src/main.c:125: Writesingle7219(1, i, hi[(shift + i - 1) % 78]);
      0001A7 8F 03            [24]  458 	mov	ar3,r7
      0001A9 7C 00            [12]  459 	mov	r4,#0x00
      0001AB 8D 02            [24]  460 	mov	ar2,r5
      0001AD 7E 00            [12]  461 	mov	r6,#0x00
      0001AF EA               [12]  462 	mov	a,r2
      0001B0 2B               [12]  463 	add	a,r3
      0001B1 FB               [12]  464 	mov	r3,a
      0001B2 EE               [12]  465 	mov	a,r6
      0001B3 3C               [12]  466 	addc	a,r4
      0001B4 FC               [12]  467 	mov	r4,a
      0001B5 EB               [12]  468 	mov	a,r3
      0001B6 24 FF            [12]  469 	add	a,#0xff
      0001B8 F5 82            [12]  470 	mov	dpl,a
      0001BA EC               [12]  471 	mov	a,r4
      0001BB 34 FF            [12]  472 	addc	a,#0xff
      0001BD F5 83            [12]  473 	mov	dph,a
      0001BF 75 73 4E         [24]  474 	mov	__modsint_PARM_2,#0x4e
                                    475 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      0001C2 8E 74            [24]  476 	mov	(__modsint_PARM_2 + 1),r6
      0001C4 C0 07            [24]  477 	push	ar7
      0001C6 C0 05            [24]  478 	push	ar5
      0001C8 C0 04            [24]  479 	push	ar4
      0001CA C0 03            [24]  480 	push	ar3
      0001CC 12 05 48         [24]  481 	lcall	__modsint
      0001CF AA 82            [24]  482 	mov	r2,dpl
      0001D1 D0 03            [24]  483 	pop	ar3
      0001D3 D0 04            [24]  484 	pop	ar4
      0001D5 D0 05            [24]  485 	pop	ar5
      0001D7 EA               [12]  486 	mov	a,r2
      0001D8 24 21            [12]  487 	add	a,#_hi
      0001DA F9               [12]  488 	mov	r1,a
      0001DB 87 72            [24]  489 	mov	_Writesingle7219_PARM_3,@r1
      0001DD 8D 71            [24]  490 	mov	_Writesingle7219_PARM_2,r5
      0001DF 75 82 01         [24]  491 	mov	dpl,#0x01
      0001E2 C0 05            [24]  492 	push	ar5
      0001E4 C0 04            [24]  493 	push	ar4
      0001E6 C0 03            [24]  494 	push	ar3
      0001E8 12 04 76         [24]  495 	lcall	_Writesingle7219
      0001EB D0 03            [24]  496 	pop	ar3
      0001ED D0 04            [24]  497 	pop	ar4
                                    498 ;	./src/main.c:126: Writesingle7219(2, i, hi[(shift + i + 8 - 1) % 78]);
      0001EF 74 07            [12]  499 	mov	a,#0x07
      0001F1 2B               [12]  500 	add	a,r3
      0001F2 F5 82            [12]  501 	mov	dpl,a
      0001F4 E4               [12]  502 	clr	a
      0001F5 3C               [12]  503 	addc	a,r4
      0001F6 F5 83            [12]  504 	mov	dph,a
      0001F8 75 73 4E         [24]  505 	mov	__modsint_PARM_2,#0x4e
      0001FB 75 74 00         [24]  506 	mov	(__modsint_PARM_2 + 1),#0x00
      0001FE 12 05 48         [24]  507 	lcall	__modsint
      000201 AC 82            [24]  508 	mov	r4,dpl
      000203 D0 05            [24]  509 	pop	ar5
      000205 EC               [12]  510 	mov	a,r4
      000206 24 21            [12]  511 	add	a,#_hi
      000208 F9               [12]  512 	mov	r1,a
      000209 87 72            [24]  513 	mov	_Writesingle7219_PARM_3,@r1
      00020B 8D 71            [24]  514 	mov	_Writesingle7219_PARM_2,r5
      00020D 75 82 02         [24]  515 	mov	dpl,#0x02
      000210 C0 05            [24]  516 	push	ar5
      000212 12 04 76         [24]  517 	lcall	_Writesingle7219
      000215 D0 05            [24]  518 	pop	ar5
      000217 D0 07            [24]  519 	pop	ar7
                                    520 ;	./src/main.c:124: for (i = 8; i >= 1; i--) {
      000219 1D               [12]  521 	dec	r5
      00021A BD 01 00         [24]  522 	cjne	r5,#0x01,00128$
      00021D                        523 00128$:
      00021D 50 88            [24]  524 	jnc	00107$
                                    525 ;	./src/main.c:128: shift += 1;
      00021F 8F 06            [24]  526 	mov	ar6,r7
      000221 EE               [12]  527 	mov	a,r6
      000222 04               [12]  528 	inc	a
      000223 FF               [12]  529 	mov	r7,a
                                    530 ;	./src/main.c:129: if (shift == 79) shift = 0;
      000224 BF 4F 02         [24]  531 	cjne	r7,#0x4f,00103$
      000227 7F 00            [12]  532 	mov	r7,#0x00
      000229                        533 00103$:
                                    534 ;	./src/main.c:130: delay_ms(50);
      000229 90 00 32         [24]  535 	mov	dptr,#0x0032
      00022C C0 07            [24]  536 	push	ar7
      00022E 12 02 57         [24]  537 	lcall	_delay_ms
                                    538 ;	./src/main.c:131: Play_Music(note[x]);
      000231 E5 6F            [12]  539 	mov	a,_main_x_65536_15
      000233 24 08            [12]  540 	add	a,#_note
      000235 F9               [12]  541 	mov	r1,a
      000236 87 82            [24]  542 	mov	dpl,@r1
      000238 12 02 E2         [24]  543 	lcall	_Play_Music
                                    544 ;	./src/main.c:133: x = (x+1)%25;
      00023B AD 6F            [24]  545 	mov	r5,_main_x_65536_15
      00023D 7E 00            [12]  546 	mov	r6,#0x00
      00023F 8D 82            [24]  547 	mov	dpl,r5
      000241 8E 83            [24]  548 	mov	dph,r6
      000243 A3               [24]  549 	inc	dptr
      000244 75 73 19         [24]  550 	mov	__modsint_PARM_2,#0x19
                                    551 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      000247 8E 74            [24]  552 	mov	(__modsint_PARM_2 + 1),r6
      000249 12 05 48         [24]  553 	lcall	__modsint
      00024C AD 82            [24]  554 	mov	r5,dpl
      00024E AE 83            [24]  555 	mov	r6,dph
      000250 D0 07            [24]  556 	pop	ar7
      000252 8D 6F            [24]  557 	mov	_main_x_65536_15,r5
                                    558 ;	./src/main.c:135: }
      000254 02 01 A5         [24]  559 	ljmp	00111$
                                    560 	.area CSEG    (CODE)
                                    561 	.area CONST   (CODE)
                                    562 	.area XINIT   (CODE)
                                    563 	.area CABS    (ABS,CODE)
