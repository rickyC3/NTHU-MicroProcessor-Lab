;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module chip
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _delay_10us
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _AT89S51_Write_Byte_PARM_2
	.globl _AT89S51_Read_Byte
	.globl _AT89S51_Write_Byte
	.globl _AT89S51_Prog_En
	.globl _AT89S51_Chip_Erase
	.globl _SPI_MASTER_WR
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_AT89S51_Write_Byte_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'AT89S51_Read_Byte'
;------------------------------------------------------------
;address                   Allocated to registers r6 r7 
;spi_r_buf                 Allocated to registers r7 
;------------------------------------------------------------
;	./src/chip.c:5: unsigned char AT89S51_Read_Byte(unsigned int address)
;	-----------------------------------------
;	 function AT89S51_Read_Byte
;	-----------------------------------------
_AT89S51_Read_Byte:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
	mov	r7,dph
;	./src/chip.c:9: SPI_MASTER_WR(0x20);				// read mode
	mov	dpl,#0x20
	push	ar7
	push	ar6
	lcall	_SPI_MASTER_WR
;	./src/chip.c:10: delay_10us();
	lcall	_delay_10us
	pop	ar6
	pop	ar7
;	./src/chip.c:11: SPI_MASTER_WR(address >> 8);		// A[11:8]
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_SPI_MASTER_WR
;	./src/chip.c:12: delay_10us();
	lcall	_delay_10us
	pop	ar6
	pop	ar7
;	./src/chip.c:13: SPI_MASTER_WR(address & 0x00ff);	// A[7:0]
	mov	dpl,r6
	lcall	_SPI_MASTER_WR
;	./src/chip.c:14: delay_10us();
	lcall	_delay_10us
;	./src/chip.c:15: spi_r_buf = SPI_MASTER_WR(0x00);	// D[7:0]
	mov	dpl,#0x00
	lcall	_SPI_MASTER_WR
	mov	r7,dpl
;	./src/chip.c:16: delay_10us();	
	push	ar7
	lcall	_delay_10us
	pop	ar7
;	./src/chip.c:18: return spi_r_buf;		//return reading data by 89s51
	mov	dpl,r7
;	./src/chip.c:19: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'AT89S51_Write_Byte'
;------------------------------------------------------------
;package                   Allocated with name '_AT89S51_Write_Byte_PARM_2'
;address                   Allocated to registers r6 r7 
;spi_r_buf1                Allocated to registers 
;spi_r_buf2                Allocated to registers r5 
;------------------------------------------------------------
;	./src/chip.c:21: unsigned int AT89S51_Write_Byte(unsigned int address, unsigned char package)
;	-----------------------------------------
;	 function AT89S51_Write_Byte
;	-----------------------------------------
_AT89S51_Write_Byte:
	mov	r6,dpl
	mov	r7,dph
;	./src/chip.c:26: SPI_MASTER_WR(0x40);				// write mode
	mov	dpl,#0x40
	push	ar7
	push	ar6
	lcall	_SPI_MASTER_WR
;	./src/chip.c:27: delay_10us();
	lcall	_delay_10us
	pop	ar6
	pop	ar7
;	./src/chip.c:28: SPI_MASTER_WR(address >> 8);		// A[11:8]
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_SPI_MASTER_WR
;	./src/chip.c:29: delay_10us();
	lcall	_delay_10us
	pop	ar6
	pop	ar7
;	./src/chip.c:30: spi_r_buf1 = SPI_MASTER_WR(address & 0x00ff);	// A[7:0]
	mov	dpl,r6
	lcall	_SPI_MASTER_WR
	mov	r7,dpl
	mov	r6,#0x00
;	./src/chip.c:31: delay_10us();
	push	ar7
	push	ar6
	lcall	_delay_10us
;	./src/chip.c:32: spi_r_buf2 = SPI_MASTER_WR(package);
	mov	dpl,_AT89S51_Write_Byte_PARM_2
	lcall	_SPI_MASTER_WR
	mov	r5,dpl
;	./src/chip.c:33: delay_10us();	
	push	ar5
	lcall	_delay_10us
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/chip.c:35: spi_r_buf1 = (spi_r_buf1 << 8) | spi_r_buf2;
	mov	ar6,r7
	clr	a
	mov	r7,a
	mov	r4,a
	mov	a,r5
	orl	a,r7
	mov	dpl,a
	mov	a,r4
	orl	a,r6
	mov	dph,a
;	./src/chip.c:37: return spi_r_buf1;		//return writing address by 89s51
;	./src/chip.c:38: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'AT89S51_Prog_En'
;------------------------------------------------------------
;spi_r_buf                 Allocated to registers r7 
;------------------------------------------------------------
;	./src/chip.c:40: unsigned char AT89S51_Prog_En(void)
;	-----------------------------------------
;	 function AT89S51_Prog_En
;	-----------------------------------------
_AT89S51_Prog_En:
;	./src/chip.c:44: SPI_MASTER_WR(0xac);
	mov	dpl,#0xac
	lcall	_SPI_MASTER_WR
;	./src/chip.c:45: delay_10us();
	lcall	_delay_10us
