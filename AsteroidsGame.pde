Spaceship ship;
boolean wIsPressed = false;
boolean dIsPressed = false;
boolean aIsPressed = false;
boolean eIsPressed = false;
boolean spaceIsPressed = false;
Star[] stars = new Star[200];

public void setup() {
  size(600, 600);
  ship = new Spaceship();
  for (int i = 0; i < stars.length; i++) {
  stars[i] = new Star();
  }
}
public void draw() {
  background(0); 
  KeysPressed();
  for (int i = 0; i < stars.length; i++) {
  stars[i].show();
}
  ship.move();   
  ship.show();

}

public void keyPressed() {
  if (key == 'w' ) {
    wIsPressed = true;
  } else if (key == 'a') {
    aIsPressed = true;
  } else if (key == 'd') {
    dIsPressed = true;
  } else if (key == 'e') {
    eIsPressed = true;
  }
}//end of keypressed

public void keyReleased() {
  if (key == 'w') {
    wIsPressed = false;
  } else if (key == 'a' ) {
    aIsPressed = false;
  } else if (key == 'd' ) {
    dIsPressed = false;
  } else if (key == 'e') {
    eIsPressed = false;
  }
}//end of KeyReleased

public void KeysPressed() {
  if (wIsPressed == true) {
    ship.accelerate(0.1); // Increase speed in the direction the ship is facing
  }
  if (aIsPressed == true) {
    ship.turn(-5); // Rotate counterclockwise
  }
  if (dIsPressed == true) {
    ship.turn(5); // Rotate clockwise
  }
  if (eIsPressed == true) {
    ship.hyperspace();
  }
}//end of function keyspressed
