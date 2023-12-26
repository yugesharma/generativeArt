float t;

void setup() {
  background(20);
  size(500, 500);
}

void draw(){
  background(20);
  stroke(255);
  strokeWeight(5);
  
  translate(width/2, height/2);
  
  for (int i=0; i<6; i++) {
  line(x1(t+i+10), y1(t+i),x2(t+i), y2(t+i));
  }
  t+=0.3;
}
  float x1(float t) {
    return sin(t/5)*250 + sin(t/4)*60;
  }
  
   float y1(float t) {
    return cos(t/8)*200;
  }
  
  float x2(float t) {
    return sin(t/6)*200 + sin(t)*10;
  }
  
   float y2(float t) {
    return cos(t/40)*200-cos(t/60)*30;
  }