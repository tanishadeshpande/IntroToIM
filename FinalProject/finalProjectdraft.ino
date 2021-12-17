

const int keyC1 = 13;
const int keyD = 12;
const int keyE = 11;
const int keyF = 10;
const int keyG = 9;
const int keyA = 7;
const int keyB = 6;
const int keyC2 = 5;



#include "pitches.h"


void setup() {
  pinMode(keyC1, INPUT);
  pinMode(keyB, INPUT);
  pinMode(keyA, INPUT);
  pinMode(keyD, INPUT);
  pinMode(keyE, INPUT);
  pinMode(keyF, INPUT);
  pinMode(keyG, INPUT);
  pinMode(keyC2, INPUT);
 
  Serial.begin(9600);
}

//
//void buttonPressed(key){
//
//  if (digitalRead(key) == HIGH){
//
//    return True;
//  }
//
//  else {
//
//    return False
//  }
//
//}



void loop() {

//Serial.println(digitalRead(keyE));

if (digitalRead(keyC1) == HIGH){

  //tone(spkrPin,NOTE_C4, 400);
  Serial.print("C");
  delay(30);
 
} 

if (digitalRead(keyD) == HIGH){

  //tone(spkrPin,NOTE_D4, 400);
  Serial.print("D");
  delay(30);
 
} 

if (digitalRead(keyE) == HIGH){

  //tone(spkrPin,NOTE_E4, 400);
  Serial.print("E");
  delay(30);
 
} 

if (digitalRead(keyF) == HIGH){

  //tone(spkrPin,NOTE_F4, 30);
  Serial.print("F");
  delay(30);
 
} 

if (digitalRead(keyG) == HIGH){

  //tone(spkrPin,NOTE_G4, 30);
  Serial.print("G");
  delay(30);
 
} 

if (digitalRead(keyA) == HIGH){

  //tone(spkrPin,NOTE_A4, 30);
  Serial.print("A");
  delay(30);
 
} 

if (digitalRead(keyB) == HIGH){

  //tone(spkrPin,NOTE_B4, 30);
  Serial.print("B");
  delay(30);
 
} 

if (digitalRead(keyC2) == HIGH){

  //tone(spkrPin,NOTE_C5, 30);
  Serial.print("c");
  delay(30);
 
} 

if (digitalRead(keyC1) == LOW && digitalRead(keyD) == LOW && digitalRead(keyE) == LOW && 
digitalRead(keyF) == LOW && digitalRead(keyG) == LOW && digitalRead(keyA) == LOW && digitalRead(keyB) == LOW && 
digitalRead(keyC2) == LOW){

  Serial.print("H");
  delay(30);
}
}
