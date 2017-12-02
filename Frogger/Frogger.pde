Car car = new Car(500, 300, 75, 2);
Car car1 = new Car(-100, 200, 100, 1);
Car car2 = new Car(500, 100, 70, 3);
Car car3 = new Car(-100, 0, 85, 2);
void setup(){
  size(400, 400);
  
  
}
int x = 350; 
int y = 400;
void draw(){
  
  background(100);
  fill(59, 216, 60);
  ellipse(x, y, 50 , 50);
  noStroke();
  
  car.display(240, 177, 17);
  car.moveLeft();
    car1.display(240, 87, 70);
  car1.moveRight();
    car2.display(0, 0, 0);
  car2.moveLeft();
    car3.display(255, 255, 255);
  car3.moveRight();
  if(x < 0){
    x = x + 50;
  }else if(x > 400){
   x = x - 50; 
  }
  if(y < 0){
   y = y + 50; 
  }else if(y > 400){
   y = y - 50; 
  }
  
}
void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP){
        
      y = y - 50;
      //Frog Y position goes up
      }
      else if(keyCode == DOWN){
        y = y + 50;
      
      
        //Frog Y position goes down 
      }
      else if(keyCode == RIGHT){
      x = x + 50;
       //Frog X position goes right
      }
      else if(keyCode == LEFT){
        
      x = x - 50;
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
if ((frogY > car.getY() && frogY < car.getY()+45) && (frogX > car.getX() && frogX < car.getX()+car.getSize())){
          return true;
          
}
    else {
        return false;

  }
 if(car.intersects() == true){
   
 }
    

  
  
  
  
  
  