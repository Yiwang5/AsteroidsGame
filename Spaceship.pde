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
  }

  public void show() {
    fill(myColor);
    stroke(myColor);
    super.show();
  }


  public void hyperspace() {
    myXspeed = 0;
    myYspeed = 0;

    myCenterX = random(0, width);
    myCenterY = random(0, height);

    myPointDirection = random(0, 360);
  }
  
  public double getCenterX() {
  return myCenterX;
}

public double getCenterY() {
  return myCenterY;
}

}//end of spaceship class
