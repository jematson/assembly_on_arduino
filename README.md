# Assembly on Arduino
Jenae Matson

A final project for CS301 Assembly Language Programming

---

This Github repository contains various example and testing programs for running assembly code on an Arduino Nano or Uno. 

## __baseline__

This is your basic LED blinking program in plain old C++, including a basic timing loop. It also includes some optional 
lines in the setup() block to compare pinMode memory usage between C++, direct port manipulation, and assembly.

## __asm_test__:

This is the basic LED blinking program implemented with some assembly functions but C++ delays, including a basic timing loop.

## __asm_test_2__:

This is the basic LED blinking program implemented fully in assembly. There is no timing loop included here, as the difference
in delay implementation makes it incomparable to the baseline and asm_test. 

## __asm_timing__:

This program compares the timing of basic pin manipulation in C++ and assembly. Within the timing loop, the function on() and
off() are called to time assembly, and the function onOff() to time C++.
