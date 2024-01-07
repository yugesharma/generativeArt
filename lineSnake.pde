float x = 10;      
float y = 480;    
int step = 3;  
int dir = 1;    
int stepUp=2;
void setup() {
  
  size(500, 500);
  background(255);
  
}

void draw() {

  x += dir * 2;

  if (x%10==0){
    triangle(x,y, x+10, y-10, x-10, y-10);
  }

  if (x > width*0.9) {
    x = width*0.9;
    if (stepUp < 10) {
      y -= step;
      stepUp++;
    } else {
      dir = -1;
      stepUp = 2;  
    }
  }

  if (x < width*0.1) {
    x = width*0.1;
    if (stepUp < 10) {
    y -= step;
    stepUp++;
    }else {
      dir = 1;
      stepUp=2;
  }

  if (y < 0) {
    y = height;
  }
}
}