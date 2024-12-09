extern "C"    // Declare that these functions are in the .S file
{
  void on();
  void off();
}

void setup() {
  Serial.begin(57600);
}

void loop() {
  // timing loop
  long start = micros();            // record starting time 
  for (int i = 0; i < 1000; i++) {  // 
    on();
    off();
    //onOff();
  }
  long end = micros();              // record ending time
  Serial.println((end - start) / 1000.0);  // calculate avg time per function call
  delay(1000);
}

// Write pin 12 HIGH and then LOW
void onOff() {
  digitalWrite(12, 1);
  digitalWrite(12, 0);
}

