
const int greenLED = 9;
const int pushButton = A3;
const int ldrPin = A0;
int brightness = 0;    
int fadeAmount = 5; 

void setup() {
  // put your setup code here, to run once:

pinMode(7,OUTPUT);
pinMode(A3, INPUT);
pinMode(A1, INPUT);
Serial.begin(9600);
}

void fade(){

analogWrite(greenLED, brightness);

  brightness = brightness + fadeAmount;

  if (brightness <= 0 || brightness >= 255) {
    fadeAmount = -fadeAmount;
  }
  
  delay(30);


}

void loop() {

int ldrVal = analogRead(ldrPin);

Serial.println(ldrVal);

int buttonState = digitalRead(pushButton);

//
if (ldrVal < 50){
digitalWrite(greenLED,LOW);

}

 else if (buttonState == LOW && ldrVal > 50){
  digitalWrite(greenLED,HIGH);

  
}

else{
  fade();

}
}
