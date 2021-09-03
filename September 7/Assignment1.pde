


// Change size and colour of canvas

void setup(){
  
  size(400,500);
  
  background(243,207,198);
}

void draw(){
  
  // shortcuts for colours to call them later
  
  color skin = color(224,172,105);
  color hair = color (44,34,43);
  color eye = color(59,48,36);
  color top = color (177,156,217);
  color skirt = color(121,143,168);
  color shoes = color (248,240,227);
  
  // back hair
  fill(hair);
  noStroke();
  ellipse(200,150,150,220);
  
  //neck 
  
  fill(skin);
  noStroke();
  rect(185,150,30,50);
  
  //ears
  fill(skin);
  noStroke();
  ellipse(147,125,20,27);
  ellipse(250,125,20,27);
  
  //face
  fill(skin);
  noStroke();
  circle(200,115,110);
  
  //eyes
  fill(255);
  noStroke();
  
  circle(175,115,35);
  circle(225,115,35);
  
  fill(eye);
  noStroke();
  circle(180,120,20);
  circle(230,120,20);
  
  fill(255);
  noStroke();
  circle(185,120,7);
  circle(235,120,7);
  
  //smile
  fill(skin);
  stroke(0);
  strokeWeight(2);
  arc(200, 145, 20, 20, radians(30), radians(150), OPEN);
  
  //nose
  fill(skin);
  stroke(0);
  strokeWeight(1.5);
  arc(190, 135, 30, 40, radians(330), radians(370));
  
  //curtain bangs
  fill(hair);
  noStroke();
  arc(150,70,90,90,radians(-30),radians(120),OPEN);
  
  arc(230,60,90,90,radians(40),radians(205),OPEN);
  
  //legs
  
  fill(skin);
  noStroke();
  rect(160,305,30,60);
  rect(210,305,30,60);
  
   //arms
  
  stroke(skin);
  strokeWeight(12.5);
  line(150, 210, 140, 240);
  line(140,240,170,270);
  line(245,210,265,240);
  line(265,240,235,270);
  
  //skirt
  
  fill(skirt);
  noStroke();
  triangle(140,305,160,255,180,305);
  triangle(220,305,240,255,260,305);
  rect(160,255,80,50);
  
  
  //top
  fill(top);
  noStroke();
  triangle(140,215,160,185,180,215);
  triangle(220,215,240,185,260,215);
  rect(160,185,80,60);
  fill(skin);
  rect(160,245,80,10);
  
  //shoes
  fill(0);
  noStroke();
  rect(145,365,45,20);
  rect(210,365,45,20);
  
  //skirt buttons
  
  fill(192,192,192);
  noStroke();
  circle(200,262,10);
  circle(200,277,10);
  circle(200,292,10);
  
  //top neck
  
  fill(skin);
  noStroke();
  circle(200,185,30);
  
  
  
 
  
  
}
