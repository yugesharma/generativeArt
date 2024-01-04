int x = 10;      
int y = 390;    
int step = 10;  
int dir = 1;    

void setup() {
  
  size(400, 400);
  background(255);
  
}

void draw() {

  line(x, y, x + 20, y);
  x += dir * 2;

  if (x > 380) {
    x = 380;
    y -= step;
    dir = -1;
  }

  if (x < 8) {
    x = 8;
    y -= step;
    dir = 1;
  }

  if (y < 0) {
    y = 390;
  }
}
