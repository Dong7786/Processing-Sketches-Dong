void setup(){
  size(400, 450);
  
  
  
  
}
int PipeX = 300;
int x = 75;
int y = 75;
int v = 0;
int gravity= 1;
int end = 0;
int i = 0;
int random = 300;
void draw(){


  
  background(95, 211, 255);
  fill(118, 216, 70);
  rect(0, 400, 400, 50);
  fill(209, 200, 34);
  ellipse(x, y, 50 ,50);
  y = y - v;
  v= 0;
y = y + gravity;
fill(23, 152, 37);
rect(PipeX, random, 75, 700 );

  PipeX = PipeX - 3;
  if( PipeX < -50){
   PipeX = 450; 
int ran = (int) random(100, 400);
 random = ran;

  }
  if(x  == PipeX && y > random){
  println("()");
    
  }
 
}
void mousePressed(){
 
v = 35;
  
  
  
  
}