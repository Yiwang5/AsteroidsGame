class Bullet extends Floater {

  public Bullet(Spaceship ship) {
    myCenterY = ship.getCenterY();
    myCenterX = ship.getCenterX();
    myPointDirection = ship.myPointDirection();
    myColor = color(255,255,255);
    accelerate(6.6);
  }//end of bullet constructor

  public void show() {
    fill(myColor);
    ellipse( (float)myCenterX, (float)myCenterY, 10, 10);
  }//end of show
  
  public void move(){
      super.move();
  }//end of move
  
  public double getCenterX() {
    return myCenterX;
  }//Getter for X

  public double getCenterY() {
    return myCenterY;
  }//getter for Y

}//end of bullet class
