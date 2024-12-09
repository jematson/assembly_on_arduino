#include "avr/io.h"
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
  RCALL myDelay    ; Call the delay function
  RET

ledOFF:
  CBI PORTB, 4     ; Clear PB4 (pin 12) (turn off LED)
  RCALL myDelay    ; Call the delay function
  RET

; A delay is set by decrementing two nested loops
.equ delayVal, 1000000  ; Set variable for the delay loop
myDelay:
  LDI R20, 100          
outerLoop:            ; outerLoop runs 100 times, decrementing r20
  LDI R30, lo8(delayVal)
  LDI R31, hi8(delayVal)
innerLoop:            ; innerLoop runs delayVal times, decrementing R30 & R31
  SBIW R30, 1
  BRNE innerLoop

  SUBI R20, 1
  BRNE outerLoop


