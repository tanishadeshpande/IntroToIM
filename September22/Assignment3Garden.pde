
class Star {
  
  float xPos, yPos, starHeight, starWidth;
  
  color starColor;
  
  Star(float _starHeight, float _starWidth){
    
    starHeight = _starHeight;
    starWidth = _starWidth;
    
    xPos = random(0,width);
    
    yPos = random(0,height-100);
    
    starColor = color(255);
  }
  
  void drawStar(){
    
   stroke(255);
    
   fill(starColor);
   
   triangle(xPos,yPos,xPos+starWidth/2,yPos+starHeight,xPos+starWidth,yPos);
   
   triangle(xPos,yPos,xPos+starWidth/2,yPos-starHeight,xPos+starWidth,yPos);
  }
}
  

class Flower {
  
  float xPos, yPos, fRadius;
  color sColor;
  
  Flower( float _fRadius){
    
    fRadius = _fRadius;
    
    xPos = random(0,width);
    
    yPos = random(height-100,height-20);
    
   
    
    sColor = color(0,154,23);
  
  }
  

  void drawFlower(){
    
    stroke(sColor);
    strokeWeight(2.5);
    line(xPos,yPos,xPos,height);
    noStroke();
    
    noFill();
    circle(xPos,yPos,fRadius);
    
    image(images[int(random(0,3))],xPos-12,yPos-12);
    
  }
      
}

int numImg = 3;
PImage[] images = new PImage[numImg];
    
Flower [] myFlowerArray = new Flower[100];

Star [] myStarArray = new Star[500];

void setup(){
 
  size(500,300);
  
  background(0);
  
  for(int i = 0; i < numImg; i++){
      images[i] = loadImage("img"+(i)+".png");
  }
  
  for (int i = 0; i < myFlowerArray.length; i++){
    myFlowerArray[i] = new Flower(20);
   
    
  }
  
   for (int i = 0; i < myStarArray.length; i++){
    myStarArray[i] = new Star(2,2);
   
    
  }
  
   for (int i = 0; i < myStarArray.length; i++){
    myStarArray[i].drawStar();
    
  }
  for (int i = 0; i < myFlowerArray.length; i++){
    myFlowerArray[i].drawFlower();
    
  }
  
 
}
