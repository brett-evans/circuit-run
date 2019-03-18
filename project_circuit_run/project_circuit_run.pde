Player p1 = new Player (25 , 200 , 5 , 25);
Enemy e1 = new Enemy (150 , 200 , 5 , 25);
GameState play = new GameState ();

void setup () {
  size(400,400);
}

void draw () {
  background(0);
  
  p1.drawP();
  e1.drawE();
  
  p1.keyPressed();
  e1.moveE();
  
  play.collisionDetection();
}
