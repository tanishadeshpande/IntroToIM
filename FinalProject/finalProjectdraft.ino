

const int keyC1 = 13;
const int keyD = 12;
const int keyE = 11;
const int keyF = 10;
const int keyG = 9;
const int keyA = 7;
const int keyB = 6;
const int keyC2 = 5;






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





void loop() {

//Serial.println(digitalRead(keyE));

if (digitalRead(keyC1) == HIGH){

  
  Serial.print("C");
  delay(30);
 
} 

if (digitalRead(keyD) == HIGH){

  
  Serial.print("D");
  delay(30);
 
} 

if (digitalRead(keyE) == HIGH){

  
  Serial.print("E");
  delay(30);
 
} 

if (digitalRead(keyF) == HIGH){


  Serial.print("F");
  delay(30);
 
} 

if (digitalRead(keyG) == HIGH){

  Serial.print("G");
  delay(30);
 
} 

if (digitalRead(keyA) == HIGH){

  Serial.print("A");
  delay(30);
 
} 

if (digitalRead(keyB) == HIGH){

  Serial.print("B");
  delay(30);
 
} 

if (digitalRead(keyC2) == HIGH){


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
