Car car = new Car(500, 300, 75, 2);
Car car1 = new Car(-100, 200, 100, 1);
Car car2 = new Car(500, 100, 70, 3);
Car car3 = new Car(-100, 0, 85, 2);
Car car31 = new Car(-300, 0, 85, 2);
Car car21 = new Car(800, 100, 70, 3);
Car car11 = new Car(-400, 200, 75, 1);
Car car12 = new Car(-500, 200, 70, 1);
Car car01 = new Car(800, 300, 90, 2);
void setup(){
  size(400, 400);
  
  
}
int frogx = 350; 
int frogy = 422;
int score = 0;
void draw(){
  
  background(100);
  fill(0);
  textSize(20);
  text("Score = " + score, 50, 375 );
road(0,0, 400,50);
road1(0,100,400,50);
road(0, 200, 400, 50);
road1(0, 300, 400, 50);
  fill(59, 216, 60);
  ellipse(frogx, frogy, 50 , 50);
  noStroke();
  
  car.display(240, 177, 17);
  car.moveLeft();
   if( car.intersects(car) == true){
   frogx = 350;
   frogy = 422;
 }
 
    
    car1.display(240, 87, 70);
  car1.moveRight();
  if( car.intersects(car1) == true){
   frogx = 350;
   frogy = 422;
 }
    car2.display(100, 100, 100);
  car2.moveLeft();
  if( car.intersects(car2) == true){
   frogx = 350;
   frogy = 422;
 }
    car3.display(255, 255, 255);
  car3.moveRight();
  if( car.intersects(car3) == true){
   frogx = 350;
   frogy = 422;
 }
 car31.display(140, 140, 240);
  car31.moveRight();
   if( car.intersects(car31) == true){
   frogx = 350;
   frogy = 422;
 }
 car21.display(221,121,222);
  car21.moveLeft();
  if( car.intersects(car21) == true){
   frogx = 350;
   frogy = 422;
 }
 car11.display(202, 202, 102);
  car11.moveRight();
  if( car.intersects(car11) == true){
   frogx = 350;
   frogy = 422;
 }
 car12.display(35, 76, 188);
  car12.moveRight();
  if( car.intersects(car12) == true){
   frogx = 350;
   frogy = 422;
 }
 car01.display(147 , 12, 14);
  car01.moveLeft();
   if( car.intersects(car01) == true){
   frogx = 350;
   frogy = 422;
 }
  if(frogx < 0){
    frogx = frogx + 50;
  }else if(frogx > 400){
   frogx = frogx - 50; 
  }
  if(frogy < 0){
   frogx = 350;
   frogy = 422;
   score = score + 1;
  }else if(frogy > 400){
   frogy = frogy - 50; 
  }
  
}

void road(int x, int y, int x1, int y1){

  fill(0);
  rect(x,y,x1,y1);
  fill(255);
  rect(x + 50, y + 19, x + 50, x + 12);
  rect(x + 150, y + 19, x + 50, x + 12);
  rect(x + 250, y + 19, x + 50, x + 12);
  rect(x + 350, y + 19, x + 50, x + 12);
}
void road1(int x, int y, int x1, int y1){

  fill(0);
  rect(x,y,x1,y1);
  fill(255);
  rect(x + 0, y + 19, x + 50, x + 12);
  rect(x + 100, y + 19, x + 50, x + 12);
  rect(x + 200, y + 19, x + 50, x + 12);
  rect(x + 300, y + 19, x + 50, x + 12);
}
void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP){
        
      frogy = frogy - 50;
      //Frog Y position goes up
      }
      else if(keyCode == DOWN){
        frogy = frogy + 50;
      
      
        //Frog Y position goes down 
      }
      else if(keyCode == RIGHT){
      frogx = frogx + 50;
       //Frog X position goes right
      }
      else if(keyCode == LEFT){
        
      frogx = frogx - 50;
        //Frog X position goes left
      }
   }
}
class Car {
  int x;
  int y;
  int size;
  int speed;
  
 
  Car(int x, int y, int size, int speed){
    this.x = x;
    this.y = y;
    this.size = size;
    this.speed = speed;
   
  }
   void moveLeft(){
    x = x - speed; 
 
   if(x == -100){
    x = 500; 
   } 
 }
 void moveRight(){
    x = x + speed; 
 
   if(x == 500){
    x = -100; 
   } 
 }
      void display(int r, int g, int b) {
   fill(r,g,b);
    rect(x ,y,  size, 45);
  }
 int getX(){
  return x; 
 }
 int getY(){
  return y;    
 }
 int getSize(){
  return size; 
 }


 boolean intersects(Car car) {
if ((frogy > car.getY() && frogy < car.getY()+45) && (frogx > car.getX() && frogx < car.getX()+car.getSize())){
  if(score >= 1){
  score = score - 1;
  }
          return true;
          
}
 
    else {
        return false;

  }
 }
 
}

  
  
  
 