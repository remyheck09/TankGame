class Obstacle {
  int x, y, w, h, speed, health;
  PImage obst1;

  // Constructor
  Obstacle(int x, int y) {
    this. x=x;
    this. y=y;
    w=100;
    h=100;
    speed=4;
    health=100;
    obst1 = loadImage("obsta.png");
  }
  void display() {
    imageMode(CENTER);
    image(obst1, x, y);
  }
  void move() {
    x = x + speed;
    if (x > width) {
      x = 0;
    }
  }
}
