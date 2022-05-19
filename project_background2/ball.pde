class Ball{ 
  int xPos = 200; 
  
  void update(){ 
  size (1200,700);
  smooth();
  noStroke();
  fill(0,0,255);
  } 
  
  void display(){ 
  ellipse(xPos, 500, 40, 40);
  xPos=xPos+6;
  if (xPos>width+20){
    xPos=-20;
  } 
 } 
} 
