Spaceship ship;
Bullet bullet;
boolean wIsPressed = false;
boolean aIsPressed = false;
boolean sIsPressed = false;
boolean dIsPressed = false;
boolean eIsPressed = false;
boolean spaceIsPressed = false;
Star[] stars = new Star[200];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
ArrayList <Bullet> bullets = new ArrayList <Bullet>();

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
  for (int i = bullets.size() - 1; i >= 0; i--) {
    Bullet bullet = bullets.get(i);
    bullet.show();
    bullet.move();
    if (bullet.getCenterX() < 0 || bullet.getCenterX() > 600 || bullet.getCenterY() < 0 || bullet.getCenterY() > 600)     
        bullets.remove(i);
        
    for (int j = asteroids.size() - 1; j >= 0; j--) {
      Asteroid asteroid = asteroids.get(j);
      float distance = dist((float) asteroid.getCenterX(), (float) asteroid.getCenterY(), (float) bullet.getCenterX(), (float) bullet.getCenterY());

      if (distance <= 10) {
        asteroids.remove(j);
        bullets.remove(i);
      }//if distance
    }//asteroids loop
  }//bullets loop

for (int i = asteroids.size() - 1; i >= 0; i--) {//array trap fix 
  Asteroid asteroid = asteroids.get(i);  
  asteroid.show();
  asteroid.move();
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
  } else if (key == ' ') {
    spaceIsPressed = true;
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
  } else if (key == ' ') {
    spaceIsPressed = false;
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
  if (spaceIsPressed == true) {
    bullets.add(new Bullet(ship));
  }
}//end of function keyspressed
