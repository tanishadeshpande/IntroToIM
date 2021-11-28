

const int pushButton = A3;
const int ldrPin = A0;
const int spkrPin = 7;


#include "pitches.h"


// notes in the melody:
int melody1[] = {
  NOTE_A4, NOTE_A4, NOTE_B4, NOTE_A4, NOTE_D4,NOTE_CS4, NOTE_A4, NOTE_A4, NOTE_B4, NOTE_A4, NOTE_E4,NOTE_D4,NOTE_A4, NOTE_A4, NOTE_A4, NOTE_FS4, NOTE_D4,NOTE_CS4,NOTE_B4,NOTE_G4,NOTE_G4, NOTE_FS4,
  NOTE_D4, NOTE_E4, NOTE_D4
  //NOTE_C4, NOTE_G3, NOTE_G3, NOTE_A3, NOTE_G3, 0, NOTE_B3, NOTE_C4
};

int melody2[] = {
  NOTE_C4, NOTE_C4, NOTE_G4, NOTE_G4, NOTE_A4,NOTE_A4, NOTE_G4, NOTE_F4, NOTE_F4, NOTE_E4, NOTE_E4,NOTE_D4, 
  NOTE_D4, NOTE_C4, NOTE_G4, NOTE_G4, NOTE_F4,NOTE_F4, NOTE_E4, NOTE_E4, NOTE_D4, NOTE_G4, NOTE_G4, NOTE_F4,NOTE_F4, NOTE_E4, NOTE_E4, NOTE_D4,
  NOTE_C4, NOTE_C4, NOTE_G4, NOTE_G4, NOTE_A4,NOTE_A4, NOTE_G4, NOTE_F4, NOTE_F4, NOTE_E4, NOTE_E4,NOTE_D4, 
  NOTE_D4, NOTE_C4
  //NOTE_C4, NOTE_G3, NOTE_G3, NOTE_A3, NOTE_G3, 0, NOTE_B3, NOTE_C4
};

// note durations: 4 = quarter note, 8 = eighth note, etc.:
int noteDurations1[] = {
  //4, 8, 8, 4, 4, 4, 4, 4
  8,8,4,4,4,2,8,8,4,4,4,2,8,8,4,4,4,4,4,8,8,4,4,4,2
};

void setup() {
  pinMode(pushButton, INPUT);
  pinMode(ldrPin, INPUT);
  pinMode(spkrPin, OUTPUT);
  Serial.begin(9600);
}


void happyBirthday(){

  for (int thisNote = 0; thisNote < 25; thisNote++) {
  
      // to calculate the note duration, take one second divided by the note type.
      //e.g. quarter note = 1000 / 4, eighth note = 1000/8, etc.
      int noteDuration1 = 1000 / noteDurations1[thisNote];
      tone(spkrPin, melody1[thisNote], noteDuration1);
  
      // to distinguish the notes, set a minimum time between them.
      // the note's duration + 30% seems to work well:
      int pauseBetweenNotes = noteDuration1 * 1.30;
      delay(pauseBetweenNotes);
      // stop the tone playing:
      noTone(spkrPin);
    }

}

void twinkleTwinkle(){

for (int thisNote = 0; thisNote < 42; thisNote++) {
  
      // to calculate the note duration, take one second divided by the note type.
      //e.g. quarter note = 1000 / 4, eighth note = 1000/8, etc.
      int noteDuration1 = 1000 / 4;
      tone(spkrPin, melody2[thisNote], noteDuration1);
  
      // to distinguish the notes, set a minimum time between them.
      // the note's duration + 30% seems to work well:
      int pauseBetweenNotes = noteDuration1 * 1.30;
      delay(pauseBetweenNotes);
      // stop the tone playing:
      noTone(spkrPin);
    }
  
}

void loop() {

int ldrVal = analogRead(ldrPin);

Serial.println(ldrVal);

if (digitalRead(pushButton) == HIGH){

  if (analogRead(ldrPin) > 120){

    happyBirthday();

  }

  else{

  twinkleTwinkle();


  }
  
}
}
