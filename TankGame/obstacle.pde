class Obstacle {
  float x, y, w, h, speed, health;
  PImage obst1;
  char idir;
  // Constructor
  Obstacle(float w, float h) {
    this.w=w;
    this.h=h;
    speed=5;
    health=5;
    if (int(random(4))==2) {
      idir = 'w' ;
      x= random(width);
      y= height + 100;
    } else if (int(random(3))==1) {
      idir = 'a' ;
      x= width+100;
      y= random(height);
    } else if (int(random(3))==1) {
      idir = 'd' ;
      x= -100;
      y= random(height);
    } else {
      idir= 's';
      x= random(width);
      y=  -100;
    }
    obst1 = loadImage("obsta.png");
  }
  void display() {
    imageMode(CENTER);
    image(obst1, x, y);
  }
  void move() {
    switch(idir) {
    case 'w':
      y = y - speed;
      break;
    case 'a':
      x=x-speed;
    case 's':
      y = y + speed;
      break;
    case 'd':
      x = x + speed;
      break;
    }
  }
  boolean reachedEdge() {
    return x >= width + 150 || x <= -150 || y > height + 150 || y < -150;
  }
  boolean intersect(Projectile p) {
   float distance = dist(x,y,p.x, p.y);
   if (distance < 100) {
   return true; 
   } else {
   return false;
   }
  }
}
