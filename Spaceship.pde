class Spaceship extends Floater {

  public Spaceship() {
    corners = 3;
    xCorners = new int[corners];
    yCorners = new int[corners];

    // First dot
    xCorners[0] = -8;
    yCorners[0] = -8;
    // Second dot
    xCorners[1] = 16;
    yCorners[1] = 0;
    // Third dot
    xCorners[2] = -8;
    yCorners[2] = 8;

    myColor = color(255, 255, 255);
    myCenterX = 300;
    myCenterY = 300;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }//end of constructor

  public void show() {
    fill(myColor);
    stroke(myColor);
    super.show();
  }//end of show


  public void hyperspace() {
    myXspeed = 0;
    myYspeed = 0;

    myCenterX = random(0, width);
    myCenterY = random(0, height);

    myPointDirection = random(0, 360);
  }//end of hyperspace
  
  public double getCenterX() {
  return myCenterX;
}//Getter for X

public double getCenterY() {
  return myCenterY;
}//getter for Y

public double myPointDirection() {
  return myPointDirection; 
}//getter for point direction


public double myXspeed() {
  return myXspeed;
}//getter for x speed


public double myYspeed() {
  return myYspeed;
}//getter for Y speed

}//end of spaceship class
