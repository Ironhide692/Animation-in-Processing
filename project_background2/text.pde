class Text{ 
  PFont f;
  
  Text(){
   f = createFont("Niagara Engraved",100,true);
  }
  
  void update(){
 textFont(f, 100);
 fill(0, 0, 255);
 text("Track Stars by. Jerson, Lanchi, Dasha, Josh" , 100,400);
  }
  
  void display(){
  size(1200, 700);  
  }

}
