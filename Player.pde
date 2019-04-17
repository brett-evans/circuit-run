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
