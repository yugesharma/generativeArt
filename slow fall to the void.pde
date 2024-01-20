float x = 250;      
float y = 250;    
int i=0;
int j=0;
void setup() {
  
  size(500, 500);
  background(255);
  
}

void draw() {
  int r= int(random(-50,50));
  int k= int(random(-60,50));
  float ii=i*r;
  float jj=j*k;
  println(ii);
  line(x, y, x+ii, y+jj);
  i++;
  j++;
}