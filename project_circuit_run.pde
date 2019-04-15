
Enemy[] enemies;

Player p1 = new Player (25 , 200 , 5 , 25);

GameState play = new GameState ();

boolean win;
boolean gameOverStatus = false;
PFont font;


void setup () {
  size(400,400);
  
  play.arrayOfEnemies();
} // end setup

void draw () {
  background(0);
  
  play.gameWin();
  play.gameOver();
  play.gameReset();
  play.drawLvlCounter();
  
  
  if (gameOverStatus == false) {
    p1.drawP();
    p1.keyPressed();
  
    for (int i = 0; i < enemies.length; i = i + 1) {
      if (gameOverStatus == false) {
        enemies[i].drawE();
        enemies[i].moveE();
        enemies[i].collisionDetection();
      }
    }
  }
}// end draw
