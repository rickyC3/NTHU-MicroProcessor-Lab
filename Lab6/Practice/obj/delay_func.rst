                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module delay_func
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _Delay_Do
                                     12 	.globl _Delay_Re
                                     13 	.globl _Delay_Mi
                                     14 	.globl _Delay_Fa
                                     15 	.globl _Delay_So
                                     16 	.globl _Delay_La
                                     17 	.globl _Delay_Si
                                     18 ;--------------------------------------------------------
                                     19 ; special function registers
                                     20 ;--------------------------------------------------------
                                     21 	.area RSEG    (ABS,DATA)
      000000                         22 	.org 0x0000
                                     23 ;--------------------------------------------------------
                                     24 ; special function bits
                                     25 ;--------------------------------------------------------
                                     26 	.area RSEG    (ABS,DATA)
      000000                         27 	.org 0x0000
                                     28 ;--------------------------------------------------------
                                     29 ; overlayable register banks
                                     30 ;--------------------------------------------------------
                                     31 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         32 	.ds 8
                                     33 ;--------------------------------------------------------
                                     34 ; internal ram data
                                     35 ;--------------------------------------------------------
                                     36 	.area DSEG    (DATA)
                                     37 ;--------------------------------------------------------
                                     38 ; overlayable items in internal ram 
                                     39 ;--------------------------------------------------------
                                     40 ;--------------------------------------------------------
                                     41 ; indirectly addressable internal ram data
                                     42 ;--------------------------------------------------------
                                     43 	.area ISEG    (DATA)
                                     44 ;--------------------------------------------------------
                                     45 ; absolute internal ram data
                                     46 ;--------------------------------------------------------
                                     47 	.area IABS    (ABS,DATA)
                                     48 	.area IABS    (ABS,DATA)
                                     49 ;--------------------------------------------------------
                                     50 ; bit data
                                     51 ;--------------------------------------------------------
                                     52 	.area BSEG    (BIT)
                                     53 ;--------------------------------------------------------
                                     54 ; paged external ram data
                                     55 ;--------------------------------------------------------
                                     56 	.area PSEG    (PAG,XDATA)
                                     57 ;--------------------------------------------------------
                                     58 ; external ram data
                                     59 ;--------------------------------------------------------
                                     60 	.area XSEG    (XDATA)
                                     61 ;--------------------------------------------------------
                                     62 ; absolute external ram data
                                     63 ;--------------------------------------------------------
                                     64 	.area XABS    (ABS,XDATA)
                                     65 ;--------------------------------------------------------
                                     66 ; external initialized ram data
                                     67 ;--------------------------------------------------------
                                     68 	.area XISEG   (XDATA)
                                     69 	.area HOME    (CODE)
                                     70 	.area GSINIT0 (CODE)
                                     71 	.area GSINIT1 (CODE)
                                     72 	.area GSINIT2 (CODE)
                                     73 	.area GSINIT3 (CODE)
                                     74 	.area GSINIT4 (CODE)
                                     75 	.area GSINIT5 (CODE)
                                     76 	.area GSINIT  (CODE)
                                     77 	.area GSFINAL (CODE)
                                     78 	.area CSEG    (CODE)
                                     79 ;--------------------------------------------------------
                                     80 ; global & static initialisations
                                     81 ;--------------------------------------------------------
                                     82 	.area HOME    (CODE)
                                     83 	.area GSINIT  (CODE)
                                     84 	.area GSFINAL (CODE)
                                     85 	.area GSINIT  (CODE)
                                     86 ;--------------------------------------------------------
                                     87 ; Home
                                     88 ;--------------------------------------------------------
                                     89 	.area HOME    (CODE)
                                     90 	.area HOME    (CODE)
                                     91 ;--------------------------------------------------------
                                     92 ; code
                                     93 ;--------------------------------------------------------
                                     94 	.area CSEG    (CODE)
                                     95 ;------------------------------------------------------------
                                     96 ;Allocation info for local variables in function 'Delay_Do'
                                     97 ;------------------------------------------------------------
                                     98 ;	./src/delay_func.c:3: void Delay_Do(void) {
                                     99 ;	-----------------------------------------
                                    100 ;	 function Delay_Do
                                    101 ;	-----------------------------------------
      000292                        102 _Delay_Do:
                           000007   103 	ar7 = 0x07
                           000006   104 	ar6 = 0x06
                           000005   105 	ar5 = 0x05
                           000004   106 	ar4 = 0x04
                           000003   107 	ar3 = 0x03
                           000002   108 	ar2 = 0x02
                           000001   109 	ar1 = 0x01
                           000000   110 	ar0 = 0x00
                                    111 ;	./src/delay_func.c:28: __endasm;
      000292                        112 	 DELAY_Do:
      000292 7E 0A            [12]  113 	MOV	R6,#10
      000294                        114 	 DELAY_Do_DL1:
      000294 7F 13            [12]  115 	MOV	R7,#19
      000296                        116 	 STEP1:
      000296 DF FE            [24]  117 	DJNZ	R7,STEP1
      000298 DE FA            [24]  118 	DJNZ	R6,DELAY_Do_DL1
      00029A 7F 0D            [12]  119 	MOV	R7,#13
      00029C                        120 	 STEP2:
      00029C DF FE            [24]  121 	DJNZ	R7,STEP2
      00029E 22               [24]  122 	RET
                                    123 ;	./src/delay_func.c:30: }
      00029F 22               [24]  124 	ret
                                    125 ;------------------------------------------------------------
                                    126 ;Allocation info for local variables in function 'Delay_Re'
                                    127 ;------------------------------------------------------------
                                    128 ;	./src/delay_func.c:32: void Delay_Re(void) {
                                    129 ;	-----------------------------------------
                                    130 ;	 function Delay_Re
                                    131 ;	-----------------------------------------
      0002A0                        132 _Delay_Re:
                                    133 ;	./src/delay_func.c:57: __endasm;
      0002A0                        134 	 DELAY_RE:
      0002A0 7E 0A            [12]  135 	MOV	R6,#10
      0002A2                        136 	 DELAY_RE_DL1:
      0002A2 7F 11            [12]  137 	MOV	R7,#17
      0002A4                        138 	 STEP3:
      0002A4 DF FE            [24]  139 	DJNZ	R7,STEP3
      0002A6 DE FA            [24]  140 	DJNZ	R6,DELAY_RE_DL1
      0002A8 7F 09            [12]  141 	MOV	R7,#9
      0002AA                        142 	 STEP4:
      0002AA DF FE            [24]  143 	DJNZ	R7,STEP4
      0002AC 22               [24]  144 	RET
                                    145 ;	./src/delay_func.c:58: }
      0002AD 22               [24]  146 	ret
                                    147 ;------------------------------------------------------------
                                    148 ;Allocation info for local variables in function 'Delay_Mi'
                                    149 ;------------------------------------------------------------
                                    150 ;	./src/delay_func.c:60: void Delay_Mi(void) {
                                    151 ;	-----------------------------------------
                                    152 ;	 function Delay_Mi
                                    153 ;	-----------------------------------------
      0002AE                        154 _Delay_Mi:
                                    155 ;	./src/delay_func.c:85: __endasm;
      0002AE                        156 	 DELAY_MI:
      0002AE 7E 0A            [12]  157 	MOV	R6,#10
      0002B0                        158 	 DELAY_MI_DL1:
      0002B0 7F 0F            [12]  159 	MOV	R7,#15
      0002B2                        160 	 STEP5:
      0002B2 DF FE            [24]  161 	DJNZ	R7,STEP5
      0002B4 DE FA            [24]  162 	DJNZ	R6,DELAY_MI_DL1
      0002B6 7F 07            [12]  163 	MOV	R7,#7
      0002B8                        164 	 STEP6:
      0002B8 DF FE            [24]  165 	DJNZ	R7,STEP6
      0002BA 22               [24]  166 	RET
                                    167 ;	./src/delay_func.c:86: }
      0002BB 22               [24]  168 	ret
                                    169 ;------------------------------------------------------------
                                    170 ;Allocation info for local variables in function 'Delay_Fa'
                                    171 ;------------------------------------------------------------
                                    172 ;	./src/delay_func.c:88: void Delay_Fa(void) {
                                    173 ;	-----------------------------------------
                                    174 ;	 function Delay_Fa
                                    175 ;	-----------------------------------------
      0002BC                        176 _Delay_Fa:
                                    177 ;	./src/delay_func.c:119: __endasm;
      0002BC                        178 	 DELAY_FA:
      0002BC 7E 0A            [12]  179 	MOV	R6,#10
      0002BE                        180 	 DELAY_FA_DL1:
      0002BE 7F 0E            [12]  181 	MOV	R7,#14
      0002C0                        182 	 STEP7:
      0002C0 DF FE            [24]  183 	DJNZ	R7,STEP7
      0002C2 DE FA            [24]  184 	DJNZ	R6,DELAY_FA_DL1
      0002C4 7F 08            [12]  185 	MOV	R7,#8
      0002C6                        186 	 STEP8:
      0002C6 DF FE            [24]  187 	DJNZ	R7,STEP8
      0002C8 7F 01            [12]  188 	MOV	R7, #1 ;
      0002CA 22               [24]  189 	RET
                                    190 ;	./src/delay_func.c:120: }
      0002CB 22               [24]  191 	ret
                                    192 ;------------------------------------------------------------
                                    193 ;Allocation info for local variables in function 'Delay_So'
                                    194 ;------------------------------------------------------------
                                    195 ;	./src/delay_func.c:122: void Delay_So(void) {
                                    196 ;	-----------------------------------------
                                    197 ;	 function Delay_So
                                    198 ;	-----------------------------------------
      0002CC                        199 _Delay_So:
                                    200 ;	./src/delay_func.c:149: __endasm;
      0002CC                        201 	 DELAY_SO:
      0002CC 7E 0A            [12]  202 	MOV	R6,#10
      0002CE                        203 	 DELAY_SO_DL1:
      0002CE 7F 0D            [12]  204 	MOV	R7,#13
      0002D0                        205 	 STEP9:
      0002D0 DF FE            [24]  206 	DJNZ	R7,STEP9
      0002D2 DE FA            [24]  207 	DJNZ	R6,DELAY_SO_DL1
      0002D4 7F 01            [12]  208 	MOV	R7, #1
      0002D6 7F 01            [12]  209 	MOV	R7, #1
      0002D8 22               [24]  210 	RET
                                    211 ;	./src/delay_func.c:150: }
      0002D9 22               [24]  212 	ret
                                    213 ;------------------------------------------------------------
                                    214 ;Allocation info for local variables in function 'Delay_La'
                                    215 ;------------------------------------------------------------
                                    216 ;	./src/delay_func.c:152: void Delay_La(void) {
                                    217 ;	-----------------------------------------
                                    218 ;	 function Delay_La
                                    219 ;	-----------------------------------------
      0002DA                        220 _Delay_La:
                                    221 ;	./src/delay_func.c:184: __endasm;
      0002DA                        222 	 DELAY_LA:
      0002DA 7E 0A            [12]  223 	MOV	R6,#10
      0002DC                        224 	 DELAY_LA_DL1:
      0002DC 7F 0B            [12]  225 	MOV	R7,#11
      0002DE                        226 	 STEP10:
      0002DE DF FE            [24]  227 	DJNZ	R7,STEP10
      0002E0 DE FA            [24]  228 	DJNZ	R6,DELAY_LA_DL1
      0002E2 7F 04            [12]  229 	MOV	R7,#4
      0002E4                        230 	 STEP11:
      0002E4 DF FE            [24]  231 	DJNZ	R7,STEP11
      0002E6 7F 01            [12]  232 	MOV	R7, #1
      0002E8 22               [24]  233 	RET
                                    234 ;	./src/delay_func.c:185: }
      0002E9 22               [24]  235 	ret
                                    236 ;------------------------------------------------------------
                                    237 ;Allocation info for local variables in function 'Delay_Si'
                                    238 ;------------------------------------------------------------
                                    239 ;	./src/delay_func.c:187: void Delay_Si(void) {
                                    240 ;	-----------------------------------------
                                    241 ;	 function Delay_Si
                                    242 ;	-----------------------------------------
      0002EA                        243 _Delay_Si:
                                    244 ;	./src/delay_func.c:210: __endasm;
      0002EA                        245 	 DELAY_SI:
      0002EA 7E 0A            [12]  246 	MOV	R6, #10
      0002EC                        247 	 DELAY_SI_DL1:
      0002EC 7F 0A            [12]  248 	MOV	R7, #10
      0002EE                        249 	 STEP12:
      0002EE DF FE            [24]  250 	DJNZ	R7, STEP12
      0002F0 DE FA            [24]  251 	DJNZ	R6, DELAY_SI_DL1
      0002F2 7F 01            [12]  252 	MOV	R7, #1
      0002F4 22               [24]  253 	RET
                                    254 ;	./src/delay_func.c:211: }
      0002F5 22               [24]  255 	ret
                                    256 	.area CSEG    (CODE)
                                    257 	.area CONST   (CODE)
                                    258 	.area XINIT   (CODE)
                                    259 	.area CABS    (ABS,CODE)
