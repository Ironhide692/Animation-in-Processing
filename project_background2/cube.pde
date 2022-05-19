class Cube{ 
  int Off_Max;
  
  Cube(){
    Off_Max = 300;
  }
  
  void update(){
  translate(width / 2, height / 2, -Off_Max);
  rotateX(frameCount * .01);
  rotateY(frameCount * .01);
  rotateZ(frameCount * .01);
  
  for (int xo = -Off_Max; xo <= Off_Max; xo += 50) {
    for (int yo = -Off_Max; yo <= Off_Max; yo += 50) {
      for (int zo = -Off_Max; zo <= Off_Max; zo += 50) {
        pushMatrix();
        translate(xo, yo, zo);
        rotateX(frameCount * .02);
        rotateY(frameCount * .02);
        rotateZ(frameCount * .02);
        fill(colorFromOffset(xo), colorFromOffset(yo), 
          colorFromOffset(zo));
        box((float) (20 + (Math.sin(frameCount / 20.0)) * 15));
        popMatrix();
      }
    }
   }
  }
  
  void display(){
  }

int colorFromOffset(int offset) {
  return (int) ((offset + Off_Max) / (2.0 * Off_Max) * 255);
    }
}
