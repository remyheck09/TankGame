class Tank {
  int x, y, w, h, speed, health;
  PImage t1, t2, t3, t4;
  char idir;

  // Constructor
  Tank() {
    x=100;
    y=100;
    w=100;
    h=100;
    speed=20;
    health=100;
    t1=loadImage("tank.png");
    t2=loadImage("tank2.png");
    t3=loadImage("tank3.png");
    t4=loadImage("tank4.png");
    idir = 'w';
  }
  void display() {
    imageMode(CENTER);
    if (idir =='w') {
      image(t1, x, y);
    }
    if (idir =='d') {
      image(t2, x, y);
    }
    if (idir =='s') {
      image(t3, x, y);
    }
    if (idir =='a') {
      image(t4, x, y);
    }
  }
  void move(char dir) {
    if (dir == 'w') {
      idir = 'w';
      y = y - speed;
    } else if (dir == 's') {
      idir = 'w';
      y = y + speed;
    } else if (dir == 'a') {
      idir = 'a';
      x = x - speed;
    } else if (dir == 'd') {
      idir = 'd';
      x = x + speed;
    }
  }
  boolean intersect(Obstacle o) {
   float distance = dist(x,y,o.x, o.y);
   if (distance < 100) {
   return true; 
   } else {
   return false;
   }
  }
}
