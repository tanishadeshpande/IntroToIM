


import processing.sound.*;
SoundFile collect;
SoundFile bgmusic;
PImage background;
PImage logo;
PImage startscreen;
PImage endscreen;
int score = 0; // this will be to keep track of how many rats have been caught
boolean gameover = false; // when this is true the end game screen will be shown and user can restart the game
Cat c;

boolean beginGame=false; // when this is false the cat and obstacles will not be displayed -- either at the start or end screen

ArrayList<Obstacle> obstacles = new ArrayList<Obstacle>();

void addObstacles() {
  float obsxPos = 105;
  float obsyPos = 100;

  for (int i = 0; i < 100; i++) {
    for (int a = 0; a < 3; a++) {
      float yDist=random(-150, 150);
      float xDist=200;//+random(0, 15);

      obstacles.add(new Obstacle(obsxPos, obsyPos));
      obsxPos += xDist;
      obsyPos += yDist;
    }

    obsyPos-= random(200, 500);
    obsxPos=105+random(-15, 15);
  }
}

void setup() {
  size(650, 700);
  background(255, 255, 255);
  bgmusic = new SoundFile(this, "bgsound.mp3");
  bgmusic.play();

  frameRate(500);
  c = new Cat();

  addObstacles();
}


void collision () {

  for (int i = 0; i<200; i++) {
    if (dist(obstacles.get(i).xPos, obstacles.get(i).yPos, c.x, c.y)<60) { // when the rat collides with the cat, it will have been caught and so it will disappear from the screen
      collect = new SoundFile (this, "coin.mp3");
      collect.play();
      obstacles.remove(i);
      score += 1;
      if (score == 30) {
        gameover = true;
      }
    }
  }
}

void draw()
{
  startScreen(); // this is to initialise the very first screen 
}

void keyPressed() {

  if (keyCode == RIGHT) {
    c.dir(16, 0);
  } else if (keyCode == LEFT) {
    c.dir(-16, 0);
  }
}

void keyReleased() {

  c.dir(0, 0);
}


void startScreen() {
  startscreen = loadImage("startscreen.png");
  image(startscreen, 0, 0, 650, 700);
  if (key==' ') {
    beginGame=true;
  }

  if (beginGame==true) {

    startGame(); // this leads to the main game which contains the cat and obstacle objects
  }
}


void startGame() {

  if (gameover == true) {
    //this is when the user wins and can restart
    endscreen = loadImage("endscreen.png");
    image(endscreen, 0, 0, 650, 700);
    score = 0;
    if (key == 'r') {
      gameover = false;
    }
  } else {

    // start of a brand new round where score starts from zero

    background = loadImage("background.png");
    logo = loadImage("lifeonhigh.png");
    image(background, 0, 0);
    image(logo, 550, 0, 100, 100);
    c.drawCat();
    for (Obstacle obs : obstacles) {
      obs.drawObstacle();
    }
    collision();
    fill(0);
    text("Score: "+score, 10, 10);
  }
}
