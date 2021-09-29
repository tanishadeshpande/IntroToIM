Table tablea;

color Green = color(202,231,193);
color Red = color(255,105,97);


void setup(){
  background(0);
  size(1000,1000);

  tablea = loadTable("movieratings.csv","header");
  
 
}
 
void circles(){
 
  
  for (TableRow row: tablea.rows()) {
    
    String title = row.getString("Title");
    int rating = row.getInt("Rating");
    
   
    
    if (rating >= 50) {
      
      fill(Green,70);
      
      xRadius = 15*(rating/10);
      
      
    } else {
      
      fill(Red,70);
      xRadius = 15*((100-rating)/10);
    }
   
    
    noStroke();
    
     
    xPos = random(0,width);
    yPos = random(0,height);
   
    ellipse(xPos,yPos,xRadius,xRadius);
    
    
  }
  
}


void draw(){
  
  circles();
  noLoop();
  
}
