#define __SFR_OFFSET 0x00
#include "avr/io.h"   ; Allows use of PORTB, DDRB, etc.

; Make functions available to .ino file
.global on
.global off

; Set pin 12 HIGH
on:
  SBI DDRB, 4
  RET

; Set pin 12 LOW
off:
  CBI PORTB, 4
  RET