class Bullet extends Floater {
  boolean toRemove;
  public Bullet(Spaceship theShip) {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getmyspeedX();
    myYspeed = theShip.getmyspeedY();
    //accelerate(.6);
    toRemove = false;
    myPointDirection=theShip.getPointDirection();
  }
  public void setToremove(boolean b) {
    toRemove = b;
  }
  public boolean getToRemove() {
    return toRemove;
  }
  public double getX()
  {
    return myCenterX;
  }
  public double getY()
  {
    return myCenterY;
  }
  public void show() {
    //  color(255, 0, 0);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public void setPointDirection(double h) {

    myPointDirection = h;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     

    //wrap around screen    
    if (myCenterX >width)
    {     
      setToremove(true);
    } else if (myCenterX<0)
    {     
      setToremove(true);
    }    
    if (myCenterY >height)
    {    
      setToremove(true);
    } else if (myCenterY < 0)
    {     
      setToremove(true);
    }
  }
}
//change class to Bullet
