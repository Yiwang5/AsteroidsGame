class Asteroid extends Floater{
    public Asteroid() {
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    //rule for random: Distance from range and then add number + 1 to the highest range -> positive values
    //rule for random: Distance from range and then minus number + 1 to the highest range -> negative values
    // First dot
    xCorners[0] = (int)(Math.random()*); //range of  to , original value: -11
    yCorners[0] = (int)(Math.random()*); //range of  to , original value: -8
    // Second dot
    xCorners[1] = (int)(Math.random()*); //range of  to , original value: -5
    yCorners[1] = (int)(Math.random()*); //range of  to , original value: 0
    // Third dot
    xCorners[2] = (int)(Math.random()*); //range of  to , original value: -11
    yCorners[2] = (int)(Math.random()*); //range of  to , original value: 8
    // Fourth dot
    xCorners[3] = (int)(Math.random()*); //range of  to , original value: 7
    yCorners[3] = (int)(Math.random()*5); //range of -6 to -10 , original value: -8
    // Fifth dot
    xCorners[4] = (int)(Math.random()*6)+10; //range of 10 to 15, original value: 13
    yCorners[4] = (int)(Math.random()*5)-2; //range of -2 to 2, original value: 0
    // Sixth dot
    xCorners[5] = (int)(Math.random()*5)+4; //range of 4 to 8, original value: 6
    yCorners[5] = (int)(Math.random()*6)+8; //range of 8 to 13, original value: 10
    }

}//end of asteroid class
