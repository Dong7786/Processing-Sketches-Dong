void setup(){
  size(400, 400);
  
  
}
int x = 350; 
int y = 250;
void draw(){
  background(100);
  fill(59, 216, 60);
  ellipse(x, y, 50 , 50);
  noStroke();
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
  
  
  
  
  
  
}