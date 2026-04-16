// Remy Heckmann | Apr 14 2026 | TankGame
PImage bg;
Tank tank1;
ArrayList<Obstacle> obstacles = new ArrayList<Obstacle>();
void setup() {
  size(500, 500);
  bg = loadImage("bg.png");
  tank1 = new Tank();
  obstacles.add(new Obstacle(250,250));
  obstacles.add(new Obstacle(500,250));
}

void draw() {
  background(127);
  imageMode(CORNER);
  image(bg, 0, 0);
  for (int i = 0; i < obstacles.size(); i++) {
  Obstacle obs = obstacles.get(i);
  obs.display();
  obs.move();
}
  tank1.display();
}

void keyPressed () {
 if (key == 'w') {
   tank1. move ('w');
} else if (key == 's') {
  tank1. move ('s');
 } else if (key == 'd') {
    tank1. move ('d');
  } else if (key == 'a') {
    tank1. move ('a');
 }
}
