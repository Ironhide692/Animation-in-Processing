class Watch{ 
  PFont v;
  
  Watch(){
   v = createFont("Niagara Engraved",100,true);
  }
  
  void update(){
  textFont(v, 100);
  fill(0, 0, 255);
  text("Thank You For Watching!" , 310,400);
   }
  
  void display(){
  size(1200, 700);  
  }
}
