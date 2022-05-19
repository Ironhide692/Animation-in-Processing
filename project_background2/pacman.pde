class Pacman{ 
  int pacman; 
  float x;
  float speed;
  
  Pacman(){
    pacman = 100;
    x = -pacman; 
    speed = 6;
  }
  
  void update(){
  x += speed; 
  
  fill(255,255,0); 
  arc(x,450,pacman,pacman,0.52,5.76); 
  fill(0); 
  ellipse(x-25,400,pacman/5,pacman/5);
  
  }
  
  void display(){
  size(1200,700); 
  smooth(); 
  ellipseMode(RADIUS); 
  if (x>width+20){
    x=-20;
  }
 }
}
