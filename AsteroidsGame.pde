Spaceship ship;
Asteroid asteroid;
boolean wIsPressed = false;
boolean aIsPressed = false;
boolean sIsPressed = false;
boolean dIsPressed = false;
boolean eIsPressed = false;
boolean spaceIsPressed = false;
Star[] stars = new Star[200];
ArrayList <Integer> asteroids = new ArrayList <Integer>();

public void setup() {
  size(600, 600);
  asteroid = new Asteroid();
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
  asteroid.show();
  asteroid.move();
  ship.move();   
  ship.show();
}

public void keyPressed() {
  if (key == 'w' ) {
    wIsPressed = true;
  } else if (key == 'a') {
    aIsPressed = true;
  } else if (key == 's') {
    sIsPressed = true;
  } else if (key == 'd') {
    dIsPressed = true;
  } else if (key == 'e') {
    eIsPressed = true;
  }
}//end of keypressed

public void keyReleased() {
  if (key == 'w') {
    wIsPressed = false;
  } else if (key == 's' ) {
    sIsPressed = false;
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
    ship.accelerate(0.1); //forward
  }
   if (sIsPressed == true) {
    ship.accelerate(-0.1); //backward
  }
  if (aIsPressed == true) {
    ship.turn(-5); //counterclockwise
  }
  if (dIsPressed == true) {
    ship.turn(5); //clockwise
  }
  if (eIsPressed == true) {
    ship.hyperspace();
  }
}//end of function keyspressed
