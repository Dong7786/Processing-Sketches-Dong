
void setup() {
  size(400, 400);

  background(255);
}

float getWormX;
float getWormY;
int worms = 10;
void draw() {
  
float x = random(400);
float y = random(400);

  for (int i = 0; i <= worms; i++) {
    
    fill(100, 150, random(255));
    ellipse( getWormX(i), getWormY(i), 10, 10);
      noStroke();
  }

makeMagical();
}
float frequency = .001;
float noiseInterval = PI; 

void makeMagical() {
  fill( 0, 0, 0, 10 );rect(0, 0, width, height);noStroke();
}

float getWormX(int i) {
  return map(noise(i*noiseInterval + frameCount * frequency), 0, 1, 0, width);
}

float getWormY(int i) {
  return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
}
void mousePressed(){
 worms++;
  background(75, 75, 90);
  
  
}