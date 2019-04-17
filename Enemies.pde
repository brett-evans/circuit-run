class Enemy {
  // handles drawing moving and reactions from enemy
  float enemyX , enemyY;
  float ySpeed, speedMin, speedMax;
  float enemyRadius;
  
  Enemy (float eX, float radiusValue ) {
    enemyX = eX;
    enemyY = random(25, 200);
    enemyRadius = radiusValue;
    speedMin = 3;
    speedMax = 8;
    ySpeed = random(speedMin, speedMax);
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
  
  
  void collisionDetection () {
    if (player1.playerRadius > dist(player1.playerX , player1.playerY , enemyX , enemyY)) {
      gameOverStatus = true;
      win = false;
    }
  }
  
  
}//// end enemy class
