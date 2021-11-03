
const int blueLEDPin = 13;
const int greenLEDPin = 7;
const int linkSwitch = A3;

void setup() {
  pinMode(blueLEDPin, OUTPUT);
  pinMode(greenLEDPin, OUTPUT);
}

void loop() {

  int switchState = digitalRead(linkSwitch);

  if (switchState == HIGH) {
    
    digitalWrite(blueLEDPin, HIGH);
    digitalWrite(greenLEDPin, LOW);
    delay(200);
    digitalWrite(blueLEDPin, LOW);
    digitalWrite(greenLEDPin, HIGH);
    delay(200);
  }
  allOff();
  delay(100);
}

void allOff() {
  digitalWrite(blueLEDPin, LOW);
  digitalWrite(greenLEDPin, LOW);
}
