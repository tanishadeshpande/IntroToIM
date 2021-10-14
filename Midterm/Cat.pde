

class Cat {
  PImage cat;
  float x = 200;
  float y = height-50;
  float xspeed = 0;
  float yspeed = 0;
  boolean dead = false;

  void dir(float x, float y) {
    xspeed = x;
    yspeed = y;
  }

  
  void drawCat() {
    cat = loadImage("cat.png");
    
    ellipseMode(RADIUS);
    noFill();
    noStroke();
    ellipse(x, y, 30, 30);
    
    image(cat,x-35,y-30);
    update();
  }


  void update() {

    x = x + xspeed;
    y = y + yspeed;

    x = constrain(x, 20, width-20);
    y = constrain(y, 20, height-20); // to prevent cat from going off screen
  }


}
