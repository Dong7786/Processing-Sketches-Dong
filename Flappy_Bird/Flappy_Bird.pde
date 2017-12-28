void setup() {
  size(400, 450);
}
float PipeX = 300;
float x = 75;
float y = 75;
float v = 0;
float gravity = 0.3;
float end = 0;
float i = 0;
float random = 300;
float endgame = 1;
int Score = 0;
float random2;
int start = 1;
void draw() {
if(start <= 0){
 
}else{
 x = 75;
 y = 75;
 PipeX = PipeX + 3; 
}
  if (endgame == 0) {
    PipeX = -51;
    x = 75;
    y = 75;
    endgame ++ ;
  }

  background(95, 211, 255);

  fill(209, 200, 34);
  ellipse(x, y, 50, 50);
  y = y - v;

  v = v - gravity;
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
  if ( PipeX < -50) {
    PipeX = 450; 
    Score++;
    int ran = (int) random(100, 400);
    random = ran;
  }

  if (x == PipeX && y > random) {
    endgame++;
  }
  if (x == PipeX && y < random2) {
    endgame++;
  }
  if (y >= 400) {
    endgame++;
  }
  if (y <= -25) {
    endgame++;
  }
  if (endgame > 1) {
    start++;
    v = 0;
    PipeX = PipeX + 3;
    fill(66, 202, 234);
    rect(0, 0, 400, 550); 
    fill(209, 200, 34);
    ellipse(75, 75, 50, 50);
      fill(23, 152, 37);
      rect(250, 300, 75, 700);
      rect(250, 175, 75, -700);
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
void mousePressed() {
start = 0;
  v = 7;
}
void keyPressed() {

  endgame = 0;
start++;
  Score = -1;
}