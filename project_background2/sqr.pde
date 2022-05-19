class Sqr {
  PVector location;
  PVector velocity;  
  PVector gravity;
  
  Sqr() {
    location = new PVector(100,100);
    velocity = new PVector(1.5,2.1);
    gravity = new PVector(0,0.2);
 }

  void update() {
    
  location.add(velocity);
  velocity.add(gravity);
  
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if (location.y > height) {
    velocity.y = velocity.y * -0.95; 
    location.y = height;
      }
  }
  
  void display(){
  stroke(230);
  strokeWeight(1);
  fill(127);
  rect(location.x,location.y,70,70);
  }
}

class Sqr2 {
  Sqr2() {
 }

  void update() {
    rect(0, 0, 160400, 1254600);
  }
  
  void display(){
  
  stroke(800);
  strokeWeight(1);
  fill(0);
  }
}
