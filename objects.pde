

class Player {
  float playerX , playerY;
  float xSpeed;
  float playerRadius;
  
  Player (float pX, float pY , float xSpeedValue, float radiusValue) {
    playerX = pX;
    playerY = pY;
    xSpeed = xSpeedValue;
    playerRadius = radiusValue;
  }
  
  void drawP () {
    fill(#FA0A26);
    ellipse(playerX, playerY, playerRadius, playerRadius);
  }
  
  void moveP () {
    if (mousePressed == true) {
      playerX = playerX + xSpeed;
    }
    if (playerX > 375) {
      playerX = 25;
    }
  }
}

class Enemy {
  float enemyX , enemyY;
  float ySpeed;
  float enemyRadius;

  
  
  Enemy (float eX, float eY , float ySpeedValue , float radiusValue ) {
    enemyX = eX;
    enemyY = eY;
    ySpeed = ySpeedValue;
    enemyRadius = radiusValue;
  }
  
  void drawE () {
    fill(#0A3CFA);
    ellipse(enemyX, enemyY, enemyRadius, enemyRadius);
  }
  
  void moveE () {
    enemyY = enemyY + ySpeed;
    
    if (enemyY > 375 || enemyY < 25) {
      ySpeed = ySpeed * -1;
    }
  }
}

class GameState {

  void collisionDetection () {
    if (p1.playerRadius > dist(p1.playerX , p1.playerY , e1.enemyX , e1.enemyY)) {
      p1.xSpeed = 0;
      e1.ySpeed = 0;
    }
  }
}
