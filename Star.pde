class Star {

  private int myColor;
  private float myX, myY;

  public Star() {
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    myX = (float)(Math.random()*600)+1;
    myY = (float)(Math.random()*600)+1;
    //mySpeed = (Math.random()*10);
    //myAngle = (Math.random()*2)*Math.PI;
  }
  

  public void show() {
    noStroke();
    fill(myColor);
    ellipse(myX, myY, (float)9, (float)9);
  }
}
