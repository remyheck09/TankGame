class Obstacle {
  int x, y, w, h, speed, health;
  //PImage obst1;

  // Constructor
 Obstacle(int x, int y) {
   this. x=x;
   this. y=y;
    w=100;
    h=100;
    speed=4;
    health=100;
  }
  void display() {
    rectMode(CENTER);
    rect(x,y,w,h);
  }
  void move() {
    x = x + speed;
    if(x > width){
    x = 0;
  }
    }
}
