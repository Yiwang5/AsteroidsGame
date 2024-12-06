Spaceship ship;
boolean wIsPressed = false;
boolean aIsPressed = false;
boolean sIsPressed = false;
boolean dIsPressed = false;
boolean eIsPressed = false;
boolean spaceIsPressed = false;
Star[] stars = new Star[200];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();

public void setup() {
  size(600, 600);
  ship = new Spaceship();
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  for (int i = 0; i < 15; i++) {
  asteroids.add(new Asteroid()); 
    }
 
}//end of setup


public void draw() {
  background(0); 
  KeysPressed();
  for (int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
for (int i = asteroids.size() - 1; i >= 0; i--) {
    Asteroid asteroid = asteroids.get(i);  
    asteroid.show();
    asteroid.move();

    float distance = dist((float) asteroid.getCenterX(), (float) asteroid.getCenterY(),(float) ship.getCenterX(), (float) ship.getCenterY());
    if (distance <= 10) {
      asteroids.remove(i);  
    }
}
  ship.move();   
  ship.show();
  
}//end of draw

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


