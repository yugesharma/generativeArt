float x = 250;      
float y = 250;    
int i=0;
int j=0;
float randomR=50;
float randomK=60;
void setup() {
  
  size(500, 500);
  background(255);
  
}

void draw() {
  int r= int(random(-randomR,randomR+7));
  int k= int(random(-randomK-10,randomK));
  float ii=i*r;
  float jj=j*k;
  println(i);
  line(x, y, x+ii, y+jj);
  
  
  if(i>100) {
      line(x, y, x+ii*3, y+jj*1.2);
  }
  
  if(i>200) {
    line(x, y, x+ii*4, y+jj*-4);
  }
  
  if(i>400) {
      strokeWeight(int(random(1,3)));
      line(x, y, x+ii+10, y+jj-80);
      line(x, y, x+ii-24, y+jj*-4);
  }
  if(i>600) {
      stroke(int(random(0,100)));
      strokeWeight(int(random(2,6)));
      line(x, y, x+ii*7, y+jj*-11);
      line(x, y, x+ii*4, y+jj*+42);
  }
  if(i>800) {
      stroke(0);
      strokeWeight(int(random(2,6)));
      line(x, y, x+ii*14, y+jj+64);
      line(x, y, x+ii+18, y+jj*-77);
  }
  
  if(i>900) {
      stroke(0);
      strokeWeight(int(random(3,8)));
      line(x, y, x+ii*4, y+jj+50);
      line(x, y, x+ii+20, y+jj*-60);
  }
  
  i++;
  j++;
  randomR+=100;
  randomK+=100;
}