// the setup function runs once when you press reset or power the board
void setup() {
  // initialize digital pin 13 as an output.
  pinMode(3, OUTPUT);
  pinMode(4, OUTPUT);
}

// the loop function runs over and over again forever
void loop() {
  digitalWrite(3, HIGH);   // turn the LED on (HIGH is the voltage level)
  digitalWrite(4, LOW);   // turn the LED on (HIGH is the voltage level)
  
  delayMicroseconds(10);              // wait for a second
  digitalWrite(3, LOW);    // turn the LED off by making the voltage LOW
  digitalWrite(4, HIGH);    // turn the LED off by making the voltage LOW
  
  delayMicroseconds(10);
  
  // wait for a second
}
