//enemies[] = {e1, e2, e3, e4};

Player p1 = new Player (25 , 200 , 5 , 25);
Enemy e1 = new Enemy (150 , 200 , 5 , 25);
Enemy e2 = new Enemy (200, 200, 5, 25) ;
Enemy e3 = new Enemy (250, 200, 5, 25) ;
Enemy e4 = new Enemy (350, 200, 5, 25) ;
GameState play = new GameState ();

void setup () {
  size(400,400);

}

void draw () {
  background(0);
  
  p1.drawP();
  //for (float i = 0; i <= enemies[].length; i = i + 1) {
  e1.drawE();
  e2.drawE();
  e3.drawE();
  //}
  p1.keyPressed();
  // for (float i = 0; i <= enemies[].length; i = i + 1) {
  e1.moveE();
  e2.moveE();
  e3.moveE();
  //}
  e1.collisionDetection();
  e2.collisionDetection();
  e3.collisionDetection();
}
