  public void setup(){
    size(400, 400);
    background(0);
  }
  public void draw(){
    stroke(255, 59, 85);
    sierpinski(35,375,350);
    stroke(223, 243, 245);
    sierpinski(25,375,350);
    stroke(255);
    sierpinski(5,375,350);
  }

  public void sierpinski(int x, int y, int len) {
    if(len <= 20){
      triangle(x, y, x+len/2, y-len, x+len, y);
    }else{
      sierpinski(x, y, len/2);
      sierpinski(x+len/2, y, len/2);
      sierpinski(x+len/4, y-len/2, len/2);
    }
  }
