void setup(){
  size(400, 450);
  
  
  
  
}
int PipeX = 300;
int x = 75;
int y = 75;
int v = 0;
int gravity= 2;
int end = 0;
int i = 0;
int random = 300;
int endgame = 1;
int Score = 0;
int random2;

void draw(){

if(endgame == 0){
 PipeX = -51;
 x = 75;
 y = 75;
  endgame ++ ;
  
}
  
  background(95, 211, 255);
  
  fill(209, 200, 34);
  ellipse(x, y, 50 ,50);
  y = y - v;
  v= 0;
y = y + gravity;
fill(23, 152, 37);
random2 = random - 125;
rect(PipeX, random, 75, 700 );
rect(PipeX, random2, 75, -700);
fill(118, 216, 70);
  rect(0, 400, 400, 50);
  fill(0);
  textSize(20);
  text("Score = " + Score, 50, 50);
  PipeX = PipeX - 3;
  if( PipeX < -50){
   PipeX = 450; 
   Score++;
int ran = (int) random(100, 400);
 random = ran;

  }
  
  if(x == PipeX && y > random){
    endgame++;
  }
    if(x == PipeX && y < random2){
    endgame++;
  }
if(y >= 400){
 endgame++; 
  
}
if(y <= 0){
 endgame++; 
  
}
 if(endgame > 1){
   PipeX = PipeX + 3;
   fill(66, 202, 234);
  rect(0,0,400,550); 
   fill(209, 200, 34);
   ellipse(75 , 75, 50 ,50);
    fill(118, 216, 70);
  rect(0, 400, 400, 50);
  fill(0);
  textSize(25);
  text("Game Over", 125, 200);
  text("Press any key to continue", 50, 435);
  textSize(20);
  text("Score = " + Score, 150, 250);
  
 }
}
void mousePressed(){
 
v = 45;
 
  
  
}
void keyPressed(){
  
  endgame = 0;
  
  Score = -1;
}