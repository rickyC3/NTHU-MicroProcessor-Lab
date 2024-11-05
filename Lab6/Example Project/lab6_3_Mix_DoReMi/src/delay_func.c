#include "delay_func.h"

void Delay_Do(void) {
	__asm
	// DO = 1047Hz
	// we require a delay of 0.4776ms for each half period
	// 440 cycles @Fosc = 11.0592MHz
	DELAY_Do:
		MOV R6,#10				// 1 cycle
	
	DELAY_Do_DL1:
		MOV R7,#19				// 1 cycle
	
	STEP1:
		DJNZ R7,STEP1			// 2 cycles
		DJNZ R6,DELAY_Do_DL1	// 2 cycles
		// 410 cycle = R6 * (1 + (R7 * 2) + 2) = 10 * (1 + (19 * 2) + 2)
		
		MOV R7,#13				// 1 cycle
	
	STEP2:
		DJNZ R7,STEP2			// 2 cycles
		// 27 cycle = 1 + (R7 * 2) = 1 + (13 * 2)

		RET						// 2 cycles
		// Total = 440 cycles, meeting the required cycle count for generating DO
	
	__endasm;
						
}

void Delay_Re(void) {
	__asm
	// RE = 1175Hz
	// we require a delay of 0.4255ms for each half period
	// 392 cycles @Fosc = 11.0592MHz
	DELAY_RE:
		MOV R6,#10				// 1 cycle
	
	DELAY_RE_DL1:
		MOV R7,#17				// 1 cycle
	
	STEP3:
		DJNZ R7,STEP3			// 2 cycles
		DJNZ R6,DELAY_RE_DL1	// 2 cycles
		// 370 cycles = R6 * (1 + (R7 * 2) + 2) = 10 * (1 + (17 * 2) + 2)
		
		MOV R7,#9				// 1 cycle
	
	STEP4:
		DJNZ R7,STEP4			// 2 cycles
		// 19 cycles = 1 + (R7 * 2) = 1 + (9 * 2)

		RET						// 2 cycles
		// Total = 392 cycles, meeting the required cycle count for generating RE				

	__endasm;
}

void Delay_Mi(void) {
	__asm
	// MI = 1319Hz
	// we require a delay of 0.3790ms for each half period
	// 349 cycles @Fosc = 11.0592MHz
	DELAY_MI:
		MOV R6,#10				// 1 cycle
	
	DELAY_MI_DL1:
		MOV R7,#15				// 1 cycle
	
	STEP5:
		DJNZ R7,STEP5			// 2 cycles
		DJNZ R6,DELAY_MI_DL1	// 2 cycles
		// 330 cycles = R6 * (1 + (R7 * 2) + 2) = 10 * (1 + (15 * 2) + 2)
		
		MOV R7,#7				// 1 cycle
	
	STEP6:
		DJNZ R7,STEP6			// 2 cycles
		// 15 cycles = 1 + (R7 * 2) = 1 + (7 * 2)

		RET						// 2 cycles
		// Total = 349 cycles, meeting the required cycle count for generating MI

	__endasm;
}