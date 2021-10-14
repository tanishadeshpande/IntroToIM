class Obstacle {
  PImage rat;
  float xPos, yPos, xSize, ySize, yShift;
  
  

  Obstacle(float _xPos, float _yPos) {
    xSize = 25;
    
    xPos = _xPos;
    yPos = _yPos;
    yShift = 10;
  }
  void down() {

    yPos = yPos + yShift;
  }


  void drawObstacle(){
    rat = loadImage("rat.png");
    //fill(0);
    noFill();
    noStroke();
    ellipse(xPos, yPos, xSize, xSize);
    image(rat,xPos,yPos,30,30);
    down();
  }
  
  
}
