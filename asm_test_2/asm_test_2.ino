extern "C"      // Delare that these functions are in the .S file
{
  void start();
  void led(byte);
}

void setup() {
  start();      // Pin setup
}

void loop() {
  led(1);       // Turn on LED
  led(0);       // Turn off LED
}