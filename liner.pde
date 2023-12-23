float t;

void setup() {
  background(20);
  size(500, 500);
}

void draw(){
  stroke(255);
  strokeWeight(5);
  
  translate(width/2, height/2);
  
  point(x1(t), y1(t));
  point(x2(t), y2(t));
  t++;
}
  float x1(float t) {
    return sin(t/10)*100 + sin(t/4)*20;
  }
  
   float y1(float t) {
    return cos(t/10)*60;
  }
  
  float x2(float t) {
    return sin(t/5)*10 + sin(t)*50;
  }
  
   float y2(float t) {
    return cos(t/5)*250+cos(t/5)*30;
  }
