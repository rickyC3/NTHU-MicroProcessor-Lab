#include "delay.h"

void delay_ms(unsigned int input_ms) // ms will save in *dph and *dpl
{
	input_ms;			// to avoid unrefferenced warning
	__asm				// start of assembly code
	DELAY1: MOV R5,dpl	// R5 = input_ms[7:0]
			CJNE R5,#0,DL1
			CJNE R5,#255,DELAY3

	DL1:    MOV R6,#3
	DL2:    MOV R7,#170
	DL3:    DJNZ R7,DL3
			DJNZ R6,DL2
			DJNZ R5,DL1


	DELAY3: MOV R4,dph	// R4 = input_ms[15:8]
		    CJNE R4,#0,DL4
			RET

	DL4:	MOV R5,#0	// 256
	DL5:    MOV R6,#3
	DL6:    MOV R7,#170
	DL7:    DJNZ R7,DL7
			DJNZ R6,DL6
			DJNZ R5,DL5
			DJNZ R4,DL4

	__endasm;			// end of assembly code, don't forget to add ";"
}