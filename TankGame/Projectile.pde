class Projectile {
  int x, y, w, h, speed;

  // Constructor
  Projectile(int x, int y) {
    this. x=x;
    this. y=y;
    w=10;
    h=10;
    speed=7;
  }
  void display() {
    rectMode(CENTER);
    rect(x, y, w, h);
  }
  void move() {
    y = y - speed;
  }
}
