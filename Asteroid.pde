class Asteroid extends Floater {
  private double rotSpeed = (Math.random() * 10) + 1;

  public Asteroid() {
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];

    //first point
    xCorners[0] = (int) (Math.random() * 20) - 30;
    yCorners[0] = (int) (Math.random() * 20) - 20;
    //second point
    xCorners[1] = (int) (Math.random() * 20) - 20;
    yCorners[1] = (int) (Math.random() * 20);
    //third point
    xCorners[2] = (int) (Math.random() * 20) - 10;
    yCorners[2] = (int) (Math.random() * 20) + 10;
    //fourth point
    xCorners[3] = (int) (Math.random() * 20) + 10;
    yCorners[3] = (int) (Math.random() * 20);
    //fifth point
    xCorners[4] = (int) (Math.random() * 20) + 20;
    yCorners[4] = (int) (Math.random() * 20) - 20;
    //sixth point
    xCorners[5] = (int) (Math.random() * 20);
    yCorners[5] = (int) (Math.random() * 20) - 30;
    
    myPointDirection = (int) (Math.random() * 720) - 360;
    myCenterX = Math.random() * width; 
    myCenterY = Math.random() * height; 
    myColor =  color(211, 211, 211);
    myXspeed = (Math.random() * 5) + 4; 
    myYspeed = (Math.random() * 5) + 4;
  }//end of constructor

    public void show() {
      fill(myColor);  
      super.show();
    }//end of show

    public void move() {
      turn(rotSpeed); 
      super.move();
    }//end of move

    public double getCenterX() {
      return myCenterX;
    }//end of getter for X

    public double getCenterY() {
      return myCenterY;
    }//end of getter for Y
    
    
  }//end of asteroid class
