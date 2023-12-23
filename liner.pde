float t;

void setup() {
  background(20);
  size(500, 500);
}

void draw(){
  stroke(255);
  strokeWeight(5);
  
  translate(width/2, height/2);
  
  point(x(t), y(t));
  t++;
}
  float x(float t) {
    return sin(t/10)*100 + sin(t)*100;
  }
  
   float y(float t) {
    return sin(t/30)*100;
  }
