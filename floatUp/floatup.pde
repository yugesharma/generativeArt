Ball b;

void setup() {
  size(600, 400);
  
}

void draw() {
  if(mousePressed) {
      b= new Ball(mouseX, mouseY);
  }
  background(255);
  PVector f=new PVector(0,-0.3);
  //PVector w=new PVector(0.03,0);
  //b.applyForce(w);
  
  if(b instanceof Ball) {
    b.applyForce(f);

  PVector drag =b.velocity.get();
  drag.normalize();
  float c=-0.03;
  float speed=b.velocity.mag();
  drag.mult(c*b.velocity.mag()*b.velocity.mag());
  b.applyForce(drag);
  
  b.move();
  b.bounce();
  b.display();  
  }
}