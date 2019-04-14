public void setup() {
  size(640, 430);
  frameRate(200);
}
 
private float mC = -0.8;
private float mY = 0.156;
private float x1, y1;
private float max = 300;
private color myColor = color(0,0,0);
 
public void draw() {
  background(#FF0000 );
  
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      x1 = 1.5 * (x - width / 2) / (0.5 * width);
      y1 = (y - height / 2) / (0.5 * height);
      float i = max;
      for(int j = 0; j<max;j++){
        if(x1 * x1 + y1 * y1 < 4 ){
        float temp = x1 * x1 - y1 * y1 + mC;
        y1 = 2.0 * x1 * y1 + mY;
        x1 = temp;
        i -= 1;
      }
      
      color c = myCol(i);
      if (c != myColor){
        set(x, y, c);
      }
      
      
    }
  }
    }
  mC*=1.0 + Math.random()/10-Math.random()/10;
  mY*=1.00;
}
 
color myCol(float cP) {
  
 
  float r, g, b;
  if (cP < 60) {
    r = 0;
    g = 128;
    b = 128;
  } else if (cP < 120) {
    r = 0;
    g = 0;
    b = 128;
  } else if (cP < 180) {
    r = 128;
    g = 0;
    b = 0;
  } else if (cP < 240) {
    r = 70;
    g = 240;
    b = 240;
  } else if (cP < 300) {
    r = 0;
    g = 0;
    b = 0;
  } else {
    r = 255;
    g = 255;
    b = 255;
  }
 
  
 
  return color(r, g, b);
}
public  void mouseClicked(){
  mC = -0.7269;
  mY = 0.1889;
  redraw();
  //0.4 + 0.6i
  //Julia set for fc, c = −0.8i
}
public  void mouseDragged(){
 
   mC = -0.835;
  mY = -0.2321;
  redraw();
}
public void mouseMoved(){
  //0.285 + 0.01i
  mC = 0.285;
  mY = 0.01;}
