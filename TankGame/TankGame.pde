// Remy Heckmann | Apr 14 2026 | TankGame
PImage bg;
Tank tank1;
ArrayList<Obstacle> obstacles = new ArrayList<Obstacle>();
ArrayList<Projectile> projectile = new ArrayList<Projectile>();
int score;
Timer obsTimer;

void setup() {
  size(500, 500);
  bg = loadImage("bg.png");
  tank1 = new Tank();
  obstacles.add(new Obstacle(250, 250));
  obstacles.add(new Obstacle(500, 250));
  score = 0;
  obsTimer = new Timer(1000);
  obsTimer.start();
}

void draw() {
  background(127);
  imageMode(CORNER);
  image(bg, 0, 0);
  //timer for obstacles
  if (obsTimer.isFinished()) {
    obstacles.add(new Obstacle(-100, int(random(height))));
    obsTimer.start();
  }
  //obstacles.add
  // displays obstacle
  for (int i = 0; i < obstacles.size(); i++) {
    Obstacle obs = obstacles.get(i);
    obs.display();
    obs.move();
    if (obs.reachedEdge()) {
      obstacles.remove(i);
    }
    //detect colision to tank
    if (tank1.intersect(obs)) {
      tank1.health=tank1.health- 100;
      obstacles.remove(obs);
    }
  }
  // displays projectiles
  for (int i = 0; i < projectile.size(); i++) {
    Projectile p = projectile.get(i);
    for (int j = 0; j < obstacles.size(); i++) {
      Obstacle o = obstacles.get(j);
      if (p.intersect(o)) {
        score = score + 100;
        projectile.remove(i);
        obstacles.remove(j);
        continue;
      }
    }
    p.display();
    p.move();
    if (p.reachedEdge()) {
      projectile.remove(i);
    }
  }

  tank1.display();
  scorePanel();
  println("objects in memory:" +obstacles. size());
  println("Projectiles in memory:" +projectile. size());
}

void scorePanel() {
  fill(127, 127);
  rectMode(CENTER);
  rect(width/2, 40, width, 35);
  fill(255);
  textSize(30);
  textAlign(CENTER);
  text("Score:" + score, width/2, 50);
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
void mousePressed() {
  projectile.add(new Projectile(tank1.x, tank1.y));
}
