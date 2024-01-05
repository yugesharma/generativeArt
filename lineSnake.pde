int x = 10;      
int y = 480;    
int step = 10;  
int dir = 1;    
int stepUp=5;
void setup() {
  
  size(500, 500);
  background(255);
  
}

void draw() {

  line(x, y, x + 20, y);
  x += dir * 2;

  if (x > 490) {
    x = 490;
    if (stepUp < 10) {
      y -= step;
      stepUp++;
    } else {
      dir = -1;
      stepUp = 0;  
    }
  }

  if (x < 10) {
    x = 10;
    if (stepUp < 10) {
    y -= step;
    stepUp++;
    }else {
      dir = 1;
      stepUp=0;
  }

  if (y < 0) {
    y = height;
  }
}
}