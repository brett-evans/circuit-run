float x , y;
float xSpeed , ySpeed;
float radius;

class Player {

  Player (float pX, float pY , float xSpeedValue, float radiusValue) {
    x = pX;
    y = pY;
    xSpeed = xSpeedValue;
    radius = radiusValue;
  }
  
  void drawPlayer () {
    fill(#FA0A26);
    ellipse(x, y, radius, radius);
  }
  
  void movePlayer () {
    if (mousePressed == true) {
      x = x + xSpeed;
    }
    if (x > 375) {
      x = 25;
    }
  }
}

class Enemy {
  
  Enemy (float eX, float eY , float ySpeedValue , float radiusValue ) {
    x = eX;
    y = eY;
    ySpeed = ySpeedValue;
    radius = radiusValue;
  }
  
  void drawEnemy () {
    fill(#0A3CFA);
    ellipse(x, y, radius, radius);
  }
  
  void moveEnemy () {
    y = y + ySpeed;
    
    if (y > 375 || y < 25) {
      ySpeed = ySpeed * -1;
    }
  }
}