;	./src/chip.c:46: SPI_MASTER_WR(0x53);
	mov	dpl,#0x53
	lcall	_SPI_MASTER_WR
;	./src/chip.c:47: delay_10us();
	lcall	_delay_10us
;	./src/chip.c:48: SPI_MASTER_WR(0x00);
	mov	dpl,#0x00
	lcall	_SPI_MASTER_WR
;	./src/chip.c:49: delay_10us();
	lcall	_delay_10us
;	./src/chip.c:50: spi_r_buf = SPI_MASTER_WR(0x11);
	mov	dpl,#0x11
	lcall	_SPI_MASTER_WR
	mov	r7,dpl
;	./src/chip.c:51: delay_10us();	
	push	ar7
	lcall	_delay_10us
	pop	ar7
;	./src/chip.c:53: return spi_r_buf;
	mov	dpl,r7
;	./src/chip.c:54: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'AT89S51_Chip_Erase'
;------------------------------------------------------------
;spi_r_buf                 Allocated to registers r7 
;------------------------------------------------------------
;	./src/chip.c:56: unsigned char AT89S51_Chip_Erase(void)
;	-----------------------------------------
;	 function AT89S51_Chip_Erase
;	-----------------------------------------
_AT89S51_Chip_Erase:
;	./src/chip.c:60: SPI_MASTER_WR(0xac);
	mov	dpl,#0xac
	lcall	_SPI_MASTER_WR
;	./src/chip.c:61: delay_10us();
	lcall	_delay_10us
;	./src/chip.c:62: SPI_MASTER_WR(0x80);
	mov	dpl,#0x80
	lcall	_SPI_MASTER_WR
;	./src/chip.c:63: delay_10us();
	lcall	_delay_10us
;	./src/chip.c:64: SPI_MASTER_WR(0x12);
	mov	dpl,#0x12
	lcall	_SPI_MASTER_WR
;	./src/chip.c:65: delay_10us();
	lcall	_delay_10us
;	./src/chip.c:66: spi_r_buf = SPI_MASTER_WR(0x13);
	mov	dpl,#0x13
	lcall	_SPI_MASTER_WR
	mov	r7,dpl
;	./src/chip.c:67: delay_10us();	
	push	ar7
	lcall	_delay_10us
	pop	ar7
;	./src/chip.c:69: return spi_r_buf;
	mov	dpl,r7
;	./src/chip.c:70: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_MASTER_WR'
;------------------------------------------------------------
;package                   Allocated to registers r7 
;spi_cnt                   Allocated to registers r5 
;spi_r_buf                 Allocated to registers r4 
;------------------------------------------------------------
;	./src/chip.c:73: unsigned char SPI_MASTER_WR(unsigned char package)
;	-----------------------------------------
;	 function SPI_MASTER_WR
;	-----------------------------------------
_SPI_MASTER_WR:
	mov	r7,dpl
;	./src/chip.c:76: unsigned char spi_r_buf = 0;
	mov	r6,#0x00
;	./src/chip.c:78: SPI_SCK = 0;
;	assignBit
	clr	_P0_2
;	./src/chip.c:79: delay_10us();
	push	ar7
	push	ar6
	lcall	_delay_10us
	pop	ar6
	pop	ar7
;	./src/chip.c:81: for (spi_cnt = 0; spi_cnt < 8; spi_cnt ++) {
	mov	r5,#0x00
00102$:
;	./src/chip.c:82: SPI_MOSI = ((package & 0x80) == 0x80) ? 1 : 0;
	mov	ar3,r7
	anl	ar3,#0x80
	clr	a
	mov	r4,a
	cjne	r3,#0x80,00124$
	cjne	r4,#0x00,00124$
	inc	a
00124$:
;	assignBit
	add	a,#0xff
	mov	_P0_0,c
;	./src/chip.c:84: package <<= 1;
	mov	ar4,r7
	mov	a,r4
	add	a,r4
	mov	r7,a
;	./src/chip.c:85: delay_10us();
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay_10us
;	./src/chip.c:88: SPI_SCK = 1;
;	assignBit
	setb	_P0_2
;	./src/chip.c:89: delay_10us();
	lcall	_delay_10us
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/chip.c:91: spi_r_buf <<= 1;
	mov	ar4,r6
	mov	a,r4
	add	a,r4
	mov	r4,a
;	./src/chip.c:92: spi_r_buf = (SPI_MISO == 1) ? (spi_r_buf | 0x01) : spi_r_buf;
	jnb	_P0_1,00106$
	mov	ar2,r4
	mov	r3,#0x00
	orl	ar2,#0x01
	sjmp	00107$
00106$:
	mov	ar2,r4
	mov	r3,#0x00
00107$:
	mov	ar6,r2
;	./src/chip.c:94: SPI_SCK = 0;
;	assignBit
	clr	_P0_2
;	./src/chip.c:95: delay_10us();
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay_10us
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/chip.c:81: for (spi_cnt = 0; spi_cnt < 8; spi_cnt ++) {
	inc	r5
	cjne	r5,#0x08,00127$
00127$:
	jc	00102$
;	./src/chip.c:99: return spi_r_buf;
	mov	dpl,r6
;	./src/chip.c:100: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
