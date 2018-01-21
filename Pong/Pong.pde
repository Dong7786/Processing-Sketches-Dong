void setup(){
size(450, 420); 
}
 float x = 50;
  float y = 50;
  float s = 5;
  float drop = 4;
void draw(){
 x = x + s ;
 y = y + drop;
 background(60);
rect(400, 0, 400, 420);
rect( 0, 0, 400, 10);
rect(0, 410, 420, 10);
  ellipse(x, y ,50 ,50);
  rect(0,mouseY, 10, 75);
  noStroke();
  if(x >= 375){
   s = -5; 
  }
  if(y >= 385){
   drop = -4; 
 
  }
  
  
  
}