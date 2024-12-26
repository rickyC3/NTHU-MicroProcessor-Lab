ORG 0030H				; origin start at memory address 0
START:
LOOP:
	MOV R4,#25			; R4 = 25

; Make the buzzer play the note Do
DOAGAIN:
	MOV R5,#25			; R5 = 25
DO:
	SETB P3.7			; P3.7 = 1
	ACALL DELAY_DO
	CLR P3.7			; P3.7 = 0
	ACALL DELAY_DO
	DJNZ R5,DO			; if (R5-1) != 0, jump to DO
	DJNZ R4,DOAGAIN		; if (R4-1) != 0, jump to DOAGAIN
	
	MOV R4,#25			; R4 = 25

; Make the buzzer play the note Re
REAGAIN:
	MOV R5,#25			; R5 = 25
RE:
	SETB P3.7			; P3.7 = 1
	ACALL DELAY_RE
	CLR P3.7			; P3.7 = 0
	ACALL DELAY_RE
	DJNZ R5,RE			; if (R5-1) != 0, jump to RE
	DJNZ R4,REAGAIN		; if (R4-1) != 0, jump to REAGAIN
	
	MOV R4,#25			; R4 = 25

; Make the buzzer play the note Mi
MIAGAIN:
	MOV R5,#25			; R5 = 25
MI:
	SETB P3.7			; P3.7 = 1
	ACALL DELAY_MI
	CLR P3.7			; P3.7 = 0
	ACALL DELAY_MI
	DJNZ R5,MI			; if (R5-1) != 0, jump to MI
	DJNZ R4,MIAGAIN		; if (R4-1) != 0, jump to MIAGAIN
	SJMP END1
	
; DO = 1047Hz
; we require a delay of 0.4776ms for each half period
; 440 cycles @Fosc = 11.0592MHz
DELAY_Do:
    MOV R6,#10				; 1 cycle

DELAY_Do_DL1:
	MOV R7,#19				; 1 cycle
	DJNZ R7,$				; 2 cycles
	DJNZ R6,DELAY_Do_DL1	; 2 cycles
	; 410 cycle = R6 * (1 + (R7 * 2) + 2) = 10 * (1 + (19 * 2) + 2)
	
	MOV R7,#13				; 1 cycle
	DJNZ R7,$				; 2 cycles
	; 27 cycle = 1 + (R7 * 2) = 1 + (13 * 2)

	RET						; 2 cycles
	; Total = 440 cycles, meeting the required cycle count for generating DO
	
; RE = 1175Hz
; we require a delay of 0.4255ms for each half period
; 392 cycles @Fosc = 11.0592MHz
DELAY_RE:
	MOV R6,#10				; 1 cycle

DELAY_RE_DL1:
	MOV R7,#17				; 1 cycle
	DJNZ R7,$				; 2 cycles
	DJNZ R6,DELAY_RE_DL1	; 2 cycles
	; 370 cycles = R6 * (1 + (R7 * 2) + 2) = 10 * (1 + (17 * 2) + 2)
	
	MOV R7,#9				; 1 cycle
	DJNZ R7,$				; 2 cycles
	; 19 cycles = 1 + (R7 * 2) = 1 + (9 * 2)

	RET						; 2 cycles
	; Total = 392 cycles, meeting the required cycle count for generating RE
	
; MI = 1319Hz
; we require a delay of 0.3790ms for each half period
; 349 cycles @Fosc = 11.0592MHz
DELAY_MI:
	MOV R6,#10				; 1 cycle

DELAY_MI_DL1:
	MOV R7,#15				; 1 cycle
	DJNZ R7,$				; 2 cycles
	DJNZ R6,DELAY_MI_DL1	; 2 cycles
	; 330 cycles = R6 * (1 + (R7 * 2) + 2) = 10 * (1 + (15 * 2) + 2)
	
	MOV R7,#7				; 1 cycle
	DJNZ R7,$				; 2 cycles
	; 15 cycles = 1 + (R7 * 2) = 1 + (7 * 2)

	RET						; 2 cycles
	; Total = 349 cycles, meeting the required cycle count for generating MI

END1:
     SJMP END1
END
