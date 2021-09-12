
float angle;

boolean col = true;


color purple = color(149, 125, 173);

color blue = color(221, 241, 255);

color green = color(229, 243, 228);

color pink = color(254, 200, 216);

void setup(){
  
  size(700,700);
  
  rectMode(CENTER);
  
  //stroke(254, 200, 216);
  
  stroke(255);
  strokeWeight(20);
  
}
 
void draw(){
  background(255);
  //background(254,200,216);
  translate(width/2,height/2);
  for(int i = 0; i< 100; i++){
    if (col){
        if(i%2 == 0){
          fill(pink);
        } else {
          fill(purple);
        }
    } else {
      if(i%2 == 0){
          fill(blue);
        } else {
          fill(green);
        }
    }
        
     
    scale(0.9);
    rotate(radians(angle));
    rect(0,0,600,600);
  }
  
  angle += 0.25;
}

  
void keyPressed(){
  if (key == 'p'){
    col = true;
  }
  
  if (key == 'b'){
    col = false;
  }
  
}


    

 
