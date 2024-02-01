class Ball {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  
  Ball(int x, int y){
    location = new PVector(x, y);
    velocity =new PVector(0, 0);
    acceleration=new PVector(0,0);
    mass=1;
  }
  
    void applyForce(PVector f) {
      PVector force=PVector.div(f, mass);
      acceleration.add(force);
  }
  
  
  void move(){
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
    //velocity.limit(5);
  }
  

  void bounce() {
    if((location.x>width) || (location.x<0)){
      velocity.x=velocity.x*-1;
    }
    if((location.y>height) || (location.y<0)){
      velocity.y=velocity.y*-1;
    }
  }
   void display() {
     stroke(0);
     strokeWeight(2);
     fill(127);
     ellipse(location.x, location.y, 48, 48);
   }
   
   void createBall(int x, int y) {
     Ball name=new Ball(x, y);
   }
}