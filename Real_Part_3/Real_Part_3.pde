Star[] nightSky = new Star[200];
Spaceship ship = new Spaceship();
int ast = 10;
ArrayList<Asteroid> rocks = new ArrayList<Asteroid>();
boolean left;
boolean right;
boolean forward;
boolean slow;
ArrayList <Bullet> shots = new ArrayList<Bullet>();
public void setup() 
{
  size(1000, 1000);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
  for (int j = 0; j < ast; j++) {
    Asteroid ast = new Asteroid(); 
    rocks.add(ast);
  }
}
public void draw() 
{
  background(0);
  fill(255, 0, 0);
  textSize(30);
  text("location X" + (int)ship.getX(), 50, 50*1);
  text("location Y"+ (int)ship.getY(), 50, 50*2);
  text("Remaining Asteroids"+ rocks.size(), 50, 50*3);
  text("Point Direction"+(int) ship.getPointDirection(), 50, 50*4);
  text("X speed"+(int)ship.getmyspeedX(), 50, 50*5);
  text("Y speed"+(int)ship.getmyspeedY(), 50, 50*6);
  for (int i = rocks.size()-1; i>=0; i--) {
    Asteroid anAst = rocks.get(i);
    Boolean collided = anAst.collide();
    if (collided) {
      rocks.remove(i);
      break;
    }
  }

  for (int j = (rocks.size()-1); j >= 0; j--)
  {
    rocks.get(j).move();
    rocks.get(j).show();
    float d = dist((float)ship.getX(), (float)ship.getY(), (float) rocks.get(j).getX(), (float) rocks.get(j).getY());
    if (d < 30) {
      rocks.remove(j);
    }
  }
  for (int i = 0; i < nightSky.length; i++)
  {
    noStroke();
    nightSky[i].show();
  }
  for (int j = 0; j < rocks.size(); j++)
  {
    rocks.get(j).show();
  }
  ship.move();
  ship.show();

  if (forward == true) {
    ship.accelerate(0.1);
  }
  if (left == true) {
    ship.turn(-4);
  }
  if (right == true) {
    ship.turn(4);
  }
  if (slow == true) {
    ship.accelerate(-0.1);
  }

  for (int k = shots.size()-1; k>= 0; k--) {
    Bullet b = shots.get(k);
    b.accelerate(.1);
    //  b.setPointDirection(ship.getPointDirection());
    b.move();
    b.show();
    if (b.getToRemove()) {
      shots.remove(k);
    }
  }
}
public void keyPressed() {
  if (key == 'q') {
    ship.setX(Math.random()*width);
    ship.setY(Math.random()*height);
    ship.setPoint(Math.random()*360);
  }
  if (key == 'w') {
    forward = true;
  }
  if (key == 'd') {
    right = true;
  }
  if (key == 'a') {
    left = true;
  }
  if (key == 's') {
    slow = true;
  }
  if (key == 'e') {
    ship.setXspeed(0);
    ship.setYspeed(0);
  }

  if (key == ' ') {
    shots.add(new Bullet(ship));
  }
}

public void keyReleased() {
  if (key == 'w') {
    forward = false;
  }
  if (key == 'd') {
    right = false;
  }
  if (key == 'a') {
    left = false;
  }
  if (key == 's') {
    slow = false;
  }
}
