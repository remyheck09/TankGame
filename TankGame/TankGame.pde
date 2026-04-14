// Remy Heckmann | Apr 14 2026 | TankGame
PImage bg;
Tank tank1;
void setup() {
  size(500, 500);
  bg = loadImage("bg.png");
  tank1 = new Tank();
}

void draw() {
  background(127);
  imageMode(CORNER);
  image(bg, 0, 0);
  tank1.display();
}

void keyPressed() {
  if (keyCode == UP)    tank1.y -= tank1.speed;
  if (keyCode == DOWN)  tank1.y += tank1.speed;
  if (keyCode == LEFT)  tank1.x -= tank1.speed;
  if (keyCode == RIGHT) tank1.x += tank1.speed;
}
