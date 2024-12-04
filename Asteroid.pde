class Asteroid extends Floater{
    public Asteroid() {
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];

    // First dot
    xCorners[0] = -11;
    yCorners[0] = -8;
    // Second dot
    xCorners[1] = -5;
    yCorners[1] = 10;
    // Third dot
    xCorners[2] = -11;
    yCorners[2] = 8;
    // Fourth dot
    xCorners[3] = 7;
    yCorners[3] = -8;
    // Fifth dot
    xCorners[4] = 13;
    yCorners[4] = 0;
    // Sixth dot
    xCorners[5] = ; //range of 4 to 8,original value: 6
    yCorners[5] = (int)(Math.random()*6)+7; //range of 8 to 13, original value: 10
    }

}//end of asteroid class
