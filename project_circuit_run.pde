
Enemy[] enemies;
Player player1 = new Player (25 , 200 , 5 , 25);
GameState state = new GameState ();


boolean win;
boolean gameOverStatus = false;
PFont font;


void setup () {
  size(800,400);
  state.arrayOfEnemies();
} // end setup


void draw () {
  background(0);
  
  state.drawLvlCounter();
  state.gameOver();
  state.gameReset();
  state.gameWin();
  
  if (gameOverStatus == false) {  
    player1.drawP();
    player1.keyPressed();
    for (int i = 0; i < enemies.length; i = i + 1) {
      if (gameOverStatus == false) {
        enemies[i].drawE();
        enemies[i].moveE();
        enemies[i].collisionDetection();
      }
    }
  }
  
  
}// end draw
