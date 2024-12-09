#define __SFR_OFFSET 0x00
#include "avr/io.h"   ; Allows use of PORTB, DDRB, etc.

; Make functions available to .ino file
.global start
.global led

start:
  SBI DDRB, 4      ; Set PB4 (pin 12) to output
  RET

led:
  CPI r24, 0x00    ; Check if the given argument is 0
  BREQ ledOFF      ; If 0, jump to ledOFF
  SBI PORTB, 4     ; Set PB4 (pin 12) to HIGH (turn on LED)
  RET

ledOFF:
  CBI PORTB, 4     ; Clear PB4 (pin 12) (turn off LED)
  RET
