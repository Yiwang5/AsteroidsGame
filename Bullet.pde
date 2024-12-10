class Bullet extends Floater{
  
  public Bullet(Spaceship ship){
     myCenterY = ship.getCenterY();
     myCenterX = ship.getCenterX();
    myPointDirection = ship.myPointDirection();
    
    
  }//end of bullet constructor
  
  public void show(){
    ellipse( (float)myCenterX,(float)myCenterY,10,10);
  }//end of show
}//end of bullet class
