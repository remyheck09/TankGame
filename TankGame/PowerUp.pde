class PowerUp {
  float x, y, w, h, speed;
  char type;
  //PImage obst1;
  //char idir;
  // Constructor
  PowerUp(float w, float h) {
    this.w=w;
    this.h=h;
    speed=4;
  if(random(3) == 1) {
  type = 'h';
  }
   else if(random(2) == 1) {
  type = 't';
  }
  else {
  type = 'a';
}
    //obst1 = loadImage("obsta.png");
  }
  void display() {
   if(type == 'a') {
  fill(200,0,0);  
  ellipse(x,y,w,h);
  fill(255);
  text("ammo", x, y);
   } else  if(type == 'h') {
  fill(0,200,0);  
  ellipse(x,y,w,h);
  fill(255);
  text("health", x, y);
   } else  if(type == 't') {
  fill(0,0,200);  
  ellipse(x,y,w,h);
  fill(255);
  text("t", x, y);
   }
    //imageMode(CENTER);
    //image(obst1, x, y);
  }
  void move() {
  y = y + speed;
    }
  }
