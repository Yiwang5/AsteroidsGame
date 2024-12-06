class Asteroid extends Floater {
  private double rotSpeed = (Math.random()*720) - 360;

  public Asteroid() {
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];

    // First dot
    xCorners[0] = (int)(Math.random()*5)-13; //range of -9 to -13, original value: -11
    yCorners[0] = (int)(Math.random()*5)-10; //range of -6 to -10, original value: -8
    // Second dot
    xCorners[1] = (int)(Math.random()*5)-7; //range of -3 to -7, original value: -5
    yCorners[1] = (int)(Math.random()*5)-2; //range of -2 to 2, original value: 0
    // Third dot
    xCorners[2] = (int)(Math.random()*5)-13; //range of -9 to -13, original value: -11
    yCorners[2] = (int)(Math.random()*5)+6; //range of 6 to 10, original value: 8
    // Fourth dot
    xCorners[3] = (int)(Math.random()*5)+5; //range of 5 to 9, original value: 7
    yCorners[3] = (int)(Math.random()*5)-10; //range of -6 to -10 , original value: -8
    // Fifth dot
    xCorners[4] = (int)(Math.random()*6)+10; //range of 10 to 15, original value: 13
    yCorners[4] = (int)(Math.random()*5)-2; //range of -2 to 2, original value: 0
    // Sixth dot
    xCorners[5] = (int)(Math.random()*5)+4; //range of 4 to 8, original value: 6
    yCorners[5] = (int)(Math.random()*6)+8; //range of 8 to 13, original value: 10
    
    myPointDirection = 0;
    myColor = color(255,255,255);
    myCenterY = 300;
    myCenterX = 300;
    myXspeed = 0;
    myYspeed = 0;
  }//end of asteroid
  
  public void show(){
    super.show();
    
  }//end of show
  
  public void move(){
    //turn(rotSpeed);
    super.move();
  }//end of move
}//end of asteroid class
