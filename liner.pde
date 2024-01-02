float t;
int count=0;
int colorIndex=1;
boolean changeColor=true;
int [] colors={#9e0142, #d53e4f, #f46d43, #fdae61, #FDDA0D, #e6f598, #abdda4, #66c2a5, #3288bd, #5e4fa2};
void setup() {
  background(20);
  size(500, 500);
}

void draw(){
  background(#F7F7F5);
  strokeWeight(1);
  translate(width/2, height/2);
  if (count%50==0) {
     changeColor=!changeColor;
}
  if (changeColor) {
    colorIndex=int(random(0, 10));
  }
  println(colorIndex);
  stroke(colors[colorIndex]);
  for (int i=0; i<6; i++) {
  line(x1(t+i),y1(t+i),x2(t+i),y2(t+i));
   line(x2(t+i),y2(t+i), x3(t+i*i), y3(t+i));
  line(x1(t+i),y1(t+i), x3(t+i*i), y3(t+i));
  }
  
  count+=1;
  t+=0.2;
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
  
  float x3(float t){
  return sin(t/6);
}

float y3(float t){
  return cos(t/8)*20+sin(t/4)*160;
}