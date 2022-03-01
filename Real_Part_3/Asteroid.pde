class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid() {
    rotSpeed = (double)(Math.random()*40);

    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];

    myColor = color(255, 255, 255);

    myXspeed = (double)(Math.random()*10-5);
    myYspeed = (double)(Math.random()*10-5);


    xCorners[0] = -22;
    yCorners[0] =  -16;

    xCorners[1] = 14;
    yCorners[1] = -16;

    xCorners[2] = 26;
    yCorners[2] = 0;

    xCorners[3] = 12;
    yCorners[3] = 20;

    xCorners[4] = -22;
    yCorners[4] = 16;

    xCorners[5] = -10;
    yCorners[5] = 0;

    myCenterX = 100;
    myCenterY = 100;
  }
  public Boolean collide() {
    Boolean collided = false;
    for (int i= shots.size()-1; i>= 0; i--) {
      collided = false;
      Bullet abullet = shots.get(i);
      if (dist((float)abullet.getX(), (float) abullet.getY(), (float) getX(), (float)getY())<=30) {
        shots.remove(i);
        collided = true;
        break;
      }
    }
    return collided;
  }
  public void move() {
    turn(rotSpeed);
    super.move();
  }
  public double getX()
  {
    return myCenterX;
  }
  public double getY()
  {
    return myCenterY;
  }
}
