const int ledpin = 12;        // LED connected to pin 12

void setup() {
  Serial.begin(57600);
  pinMode(ledpin, OUTPUT);    // Regular C++ pinMode
  //asm ( "SBI 0x04, 4 " );   // Assembly pinMode
  //DDRB = 0b00010000;        // Direct port manipulation pinMode
}

void loop() {
  long start = micros();
  digitalWrite(ledpin, HIGH);   // turn on LED
  delay(1000);
  digitalWrite(ledpin, LOW);    // turn off LED
  delay(1000);
  long end = micros();
  Serial.println((end-start));
}
