extern "C"        // Declare that these functions are in the .S file
{
  void start();
  void led(byte);
}

void setup() {
  Serial.begin(56700);
  start();        // Pin setup
}

void loop() {
  long start = micros();
  led(1); delay(1000);    // Turn on LED and wait 1s
  led(0); delay(1000);    // Turn off LED and wait 1s
  long end = micros();
  Serial.println((end-start));
}





