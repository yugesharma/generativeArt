float t;
int count=0;
int colorIndex=0;
boolean changeColor=false;
int [] colors={#f8b48f, #f4874c, #f3702a, #ec5a0d, #ca4d0b, #a84009, #ca4d0b, #ec5a0d, #f3702a, #f4874c };
void setup() {
  background(20);
  size(500, 500);
}

void draw(){
 
  println(colorIndex);
  background(#2a2a2a);
  strokeWeight(3);
  translate(width/2, height/2);
  if (count%50==0) {
     changeColor=!changeColor;
}
  if (changeColor) {
    colorIndex+=1;
    changeColor=!changeColor;
  } 
  
   if (colorIndex==10) {
    colorIndex=0;
  }
  
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