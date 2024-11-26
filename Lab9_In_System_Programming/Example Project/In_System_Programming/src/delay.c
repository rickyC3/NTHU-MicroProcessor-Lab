#include "delay.h"

void delay_10us(void)
{
	unsigned char i;
	
	for (i = 0; i < 5; i++);
}

void delay_ms(unsigned int input_ms) // ms will save in *dph and *dpl
{
	// 1ms = 921.6 cycles @Fosc = 11.0592
	// 256ms = 235929.6 cycles @Fosc = 11.0592

	input_ms;						// to avoid unrefferenced warning
	__asm							// start of assembly code

	DELAY1: MOV R5,dpl				// 1 cycle, R5 = input_ms[7:0]
			CJNE R5,#0,DL1			// 2 cycles, if R5 has value, jump to DL1
			CJNE R5,#255,DELAY3		// 2 cycles, if R5 has no value, jump to DELAY3

	DL1:    MOV R6,#2				// 1 cycle
	DL2:    MOV R7,#228				// 1 cycle
	DL3:    DJNZ R7,DL3				// 2 cycles
			DJNZ R6,DL2				// 2 cycles
			DJNZ R5,DL1				// 2 cycles

	// dpl block cycle = R5 * (1 + R6 * (1 + (R7 * 2) + 2) + 2)
	//                 = dpl * (1 + 2 * (1 + (228 * 2) + 2) + 2)
	//                 = dpl * 921, where 921 represents the cycle time required for 1ms


	DELAY3: MOV R4,dph				// 1 cycle, R4 = input_ms[15:8]
		    CJNE R4,#0,DL4			// 2 cycles, if R4 has value, jump to DL4
			RET						// 2 cycles

	DL4:	MOV R5,#0				// 1 cycle, R5 = 256
	DL5:    MOV R6,#2				// 1 cycle
	DL6:    MOV R7,#228				// 1 cycle
	DL7:    DJNZ R7,DL7				// 2 cycles
			DJNZ R6,DL6				// 2 cycles
			DJNZ R5,DL5				// 2 cycles

			MOV R3,#75				// 1 cycle
	DL8:	DJNZ R3,DL8				// 2 cycles
			// DL8 block cycle = 1 + R3 * 2 = 151

			DJNZ R4,DL4				// 2 cycles

	// dph block cycle = R4 * (1 + (R5 * (1 + R6 * (1 + (R7 * 2) + 2) + 2)) + (1 + R3 * 2) + 2)
	//                 = dph * (1 + (256 * (1 + 2 * (1 + (228 * 2) + 2) + 2)) + (1 + R3 * 2) + 2)
	//                 = dph * (1 + 256 * 921 + 151 + 2)
	//                 = dph * 235930, where 235930 represents the cycle time required for 256ms 

	__endasm;			// end of assembly code, don't forget to add ";"
}


//////////////////////////////////////////////////
//                delay analysis                //
//////////////////////////////////////////////////
// if dpl == 0, dph ==0
// 	   total cycle = (1 + 2 + 2) + (1 + 2 + 2)
//
// if dpl == 0, dph !=0
// 	   total cycle = (1 + 2 + 2) + (1 + 2 + dph * 235930)
//
// if dpl != 0, dph ==0
// 	   total cycle = (1 + 2 + dpl * 921) + (1 + 2 + 2)
//
// if dpl != 0, dph !=0
// 	   total cycle = (1 + 2 + dpl * 921) + (1 + 2 + dph * 235930)