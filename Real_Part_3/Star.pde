class Star
{
  private int myX, myY, mySize,Chow, R , G , B;
  public Star(){
    myX = (int)(Math.random()*1000);
    myY = (int)(Math.random()*1000);
    mySize = (int)(Math.random()*10);
    Chow = (int)(Math.random()*255);
    R = (int)(Math.random()*255);
    G = (int)(Math.random()*255);
    B = (int)(Math.random()*255);
    
  }
  
  public void show()
  {
    fill(R,G,B,Chow);
    ellipse(myX, myY, mySize, mySize);
  }
}
