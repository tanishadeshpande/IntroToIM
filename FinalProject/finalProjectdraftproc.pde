  import processing.serial.*;
  import processing.sound.*;
  int val;

  float shape;
  SoundFile[] octave;
  
  Serial myPort;
  
  void setup(){
    //size(600,600);
    //makefullscreen
    fullScreen();
    background(0);
    noStroke();
    frameRate(200);
    octave = new SoundFile[8];
    octave[0] = new SoundFile(this, "c3.wav");
    octave[1] = new SoundFile(this, "d3.wav");
    octave[2] = new SoundFile(this, "e3.wav");
    octave[3] = new SoundFile(this, "f3.wav");
    octave[4] = new SoundFile(this, "g3.wav");
    octave[5] = new SoundFile(this, "a3.wav");
    octave[6] = new SoundFile(this, "b3.wav");
    octave[7] = new SoundFile(this, "c4.wav"); 
    
    printArray(Serial.list());
    
    myPort = new Serial(this,Serial.list()[4], 9600);
    
    
  }
  
  void stopKey(){
   for (int i = 0; i < 8; i++){
     if (octave[i].isPlaying()){
       //println(i);
       octave[i].stop();
     }
     
   }
    
  }
  
  void playKey(){
    if (myPort.available() > 0) {
      val = char(myPort.read());
      //println(val);
      if (val == 72){
        
        stopKey();
        
      }
      if(val == 67){
        //red
        octave[0].play();
        fill(255,105,97,random(50,255));
        shape = int(random(1,3));
        println(shape);
        if(shape == 1){
          ellipse(random(0,width),random(0,height),random(30,120),random(30,120));
        } else {
          rect(random(0,width),random(0,height),random(30,120),random(30,120));
        }
          
        
      } if(val == 68){
        //orange
        octave[1].play();
        fill(255,179,71,random(50,255));
        shape = int(random(1,3));
         println(shape);
        if(shape == 1){
          ellipse(random(0,width),random(0,height),random(30,120),random(30,120));
        } else {
          rect(random(0,width),random(0,height),random(30,120),random(30,120));
        }
        
      } 
      if(val == 69){
        //yellow
        octave[2].play();
        fill(253,253,150,random(50,255));
        shape = int(random(1,3));
         println(shape);
        if(shape == 1){
          ellipse(random(0,width),random(0,height),random(30,120),random(30,120));
        } else {
          rect(random(0,width),random(0,height),random(30,120),random(30,120));
        }
        
      } 
      if(val == 70){
      //green
        octave[3].play();
        fill(202,231,193,random(50,255));
        shape = int(random(1,3));
        println(shape);
        if(shape == 1){
          ellipse(random(0,width),random(0,height),random(30,120),random(30,120));
        } else {
          rect(random(0,width),random(0,height),random(30,120),random(30,120));
        }
        
      } 
      if(val == 71){
        //light blue
        octave[4].play();
        fill(209,237,242,random(50,255));
        shape = int(random(1,3));
        println(shape);
        if(shape == 1){
          ellipse(random(0,width),random(0,height),random(30,120),random(30,120));
        } else {
          rect(random(0,width),random(0,height),random(30,120),random(30,120));
        }
        
      } 
      if(val == 65){
       //dark blue
        octave[5].play();
        fill(61,66,107,random(50,255));
        shape = int(random(1,3));
        println(shape);
        if(shape == 1){
          ellipse(random(0,width),random(0,height),random(30,120),random(30,120));
        } else {
          rect(random(0,width),random(0,height),random(30,120),random(30,120));
        }
        
      } 
      if(val == 66){
       //purple
        octave[6].play();
        fill(177,156,217,random(50,255));
       shape = int(random(1,3));
        println(shape);
        if(shape == 1){
          ellipse(random(0,width),random(0,height),random(30,120),random(30,120));
        } else {
          rect(random(0,width),random(0,height),random(30,120),random(30,120));
        }
        
      } 
      if(val == 99){
        //pink
        octave[7].play();
        fill(251,204,209,random(50,255));
        shape = int(random(1,3));
        println(shape);
        if(shape == 1){
          ellipse(random(0,width),random(0,height),random(30,120),random(30,120));
        } else {
          rect(random(0,width),random(0,height),random(30,120),random(30,120));
        }
      
  }
  }
  }
  void draw(){
    playKey();
    if(keyPressed == true){
      background(0);
    }
   
  }
