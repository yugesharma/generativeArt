float t=0;
float x = 250;      
float y = 250;    


void setup () {
  background(255);
  size(500, 500);
}

void draw() {
  fill(0);
  point(x,y);
  
  strokeWeight(3);
  
   float h = noise(t);
   h=map(h,0,1,0,8);
   
  
  if(h<2){
    x--;}
  else if(h>2 && h<4){
    x++;}
  else if(h>4 && h<6){
    y--;}
   else {
     y++;}
     
     t+=0.1;
     
    x=constrain(x,0,width-1);
    y=constrain(y,0,height-1);
    
}