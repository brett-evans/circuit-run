
Enemy[] enemies;

Player p1 = new Player (25 , 200 , 5 , 25);

//Enemy e1 = new Enemy (150 , 200 , 5 , 25);
//Enemy e2 = new Enemy (200, 200, 5, 25) ;
//Enemy e3 = new Enemy (250, 200, 5, 25) ;
//Enemy e4 = new Enemy (350, 200, 5, 25) ;
GameState play = new GameState ();

void setup () {
  size(400,400);
  
  play.arrayOfEnemies();
}

void draw () {
  background(0);
  
  play.gameOver();
  
  p1.drawP();
  p1.keyPressed();
  
  for (int i = 0; i < enemies.length; i = i + 1) {
    enemies[i].drawE();
    enemies[i].moveE();
    enemies[i].collisionDetection();
  }
 
}
