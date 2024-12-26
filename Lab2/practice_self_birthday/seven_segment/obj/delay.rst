                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.0 #14184 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module delay
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _delay_ms
                                     12 ;--------------------------------------------------------
                                     13 ; special function registers
                                     14 ;--------------------------------------------------------
                                     15 	.area RSEG    (ABS,DATA)
      000000                         16 	.org 0x0000
                                     17 ;--------------------------------------------------------
                                     18 ; special function bits
                                     19 ;--------------------------------------------------------
                                     20 	.area RSEG    (ABS,DATA)
      000000                         21 	.org 0x0000
                                     22 ;--------------------------------------------------------
                                     23 ; overlayable register banks
                                     24 ;--------------------------------------------------------
                                     25 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         26 	.ds 8
                                     27 ;--------------------------------------------------------
                                     28 ; internal ram data
                                     29 ;--------------------------------------------------------
                                     30 	.area DSEG    (DATA)
                                     31 ;--------------------------------------------------------
                                     32 ; overlayable items in internal ram
                                     33 ;--------------------------------------------------------
                                     34 	.area	OSEG    (OVR,DATA)
                                     35 ;--------------------------------------------------------
                                     36 ; indirectly addressable internal ram data
                                     37 ;--------------------------------------------------------
                                     38 	.area ISEG    (DATA)
                                     39 ;--------------------------------------------------------
                                     40 ; absolute internal ram data
                                     41 ;--------------------------------------------------------
                                     42 	.area IABS    (ABS,DATA)
                                     43 	.area IABS    (ABS,DATA)
                                     44 ;--------------------------------------------------------
                                     45 ; bit data
                                     46 ;--------------------------------------------------------
                                     47 	.area BSEG    (BIT)
                                     48 ;--------------------------------------------------------
                                     49 ; paged external ram data
                                     50 ;--------------------------------------------------------
                                     51 	.area PSEG    (PAG,XDATA)
                                     52 ;--------------------------------------------------------
                                     53 ; uninitialized external ram data
                                     54 ;--------------------------------------------------------
                                     55 	.area XSEG    (XDATA)
                                     56 ;--------------------------------------------------------
                                     57 ; absolute external ram data
                                     58 ;--------------------------------------------------------
                                     59 	.area XABS    (ABS,XDATA)
                                     60 ;--------------------------------------------------------
                                     61 ; initialized external ram data
                                     62 ;--------------------------------------------------------
                                     63 	.area XISEG   (XDATA)
                                     64 	.area HOME    (CODE)
                                     65 	.area GSINIT0 (CODE)
                                     66 	.area GSINIT1 (CODE)
                                     67 	.area GSINIT2 (CODE)
                                     68 	.area GSINIT3 (CODE)
                                     69 	.area GSINIT4 (CODE)
                                     70 	.area GSINIT5 (CODE)
                                     71 	.area GSINIT  (CODE)
                                     72 	.area GSFINAL (CODE)
                                     73 	.area CSEG    (CODE)
                                     74 ;--------------------------------------------------------
                                     75 ; global & static initialisations
                                     76 ;--------------------------------------------------------
                                     77 	.area HOME    (CODE)
                                     78 	.area GSINIT  (CODE)
                                     79 	.area GSFINAL (CODE)
                                     80 	.area GSINIT  (CODE)
                                     81 ;--------------------------------------------------------
                                     82 ; Home
                                     83 ;--------------------------------------------------------
                                     84 	.area HOME    (CODE)
                                     85 	.area HOME    (CODE)
                                     86 ;--------------------------------------------------------
                                     87 ; code
                                     88 ;--------------------------------------------------------
                                     89 	.area CSEG    (CODE)
                                     90 ;------------------------------------------------------------
                                     91 ;Allocation info for local variables in function 'delay_ms'
                                     92 ;------------------------------------------------------------
                                     93 ;input_ms                  Allocated to registers 
                                     94 ;------------------------------------------------------------
                                     95 ;	./src/delay.c:3: void delay_ms (unsigned int input_ms) 		// ms will save in *dph and *dpl
                                     96 ;	-----------------------------------------
                                     97 ;	 function delay_ms
                                     98 ;	-----------------------------------------
      0001D9                         99 _delay_ms:
                           000007   100 	ar7 = 0x07
                           000006   101 	ar6 = 0x06
                           000005   102 	ar5 = 0x05
                           000004   103 	ar4 = 0x04
                           000003   104 	ar3 = 0x03
                           000002   105 	ar2 = 0x02
                           000001   106 	ar1 = 0x01
                           000000   107 	ar0 = 0x00
                                    108 ;	./src/delay.c:29: __endasm;								// end of assembly code, don't forget to add ";"
      0001D9                        109 DELAY1:
      0001D9 AD 82            [24]  110 	MOV R5, dpl
      0001DB BD 00 03         [24]  111 	CJNE	R5, #0, DL1
      0001DE BD FF 0A         [24]  112 	CJNE	R5, #255, DELAY3
      0001E1                        113 DL1:
      0001E1 7E 03            [12]  114 	MOV R6, #3
      0001E3                        115 DL2:
      0001E3 7F AA            [12]  116 	MOV R7, #170
      0001E5                        117 DL3:
      0001E5 DF FE            [24]  118 	DJNZ R7, DL3
      0001E7 DE FA            [24]  119 	DJNZ	R6, DL2
      0001E9 DD F6            [24]  120 	DJNZ	R5, DL1
      0001EB                        121 DELAY3:
      0001EB AC 83            [24]  122 	MOV R4, dph
      0001ED BC 00 01         [24]  123 	CJNE	R4, #0, DL4
      0001F0 22               [24]  124 	RET
      0001F1                        125 DL4:
      0001F1 7D 00            [12]  126 	MOV R5, #0
      0001F3                        127 DL5:
      0001F3 7E 03            [12]  128 	MOV R6, #3
      0001F5                        129 DL6:
      0001F5 7F AA            [12]  130 	MOV R7, #170
      0001F7                        131 DL7:
      0001F7 DF FE            [24]  132 	DJNZ R7, DL7
      0001F9 DE FA            [24]  133 	DJNZ	R6, DL6
      0001FB DD F6            [24]  134 	DJNZ	R5, DL5
      0001FD DC F2            [24]  135 	DJNZ	R4, DL4
                                    136 ;	./src/delay.c:30: }
      0001FF 22               [24]  137 	ret
                                    138 	.area CSEG    (CODE)
                                    139 	.area CONST   (CODE)
                                    140 	.area XINIT   (CODE)
                                    141 	.area CABS    (ABS,CODE)
