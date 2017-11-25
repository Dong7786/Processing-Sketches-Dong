

int x = (int)random(1000);
int y =50;
int score = 0;
void checkCatch(int x) {
  if (x > mouseX-50 && x < mouseX+50) {
    score++;
  } else if (score > 0) {

    score--;
  }
}
void setup() {

  size(1000, 900);
}



void draw() {
  background(59, 61, 62);
  textSize(24);
  fill(255,255,255);
  text("Score: " + score, 20, 20);
  fill(15, 185, 245);
  ellipse(x, y, 15, 25);
  fill(135, 140, 142);
  rect(mouseX-50, 800, 100, 100);

  y= y +10;

  noStroke();
  if (y > 899) {
    checkCatch(x);
    x = (int)random(1000);
    y = 50;
  }
}