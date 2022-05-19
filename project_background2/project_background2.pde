import ddf.minim.*;
Minim minim;
AudioPlayer player;
PImage bg;
int bgx, bgy;
Sqr s;
Pacman p;
Cube c;
sineCosine sc;
Text t;
Ball b;
Watch w;
curvedCircle cc;
Sqr2 ss;

void setup(){
  size(1200, 700, P3D);
  bg = loadImage("bg2.jpg");
  music();
  s = new Sqr();
  p = new Pacman();
  c = new Cube();
  sc = new sineCosine();
  t = new Text();
  b = new Ball();
  w = new Watch();
  cc = new curvedCircle();
  ss = new Sqr2();
  
}

void draw(){
   int timer = millis();
   bg();
   if(timer > 120000){
    ss.display();
    ss.update();
   }
   if(timer > 120000 && timer < 190000){
    ss.display();
    ss.update();
  }
   if(timer > 11000 && timer < 21000){
     s.display();
     s.update();
  }
   if(timer > 0000 && timer < 11000){
    t.display();
    t.update();
  }
   if(timer > 35500 && timer < 53000){
    p.display();
    p.update();
  }
   if(timer > 57000 && timer < 71000){
    s.display();
    s.update();
  }
   if(timer > 22000 && timer < 35000){
    sc.display();
    sc.update();
  }
   if(timer > 83000 && timer < 97000){
    c.display();
    c.update();
  }
   if(timer > 000 && timer < 110900){
    b.update();
    b.display();
  }
   if(timer > 71500 && timer < 73000) {
    cc.update();
    cc.display();  
  }
   if(timer > 73500 && timer < 80000) {
    sc.update();
    sc.display();  
  }
   if(timer > 97000 && timer < 110000){
    p.display();
    p.update();
  }
   if(timer > 111000 && timer < 120000){
    w.display();
    w.update();
  }
}


void bg(){
  image(bg, bgx, bgy);
  image(bg, bgx + bg.width, bgy);
  bgx = bgx -2; //This controls the speed
  if(bgx < -bg.width){
    bgx = 0;
  }
}

void music(){
  minim = new Minim(this);
  player = minim.loadFile("projectAudio_rev1.mp3", 2048);
  player.play();
}
