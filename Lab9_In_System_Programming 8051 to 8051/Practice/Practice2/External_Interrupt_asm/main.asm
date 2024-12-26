ORG 0000H
	LJMP MAIN 	; bypass interrupt vector table


; ISR for hardware interrupt INT1 to turn on the LED
ORG 0013H 		; INT1 ISR
	CLR P1.0 	; turn on the LED
	MOV R4,#10
	
	RETI 		; return from ISR


; The main program
ORG 0030H
MAIN:
	SETB P1.0			; turn off the LED
	SETB TCON.2 		; make INT1 edge-trigger interrupt
	MOV IE,#10000100B	; enable External INT1
	
LOOP:
	CJNE R4,#0, START_DELAY
	SETB P1.0 			; turn off the LED when R4 count down to zero
	
START_DELAY: 
	CALL DELAY
	DJNZ R4, START_DELAY
	
	SJMP LOOP		; stay in loop until interrupted

DELAY:  
	MOV R5,#100 	; 100 = ms
DL1:
	MOV R6,#2		; delay R5*1ms
DL2:
	MOV R7,#228
DL3:
	DJNZ R7,DL3
	DJNZ R6,DL2
	DJNZ R5,DL1
	RET

END