class Player {
  // this hadles drawing and moving the player
  
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
  
  void keyPressed() {
    if (key == CODED) {
      if (keyCode == RIGHT) {
        if (keyPressed == true) {
          xSpeed = 2;
          playerX= playerX + xSpeed;
        }
      } else if (keyCode == LEFT) {
        if (keyPressed == true) {
          xSpeed = -2;
          playerX = playerX + xSpeed;
        }
      } 
    }
  }
  
  
} //// end player class
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class Enemy {
  // handles drawing moving and reactions from enemy
  
  
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
  
  void collisionDetection () {
    
    if (p1.playerRadius > dist(p1.playerX , p1.playerY , enemyX , enemyY)) {
      p1.xSpeed = 0;     
      ySpeed = 0;
    }
  }
  
  
}//// end enemy class
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class GameState {
// this handles what happens when the player and enemy collides
  
  void arrayOfEnemies () {
    enemies = new Enemy[4];
  
    for (int i = 0; i < enemies.length; i = i + 1) {
      enemies[i] = new Enemy (95 + i * 75, 200 , 5 , 25);
    }
  }
  
  void gameOver () {
    PFont font;
    
    for (int i = 0; i < enemies.length; i = i + 1) {
      if (enemies[i].ySpeed == 0) {
        p1.playerX = 25;
        
        background(255);
        fill(#41AAF7);
        font = createFont ("SimSun-ExtB-48.vlw", 48);
        textFont(font);
        rect(35 , 100 , 300 , 55);
        fill(#F77241);
        text ("GAME OVER", 40, 150);
        
        fill(#41AAF7);
        rect(130, 305, 140, 55);
        fill(#F77241);
        text("reset", 145, 350);
      }
    }
  }
  
}//// end GameState class
