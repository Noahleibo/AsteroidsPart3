class Spaceship extends Floater  
{   
    public Spaceship(){
      //what the spaceship is going to look like
      corners = 5;
      xCorners = new int[corners];
      yCorners = new int[corners];
     
      xCorners[0] = -20;
      yCorners[0] = -20;
      
      xCorners[1] = 30;
      yCorners[1] = 0;
      
      xCorners[2] = -16;
      yCorners[2] = 20;
      
     xCorners[3] = -4;
     yCorners[3] = 0;
      
      myCenterX = (Math.random()*width);
      myCenterY = (Math.random()*height);
      
      myXspeed = 0;
      myYspeed = 0;
      
      myPointDirection = 0;
      myColor = color(255,0,0);
      
    }
    public void setXspeed(double x) {
      myXspeed = x;
    }
    public void setYspeed(double y) {
     myYspeed = y; 
    }
    public void setX(double x) 
    {
     myCenterX = x;  
    }
  public void setY(double Y) 
    {
     myCenterY = Y;  
    }
  public void setPoint(double h){
    
     myPointDirection = h;
  }
  public double getX()
  {
   return myCenterX; 
  }
  public double getY()
  {
    return myCenterY;
  }
  public double getPointDirection(){return myPointDirection;}
  
  public double getmyspeedX(){
    return myXspeed;
} public double getmyspeedY() {
    return myYspeed; 
    }
}
