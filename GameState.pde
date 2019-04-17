class GameState {
// this handles what happens when the player and enemy collides
  int lvl = 1;
  int resetRectX = 300;
  int resetRectY = 305;
  int resetRectW = 140;
  int resetRectH = 55;
  
  
  void arrayOfEnemies () {
      enemies = new Enemy[7];
    for (int i = 0; i < enemies.length; i = i + 1) {
      enemies[i] = new Enemy (95 + i * 100 , 25);
    }
  }
  
  
  void drawLvlCounter() {
    fill(#0AC15A);
    rect(340, 25, 55, 30);
    fill(#DB3D35);
    font = createFont("data/YuGothicUI-Bold-15.vlw", 15);
    textFont(font);
    text(lvl, 362, 45);
  }
  
  
  void drawGameOver () {
    rect(225 , 100 , 300 , 55);
    fill(#F77241);
    text("GAME OVER", 230, 145);
  }
  
  
  void drawResetButton () {
    fill(#41AAF7);
    rect(resetRectX, resetRectY, resetRectW, resetRectH);
    fill(#F77241);
    text("reset", 315, 350);  
  }
  
  
  void drawNextLvlButton () {
    fill(#41AAF7);
    rect(resetRectX, resetRectY, resetRectW, resetRectH);
    fill(#F77241);
    text("Next", 315, 350);
  }
  
  void gameReset () {
    if (mousePressed) {  
      if (mouseX > resetRectX && mouseX < resetRectX + resetRectW && mouseY > resetRectY && mouseY < resetRectY + resetRectH) {
        gameOverStatus = false;
        win = false;
      }
    }
  }
  
  
  void gameOver () {
    for (int i = 0; i < enemies.length; i = i + 1) {
      if (gameOverStatus == true) {
        player1.playerX = 25;
          // setup font for signs
        background(255);
        fill(#41AAF7);
        font = createFont("data/HPSimplified-LightItalic-48.vlw", 48);
        textFont(font);
        //call game over
        drawGameOver();
        //call reset button or next level
        if (win == false) {
          drawResetButton();
          lvl = 1;
        } else if (win == true) {
          drawNextLvlButton();
        }   
      }
    }
  }
 
  
  void gameWin () {
    int finishLine = width - 25;
    if (player1.playerX + player1.playerRadius >= finishLine) {
      lvl = lvl + 1;
      gameOverStatus = true;
      win = true;
    }
  }
}//// end GameState class
